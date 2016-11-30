package queens;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;


import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import queens.UserModel.User;
import queens.UserModel.UserDAO;
import queens.UserRoleModel.UserRoleDAO;
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
	UserDAO udao; 
	
	@Autowired
	UserRoleDAO urdao; 
	
    @Autowired
	CategoryDAO cdao;
	
    @Autowired
	ServletContext context;

	
	@RequestMapping("/")
	public String home()
	{
		urdao.generateUserRoles();
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
	/*@RequestMapping(value ="/Login")
	public String Login()
	{
		return "Login";
	}*/
	@RequestMapping(value ="/SignUp")
	public ModelAndView SignUp()
	{
		ModelAndView  mav= new ModelAndView ("SignUp");
		mav.addObject("User", new User());
		return mav;
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
		
		List<Category> list = cdao.getAllCategories();
		
		mav.addObject("AllCategories", list );

		return mav;
	}
	@RequestMapping(value = "/AddCategoryToDB", method=RequestMethod.POST)
	public String AddCategoryToDB ( @ModelAttribute("Category")Category c) {
		
		cdao.insert(c);
		
		return "redirect:/category";
	
	}
 /*	@RequestMapping(value = "/insertuser", method=RequestMethod.POST)
	public String insertuser ( @ModelAttribute("User")User p) {
		
		udao.insertUser(p);
		
		return "redirect:/SignUp";
	*/
	
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
			jobj.put("flag", p.getProductImage());
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
	/*	@RequestMapping("/updateproduct/{pid}")
		public ModelAndView updateproduct( @PathVariable("pid") int pid ) {
			
			ModelAndView mav = new ModelAndView("updateproduct");
			
			System.out.println(pid);
			
			Product p = ps.getProduct(pid);
			
			mav.addObject("Product", p);
			
			return mav;
	}*/
	@RequestMapping(value = "/updateproduct/{pid}")
	public ModelAndView updateproduct(@PathVariable("pid")int pid) {
		ModelAndView mav = new ModelAndView("updateproduct");
		
		Product p = ps.getProduct(pid);
		
		mav.addObject("Product", p);
		
		List<Category> list = cdao.getAllCategories();
		
		mav.addObject("AllCategories", list );

		return mav;
	}
	@RequestMapping(value = "/deletecategory/{cid}")
	public String deleteCategory(@PathVariable("cid") int cid) {

		System.out.println(cid);
		
		Category c = cdao.getCategory(cid);
		
		cdao.delete(cid);
		
		List<Product> list = ps.getAllProducts();
		
		for( Product p:list )
		{
			if( p.getProductCategory().equals( c.getCategoryName() ) )
			{
				p.setProductCategory("-");
				ps.update(p);
			}
		}
		
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
		
		Category c_Old = cdao.getCategory(c.getId());
		
		cdao.update(c);
		
		List<Product> list = ps.getAllProducts();
		
		for( Product p : list )
		{
			if( p.getProductCategory().equals(c_Old.getCategoryName()) )
			{
				p.setProductCategory(c.getCategoryName());
				ps.update(p);
			}
		}
		
		//mav.addObject("Category", new Category());
		
		return "redirect:/category";
	
	}
	@RequestMapping(value = "/UpdateProductToDB", method=RequestMethod.POST)
	public String UpdateProductToDB ( @ModelAttribute("Product") Product p) {

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
						+ p.getId() + ".jpg");

				System.out.println(file.getAbsolutePath());

				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
				stream.write(bytes);
				stream.close();

			}

			p.setProductImage("resources/images/image_" + p.getId() + ".jpg");
		ps.update(p);
	} catch (Exception e) {
		e.printStackTrace();
	}

		return "redirect:/product";
	
	}
	
	@RequestMapping(value = "/insertuser", method = RequestMethod.POST)
	public ModelAndView insertUser(@Valid @ModelAttribute("User") User p, BindingResult bind) {

		ModelAndView mav = new ModelAndView("SignUp");

		System.out.println("In User Insert");

		if (bind.hasErrors()) {
			
			System.out.println(p);
			
			mav.addObject("User", p);
		} else {
			if (p.getPassword().equals(p.getCPassword())) {
				List<User> list = udao.getAllUsers();

				System.out.println(list);

				boolean usermatch = false;

				for (User u : list) {
					if (u.getUsername().equals(p.getUsername())) {
						usermatch = true;
						break;
					}
				}

				if (usermatch == false) {
					udao.insertUser(p);

					mav.addObject("newuser", new User());

					mav.addObject("success", "success");
				} else {
					mav.addObject("newuser", p);

					mav.addObject("useralreadyexists", "useralreadyexists");
				}
			} else {
				mav.addObject("newuser", p);

				mav.addObject("passwordmismatch", "passwordmismatch");
			}

		}

		return mav;
	}
	@RequestMapping(value = "/loginpage", method = RequestMethod.GET)
	public ModelAndView login() {

		ModelAndView mav = new ModelAndView("loginpage");

		return mav;

	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) 
		{

			System.out.println("In LogOut");
			new SecurityContextLogoutHandler().logout(request, response, auth);

		}

		return "index";
	}
	
}