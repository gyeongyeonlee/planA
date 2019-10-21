package com.kh.planA.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@RequestMapping("join.me")
	public String showJoinView() {
		return "user/join";
	}
	
}
