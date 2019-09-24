package kz.sammilla.sammilla.controllers;

import kz.sammilla.sammilla.constants.SammillaConst;
import kz.sammilla.sammilla.models.User;
import kz.sammilla.sammilla.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = SammillaConst.URL.USER.CREATE_USER,
            method = RequestMethod.GET)
    public String getCreateUserForm(){
        return SammillaConst.JSP.USER.CREATE_EDIT;
    }

    @RequestMapping(value = SammillaConst.URL.USER.CREATE_USER,
            method = RequestMethod.POST)
    public String createUser(@ModelAttribute("user") User user){

        userService.save(user);
        return SammillaConst.JSP.USER.CREATE_EDIT;
    }

}
