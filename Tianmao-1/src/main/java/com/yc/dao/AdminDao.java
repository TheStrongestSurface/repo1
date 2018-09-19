package com.yc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.yc.bean.Admin;
import com.yc.util.Encrypt;

public interface AdminDao extends JpaRepository<Admin, Integer>{

	
	Admin findByAdminNameAndAdminPwd(String name, String pwd);

}
