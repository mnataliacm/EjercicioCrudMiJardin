<%--login.jsp--%>
<%-- 
    Document   : login
    Created on : 2 feb 2022, 21:38:46
    Author     : Natalia Castillo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Mi Jardin - Acceso</title>
        <link rel="shortcut icon" href="./imagenes/favicon.ico" type="image/x-icon">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="./estilo/style.css">
    </head>
    <body class="bg-success">
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
                        <a class="nav-link active"  aria-current="page" href="login.jsp">Acceder</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="registro.jsp">Registro</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
        <!-- ventana de logging -->
        <div class="container-fluid">
            <div class="m-0 vh-100 row justify-content-center align-items-center">   
            <div class="col-9 text-center p-3">
            <div class="card bg-verde">
                <div class="card-header fs-1 fw-bold">
                    Entrar a Mi jardin
                </div>
                <div class="card-body"> 
                    <p class="card-text">Registrate y guarda tus plantas.</p>
                    <div class="row mb-3">
                        <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputEmail3">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                        <div class="col-sm-3">
                            <input type="password" class="form-control" id="inputPassword3">
                        </div>
                    </div>
                    <a class="btn-lg btn-warning" href="index.html">Entrar</a>                
                </div> 
            </div>
            </div>
            </div>
        </div>
    </body>
</html>

<!-- comprobacion del usuario si no esta registrado mensaje de error
si esta registrado accede a "Mi jardin"
si es admin entrara a la ventana de administracion. -->

