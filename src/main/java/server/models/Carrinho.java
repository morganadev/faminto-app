package server.models;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

@Component
@Scope(value=WebApplicationContext.SCOPE_SESSION)
public class Carrinho {
	List<Product> products = new ArrayList<>();
	
	public void ADD(Product product) {
		products.add(product);
		System.out.println("Adicionando o produto " + product.getNome());
		System.out.println("O carrinho tem " + products.size() + " produto(s)");
	}

	public List<Product> get() {
		return products;
		
	}
	
	public void remove(Integer idProduto) {
		products.removeIf(produto -> idProduto.equals(produto.getId()));

	}
	
}
