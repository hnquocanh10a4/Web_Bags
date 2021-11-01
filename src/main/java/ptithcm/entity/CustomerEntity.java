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
	private String id_user;
	@Column(name="ID_ROLE")
	private String id_role;
	@Column(name="USERNAME")
	@NotEmpty(message ="Username không được để trống !")
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
		return id_user;
	}
	public void setId_user(String id_user) {
		this.id_user = id_user;
	}
	public String getId_role() {
		return id_role;
	}
	public void setId_role(String id_role) {
		this.id_role = id_role;
	}
	public String getUsername() {
		return username;
	}
	public void setUsename(String username) {
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
}
