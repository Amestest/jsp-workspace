package com.kh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ForController {
	@GetMapping("/list")
	public String getFor() {
		return "forExample";
	}
}
