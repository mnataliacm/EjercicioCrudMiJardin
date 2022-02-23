<%--buscador.jsp--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : buscador
    Author     : Natalia Castillo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Mi Jardin - Base de datos</title>
<link rel="shortcut icon" href="./imagenes/iconoflor.png" type="image/x-icon">
<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">
<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./estilo/style.css">
</head>
<body>
		<div id="wraper">
				<!-- barra de navegación -->
				<nav class="navbar navbar-expand-md navbar-light bg-warning sticky-top ">
						<div class="container-fluid fs-5">
								<a class="navbar-brand" href="index.jsp"><i
										class="fa fa-tree" aria-hidden="true"></i></a>
								<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
										data-bs-target="#navbarSupportedContent"
										aria-controls="navbarSupportedContent" aria-expanded="false"
										aria-label="Toggle navigation">
										<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="navbarSupportedContent">
										<ul class="navbar-nav me-auto mb-2 mb-lg-0">
                      <li class="nav-item"><a class="nav-link" href="index.jsp">Inicio</a></li>
												
												<li class="nav-item"><a class="nav-link" href="formularioAcceso.jsp">Acceder</a>
												</li>
												<li class="nav-item"><a class="nav-link"
														aria-current="page" href="formularioRegistro.jsp">Registro</a></li>
                        <li class="nav-item"><a class="nav-link" href="tuJardin.jsp">Mi
																Jardin</a></li>
                        <li class="nav-item"><a class="nav-link active" href="buscador.jsp">Buscar
																Plantas</a></li>        
										</ul>
								</div>
						</div> 
				</nav>
          <div class="container bg-light"> 
        <h1 class="text-center">BASE DE DATOS DE PLANTAS</h1>
        <div class="panel panel-default">
          <div class="panel-body">
            <%-- enlace con la base de datos --%>
            <%
              Class.forName("com.mysql.jdbc.Driver");
              Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mijardin?useSSL=false&allowPublicKeyRetrieval=true","root", "");
              Statement s = conexion.createStatement();
              
              ResultSet listado = s.executeQuery("SELECT * FROM planta ORDER BY nombre");
              //ResultSet filas = s.executeQuery("SELECT COUNT(*) FROM planta");
              
            %> 
            <!-- %ResultSet registrado = s.executeQuery(SELECT NOMUSU FROM usuarios WHERE NOMUSU LIKE "");%> -->
            <!-- listado de plantas -->
            <table class="table table-striped">
              <thead>
                <tr>
                  <th scope="col">Familia de Plantas</th>
                  <th scope="col">Nombre de Planta</th>
                </tr>
              </thead>
              <tbody>
                <%
                  while (listado.next()) {
                %>
                <tr>
                  <td><%=listado.getString("nombre")%></td>
                  <td><%=listado.getString("familia")%></td>
                  <!-- Muestra checks si esta registrado -->
                  <%--if (registrado) {
                    for (int i = 0; i < filas; i++) {%>
                      <td><%%></td>
                    <%}
                  }--%>

                </tr>
                <%
                //out.println(listado.getString("id") + " " + listado.getString("nombre") + " " + listado.getString("email") + listado.getString("pais") + "<br>");
              }         
              conexion.close();
                %>
                <%--<li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Dropdown
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </li>--%>





              </tbody>
            </table>
          </div>
        </div>         
      </div>
    </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
        <script src="./js/javascript.js"></script>
    </body>
</html>