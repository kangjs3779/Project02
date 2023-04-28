package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.*;

import com.example.demo.domain.BoardPro02;

@Mapper
public interface BoardPro02Mapper {

	@Select("""
			SELECT 
				*
			FROM Board
			""")
	public List<BoardPro02> selectAll();
	
	@Select("""
			SELECT
				id,
				title,
				body,
				writer,
				inserted
			FROM Board
			WHERE 
				id = #{pageNum}
			""")
	public BoardPro02 getBtId(Integer pageNum);
	
	@Update("""
			UPDATE Board
			SET 
				title = ${BoardPro02.title},
				body = ${BoardPro02.body},
				writer = ${BoardPro02.writer}
			WHERE
				id = #{id}
				
			""")
	public Integer modifyById(Integer id, BoardPro02 boardPro02);



}
