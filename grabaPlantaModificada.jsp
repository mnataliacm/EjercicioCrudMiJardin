<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%-- 
    Document   : grabaPlantaModificada
    Author     : Natalia Castillo Muñoz
--%>
   
     <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mijardin","root", "");
      Statement s = conexion.createStatement();
      request.setCharacterEncoding("UTF-8");
      
      String actualizacion = "UPDATE planta SET "                         
                           + "nombre='" + request.getParameter("nombre")
                           + "', cientifico='" + request.getParameter("cientifico")
                           + "', info='" + request.getParameter("info")
                           + "', familia=" + Integer.valueOf(request.getParameter("familia"))
                           + " WHERE codpla=" + Integer.valueOf(request.getParameter("codpla"));
      
      Boolean confirma = s.execute(actualizacion);
      
      if (confirma.booleanValue()) {
        response.sendRedirect("error.jsp");
      } else {
        response.sendRedirect("ok.jsp");
      }
      
      conexion.close();
    %>
    
  