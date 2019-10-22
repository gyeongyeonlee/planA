package com.kh.planA.myPage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.planA.myPage.model.dao.myPageDAO;

@Service("mService") // Service는 bService라는 이름으로 불림
public class myPageServiceImpl implements myPageService{
	
	@Autowired
	private myPageDAO mDAO;
	

	@Override
	public String myCheckListSave(String test) {
		System.out.println("Service 도착! = " + test);
		return mDAO.myCheckListSave(test);
	}
	
}
