<!DOCTYPE html>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">  
        <link rel="stylesheet" type="text/css" href="./CSS/estilos.css"> 
         
        <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
        
    </head>
     <body >
        
        <div id="base">
            <header>
                <img src="Imagenes/logoColor.PNG" id ="logoEfecto"  alt="logoColor"/>
                <center><div id="titulo">SAGA SHOP</div></center>
               <!-- <div id="fondoEncabezado">-->
               <br><br><br>
               
                <!---::::::::::::::: MENU::::::::::::::::::::::::: -->
                <div class="navegacion">
            <nav>
                <ul>
                    <li><a href="entradaTiendaAdmin.jsp">Inicio<!--<span class="icon icon-up-dir"></span> --></a></li>
                    <li>
                        <a href="#">ABC Usuarios</a>
                        <div class="submenu">
                            <div class="sub_items">
                                <ul>
                                    <li><a href="ABCusuarios/insertRecord.jsp">Altas</a></li>
                                    <li><a href="ABCusuarios/baja.jsp">Bajas</a></li>
                                    <li><a href="#">Cambios</a></li>
                                </ul>
                            </div>                           
                        </div>
                    </li>
                    <li>
                        <a href="#">ABC Productos</a>
                        <div class="submenu">
                            <div class="sub_items">
                                <ul>
                                    <li><a href="ABCproductos/insertRecord.jsp">Altas</a></li>
                                    <li><a href="#">Bajas</a></li>
                                    <li><a href="ABCusuarios/cambios.jsp">Cambios</a></li>
                                </ul>
                            </div>                           
                        </div>
                    </li>
                    <li><a href="index.html">Salir<!--<span class="icon icon-up-dir"></span> --></a></li>
                </ul>
            </nav>
       <!-- </div>-->
    </div>
                <!--- FIN MENU -->
            </header>
            <section>
               <div class="contenido">
                   <img src="Imagenes/logoColor.PNG"  width="400" height="400" alt="logoColor"/> 
                </div>
                <div class="contenido">
                    <br><br><br>
                    <a href="#"> <img src="Imagenes/wearing.png" alt="Wearing your story" /> </a>
                </div>
                <center>
                <div id="visitatienda">
                    <a href="#"> <img src="Imagenes/visita.png" alt="¡Visita nuestra tienda!" /> </a>
                    <a href="#"><img src="Imagenes/info.PNG" width="400" height="400" alt="logoY"/></a>
                </div>
                </center>
                <center>
                <div id="video">
                    <br>
                    <iframe src="https://www.youtube.com/embed/klyBMGmfeKk" marginheight="0" 
                            marginwidth="0" name="section" frameborder="0" width="500" height="300" border="0" >
                            Tu navegador no soporta esta característica </iframe>
                    <h5>¡Suscribete a nuestro canal de YouTube!</h5>
                    <center><a style="font-family: Arial; font-size: 20px" href="https://www.youtube.com/watch?v=klyBMGmfeKk">Clik aquí :)</a></center>
                    
                </div>
                </center>
                
                
                    
            </section>
            
            <footer>
                Derechos reservados para....
            </footer>
        </div>
    </body>
</html>
