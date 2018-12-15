package server.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import server.daos.ProductDAO;
@RequestMapping("/cardapio")
@Controller
public class MenuController {
	@Autowired
	private ProductDAO productDAO;
	@RequestMapping( method = RequestMethod.GET)
	public ModelAndView form() {
		
		ModelAndView modelAndView = new ModelAndView("product/cardapio");
		modelAndView.addObject("produtos", productDAO.findAll());
		return modelAndView;
	}
	
}
