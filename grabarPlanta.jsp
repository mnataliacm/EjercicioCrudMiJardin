<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%-- 
    Document   : grabarPlanta
    Created on : 20 feb 2022, 20:53:01
    Author     : Natalia Castillo Muñoz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Añadir planta</title>
     <link rel="shortcut icon" href="./imagenes/iconoflor.png" type="image/x-icon">
     <!-- CSS bootstrap 
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous">
    -->
    <!-- ICONOS font-awesome 
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    -->
    <!-- CSS materialize -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
   
    <!-- ICONOS materialize -->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   
    <!-- CSS mio -->
    <link rel="stylesheet" href="./estilo/style.css">
  </head>
  <body class="green">
    
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mijardin?useSSL=false&allowPublicKeyRetrieval=true","root", "");
      Statement s = conexion.createStatement();
      request.setCharacterEncoding("UTF-8");
      
      // Comprueba la existencia del número de socio introducido
      String consultaNumPlanta = "SELECT * FROM planta WHERE plantaID="
                                + Integer.valueOf(request.getParameter("plantaID"));      
      
      ResultSet numeroDePlanta = s.executeQuery (consultaNumPlanta);
      numeroDePlanta.last();
      
      String respuesta;
      
      
      if (numeroDePlanta.getRow() != 0) {
        //out.println("Lo siento, no se ha podido dar de alta, ya existe una planta con el número "
                    //+ request.getParameter("plantaID") + ".");
         respuesta = "Lo siento, no se ha podido dar de alta, ya existe una planta con el número"
                    + request.getParameter("plantaID");
      } else {
        String insercion = "INSERT INTO planta VALUES (" + Integer.valueOf(request.getParameter("plantaID"))
                           + ", '" + request.getParameter("familia")
                           + "', '" + request.getParameter("nombre")
                           + "', '" + request.getParameter("cientifico")
                           + "')";
        s.execute(insercion);
        //out.println("La planta se ha añadido correctamente.");
        respuesta = "La planta se ha añadido correctamente.";
      }
      conexion.close();
    %>
    <br>
    <div class="container center">
      <div class="container"
      <div class="row">
      <div class="col s12 m8">  
    <div class="card horizontal">
      <div class="card-stacked">
        <div class="card-content">
          <p><%=respuesta %></p>
        </div>
        <div class="card-action">
          <a href="buscador.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span> Volver</a>
        </div>
      </div>
    </div>
  </div>
      </div>
      </div>
  </div>
    
       
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
