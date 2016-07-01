package controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Conexion {
	private final String USERNAME = "root";
	private final String PASSWORD = "root";
	private final String HOST = "localhost";
	private final String PORT = "3306";
	private final String DATABASE = "bdla12";
	private final String CLASSNAME = "com.mysql.jdbc.Driver";
	private final String URL = "jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
	private Connection con;
	public void conectar()throws SQLException, ClassNotFoundException{
		Class.forName(CLASSNAME);
		con = DriverManager.getConnection(URL,USERNAME,PASSWORD);
	}
	public void desconectar()throws SQLException, ClassNotFoundException{
		con.close();
	}
	
	public ResultSet ejecutarConsulta(String sentencia) throws SQLException{
		Statement st = this.getCon().createStatement(); 
		return st.executeQuery(sentencia);
	}
	public boolean ejecutar(String sentencia) throws SQLException{
		Statement st = this.getCon().createStatement(); 
		return st.execute(sentencia);
	}
	public int ejecutarActualizacion(String sentencia) throws SQLException{
		Statement st = this.getCon().createStatement(); 
		return st.executeUpdate(sentencia);
	}
	public Connection getCon() {
		return con;
	}
	public void setCon(Connection con) {
		this.con = con;
	}
	public String getUSERNAME() {
		return USERNAME;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public String getHOST() {
		return HOST;
	}
	public String getPORT() {
		return PORT;
	}
	public String getDATABASE() {
		return DATABASE;
	}
	public String getCLASSNAME() {
		return CLASSNAME;
	}
	public String getURL() {
		return URL;
	}
}
