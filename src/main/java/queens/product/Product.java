package queens.product;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {

	@javax.persistence.Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int Id;
	private String ProductName;
	private String ProductDescription;
	private String ProductCategory;
	private String ProductPrice;
	private String ProductQty;
	private String ProductImage;
	

	
	
	
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	public String getProductDescription() {
		return ProductDescription;
	}
	public void setProductDescription(String productDescription) {
		ProductDescription = productDescription;
	}
	public String getProductCategory() {
		return ProductCategory;
	}
	public void setProductCategory(String productCategory) {
		ProductCategory = productCategory;
	}
	public String getProductPrice() {
		return ProductPrice;
	}
	public void setProductPrice(String productPrice) {
		ProductPrice = productPrice;
	}
	public String getProductQty() {
		return ProductQty;
	}
	public void setProductQty(String productQty) {
		ProductQty = productQty;
	}
	public String getProductImage() {
		return ProductImage;
	}
	public void setProductImage(String productImage) {
		ProductImage = productImage;
	}
	@Override
	public String toString() {
		return "Product [Id=" + Id + ", ProductName=" + ProductName + ", ProductDescription=" + ProductDescription
				+ ", ProductCategory=" + ProductCategory + ", ProductPrice=" + ProductPrice + ", ProductQty="
				+ ProductQty + ", ProductImage=" + ProductImage + "]";
	}
  @Transient
	private MultipartFile ProductFile;

	public MultipartFile getProductFile() {
		return ProductFile;
	}

	public void setProductFile(MultipartFile productFile) {
		ProductFile = productFile;
	}
	
}
