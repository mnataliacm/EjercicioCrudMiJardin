<%--jardin.jsp--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : Tu Jardin
    Created on : 3 feb 2022, 1:27:30
    Author     : Natalia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Mi Jardin - Inicio</title>
        <link rel="shortcut icon" href="./imagenes/favicon.ico" type="image/x-icon">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="./estilo/style.css">
    </head>
<body class="bg-success">
  <div id="wraper">
<nav class="navbar navbar-expand-md navbar-light bg-warning sticky-top ">
        <div class="container-fluid fs-5">
            <a class="navbar-brand" href="/MiJardin/index.html"><i class="fa fa-tree" aria-hidden="true"></i></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="index.html">Mi Jardin</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Buscar Plantas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Acceder</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="registro.jsp">Registro</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        lelele
        
        
    </div>







</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
    <script src="./js/js.js"></script>
</body>
</html>