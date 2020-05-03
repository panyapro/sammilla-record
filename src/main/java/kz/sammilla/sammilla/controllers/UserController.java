package kz.sammilla.sammilla.controllers;

import kz.sammilla.sammilla.constants.SammillaConst;
import kz.sammilla.sammilla.models.User;
import kz.sammilla.sammilla.services.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {

    Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @RequestMapping(value = SammillaConst.URL.USER.CREATE_USER,
            method = RequestMethod.GET)
    public String getCreateUserForm(){
        return SammillaConst.JSP.USER.CREATE;
    }

    @RequestMapping(value = SammillaConst.URL.USER.CREATE_USER,
            method = RequestMethod.POST)
    public String createUser(@ModelAttribute("user") User user){
        userService.save(user);
        return SammillaConst.JSP.USER.CREATE;
    }

    @RequestMapping(value = SammillaConst.URL.USER.EDIT_USER,
        method = RequestMethod.GET)
    public String getEditUserForm(@PathVariable("userId") String userId, Model model){
        try {
            Long id = Long.valueOf(userId);
            model.addAttribute("user", userService.getUserById(id));
            return SammillaConst.JSP.USER.EDIT;
        } catch (Exception e) {
            logger.error("User id is not valid", e);
            return SammillaConst.URL.FORWARD + SammillaConst.URL.DASHBOARD;
        }
    }

    @GetMapping(value = SammillaConst.URL.USER.USERS)
    public String getAllUsers(Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return SammillaConst.JSP.USER.ALL_USERS;
    }
}
