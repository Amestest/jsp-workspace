package com.kh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.entity.Hamburger;
import com.kh.service.HService;

@Controller
public class HController {
	
	@Autowired
	private HService hService;
	
	@GetMapping("/api/all")
	public String getAll(Model m) {
		List<Hamburger> h = hService.getAll();
		m.addAttribute("ham", h);
		return "hamburgerList"; // src/main/webapp/pWEB-INF/jsp/hamburgerList.jsp가져오기
	}
	
	@PostMapping("/api/addBurger")
	public String addHamburger(Hamburger h) {
		hService.saveHamburger(h);
		return "redirect:/api/all";
	}
}
