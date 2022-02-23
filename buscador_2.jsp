<%--buscador.jsp--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : buscador
    Author     : Natalia Castillo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Mi Jardin - Base de datos</title>
    <link rel="shortcut icon" href="./imagenes/iconoflor.png" type="image/x-icon">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./estilo/style.css">
  </head>
  <body>
    <div id="wraper" class="container-flex bg-success">
      <!-- barra de navegación -->
      <nav class="navbar navbar-expand-md navbar-light bg-warning sticky-top ">
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
              <li class="nav-item"><a class="nav-link active" href="buscador.jsp">Buscar
                  Plantas</a></li>        
            </ul>
          </div>
        </div> 
      </nav>
      <div class="container bg-light">
        <div class="panel panel-success"> 
          <h2 class="panel-heading text-center bg-verde">BASE DE DATOS DE PLANTAS</h2>         
          <%-- enlace con la base de datos --%>
          <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mijardin","root", "");
            Statement s = conexion.createStatement();
              
            ResultSet listado = s.executeQuery("SELECT * FROM planta ORDER BY nombre");            
          %> 

          <!-- listado de plantas 
          <table id="tablaUno" class="table table-bordered table-success table-striped table-responsive-stack text-center">
            <thead></thead>
          <thead>
            <tr class="table-dark"><th>Nº de planta</th><th>Familia</th><th>Nombre</th><th>Cientifico</th><th></th><th></th></tr>
</thead>
          
          -->
          <div class="row text-center">
            <div class="col-2"> Nº de planta</div>
            <div class="col-3"> Familia</div>
            <div class="col-3">Nombre</div>
            <div class="col-4">Cientifico</div>


            <div class="col-2" class="">
            <form method="get" action="grabarPlanta.jsp">
              <input type="text" name="plantaID" size="5">
            </div> 
              <div class="col-3">
                <input type="text" name="familia" size="30">
              </div>
                <div class="col-3">
               <input type="text" name="nombre" size="30">
                </div>
                <div class="col-3">
                <input type="text" name="cientifico" size="30">
                </div>
                <div class="col-1">
                <button type="submit" value="Añadir" class="btn btn-primary"><span class="bi bi-plus-circle"></span> </button>
                  </div>
                
                          
            </form>
            <%
              while (listado.next()) {
                out.println("<div class=\"col-2\">");
                out.println(listado.getString("plantaID") + "</div>");
               
                out.println("<div class=\"col-3\">" + listado.getString("familia") + "</div>");
                
               out.println("<div class=\"col-2\">" + listado.getString("nombre") + "</div>");
                
               out.println("<div class=\"col-2\">" + listado.getString("cientifico") + "");                               
            %>
            
            <!-- modificar -->
              
              <form method="get" action="modificarPlanta.jsp">
                <input type="hidden" name="plantaID" value="<%=listado.getString("plantaID") %>">
                
                <input type="hidden" name="familia" value="<%=listado.getString("familia") %>">
               
                <input type="hidden" name="nombre" value="<%=listado.getString("nombre") %>">

                <input type="hidden" name="cientifico" value="<%=listado.getString("cientifico") %>">

                <div class="col-2 d-inline">
                <button type="submit"  class="btn btn-info"><span class="bi bi-pencil-fill"> </span></button>
  
                
              </form>
            <%--borrar--%>
              <form method="get" action="borrarPlanta.jsp">               
                <input type="hidden" name="plantaID" value="<%=listado.getString("plantaID") %>"/>

                <button type="submit" class="btn btn-danger"><span class="bi bi-trash-fill"></span> </button>
                </div>
              </form>
     
                
                
            <%
              }   
              conexion.close();
            %>
</tbody>
          </table>
        </div>
      </div>
</div>
</div>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
              integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>
      <script src="./js/javascript.js"></script>
  </body>
</html>