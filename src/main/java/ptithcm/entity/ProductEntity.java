package ptithcm.entity;



import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;



@Entity
@Table(name="PRODUCT")
public class ProductEntity {
	@Id
	@GeneratedValue
	@Column(name="ID_PRODUCT")
	private int id_product;
	@Column(name="PRICCE")
	@Min(value=1, message = "giá tiền tối thiểu là 1")
	private float price;
	@Column(name="DESCR")
	@NotEmpty(message = "Mô tả sản phẩm không được để trống")
	private String descr;
	@Column(name="TITLE")	
	@NotEmpty(message = "Tên sản phẩm không được để trống")
	private String title;
	@Column(name="IMAGE")
	@NotEmpty(message = "Vui lòng chọn hình sản phẩm ")
	private String image;
	@ManyToOne
	@JoinColumn(name="ID_COLOR")
	private ColorEntity colors;
	@ManyToOne
	@JoinColumn(name="ID_BRAND")
	private BrandEntity brands;
	@Column(name="QUANTITY")	
	@Min(value=1, message = "số lượng tối thiểu là 1")
	private Integer quantity;
	
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public int getId_product() {
		return id_product;
	}
	public void setId_product(int id_product) {
		this.id_product = id_product;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getDescr() {
		return descr;
	}
	public void setDescr(String descr) {
		this.descr = descr;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public ColorEntity getColors() {
		return colors;
	}
	public void setColors(ColorEntity colors) {
		this.colors = colors;
	}
	public BrandEntity getBrands() {
		return brands;
	}
	public void setBrands(BrandEntity brands) {
		this.brands = brands;
	}

	
	
	
}
