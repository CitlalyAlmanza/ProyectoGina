<%-- 
    Document   : baja
    Created on : 9/11/2016, 10:26:24 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bajas</h1><br><br>
            
        <form action="executeBaja.jsp">
            Producto a eliminar: <input type="text" name="producto" value="" />
            <input type="submit" value="Borrar" />
        </form>
    </body>
</html>
