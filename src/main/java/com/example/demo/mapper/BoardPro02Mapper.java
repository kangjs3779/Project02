package com.example.demo.mapper;

import java.time.LocalDateTime;
import java.util.List;

import org.apache.ibatis.annotations.*;

import com.example.demo.domain.BoardPro02;

@Mapper
public interface BoardPro02Mapper {

	@Select("""
			SELECT 
				*
			FROM Board
			LIMIT #{startIndex}, #{listCount}
			""")
	public List<BoardPro02> selectAll(Integer startIndex, Integer listCount);
	
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
				title = #{title},
				body = #{body},
				writer = #{writer}
			WHERE
				id = #{id}
			""")
	public Integer modifyById(Integer id, String title, String body, String writer);
	
	@Delete("""
			DELETE FROM Board
			WHERE id = #{id}
			""")
	public Integer delete(Integer id);

	@Insert("""
			INSERT INTO Board
				(title, body, writer)
			VALUES
				(#{title}, #{body}, #{writer})
			""")
	public Integer insertList(String title, String body, String writer);



}
