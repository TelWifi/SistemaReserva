package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;

import controlador.Conexion;

public class Usuario {
	private int idUsuario;
	private  String email;
	private  String password;
	private  String nombres;
	private  String apellidos;
	private  String celular;
	private  String dni;
	private String tipo;
	private  String estado;
	public static Conexion conexion = new Conexion();
	public Usuario(int idUsuario, String email, String password, String nombres, String apellidos, String celular,
			String dni, String tipo, String estado) {
		super();
		this.idUsuario = idUsuario;
		this.email = email;
		this.password = password;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.celular = celular;
		this.dni = dni;
		this.tipo = tipo;
		this.estado = estado;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	public static Usuario autenticar(String email, String password) throws SQLException, ClassNotFoundException{
		//ResultSet rst = conexion.ejecutarConsulta("CALL AutenticarUsuario("+email+","+password+")");
		Usuario user =null;
		conexion.conectar();
		ResultSet rst = conexion.ejecutarConsulta("select * from Usuario where email='"+email+"' and password='"+password+"'");
		if(rst.first()){
			user =  new Usuario(
					rst.getInt("idUsuario")
					,rst.getString("email")
					,rst.getString("password")
					,rst.getString("nombres")
					,rst.getString("apellidos")
					,rst.getString("celular")
					,rst.getString("DNI")
					,rst.getString("tipo")
					,rst.getString("estado")
					);
			conexion.desconectar();
		}
		return user;
	}
	
}
