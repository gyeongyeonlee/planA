package com.kh.planA.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.planA.board.model.service.myPageService;

@Controller
public class myPageController {
	
	// 마이페이지 보이기 ( 연결은 안됐음 ) 
	@RequestMapping("myPage")
	public String myPage() {
		return "myPage/myPage";
	}
}
