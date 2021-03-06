package com.codingquokka.hansungenquete.domain;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CandidateDAO {
	
	@Inject 
	SqlSession sqlSession;
	
	private static String namespace = "mapper.candidateMapper";
	
	public void insert(CandidateVO vo) {
		sqlSession.insert(namespace+".insertCandidate", vo);
		
	}
	public List<CandidateVO> selectList(String election_name) {
		return sqlSession.selectList(namespace+".selectCandidate", election_name);
		
	}

}
