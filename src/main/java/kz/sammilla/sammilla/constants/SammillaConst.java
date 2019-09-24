package kz.sammilla.sammilla.constants;

public interface SammillaConst {

    interface URL {
        String FORWARD = "forward:";
        String REDIRECT = "redirect:";
        String ROOT = "/";
        String DASHBOARD = ROOT + "dashboard";

        interface USER {
            String USERS = ROOT + "users";
            String CREATE_USER = USERS + "/create";
            String EDIT_USER = USERS + "/edit/{userId}";
        }
    }

    interface JSP {

        interface Dashboard {
            String DASHBOARD_DIR = "dashboard";
            String DASHBOARD = DASHBOARD_DIR + "/dashboard";
        }

        interface USER {
            String USER_DIR = "user";
            String CREATE_EDIT = USER_DIR + "/create_edit";
        }
    }
}
