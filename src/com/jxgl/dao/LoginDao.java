package com.jxgl.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.jxgl.dao.impl.LoginDaoImpl;
import com.jxgl.domain.Dlb;
import com.jxgl.hibernate.HibernateSessionFactory;

public class LoginDao implements LoginDaoImpl{

	@Override
	public boolean isLogin(Dlb user) {
		boolean islogin = true;
		
		System.out.println(user.getMm());
		
		//Session session = HibernateSessionFactory.getSession();
		Session session = HibernateSessionFactory.getSession();
		String hql = "from Dlb where xgh=? and mm=?";
		Query query = session.createQuery(hql);
		query.setString(0, user.getXgh());
		query.setString(1, user.getMm());
		
		List list = query.list();
		
		if(list.isEmpty()){
			islogin = false;
		}
		
		return islogin;
	}
	
	
}
