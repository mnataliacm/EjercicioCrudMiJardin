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
    <title>Editar Planta</title>
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
  <body>
    <div id="wraper" class="container-flex vh-100 p-5">
      <div class="container m-auto">
      <div class="row m-auto">
        <div class="col p-3">
          <div class="card bg-verde">
            <div class="card-header text-center">
              <img src="./imagenes/tulips.png" class="img w-50" alt="tulipanes rojos">
                <h3 class="bg-tostado text-center py-3">Editar Planta</h3>            
            </div>
            <form method="get" action="grabaPlantaModificada.jsp">
              <div class="card-body bg-naranja">
              <div class="row">
              <div class="col"> 
                <label>Nº de planta:</label><input type="text" size="5" name="codpla" value="<%= request.getParameter("codpla") %>" readonly>
                </div>
              <div class="col"> 
            <label>Nombre:</label><input type="text" size="25" name="nombre" value="<%= request.getParameter("nombre") %>" required >
              </div>
                <div class="col"> 
                <label> Cientifico: </label><input type="text" size="25" name="cientifico" value="<%= request.getParameter("cientifico") %>" required>             
              </div>
                <div class="col">
                  <label>Familia: </label><input type="text" size="25" name="familia" value="<%= request.getParameter("familia") %>" readonly>
              </div>
              <div class="col">
                <label>Datos de Interes: </label><input type="text" size="25" name="info" value="<%= request.getParameter("info") %>">
              </div>
              </div>
              </div>
              </div>
              <div class="card-footer text-center">
              
              <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>Aceptar</button>
              <a href="buscadorColab.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>             
              </div>
             
            </form>
          </div>
        </div> 
      </div> <!-- fin row -->
      </div> <!-- fin container -->
    </div><!-- fin wraper -->
              
    <!-- JS bootstrap -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"></script>  
  <!-- JS mio -->
  <script src="./js/javascript.js"></script> 
  </body>
</html>
