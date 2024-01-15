package HibernateWebProj;


import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class EmployeeInformation {
	
	public boolean saveData(Employee emp) {
		
		  Configuration cfg = new Configuration();
    	  cfg.configure();
    	  SessionFactory factory = cfg.buildSessionFactory();
    	   
    	   Session session = factory.openSession();
    	    Transaction tx = session.beginTransaction();
    	    session.save(emp);
    	     tx.commit();
    	     session.close();
    	   
    	     return true;	
	}
	
	
	//For deleting the one specific row
	
	public int Delete(int id) {
		
	  Configuration cfg = new Configuration();
  	  cfg.configure();
  	  SessionFactory factory = cfg.buildSessionFactory();
  	   
  	   Session session = factory.openSession();
  	   
  	    Transaction tx = session.beginTransaction();
  	    
  	    Query q = session.createQuery("delete from Employee where id =: x");
  	    
  	    q.setParameter("x", id);
  	    int cnt = q.executeUpdate();
  	     tx.commit();
  	     session.close();
  	   
  	     return cnt;
		
	}
	
	//below code is for retriving the data from database
	
	public List <Employee> getAllRecords(){
		
		Configuration cfg = new Configuration();
		
		cfg.configure();
		SessionFactory factory = cfg.buildSessionFactory();
		
		Session session = factory.openSession();
		
		Query query  = session.createQuery("from Employee");
		
		query.setMaxResults(10);
		
		List<Employee> list = query.getResultList();
		
		return list;
			
	}
	
	
	public boolean updateRecords(Employee emp) {
		
		Configuration cfg = new Configuration();
		cfg.configure();
		SessionFactory factory = cfg.buildSessionFactory();
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(emp);
		tx.commit();
		
		return true;
	}	
	
}
