package kz.sammilla.sammilla.controllers;

import kz.sammilla.sammilla.constants.SammillaConst;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DashboardController {

    @RequestMapping(path = SammillaConst.URL.ROOT)
    public String root() {
        return SammillaConst.URL.REDIRECT + SammillaConst.URL.DASHBOARD;
    }

    @RequestMapping(path = SammillaConst.URL.DASHBOARD,
            method = RequestMethod.GET)
    public String dashboard() {
        return SammillaConst.JSP.Dashboard.DASHBOARD;
    }
}
