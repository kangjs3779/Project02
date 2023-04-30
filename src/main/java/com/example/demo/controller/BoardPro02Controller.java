package com.example.demo.controller;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.domain.BoardPro02;
import com.example.demo.service.BoardPro02Service;

import jakarta.annotation.PostConstruct;

@Controller
@RequestMapping("/")
public class BoardPro02Controller {
	
	@Autowired
	private BoardPro02Service service;
	
	@GetMapping({"boardList", "/"})
	public String boardList(
			@RequestParam(value = "currentPage", defaultValue = "1") Integer currentPage,
			Model model) {
		List<BoardPro02> list =  service.selectAll(currentPage);
		
		model.addAttribute("list", list);
		
		return "boardList";
	}
	
	@GetMapping("/get/{id}")
	public String get(
			@PathVariable("id") Integer id,
			Model model) {
		BoardPro02 boardPro02 =  service.getById(id);
		model.addAttribute("boardPro02", boardPro02);
		return "get";
	}
	
	@GetMapping("/modify/{id}")
	public String modify(
			@PathVariable("id") Integer id,
			Model model
			) {
		// 수정 전 조회하기 
		BoardPro02 boardPro02 = service.getById(id);
		model.addAttribute("boardPro02", boardPro02);
		
		return "modify";
	}
	
	@PostMapping("/modify/{id}")
	public String modifyProcess ( 
			@PathVariable("id") Integer id,
			String title,
			String body,
			String writer,
			@RequestParam LocalDateTime inserted,
			RedirectAttributes rttr) {
		boolean ok = service.modifyById(id, title, body, writer);
		if(ok) {
			rttr.addFlashAttribute("message", "수정되었습니다.");
		} else {
			rttr.addFlashAttribute("message", "수정이 취소되었습니다.");
		}
		return "redirect:/get/" + id;
	}
	
	@PostMapping("/delete")
	public String delete(
			@RequestParam("id") Integer id,
			RedirectAttributes rttr) {
		boolean ok =  service.delete(id);
		if(ok) {
			rttr.addFlashAttribute("message", "성공적으로 삭제되었습니다.");
		} else {
			rttr.addFlashAttribute("message", "삭제가 취소되었습니다.");
		}
		
		return "redirect:/boardList";
	}
	
	@GetMapping("add")
	public void add() {
		 //add form
	}
	
	@PostMapping("add")
	public String addProcess(
			String title,
			String body,
			String writer,
			RedirectAttributes rttr) {
			
			service.insertList(title, body, writer);
			
			rttr.addFlashAttribute("message", "성공적으로 추가되었습니다.");
			return "redirect:/boardList";
	}
	
	
}













