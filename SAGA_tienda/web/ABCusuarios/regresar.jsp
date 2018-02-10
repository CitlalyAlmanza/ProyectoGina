<%-- 
    Document   : regresar
    Created on : 15/12/2016, 01:58:21 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">   
        <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
        
        <link rel="stylesheet" type="text/css" href="estilosOtro.css">
        <title>JSP Page</title>
    </head>
    <body>
        <br><br><br><br><br><br>
    <center>
        <header>
            <br><br><br><br>
            <h1>
            <%
            if (request.getParameter("mensaje") != null) {
                out.println(request.getParameter("mensaje"));
            }
        %>
        </h1>
        <br><br>
        </header>
        <section>
            <br><br>
            <h1><a href="../entradaTiendaAdmin.jsp" >REGRESAR A PÁGINA DE INICIO (Siempre regresa a página de administrador)</a></h1>
            <br><br>
        </section>
        <footer><br><br></footer>
    </center>
                
        

        
    </body>
</html>
