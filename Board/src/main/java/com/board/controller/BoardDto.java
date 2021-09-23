package com.board.controller;


public class BoardDto {
	private int idx;
	private String title;
	private String content;
	private int date;
	
	
	
	@Override
	public String toString() {
		return "MemberDto [idx=" + idx + ", title=" + title + ", content=" + content + ", date=" + date + "]";
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getDate() {
		return date;
	}
	public void setDate(int date) {
		this.date = date;
	}
	
	
	
	
	
	
}
