package kz.sammilla.sammilla.controllers;

import kz.sammilla.sammilla.constants.SammillaConst;
import kz.sammilla.sammilla.models.User;
import kz.sammilla.sammilla.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class DashboardController {


    @Autowired
    private UserService userService;

    @RequestMapping(path = SammillaConst.URL.ROOT)
    public String root() {
        return SammillaConst.URL.REDIRECT + SammillaConst.URL.DASHBOARD;
    }

    @RequestMapping(path = SammillaConst.URL.DASHBOARD,
            method = RequestMethod.GET)
    public String dashboard(Model model) {
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return SammillaConst.JSP.Dashboard.DASHBOARD;
    }
}
