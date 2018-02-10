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
        <link rel="stylesheet" type="text/css" href="estilosOtro.css">
        <title>JSP Page</title>
    </head>
    <body>
        <br><br><br><br><br><br><br>
    <center>
        <header>
            <h1>Eliminar cuenta</h1><br><br>
          
        </header>  
        <section>
            <br><br><br><br><br><br>
            <form action="executeBaja.jsp">
                <h3>Cuenta a dar de baja: <input type="text" name="cuenta" value="" /> </h3><BR>
            <input type="submit" value="ELIMINAR" />
            
            <br><br><br><br><br><br>
        </form>
        </section>
        <footer><br><br></footer>
    </center>
    </body>
</html>
