<%-- 
    Document   : executeBaja
    Created on : 9/11/2016, 10:45:13 PM
    Author     : PC
--%>

<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<jsp:useBean id="objCuenta" class="clases.Cuentas" scope="session" />
<jsp:setProperty name="objCuenta" property="*"/>


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
                
            String cuenta = request.getParameter("cuenta");
            
            String query = "delete from usuarios where cuenta='"+cuenta+"';";
            objConn.Actualizar(query);
            
            objConn.closeRsStmt();
            
            
        %>
    <jsp:forward page="regresar.jsp">
                <jsp:param name="mensaje" value="La cuenta se dió de baja con éxito."/>
    </jsp:forward>
    </body>
</html>
