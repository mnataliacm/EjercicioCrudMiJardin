<%--index.jsp--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : index
    Created on : 2 feb 2022, 21:38:46
    Author     : Natalia Castillo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Mi Jardin - Consulta</title>
    <link rel="shortcut icon" href="./imagenes/favicon.ico" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./estilo/style.css">
  </head>
  <body>
    <nav class="navbar navbar-expand-md navbar-light bg-warning sticky-top ">
        <div class="container-fluid fs-5">
            <a class="navbar-brand" href="/MiJardin/index.html"><i class="fa fa-tree" aria-hidden="true"></i></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Mi Jardin</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="buscador.jsp">Buscar Plantas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Acceder</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" ref="registro.jsp">Registro</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-flex bg-success h-100 position-relative">
      <div class="position-absolute top-50 start-50 translate-middle">
      <div class="container bg-verde p-5">
        <form class="row g-3">
          <div class="col-md-6">
            <label for="inputEmail4" class="form-label">Email</label>
            <input type="email" class="form-control" id="inputEmail4">
          </div>
          <div class="col-md-6">
            <label for="inputPassword4" class="form-label">Password</label>
            <input type="password" class="form-control" id="inputPassword4">
          </div>
<div class="col-md-6">
            <label for="inputEmail4" class="form-label">Movil</label>
            <input type="email" class="form-control" id="inputEmail4">
          </div>
          <div class="col-md-6">
            <label for="inputCity" class="form-label">Ciudad</label>
            <input type="text" class="form-control" id="inputCity">
          </div>
          <div class="col-md-6">
            <label for="inputState" class="form-label">Pais</label>
            <select id="inputState" class="form-select">
              <option selected>Choose...</option>
              <option>...</option>
            </select>
          </div>
          <div class="col-12 text-center">
            <a class="btn-lg btn-warning m-4" href="index.html">Registrar</a>
          </div>
        </form>
      </div>
    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
    <script src="./js/js.js"></script>
  </body>
</html>