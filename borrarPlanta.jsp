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
      Statement s = conexion.createStatement();
      Boolean confirma = s.execute ("DELETE FROM planta WHERE codpla=" + request.getParameter("codpla"));
      
      if (confirma.booleanValue()) {
        response.sendRedirect("error.jsp");
      } else {
        response.sendRedirect("ok.jsp");
      } 
      
      
      s.close();
    %>
