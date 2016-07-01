package modelo;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import controlador.Conexion;

	public class consultas extends Conexion{
		
		
		
		public Usuario autenticacion(String mail, String pass) throws SQLException{
			Statement sta=this.getCon().createStatement();
			ResultSet  rs=null; 
			Usuario user=null;
			 int idUsuario;
			 String email;
			  String password;
			 String nombres;
		  String apellidos;
			 String celular;
			  String dni;
			String nivel;
			String estado;
			
			String consulta="select * from Usuario where email='"+mail+"' and password='"+pass+"'" ;
			rs=sta.executeQuery(consulta);
			while(rs.next()){
			if(rs.getString("estado").equals("h")){
				if( mail.equals(rs.getString("email"))&& pass.equals(rs.getString("password") )){
					idUsuario=rs.getInt("idUsuario");
					email=mail;
					password=rs.getString("password");
					nombres=rs.getString("nombres");
					apellidos=rs.getString("apellidos");
					celular=rs.getString("celular");
					dni=rs.getString("DNI");
					nivel= rs.getString("tipo");
					estado=rs.getString("estado");
					user=new Usuario(idUsuario,email,password,nombres,apellidos,celular,dni,nivel,estado);
					
				}
				
			}
			}
			return user;
		}
		
		public void cerrarConexion() throws SQLException{
			getCon().close();
		}
		
	}


