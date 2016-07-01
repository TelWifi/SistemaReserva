<%@page import="modelo.HelperVistas"%>
<%@page import="com.mysql.jdbc.SocketMetadata.Helper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>La 12</title>
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
        <ul class="nav navbar-nav">
          <li><a href="/SistemaReservas/"> Home <span class="sr-only">(current)</span></a></li>
          <li><a href="/SistemaReservas/Sedes/">Sedes</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="/SistemaReservas/Usuarios/">Iniciar Sesión</a></li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container">
    <h2>La 12, <small>más que fútbol</small></h2>
    <ul class="nav nav-tabs">
      <li class="active"><a data-toggle="tab" href="#tab-iniciar">Iniciar Sesión</a></li>
      <li><a data-toggle="tab" href="#tab-registrarse">Registrarse</a></li>
    </ul>
    <br>
    <div class="tab-content">
      <div id="tab-iniciar" class="tab-pane fade in active">
      <% 
      String msg_error = (String)request.getAttribute("msg_error");
      if(msg_error != null){
    	  out.println(HelperVistas.alerta(msg_error));
      }
      %>
        <div class="container">
          <div class="row">
            <h1 align="center">Iniciar Sesión</h1>
          </div>
          <div class="row">
            <div class="col-xs-10 col-sm-6 col-md-4 no-float center-block">
              <form method="post" action="Controlador_Login" class='form-horizontal'>
                <div class="form-group">
                  <label for="">Email:</label>
                  <input name="email" type="email" class="form-control">
                </div>
                <div class="form-group">
                  <label for="">Contraseña:</label>
                  <input name="password" type="password" class="form-control">
                </div>
                <div class='form-group'>
                  <button type='submit' class='btn btn-primary '>Ingresar</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div id="tab-registrarse" class="tab-pane fade">
        <div class="container">
          <div class="row">
            <h1 align="center">Registrarse</h1>
          </div>
          <div class="row">
            <div class="col-xs-10 col-sm-6 col-md-4 no-float center-block">
              <form method="post" action="registrar_usuario"  class='form-horizontal'>
                <div class="form-group">
                  <label for="">Nombres:</label>
                  <input name="nombres" type="text" class="form-control">
                </div>
                <div class="form-group">
                  <label for="">Apellidos:</label>
                  <input name="apellidos" type="text" class="form-control">
                </div>
                <div class="form-group">
                  <div class="row">
                    <div class="col-xs-6">
                      <label for="">DNI:</label>
                      <input name="dni" type="text" class="form-control">
                    </div>
                    <div class="col-xs-6">
                      <label for="">Celular:</label>
                      <input name="celular" type="text" class="form-control">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label for="">Email:</label>
                  <input name="email" type="email" class="form-control">
                </div>
                <div class="form-group">
                  <label for="">Contraseña:</label>
                  <input name="password" type="password" class="form-control">
                </div>
                <div class='form-group'>
                  <button type='submit' class='btn btn-primary '>Registrarse</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%= HelperVistas.getScripts() %>
</body>
</html>