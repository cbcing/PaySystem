package com.scujcc.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by David on 16/12/12.
 */
public class JumpHelpAction extends ActionSupport{
    public String toPayJsp() throws Exception{
        List list = (List) ActionContext.getContext().getSession().get("balance");
        if (list != null){
            ActionContext.getContext().getSession().remove("balance");
        }
        return SUCCESS;
    }
}
