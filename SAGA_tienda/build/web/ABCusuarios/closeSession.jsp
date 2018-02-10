<%-- 
 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
        
<!DOCTYPE html>
<%
HttpSession sesionOk = request.getSession();
sesionOk.invalidate();
%>
<jsp:forward page="index.jsp"/>
 


 