package HibernateWebProj;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Employee {
	
	@Id
	int id;
	String name;
	String city;
	
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getCity() {
		return city;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setCity(String city) {
		this.city = city;
	}	
}
