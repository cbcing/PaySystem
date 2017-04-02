package com.scujcc.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.scujcc.server.AdminServer;

import java.util.List;

/**
 * Created by David on 16/12/15.
 */
public class AdminAction extends ActionSupport {

    public String getAdmins() throws Exception{
        AdminServer adminServer = new AdminServer();
        List list = adminServer.getAdmins();
        ActionContext.getContext().getSession().put("admins", list);
        return SUCCESS;
    }
}
