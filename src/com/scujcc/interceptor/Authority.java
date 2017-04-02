package com.scujcc.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

/**
 * Created by David on 16/12/14.
 */
public class Authority extends MethodFilterInterceptor {
    @Override
    public String doIntercept(ActionInvocation actionInvocation) throws Exception{
        boolean flag = (boolean) ActionContext.getContext().getSession().get("flag");
        if (flag == true){
            return actionInvocation.invoke();
        } else {
            return "login";
        }
    }
}
