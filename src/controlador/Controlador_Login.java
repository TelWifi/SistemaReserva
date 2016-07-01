package controlador;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Usuario;


@WebServlet("/Usuarios/Controlador_Login")
public class Controlador_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador_Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("<h1>BIENBENIDO</h1>").append("");
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		Usuario user = null;
		HttpSession sesion=null;
		try {
			user=Usuario.autenticar(email, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		if(user != null){
			if(user.getTipo().equals("0003")){
				sesion=request.getSession();
				sesion.setAttribute("nombre", user.getNombres());
				
			}else if(user.getTipo().equals("0002")){
				
			}
			request.setAttribute("msg_success", "Bienvenido");
			request.setAttribute("usuario", user);
			request.getRequestDispatcher("/").forward(request, response);
		}else {
			request.setAttribute("msg_error", "Datos incorrectos");
			request.getRequestDispatcher("/Usuarios/").forward(request, response);
		}
	}

}
