
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<jsp:useBean id="objCuenta" class="clases.Cuentas" scope="session" />
<jsp:setProperty name="objCuenta" property="*"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./CSS/estilos.css">
        <title>Cambios</title>
    </head>
    <body>
        <%
            String usuario = "";
             HttpSession sesionOk = request.getSession();
            if (sesionOk.getAttribute("usuario") == null) {%>
             <jsp:forward page="index.jsp">
             <jsp:param name="error"  value="Es obligatorio identificarse"/>
             </jsp:forward>
        <%
         } else {
           usuario = (String) sesionOk.getAttribute("usuario");
           }
           
         String nombre, correo, cuenta, password, seguridad;
         Integer bloqueo,id;
         
         id = objCuenta.getIdUsuario();
         nombre = objCuenta.getNombre();
         correo = objCuenta.getCorreo();
         cuenta = objCuenta.getCuenta();
         password = objCuenta.getPassword();
         seguridad = objCuenta.getSeguridad();
         bloqueo = 0;
         
         
        //obtener el id que sigue
         String consulta="select * from usuarios;";
        objConn.Consultar(consulta);
        int n=0;
        int i,j;
        if(objConn.rs!=null){
            try{
                objConn.rs.last();
                n=objConn.rs.getRow();//total de registros
                objConn.rs.first();
            }catch(Exception e){}
         }
         n++;//aumentamos en un el id
         
         objConn.closeRsStmt();
         
       %>
      
       <jsp:forward page="regresar.jsp">
                <jsp:param name="mensaje" value="Usuario modificado con éxito."/>
       </jsp:forward>
    </body>
</html>
