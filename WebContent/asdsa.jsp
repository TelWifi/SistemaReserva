<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>La 12</title>
    <link href="/SistemaReservas/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/SistemaReservas/bootstrap/css/style.css" rel="stylesheet">
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
	        <a class="navbar-brand" href="index.html">
	          <img alt="LogoLa12" src="">
	        </a>
	      </div>
	      <div class="collapse navbar-collapse" id="navbar1">
	        <ul class="nav navbar-nav">
	          <li class="active"><a href="index.html">Home <span class="sr-only">(current)</span></a></li>
	          <li><a href="Sedes/">Sedes</a></li>
	        </ul>
	        <ul class="nav navbar-nav navbar-right">
	        	<li><a href="Usuarios/">Iniciar Sesión</a></li>
	        </ul>
	      </div>
	    </div>
	</nav>
	
	<!-- Alerta exito  -->
	<div  class="container">
		<div class="row">
			<div class="col-xs-10 col-sm-8 col-md-6 no-float center-block">
				<div class="alert alert-success text-center">
					<div class="alert-header">
						 <button type="button" class="close" data-dismiss="alert">&times;</button>
					</div>
					<div class="alert-body">
						Bienvenido
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Alerta error  -->
	<div  class="container">
		<div class="row">
			<div class="col-xs-10 col-sm-8 col-md-6 no-float center-block">
				<div class="alert alert-danger text-center">
					<div class="alert-header">
						 <button type="button" class="close" data-dismiss="alert">&times;</button>
					</div>
					<div class="alert-body">
						sdkasdlks
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<h3 align="center">Canchas Deportivas</h3>
			<h1 align="center">La 12, <small>más que fútbol</small></h1>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6  col-md-4 no-float center-block">
				<a href="Reservas/reservar.html" type="button" class="btn btn-success btn-lg btn-block">
					<span class="glyphicon glyphicon-hand-right"></span>
					Reservar
					<span class="glyphicon glyphicon-hand-left"></span>
				</a>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</p>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</p>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row panel panel-default">
			<h3 align="center">Footer</h3>
		</div>
	</div>
	<script src="/SistemaReservas/bootstrap/js/jquery.min.js"></script>
  <script src="/SistemaReservas/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
