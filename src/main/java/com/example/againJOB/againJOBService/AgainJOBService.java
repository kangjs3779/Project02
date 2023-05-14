package com.example.againJOB.againJOBService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.againJOB.againJOBDomain.CompanyMember;
import com.example.againJOB.againJOBMapper.AgainJOBMapper;

@Service
public class AgainJOBService {
	
	@Autowired
	private AgainJOBMapper mapper;
	
	public void companyLogin(CompanyMember companyMember) {
		
	}

	public CompanyMember selectById(String companyMemberId) {
		CompanyMember companyMember = mapper.selectById(companyMemberId);
		
		return companyMember;
	}

}
