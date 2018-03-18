package com.jxgl.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.jxgl.dao.LoginDao;
import com.jxgl.domain.Dlb;

public class LoginAction {

	/*private property*/
	private Dlb user;
	private String errMsg;
	private LoginDao loginDao;
	
	
	/*set get method */
	public Dlb getUser() {
		return user;
	}
	public void setUser(Dlb user) {
		this.user = user;
	}
	
	public String getErrMsg() {
		return errMsg;
	}
	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}
	
	/* verfity login*/
	public String isLogin(){
		System.out.println(user.getXgh() + "-----" + user.getMm());
		boolean islogin = true;
		String result = "";
		//loginDao
		loginDao = new LoginDao();
		
		islogin = loginDao.isLogin(user);
		
		if(islogin){
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session = request.getSession();
			//session.setAttribute("ename", emp.getEname());
			
			//账号的权限
			//String auth = employeeDao.findAuth(emp.getEname());
			//session.setAttribute("auth", auth);
			
			result = "success";
		}else {
			errMsg = "用户名或密码错误！";
			result = "error";
		};
		
		return result;
	}
	
	
	
	
	
	
}
