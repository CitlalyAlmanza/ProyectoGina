<%-- 
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>


<%
            String usuario = "";
            String clave = "";
            if (request.getParameter("usuario") != null) {
                usuario = request.getParameter("usuario");
            }
            if (request.getParameter("clave") != null) {
                clave = request.getParameter("clave");
            }

            if (usuario.equals("admin") && clave.equals("admin")) {
                HttpSession sesionOk = request.getSession();
                sesionOk.setAttribute("usuario", usuario);
                %>
                <jsp:forward page="menu.jsp" />
                <%
            } else {%>
                <jsp:forward page="index.jsp">
                <jsp:param name="error" value="Usuario y/o clave
                    incorrectos.<br>Vuelve a intentarlo."/>
                </jsp:forward>

            <%
            }
%>

 