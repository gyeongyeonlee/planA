package com.kh.planA.review.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.planA.review.model.dao.ReviewDao;
import com.kh.planA.review.model.vo.PageInfo;
import com.kh.planA.review.model.vo.Review;

@Service("rService")
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDao rDao;
	
	@Override
	public int getListCount(String userId) {
		return rDao.getListCount(userId);
	}

	@Override
	public ArrayList<Review> selectList(PageInfo pi, String userId) {
		return rDao.selectList(pi, userId);
	}

}
