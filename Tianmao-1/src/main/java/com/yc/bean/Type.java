package com.yc.bean;

import javax.persistence.*;

@Entity//实体类注解
@Table(name="type")//配置表名
public class Type {
	@Id//主键注解
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 //配置主键值的生成机制
	private Integer typeId;
	private String typeType;
	private Integer typePid;
	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public String getTypeType() {
		return typeType;
	}
	public void setTypeType(String typeType) {
		this.typeType = typeType;
	}
	public Integer getTypePid() {
		return typePid;
	}
	public void setTypePid(Integer typePid) {
		this.typePid = typePid;
	}
	@Override
	public String toString() {
		return "Type [typeId=" + typeId + ", typeType=" + typeType + ", typePid=" + typePid + "]";
	}

	
}
