<%-- 
    Document   : executeBaja
    Created on : 9/11/2016, 10:45:13 PM
    Author     : PC
--%>

<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<jsp:useBean id="objCuenta" class="clases.Productos" scope="session" />
<jsp:setProperty name="objCuenta" property="*"/>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                
            String producto = request.getParameter("producto");
            
            String query = "delete from productos where nombre='"+producto+"';";
            objConn.Actualizar(query);
            
            objConn.closeRsStmt();
            
            
        %>
    <center>
        <br><br><br>
        El producto <b><%= producto %> </b> ahora no existe en la tienda.
        <br><br>
        <a href="menu.jsp">Regresar a menú.</a>
    </center>
    </body>
</html>
