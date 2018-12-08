package server.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import server.daos.ProductDAO;

@RequestMapping("/produtos")
@Controller
public class ProductController {
	@Autowired
	private ProductDAO productDAO;
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView modelAndView = new ModelAndView("product/list");
		modelAndView.addObject("produtos",productDAO.findAll());
		return modelAndView;
	}
	@RequestMapping("/form")
	public ModelAndView form() {
		ModelAndView modelAndView = new ModelAndView("product/form");
		return modelAndView;
	}
}
