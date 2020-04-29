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

        interface PRODUCT {
            String PRODUCTS = ROOT + "products";
            String CREATE_PRODUCT = PRODUCTS + "/create";
            String EDIT_PRODUCT = PRODUCTS + "/edit/{productId}";

            interface CATEGORY {
                String CATEGORIES = ROOT + "categories";
                String CREATE_CATEGORY = CATEGORIES + "/create";
            }
        }

        interface ORDER {

        }
    }

    interface JSP {

        interface Dashboard {
            String DASHBOARD_DIR = "dashboard";
            String DASHBOARD = DASHBOARD_DIR + "/dashboard";
        }

        interface USER {
            String USER_DIR = "user";
            String CREATE = USER_DIR + "/create";
            String EDIT = USER_DIR + "/edit";
        }

        interface PRODUCT {
            String PRODUCT_DIR = "product";
            String CREATE = PRODUCT_DIR + "/create-product";
            String EDIT = PRODUCT_DIR + "/edit-product";
            String ALL_PRODUCT = PRODUCT_DIR + "/overview";
        }

        interface CATEGORY {
            String CREATE_CATEGORY = PRODUCT.PRODUCT_DIR + "/create-category";
            String EDIT_CATEGORY = PRODUCT.PRODUCT_DIR + "/edit-category";
            String ALL_CATEGORY = PRODUCT.PRODUCT_DIR + "/overview-category";
        }

        interface ORDER {

        }
    }
}
