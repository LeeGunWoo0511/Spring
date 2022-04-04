package com.LeeGunWoo.web.controller.customer;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.LeeGunWoo.web.entity.Notice;
import com.LeeGunWoo.web.service.NoticeService;

@Controller
@RequestMapping("/customer/notice/")
public class NoticeController {
	 
	@Autowired
	private NoticeService noticeService;
	
	
	@RequestMapping("list")
	public String list(@RequestParam(value = "p", defaultValue = "1") Integer page, Model model) throws ClassNotFoundException, SQLException {
		
		List<Notice> list = noticeService.getList(1, "TITLE", "");
		model.addAttribute("list", list);
		
		return "notice.list";
	}
	
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public String detail(@RequestParam("ID") int ID, Model model) throws ClassNotFoundException, SQLException {
		
		List<Notice> view = noticeService.getView(ID);
		model.addAttribute("view", view);
		
		return "notice.detail";
	}
	
	@RequestMapping("write")
	public String write(){
		
		return "notice.write";
	}
	
	@RequestMapping("write_ok")
	public String write_ok(Notice notice, MultipartFile file) throws SQLException{
		
		noticeService.write_ok(notice, file);
		
		return "notice.write_ok";
	}
}
