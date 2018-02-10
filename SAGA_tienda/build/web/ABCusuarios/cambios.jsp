
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.swing.text.html.CSS"%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<jsp:useBean id="objCuenta" class="clases.Cuentas" scope="session" />
<jsp:setProperty name="objCuenta" property="*"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilosOtro.css">   
        <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
        
        <title>Modificación</title>
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

        %>
         
         <div id="section">
             <center>
        <br><br>
        <header>
            <br><br>
             <h1>Modificar usuario</h1>
             <br>
        </header>
        <section>
            <br><br>
            <form action="executeCambios.jsp" method="post">
                <pre>
                 
                 ID: <input type="text" name="id" value="<<%=id%>" />

             Nombre: <input type="text" name="nombre" value="" />
 
             Correo: <input type="text" name="correo" value="" />

             Cuenta: <input type="text" name="cuenta" value="" />

           Password: <input type="text" name="password" value="" />

     Lugar favorito: <input type="text" name="seguridad" value=" " />

                <input type="submit" value="ACTUALIZAR" />


                </pre>
            </form>
        </section>
    </center>
         </div>    
    </body>
</html>
