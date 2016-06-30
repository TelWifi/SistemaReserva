<%@page import="controlador.Conexion"%>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prueba</title>
</head>
<body>

<% 
	String email = request.getParameter("ingresar_email");
	String password = request.getParameter("ingresar_password");
	out.println("Email enviado es :"+email);
	out.println("password enviado es :"+password);
	Conexion conexion = new Conexion();
	conexion.conectar();
	ResultSet rst = conexion.ejecutarConsulta("Select * from usuario where email='"+email+"' && password='"+password+"'");
	if(rst.first()){

		response.sendRedirect("/SistemaReservas/");
	}else{
		response.sendRedirect("/SistemaReservas/Usuarios/index.html");
	}
	
%>


</body>
</html>