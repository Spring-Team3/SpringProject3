package com.board.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class BoardController {
	
	/*
	 * 
	 * MemberController - memberService - memberDao - memberDto - memeber.xml
	 * 
	 * JAVA/SPRING sql�α� Ȯ�� ���� ���
	 * 	 https://freehoon.tistory.com/113 
	 * */
	
	@Autowired
	SqlSession sqlsession;
	
	@RequestMapping(value = "boardlist")
	public String memberlist(Model model) {
		List<BoardDto> list = sqlsession.selectList("board.select");
		
		for(BoardDto dto : list) {
			System.out.println("dto= "+dto);
		}
		model.addAttribute("aa","bb");
		model.addAttribute("alist",list);
		return "board/list"; 
	}
	
	/*
	 * 
	 * 
	 * */
//	@RequestMapping(value = "memberinsert")
//	public String memberinsert(String id,String pw,String age,String gender,MemberDto dto) {
//		System.out.println("id= "+id);
//		System.out.println("pw= "+pw);
//		System.out.println("age= "+age);
//		System.out.println("gender= "+gender);
//		System.out.println("dto= "+dto);
//		sqlsession.insert("member.insert");
//		return "member/insert";
//	}
	
	@RequestMapping(value = "boardinsert")
	public String boardinsert(BoardDto dto) {
		sqlsession.insert("board.insert",dto);
		return "board/insert";
	}
	
	@RequestMapping(value = "boardinsertform")
	public String boardinsertform() {
		return "board/insertform";
	}
	
	
	@RequestMapping(value = "boardupdateform")
	public String boardupdateform(int idx,Model model) {
		System.out.println(idx);
		BoardDto dto = sqlsession.selectOne("board.selectone",idx);
		System.out.println(dto);
		model.addAttribute("board",dto);
		return "board/updateform";
	}
	
	@RequestMapping(value = "boardupdate")
	public String boardupdate(BoardDto dto,Model model) {
		System.out.println("update ========\n"+dto);
		sqlsession.update("board.update",dto);
		return "redirect:boardlist";
	}
	
	
	
	@RequestMapping(value = "boarddelete")
	public String boarddelete(int idx,Model model) {
		sqlsession.delete("board.delete",idx);
		return "redirect:boardlist";
	}
	
	@RequestMapping(value = "/view",method = RequestMethod.GET)
	public void getView() throws Exception {
		
	}
	
	
	
	
}
