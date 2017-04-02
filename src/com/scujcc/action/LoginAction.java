package com.scujcc.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.scujcc.domain.Admin;
import com.scujcc.server.LoginServer;

/**
 * Created by David on 16/12/14.
 */
public class LoginAction extends ActionSupport {

    public String login() throws Exception{
        Admin admin = (Admin) ActionContext.getContext().getSession().get("adminForLogin");
        LoginServer loginServer = new LoginServer();
        boolean isExist = loginServer.isExist(admin);
        System.out.println("isExist is " + isExist);
        String flag = String.valueOf(isExist);
        if (isExist == true){
            Admin adminTwo = loginServer.getUserName(admin);
            String adminName = adminTwo.getName();
            ActionContext.getContext().getSession().put("adminName", adminName);
            ActionContext.getContext().getSession().put("flag", flag);
            return SUCCESS;
        }else {
            String loginErrorMessage = "账户或密码错误!";
            ActionContext.getContext().getSession().put("loginErrorMessage", loginErrorMessage);
            return LOGIN;
        }
    }
}
