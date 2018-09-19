package com.yc.biz;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.Admin;
import com.yc.dao.AdminDao;


@Service
public class AdminBiz {
	@Resource
	private AdminDao AdminDao;
	
	public Admin login(String name, String pwd) {
		Admin admin=new Admin();
		admin=AdminDao.findByAdminNameAndAdminPwd(name, pwd);
		return admin;
		
		
	}
}
