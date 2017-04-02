package com.scujcc.dao;

import com.scujcc.domain.Admin;

/**
 * Created by David on 16/12/14.
 */
public interface LoginDao {
    public boolean isExist(Admin admin);

    public Admin getUserName(Admin admin);
}
