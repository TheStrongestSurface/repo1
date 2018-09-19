package com.yc.biz;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.Collect;
import com.yc.bean.Goods;
import com.yc.dao.CollectDao;
import com.yc.dao.GoodsDao;

@Service
public class CollectBiz {
	@Resource
	private CollectDao collectdao;
	
	@Resource
	private GoodsDao goodsdao;
	
	/**
	 * 查询收藏商品
	 * @return 
	 */
	public List<Goods> findfavorite(int uid) {
		
		List<Collect> list=collectdao.findByuserId(uid);
		List<Goods>goods=new ArrayList<>();
		for(Collect collect:list) {
			goods.add(goodsdao.findBygoodsId(collect.getGoodsId()));
			
		}
		return goods;
		
	}
}
