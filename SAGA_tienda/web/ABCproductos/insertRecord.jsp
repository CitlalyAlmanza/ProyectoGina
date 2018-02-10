<%-- 
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/estilosOtro.css">
        <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
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
        <%
         } else {
           usuario = (String) sesionOk.getAttribute("usuario");
         }%>
    <center>
         <header>
            <br><br><br>
            <h1>Altas</h1>
            <br><br><br>
         </header>
        <section>
            <form action="executeInsertRecord.jsp" method="post">
            <pre>



            ID: <input type="text" name="id" value="" />
            
            Nombre: <input type="text" name="nombre" value="" />

            Categoría <input type="text" name="categoria" value="" />

            Descripción<input type="text" name="descripcion" value="" />

            Existencia:<input type="text" name="existencia" value=" " />

            Precio: <input type="text" name="precio" value="" />

            

            <input type="submit" value="enviar" />


            </pre>
        </form>
        </section>
    </center>
        
    </body>
</html>
