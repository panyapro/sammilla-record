package kz.sammilla.sammilla.services;

import kz.sammilla.sammilla.dao.OrderDao;
import kz.sammilla.sammilla.models.Order;
import kz.sammilla.sammilla.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {

    @Autowired
    private OrderDao orderDao;

    public List<Order> getOrdersByUser(User user) {
        return orderDao.getOrdersByUser(user);
    }

    public Iterable<Order> getOrders(){
        return orderDao.findAll();
    }
}
