package com.scujcc.server;

import com.scujcc.dao.UserDao;
import com.scujcc.domain.User;
import com.scujcc.until.MapperUntil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * Created by David on 16/12/15.
 */
public class UserServer implements UserDao {
    private static SqlSession sqlSession = MapperUntil.getSqlSessionFactory().openSession();

    public List getUsers(){
        UserDao userDao = sqlSession.getMapper(UserDao.class);
        List list = userDao.getUsers();
        return list;
    }

    public void insertUser(User user){
        System.out.println("this is UserServer insertUser()");
        UserDao userDao = sqlSession.getMapper(UserDao.class);
        userDao.insertUser(user);
    }

    public void updateUser(User user){
        System.out.println("this is UserServer updateUser()");
        UserDao userDao = sqlSession.getMapper(UserDao.class);
        userDao.updateUser(user);
    }

    public boolean isExist(User user){
        System.out.println("this is UserServer isExist()");
        UserDao userDao = sqlSession.getMapper(UserDao.class);
        boolean isExist = userDao.isExist(user);
        return isExist;
    }
}
