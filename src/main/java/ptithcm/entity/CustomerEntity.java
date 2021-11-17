package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="CUSTOMER")
public class CustomerEntity {
	@Id
	@GeneratedValue
	@Column(name="ID_USER")
	private int id_user;
	@ManyToOne
	@JoinColumn(name="ID_ROLE")
	private RoleEntity roles;
	@Column(name="NAME")
	@NotEmpty(message ="Tên không được để trống !")
	@Pattern(regexp = "[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚÝàáâãèéêìíòóôõùúýĂăĐđĨĩŨũƠơƯưẠ-ỹ_.]*" , message ="Tên chỉ chứa các kí tự chữ !")
	private String name;
	@Column(name="USERNAME")
	@NotEmpty(message ="Username không được để trống !")
	private String username;
	@Column(name="PASSWORD")
	@NotEmpty(message ="Password không được để trống !")
	@Length(min=6, message ="Password phải có ít nhất 6 kí tự !")
	private String password;
	@Column(name="ADDRESS_CUSTOMER")
	@NotEmpty(message ="Địa chỉ không được để trống !")
	private String address_customer;
	@Column(name="EMAIL")
	@NotEmpty(message ="Email được để trống !")
	@Email(message ="Sai định dạng email !")
	private String email;
	@Column(name="PHONE")
	@NotEmpty(message ="Số điện thoại không được để trống !")
	@Pattern(regexp = "[0-9_.]*" , message ="Số điện thoại chỉ chứa chữ số !")
	@Length(min=9,max=11, message ="Số điện thoại có từ 9 đến 11 chữ số !")
	private String phone;
	@Column(name="SEX")
	private boolean sex;
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public RoleEntity getRoles() {
		return roles;
	}
	public void setRoles(RoleEntity roles) {
		this.roles = roles;
	}
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
	public boolean isSex() {
		return sex;
	}
	public void setSex(boolean sex) {
		this.sex = sex;
	}
	
	
	
}
