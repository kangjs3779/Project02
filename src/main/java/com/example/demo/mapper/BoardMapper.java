package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.domain.Board;

@Mapper
public interface BoardMapper {

	@Select("""
			SELECT 
				id,
				title,
				body,
				writer,
				inserted
			FROM Board
			ORDER BY id DESC
			LIMIT #{startIndex}, 10
			""")
	public List<Board> selectAllBoard(int startIndex);

	@Select("""
			SELECT 
				id,
				title,
				body,
				writer,
				inserted
			FROM Board
			WHERE id = #{id}
			""")
	public Board selectById(Integer id);
	
	@Update("""
			UPDATE Board
			SET
				title = #{board.title},
				body = #{board.body}
			WHERE id = #{id}
			""")
	public int modify(Integer id, Board board);
	
	@Delete("""
			DELETE FROM Board
			WHERE id = #{id}
			""")
	public int delete(Integer id);

	@Insert("""
			INSERT INTO Board
				(title, body, writer)
			VALUES
				(#{title}, #{body}, #{writer})
			""")
	public Integer insertBoard(Board board);

	@Select("""
			SELECT COUNT(*) FROM Board
			""")
	public int countAll();

	


}






