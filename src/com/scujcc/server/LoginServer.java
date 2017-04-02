package com.scujcc.server;

import com.scujcc.dao.LoginDao;
import com.scujcc.domain.Admin;
import com.scujcc.domain.User;
import com.scujcc.until.MapperUntil;
import org.apache.ibatis.session.SqlSession;

/**
 * Created by David on 16/12/14.
 */
public class LoginServer implements LoginDao {
    private static SqlSession sqlSession = MapperUntil.getSqlSessionFactory().openSession();

    public boolean isExist(Admin admin){
        LoginDao loginDao = sqlSession.getMapper(LoginDao.class);
        boolean isExist = loginDao.isExist(admin);
        return isExist;
    }

    public Admin getUserName(Admin admin){
        LoginDao loginDao = sqlSession.getMapper(LoginDao.class);
        Admin adminHere = loginDao.getUserName(admin);
        return adminHere;
    }
}
