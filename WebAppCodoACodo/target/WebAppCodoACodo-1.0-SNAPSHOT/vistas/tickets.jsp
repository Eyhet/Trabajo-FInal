<%-- 
    Document   : tickets
    Created on : 30 dic 2022, 00:45:49
    Author     : sebastian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style-t.css" rel="stylesheet">
        <script type="text/javascript" src="js/javascript-t.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Acme|Rubik Bubbles" rel="stylesheet" >
    </head>
    <body>
    
        <!–– Barra de Navegacion ––>
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
                                <a style="color: purple;" id="textonav1" class="nav-link active" aria-current="page" href="#nosotros">Perfil</a>
                                <a id="itemnavbartickets" class="nav-link" href="registro.html">Registrate</a>

                            </div>
                        </div>
                    </div>
                </nav>



            </div>

        </div>

        <!–– Tarjeta de Descuentos ––>
        <div class="container-fluid">
            
            <div class="row mt-4">
                

                <div id="card1" class="card me-2" style="width: 18rem;">
                        
                    <div class="card-body">
                          <h5 class="card-title">Junior</h5>
                          <br>
                          <p class="card-subtitle mb-2">Tienen un descuento</p>
                          <br>
                          <h5 class="card-title">80%</h5>
                          <br>
                          <h6 class="card-subtitle mb-2 text-muted">*presentar documentacion</h6>
                    </div>

                </div>

                <div id="card3" class="card" style="width: 18rem;">
                        
                    <div class="card-body">
                          <h5 class="card-title">Adultos</h5>
                          <br>
                          <p class="card-subtitle mb-2">Tienen un descuento</p>
                          <br>
                          <h5 class="card-title">15%</h5>
                          <br>
                          <h6 class="card-subtitle mb-2 text-muted">*presentar documentacion</h6>
                    </div>

                </div>


                





            </div>
        </div>
        <!–– Ventas ––>

        <div class="container-fluid">
            <div id="ventarow" class="row mt-2">
                
                <p id="pventa" class="m-auto">VENTA</p>


            </div>
        </div>


        <div class="container-fluid">
            <div class="row">
                <h1 id="valortickettexto">VALOR DE TICKET $200</h1>
            </div>
        </div>


        <!–– Formas ––>

        <div class="container-fluid">
        
                
            <form class="row g-3">
                
                <div class="col-6 position-relative">
                          <input id="inputnombre" type="text" class="form-control leftformitems" placeholder="Nombre" required>
                </div>
             
                <div class="col-6 position-relative">
                           <input id="inputapellido" type="text" class="form-control rightformitems" placeholder="Apellido" required>
                </div>
             
            </form>
        
        </div>


        <div class="container-fluid">
            
            <form class="row">

                <div class="col-12">
                    <input type="email" class="form-control mt-3" id="inputcorreo" placeholder="Correo" required>
                </div>

            </form>

        </div>

        <div class="container-fluid">

            <form class="row g-3">

                <div class="col-6">
                    <label for="inputcantidad" id="labelcantidad" class="mt-3">Cantidad</label>
                    <input id="inputcantidad" type="number" class="form-control mt-1 leftformitems" placeholder="Cantidad" required>
                </div>

                <div class="col-6">
                    <label for="inputcategoria" class="mt-3">Categoria</label>
                    <select id="inputcategoria" class="form-select mt-1 rightformitems" required>
                     <option selected disabled value="">Seleccionar</option>
                     <option>Sin Categoria</option>
                     <option>Junior</option>
                     <option>Adultos</option>
                    </select>
                </div>

            </form>

        </div>

        <!–– Total a Pagar ––>

        <div class="container-fluid">
            <div class="row g-3">


                <div class="col-12">
                    <div id="divtotal"> 
                        
                        <p id="ptotaltext">Total a Pagar: $</p>
                        <h6 id="ptotalresult">""</h6> 
                    
                    </div>

                </div>


            </div>
            

        </div>

        <!–– Botones ––>

        <div class="container-fluid">
            <div class="row g-3">

                <div class="col-6">
                    <button onclick="borrar()" id="botonborrar" class="btn btn-primary">Borrar</button>
                </div>
                
                <div class="col-6">
                    <input type="button" onclick="chequeo()" id="botonresumen" class="btn btn-primary" value="Resumen">
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



              </div>
            </div>
           </div>


    </body>
</html>
