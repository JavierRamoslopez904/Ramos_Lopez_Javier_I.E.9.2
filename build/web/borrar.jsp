<%-- 
    Document   : borrar
    Created on : 10 may. 2021, 18:51:20
    Author     : javie
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
            
            s.execute ("DELETE FROM socio WHERE socioID=" + request.getParameter("socioID"));
            
            s.close();
        %>
        <script>document.location = "index.jsp"</script>
    </body>
</html>
