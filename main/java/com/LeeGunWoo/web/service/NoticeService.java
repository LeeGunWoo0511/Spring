package com.LeeGunWoo.web.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.LeeGunWoo.web.entity.Notice;

public interface NoticeService {
	
	int write_ok(Notice notice, MultipartFile file, HttpServletRequest request) throws SQLException, IllegalStateException, IOException;
	List<Notice> getList(int page, String field, String query) throws ClassNotFoundException, SQLException;
	int getTotal(String field, String query) throws ClassNotFoundException, SQLException;
	List<Notice> getView(int ID) throws ClassNotFoundException, SQLException;
	String getPass(String pass) throws Exception;

}
