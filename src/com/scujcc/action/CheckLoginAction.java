package com.scujcc.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.scujcc.domain.Admin;

/**
 * Created by David on 16/12/14.
 */
public class CheckLoginAction extends ActionSupport{
    private String name;
    private String password;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String execute() throws Exception{
        Admin admin = new Admin();
        admin.setName(name);
        admin.setPassword(password);
        ActionContext.getContext().getSession().put("adminForLogin", admin);
        return SUCCESS;
    }
}
