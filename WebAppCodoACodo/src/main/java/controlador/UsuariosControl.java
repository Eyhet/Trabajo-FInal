/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuarios;
import modelo.UsuariosUTL;

//@WebServlet(name = "SociosController", urlPatterns = {"/SociosController"})

public class UsuariosControl extends HttpServlet 
{
    
    public UsuariosControl() 
    {
        super();        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        UsuariosUTL usuariosUTL=null;
        usuariosUTL=new UsuariosUTL();
        
        String accion;
        RequestDispatcher dispatcher=null;
        accion=request.getParameter("accion");
        if(accion==null||accion.isEmpty())
        {
            dispatcher=request.getRequestDispatcher("vistas/socios.jsp");            
        }
        
		else if(accion.equals("modificar"))
		{
			dispatcher=request.getRequestDispatcher("vistas/modificar.jsp");
		}
		else if(accion.equals("actualizar"))
		{                        
                        int id=Integer.parseInt(request.getParameter("id"));
                        String nombre=request.getParameter("nombre");
                        String apellido=request.getParameter("apellido");
                        String direccion=request.getParameter("direccion");
                        String localidad=request.getParameter("localidad");            
                        String contrasena = request.getParameter("contrasena");         
                        String email=request.getParameter("mail");
                        String telefono=request.getParameter("telefono");                                    
                        Usuarios u1 = new Usuarios(id,apellido,nombre,direccion,localidad,contrasena,email,telefono,true);
		        usuariosUTL.actualizarUsuarios(u1);			
			dispatcher=request.getRequestDispatcher("vistas/socios.jsp");			
		}
		else if(accion.equals("eliminar"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
                        usuariosUTL.eliminarUsuario(id);			
			dispatcher=request.getRequestDispatcher("vistas/socios.jsp");
		}
		else if(accion.equals("nuevo"))
		{
			dispatcher=request.getRequestDispatcher("vistas/nuevo.jsp");
		}
		else if(accion.equals("insert"))
		{
			String nombre=request.getParameter("nombre");
                        String apellido=request.getParameter("apellido");
                        String direccion=request.getParameter("direccion");
                        String localidad=request.getParameter("localidad");                       
                        String email=request.getParameter("mail");
                        String telefono=request.getParameter("telefono");
                        String contrasena = request.getParameter("contrasena");
                        Usuarios u1 = new Usuarios(0,apellido,nombre,direccion,localidad,contrasena,email,telefono,true);
		        usuariosUTL.insertarUsuario(u1);		
			dispatcher=request.getRequestDispatcher("vistas/socios.jsp");
		}        
        dispatcher.forward(request, response); 
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        doGet(request,response);
    }

   
    @Override
    public String getServletInfo() 
    {
        return "Short description";
    }// </editor-fold>

}
