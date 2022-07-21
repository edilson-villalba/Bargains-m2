package py.ucsa.edu.bargains.m2.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDateTime;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import py.edu.ucsa.bargains.daos.SubastaDAO;
import py.edu.ucsa.bargains.dtos.Opcion;
import py.edu.ucsa.bargains.dtos.Subasta;
import py.edu.ucsa.bargains.daos.DAOFactory;
import py.edu.ucsa.bargains.daos.OpcionDAO;

/**
 * Servlet implementation class Subastas
 */
@WebServlet("/Subastas")
public class SubastaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubastaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SubastaDAO dao;
		OpcionDAO opcionDAO;
		try {
			HttpSession session = request.getSession();
			dao = DAOFactory.getSubastaDAO();
			opcionDAO = DAOFactory.getOpcionDAO();
			if (request.getParameter("ACCION") == null || "".equals(request.getParameter("ACCION"))
					|| "LISTAR".equals(request.getParameter("ACCION"))) {
				session.setAttribute("SUBASTAS", dao.listarTodos());
				request.getRequestDispatcher("SubastasGrilla.jsp").forward(request, response);
			}else if ("NUEVA".equals(request.getParameter("ACCION"))){
				session.setAttribute("ESTADOS_SUBASTA", opcionDAO.getOpcionesByCodDominio("ESTSUB"));
				request.getRequestDispatcher("Subastas.jsp").forward(request, response);
			}else if ("GUARDAR".equals(request.getParameter("ACCION"))){
				Subasta sub = new Subasta();
				sub.setTituloSubasta(request.getParameter("titulo"));
				sub.setNroSubasta(Integer.parseInt(request.getParameter("nroSubasta")));
				sub.setFechaHoraCierre(LocalDateTime.parse(request.getParameter("fechaHoraCierre")));
				sub.setObservaciones(request.getParameter("observaciones"));
				sub.setTotalBase(Double.parseDouble(request.getParameter("totalBase")));
				sub.setEstado(new Opcion(Long.parseLong(request.getParameter("estado"))));
				
//				session.setAttribute("ESTADOS_SUBASTA", opcionDAO.getOpcionesByCodDominio("ESTSUB"));
//				System.out.println(request.getParameter("nroSubasta"));
//				request.getRequestDispatcher("Subastas.jsp").forward(request, response);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
