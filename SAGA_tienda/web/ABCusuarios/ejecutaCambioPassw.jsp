<%-- 
   
--%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./CSS/estilos.css">
        <title>JSP Page</title>
    </head>
    <body>
         <%
             String usuario = "";
             HttpSession sesionOk = request.getSession();
             if (sesionOk.getAttribute("usuario") == null) {%>
                <jsp:forward page="index.jsp">
                <jsp:param name="error"  value="Es obligatorio identificarse"/>
                </jsp:forward>
        
            <% } else {
            usuario = (String) sesionOk.getAttribute("usuario");
            }
             
         String cuenta, password;
         cuenta = (request.getParameter("cuenta")).trim();
         password = (request.getParameter("password")).trim();
         
         
         String modifica = "update cuentas set password='"+password+"' where cuenta='"+cuenta+"';";
         //out.println("*"+cuenta+"*<br>");
         //out.println("*"+password+"*<br>");
         //out.println("*"+modifica+"*<br>");
         objConn.Actualizar(modifica);
         objConn.closeRsStmt();
         %>
          
         <jsp:forward page="menu.jsp"/>
         
         
         
         
         
         
    </body>
</html>
