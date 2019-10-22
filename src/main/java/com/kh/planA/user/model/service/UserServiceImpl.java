package com.kh.planA.user.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.planA.user.model.dao.UserDao;

@Service("us")
public class UserServiceImpl implements UserService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private UserDao ud;
	
	@Override
	public int duplicationCheck(String id) throws Exception {
		return ud.duplicationCheck(sqlSession, id);
	}

}
