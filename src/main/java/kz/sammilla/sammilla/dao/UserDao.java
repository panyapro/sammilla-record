package kz.sammilla.sammilla.dao;

import kz.sammilla.sammilla.models.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public interface UserDao extends CrudRepository<User, Long> {

    @Query("SELECT u FROM User u")
    Collection<User> findAllUsers();

    @Query("SELECT u FROM User u where u.id = ?1")
    User getById(Long id);
}
