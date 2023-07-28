package com.goalTracker.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.stereotype.Controller;

@Controller
public class MainController {
	
	@GetMapping("/main")
	public String main() {
		return "/main";
	}
	@GetMapping("/bucketList")
	public String bucketList() {
		return "/bucketList";
	}
	@GetMapping("/monthly")
	public String monthly() {
		return "/monthly";
	}
}
