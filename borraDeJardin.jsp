<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Author     : Natalia Castillo Muñoz
--%>

    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mijardin","root", "");
      Statement b = conexion.createStatement();
      
      Boolean confirma = b.execute ("DELETE FROM jardin WHERE codusu = " + session.getAttribute("codigo") + " AND codpla = " + request.getParameter("codpla"));
      
      if (confirma.booleanValue()) {
        response.sendRedirect("error.jsp");
      } else {
        response.sendRedirect("ok.jsp");
        
      } 
      
      
      b.close();
    %>
