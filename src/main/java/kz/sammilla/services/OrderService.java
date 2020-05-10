package kz.sammilla.services;

import kz.sammilla.models.Order;
import kz.sammilla.dao.OrderDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {

    @Autowired
    private OrderDao orderDao;

    public Iterable<Order> getOrders(){
        return orderDao.findAll();
    }
}
