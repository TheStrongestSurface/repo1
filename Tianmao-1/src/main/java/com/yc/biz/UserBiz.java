package com.yc.biz;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Service;

import com.yc.bean.User;
import com.yc.dao.UserDao;

@Service
public class UserBiz {
	
	
	@Resource
	private UserDao userdao;
	public User login(String name, String pwd) {
		User user=new User();
		 user=userdao.findByUserNameAndUserPwd(name, pwd);
		return user;
		
		
	}
	public boolean register(@Valid User user2) {
		User user=new User();
		 user=userdao.findUser(user2.getUserName());
		if(user!=null) {
			return false;
		}		
		userdao.save(user2);
		
		return true;
		
	}
	
	public boolean checkName(String userName) {
		User user=userdao.findUser(userName);
		if(user!=null) {
			return true;
		}else {
			return false;
		}
	}
	
	/**
	 * 修改信息
	 * @param user
	 */
	public void updatePwd(User user) {
		userdao.save(user);
		
	}
	/**
	 * 根据userName查询信息
	 * @param userName
	 * @return
	 */
	public User findName(String userName) {
		User user =userdao.findUser(userName);
		return user;
	}
	
	
	
	

}
