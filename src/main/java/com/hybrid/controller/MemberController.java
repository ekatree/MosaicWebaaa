package com.hybrid.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hybrid.domain.MemberInfo;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	static Logger log = LoggerFactory.getLogger(MemberController.class);
	@RequestMapping("/registForm")
	public String registForm(){
		log.info("###############################");
		log.info("registForm().......");
		log.info("###############################");
		
		
		return "registForm";	//WEB-INF/jsp/registForm 으로 포워드 시킴. 그전에 application.property 속성 설정 
	}
	
	@RequestMapping("/regist")
	public String regist(MemberInfo memberInfo){
		log.info("###############################");
		log.info("regist().......");
		log.info("###############################");
		log.info("id = " + memberInfo.getId());
		log.info("name = " + memberInfo.getName());
		log.info("Email = " + memberInfo.getEmail());
		
		
		return "regist";
	}
	
}
