package com.example.demo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.domain.Board;
import com.example.demo.service.BoardService;

@Controller
@RequestMapping("/")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	
	@GetMapping(value = { "boardList", "/"})
	public String boardList(
			Model model,
			@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum) {
		Map<String, Object> info = service.selectAllBoard(pageNum);
		
		model.addAllAttributes(info);
		
		return "";
	}
	
	@GetMapping("getBoard")
	public void getBoard(
			@RequestParam Integer id,
			Model model) {
		Board board = service.selectById(id);
		
		model.addAttribute("board", board);
		
		
	}
	
	@GetMapping("modify")
	public void modify(
			@RequestParam("id") Integer id,
			Model model) {
		//수정 전 확인 
		Board board = service.selectById(id);
		
		model.addAttribute("board", board);
		System.out.println("working");
	}
	
	@PostMapping("modify")
	public String modifyProcess(
			@RequestParam("id") Integer id,
			Board board) {
		Integer modifyCount = service.modify(id, board);
		System.out.println("woking");
		
		return "redirect:/boardList";
	}
	
	@GetMapping("remove")
	public String removeProcess(@RequestParam("id") Integer id) {
		int count = service.delete(id);
		
		return "redirect:/boardList";
	}
	
	@GetMapping("add")
	public void addForm() {
		
	}
	
	@PostMapping("add")
	public String addProcess(
			Board board) throws Exception {
		int count1 = service.insertBoard(board);
		
		return "redirect:/boardList";
	}
	
	
}









