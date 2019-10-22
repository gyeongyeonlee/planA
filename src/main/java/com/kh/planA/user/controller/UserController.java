package com.kh.planA.user.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.planA.user.model.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService us;
	
	@RequestMapping("join.me")
	public String showJoinView() {
		return "user/join";
	}
	
	@RequestMapping("duplicationCheck.me")
	public ModelAndView duplicationCheck(@RequestParam String id, ModelAndView mv) {		
		Map map = new HashMap();
		
		try {
			int result = us.duplicationCheck(id);
			System.out.println("결과값 : " + result);
			if(result == 0) {
				map.put("isUsable", true);	
			}else {
				map.put("isUsable",false);
			}		
			mv.addAllObjects(map);
			mv.setViewName("jsonView");
		} catch (Exception e) {
			mv.addObject("msg",e.getMessage());
			mv.setViewName("common/errorPage");
		}	
		return mv;
	}
}
