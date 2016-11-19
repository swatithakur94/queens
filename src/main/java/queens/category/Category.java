package queens.category;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
public class Category
{
	@javax.persistence.Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int Id;
	private String CategoryName;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getCategoryName() {
		return CategoryName;
	}
	public void setCategoryName(String categoryName) {
		CategoryName = categoryName;
	}
	@Override
	public String toString() {
		return "Category [Id=" + Id + ", CategoryName=" + CategoryName + "]";
	}

	
}
