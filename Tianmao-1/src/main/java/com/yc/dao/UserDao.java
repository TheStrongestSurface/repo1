package com.yc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.yc.bean.User;

/**
 * Account实体类
 * Integer主键类
 * @author lihaoran
 *
 */
public interface UserDao extends JpaRepository<User, Integer> {
	/**自动生成sql
	 * select* from account where userName=? and userPwd=?
	 * @param string
	 * @param string2
	 * @return 
	 */
	User findByUserNameAndUserPwd(String string1, String string2);
	
	User save(User user);
	
	@Query(nativeQuery=true,value="select * from user where user_name=?")
	User findUser(String string);


}
