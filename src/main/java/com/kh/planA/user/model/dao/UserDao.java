package com.kh.planA.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

public interface UserDao {
	// 아이디 중복확인 메서드
	int duplicationCheck(SqlSessionTemplate sqlSession, String id) throws Exception;

}
