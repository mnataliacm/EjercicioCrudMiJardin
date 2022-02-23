<%-- 
    Document   : modificarPlanta
    Author     : Natalia Castillo Muñoz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Editar Planta</title>
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
    <% request.setCharacterEncoding("UTF-8"); %>
    <div id="wraper" class="container-flex vh-100 bg-success p-5">
      <div class="container m-auto">
      <div class="row m-auto">
        <div class="col p-3">
          <div class="card">
            <div class="card-header text-center">Modificación de plantas</div>
            <form method="get" action="grabaPlantaModificada.jsp">
              <div class="card-body bg-warning">
              <div class="row">
              <div class="col"> 
                <label>Nº de planta:</label><input type="text" size="5" name="plantaID" value="<%= request.getParameter("plantaID") %>" readonly>
                </div>
              <div class="col"> 
            <label>Nombre:</label><input type="text" size="35" name="nombre" value="<%= request.getParameter("nombre") %>" required >
              </div>
            <div class="col">
                <label>Familia: </label><input type="text" size="35" name="familia" value="<%= request.getParameter("familia") %>">
                </div>
                <div class="col"> 
                <label> Cientifico: </label><input type="text" size="35" name="cientifico" value="<%= request.getParameter("cientifico") %>">             
              </div>
              </div>
              </div>
              <div class="card-footer text-center">
              
              <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>Aceptar</button>
              <a href="buscador.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>             
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
    <!-- JS materialize 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    -->
    <!-- JS mio -->
    <script src="./js/javascript.js"></script>  
  </body>
</html>
