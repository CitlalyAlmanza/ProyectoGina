
<%@page import="clases.Cuentas"%>
<%-- 
    Document   : login
    Created on : 4/11/2016, 06:55:52 PM
    Author     : GM
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" language="java" import="java.util.*" %>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>

<% 
        ArrayList <Cuentas> lista = new ArrayList();
 
        String consulta="select * from usuarios;";
        objConn.Consultar(consulta);
        int n=0;
        int i,j;
        if(objConn.rs!=null){
            try{
                objConn.rs.last();
                n=objConn.rs.getRow();
                objConn.rs.first();
            }catch(Exception e){}
            
            //select aes_decrypt(password,'key1234') from usuarios
            String idUsuario, nombre, cuenta, password,pregunta, correo,bloquear;
            for(i=0;i<n;i++){
                
                    try{
                        idUsuario=objConn.rs.getString(1);
                        //out.println(idUsuario+ "<br>");
                        nombre=objConn.rs.getString(2);
                        //out.println(nombre+ "<br>");
                        cuenta =objConn.rs.getString(3);
                        //out.println(cuenta+ "<br>");
                        password =objConn.rs.getString(4);
                        //out.println(password+ "<br>");
                        pregunta =objConn.rs.getString(5);
                        //out.println(pregunta+ "<br>");
                        correo =objConn.rs.getString(6);
                        //out.println(correo+ "<br>");                    
                        bloquear =objConn.rs.getString(7);
                        //out.println(bloquear+ "<br><br><br><hr>");
                        lista.add(new Cuentas(Integer.parseInt(idUsuario),nombre,cuenta,password,pregunta,correo,Integer.parseInt(bloquear)));
                        objConn.rs.next();
                    }catch(Exception e){ }
                
                
            }
         }
        objConn.closeRsStmt();
        //out.println("\n n="+n+" "+lista.get(0).getPassword());        
        application.setAttribute("lista", lista);
 
    String captchas[] = {"4","5","6"};
    String respuestas_captchas[] = {"jirafa","gato","leon"};
   
    Random rnd = new Random();    
    int aleatorio = (int)(rnd.nextDouble() * 3); //num aleatorio de 0-2
    
    String imagen = captchas[aleatorio];
    String respuesta = respuestas_captchas[aleatorio];
    
    application.setAttribute("respuesta_captcha", respuesta);
    
    String usuario = "";
    String contra = "";
    String fechaUltimoAcceso = "";
    
    /*buscar cookies de usuario y ultima fecha de ingreso*/
    Cookie[] todosLosCookies = request.getCookies();
    if (todosLosCookies != null) {
        for (i = 0; i < todosLosCookies.length; i++) {
            Cookie unCookie = todosLosCookies[i];
            if (unCookie.getName().equals("cookieUsuario")) {
                usuario = unCookie.getValue();
            }
            if(unCookie.getName().equals("cookieContra")){
                contra = unCookie.getValue();
            }
            if (unCookie.getName().equals("ultimoAcceso")) {
                fechaUltimoAcceso = unCookie.getValue();
            }
        }//fin for
    }//fin condicion

    /* Para la primera vez que se va a registrar la cookie
     de ultima fecha de ingreso */
    if (fechaUltimoAcceso.equals("")) {
        DateFormat df = DateFormat.getDateInstance(DateFormat.LONG);
        DateFormat hourFormat = new SimpleDateFormat("HH:mm:ss");
        fechaUltimoAcceso = df.format(new Date()) + " " + hourFormat.format(new Date());
        Cookie cookieFecha = new Cookie("ultimoAcceso", fechaUltimoAcceso);
        cookieFecha.setPath("/");
        cookieFecha.setMaxAge(60 * 60 * 24);
        response.addCookie(cookieFecha);
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proceso Login</title>
    </head>
    <body>
    <center>
        <h1><b>PROCESO DE IDENTIFICACIÓN </b></h1>
        <p>
            <%
                if(request.getParameter("error")!=null){
                    out.println(request.getParameter("error"));
                }
                
                //ArrayList<Usuarios> lista = (ArrayList<Usuarios>)(application.getAttribute("lista"));     

                //out.println("Elementos en la lista: "+ lista.size());
                
                application.setAttribute("lista", lista);
            %>
        <form action="checklogin.jsp" methop="post">
            <br>Última vez que accedió a esta página:<br><%=fechaUltimoAcceso%><br><br>
            Usuario: <input type="text" name="usuario" value="<%=usuario%>" size=20><br><br>
            Clave: <input type="password" name="clave" value="<%=contra%>" size=20/><br><br>
            Recordar mi usuario y contraseña: <input type="checkbox" name="recordarUsuario" value="on"><br><br>
            ¿Qué animal es el de la imagen?
            <input type="text" name="captcha" size=20> <img src="./captchas/<%=imagen%>.png"><br><br>
            
            <input type="submit" value="enviar" ><br>
            
            <a href="rememberPassword.jsp">Olvidaste tu contraseña. Da clic!</a>
        </form>
          </center> 
    </body>
</html>
