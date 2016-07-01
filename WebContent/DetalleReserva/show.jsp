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
      <h2 align="center">Reserva Nº: 1212</h2>
    </div>
    <div id="div_canchas" class="row">
      <div class="col-xs-12">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">Cancha Nº 1</h3>
          </div>
          <div class="panel-body">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Hora Inicio</th>
                  <th>Hora Fin</th>
                  <th>Subtotal</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>10:00am</td>
                  <td>11:00am</td>
                  <td>S/. 20.00</td>
                </tr>
                <tr>
                  <td>01:00pm</td>
                  <td>02:00pm</td>
                  <td>S/. 25.00</td>
                </tr>
              </tbody>
            </table>
            <label>Total: S/. 45.00</label><br>
            <button type="button" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="bottom" title="Reserva éxitosa">
              <span class="glyphicon glyphicon-usd"></span>
            </button>
            <button type="button" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="bottom" title="Cancelar Reserva">
              <span class="glyphicon glyphicon-remove"></span>
            </button>
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