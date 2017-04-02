package com.scujcc.server;

import com.scujcc.dao.AdminDao;
import com.scujcc.until.MapperUntil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * Created by David on 16/12/15.
 */
public class AdminServer implements AdminDao {
    private static SqlSession sqlSession = MapperUntil.getSqlSessionFactory().openSession();

    public List getAdmins(){
        AdminDao adminDao = sqlSession.getMapper(AdminDao.class);
        List list = adminDao.getAdmins();
        return list;
    }
}
