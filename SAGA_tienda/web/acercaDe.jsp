<%-- 
    Document   : acercaDe
    Created on : 14-dic-2016, 13:42:05
    Author     : Citlaly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <link rel="stylesheet" type="text/css" href="./CSS/estilosOtro.css">   
        <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="base">
            <header>Soy la cabeza
            <!---::::::::::::::: MENU::::::::::::::::::::::::: -->
                <div class="navegacion">
            <nav>
                <ul>
                    <li><a href="entradaTienda.jsp">Inicio<!--<span class="icon icon-up-dir"></span> --></a></li>
                    <li>
                        <a href="#">Tienda</a>
                        <div class="submenu">
                            <div class="sub_items">
                                <ul>
                                    <li><a href="playeras.jsp">Playeras</a></li>
                                    <li><a href="sudaderas.jsp">Sudaderas</a></li>
                                    <li><a href="accesorios.jsp">Accesorios</a></li>
                                </ul>
                            </div>                           
                        </div>
                    </li>
                    <li><a href="acercaDe.jsp">Acerca de </a></li>
                    <li><a href="#">Contáctanos</a></li>
                    <li><a href="#">Blog</a></li>
                </ul>
            </nav>
       <!-- </div>-->
    </div>
                <!--- FIN MENU -->
            </header>            
            <section>
                <div id="Mision">
                    <h1>MISIÓN</h1>
                    <p>"Nuestra misión somo empresa es proporcionarle al cliente los mejores productos, 
                       que quede satisfecho con cada compra realizada en SAGA.
                       Es para nosotros, el cliente lo mas importante, queremos que nuestros artículos
                       sean para él los mejores."
                    
                    </p>
                </div> <br>
                <div id="Vision">
                    <p>
                    <h1>VISIÓN</h1>
                        "Nuestra visión es convertirnos en la empresa mas reconocida a nivel mundial, 
                        llegar hacer una fuerte competencia para las empresas rivales mas importantes
                        tanto a nivel nacional como internacional, así como tambien ser la empresa 
                        más prestigiada"
                    </p>
                </div>
            </section>
            <footer>
                Soy el pie
            </footer>
        </div>
    </body>
</html>
