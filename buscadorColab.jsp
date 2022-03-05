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
    <title>Gestión Plantas</title>
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
      <div id="nav-placeholder1"></div> 

      <%-- enlace con la base de datos --%>
      <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mijardin","root", "");
        Statement l = conexion.createStatement();
        Statement b = conexion.createStatement();
        
        request.setCharacterEncoding("UTF-8");
              
        ResultSet listado = l.executeQuery("SELECT codpla, nombre, cientifico, familia, info "
                + "FROM planta ");
        
      %> 

      <!-- listado de plantas     table-responsive-stack table  table-success table-striped -->
      <div class="container text-center">
        <div class=" panel mt-3">
          <h2 class="panel-heading text-center bg-verde">BASE DE DATOS DE PLANTAS</h2>                    
        </div>
          <table class="table table-striped table-verde">
            <form method="post" action ="nuevaPlanta.jsp">
              <tr  class="table-warning">
                <td><input type="text" size="10" name="codpla" required></td>
                <td><input type="text" name="nombre" size="25" required></td>
                <td><input type="text" name="cientifico" size="25"required></td>
                <td><input type="number" name="familia" size="10" required></td> 
                <td><textarea type="text" name="info"  rows="1" ></textarea></td>
                <td><button type="submit" value="Añadir" class="btn btn-primary"><span class="bi bi-plus-circle"></span> </button></td>                
              </tr>
              <table class="table table-striped table-verde">
              <tr></tr>
              <tr>
                <td>  <p class="text-danger">
              <%=
                session.getAttribute("error") == null ?
                        "" : session.getAttribute("error")
              %>
              <% session.removeAttribute("error"); %></td>
              </tr>    
              
              <tr class="table-dark"><th>Nº</th><th>Nombre</th><th>Cientifico</th><th>Familia</th><th>Datos de interés</th></tr>             
            </form>
              
            <%
              while (listado.next()) {
                out.println("<td>" + listado.getString("codpla") + "</td>");
                out.println("<td>" + listado.getString("nombre") + "</td>");
                out.println("<td>" + listado.getString("cientifico") + "</td>");
                out.println("<td>" + listado.getString("familia") + "</td>");
                out.println("<td>" + listado.getString("info") + "</td>");
            %>
            
            <!-- modificar -->  
            <td>
              <form method="post" action="modificarPlanta.jsp">
                <input type="hidden" name="codpla" value="<%=listado.getString("codpla") %>">              
                <input type="hidden" name="nombre" value="<%=listado.getString("nombre") %>">
                <input type="hidden" name="cientifico" value="<%=listado.getString("cientifico") %>">
                <input type="hidden" name="familia" value="<%=listado.getString("familia") %>">
                <input type="hidden" name="info" value="<%=listado.getString("info") %>">
                <button type="submit"  class="btn btn-info"><span class="bi bi-pencil-fill"> </span>
                </button>
              </form>
            </td>
            <%--borrar--%>           
            <td>           
              <form method="post" action="borrarPlanta.jsp">
                <input type="hidden" name="codpla" value="<%=listado.getString("codpla")%>"/>
                <button type="submit" class="btn btn-danger">
                  <span class="bi bi-trash-fill"></span>  
                </button>
              </form>
            </td></tr>
        
            <%
              }   
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