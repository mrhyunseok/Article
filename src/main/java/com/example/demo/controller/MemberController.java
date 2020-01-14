package com.example.demo.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;

	@RequestMapping("member/join")
	public String join() {
		return "member/join";
	}

	@RequestMapping("member/doJoin")
	@ResponseBody
	public String doJoin(@RequestParam Map<String, Object> param) {
		memberService.join(param);
		StringBuilder sb = new StringBuilder();
		sb.append("alert('회원가입이 완료되었습니다.');");
		sb.append("location.replace('./member/join');");
		sb.insert(0, "<script>");
		sb.append("</script>");
		return sb.toString();
	}

}
