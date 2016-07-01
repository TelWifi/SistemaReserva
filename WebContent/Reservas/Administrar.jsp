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
    <h2>Administraci�n de Reservas - Sede N� 1</h2>
    <ul class="nav nav-tabs">
      <li class="active"><a data-toggle="tab" href="#tab-lista">Lista</a></li>
    </ul>
    <br>
    <div class="tab-content">
      <div id="tab-lista" class="tab-pane fade in active">
        <div class="container">
          <div class="row">
            <div class="col-xs-12 col-sm-offset-6 col-sm-6 col-md-offset-8 col-md-4">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Buscar" aria-label="...">
                  <div class="input-group-btn">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
                    <ul class="dropdown-menu dropdown-menu-right">
                      <li><a href="#">por c�digo</a></li>
                      <li><a href="#">por cliente</a></li>
                      <li><a href="#">por cancha</a></li>
                      <li><a href="#">por fecha</a></li>
                      <li role="separator" class="divider"></li>
                      <li><a href="#">Reservas de hoy</a></li>
                    </ul>
                  </div><!-- /btn-group -->
                </div><!-- /input-group -->
              </div><!-- /.col-lg-6 -->
          </div>
          <div class="row">
            <table class="table table-striped">
            	<thead>
            		<tr>
            			<th>C�d.</th>
                  <th>Cliente</th>
                  <th>Cancha</th>
                  <th>Fecha y H. de Inicio</th>
                  <th>Estado</th>
                  <th>Total</th>
                  <th>Operaci�n</th>
            		</tr>
            	</thead>
            	<tbody>
                <tr>
                  <td>4</td>
                  <td>Nombre del Cliente</td>
                  <td>4</td>
                  <td>31/03/2017 - 13:00</td>
                  <td>En Proceso</td>
                  <td>S/. 40.00</td>
                  <td>
                      <button type="button" class="btn btn-success btn-xs" data-toggle="tooltip" data-placement="bottom" title="Reserva �xitosa">
                        <span class="glyphicon glyphicon-usd"></span>
                      </button>
                      <a href="/SistemaReservas/DetalleReserva/show.html" type="button" class="btn btn-primary btn-xs" data-toggle="tooltip" data-placement="bottom" title="Ver Detalle de Reserva">
                        <span class="glyphicon glyphicon-search"></span>
                      </a>
                      <button type="button" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="bottom" title="Cancelar Reserva">
                        <span class="glyphicon glyphicon-remove"></span>
                      </button>
                  </td>
            		</tr>
            	</tbody>
            </table>

          </div>
        </div>
      </div>
    </div>
  </div>
  <%= HelperVistas.getScripts() %>
</body>
</html>