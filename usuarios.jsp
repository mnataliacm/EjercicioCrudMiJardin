<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Author     : Natalia Castillo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Gestion Usuarios</title>
    <link rel="shortcut icon" href="./imagenes/iconoflor.png" type="image/x-icon">
    <!-- CSS bootstrap -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous">
    <!-- ICONOS bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <!-- CSS mio -->
    <link rel="stylesheet" href="./estilo/style.css">
    <!-- javascript para reutilizar navbar -->
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  </head>
  <body class="bg-success">   
    <div id="wraper" class="container-flex">
      <!--Barra navegacion-->
      <div id="nav-placeholder2"></div>  

      <%-- enlace con la base de datos --%>
      <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mijardin","root", "");
        Statement s = conexion.createStatement();
              
        ResultSet listado = s.executeQuery("SELECT * FROM usuarios WHERE codusu > 2 ORDER BY usuario");            
      %> 

      <!-- listado de plantas     table-responsive-stack table  table-success table-striped -->
      <div class="container mt-3 text-center">
        <div class=" panel panel-light">
          <h2 class="panel-heading text-center bg-verde">BASE DE DATOS DE USUARIOS</h2> 
          <table class="table table-striped table-verde ">             
            <tr class="table-dark"><td></td><th></th><th>Usuario</th><th>Contraseña</th><th>Email</th>

              <%
                while (listado.next()) {
                  out.println("<tr><td>");
                  out.println("<td>" + listado.getString("codusu") + "</td>");
                  out.println("<td>" + listado.getString("usuario") + "</td>");
                  out.println("<td>" + listado.getString("password") + "</td>");
                  out.println("<td>" + listado.getString("email") + "</td></td>");
              %>
              <!-- modificar -->
              <td>
                <div class="row">
                  <div class="col-4 ">
                    <form method="post" action="modificarUsuario.jsp">
                      <input type="hidden" name="codusu" value="<%=listado.getString("codusu") %>">
                      <input type="hidden" name="usuario" value="<%=listado.getString("usuario") %>">
                      <input type="hidden" name="password" value="<%=listado.getString("password") %>">
                      <input type="hidden" name="email" value="<%=listado.getString("email") %>">
                      <button type="submit"  class="btn btn-info"><span class="bi bi-pencil-fill"> </span> Editar</button>
                    </form>
                  </div>

                  <%--borrar--%>
                  <div class="col-4">
                    <form method="post" action="borrarUsuario.jsp">
                      <input type="hidden" name="codusu" value="<%=listado.getString("codusu") %>"/>
                      <button type="submit" class="btn btn-danger"><span class="bi bi-trash-fill"></span> Borrar</button>
                    </form>
                  </div>
                </div>
              </td></tr>
              <%
                }   
                conexion.close();
              %>

          </table>
        </div>
      </div> <!-- cierre container lista -->
    </div> <!-- fin wraper -->

    <!-- JS bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>  
    <!-- JS mio -->
    <script src="./js/javascript.js"></script> 
  </body>
</html>
