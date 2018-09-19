package com.yc;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.yc.bean.Collect;
import com.yc.bean.Goods;
import com.yc.bean.User;
import com.yc.dao.CollectDao;
import com.yc.dao.GoodsDao;
import com.yc.dao.UserDao;

@RunWith(SpringRunner.class)
@SpringBootTest
public class Tianmao1ApplicationTests {

	@Resource
	private UserDao userdao;
	@Resource
	private CollectDao collectdao;
	@Resource
	private GoodsDao goodsdao;
	User user=new User();
	@Test
	public void contextLoads() {
		
		user.setUserName("李炎林1");
		System.out.println(user);
		user.setUserPwd("123");
		user.setUserTel("125512361");
		user.setUserEmail("45613246");
		 user=userdao.save(user);
		 System.out.println(user);
		
		
		
	}
	@Test 
	public void  find() {
		user=userdao.findUser("张三");
		System.out.println(user.getUserId());
	}
	
	@Test
	public void finds() {
		List<Collect> list=collectdao.findByuserId(1);
		System.out.println(list.get(0).getGoodsId());
	}

	@Test
	public void findgoods() {
		Goods goods=goodsdao.findBygoodsId(1);
		System.out.println(goods.toString());
	}
	
}
