package queens;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import queens.CartModel.Cart;
import queens.CartModel.CartDAO;
import queens.product.Product;
import queens.product.ProductDAO;

@RestController
public class RESTController {

	@Autowired
	CartDAO cs;
	
	@Autowired
	ProductDAO pdao;

	@RequestMapping(value = "/REST/fetchAllItems", method = RequestMethod.POST)
	public ResponseEntity<String> fetchAllItems()
	{	
		String username = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null && !auth.getName().equals("anonymousUser")) {
			System.out.println(auth.getName());
			// System.out.println("User present");
			username = auth.getName();
		} 
		
		JSONArray jarr = new JSONArray();
		
		if( username != null )
		{
			List<Cart> list = cs.getAllProduct();
			
			for( Cart c : list )
			{
				if( c.getUserName().equals(username) )
				{
					JSONObject jobj = new JSONObject();
					
					jobj.put("ProductName", c.getName());
					jobj.put("ProductPrice", c.getPrice());
					jobj.put("ProductQty", c.getQty());
					
					Product p = pdao.getProduct(Integer.parseInt(c.getProductID()));
					
					jobj.put("ProductImage", p.getProductImage());
					
					jarr.add(jobj);
				}
			}
		}
		
		return new ResponseEntity<String>(jarr.toJSONString(), HttpStatus.OK);
	}
	
}
