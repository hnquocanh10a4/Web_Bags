package ptithcm.entity;





import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

@Embeddable

class CourseRatingKey implements Serializable { 
    @Column(name="IMAGE")
    private String image;

    @Column(name="ID_PRODUCT")
    private String id_product;
}

@Entity
@Table(name="IMAGES")
public class ImagesEntity {
	@EmbeddedId
	private CourseRatingKey images;
	
	 @ManyToOne
	 @MapsId("ID_PRODUCT")
	 @JoinColumn(name="ID_PRODUCT")
	 private ProductEntity products;
	 
	 @ManyToOne
	 @MapsId("IMAGE")
	 @JoinColumn(name="IMAGE")
	 private ProductEntity products1;

	public CourseRatingKey getImages() {
		return images;
	}

	public void setImages(CourseRatingKey images) {
		this.images = images;
	}

	public ProductEntity getProducts() {
		return products;
	}

	public void setProducts(ProductEntity products) {
		this.products = products;
	}

	public ProductEntity getProducts1() {
		return products1;
	}

	public void setProducts1(ProductEntity products1) {
		this.products1 = products1;
	}
	
	
	 
	 
}
