package com.scujcc.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.scujcc.domain.User;
import com.scujcc.server.UserServer;

import java.util.List;

/**
 * Created by David on 16/12/15.
 */
public class UserAction extends ActionSupport {

    private String id;
    private String name;
    private String sex;
    private String tele;
    private String addr;
    private String loc;
    private String balance;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getTele() {
        return tele;
    }

    public void setTele(String tele) {
        this.tele = tele;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public String getUsers() throws Exception{
        UserServer userServer = new UserServer();
        List list = userServer.getUsers();
        ActionContext.getContext().getSession().put("users", list);
        return SUCCESS;
    }

    public String insertOrupdateUser() throws Exception{
        UserServer userServer = new UserServer();
        User user = new User();
        user.setId(id);
        user.setName(name);
        user.setSex(sex);
        user.setTele(tele);
        user.setAddr(addr);
        user.setLoc(loc);
        user.setBalance(Integer.parseInt(balance.trim()));
        boolean isExist = userServer.isExist(user);
        System.out.println("isExist For UserAction is : " + isExist);
        if (isExist){
            userServer.updateUser(user);
        }else {
            userServer.insertUser(user);
        }

        return SUCCESS;
    }

}
