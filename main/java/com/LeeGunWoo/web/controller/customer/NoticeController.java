package com.LeeGunWoo.web.controller.customer;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	public String list(@RequestParam(value = "p", defaultValue = "1") Integer page, @RequestParam("b_name") String b_name, Model model) throws ClassNotFoundException, SQLException {
		
		List<Notice> list = noticeService.getList(page, b_name, "");
		int Total_record = noticeService.getTotal(b_name, "");
		model.addAttribute("list", list);
		model.addAttribute("total", Total_record);
		
		return "notice.list";
	}
	
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public String detail(@RequestParam("ID") int ID, Model model) throws ClassNotFoundException, SQLException {
		
		List<Notice> view = noticeService.getView(ID);
		model.addAttribute("view", view);
		
		return "notice.detail";
	}
	
	@RequestMapping("write")
	public String write(@RequestParam("pass") String pass, @RequestParam("b_name") String b_name, Model model) throws Exception{
		
		String security = noticeService.getPass(pass);
		model.addAttribute("Pass", security);
		model.addAttribute("b_name", b_name);
		
		return "notice.write";
	}
	
	@RequestMapping("write_ok")
	public String write_ok(Notice notice, MultipartFile file, HttpServletRequest request, Model model) throws SQLException, IllegalStateException, IOException{
		
		noticeService.write_ok(notice, file, request);
		
		return "notice.write_ok";
	}
}
