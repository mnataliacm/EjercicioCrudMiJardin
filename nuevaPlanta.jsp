<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Author     : Natalia Castillo
--%>
 
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mijardin?useSSL=false&allowPublicKeyRetrieval=true","root", "");
      Statement s = conexion.createStatement();
      request.setCharacterEncoding("UTF-8");
      
      // Comprueba la existencia del número de planta introducido
      String consultaNumPlanta = "SELECT codpla, nombre FROM planta WHERE codpla = "
                                + Integer.valueOf(request.getParameter("codpla"));      
      
      ResultSet numeroDePlanta = s.executeQuery (consultaNumPlanta);
      numeroDePlanta.last();
     
      if (numeroDePlanta.getRow() != 0) {
        session.setAttribute("error", "Esa planta ya existe.");
        response.sendRedirect("buscadorColab.jsp");
        
      } else {
        String insercion = "INSERT INTO planta VALUES (" 
                           + Integer.valueOf(request.getParameter("codpla"))
                           + ", '" + request.getParameter("nombre")
                           + "', '" + request.getParameter("cientifico")
                           + "', '" + request.getParameter("familia")
                           + "')";
        s.execute(insercion);
        out.println("Planta añadida correctamente.");
        response.sendRedirect("buscadorColab.jsp");
        
      }
      conexion.close();
    %>
    