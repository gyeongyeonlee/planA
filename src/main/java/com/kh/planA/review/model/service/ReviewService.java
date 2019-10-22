package com.kh.planA.review.model.service;

import java.util.ArrayList;

import com.kh.planA.review.model.vo.PageInfo;
import com.kh.planA.review.model.vo.Review;

public interface ReviewService {

	int getListCount(String userId);

	ArrayList<Review> selectList(PageInfo pi, String userId);

}
