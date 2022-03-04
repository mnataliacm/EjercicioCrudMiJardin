<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Author     : Natalia Castillo
--%>
<nav class="navbar navbar-expand-md navbar-light bg-warning sticky-top justify-content-between">
  <div class="container-fluid fs-5">
    <a class="navbar-brand" href="#"><i
        class="bi bi-flower1" aria-hidden="true"></i></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
               
        <%
         if (session.getAttribute("usuario") == null) {
        %>
        <li class="nav-item">
          <a class="nav-link active" href="index.jsp">Inicio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="formularioRegistro.jsp">Registrar</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="buscador.jsp">Lista de Plantas</a>
        </li>
        <%
          } else {
        %>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="buscadorColab.jsp">Plantas</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" aria-current="page" href="familias.jsp">Familias</a>
        </li>
        <%   
          }
        %>
      </ul>
      <form class="form-inline">

        <%
          if (session.getAttribute("usuario") == null) {
        %>
        <a class="btn-lg btn-primary p-2" href="formularioLogin.jsp">Iniciar sesión</a> 
        <%
          } else {
        %>
        Bienvenido, <a><%= session.getAttribute("usuario") %></a>
        (<a href="logout.jsp">Salir</a>)
        <%
                  
        }
        %>

      </form>       
    </div>

  </div> 
</nav>
