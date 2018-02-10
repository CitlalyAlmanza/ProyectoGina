

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
 
<%
    String usuario = "";
    HttpSession sesionOk = request.getSession();
    if (sesionOk.getAttribute("usuario") == null) {%>
        <jsp:forward page="index.jsp">
            <jsp:param name="error"
                       value="Es obligatorio identificarse"/>
        </jsp:forward>
    <%
    } else {
        usuario = (String) sesionOk.getAttribute("usuario");
    }%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> </title>        
         <meta name="viewport" content="width=device-width, initial-scale=1">
         
        <link rel="stylesheet" type="text/css" href="./CSS/estilos.css">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        
    </head>
    <body>
        <b>PROCESO DE IDENTIFICACION</b><p>
        <b>Menu de administracion</b><br>
        <b>Usuario activo:</b> <%=usuario%>
        
         <nav class="navbar navbar-default">

    
    <ul class="nav navbar-nav">
      
      <li><a href="changePassw.jsp">Cambio de un password</a></li>
      <li><a href="insertRecord.jsp">Alta a una cuenta</a></li>
      <li><a href="baja.jsp">Baja a una cuenta</a></li>
      <li><a href="closeSession.jsp">Cerrar Sesion</a></li>
    </ul>
 
        </nav>
        
      
    </body>
</html>

 
