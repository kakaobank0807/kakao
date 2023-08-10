 package com.bank.members;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MembersController {
	@Autowired
	private MembersService membersService;
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(HttpServletRequest request) {
		
		MembersDTO dto = new MembersDTO();
		dto.setMid(request.getParameter("id"));
		dto.setMpw(request.getParameter("pw"));
		
		dto = membersService.login(dto);
		
		if (dto.getCount() == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("mname", dto.getMname());
			session.setAttribute("mid", request.getParameter("id"));
			
			return "redirect:/index";
		} else {
			return "login2";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		if (session.getAttribute("mname") != null) {
			session.removeAttribute("mname");
		}
		if (session.getAttribute("mid") != null) {
			session.removeAttribute("mid");
		}
		session.setMaxInactiveInterval(0);
		
		session.invalidate();
		return "redirect:index";
	}
	
	
	@GetMapping("/join")
	public String join() {
		return "join";
	}
}
