package com.bank.trade;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class TradeController {
	@Autowired
	private TradeService tradeService;

	@GetMapping("/trade")
	public String trade() {
		return "trade";
	}

	@GetMapping("/tradeList")
	public String tradeList(@RequestParam(value = "pageNo", required = false, defaultValue = "1") int pageNo , HttpSession session, Model model) {
		
		if (session.getAttribute("mid") != null) {
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(pageNo);
		paginationInfo.setRecordCountPerPage(10);
		paginationInfo.setPageSize(10);
		int totalCount = tradeService.totalCount();
		paginationInfo.setTotalRecordCount(totalCount);
		int firstRecordIndex = paginationInfo.getFirstRecordIndex();
		int recordCountPerPage = paginationInfo.getRecordCountPerPage();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("firstRecordIndex", firstRecordIndex);
		map.put("recordCountPerPage", recordCountPerPage);
		map.put("mid", session.getAttribute("mid"));
		List<Map<String, Object>> list = tradeService.tradeList(map);
		List<Map<String, Object>> list2 = tradeService.tradeMem(map);
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		model.addAttribute("paginationInfo", paginationInfo);
		return "tradeList";
		}else {
			return "redirect:/login";
		}
	}
}
