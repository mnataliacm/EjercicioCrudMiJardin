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
 request.setCharacterEncoding("UTF-8");
      
 String actualizacion = "UPDATE usuarios SET "
                      + "usuario = '" + request.getParameter("usuario")
                      + "', password = '" + request.getParameter("password")
                      + "', email = '" + request.getParameter("email")
                      + "' WHERE codusu = " + Integer.valueOf(request.getParameter("codusu"));
      

 Boolean confirma = s.execute(actualizacion); 
 
 if (confirma.booleanValue()) {
   response.sendRedirect("error.jsp");
 } else {
   response.sendRedirect("ok.jsp");
 }
 s.close();
%>
