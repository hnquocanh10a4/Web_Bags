package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="CUSTOMER")
public class CustomerEntity {
	@Id
	@GeneratedValue
	@Column(name="ID_USER")
	private int id_user;
	@Column(name="ID_ROLE")
	private int id_role;
	@Column(name="NAME")
	private String name;
	@Column(name="USERNAME")
<<<<<<< HEAD
	@NotEmpty(message ="Username không được để trống !")
=======
>>>>>>> 8e71196520adbcf7b9d6a030ef065986d83b2d0e
	private String username;
	@Column(name="PASSWORD")
	@NotEmpty(message ="Password không được để trống !")
	private String password;
	@Column(name="ADDRESS_CUSTOMER")
	private String address_customer;
	@Column(name="EMAIL")
	private String email;
	@Column(name="PHONE")
	private String phone;
	@Column(name="SEX")
<<<<<<< HEAD
	private String sex;
	@Column(name="NAME")
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId_user() {
=======
	private Boolean sex;
	public int getId_user() {
>>>>>>> 8e71196520adbcf7b9d6a030ef065986d83b2d0e
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public int getId_role() {
		return id_role;
	}
	public void setId_role(int id_role) {
		this.id_role = id_role;
	}
<<<<<<< HEAD
	public String getUsername() {
		return username;
	}
	public void setUsename(String username) {
=======
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
>>>>>>> 8e71196520adbcf7b9d6a030ef065986d83b2d0e
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress_customer() {
		return address_customer;
	}
	public void setAddress_customer(String address_customer) {
		this.address_customer = address_customer;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Boolean getSex() {
		return sex;
	}
	public void setSex(Boolean sex) {
		this.sex = sex;
	}
	
	
	
	
}
