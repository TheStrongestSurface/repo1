package com.yc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.yc.bean.Goods;
import com.yc.bean.Type;
import com.yc.bean.User;
import com.yc.biz.CollectBiz;
import com.yc.biz.TypeBiz;
import com.yc.biz.UserBiz;
import com.yc.util.Encrypt;




@Controller
public class tianmaoController {
	@Resource
	private UserBiz ubiz;
	
	@Resource
	private TypeBiz tbiz;
	
	@Resource
	private CollectBiz cole;
	
	
	 @RequestMapping("/login")
	    public String login(){
		 
	        return "redirect:login.jsp";
	    }
	
	 @RequestMapping("/login.do")
	    public ModelAndView logins(String name,String pwd,HttpSession session){
		 ModelAndView mav;
		 String apwd = Encrypt.md5AndSha(pwd);
		 User user=ubiz.login( name, apwd);
		
		if(user!=null) {
			session.setAttribute("username", name);
			session.setAttribute("password", apwd);
			mav=new ModelAndView("index");
			
			
		}else {
			mav=new ModelAndView("redirect:login.jsp");
			mav.addObject("msg","用户名或者密码错误");
			
		}
		return mav;
		  
	    }
	 @RequestMapping("/regiest.do")
	 public  ModelAndView register(@Valid User user,BindingResult bindingResult) {
		 ModelAndView mav;
		 String apwd = Encrypt.md5AndSha(user.getUserPwd());
		 System.out.println(user.getUserName());
		 user.setUserPwd(apwd);
		 if(ubiz.register(user)) {
				mav=new ModelAndView("redirect:login.jsp");
			}else {
				mav=new ModelAndView("redirect:regiest.jsp");
				mav.addObject("msg","用户注册失败，账户被使用!");
			}
			return mav;
		
		 
	 }
	 
	 @RequestMapping("/checkName.do")
	 public void testAjax1(Writer out,HttpServletRequest request, HttpServletResponse response) throws IOException {
		String userName=request.getParameter("userName");
		if(ubiz.checkName(userName)) {
			 out.write("yes");
		}else {
		 out.write("no");
		}
	 }
	 
	 
	 @RequestMapping("/member.do")
	 public String member(){
		 
	        return "member";
	    }
	 
	  @RequestMapping("/password.do")
	  public String password(){
			 
	        return "password_edit";
	    }
	  
	  @RequestMapping("edit.do")
	  public ModelAndView edit(HttpServletRequest request, HttpServletResponse response,HttpSession session) {
		  ModelAndView mav;
		  String userPwd=request.getParameter("userPwd");
		  String usercPwd=request.getParameter("usercPwd");
		  System.out.println(userPwd);
		  System.out.println(usercPwd);
		  String userName=(String) session.getAttribute("username");
		  String pwd=(String) session.getAttribute("password");
		  if(!pwd.equals(userPwd)) {
			  mav=new ModelAndView("password_edit");
			  mav.addObject("msg","密码修改失败");
		  }else {
		  User user=ubiz.findName(userName);
		  user.setUserPwd(usercPwd);
		  ubiz.updatePwd(user);
		   mav=new ModelAndView("redirect:login.jsp");
		  }
		return mav;
		  
	  }
	  
	  @RequestMapping("favorite.do")
	  public String favorite(HttpSession session ,Model mav){
		  String userName=(String) session.getAttribute("username");
		  String pwd=(String) session.getAttribute("password");
		  User user=ubiz.findName(userName);
		  List<Goods>good=cole.findfavorite(user.getUserId());
		  mav.addAttribute("goods", good);
	       return "favorite";
	    }
	  
	  @RequestMapping("xiugai.do")
	  public String xiugai(HttpSession session, Model mav){
		  String userName=(String) session.getAttribute("username");
		  String pwd=(String) session.getAttribute("password");
		  User user=ubiz.findName(userName);
		  mav.addAttribute("user", user);
		  return "member_info";
	  }
	  
	  
	  @RequestMapping("member_info.do")
	  public String userInfo(@Valid User user,BindingResult bindingResult, HttpSession session ,Model mav) {
		  System.out.println(user.getUserSex());
		  String userName=(String) session.getAttribute("username");
		  String pwd=(String) session.getAttribute("password");
		  user.setUserId(ubiz.findName(userName).getUserId());
		  user.setUserName(userName);
		  user.setUserPwd(pwd);
		  ubiz.updatePwd(user);
		  return "index";
	  }
	  
	 
	  
	  
}
