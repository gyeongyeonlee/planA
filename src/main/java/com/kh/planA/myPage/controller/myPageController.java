package com.kh.planA.myPage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.planA.myPage.model.service.myPageService;

@Controller
public class myPageController {
	
	@Autowired myPageService mService;
	
	// 마이페이지 연결
	@RequestMapping("myPage.me")
	public String myPage() {
		return "myPage/myPage";
	}
	
//	// 지도 클릭하기
//	@RequestMapping("")
//	public String myPage2() {
//		return "/";
//	
//	}
	
	
	// 체크리스트 저장하기 - DB로 보내기
	@RequestMapping("mCheckListSave.me")
	public String myCheckListSave(String data) {
		// String check는 아무런 값이 없음
		System.out.println("controller로 보낸 id값 :" + data + "Service로 가는중~!");
		
		String test = mService.myCheckListSave(data);
		// check에 값이 없기때문에 null값이 들어감
		
		System.out.println("test값이 나오낭" + test);
//		String mpage = mService.myCheckListSave(m);
		
		return "redirect:mCheckList.me";
	
	}
	
	// 체크리스트 불러오기 - DB에 저장된거 가져와서 띄우기
	// 화면 틀자마자 저장된 내역을 가져오는 funtction 사용하기
//	@RequestMapping("mCheckList.me")
//	public String myCheckList(String checkList) {
//		
//		// 체크한 라벨의 아이디 저장하기
//		// 준비물 체크리스트에서 submit한 값을 받아와 저장하기
//		String check = 
//		// 가져온 값 출력
//		System.out.println(check);
//		
//		// / 자른 값을 담을 배열
//		String[] testSplit = check.split("/");
//		// 배열 값 출력
//		System.out.println(testSplit);
//		
//		return "myPage/myPage";
//	}
	
	
	
	
//	// 여행 후기 작성글 불러오기
//	@RequestMapping("")
//	public String myPage3() {
//		return "/";
//	
//	}
//	
//	// 동행구하기 작성글 불러오기
//	@RequestMapping("")
//	public String myPage5() {
//		return "/";
//	}
//	
//	// 회원정보수정 
//	@RequestMapping("")
//	public String myPage6() {
//		return "/";
//	}
//	
	
	
}
