package com.LeeGunWoo.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/")
public class HomeController{

	@RequestMapping("index")
	public String index() {
		return "root.index";
	}
	
	@RequestMapping("info")
	public String info() {
		return "root.info";
	}
	
	@RequestMapping("map")
	public String map() {
		return "root.map";
	}
	
}
