<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Author     : Natalia Castillo
--%>

<nav class="navbar navbar-expand-md navbar-light bg-naranja sticky-top justify-content-between">
  <div class="container-fluid fs-5">
    <a class="navbar-brand" href="index.jsp"><i
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
          <a class="nav-link active" href="index.jsp">Inicio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="buscador.jsp">Lista de Plantas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="tuJardin.jsp">Mi Jardin</a>
        </li>
        <%   
          }
        %>
      </ul>
      <form class="d-flex" action="buscar.jsp">
        <input class="form-control me-2" type="search" name="buscar" placeholder="nombre de planta" aria-label="search" required>
        <button class="btn btn-outline-success" type="submit" name>Buscar</button>
      </form>
      <pre>                    </pre>
      <form class="form-inline">
        <%
          if (session.getAttribute("usuario") == null) {
        %>
        <a class="btn-lg btn-turquesa text-white p-2" href="formularioLogin.jsp">Iniciar sesión</a> 
        <%
          } else {
        %>
        <pre>Bienvenid@, <strong><%=session.getAttribute("usuario") %></strong>.   <a href="perfil.jsp" class="text-success">Tu perfil</a> (<a href="logout.jsp">Salir</a>)</pre>      
        <%
                  
        }
        %>
      </form>       
    </div>
  </div> 
</nav>