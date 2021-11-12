package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="PRODUCT")
public class ProductEntity {
	@Id
	@GeneratedValue
	@Column(name="ID_PRODUCT")
	private int id_product;
	@Column(name="PRICCE")
	private float price;
	@Column(name="DESCR")
	private String descr;
	@Column(name="TITLE")
	private String title;
	@Column(name="IMAGE")
	private String image;
	@ManyToOne
	@JoinColumn(name="ID_COLOR")
	private ColorEntity colors;
	@ManyToOne
	@JoinColumn(name="ID_BRAND")
	private BrandEntity brands;
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
