package com.example.againJOB.againJOBMapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.againJOB.againJOBDomain.CompanyMember;

@Mapper
public interface AgainJOBMapper {
	
	@Select("""
			SELECT * FROM companyMember WHERE id = #{id}
			""")
	CompanyMember selectById(String companyMemberId);

}
