package com.scujcc.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Map;

/**
 * Created by David on 16/12/15.
 */
public class ExitSystem extends ActionSupport {
    public String exitSystem() throws Exception{
        Map map = ActionContext.getContext().getSession();
        map.remove("flag");
        map.remove("adminName");
        map.remove("loginErrorMessage");
        return SUCCESS;
    }
}
