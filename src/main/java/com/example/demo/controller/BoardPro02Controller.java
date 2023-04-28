package com.example.demo.controller;

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
	public String boardList(Model model) {
		List<BoardPro02> list =  service.selectAll();
		
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
			Model model) {
		BoardPro02 boardPro02 = service.getById(id);
		model.addAttribute("boardPro02", boardPro02);
		System.out.println("ok");
		return "modify";
	}
	
	@PostMapping("/modify/{id}")
	public String modifyProcess(
			@PathVariable("id") Integer id
			
			) {
//		boolean ok = service.modifyById(id, boardPro02);
//		rttr.addFlashAttribute("message", "success");
		return "get";
	}
}













