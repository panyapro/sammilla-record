package kz.sammilla.services;

import kz.sammilla.dao.OrderDao;
import kz.sammilla.dao.UserDao;
import kz.sammilla.models.Order;
import kz.sammilla.models.OrderStatus;
import kz.sammilla.models.User;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;
    @Autowired
    private OrderDao orderDao;

    public void save(User user){
        if(StringUtils.isEmpty(user.getName()) || StringUtils.isEmpty(user.getPhoneNumber())){
            throw new IllegalArgumentException("Не все данные введены");
        }
        List<Order> orderList = new ArrayList();
        orderList.add(new Order(){{
            setStatus(OrderStatus.COMPLETED);
            setPrice(1000);
        }});

//        orderDao.save(orderList.get(0));
        user.setOrders(orderList);
        userDao.save(user);
    }

    public User save(String name, String phone, String comment) {
        User u = new User();
        u.setName(name);
        u.setPhoneNumber(phone);
        u.setComment(comment);
        this.save(u);
        return u;
    }

    public User edit(String name, String phone, String comment, Long id) {
        User oldUser = userDao.getById(id);
        if(oldUser == null) {
            oldUser = new User();
        }
        this.save(name, phone, comment);
        return oldUser;
    }

    public User getUserById(Long userId) {
        return userDao.getById(userId);
    }

    public List<User> getAllUsers() {
        return new ArrayList<>(userDao.findAllUsers());
    }
}
