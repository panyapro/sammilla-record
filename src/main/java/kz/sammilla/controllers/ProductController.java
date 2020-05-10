package kz.sammilla.controllers;

import kz.sammilla.constants.SammillaConst;
import kz.sammilla.models.Category;
import kz.sammilla.models.Product;
import kz.sammilla.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping(value = SammillaConst.URL.PRODUCT.PRODUCTS,
            method = RequestMethod.GET)
    public String allProducts(Model model) {
        Iterable<Product> products = productService.getAllProducts();
        model.addAttribute("products", products);
        return SammillaConst.JSP.PRODUCT.ALL_PRODUCT;
    }

    @RequestMapping(value = SammillaConst.URL.PRODUCT.CREATE_PRODUCT,
            method = RequestMethod.GET)
    public String showCreateProductView(Model model) {
        model.addAttribute("category", productService.getAllCategories());
        return SammillaConst.JSP.PRODUCT.CREATE;
    }

    @RequestMapping(value = SammillaConst.URL.PRODUCT.CREATE_PRODUCT,
            method = RequestMethod.POST)
    public String createProduct(Model model,
                                @ModelAttribute("product") Product product) {
        productService.createProduct(product);
        return SammillaConst.URL.REDIRECT + SammillaConst.URL.PRODUCT.PRODUCTS;
    }

    @RequestMapping(value = SammillaConst.URL.PRODUCT.EDIT_PRODUCT,
            method = RequestMethod.GET)
    public String showEditProductView(@PathVariable String productId,
                              Model model) {
        Product existProduct = productService.getProductById(Long.valueOf(productId));
        model.addAttribute("product", existProduct);

        List<Category> categories = productService.getAllCategories();
        categories.remove(existProduct.getCategory());
        model.addAttribute("category", categories);

        return SammillaConst.JSP.PRODUCT.EDIT;
    }

    @RequestMapping(value = SammillaConst.URL.PRODUCT.EDIT_PRODUCT,
            method = RequestMethod.POST)
    public String editProduct(@PathVariable String productId,
                              Model model,
                              @ModelAttribute("product") Product product) {
//        product.setId(Long.valueOf(productId)); // TODO ???
        productService.editProduct(product);
        return SammillaConst.URL.REDIRECT + SammillaConst.JSP.PRODUCT.ALL_PRODUCT;
    }

    @RequestMapping(value = SammillaConst.URL.PRODUCT.CATEGORY.CREATE_CATEGORY,
            method = RequestMethod.GET)
    public String getCreateCategoryView() {
        return SammillaConst.JSP.CATEGORY.CREATE_CATEGORY;
    }

    @PostMapping(value = SammillaConst.URL.PRODUCT.CATEGORY.CREATE_CATEGORY)
    public String createCategory(String name) {
        productService.createCategory(name);
        return SammillaConst.JSP.PRODUCT.ALL_PRODUCT;
    }
}
