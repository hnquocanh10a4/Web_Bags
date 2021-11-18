package ptithcm.entity;

import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="BILL_DETAIL")
@AssociationOverrides({
    @AssociationOverride(name = "pk.billEntity", 
        joinColumns = @JoinColumn(name = "ID_BILL")),
    @AssociationOverride(name = "pk.productEntity", 
        joinColumns = @JoinColumn(name = "ID_PRODUCT")) })
public class BillDetailEntity {
	
	@EmbeddedId BillDetailPK pk;

	public BillDetailEntity() {
		super();
	}

	public BillDetailEntity(BillDetailPK pk) {
		super();
		this.pk = pk;
	}

	public BillDetailPK getPk() {
		return pk;
	}

	public void setPk(BillDetailPK pk) {
		this.pk = pk;
	}
	
	
	
}
