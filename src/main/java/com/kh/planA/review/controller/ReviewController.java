package com.kh.planA.review.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.planA.common.Pagination;
import com.kh.planA.review.model.service.ReviewService;
import com.kh.planA.review.model.vo.PageInfo;
import com.kh.planA.review.model.vo.Review;


@Controller
public class ReviewController {

	@Autowired
	private ReviewService rService;
	
	@RequestMapping("rList.me")
	public ModelAndView boardList(@RequestParam(value="page", required=false) Integer page,
							ModelAndView mv) {
		
		// TODO 세션으로 바꿔줘야함(지금은 임시)
		String userId = "TEST1";

		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = rService.getListCount(userId);
		
		System.out.println("listCount : " + listCount);
														
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<Review> list = rService.selectList(pi, userId);
		
		for(Review r: list) {
			System.out.println(r);
		}
		
		if(list != null) {
			mv.addObject("list", list)
			.addObject("pi", pi)
			.setViewName("review/reviewList");
		}
		
		return mv;
	}
	
	@RequestMapping("rInsertView.me")
	public String reviewInsertView() {
		return "review/reviewInsert";
	}
}
