package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ClientBean;

/**
 * Servlet implementation class Client
 */
@WebServlet("/Client")
public class Client extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ArrayList<ClientBean> requests = new ArrayList();

	public ArrayList<ClientBean> getRequests() {
		return requests;
	}

	private void addRequest(ClientBean request) {
		requests.add(request);
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Client() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/client/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String message = request.getParameter("message");

		ClientBean client = new ClientBean();
		client.setName(name);
		client.setPhone(phone);
		client.setEmail(email);
		client.setMessage(message);

		ArrayList<ClientBean> requests = (ArrayList<ClientBean>) getServletContext().getAttribute("requests");

		requests = requests == null ? new ArrayList<ClientBean>() : requests;

		requests.add(client);

		getServletContext().setAttribute("requests", requests);
	}

}
