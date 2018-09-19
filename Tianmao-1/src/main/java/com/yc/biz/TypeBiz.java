package com.yc.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.Type;
import com.yc.dao.TypeDao;

@Service
public class TypeBiz {

	@Resource
	private TypeDao typedao;
	/**
	 * 根据id查询type集合
	 * @param i
	 * @return 
	 */
	public List<Type> findType(int i) {
		List<Type> type=typedao.findByTypePid(i);
		return type;
	}
	
	public List<List<Type>> findTypes(int i) {
		List<Type> type=typedao.findByTypePid(i);
		List<List<Type>> type2 = null;
		for(Type typ:type) {
			type2.add(typ.getTypeId(), findType(typ.getTypeId()));//2  3  
		}
		
		return type2;
	}
	
	
}
