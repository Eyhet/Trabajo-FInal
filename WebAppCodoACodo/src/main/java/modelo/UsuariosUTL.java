/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sebastian
 */
public class UsuariosUTL 

{
    Connection conexion;
    
    public UsuariosUTL()
    {
        
        Conexion con = new Conexion();
        conexion = con.getConnection();
    
    }
    
    public List<Usuarios> listarUsuarios()
    {
    
        PreparedStatement ps;
        ResultSet rs;
        List<Usuarios> lista = new ArrayList<>();
        
        try
        {
            ps = conexion.prepareStatement("select * from usuarios");
            rs = ps.executeQuery();
            while(rs.next())
            {
                int id = rs.getInt("ID");
                String apellido = rs.getString("apellido");
                String nombre = rs.getString("nombre");
                String direccion = rs.getString("direccion");
                String localidad = rs.getString("localidad");
                String contrasena = rs.getString("contrasena");
                String email = rs.getString("email");
                String telefono = rs.getString("telefono");
                boolean activo = rs.getBoolean("activo");
                
                Usuarios u1 = new Usuarios(id,apellido,nombre,direccion,localidad,contrasena,email,telefono,activo);
                
                lista.add(u1);
            }
            return lista;      
        }
        catch(SQLException e)
        {
            System.out.println(e);
            return null;
        }
    }
    
    /**
     *
     * @param _id
     * @return
     */
    public Usuarios mostrarUsuarios(int id)
    {
        PreparedStatement ps;
        ResultSet rs;
        Usuarios u1=null;
        try
        {
            ps=conexion.prepareStatement("select * from socios where ID=?");
            ps.setInt(1, id);
            rs=ps.executeQuery();
            while(rs.next())
            {
                int _id=rs.getInt("ID");
                String nombre=rs.getString("nombre");
                String apellido=rs.getString("apellido");
                String direccion=rs.getString("direccion");
                String localidad=rs.getString("Localidad");
                String contrasena = rs.getString("contrasena");
                String email=rs.getString("email");
                String telefono=rs.getString("telefono");
                boolean activo=rs.getBoolean("activo");                 
                u1=new Usuarios(_id,nombre,apellido,direccion,localidad,contrasena,email,telefono,activo);
            }
            
            
            return u1;
            
        }
        catch(SQLException e)
        {
            System.out.println(e);
            return null;
        }
        
    }
    
    
    public boolean insertarUsuario(Usuarios u1)
    {
    
        PreparedStatement ps;
        
        try
        {
            ps = conexion.prepareStatement("insert into usuarios(apellido,nombre,direccion,localidad,contrasena,email,telefono,activo) values(?,?,?,?,?,?,?,true)");
            
            ps.setString(1,u1.getApellido());
            ps.setString(2,u1.getNombre());
            ps.setString(3,u1.getDireccion());
            ps.setString(4,u1.getLocalidad());
            ps.setString(5,u1.getEmail());
            ps.setString(6,u1.getTelefono());
            ps.setString(7,u1.getContrasena());

            return true;
        }
        
        catch(SQLException e)
        {
            System.out.println(e);
            return false;
        }
    
   
    }
    
    
    public boolean actualizarUsuarios(Usuarios u1)
    {
    PreparedStatement ps;
        
        try
        {
            ps = conexion.prepareStatement("update usuarios set apellido=?,nombre=?,direccion=?,localidad=?,contrasena=?,email=?,telefono=?,activo=? ");
            
            ps.setString(1,u1.getApellido());
            ps.setString(2,u1.getNombre());
            ps.setString(3,u1.getDireccion());
            ps.setString(4,u1.getLocalidad());
            ps.setString(5,u1.getEmail());
            ps.setString(6,u1.getTelefono());
            ps.setString(7,u1.getContrasena());
            ps.setBoolean(8,u1.isActivo());

            
            return true;
        }
        
        catch(SQLException e)
        {
            System.out.println(e);
            return false;
        }
    
    
    
    
    }
    
    
    public boolean eliminarUsuario(int _id)
    {
        PreparedStatement ps;
    
        try
        {
            ps = conexion.prepareStatement("delete from usuarios where id=?");
            
            ps.setInt(1,_id);
            
            
            return true;
        }
        
        catch(SQLException e)
        {
            System.out.println(e);
            return false;
        }
    
    
    
    }
     
           
    
    
    
}
