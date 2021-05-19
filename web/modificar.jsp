<%-- 
    Document   : modificar
    Created on : 12 may. 2021, 10:37:06
    Author     : javie
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto?autoReconnect=true&useSSL=false","root","");
            Statement s = conexion.createStatement();
            
            s.execute ("UPDATE socio SET nombre='"+request.getParameter("nombre")+"',edad="+request.getParameter("edad")+",estatura="+request.getParameter("estatura")+",localidad='"+request.getParameter("localidad")+"' WHERE socioID="+request.getParameter("socioID"));
            
            s.close();
        %>
        <script>document.location = "index.jsp"</script>
    </body>
</html>
