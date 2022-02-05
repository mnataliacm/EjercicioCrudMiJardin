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
                    <a class="btn btn-primary" href="index.html">Sign in a home</a>                
                </div> 
            </div>
            </div>
            </div>
        </div>
    </body>
</html>

<!-- comprobación del usuario si no está registrado mensaje de error
si está registrado accede a "Mi jardin"
si es admin entrará a la ventana de administración. -->

