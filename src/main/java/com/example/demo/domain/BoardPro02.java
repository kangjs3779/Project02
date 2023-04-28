package com.example.demo.domain;

import java.time.*;

public class BoardPro02 {
	private Integer id;
	private String title;
	private String body;
	private String writer;
	private LocalDateTime inserted;
	
	@Override
	public String toString() {
		return "BoardPro02 [id=" + id + ", title=" + title + ", body=" + body + ", writer=" + writer + ", inserted="
				+ inserted + "]";
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public LocalDateTime getInserted() {
		return inserted;
	}
	public void setInserted(LocalDateTime inserted) {
		this.inserted = inserted;
	}
}
