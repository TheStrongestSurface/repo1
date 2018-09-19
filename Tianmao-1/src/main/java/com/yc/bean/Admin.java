package com.yc.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity//实体类注解
@Table(name="admin")//配置表名
public class Admin {

	@Id//主键注解
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 //配置主键值的生成机制
	private Integer adminId;
	private String adminName;
	private String adminPwd;
	private String adminTel;
	private String adminEmail;
	public Integer getAdminId() {
		return adminId;
	}
	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}
	
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPwd() {
		return adminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}
	public String getAdminTel() {
		return adminTel;
	}
	public void setAdminTel(String adminTel) {
		this.adminTel = adminTel;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminName=" + adminName + ", adminPwd=" + adminPwd + ", adminTel="
				+ adminTel + ", adminEmail=" + adminEmail + "]";
	}
	
}
