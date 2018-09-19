package com.yc.bean;

import javax.persistence.*;

@Entity//实体类注解
@Table(name="user")//配置表名
public class User {
	@Id//主键注解
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 //配置主键值的生成机制
	private Integer userId;
	private String userName;
	private String userPwd;
	private String userSex;
	private String name;
	private String userTel;
	private String userEmail;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	
}
