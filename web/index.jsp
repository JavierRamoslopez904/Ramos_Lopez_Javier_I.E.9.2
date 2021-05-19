<%-- 
    Document   : index
    Created on : 10 may. 2021, 18:33:08
    Author     : javie
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.ServletException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <title>PROYECTO BALONCESTO - JAVIER RAMOS LÓPEZ</title>
    </head>
    <body>
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading text-center">
                    <h2 class="text-primary">Club de Basket</h2>
                </div>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto?autoReconnect=true&useSSL=false","root","");
                    Statement s = conexion.createStatement();
                    
                    ResultSet listado = s.executeQuery("SELECT * FROM socio");
                %>
                <table class="table table-striped table-hover">
                    <tr><th>ID DE SOCIO</th><th>NOMBRE</th><th>EDAD</th><th>ESTATURA</th><th>LOCALIDAD</th></tr>
                    <form method="get" action="añadir.jsp">
                        <tr>
                            <td><input type="text" name="socioID" class="shadow p-3 mb-5 bg-body rounded"></td>
                            <td><input type="text" name="nombre" class="shadow p-3 mb-5 bg-body rounded"></td>
                            <td><input type="text" name="edad" class="shadow p-3 mb-5 bg-body rounded"></td>
                            <td><input type="text" name="estatura" class="shadow p-3 mb-5 bg-body rounded"></td>
                            <td><input type="text" name="localidad" class="shadow p-3 mb-5 bg-body rounded"></td>
                            <td><button type="submit" value="Añadir" type="button" class="btn btn-info">Añadir</button>
                            </td>
                        </tr>
                    </form>
                    <%
                        while(listado.next()){
                            out.println("<tr><td>");
                            out.println(listado.getInt("socioID") + "</td>");
                            out.println("<td>" + listado.getString("nombre") + "</td>");
                            out.println("<td>" + listado.getInt("edad") + "</td>");
                            out.println("<td>" + listado.getDouble("estatura") + "</td>");
                            out.println("<td>" + listado.getString("localidad") + "</td>");
                        
                    %>
                    <td>
                        <form method="get" action="borrar.jsp">
                            <input type="hidden" name="socioID" value="<%=listado.getInt("socioID")%>"/>
                            <button type="submit" class="btn btn-danger">Eliminar</button>
                        </form>
                    </td>    
                    <td>
                        <form method="get" action="formulario.jsp">
                            <input type="hidden" name="socioID" value="<%=listado.getInt("socioID")%>"/>
                            <input type="hidden" name="nombre" value="<%=listado.getString("nombre")%>"/>
                            <input type="hidden" name="edad" value="<%=listado.getInt("edad")%>"/>
                            <input type="hidden" name="estatura" value="<%=listado.getDouble("estatura")%>"/>
                            <input type="hidden" name="localidad" value="<%=listado.getString("localidad")%>"/>
                            <button type="submit" class="btn btn-warning">Editar</button>
                        </form>
                       </form>
                    <%}%>
                    </td>
                </table>
            </div>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</html>
