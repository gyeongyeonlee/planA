package com.kh.planA.user.model.service;

public interface UserService {
	// 아이디 중복확인 메서드
	int duplicationCheck(String id) throws Exception;
}
