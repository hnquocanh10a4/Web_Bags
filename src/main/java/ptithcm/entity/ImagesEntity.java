package ptithcm.entity;
import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;




@Entity
@Table(name="IMAGES")
@IdClass(value=ImagesEntity.imagesId.class)
public class ImagesEntity  implements Serializable{
	@Id
	@Column(name="IMAGE")
	private String image;
	@Column(name="ID_PRODUCT")
	private Integer id_product;
	
	@ManyToOne
	
	private ProductEntity pro;
	
	public ProductEntity getPro() {
		return pro;
	}
	public void setPro(ProductEntity pro) {
		this.pro = pro;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Integer getId_product() {
		return id_product;
	}
	public void setId_product(Integer id_product) {
		this.id_product = id_product;
	}
	
	
	static class imagesId implements Serializable {
		private String image;
		private Integer id_product;
		public String getImage() {
			return image;
		}
		public void setImage(String image) {
			this.image = image;
		}
		public Integer getId_product() {
			return id_product;
		}
		public void setId_product(Integer id_product) {
			this.id_product = id_product;
		}
		@Override
		public int hashCode() {
			return Objects.hash(id_product, image);
		}
		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			imagesId other = (imagesId) obj;
			return Objects.equals(id_product, other.id_product) && Objects.equals(image, other.image);
		}
		
		
	}
	
	
	
	
	
 
}
