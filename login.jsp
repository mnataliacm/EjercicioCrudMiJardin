<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Author     : Natalia Castillo
--%>
<%
  Class.forName("com.mysql.jdbc.Driver");
  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mijardin","root", "");
  Statement s = conexion.createStatement();
  
  request.setCharacterEncoding("UTF-8");
  
  String usuario = request.getParameter("usuario");
  String password = request.getParameter("password");
  
  ResultSet consultar = s.executeQuery("(SELECT * FROM usuarios WHERE usuario='" + usuario + "')");
  
  consultar.next();
  
  String user = consultar.getString("usuario");
  String pass = consultar.getString("password");
  int codigo = consultar.getInt("codusu");
  
 if (usuario.equals(user) && (password.equals(pass))) {
  if ((usuario.equals("Admin")) && password.equals("Admin")) {
    session.setAttribute("usuario", usuario);
    response.sendRedirect("usuarios.jsp");
  } else if (usuario.equals("Colaborador") && (password.equals("123456"))) {
    session.setAttribute("usuario", usuario);
    response.sendRedirect("buscadorColab.jsp");
  } else {
    session.setAttribute("usuario", usuario);
    session.setAttribute("codigo", codigo);
    response.sendRedirect("buscador.jsp");
  }
    
} else {
    session.setAttribute("error", "Usuario o contrase�a incorrecto");
    response.sendRedirect("formularioLogin.jsp");
  }
%>


