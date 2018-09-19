package com.yc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import com.yc.bean.Goods;

public interface GoodsDao extends JpaRepository<Goods,Integer>{
	
	/**自动生成sql
	 * select* from goods where goods_id=?
	 * @param string
	 * @param string2
	 * @return 
	 */
	Goods  findBygoodsId(int goodsId);
	

}
