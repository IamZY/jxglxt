package com.jxgl.action;

import java.io.InputStream;
import java.io.StringBufferInputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.jxgl.dao.LoginDao;
import com.jxgl.domain.Dlb;

public class LoginAction {

	/*private property*/
	private Dlb user;
	private LoginDao loginDao;
	private InputStream ajaxInputStream;
	
	
	/*set get method */
	public Dlb getUser() {
		return user;
	}
	public void setUser(Dlb user) {
		this.user = user;
	}
		
	
	public InputStream getAjaxInputStream() {
		return ajaxInputStream;
	}
	public void setAjaxInputStream(InputStream ajaxInputStream) {
		this.ajaxInputStream = ajaxInputStream;
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
			
			//ÕËºÅµÄÈ¨ÏÞ
			//String auth = employeeDao.findAuth(emp.getEname());
			//session.setAttribute("auth", auth);
			
			result = "success";
		}else {
			result = "error";
		};
		
		ajaxInputStream = new StringBufferInputStream(result);
		
		return "success";
	}
	
		
}
