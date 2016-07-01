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
    <h2>Administrar Gerentes</h2>
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
                <div class="form-group">
                  <label for="">Nombre:</label>
                  <input type="text" class="form-control">
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
        <div class="container">
          <div class="row">
            <table class="table table-striped">
            	<thead>
            		<tr>
            			<th>Id</th>
                  <th>Nombre</th>
                  <th>Operación</th>
            		</tr>
            	</thead>
            	<tbody>
                <tr>
                  <td>4</td>
                  <td>Nombre  Provincia</td>
                  <td>
                    <button type="button" class="btn btn-primary btn-xs" data-toggle="tooltip" data-placement="bottom" title="Editar">
                      <span class="glyphicon glyphicon-pencil"></span>
                    </button>
                    <button type="button" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="bottom" title="Dar de baja">
                      <span class="glyphicon glyphicon-remove"></span>
                    </button>
                    <button type="button" class="btn btn-success btn-xs" data-toggle="tooltip" data-placement="bottom" title="Dar de Alta">
                      <span class="glyphicon glyphicon-ok"></span>
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