package kz.sammilla.dao;

import kz.sammilla.models.Category;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CategoryDao extends CrudRepository<Category, Long> {

    Category getCategoryByName(String name);

    List<Category> findAll();
}
