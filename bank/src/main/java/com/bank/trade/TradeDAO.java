package com.bank.trade;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TradeDAO {
	@Autowired
	private SqlSession sqlSession;

	public List<Map<String, Object>> tradeList(Map<String, Object> map) {
		
		return sqlSession.selectList("trade.tradeList", map);
	}

	public int totalCount() {
		
		return sqlSession.selectOne("trade.totalCount");
	}

	public List<Map<String, Object>> tradeMem(Map<String, Object> map) {
		
		return sqlSession.selectList("trade.tradeMem", map);
	}
}
