package com.scujcc.dao;

import com.scujcc.domain.Operation;
import com.scujcc.domain.User;

import java.util.List;

/**
 * Created by David on 16/12/12.
 */
public interface PayDao {
    public void addMoney(User user);

    public List queryBalance(User user);

    public List queryOperation(User user);

    public void insertOperation(Operation operation);
}
