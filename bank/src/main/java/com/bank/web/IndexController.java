package com.bank.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	@GetMapping(value = {"/", "/index"})
	public String index(HttpSession session) {
		return "index";
	}
	
	@GetMapping("/mypage")
	public String mypage() {
		return "mypage";
	}
}
