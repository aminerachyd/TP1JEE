package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import beans.ClientBean;
import dao.PersonDAO;
import entities.Message;
import entities.Person;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/admin/list")
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
		// On recupere les infos dans la base de données
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:/META-INF/applicationContext.xml");
		PersonDAO personDAO = ctx.getBean(PersonDAO.class);
		List<Person> persons = personDAO.findAll();
		
		// On fait la conversion person -> clientBean (pour l'affichage)
		List<ClientBean> requests = new ArrayList<ClientBean>();
		for (Person person : persons) {
			List<Message> messages = person.getMessages();
			for (Message message : messages) {
				requests.add(new ClientBean(person.getName(), person.getEmail(),
						person.getPhone(), message.getContent()));
			}
		}
		
		request.setAttribute("requests", requests);
		ctx.close();
		
		// On affiche la page
		getServletContext().getRequestDispatcher("/admin/index.jsp")
		.forward(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Fonction appelée pour obtenir les resultats du filtrage
		// On fait le filtrage
		// On recupere la partie du nom à chercher
		String name = request.getParameter("name");
		
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:/META-INF/applicationContext.xml");
		PersonDAO personDAO = ctx.getBean(PersonDAO.class);
		List<Person> persons = personDAO.findLikeName(name);
		
		// On fait la conversion person -> clientBean (pour l'affichage)
		List<ClientBean> requests = new ArrayList<ClientBean>();
		for (Person person : persons) {
			List<Message> messages = person.getMessages();
			for (Message message : messages) {
				requests.add(new ClientBean(person.getName(), person.getEmail(),
						person.getPhone(), message.getContent()));
			}
		}
		
		request.setAttribute("requests", requests);
		ctx.close();
		
		// On renvoie une page jsp qui correspond à l'intérieur du tableau
		// à afficher
		getServletContext().getRequestDispatcher("/admin/table.jsp")
		.forward(request, response);
	}

}
