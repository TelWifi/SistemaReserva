<%@page import="modelo.Usuario"%>
<%@page import="modelo.HelperVistas"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>La12</title>
	<%=HelperVistas.getLinkToCss() %>
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
    <h2>Operadores</h2>
    <ul class="nav nav-tabs">
      <li class="active"><a data-toggle="tab" href="#tab-nuevo">Nuevo</a></li>
      <li><a data-toggle="tab" href="#tab-lista">Lista</a></li>
    </ul>
    <br>
    <div class="tab-content">
      <div id="tab-nuevo" class="tab-pane fade in active">
        <div class="container">
          <div class="row">
            <div class="col-xs-11 col-sm-8 col-md-6 no-float center-block">
              <form class='form-horizontal '>
              	<% 
			      String msg_error = (String)request.getAttribute("msg_error");
			      if(msg_error != null){
			    	  out.println(HelperVistas.alerta(msg_error));
			      }
			    %>
				<div class="form-group">
                  <label for="">Nombres:</label>
                  <input type="text" class="form-control">
                </div>
				<div class="form-group">
					<div class="row">
						<div class="col-xs-12 col-sm-6">
							<label for="">Apellido Paterno:</label>
		                  	<input type="text" class="form-control">
						</div>
						<div class="col-xs-12 col-sm-6">
							<label for="">Apellido Paterno:</label>
		                  	<input type="text" class="form-control">
						</div>
					</div>
					
                </div>
				<div class="form-group">
					<div class="row">
						<div class="col-xs-6">
							<label for="">DNI:</label>
		                	<input type="text" class="form-control">
						</div>
						<div class="col-xs-6">
							<label for="">Celular</label>
		                	<input type="text" class="form-control">
						</div>
					</div>
                </div>
                <div class='form-group'>
                  <button type='submit' class='btn btn-primary '>Guardar</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div id="tab-lista" class="tab-pane fade">
        <div class="row">
          <div class="col-xs-12 col-sm-offset-6 col-sm-6 col-md-offset-8 col-md-4">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Buscar" aria-label="...">
                <div class="input-group-btn">
                  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
                  <ul class="dropdown-menu dropdown-menu-right">
                    <li><a href="#">por DNI</a></li>
                    <li><a href="#">por Nombre(s)</a></li>
                    <li><a href="#">por Apellido(s)</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="#">Ver todos</a></li>
                  </ul>
                </div><!-- /btn-group -->
              </div><!-- /input-group -->
            </div><!-- /.col-lg-6 -->
        </div>
        <div class="container">
          <div class="row">
            <table class="table table-striped">
            	<thead>
            		<tr>
            			<th>DNI</th>
                  <th>Nombre(s)</th>
                  <th>Apellidos</th>
                  <th>Operación</th>
            		</tr>
            	</thead>
            	<tbody>
                <tr>
                  <td>80347325</td>
                  <td>Nombre  Operador</td>
                  <td>Apellidos  Operador</td>
                  <td>
                      <button type="button" class="btn btn-info btn-xs">
                        <span class="glyphicon glyphicon-search"></span>
                      </button>
                      <button type="button" class="btn btn-primary btn-xs">
                        <span class="glyphicon glyphicon-pencil" data-toggle="tooltip" data-placement="bottom" title="Editar"></span>
                      </button>
                      <button type="button" class="btn btn-danger btn-xs">
                        <span class="glyphicon glyphicon-remove" data-toggle="tooltip" data-placement="bottom" title="Dar de Baja"></span>
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


	<div class="container">
		<div class="row panel panel-default">
			<h3 align="center">Footer</h3>
		</div>
	</div>
	<%= HelperVistas.getScripts() %>
</body>
</html>