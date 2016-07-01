package modelo;

public class HelperVistas {
	public static String alerta(String msg){
		return "<div class='container'>"
					+"<div class='row'>"
						+"<div class='col-xs-10 col-sm-8 col-md-6 no-float center-block'>"
							+"<div class='alert alert-danger text-center'>"
								+"<div class='alert-header'>"
									+"<button type='button' class='close' data-dismiss='alert'>&times;</button>"
								+"</div>"
							+"<div class='alert-body'>"
								+msg
							+"</div>"
						+"</div>"
					+"</div>"
				+"</div>"
			+"</div>";
	}
	public static String exito(String msg){
		return "<div class='container'>"
					+"<div class='row'>"
						+"<div class='col-xs-10 col-sm-8 col-md-6 no-float center-block'>"
							+"<div class='alert alert-success text-center'>"
								+"<div class='alert-header'>"
									+"<button type='button' class='close' data-dismiss='alert'>&times;</button>"
								+"</div>"
							+"<div class='alert-body'>"
								+msg
							+"</div>"
						+"</div>"
					+"</div>"
				+"</div>"
			+"</div>";
	}
	
	public static String getNavbar(Usuario usuario){
		String navbar = 
		 "<ul class='nav navbar-nav'>"
	          +"<li><a href='index.html'>Home <span class='sr-only'>(current)</span></a></li>"
	          +"<li><a href='Sedes/'>Sedes</a></li>"
	    +"</ul>"
	   	+"<ul class='nav navbar-nav navbar-right'>"
	   		+"<li><a href='Usuarios/'>Iniciar Sesión</a></li>"
	   	+"</ul>";
		return navbar;
	}
	
}
