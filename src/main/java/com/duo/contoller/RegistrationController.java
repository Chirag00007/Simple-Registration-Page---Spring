package com.duo.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duo.pojos.UserInfo;

@Controller
public class RegistrationController {

	@RequestMapping("/mahaveer")
	public String showRegistrationPage(@ModelAttribute("userReg") UserInfo userInfo) {
		
		userInfo.setUserName("chirag");
		userInfo.setUserEmail("@gmail.com");
		
		return "registration";
		
	}
	
	@RequestMapping("/doneRegister")
	public String setValues(@ModelAttribute("userReg") UserInfo userInfo) {
		
		
		return "user";
	}
}
