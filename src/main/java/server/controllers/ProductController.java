package server.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import server.daos.ProductDAO;
import server.models.Product;

@RequestMapping("/produtos")
@RestController
public class ProductController {
	@Autowired
	private ProductDAO productDAO;
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView modelAndView = new ModelAndView("product/list");
		modelAndView.addObject("produtos",productDAO.findAll());
		return modelAndView;
	}
	
	@RequestMapping(value="/form" ,method = RequestMethod.GET)
	public ModelAndView form() {
		ModelAndView modelAndView = new ModelAndView("product/form");
		return modelAndView;
	}
	@RequestMapping(value="/form",method = RequestMethod.POST)
	public ModelAndView save(Product product) {
		ModelAndView mv = new ModelAndView("redirect:/product");
		productDAO.save(product);
		
		return mv;

	}

}
