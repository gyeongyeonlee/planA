package com.kh.planA.myPage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("mDAO")
public class myPageDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	
	public String myCheckListSave(String test) {
		
		System.out.println("DAO도착! = " + test);
		return sqlSession.selectOne("myPagemapper.myPageCheckList", test);
		
	}
	
	

	
}
