package kz.sammilla.sammilla.services;

import kz.sammilla.sammilla.dao.OrderDao;
import kz.sammilla.sammilla.dao.UserDao;
import kz.sammilla.sammilla.models.Order;
import kz.sammilla.sammilla.models.OrderStatus;
import kz.sammilla.sammilla.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;
    @Autowired
    private OrderDao orderDao;

    public void save(User user){

        userDao.save(user);

        Order o = new Order(2L, "name", 100, new Date(), new Date(), OrderStatus.COMPLETED, user);
        orderDao.save(o);
        System.err.println("ASD");
//        user.setOrders(Arrays.asList(o));
//        userDao.save(user);
    }
}
