package server.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

import server.daos.ProductDAO;
import server.models.Carrinho;
import server.models.Product;

@Controller

@Scope(value = WebApplicationContext.SCOPE_REQUEST)
public class CarrinhoController {

	@Autowired // adiciona a instancia do objeto automaticamente
	private ProductDAO productDAO;
	@Autowired
	private Carrinho carrinho;

	@RequestMapping(value = "/carrinho/add", method = RequestMethod.POST)
	public ModelAndView add(Integer productId) {
		ModelAndView modelAndView = new ModelAndView("redirect:/cardapio");

		Product product = productDAO.findOne(productId);
		carrinho.ADD(product);
		return modelAndView;

	}
	@RequestMapping(value = "/checkout",method = RequestMethod.GET)
	public ModelAndView checkout() {
	ModelAndView modelAndView = new ModelAndView("/carrinho/checkout");
		modelAndView.addObject("produtos", carrinho.get());
		return modelAndView;
	}
	

}