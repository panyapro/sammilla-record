package kz.sammilla.sammilla.constants;

public interface SammillaConst {

    interface URL {
        String FORWARD = "forward:";
        String REDIRECT = "redirect:";
        String ROOT = "/";
        String DASHBOARD = ROOT + "dashboard";
        String USERS = ROOT + "users";
    }

    interface JSP {

        interface Dashboard {
            String DASHBOARD_DIR = "dashboard";
            String DASHBOARD = DASHBOARD_DIR + "/dashboard";
        }
    }
}
