package kz.sammilla.sammilla.controllers;

import kz.sammilla.sammilla.constants.SammillaConst;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {

    @RequestMapping(value = SammillaConst.URL.PRODUCT.PRODUCTS,
            method = RequestMethod.GET)
    public String allProducts(Model model) {
        return SammillaConst.JSP.PRODUCT.ALL_PRODUCT;
    }
}
