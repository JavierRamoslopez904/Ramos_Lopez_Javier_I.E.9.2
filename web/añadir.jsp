<%-- 
    Document   : añadir
    Created on : 10 may. 2021, 19:10:37
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
            
            s.execute ("INSERT INTO socio (socioID,nombre,edad,estatura,localidad)values("+request.getParameter("socioID")+",'"
                    +request.getParameter("nombre")+"',"+request.getParameter("edad")+","+request.getParameter("estatura")+",'"+request.getParameter("localidad")+"')");
            
            s.close();
        %>
        <script>document.location = "index.jsp"</script>
    </body>
</html>
