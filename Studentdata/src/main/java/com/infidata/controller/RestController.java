package com.infidata.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.infidata.modal.Office;
import com.infidata.modal.User;
import com.infidata.services.OfficeService;
import com.infidata.services.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private OfficeService officeService;

	@GetMapping("/")
	public String hello() {
		return "This is Home page";
	}
	
	@GetMapping("/saveuser")
	public String saveUser(@RequestParam String name, @RequestParam String mobile, @RequestParam String email, @RequestParam String college, @RequestParam String branch,@RequestParam String semester,@RequestParam String address,@RequestParam String internship,@RequestParam String batch,@RequestParam String startdate,@RequestParam String enddate) {
		User user = new User(name, mobile,email, college, branch,semester,address,internship,batch,startdate,enddate);
		userService.saveMyUser(user);
		return "User Saved";
	}
	
	@GetMapping("/officeuser")
	public String saveOffice(@RequestParam String batchno, @RequestParam String fees, @RequestParam String reciptno,@RequestParam String trainer) {
		Office office = new Office(batchno,fees,reciptno,trainer);
		officeService.saveMyOffice(office);
		return "User Saved";
	}
}
