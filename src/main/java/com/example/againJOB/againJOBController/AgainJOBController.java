package com.example.againJOB.againJOBController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.againJOB.againJOBDomain.CompanyMember;
import com.example.againJOB.againJOBService.AgainJOBService;

@Controller
@RequestMapping("AgainJOB")
public class AgainJOBController {
	
	@Autowired
	private AgainJOBService service;
	
	@GetMapping("mainLogin")
	public void mainLogin() {
		// 메인 로그인 페이지 forward
		System.out.println("메인 로그인 페이지 실행");
	}
	
	@GetMapping("companyLogin")
	public void companyLoginForm() {
		// 기업 로그인 페이지 forward
		System.out.println("기업 로그인 페이지 실행");
	}
	
	@PostMapping("companyLogin")
	public String companyLoginProcess(
			CompanyMember companyMember,
			RedirectAttributes rttr) {
		System.out.println("로그인 확인 프로세스");
		//로그인 확인 
		service.companyLogin(companyMember);
		
		//redirect 시 id 보내기 
		rttr.addAttribute("companyMemberId", companyMember.getId());
		return "redirect:/AgainJOB/companyMemberInfo";
	}
	
	@GetMapping("companyMemberInfo")
	public void companyMemberInfo(
			@RequestParam("companyMemberId") String companyMemberId,
			Model model) {
		System.out.println("기업 회원 정보 조회");
		//기업 회원 정보 forward
		CompanyMember companyMember =  service.selectById(companyMemberId);
		model.addAttribute("companyMember", companyMember);
		
	}
	
	@GetMapping("companyMemberModify")
	public void companyMemberModifyForm(CompanyMember companyMember) {
		System.out.println("정보 수정 페이지");
		//회원 정보 수정 페이지 forward
	}
	
	@PostMapping("companyMemberModify")
	public String companyMemberModifyProcess() {
		System.out.println("정보 수정 프로세스");
		//회원 정보 수정 프로세스 
		return "redirect:/AgainJOB/companyMemberInfo";
	}
	
	@GetMapping("companyJoin")
	public void companyJoinForm() {
		System.out.println("기업 회원 가입 페이지");
		// 기업 회원가입 페이지 forward
	}
	
	@PostMapping("companyJoin")
	public String companyJoinProcess() {
		System.out.println("기업 회원가입 프로세스");
		// 기업 회원가입 페이지 process
		
		return "redirect:/AgainJOB/companyLogin";
	}
	
	@GetMapping("addJobPosting")
	public void addJobPostingForm() {
		System.out.println("채용 공고 추가 페이지");
		//채용 공고 추가 페이지 forward
	}
	
	@PostMapping("addJobPosting")
	public void addJobPostingProcess() {
		System.out.println("채용 공고 추가 프로세스");
		//채용 공고 추가 프로세스 
	}
	
	@GetMapping("readResume")
	public void readResume() {
		System.out.println("이력서 조회 페이지");
		//이력서 조회하기 페이지 forward
	}
	
	@GetMapping("jobPostInfo")
	public void jobPostInfo() {
		//공고 조회
	}
	
//	@GetMapping("jobPostInfo?postId=${postId}")
//	public void jobPostInfo(@PathVariable("postId") Integer postId) {
//		//공고 조회
//		System.out.println("Wis");
//	}
}
