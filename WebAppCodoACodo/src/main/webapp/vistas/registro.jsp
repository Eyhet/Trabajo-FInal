<%-- 
    Document   : registro
    Created on : 30 dic 2022, 00:45:21
    Author     : sebastian
--%>

<%@page import="modelo.UsuariosUTL"%>
<%@page import="modelo.Usuarios"%>
<%@page import="java.util.List"%>  
<%@page import="controlador.UsuariosControl"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🌊 Registrarse a Vivasol ☀️</title>
        <link href="css/style-r.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Acme|Rubik Bubbles" rel="stylesheet" >
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script> 
         <script type="text/javascript" src="js/javascript-r.js"></script>
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
                            <a class="nav-link active coloresnavbar" aria-current="page" href="index.html">Los Parques</a>
                            <a id="tickets" class="nav-link coloresnavbar" href="tickets.html">Tickets</a>
                            <a style="color:purple ;" id="textonav1" class="nav-link active" aria-current="page" href="#nosotros">Perfil</a>
                            <a id="itemnavbartickets" class="nav-link" href="#">Registrate</a>

                        </div>
                    </div>
                </div>
            </nav>



        </div>

        <!–– Titulo Registro ––>

        <h2 id="tituloreg">Registro:</h2>


        <!–– Registro ––>

        <form method="post" action="UsuariosControl?accion=insert" onsubmit="" id="ingreso">

            <div class="row">

              <div class="col-xs-12 col-sm-6">
                <div id="nombre" class="form-group form-margen">
                  <label>Nombre<span class="req">*</span> </label>
                  <input name="nombre" type="text" class="form-control" id="first_name" required data-validation-required-message="Please enter your name." autocomplete="off">
                  <p class="help-block text-danger"></p>
                </div>
              </div>


              <div class="col-xs-12 col-sm-6">
                <div id="apellido" class="form-group form-margen">
                  <label> Apellido<span class="req">*</span> </label>
                  <input name="apellido" type="text" class="form-control" id="last_name" required data-validation-required-message="Please enter your name." autocomplete="off">
                  <p class="help-block text-danger"></p>
                </div>
              </div>
            </div>

            <div class="form-group form-margen">
                <label> Direccion<span class="req">*</span> </label>
                <input name="direccion" type="tel" class="form-control" id="phone" required data-validation-required-message="Please enter your phone number." autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>


            <div class="form-group form-margen">
                <label> Localidad <span class="req">*</span> </label>
                <input name="localidad" type="tel" class="form-control" id="phone" required data-validation-required-message="Please enter your phone number." autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>


            <div class="form-group form-margen">
              <label> Email<span class="req">*</span> </label>
              <input name="email" type="email" class="form-control" id="email" required data-validation-required-message="Please enter your email address." autocomplete="off">
              <p class="help-block text-danger"></p>
            </div>


            <div class="form-group form-margen">
              <label> Telefono<span class="req">*</span> </label>
              <input name="telefono" type="tel" class="form-control" id="phone" required data-validation-required-message="Please enter your phone number." autocomplete="off">
              <p class="help-block text-danger"></p>
            </div>



            <div class="form-group form-margen">
              <label> Contraseña<span class="req">*</span> </label>
              <input name="contrasena" type="password" class="form-control" id="password" required data-validation-required-message="Please enter your password" autocomplete="off">
              <p class="help-block text-danger"></p>
            </div>


            <div id="registro" class="mrgn-30-top">
              <button type="submit" class="btn btn-larger btn-block"/>
              Registrate
              </button>
            </div>
            
          </form>



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





            
        </div>
    </div>




    
</body>
</html>
