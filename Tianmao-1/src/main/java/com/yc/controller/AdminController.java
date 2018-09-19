package com.yc.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yc.bean.Admin;
import com.yc.biz.AdminBiz;
import com.yc.util.Encrypt;

@Controller
public class AdminController {

	@Resource
	private AdminBiz adminBiz;

	@RequestMapping("/back/logins")
	public String login() {

		return "redirect:login.jsp";
	}

	@RequestMapping("back/logins.do")
	public ModelAndView logins(String name, String pwd, HttpSession session) {
		ModelAndView mav;
		String apwd = Encrypt.md5AndSha(pwd);
		Admin admin = adminBiz.login(name, apwd);

		if (admin != null) {
			session.setAttribute("AdminName", name);
			session.setAttribute("AdminPwd", apwd);
			mav = new ModelAndView("redirect:../back/index.jsp");
		} else {
			mav = new ModelAndView("redirect:../back/login.jsp");
			mav.addObject("msg", "用户名或者密码错误!");
		}
		return mav;
	}
}
