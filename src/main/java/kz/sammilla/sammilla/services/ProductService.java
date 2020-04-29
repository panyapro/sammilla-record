package kz.sammilla.sammilla.services;

import kz.sammilla.sammilla.dao.ProductDao;
import kz.sammilla.sammilla.models.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

import static java.util.Objects.nonNull;

@Service
public class ProductService {

    @Autowired
    private ProductDao productDao;

    public Iterable<Product> getAllProducts(){
        return productDao.findAll();
    }

    public Product getProductById(Long id) {
        Optional<Product> product = productDao.findById(id);
        return product.isPresent() ? product.get() : null;
    }

    public Product createProduct(Product product){
        Optional<Product> existProduct = nonNull(product.getId()) ?
                productDao.findById(product.getId()) :
                Optional.empty();
        if(existProduct.isPresent()) {
            existProduct = Optional.of(editProduct(product));
        } else {
            existProduct = Optional.of(productDao.save(product));
        }
        return existProduct.get();
    }

    public Product editProduct(Product product){
        if ( product.getId() != null ) {
            Optional<Product> existProduct = productDao.findById(product.getId());
            if(existProduct.isPresent()){
                Product exist = existProduct.get();
                exist.setCategory(product.getCategory());
                exist.setName(product.getName());
                exist.setPrice(product.getPrice());
                productDao.save(exist);
                return exist;
            }
        }
        throw new IllegalArgumentException(String.format("Existing product not found by id - %s and name - %s",
                product.getId(),
                product.getName()));
    }
}
