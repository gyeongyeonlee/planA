package com.kh.planA.review.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.planA.review.model.vo.PageInfo;
import com.kh.planA.review.model.vo.Review;

@Repository("rDao")
public class ReviewDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount(String userId) {
		return sqlSession.selectOne("reviewMapper.getListCount", userId);
	}

	public ArrayList<Review> selectList(PageInfo pi, String userId) {
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("reviewMapper.selectList", userId, rowBounds);
	}

}
