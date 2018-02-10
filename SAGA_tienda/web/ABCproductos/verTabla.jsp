<%-- 
    Document   : verTabla
    Created on : 14/11/2016, 03:50:41 PM
    Author     : PC
--%>

<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' type='text/css' href='estilos.css'>
        <title>Nuestros productos</title>
    </head>
    <body>
    <center>
        <h1>¡Bienvenid@ a SAGA!</h1>
    </center>
    
    <%
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
    
    objConn.rs.first();

          do
            {
                if(objConn.rs!=null){
            %>
            <center>  
            <div id="campo">
                <%=objConn.rs.getInt("idUsuario") %><br>
                Producto: <%=objConn.rs.getString("nombre") %><br>
                Categoria: <%=objConn.rs.getString("categoria") %><br>
                Descripción: <%=objConn.rs.getString("descripcion") %><br>
                Existencia: <%=objConn.rs.getInt("existencia") %><br>
                Precio: <%=objConn.rs.getFloat("precio") %><br>
                <img src="<%= objConn.rs.getString("imagen")%>" style="width:200px;height:150px;" >
                
            </div>
             </center>   
        <%
            }
        }while (objConn.rs.next());
        %>
            
            
    
    </body>
</html>
