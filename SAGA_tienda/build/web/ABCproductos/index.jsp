<%-- 
     
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" type="text/css" href="../CSS/estilosOtro.css">
        <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <center>
        <b>PROCESO DE IDENTIFICACION</b><p>
        <%
            if (request.getParameter("error") != null) {
                out.println(request.getParameter("error"));
            }
        %>

        <form action="checklogin.jsp" method="post">
            usuario: <input type="text" name="usuario" size=20 value="admin"><br>
            password: <input type="text" name="clave" size=20 value="admin"><br>
            <input type="submit" value="enviar"><br>
        </form>
        </center>

    </body>
</html>