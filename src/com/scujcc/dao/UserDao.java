package com.scujcc.dao;

import com.scujcc.domain.User;

import java.util.List;

/**
 * Created by David on 16/12/15.
 */
public interface UserDao {
    public List getUsers();

    public void insertUser(User user);

    public void updateUser(User user);

    public boolean isExist(User user);
}
