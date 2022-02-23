<%--registrarUsuario.jsp--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : registrarUsuario
    Author     : Natalia Castillo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Realizar registro</title>
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
    <%-- enlace con la base de datos --%>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mijardin","root", "");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
      
      // Comprueba la existencia del número de socio introducido
      String nUsuarios = "SELECT usuarios FROM usuarios WHERE usuarios='"
                                + request.getParameter("usuarios") + "'";      
      
      ResultSet usuario = s.executeQuery (nUsuarios);
      usuario.last();
      
      String icono;
    String mensaje;
    String enlace;
    String col;
    
      //si ya existe el usuario
      if (usuario.getRow() != 0) {
        icono = "<i class=\"material-icons red-text large\">close</i>";
        mensaje = "<p>Lo siento, no se ha podido dar de alta, ya existe el usuario: </h5>" + "<h5>"
                + request.getParameter("usuarios") + "</p>" ;
        enlace = "formularioRegistro.jsp";
        col = "btn-large waves-effect waves-light center red";
                     
      //si todo OK introduzco datos
      } else {     
      String insercion = "INSERT INTO usuarios VALUES ('"
      + request.getParameter("usuarios")
      + "', '" + request.getParameter("password")
      + "', '" + request.getParameter("nombre")
      + "', '" + request.getParameter("apellidos")
      + "', '" + request.getParameter("via") 
      + "', " + Integer.valueOf(request.getParameter("numero"))
      + ", '" + request.getParameter("movil")
      + "', '" + request.getParameter("direccion")
      + "', '" + request.getParameter("ciudad")
      + "', '" + request.getParameter("pais")
      + "', " + Integer.valueOf(request.getParameter("cp"))
      + ", '" + request.getParameter("email")
      + "', '" + request.getParameter("jardin")
      + "', 'U')";
      
      s.execute(insercion);
      
      icono = "<i class=\"material-icons green-text large\">check</i>";
      mensaje = "<p>Usuario registrado con exito.</p>";
      enlace = "buscador.jsp";
      col = "btn-large waves-effect waves-light center blue";
      
      }
       
      conexion.close();
    %>
    
    <!-- ventana confirmación -->
    <div id="wraper" class="container-flex vh-100 green pt-5"> 
      <div class="container w-25">
        <div class="section">        
        </div>
        <div class="section ">

          <div class="section ">
            <div class="row">
              <div class="col m6 card-panel  accent-2  center z-depth-5">
                <h5 class="center">Registrar Usuario</h5>          
                <%=icono %>
                <%=mensaje %>
                <p class="center ">
                  <a href="<%=enlace %>" class="<%=col %>">
                    Aceptar
                  </a>
                </p>
                <br>
              </div>
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
    <!-- JS materialize -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>    
    <!-- JS mio -->
    <script src="./js/javascript.js"></script>  
  </body>
</html>
