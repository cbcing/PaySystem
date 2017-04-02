package com.scujcc.server;

import com.scujcc.dao.PayDao;
import com.scujcc.domain.Operation;
import com.scujcc.domain.User;
import com.scujcc.until.MapperUntil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * Created by David on 16/12/12.
 */
public class PayServer implements PayDao{
    private static SqlSession sqlSession = MapperUntil.getSqlSessionFactory().openSession();

    @Override
    public void addMoney(User user){
        PayDao payDao = sqlSession.getMapper(PayDao.class);
        System.out.println("this is PayServer addMoney()");
        payDao.addMoney(user);
    }

    @Override
    public List queryBalance(User user){
        PayDao payDao = sqlSession.getMapper(PayDao.class);
        System.out.println("this is PayServer queryBalance()");
        List list = payDao.queryBalance(user);
        return list;
    }

    public List queryOperation(User user){
        System.out.println("this is PayServer queryOperation()");
        PayDao payDao = sqlSession.getMapper(PayDao.class);
        List list = payDao.queryOperation(user);
        return list;
    }

    public void insertOperation(Operation operation){
        System.out.println("this is PayServer insertOperation()");
        PayDao payDao = sqlSession.getMapper(PayDao.class);
        payDao.insertOperation(operation);
    }
}
