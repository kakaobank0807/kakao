package com.bank.members;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MembersService {
	@Autowired
	private MembersDAO membersDAO;

	public MembersDTO login(MembersDTO dto) {
		return membersDAO.login(dto);
	}
}
