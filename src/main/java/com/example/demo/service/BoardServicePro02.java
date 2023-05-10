package com.example.demo.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.*;

import com.example.demo.domain.Board;
import com.example.demo.mapper.BoardMapper;

@Service
public class BoardServicePro02 {

	@Autowired
	private BoardMapper mapper;
	
	public Map<String, Object> selectAllBoard(Integer pageNum) {
		Map<String, Object> info = new HashMap<>();
		
		int startIndex = (pageNum - 1) * 10;
		
		int leftNum = (((pageNum - 1)  / 10) * 10) + 1;
		int rightNum = leftNum + 9;
		
		int nextButtonNum = rightNum + 1;
		int prevButtonNum = leftNum - 10;
		
		int countAll = mapper.countAll();
		int lastPagination = ((countAll - 1) / 10) + 1;
		int curretNum = pageNum;
		
		List<Board> boardList = mapper.selectAllBoard(startIndex);
		
		info.put("boardList", boardList);
		info.put("rightNum", rightNum);
		info.put("leftNum", leftNum);
		info.put("nextButtonNum", nextButtonNum);
		info.put("prevButtonNum", prevButtonNum);
		info.put("lastPagination", lastPagination);
		info.put("curretNum", curretNum);
		
		return info;
	}

	
	public Board selectById(Integer id) {
		Board board = mapper.selectById(id);
		return board;
	}


	public Integer modify(Integer id, Board board) {
		int modifyCount = mapper.modify(id, board);
		return modifyCount;
	}


	public Integer delete(Integer id) {
		int count = mapper.delete(id);
		return count;
	}


	public int insertBoard(Board board, MultipartFile[] files) throws Exception {
		int count = mapper.insertBoard(board);
		
		for()
		
		return count;
	}


}










