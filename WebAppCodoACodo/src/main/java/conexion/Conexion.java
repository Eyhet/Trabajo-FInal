/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conexion;
import java.sql.*;
        
/**
 *
 * @author sebastian
 */
public class Conexion {
    
    public String driver = "com.mysql.cj.jdbc.Driver";
    
    
 public Connection getConnection()
     
 {
     
     Connection conexion = null;
     
     try
     {
       Class.forName(driver);
       
       conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/baselogincac","root","");
       
      
     }
     catch(ClassNotFoundException | SQLException e)
      {
                 System.out.println(e);
      }
     
   
     return conexion;
     
 }
 
    public static void main(String[] args) throws SQLException 
{
       
    Connection conexion = null;
    
    Conexion con = new Conexion();
    
    conexion = con.getConnection();
    
    PreparedStatement ps;
    
    ResultSet rs;
    
    ps = conexion.prepareStatement("select * from usuarios" );
    
    rs = ps.executeQuery();
    
   
    while (rs.next())
    {
        int id = rs.getInt("ID");
        String nombre = rs.getString("nombre");
        
        System.out.println("ID= "+id+" Apellido= "+nombre);
        
    }
    
    
    
    
}




}