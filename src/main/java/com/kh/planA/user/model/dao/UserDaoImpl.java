package com.kh.planA.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao{

	@Override
	public int duplicationCheck(SqlSessionTemplate sqlSession, String id) throws Exception{
		return sqlSession.selectOne("User.duplicationCheck", id);
	}
}
