<%--comprobarAcceso.jsp--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : comprobarAcceso
    Author     : Natalia Castillo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Comprobar Acceso</title>
         <!-- CSS bootstrap 
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous">
    -->
    <!-- ICONOS font-awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- CSS materialize -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
    
    <!-- ICONOS materialize-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- CSS mio -->
    <link rel="stylesheet" href="./estilo/style.css">
  </head>
  <body>
          <%-- conectar con la base de datos --%>
      <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mijardin","root", "");
        Statement s = conexion.createStatement();
        Statement z = conexion.createStatement();
        
        request.setCharacterEncoding("UTF-8");
        
        String icono;
        String mensaje;
        String enlace = "index.jsp";


        //comprueba la existencia del usuario
        String consulta = "SELECT COUNT(*) FROM usuarios WHERE usuarios='"
                        + request.getParameter("usuarios")
                        + "' AND password='"
                        + request.getParameter("password")
                        + "'";
        
        ResultSet coincidencias = s.executeQuery(consulta);
        
        coincidencias.next();
        
        if (coincidencias.getInt(1) == 0) {
          icono = "<i class=\"material-icons red-text large\">lock</i>";
          mensaje = "<p>Lo siento, datos incorrectos. Acceso denegado.</p>" ;
          enlace = "index.jsp";
        } else {
          icono = "<i class=\"material-icons teal-text large\">lock_open</i>";
          mensaje = "<p>Acceso permitido a la aplicación.</p>";
        }

        //comprueba si es admin
        String consultaRango = "SELECT rango FROM usuarios WHERE usuarios='"
                              + request.getParameter("usuarios")
                              + "'";

        ResultSet rangoUsuario = z.executeQuery(consultaRango);
        if (rangoUsuario.equals("U")) {
          enlace = "index.jsp";
        } else if (rangoUsuario.equals("C")) {
          enlace = "buscador2.jsp";
        } else if (rangoUsuario.equals("C")) {
          enlace = "usuarios.jsp";
        }
        
        
        
      %>     
      <!-- ventana confirmación -->
      <div id="wraper" class="container-flex green pt-5"> 
        <div class="container text-center">
       <div class="section">        
          </div>
         <div class="section ">
      <div class="row">
        <div class="col m6 card-panel accent-2 center z-depth-5">
          <h5 class="center">Control de acceso</h5>          
          <%=icono %>
          <%=mensaje %>
          <p class="center ">
            <a href="<%=enlace %>" class="btn-large waves-effect waves-light center">
              Aceptar
            </a>
          </p>
          <br>
        </div>
      </div>
    </div>
</div>
        

      </div><!-- cierre wraper -->
                            
       <!-- JS bootstrap
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>  
     -->
    <!-- JS materialize  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
   
    <!-- JS mio -->
    <script src="./js/javascript.js"></script>  
  </body>
</html>
