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
    <h2>Administraci�n de Sedes</h2>
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
              <form method="post" action="" class='form-horizontal '>
              	<% 
			      String msg_error = (String)request.getAttribute("msg_error");
			      if(msg_error != null){
			    	  out.println(HelperVistas.alerta(msg_error));
			      }
			    %>
                <div class="form-group">
                  <label for="">Nombre:</label>
                  <input name="nombre" type="text" class="form-control">
                </div>
                <div class="form-group">
                  <div class="row">
                    <div class="col-xs-6">
                      <label for="">Departamento</label>
                      <select name="departamento" class="form-control">
                        <option value="1">Piura</option>
                        <option value="2">Lima</option>
                      </select>
                    </div>
                    <div class="col-xs-6">
                      <label for="">Provincia</label>
                      <select name="provincia"class="form-control">
                        <option value="1">Piura</option>
                        <option value="2">Ayabaca</option>
                      </select>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="row">
                    <div class="col-xs-6">
                      <label for="">Distrito</label>
                      <select name="distrito" class="form-control" >
                        <option value="1">Piura</option>
                        <option value="2">Castilla</option>
                      </select>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label for="">Direccion:</label>
                  <input name="direccion" type="text" class="form-control">
                </div>
                <div class="form-group">
                  <label>Referencia:</label>
                  <textarea name="referencia" rows="3"  style="resize:none;"class="form-control"></textarea>
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
            <table class="table table-striped">
            	<thead>
            		<tr>
	            		<th>Id</th>
	                  	<th>Nombre</th>
	                  	<th>Direcci�n</th>
	                  	<th>Ubicaci�n</th>
	                  	<th>Operaci�n</th>
            		</tr>
            	</thead>
            	<tbody>
	                <tr>
	                  <td>4</td>
	                  <td>Nombre de la sede</td>
	                  <td>Jr. direccion nro 3432</td>
	                  <td>distrito - provicia - departamento</td>
	                  <td>
	                      <button type="button" class="btn btn-default btn-xs" data-toggle="modal" data-target="#modal_ver_mas">
	                        <span class="glyphicon glyphicon-plus" data-toggle="tooltip" data-placement="bottom" title="Ver m�s"></span>
	                      </button>
	                      <button type="button" class="btn btn-primary btn-xs" data-toggle="tooltip" data-placement="bottom" title="Editar">
	                        <span class="glyphicon glyphicon-pencil"></span>
	                      </button>
	                      <button type="button" class="btn btn-info btn-xs" data-toggle="tooltip" data-placement="bottom" title="Asignar operador">
	                        <span class="glyphicon glyphicon-user"></span>
	                      </button>
	                      <button type="button" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#modal_mantenimiento">
	                        <span class="glyphicon glyphicon-warning-sign" data-toggle="tooltip" data-placement="bottom" title="Enviar a mantenimiento"></span>
	                      </button>
	                      <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#modal_dar_baja">
	                        <span class="glyphicon glyphicon-remove" data-toggle="tooltip" data-placement="bottom" title="Dar de Baja"></span>
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

  <div id="modal_mantenimiento" class="modal fade" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Dar de Baja</h4>
        </div>
        <div class="modal-body">
          <div class="col-xs-11 no-float center-block">
            <form class='form-horizontal'>
              <div class="form-group">
                <label for="">Fecha inicio:</label>
                <input type="date" class="form-control" autofocus="autofocus">
                <label for="">Hora inicio:</label>
                <select class="form-control" name="hora_inicio">
  								<option value="1">7:00am</option>
  								<option value="2">8:00am</option>
  								<option value="3">9:00am</option>
  								<option value="4">10:00am</option>
  								<option value="5">11:00am</option>
  								<option value="6">12:00am</option>
  							</select>
              </div>
              <div class="form-group">
                <label for="">Fecha fin:</label>
                <input type="date" class="form-control" autofocus="autofocus">
                <label for="">Hora fin:</label>
                <select class="form-control" name="hora_inicio">
  								<option value="1">7:00am</option>
  								<option value="2">8:00am</option>
  								<option value="3">9:00am</option>
  								<option value="4">10:00am</option>
  								<option value="5">11:00am</option>
  								<option value="6">12:00am</option>
  							</select>
              </div>
              <div class='form-group'>
                <button type='submit' class='btn btn-primary '>Guardar</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
              </div>
            </form>
          </div>
        </div>
      </div>

    </div>
  </div>

  <div id="modal_dar_baja" class="modal fade" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Dar de Baja</h4>
        </div>
        <div class="modal-body">
          <div class="col-xs-11 no-float center-block">
            <form class='form-horizontal'>
              <div class="form-group">
                <label for="">Fecha:</label>
                <input type="date" class="form-control" autofocus="autofocus">
                <label for="">Hora:</label>
                <select class="form-control" name="hora_inicio">
  								<option value="1">7:00am</option>
  								<option value="2">8:00am</option>
  								<option value="3">9:00am</option>
  								<option value="4">10:00am</option>
  								<option value="5">11:00am</option>
  								<option value="6">12:00am</option>
  							</select>
              </div>
              <div class='form-group'>
                <button type='submit' class='btn btn-primary '>Dar de Baja</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
              </div>
            </form>
          </div>
        </div>
      </div>

    </div>
  </div>

  <div id="modal_ver_mas" class="modal fade" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Sede N� 4 - nombre</h4>
        </div>
        <div class="modal-body">
          <div class="col-xs-11 no-float center-block">
            <div class="container">
              <div class="row">
                <label for="">Ubicacion:</label><label for="">distrito - provincia - departamento</label>
              </div>
              <div class="row">
                <label for="">Direccion:</label><label for="">direccion</label>
              </div>
              <div class="row">
                <label for="">Operador:</label><label for="">DNI - nombre y apellidos</label>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>

    </div>
  </div>

  <%= HelperVistas.getScripts() %>
</body>
</html>