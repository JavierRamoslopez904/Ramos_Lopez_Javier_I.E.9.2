<%-- 
    Document   : formulario
    Created on : 13 may. 2021, 20:06:08
    Author     : javie
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto?autoReconnect=true&useSSL=false","root","");
                    Statement s = conexion.createStatement();
        %>
        <div class="container mt-4 col-lg-4">
            <div class="card">
                <div class="card-header">
                    <h5 class="text-center">Actualizar</h5>
                </div>
                <div class="card-body">
                    <table>
                            <form method="get" action="modificar.jsp" class="text-center">
                                <tr>
                                    <td class="fs-5">socio ID : <input type="text" name="socioID" readonly="true" value="<%= request.getParameter("socioID")%>" ></td>
                                </tr>
                                <tr>
                                   <td class="fs-5">Nombre : <input type="text" name="nombre" class="text-center" value="<%= request.getParameter("nombre")%>"></td> 
                                </tr>
                                <tr>
                                   <td class="fs-5">Edad : <input type="text" name="edad" class="text-center"value="<%= request.getParameter("edad")%>"></td> 
                                </tr>
                                <tr>
                                    <td class="fs-5">Estatura : <input type="text" name="estatura" class="text-center" value="<%= request.getParameter("estatura")%>"></td>
                                </tr>
                                <tr>
                                    <td class="fs-5">Localidad : <input type="text" name="localidad" class="text-center" value="<%= request.getParameter("localidad")%>"></td>
                                </tr>
                                <td><button type="submit" value="Confirmar" class="btn btn-success">Confirmar</button>
                                <td><button type="submit" value="Cancelar" class="btn btn-danger" href="index.jsp">Cancelar</button>
                                </td>
                            
                        </form>
                    </table>
                </div>
            </div>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</html>
