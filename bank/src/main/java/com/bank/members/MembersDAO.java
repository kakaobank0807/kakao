package com.bank.members;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MembersDAO {
	@Autowired
	private SqlSession sqlSession;

	public MembersDTO login(MembersDTO dto) {
		return sqlSession.selectOne("login.login", dto);
	}
}
