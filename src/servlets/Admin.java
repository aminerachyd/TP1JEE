package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ClientBean;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/admin/index")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Admin() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// On affiche la page avec les demandes
		getServletContext().getRequestDispatcher("/admin/index.jsp")
		.forward(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Fonction appelée pour obtenir les resultats du filtrage
		// On fait le filtrage
		// On recupere la partie du nom à chercher
		String name = request.getParameter("name");
		// On recupere la liste des demandes
		List<ClientBean> requests = (List<ClientBean>) getServletContext()
						.getAttribute("requests");
		requests = requests == null ? new ArrayList<ClientBean>() : requests;
		List<ClientBean> output = new ArrayList<ClientBean>();
		for (ClientBean req : requests) {
			// Si le nom de la demande contient la partie qu'on cherche on l'ajoute
			// à la liste
			if (req.getName().contains(name))
				output.add(req);
		}
		// On ajoute la liste à la jsp
		request.setAttribute("values", output);
		// On renvoie une page jsp qui correspond à l'intérieur du tableau
		// à afficher
		getServletContext().getRequestDispatcher("/admin/table.jsp")
		.forward(request, response);
	}

}
