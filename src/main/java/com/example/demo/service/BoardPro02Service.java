package com.example.demo.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.example.demo.domain.*;
import com.example.demo.mapper.*;

@Service
public class BoardPro02Service {
	
	@Autowired
	private BoardPro02Mapper mapper;

	public Map<String, Object> selectAll(Integer currentPage) {
		// 게시글 전체보기에서 첫줄에 보일 게시글의 인덱스
		int startIndex = (currentPage - 1) * 10;
		// 게시글 전체보기에서 보여줄 게시글의 개수
		int listCount = 10;
		// 페이지네이션 다음버튼을 위한 가장 오른쪽의 수
		int rightPagination = ((currentPage / 10) + 1) * 10;
		// 페이지네이션 이전버튼을 위한 가장 왼쪽의 수
		int leftPagination = ((currentPage / 10) * 10) + 1;
		
		List<BoardPro02> list = mapper.selectAll(startIndex, listCount);
		
		Map<String, Object> result = new HashMap<>();
		result.put("startIndex", startIndex);
		result.put("rightPagination", rightPagination);
		result.put("leftPagination", leftPagination);
		result.put("list", list);
		
		return result;
	}

	public BoardPro02 getById(Integer pageNum) {
		BoardPro02 boardPro02 = mapper.getBtId(pageNum);
		return boardPro02;
	}

	public boolean modifyById(Integer id, BoardPro02 boardPro02) {
		Integer count = mapper.modifyById(id, boardPro02);
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
