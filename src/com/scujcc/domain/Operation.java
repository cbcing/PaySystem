package com.scujcc.domain;

import java.util.Date;

/**
 * Created by David on 16/12/16.
 */
public class Operation {
    private int id;
    private String user_id;
    private String name;
    private String sex;
    private String tele;
    private int manage;
    private Date manage_date;
    private int balance;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
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

    public int getManage() {
        return manage;
    }

    public void setManage(int manage) {
        this.manage = manage;
    }

    public Date getManage_date() {
        return manage_date;
    }

    public void setManage_date(Date manage_date) {
        this.manage_date = manage_date;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }
}
