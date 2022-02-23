<%--index.jsp--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : index
    Author     : Natalia Castillo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Jardin - Inicio</title>
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
    <!-- ICONOS materialize de google -->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">   
    <!-- CSS mio -->
    <link rel="stylesheet" href="./estilo/style.css">
  </head>
  <body>
    <div id="wraper" class="container-fluid h-100 bg-success">
      
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
              <li class="nav-item"><a class="nav-link active" href="index.jsp">Inicio</a></li>

              <li class="nav-item"><a class="nav-link" href="formularioAcceso.jsp">Acceder</a>
              </li>
              <li class="nav-item"><a class="nav-link"
                                      aria-current="page" href="formularioRegistro.jsp">Registro</a></li>
              <li class="nav-item"><a class="nav-link" href="tuJardin.jsp">Mi
                  Jardin</a></li>
              <li class="nav-item"><a class="nav-link" href="buscador.jsp">Buscar
                  Plantas</a></li>        
            </ul>
          </div>
        </div> 
      </nav>
      
      <!-- Card de bienvenida -->          
      <div id="entrada" class="container-block align-items-center mt-3">
        <div class="card text-center bg-verde">
          <div class="card-header fs-1 fw-bold">
            Bienvenid@ a Mi Jardin!
          </div>
          <div class="card-body">   
            <i class="fa fa-pagelines fs-5" aria-hidden="true"></i>
            <h5 class="card-title">Consulta nuestra base de datos de plantas</h5>
            <p class="card-text">Registrate y guarda plantas en "Tu Jardín"</p>
            <a class="btn-lg btn-warning p-2" href="formularioAcceso.jsp">Acceder</a>         
          </div> 
        </div>
      </div>
      
      <!-- imagen de entrada -->
      <div class="container-flex">
        <img src="imagenes/flowers_purple_copia.jpg" class="img mw-100 mt-2" alt="flores moradas">
      </div>
      
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