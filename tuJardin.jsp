<%--tuJardin.jsp--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : tuJardin
    Author     : Natalia Castillo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Tu Jardin</title>
    <link rel="shortcut icon" href="./imagenes/iconoflor.png" type="image/x-icon">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./estilo/style.css">
  </head>
  <body class="bg-success">
    <div id="wraper">
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
                                      aria-current="page" href="registro.jsp">Registro</a></li>
              <li class="nav-item"><a class="nav-link active" href="tuJardin.jsp">Mi
                  Jardin</a></li>
              <li class="nav-item"><a class="nav-link" href="buscador.jsp">Buscar
                  Plantas</a></li>        
            </ul>
          </div>
        </div> 
      </nav>
      
      <!-- Card de plantas --> 
      <div class="row m-3">
        <div class="col">
          <div class="card">
            <div class="card-header">familia planta</div>
            <div class="card-body">
              <h5 class="card-title">nombre planta</h5>
              <img src="imagenes/foto1.jpg" class="card-img-top" alt="...">
              <p class="card-text">Nombre cientifico</p>
            </div>
            <div class="card-footer">
              <ul class="list-group list-group-flush">
                <li class="list-group-item">Plantada: </li>
                <li class="list-group-item">Riego: </li>
                <li class="list-group-item">Abono: </li>
                <li class="list-group-item"><a href="#" class="card-link">Otros cuidados:</a></li>
              </ul>
            </div>          
          </div>
        </div>
        <div class="col">
                   <div class="card">
            <div class="card-header">familia planta</div>
            <div class="card-body">
              <h5 class="card-title">nombre planta</h5>
              <img src="imagenes/foto1.jpg" class="card-img-top" alt="...">
              <p class="card-text">Nombre cientifico</p>
            </div>
            <div class="card-footer">
              <ul class="list-group list-group-flush">
                <li class="list-group-item">Plantada: </li>
                <li class="list-group-item">Riego: </li>
                <li class="list-group-item">Abono: </li>
                <li class="list-group-item"><a href="#" class="card-link">Otros cuidados:</a></li>
              </ul>
            </div>           
          </div>
        </div>
        <div class="col">
                   <div class="card">
            <div class="card-header">familia planta</div>
            <div class="card-body">
              <h5 class="card-title">nombre planta</h5>
              <img src="imagenes/foto1.jpg" class="card-img-top" alt="...">
              <p class="card-text">Nombre cientifico</p>
            </div>
            <div class="card-footer">
              <ul class="list-group list-group-flush">
                <li class="list-group-item">Plantada: </li>
                <li class="list-group-item">Riego: </li>
                <li class="list-group-item">Abono: </li>
                <li class="list-group-item"><a href="#" class="card-link">Otros cuidados:</a></li>
              </ul>
            </div>            
          </div>
        </div>
        <div class="col">
                   <div class="card">
            <div class="card-header">familia planta</div>
            <div class="card-body">
              <h5 class="card-title">nombre planta</h5>
              <img src="imagenes/foto1.jpg" class="card-img-top" alt="...">
              <p class="card-text">Nombre cientifico</p>
            </div>
            <div class="card-footer">
              <ul class="list-group list-group-flush">
                <li class="list-group-item">Plantada: </li>
                <li class="list-group-item">Riego: </li>
                <li class="list-group-item">Abono: </li>
                <li class="list-group-item"><a href="#" class="card-link">Otros cuidados:</a></li>
              </ul>
            </div>             
          </div>
        </div>
        <div class="col">
                   <div class="card">
            <div class="card-header">familia planta</div>
            <div class="card-body">
              <h5 class="card-title">nombre planta</h5>
              <img src="imagenes/foto1.jpg" class="card-img-top" alt="...">
              <p class="card-text">Nombre cientifico</p>
            </div>
            <div class="card-footer">
              <ul class="list-group list-group-flush">
                <li class="list-group-item">Plantada: </li>
                <li class="list-group-item">Riego: </li>
                <li class="list-group-item">Abono: </li>
                <li class="list-group-item"><a href="#" class="card-link">Otros cuidados:</a></li>
              </ul>
            </div>          
          </div>
        </div>
        <div class="col">
                   <div class="card">
            <div class="card-header">familia planta</div>
            <div class="card-body">
              <h5 class="card-title">nombre planta</h5>
              <img src="imagenes/foto1.jpg" class="card-img-top" alt="...">
              <p class="card-text">Nombre cientifico</p>
            </div>
            <div class="card-footer">
              <ul class="list-group list-group-flush">
                <li class="list-group-item">Plantada: </li>
                <li class="list-group-item">Riego: </li>
                <li class="list-group-item">Abono: </li>
                <li class="list-group-item"><a href="#" class="card-link">Otros cuidados:</a></li>
              </ul>
            </div>            
          </div>
        </div>
        
      </div><!-- fin row -->
    </div><!-- fin wraper -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
    <script src="./js/javascript.js"></script>
  </body>
</html>