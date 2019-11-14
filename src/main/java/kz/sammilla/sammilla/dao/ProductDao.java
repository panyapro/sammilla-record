package kz.sammilla.sammilla.dao;

import kz.sammilla.sammilla.models.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductDao extends CrudRepository<Product, Long> {

}
