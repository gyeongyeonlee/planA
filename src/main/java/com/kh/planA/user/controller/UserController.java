package com.kh.planA.user.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.planA.common.CommonUtils;
import com.kh.planA.user.model.service.UserService;
import com.kh.planA.user.model.vo.TempKey;
import com.kh.planA.user.model.vo.User;

@Controller
public class UserController {
	@Autowired
	private UserService us;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	// 회원가입 화면 보여주기
	@RequestMapping("join.me")
	public String showJoinView() {
		return "user/join";
	}
	
	// 아이디 중복 체크
	@RequestMapping("duplicationCheck.me")
	public ModelAndView duplicationCheck(@RequestParam String id, ModelAndView mv) {		
		Map map = new HashMap();
		
		try {
			int result = us.duplicationCheck(id);

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
	
	// 회원가입 기능
	@RequestMapping("insertUser.me")
	public String insertUser(Model model, User user, HttpServletRequest request,
			String birthYear, String birthMonth, String birthDay,
			@RequestParam(name="photo", required=false) MultipartFile photo) {
		System.out.println("사진 : " + photo);
		System.out.println("user : " + user);
		
		String originFileName = photo.getOriginalFilename();
		System.out.println("originFileName : " + originFileName);
		if(originFileName != "") {
			String root = request.getSession().getServletContext().getRealPath("resources");		
			String filePath = root + "\\profileImg";
			String changeName = CommonUtils.getRandomString();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			
			try {
				photo.transferTo(new File(filePath + "\\" + changeName + ext));
				
				user.setOriginName(originFileName);
				user.setChangeName(changeName);
			}catch(Exception e) {
				new File(filePath + "\\" + changeName + ext).delete();
				model.addAttribute("msg", "파일 등록 실패!");
				return "common/errorPage";
			}
		}

		String encPassword = passwordEncoder.encode(user.getUserPwd());		
		user.setUserPwd(encPassword);
		
		String userBirth = birthYear + birthMonth + birthDay;
		user.setBirthday(userBirth);
		
		int result = us.insertUser(user);
		
		if(result > 0) {
			try {
				us.sendEmail(user);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "user/confirm_before";
		}else {
			model.addAttribute("msg","회원가입 실패");
			return "common/errorPage";
		}
	}
	
	// 이메일 인증 완료했을 때
	@RequestMapping("joinConfirm.me")
	public String emailConfirm(Model model, User user) {
		int result = us.confirmAuthkey(user);
		
		if(result > 0) {
			return "user/confirm_after";
		}else {
			model.addAttribute("msg","이메일 인증 실패");
			return "common/errorPage";
		}
	}
	
	// 로그인 화면 보여주기
	@RequestMapping("login.me")
	public String showLoginView() {
		return "user/login";
	}
}
