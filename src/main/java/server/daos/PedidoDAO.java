package server.daos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import server.models.Pedido;
import server.models.StatusPedido;

public interface PedidoDAO extends CrudRepository<Pedido, Integer> {
	List<Pedido> findByStatus(StatusPedido statusPedido);
	
}
