package com.example.demo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.BookinMasterRepo;
import com.example.demo.model.BookingMaster;
import com.example.demo.model.Category;
import com.example.demo.model.CategoryRepo;
import com.example.demo.model.Customer;
import com.example.demo.model.CustomerRepo;
import com.example.demo.model.Plan;
import com.example.demo.model.PlanRepo;

@Controller
public class FrontController {
	@Autowired
	CustomerRepo repo;
	@Autowired 
	PlanRepo prepo;
	@Autowired
	CategoryRepo crepo;
	@Autowired
	BookinMasterRepo brepo;
	
	@RequestMapping("/")
	public ModelAndView register()
	{
		ModelAndView mv=new ModelAndView("/index.jsp");
		long bk =brepo.count();
		System.out.println("customer object =="+bk);
		mv.addObject("obj",bk);
		return mv;
		
	}

	@RequestMapping("/savedetails")
	public String saveDetails(Customer customer)
	{
		repo.save(customer);
		return "getDetails";
	} 

	@RequestMapping("/category")
	public ModelAndView saveCategory(Category category)
	{
		ModelAndView mv=new ModelAndView("category");
		try {
		System.out.println("category Form=="+category.getCatname());
		crepo.save(category);
		mv.addObject("sucessmsg", "Category Added Successfully...!");		
		return mv;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			mv.addObject("errormsg", "Something went Wrong, Please try again..!");		
			return mv;
			
		}
	} 
	@GetMapping("/getdetails")
	public ModelAndView viewDetails(@RequestParam("cid") int cid)
	{	
		ModelAndView mv=new ModelAndView("showDetails");
		Customer customer = repo.findById(cid).orElse(null);
		System.out.println("customer object =="+customer);
		mv.addObject("obj",customer);
		return mv;
		
	}
	@GetMapping("/categoryList")
	public String viewDetails(Model mv)
	{	
		Iterable<Category> category =  crepo.findAll();
		System.out.println("category object =="+category);
		mv.addAttribute("categoryList", category);
		return "categoryList";
		
	}
	@GetMapping("/editCategory/{cid}")
	public String editCategory(@PathVariable("cid") int cid, Model mv)
	{	
		Category category =  crepo.findById(cid).orElse(null);
		System.out.println("category object 1111=="+category);
		mv.addAttribute("categoryList", category);
		return "editCategory";
			
		}
	@GetMapping("/deleteCategory/{cid}")
	public ModelAndView deleteCategory(@PathVariable("cid") int cid, Model mv)
	{	
		try {
		 crepo.deleteById(cid);
		System.out.println("category deleted");
		mv.addAttribute("sucessmsg", "Category Id "+cid+" Deleted successfully..");
		return new ModelAndView("redirect:/categoryList");		}
		catch(Exception e)
		{
			e.printStackTrace();
			mv.addAttribute("errormsg", "Category Id "+cid+" Not Deleted, Please try again.");
			return new ModelAndView("redirect:/categoryList");		
		}
	}
	
	@RequestMapping("/addPlan")
	public ModelAndView savePlan(Plan plan)
	{
		ModelAndView mv=new ModelAndView("plan");
		try {
		System.out.println("category Form=="+plan.getPlanname());
		prepo.save(plan);
		mv.addObject("sucessmsg", "Plan Added Successfully...!");		
		return mv;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			mv.addObject("errormsg", "Something went Wrong, Please try again..!");		
			return mv;
			
		}
	} 
	@GetMapping("/planList")
	public String viewPlanList(Model mv)
	{	
		Iterable<Plan> plan =  prepo.findAll();
		System.out.println("Plan object =="+plan);
		mv.addAttribute("planList", plan);
		return "planList";
		
	}
}