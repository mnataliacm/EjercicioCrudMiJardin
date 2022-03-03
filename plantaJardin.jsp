<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Author     : Natalia Castillo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  Class.forName("com.mysql.jdbc.Driver");
  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mijardin","root", "");
  Statement s = conexion.createStatement();
  Statement n = conexion.createStatement();
  request.setCharacterEncoding("UTF-8");
      
  String nUsu = request.getParameter("codusu");
  String nPla = request.getParameter("codpla");

  //usuario y jardin
  String jardin = "SELECT codusu"
          + " FROM usuarios"
          + " WHERE usuario LIKE ('" + session.getAttribute("usuario") + "')";
      
  ResultSet tujardin = s.executeQuery(jardin);
   
  // Comprueba la existencia del número de planta introducido y consigue datos
  String consultaNumPlanta = " SELECT j.codusu, j.codpla, p.codpla, p.nombre "
          + " FROM jardin j"
          + " INNER JOIN planta p ON j.codpla = p.codpla"
          + " WHERE p.codpla = " 
          + request.getParameter("codpla");           
  ResultSet numeroDePlanta = n.executeQuery (consultaNumPlanta);
  numeroDePlanta.last();
     
  if (numeroDePlanta.getRow() != 0) {
    session.setAttribute("planta", "Ya tienes esa planta en tu jardín");
    response.sendRedirect("error.jsp");         
  } else {   
    String insercion = "INSERT INTO jardin " 
                       + " SELECT codusu, "  + request.getParameter("codpla")
                       + " FROM usuarios" 
                       + " WHERE usuario LIKE('" + session.getAttribute("usuario") + "')";
    n.execute(insercion);
    response.sendRedirect("tuJardin.jsp");
      
  }
  
%>
