<%@page import="modelo.Usuario"%>
<%@page import="modelo.HelperVistas"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<%= HelperVistas.getLinkToCss() %>
</head>
<body>
	<nav class="navbar navbar-inverse">
	    <div class="container-fluid">
	      <div class="navbar-header">
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar1" aria-expanded="false">
	          <span class="sr-only">Toggle navigation</span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	        </button>
	        <a class="navbar-brand" href="/SistemaReservas/">
	          <img alt="LogoLa12" src="">
	        </a>
	      </div>
	      <div class="collapse navbar-collapse" id="navbar1">
	        <% Usuario usuario = (Usuario)request.getAttribute("usuario");
	        	out.println(HelperVistas.getNavbar(usuario));
	    	%>
	      </div>
	    </div>
	</nav>

	<div class="container">
	  <div class="row">
	    	<h1 align="center">Sedes</h1>
	  </div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading text-medium text-center">
						Nombre de Sede
						<a href="#" class="thumbnail">
				      <img src="/SistemaReservas/Imagenes/sede.jpg" alt="Sede">
				    </a>
					</div>
					<div class="panel-body">
							<label>Ubicacion:</label> distrito - provincia - departamento <br>
							<label>Dirección:</label> direccion direccion direccion direccion <br>
							<label>Número de Canchas:</label> 10 <br>
							<div class="div_mitad">
								<label>Referencia:</label>
								referencia referencia referencia referencia referencia
							</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading text-medium text-center">
						Nombre de Sede
						<a href="#" class="thumbnail">
				      <img src="/SistemaReservas/Imagenes/sede.jpg" alt="Sede">
				    </a>
					</div>
					<div class="panel-body">
							<label>Ubicacion:</label> distrito - provincia - departamento <br>
							<label>Dirección:</label> direccion direccion direccion direccion <br>
							<label>Número de Canchas:</label> 10 <br>
							<div class="div_mitad">
								
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row panel panel-default">
			<h3 align="center">Footer</h3>
		</div>
	</div>
	
	<%= HelperVistas.getScripts() %>
	
</body>
</html>