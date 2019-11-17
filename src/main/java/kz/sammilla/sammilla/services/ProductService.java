package kz.sammilla.sammilla.services;

import kz.sammilla.sammilla.dao.ProductDao;
import kz.sammilla.sammilla.models.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ProductService {

    @Autowired
    private ProductDao productDao;

    public Product createProduct(Product product){
        Optional<Product> exist = productDao.findById(product.getId());
        if(exist.isPresent()) {
            exist = Optional.of(editProduct(product));
        } else {
            exist = Optional.of(productDao.save(product));
        }
        return exist.get();
    }

    public Product editProduct(Product product){
        return null;
    }
}
