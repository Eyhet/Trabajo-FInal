<%-- 
    Document   : indez
    Created on : 30 dic 2022, 00:38:37
    Author     : sebastian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title> 🌊 Parque Acuatico Vivasol ☀️</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Acme|Rubik Bubbles" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script type="text/javascript" src="js/javascript.js"></script>
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

        <!–– Sucursales ––>
        
        <div class="container-fluid">
            <div class="row">
                
                <div class="col-6">

                    <p id="textocar">Nuestras <br> Sucursales</p>

                    
                </div>

                <div class="col-6">

                    <div>
                        <img id="imagenes" src="img/ParqueAcuatico2.jpg" alt="">
                        <button onclick='siguiente()' id="boton-imagen" type="button" class="btn btn-warning">→</button>
                    </div>
                    
                </div> 


            </div>
        </div>
        
        <!–– Tarjetas de Atraccion ––>
        
        
        <div class="container-fluid">
            
            <div class="row" >

                <div id="card1" class="carta col-3">

                    <div class="card">
                        <img class="card-img-top" src="img/chicos jugando en agua.jpg" alt="Card image cap">
                    </div>

                </div>

                <div id="carta-texto" class="card col-9" >
                    <div class="card-body">
                      <h4 id="nosotros" class="card-title">¡La mejor diversion para los mas chicos!</h4>
                      
                      <p class="card-text"> ¡Veni con tu familia a pasar los
                        mejores dias de tus vacaciones!<br>
                       <br>
                       Ideal para divertirse al maximo en esos dias soleados de verano que 
                       tanto nos gustan.
                      </p>

                      <button id="boton" type="button" class="btn btn-info">
                        
                        <a href="registro.html" class="card-link">¡Vamos!</a>

                      </button>

                    </div>
                </div>

            </div>

        </div>

        <div class="container-fluid">
            
            <div class="row" >

                <div id="card2" class="carta col-3">

                    <div class="card">
                        <img class="card-img-top" src="img/parque acuatico.jpg" alt="Card image cap">
                    </div>

                </div>

                <div id="carta-texto" class="card col-9" >
                    <div class="card-body">
                      <h4 id="elmejor" class="card-title">¡El mejor de toda la provincia!</h4>

                      <p class="card-text">Contamos con las mejores instalaciones de parques 
                        acuaticos de toda la Zona Norte ofreciendo la mayor variedad y 
                        seguridad que pueda haber. <br>
                        <br>
                        Toboganes, Espirales, Rampas y Trampolines para poder jugar a su antojo
                        y con la libertad que usted decida tener.
                      </p>
                      <button id="boton" type="button" class="btn btn-info">
                        
                        <a href="registro.html" class="card-link">¡Vamos!</a>

                      </button>

                    </div>
                </div>

            </div>
        </div>

        <div class="container-fluid">
            
            <div  class="row" >

                <div id="card3" class="carta col-3">

                    <div class="card">
                        <img class="card-img-top" src="img/guardavidas.png" alt="Card image cap">
                    </div>

                </div>

                <div id="carta-texto" class="card col-9" >
                    <div class="card-body">
                      <h4 id="seguridad" class="card-title">¡Divertirse con seguridad!</h4>
                      
                      <p class="card-text">Contamos con Seguridad y Atencion de primera 
                        para que pueda disfrutar tranquilo mientras nosotros lo cuidamos.<br>
                        <br>
                        ¡No tiene que preocuparse por nada! uestros salvavidas entrenados y 
                        experimentados mantendran sus vacaciones libre de problemas ante 
                        cualquier emergencia.
                      </p>
                      <button id="boton" type="button" class="btn btn-info">
                        
                        <a href="registro.html" class="card-link">¡Vamos!</a>

                      </button>
                    </div>
                  </div>


            </div>
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