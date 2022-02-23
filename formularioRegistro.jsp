<%--registro.jsp--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : registro
    Author     : Natalia Castillo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Mi Jardin - Registro de usuarios</title>
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
    <!-- ICONOS materialize-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">    
    <!-- CSS mio -->
    <link rel="stylesheet" href="./estilo/style.css">
  </head>
  <body>
    <div id="wraper" class="container-block h-100 bg-success">

      <!-- barra de navegación -->
      <nav class="navbar navbar-expand-md navbar-light bg-warning sticky-top ">
        <div class="container fs-5">
          <a class="navbar-brand" href="index.jsp"><i
              class="fa fa-tree" aria-hidden="true"></i></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                  data-bs-target="#navbarSupportedContent"
                  aria-controls="navbarSupportedContent" aria-expanded="false"
                  aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-lg-0">
              <li class="nav-item"><a class="nav-link" href="index.jsp">Inicio</a></li>

              <li class="nav-item"><a class="nav-link" href="formularioAcceso.jsp">Acceder</a>
              </li>
              <li class="nav-item"><a class="nav-link active"
                                      aria-current="page" href="formularioRegistro.jsp">Registro</a></li>
              <li class="nav-item"><a class="nav-link" href="tuJardin.jsp">Mi
                  Jardin</a></li>
              <li class="nav-item"><a class="nav-link" href="buscador.jsp">Buscar
                  Plantas</a></li>        
            </ul>
          </div>
        </div> 
      </nav>

      <!-- formulario registro -->
      <div id="registro" class="container-flex align-items-center mt-5">
        <div
          class="row  align-items-center justify-content-center bg-success mt-5">
          <div class="col-xs-12 col-md-8 col-lg-6">
            <!-- comienza formulario de registro -->	
            <form method="post" action="registrarUsuario.jsp" class="row g-4 border border-primary p-3 bg-verde">		
              <div class="col-md-5">
                <label for="usuarios" class="form-label">Usuario</label> 
                <input type="text" name="usuarios" class="form-control" id="usuarios" required>
              </div>
              <div class="col-md-1"></div>
              <div class="col-md-5">
                <label for="password" class="form-label">Contraseña</label> 
                <input type="password" name="password" class="form-control" id="password" required>
                <div id="identificadorlHelp" class="form-text">Entre 4 y 10 caracteres [(a-z)(0-9)]</div>
              </div>
              <div class="col-md-4">
                <label for="nombre" class="form-label">Nombre</label> 
                <input type="text" name="nombre" class="form-control" id="nombre" required>
              </div>
              <div class="col-md-8">
                <label for="apellidos" class="form-label">Apellidos</label> 
                <input type="text" name="apellidos" class="form-control" id="apellidos" required>
              </div>
              <div class="col-md-3">
                <label for="via" class="form-label">Tipo de via</label> 
                <select id="via" name="via" class="form-select">
                  <option selected>Elige...</option>
                  <option>Avenida</option>
                  <option>Bulevard</option>
                  <option>Calle</option>
                  <option>Carretera</option>
                  <option>Pasaje</option>
                  <option>Paseo</option>
                </select>
              </div>
              <div class="col-md-2">
                <label for="numero" class="form-label">Numero</label> 
                <input type="number" name="numero" class="form-control" id="numero">
              </div>
              <div class="col-md-1"></div>
              <div class="col-md-6">
                <label for="movil" class="form-label">Móvil</label> 
                <input type="text" name="movil" class="form-control text-center" id="movil" placeholder="123-456-789">
              </div>
              <div class="col-12">
                <label for="direccion" class="form-label">Direccion</label> 
                <input type="text" name="direccion" class="form-control" id="direccion"
                       placeholder="Nombre de la via">
              </div>
              <div class="col-md-6">
                <label for="ciudad" class="form-label">Ciudad</label> 
                <input type="text" name="ciudad" class="form-control" id="ciudad" required>
              </div>
              <div class="col-md-4">
                <label for="inputState" class="form-label">Pais</label > 
                <select name="pais" class="form-select" required>
                  <option selected>Elige...</option>
                  <!-- añadir bucle que saque opciones o quitar -->
                  <option>...</option>
                </select>
              </div>
              <div class="col-md-2">
                <label for="cp" class="form-label">Código Postal</label> <input
                  type="number" name="cp" class="form-control" id="cp" aria-describedby="cpHelp" required min="1001" max="52999">
              </div>
              <div class="col-md-8">
                <label for="email" class="form-label">Email</label> <input
                  type="email" name="email" class="form-control" id="email" placeholder="nombre@correo.com" required>
                <div id="identificadorlHelp" class="form-text">Nunca compartiremos tu email, ni ningún otro dato con nadie.</div>
              </div>
              <div class="col-md-4">
                <label for="jardin" class="form-label">Nombre de tu Jardin</label> 
                <input type="text" name="jardin" class="form-control" id="jardin" required>
              </div>
              <div class="col-12">
                <button type="submit" value="Aceptar" class="btn btn-primary">Registrar</button>
              </div>
            </form>
          </div>						<!-- cierre col ppal-->
        </div>				<!-- cierre row -->
      </div>
    </div>		<!-- cierre wraper -->

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