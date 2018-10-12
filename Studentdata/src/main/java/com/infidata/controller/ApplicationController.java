package com.infidata.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.infidata.modal.Office;
import com.infidata.modal.User;
import com.infidata.repository.UserRepository;
import com.infidata.services.OfficeService;
import com.infidata.services.UserService;

@Controller
public class ApplicationController {

	@Autowired
	UserService userService;

	@Autowired
    UserRepository userRepository;
	
	@Autowired
	OfficeService officeService;
	
	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}

	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcomepage";
	}

	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	@RequestMapping("/offdata")	
	public String registerform(HttpServletRequest request)
	{
		request.setAttribute("mode", "MODE_DATA");
		return "welcomepage";
	}
	
	@PostMapping("/office-user")
	public String registerOffice(@ModelAttribute Office office, BindingResult bindingResult, HttpServletRequest request) {
		officeService.saveMyOffice(office);
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	@GetMapping("/show-users")
	public String showAllUsers(HttpServletRequest request) {
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "welcomepage";
	}
	
	@RequestMapping("/delete-user")
	public String deleteUser(@RequestParam int id, HttpServletRequest request) {
		userService.deleteMyUser(id);
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "welcomepage";
	}
	
	@RequestMapping(value = "/search",method=RequestMethod.POST)
    public String findAllByInternship(@RequestParam(value="internship", required=false) String internship, ModelMap modelMap,HttpServletRequest request) {
        List<User> user =  userRepository.findAllByInternship(internship);
		modelMap.addAttribute("users", user);
		request.setAttribute("mode", "ALL_USERS");
        return "welcomepage";
    }
//		@RequestMapping("/edit-user")
//	public String editUser(@RequestParam int id,HttpServletRequest request) {
//	request.setAttribute("user", userService.editUser(id));
//		request.setAttribute("mode", "MODE_UPDATE");
//		return "welcomepage";
//}


}
