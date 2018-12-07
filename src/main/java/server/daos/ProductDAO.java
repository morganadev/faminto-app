package server.daos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import server.models.Product;

@Repository
public interface ProductDAO extends CrudRepository<Product,Integer>{
	public List<Product> findAll();
}


