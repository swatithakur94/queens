package queens;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import queens.category.Category;
import queens.category.CategoryDAO;
import queens.product.Product;
import queens.product.ProductDAO;





@Controller
public class HelloController
{
	@Autowired
	ProductDAO ps;
	
	
    @Autowired
	CategoryDAO cdao;
	
    @Autowired
	ServletContext context;

	
	@RequestMapping("/")
	public String home()
	{
		
		return "index";
	}
	
	@RequestMapping("/index")
	public ModelAndView index()
	{
		ModelAndView model = new ModelAndView("index");
		model.addObject("message","queens.com");
		
		return model ;
	}
	@RequestMapping(value ="/contact")
	public String contact()
	{
		return "contact";
	}
	
	@RequestMapping(value="/AboutUs")
	public String AboutUs()
	{
		
		return "AboutUs";
	}
	
	@RequestMapping(value ="/head-meta")
	public String head_meta()
	{
		return "head-meta";
	}
	@RequestMapping(value ="/head")
	public String head()
	{
		return "head";
	}
	@RequestMapping(value ="/Login")
	public String Login()
	{
		return "Login";
	}
	@RequestMapping(value ="/SignUp")
	public String SignUp()
	{
		return "SignUp";
	}
	
	
	
	@RequestMapping(value = "/addcategory")
	public ModelAndView addcategory() {
		ModelAndView mav = new ModelAndView("addcategory");
		mav.addObject("Category", new Category());
		

		return mav;
	}
	@RequestMapping(value = "/addproduct")
	public ModelAndView addproduct() {
		ModelAndView mav = new ModelAndView("addproduct");
		mav.addObject("Product", new Product());
		

		return mav;
	}
	@RequestMapping(value = "/AddCategoryToDB", method=RequestMethod.POST)
	public String AddCategoryToDB ( @ModelAttribute("Category")Category c) {
		
		cdao.insert(c);
		
		return "redirect:/category";
	
	}
	
	@RequestMapping(value = "/AddProductToDB", method=RequestMethod.POST)
	public String AddProductToDB ( @ModelAttribute("Product")Product p) {
		
		System.out.println(p);
		
		ps.insert(p);
		Product i1 = ps.getProductWithMaxId();

		System.out.println(i1.getId());

		try {
			String path = context.getRealPath("/");

			System.out.println(path);

			File directory = null;

			// System.out.println(ps.getProductWithMaxId());

			if (p.getProductFile().getContentType().contains("image")) {
				directory = new File(path + "\\resources\\images");

				System.out.println(directory);

				byte[] bytes = null;
				File file = null;
				bytes = p.getProductFile().getBytes();

				if (!directory.exists())
					directory.mkdirs();

				file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_"
						+ i1.getId() + ".jpg");

				System.out.println(file.getAbsolutePath());

				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
				stream.write(bytes);
				stream.close();

			}

			i1.setProductImage("resources/images/image_" + i1.getId() + ".jpg");

			ps.update(i1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/product";
	
	}
	
	
	@RequestMapping("/category")
	public ModelAndView category() {
		ModelAndView mav = new ModelAndView("category");
		
		JSONArray jarr = new JSONArray();
		
		List<Category> list = cdao.getAllCategories();
		System.out.println(list);
		
		for( Category c:list )
		{
			JSONObject jobj = new JSONObject();
			
			jobj.put("CategoryId", c.getId() );
			jobj.put("CategoryName", c.getCategoryName());
			
			jarr.add(jobj);
		}
		
		mav.addObject("Cat", jarr.toJSONString());
		
		return mav;
	}
	@RequestMapping("/product")
	public ModelAndView product() {
		ModelAndView mav = new ModelAndView("product");
		
		JSONArray jarr = new JSONArray();
		
		List<Product> list = ps.getAllProducts();
		System.out.println(list);
		
		for( Product p:list )
		{
			JSONObject jobj = new JSONObject();
			
			jobj.put("ProductId", p.getId() );
			jobj.put("ProductName", p.getProductName());
			jobj.put("ProductCategory", p.getProductCategory());
			jobj.put("ProductDescription", p.getProductDescription());
			jobj.put("ProductQty", p.getProductQty());
			jobj.put("ProductPrice", p.getProductPrice());
			jarr.add(jobj);
		}
		
		System.out.println( jarr.toJSONString() );
		
		mav.addObject("pro", jarr.toJSONString());
		
		return mav;
	}
	@RequestMapping("/updatecategory/{cid}")
	public ModelAndView updatecategory( @PathVariable("cid") int cid ) {
		
		ModelAndView mav = new ModelAndView("updatecategory");
		
		System.out.println(cid);
		
		Category c = cdao.getCategory(cid);
		
		mav.addObject("Category", c);
		
		return mav;
	}
		@RequestMapping("/updateproduct/{pid}")
		public ModelAndView updateproduct( @PathVariable("pid") int pid ) {
			
			ModelAndView mav = new ModelAndView("updateproduct");
			
			System.out.println(pid);
			
			Product p = ps.getProduct(pid);
			
			mav.addObject("Product", p);
			
			return mav;
	}
	@RequestMapping(value = "/deletecategory/{cid}")
	public String deleteCategory(@PathVariable("cid") int cid) {

		System.out.println(cid);

		cdao.delete(cid);
		return "redirect:/category";
	}
	@RequestMapping(value = "/deleteproduct/{pid}")
	public String deleteProduct(@PathVariable("pid") int pid) {

		System.out.println(pid);

		ps.delete(pid);
		return "redirect:/product";
	}
	@RequestMapping(value = "/UpdateCategoryToDB", method=RequestMethod.POST)
	public String UpdateCategoryToDB ( @ModelAttribute("Category") Category c) {
		ModelAndView mav = new ModelAndView("Category");
		cdao.update(c);
		mav.addObject("Category", new Category());
		
		return "redirect:/category";
	
	}
	@RequestMapping(value = "/UpdateProductToDB", method=RequestMethod.POST)
	public String UpdateProductToDB ( @ModelAttribute("Product") Product p) {
		ModelAndView mav = new ModelAndView("Product");
		ps.update(p);
		mav.addObject("Product", new Product());
		
		return "redirect:/product";
	
	}
}