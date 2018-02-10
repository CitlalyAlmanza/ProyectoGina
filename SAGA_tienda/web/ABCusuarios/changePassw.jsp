<%@page import="java.util.ArrayList"%>
<%@page import="clases.Cuentas"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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
        <link rel="stylesheet" type="text/css" href="./CSS/estilos.css">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <b>CAMBIO DE PASSWORD</b><p>
       
        <% ArrayList <Cuentas> lista = new ArrayList();%>
        
        
        <%
        String consulta="select * from encriptar;";
        objConn.Consultar(consulta);
        int n=0;
        int i,j;
        if(objConn.rs!=null){
            try{
                objConn.rs.last();
                n=objConn.rs.getRow();
                objConn.rs.first();
            }catch(Exception e){}
            //String[][] datos=new String[n][4];
            //datos=new String[n][4];
            String idUsuario, nombre, correo, cuenta, password, seguridad, bloqueo;
            for(i=0;i<n;i++){
                
                    try{
                        idUsuario=objConn.rs.getString(1);
                        //out.println(idUsuario+ "<br>");
                        nombre=objConn.rs.getString(2);
                        //out.println(nombre+ "<br>");
                        correo =objConn.rs.getString(3);
                        //out.println(correo+ "<br>");
                        cuenta =objConn.rs.getString(4);
                        //out.println(cuenta+ "<br>");
                        password =objConn.rs.getString(5);
                        //out.println(password+ "<br>");
                        seguridad =objConn.rs.getString(6);
                        //out.println(seguridad+ "<br>");
                        bloqueo =objConn.rs.getString(7);
                        //out.println(bloqueo+ "<br>");
                        lista.add(new Cuentas(Integer.parseInt(idUsuario),nombre, correo, cuenta, password, seguridad, Integer.parseInt(bloqueo)));
                        objConn.rs.next();
                    }catch(Exception e){ }
                
                
            }
         }
        objConn.closeRsStmt();
        //out.println("n="+n+" "+lista);
        %>
         <form action="ejecutaCambioPassw.jsp" method="post">

            usuario: <select name="cuenta">
                <%
                   for(i=0;i<lista.size();i++){
                      out.println("<option value=\""+lista.get(i).getCuenta()+"\">"+lista.get(i).getCuenta()+"");
                   }

                %>
                </select><br>
            password: <input type="text" name="password" size=20><br>
            <input type="submit" value="enviar"><br>
        </form>
        
        </center>
    </body>
</html>
