<%-- 
    Document   : perfil
    Created on : 30 dic 2022, 00:42:56
    Author     : sebastian
--%>

<%@page import="modelo.UsuariosUTL"%>
<%@page import="modelo.Usuarios"%>
<%@page import="java.util.List"%>  
<%@page import="controlador.UsuariosControl"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style-p.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Acme|Rubik Bubbles" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script type="text/javascript" src="js/javascript-p.js"></script>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div id="header" class="col-12">

                    <div id="imgola">
                        <img id="ola" src="img/índice.png" alt="">
                    </div>

                </div>

            </div>

        </div>
    
        <!–– Barra de Navegacion ––>
        <div class="container-fluid">
            <div class="row">

                
                <nav class="navbar navbar-expand-lg bg-white">
                    <div class="container-fluid">

                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav ms-auto me-auto" >
                                <a class="nav-link active coloresnavbar" aria-current="page" href="#textocar">Los Parques</a>
                                <a class="nav-link coloresnavbar" href="#seguridad">Nuestro Staff</a>
                                <a id="tickets" class="nav-link coloresnavbar" href="tickets.html">Tickets</a>
                                <a style="color: purple;" id="textonav1" class="nav-link active" aria-current="page" href="#nosotros">Perfil</a>
                                <a id="itemnavbartickets" class="nav-link" href="registro.html">Registrate</a>

                            </div>
                        </div>
                    </div>
                </nav>



            </div>

        </div>


        <!–– Tabla ––>
        <div id="tabla">
            <table>
                <tr>
    
                    <td>Id</td>
                    <td>Apellido</td>
                    <td>Nombre</td>
                    <td>Direccion</td>
                    <td>Localidad</td>
                    <td>Email</td>
                    <td>Telefono</td>
                    <td>Contraseña</td>
                    <td>Modificar</td>
                    <td>Eliminar</td>
                    
                </tr>
                
           <%
                List <Usuarios> resultado=null;
                UsuariosUTL u1 = new UsuariosUTL();
                resultado = u1.listarUsuarios();


                for(int x = 0; x<resultado.size() ;x++)

                {
                    String ruta="UsuariosControl?accion=modificar&id="+resultado.get(x).getId();
                    
                    String rutaE="UsuariosControl?accion=eliminar&id="+resultado.get(x).getId();

             %> 




                <tr>
    
                    <td> <%=resultado.get(x).getId()%> </td>
                    <td><%=resultado.get(x).getApellido()%></td>
                    <td><%=resultado.get(x).getNombre()%></td>
                    <td><%=resultado.get(x).getDireccion()%></td>
                    <td><%=resultado.get(x).getLocalidad()%></td>
                    <td><%=resultado.get(x).getEmail()%></td>
                    <td><%=resultado.get(x).getTelefono()%></td>
                    <td> <%=resultado.get(x).getContrasena()%> </td>
                    <td> <a href=<%ruta%> >x</a></td>
                    <td><a href=<%rutaE;%>>x</a></td>
                    
                </tr>
              <%;}%>
              
            </table>
            
        </div>
        


        <!–– Footer ––>

        <div id="containerfooter" class="container-fluid">
            <div id="footer" class="row">

                <div class="col-7 mt-3">
                    <a id='col1' style="float: right;" class="footertext" href="#">Contactanos☎️</a>
                </div>


                <div class="col-5">
                   
                    <a id="col2" class="footertext" href="#">Privacidad 🕵️</a>
                    
                    <img id="solcito" src="img/Solcito.png" alt="">

                </div>






    </body>
</html>
