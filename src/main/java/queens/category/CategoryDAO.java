package queens.category;

import java.util.List;

import queens.product.Product;



public interface CategoryDAO 
{
	public void insert(Category c);
	public void update(Category c);
	public void delete(int cid);
	
	public Category getCategory(int cid);
	public List<Category> getAllCategories();
}
