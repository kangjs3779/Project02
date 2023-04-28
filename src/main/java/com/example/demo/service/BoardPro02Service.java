package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;

import com.example.demo.domain.BoardPro02;
import com.example.demo.mapper.BoardPro02Mapper;

@Service
public class BoardPro02Service {
	
	@Autowired
	private BoardPro02Mapper mapper;

	public List<BoardPro02> selectAll() {
		List<BoardPro02> list =  mapper.selectAll();
		return list;
	}

	public BoardPro02 getById(Integer pageNum) {
		BoardPro02 boardPro02 = mapper.getBtId(pageNum);
		return boardPro02;
	}

	public boolean modifyById(Integer id, BoardPro02 boardPro02) {
		Integer count = mapper.modifyById(id, boardPro02);
		return count == 1;
	}
	
	
}
