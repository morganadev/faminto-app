package server.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContatoController {
	@RequestMapping("/contato")
	public ModelAndView contato() {
		ModelAndView modelAndView = new ModelAndView("/contato/contato");
		return modelAndView;
		
	}
}
