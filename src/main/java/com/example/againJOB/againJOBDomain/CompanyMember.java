package com.example.againJOB.againJOBDomain;

import java.util.List;

import lombok.Data;

@Data
public class CompanyMember {
	private String id;
	private String password;
	private String companyName;
	private String businessNumber;
	private String manager;
	private List<String> phone;
	private String email;
	
}
