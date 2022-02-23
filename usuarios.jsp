<%--usuarios.jsp--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : usuarios
    Author     : Natalia Castillo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Mi Jardin - Usuarios</title>
    <link rel="shortcut icon" href="./imagenes/iconoflor.png" type="image/x-icon">
    <!-- CSS bootstrap -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous">
    <!-- ICONOS font-awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- CSS materialize 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
    -->
    <!-- ICONOS materialize
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    -->
    <!-- CSS mio -->
    <link rel="stylesheet" href="./estilo/style.css">
  </head>
  <body>
    <div id="wraper" class="container-flex bg-success">

      <!-- barra de navegación -->
      <nav class="navbar navbar-expand-md navbar-light bg-warning sticky-top mb-3">
        <div class="container-fluid fs-5">
          <a class="navbar-brand" href="index.jsp"><i
              class="fa fa-tree" aria-hidden="true"></i></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                  data-bs-target="#navbarSupportedContent"
                  aria-controls="navbarSupportedContent" aria-expanded="false"
                  aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item"><a class="nav-link" href="index.jsp">Inicio</a></li>

              <li class="nav-item"><a class="nav-link" href="formularioAcceso.jsp">Acceder</a>
              </li>
              <li class="nav-item"><a class="nav-link"
                                      aria-current="page" href="formularioRegistro.jsp">Registro</a></li>
              <li class="nav-item"><a class="nav-link" href="tuJardin.jsp">Mi
                  Jardin</a></li>
              <li class="nav-item"><a class="nav-link " href="buscador.jsp">Buscar
                  Plantas</a></li> 
              <li class="nav-item"><a class="nav-link active" href="usuarios.jsp">Usuarios</a></li>
            </ul>
          </div>
        </div> 
      </nav>  

      <%-- enlace con la base de datos --%>
      <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mijardin","root", "");
        Statement s = conexion.createStatement();
              
        ResultSet listado = s.executeQuery("SELECT * FROM usuarios ORDER BY usuarios");            
      %> 

      <!-- listado de plantas     table-responsive-stack table  table-success table-striped -->
      <div class="container">
        <div class=" panel panel-light">
          <h2 class="panel-heading text-center bg-verde">BASE DE DATOS DE USUARIOS</h2> 
          <table class="table table-striped table-verde">  
            
              <tr class="table-dark"><th>Usuario</th><th>Contraseña</th><th>Nombre</th><th>Rango</th></tr>
            
            <%
              while (listado.next()) {
                out.println("<tr><td>");
                out.println(listado.getString("usuarios") + "</td>");
                out.println("<td>" + listado.getString("password") + "</td>");
                out.println("<td>" + listado.getString("nombre") + "</td>");
                out.println("<td>" + listado.getString("rango") + "</td>");
            %>
            <!-- modificar -->
            <td>
              <form method="post" action="modificarUsuario.jsp">
                <input type="hidden" name="usuarios" value="<%=listado.getString("usuarios") %>">
                <input type="hidden" name="password" value="<%=listado.getString("password") %>">
                <input type="hidden" name="rango" value="<%=listado.getString("rango") %>">
                <button type="submit"  class="btn btn-info"><span class="bi bi-pencil-fill"> </span> Editar</button>
              </form>
            </td>
            <%--borrar--%>
            <td>
              <form method="post" action="borrarUsuario.jsp">
                <input type="hidden" name="usuarios" value="<%=listado.getString("usuarios") %>"/>
                <button type="submit" class="btn btn-danger"><span class="bi bi-trash-fill"></span> Borrar</button>
              </form>
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
    <!-- JS materialize 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    -->
    <!-- JS mio -->
    <script src="./js/javascript.js"></script>  
  </body>
</html>
