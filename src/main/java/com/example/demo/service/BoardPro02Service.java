package com.example.demo.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;

import com.example.demo.domain.BoardPro02;
import com.example.demo.mapper.BoardPro02Mapper;

@Service
public class BoardPro02Service {
	
	@Autowired
	private BoardPro02Mapper mapper;

	public List<BoardPro02> selectAll(Integer currentPage) {
		int startIndex = (currentPage - 1) * 10;
		int listCount = 10;
		List<BoardPro02> list = mapper.selectAll(startIndex, listCount);
		return list;
	}

	public BoardPro02 getById(Integer pageNum) {
		BoardPro02 boardPro02 = mapper.getBtId(pageNum);
		return boardPro02;
	}

	public boolean modifyById(Integer id, String title, String body, String writer) {
		Integer count = mapper.modifyById(id, title ,body, writer);
		return count == 1;
	}
	
	public boolean delete(Integer id) {
		Integer count = mapper.delete(id);
		return count == 1;
	}

	public boolean insertList(String title, String body, String writer) {
		Integer count = mapper.insertList(title, body, writer);
		return count == 1;
	}
	
}
