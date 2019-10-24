package com.kh.planA.user.model.service;

import com.kh.planA.user.model.vo.User;

public interface UserService {
	// 아이디 중복확인 메서드
	int duplicationCheck(String id) throws Exception;

	// 회원가입 메서드
	int insertUser(User user);

	// 이메일 전송 메서드
	void sendEmail(User user) throws Exception;

	// 이메일 인증 확인 완료 메서드
	int confirmAuthkey(User user);
}
