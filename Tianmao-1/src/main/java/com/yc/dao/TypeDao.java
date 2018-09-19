package com.yc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.yc.bean.Type;


public interface TypeDao  extends JpaRepository<Type,Integer>{
	
	
	
	/**自动生成sql
	 * select* from type where typePid=?
	 * @param string
	 * @param string2
	 * @return 
	 */
	List<Type> findByTypePid(int i);
	

}
