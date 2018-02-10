<%-- 
   
--%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<jsp:useBean id="objProducto" class="clases.Productos" scope="session" />
<jsp:setProperty name="objProducto" property="*"/>

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
        <%
         } else {
           usuario = (String) sesionOk.getAttribute("usuario");
           }
           
         String nombre, categoria, descripcion, imagen;
         Integer existencia,id,vendidos;
         Float precio;
         id = objProducto.getId();
         nombre = objProducto.getNombre();
         categoria = objProducto.getCategoria();
         descripcion = objProducto.getDescripcion();
         existencia = objProducto.getExistencia();
         precio = objProducto.getPrecio();
         imagen = objProducto.getImagen();
         vendidos = objProducto.getVendidos();
         
        //obtener el id que sigue
        String consulta="select * from productos;";
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
         String alta,parte1, parte2;
         parte1 = "insert into productos (id,nombre,categoria,precio,existencia,vendidos,descripcion) ";
         parte2 = "values ('"+ id + "','"+nombre+"','"+categoria+"','"+precio+"','"+existencia+"','"+vendidos+"','"+descripcion+ "');";
         alta = parte1 +parte2;
         objConn.Actualizar(alta);
         objConn.closeRsStmt();
         
       %>
       <jsp:forward page="menu.jsp"/>
    </body>
</html>
