package kz.sammilla.sammilla.dao;

import kz.sammilla.sammilla.models.Order;
import kz.sammilla.sammilla.models.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderDao extends CrudRepository<Order, Long> {

    List<Order> getOrdersByUser(User user);

//    List<Order> findOrders();
}