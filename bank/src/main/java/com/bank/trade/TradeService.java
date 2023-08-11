package com.bank.trade;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TradeService {
	@Autowired
	private TradeDAO tradeDAO;

	public List<Map<String, Object>> tradeList(Map<String, Object> map) {
		
		return tradeDAO.tradeList(map);
	}

	public int totalCount() {
		
		return tradeDAO.totalCount();
	}

	public List<Map<String, Object>> tradeMem(Map<String, Object> map) {
		
		return tradeDAO.tradeMem(map);
	}
}
