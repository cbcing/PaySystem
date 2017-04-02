package com.scujcc.action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.scujcc.domain.Operation;
import com.scujcc.domain.User;
import com.scujcc.server.PayServer;
import com.sun.tools.corba.se.idl.InterfaceGen;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by David on 16/12/12.
 */
public class PayAction extends ActionSupport {
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

    public String addMoney() throws Exception{
        User user = new User();
        Operation operation = new Operation();
        PayServer payServer = new PayServer();

        user.setTele(tele);
        int balanceHere = Integer.parseInt(balance.trim());
        user.setBalance(balanceHere);

        List list = payServer.queryBalance(user);
        User userHelp = (User) list.get(0);

        Date date = new Date();
        //DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        operation.setUser_id(userHelp.getId());
        operation.setName(userHelp.getName());
        operation.setSex(userHelp.getSex());
        operation.setTele(userHelp.getTele());
        operation.setManage(Integer.parseInt(balance.trim()));
        operation.setManage_date(date);
        operation.setBalance(userHelp.getBalance()+Integer.parseInt(balance.trim()));

        payServer.insertOperation(operation);
        payServer.addMoney(user);

        ActionContext.getContext().getSession().put("tele", tele);

        return SUCCESS;
    }

    public String queryBalance() throws Exception{
        User user = new User();
        PayServer payServer = new PayServer();

        if (tele == null){
            String teleHere = (String) ActionContext.getContext().getSession().get("tele");
            user.setTele(teleHere);
        } else {
            ActionContext.getContext().getSession().put("tele", tele);
            user.setTele(tele);
        }

        List list = payServer.queryBalance(user);

        ActionContext.getContext().getSession().put("balance", list);
        return SUCCESS;
    }

    public String queryOperation() throws Exception{
        User user = new User();
        PayServer payServer = new PayServer();

        if (tele == null){
            String teleHere = (String) ActionContext.getContext().getSession().get("tele");
            user.setTele(teleHere);
        } else {
            user.setTele(tele);
        }

        List list = payServer.queryOperation(user);
        ActionContext.getContext().getSession().put("operation", list);

        return SUCCESS;
    }
}
