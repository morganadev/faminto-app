package server.daos;

import org.springframework.data.repository.CrudRepository;

import server.models.Pedido;

public interface PedidoDAO extends CrudRepository<Pedido, Integer> {
	
	
}
