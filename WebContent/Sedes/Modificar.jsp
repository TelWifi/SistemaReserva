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
	    	<h1 align="center">Modificar Sede</h1>
	  </div>
		<div class="row">
			<!--Formulacio Crear Sede-->
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

	<div class="container">
		<div class="row panel panel-default">
			<h3 align="center">Footer</h3>
		</div>
	</div>
	<%= HelperVistas.getScripts() %>
</body>
</html>