package demo.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import demo.dao.ProductDAOImpl;
import demo.dao.ProductService;
import demo.model.Product;

@Controller
public class MyControllerAnnotation 
{
	//ProductDAOImpl prod=new ProductDAOImpl();
	private ProductService ps;
	
	@Autowired
	public MyControllerAnnotation(ProductService ps) 
	{
		this.ps=ps;
	}
	@RequestMapping("/")
	public String my()
	{
		//ModelAndView mv=new ModelAndView("index");
		//mv.addObject("msg", "hiii");
		return "index";
	}
	@RequestMapping("/Home")
	public String home()
	{
		return "Home";
	}
	@RequestMapping("/About")
	public String aboutus()
	{
		return "AboutUs";
	}
	@RequestMapping("/ContactUs")
	public String contactus()
	{
		return "ContactUs";
	}
	@RequestMapping("/LoginPage")
	public String loginpage()
	{
		return "Login";
	}
	
	@RequestMapping("/productdesc")
	public String productDesc(ModelMap model)
	{
		List<Product> products = ps.getAllProducts();
		model.addAttribute("products", products );
	
		return "ProductDesc";
	}
	@RequestMapping("/newProduct")
	public String guitar()
	{
		return "ProductRegister";
	}
	@RequestMapping("/piano")
	public String piano()
	{
		return "piano";
	}
	
	@RequestMapping(value="/productdetails", method=RequestMethod.GET)
	public ModelAndView productdetails(@RequestParam int pid)
	{
		Product p=ps.getProduct(pid);
		return new ModelAndView("productDetails","selectedProduct", p);
	}
		//System.out.println("pid = "+pid);
		/*Product p=prod.getProduct(pid);
		if(p!=null)
		{
			
			
			return new ModelAndView("productDetails","selectedProduct", p);
		}
		else
		{ 
			return new ModelAndView("error","", null);
		}*/
	//}
	
	@ModelAttribute("insertProductCommand")
	public Product construct(){
		return new Product();
		//return "insertProductCommand";
	}
	@RequestMapping(value="/Register",method=RequestMethod.POST)
	public ModelAndView insertProduct(@ModelAttribute("insertProductCommand") Product p, BindingResult result)
	{
		//p=construct();
		/*System.out.println("--- insertProduct-----");
		System.out.println(p.getId());*/
		/*int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("Name");
		String condition=req.getParameter("Condition");
		String desc=req.getParameter("Description");
		String manu=req.getParameter("Manufacturer");
		int price=Integer.parseInt(req.getParameter("Price"));
		String image=req.getParameter("Image");*/
		int res=ps.insertProduct(p);
		if(res>0)
		{
			List<Product> products = ps.getAllProducts();
			//model.addAttribute("products", products );
			return new ModelAndView("ProductDesc","products", products);
			
		}
		else
		{
			return new ModelAndView("error","",null);
		}
	}
	@RequestMapping(value="/deleteproduct", method=RequestMethod.GET)
	public ModelAndView deleteProduct(@RequestParam int pid)
	{
		boolean b=ps.deleteProduct(pid);
		if(b)
		{
			List<Product> products = ps.getAllProducts();
			//model.addAttribute("products", products );
			return new ModelAndView("ProductDesc","products", products);
		}
		else
		{
			return new ModelAndView("error","",null);
		}
	}
	@RequestMapping(value="/updateproduct",method=RequestMethod.GET)
	public ModelAndView updateProduct(@RequestParam int pid)
	{
		return new ModelAndView("UpdateProduct","id",pid);
	}
	
}


