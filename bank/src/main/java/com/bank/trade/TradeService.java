package com.bank.trade;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TradeService {
	@Autowired
	private TradeDAO tradeDAO;
}
