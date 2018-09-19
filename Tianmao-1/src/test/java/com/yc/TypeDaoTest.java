package com.yc;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import com.yc.bean.Type;
import com.yc.dao.TypeDao;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TypeDaoTest {

	@Resource
	private TypeDao typedao;
	Type type=new Type();
	@Test
	public void Type() {
		List<Type>list=typedao.findAll();
		for(Type lis:list) {
			System.out.println(lis.toString());
		}
	}
	/**
	 * 男女服饰
	 */
	@Test
	public void Type1() {
		List<Type>list=typedao.findByTypePid(1);
		for(Type lis:list) {
			System.out.println(lis.toString());
		}
	}
	/**
	 * 男装
	 */
	@Test
	public void Type2() {
		List<Type>list=typedao.findByTypePid(2);
		for(Type lis:list) {
			System.out.println(lis.toString());
		}
	}
	/**
	 * 女装
	 */
	@Test
	public void Type3() {
		List<Type>list=typedao.findByTypePid(3);
		for(Type lis:list) {
			System.out.println(lis.toString());
		}
	}
	
	
}
