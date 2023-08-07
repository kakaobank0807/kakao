package com.bank.trade;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TradeDAO {
	@Autowired
	private SqlSession sqlSession;
}
