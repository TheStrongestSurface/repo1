package com.yc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.yc.bean.Collect;

public interface CollectDao extends JpaRepository<Collect,Integer>{
	
	/**自动生成sql
	 * select* from collect where user_id=?
	 * @param string
	 * @param string2
	 * @return 
	 */
	List<Collect>  findByuserId(int userId);

}
