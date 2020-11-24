package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import entities.Message;
import entities.Person;

@Repository
public class PersonDAO {
	@PersistenceContext
	private EntityManager em;

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Person> findAll(){
		return em.createQuery("Select distinct p from Person p LEFT JOIN FETCH p.messages").getResultList();	
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public Person findPerson(String name,String email,String phone) {
		Query q = em.createQuery("Select distinct p from Person p LEFT JOIN FETCH p.messages where p.name = :name and p.email = :email and "
				+ "p.phone = :phone");
		q = q.setParameter("name", name).setParameter("email", email).setParameter("phone", phone);
		List<Person> persons = q.getResultList();
		return persons.size() == 1 ? persons.get(0) : null;
	}

	@Transactional
	public void addPerson(Person person) {
		em.persist(person);
	}

	@Transactional
	public void addMessageToPerson(Person person,Message message) {
		person.getMessages().add(message);
		em.persist(message);
	}

	@SuppressWarnings("unchecked")
	public List<Person> findLikeName(String name) {
		Query q = em.createQuery("Select distinct p from Person p LEFT JOIN FETCH p.messages where p.name LIKE :name");
		q = q.setParameter("name", "%"+name+"%");
		List<Person> persons = q.getResultList();
		return persons;
	}
}
