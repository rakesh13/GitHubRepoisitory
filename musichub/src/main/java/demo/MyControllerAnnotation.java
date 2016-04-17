package demo;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyControllerAnnotation 
{
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
	public String productDesc()
	{
		return "ProductDesc";
	}
}


