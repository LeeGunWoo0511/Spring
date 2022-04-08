package com.LeeGunWoo.web.service.jdbc;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.LeeGunWoo.web.entity.Notice;
import com.LeeGunWoo.web.service.NoticeService;

@Service  //@Controller, @Service, @Repository
public class JDBCNoticeService implements NoticeService{

	@Autowired
	private ServletContext ctx;
	
	@Autowired
	private DataSource dataSource;
	private ResultSet rs;
	
	
	// 게시글 목록
	@Override
	public String getPass(String pass)throws Exception {{
		
		String Chk_Pass = "123456";
		String chk_ok;
		
		if(Chk_Pass.equals(pass)) {
			chk_ok = "OK";
		}else {
			chk_ok = "FALSE";
		}
		
		return chk_ok;
	}}
		
	// 글쓰기 등록 시 작성시간 구하는 함수
	public String getDate1() throws SQLException {
		String SQL = "SELECT NOW()";
		Connection con = dataSource.getConnection();
		try{
			PreparedStatement pstmt = con.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	// 글쓰기 등록 시 다음 아이디 구하는 함수
	public int getNext() throws SQLException {
		String SQL = "SELECT ID FROM NOTICE ORDER BY ID DESC";
		Connection con = dataSource.getConnection();
		try{
			PreparedStatement pstmt = con.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	// 글쓰기 등록
	public int write_ok(Notice notice, MultipartFile file, HttpServletRequest request) throws SQLException, IllegalStateException, IOException  {
		
		long size = file.getSize();
		String fileName = file.getOriginalFilename();
		System.out.printf("%s\n", fileName);
		if(fileName != "") {
			System.out.printf("fileName:%s, fileSize:%d\n", fileName, size);
			//ServletContext ctx = request.getServletContext();
			String webPath = "/static/upload";
			String realPath = ctx.getRealPath(webPath);
			System.out.printf("realPath: %s\n", realPath);
			// 업로드하기 위한 경로가 없을 경우
			File savePath = new File(realPath);
			if(!savePath.exists())
				savePath.mkdirs();
			
			realPath += File.separator + fileName;
			File saveFile = new File(realPath);
			file.transferTo(saveFile);
		}
		String SQL = "INSERT INTO NOTICE (ID, TITLE, WRITER_ID, CONTENT, FILES) VALUES (?, ?, ?, ?, ?)";
		Connection con = dataSource.getConnection();
		try{
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, notice.getTitle());
			pstmt.setString(3, "이건우");
			pstmt.setString(4, notice.getContent());
			pstmt.setString(5, file.getOriginalFilename());
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	// 게시글 목록
	@Override
	public List<Notice> getList(int page, String field, String query) throws ClassNotFoundException, SQLException {
		int start = 1 + (page-1)*10;     // 1, 11, 21, 31, ..
		int end = 10*page; // 10, 20, 30, 40...

		String sql = "SELECT * FROM NOTICE WHERE ID BETWEEN ? AND ? ORDER BY ID DESC";	
		
		Connection con = dataSource.getConnection();
		PreparedStatement st = con.prepareStatement(sql);
//		st.setString(1, "%"+query+"%");
		st.setInt(1, start);
		st.setInt(2, end);
		ResultSet rs = st.executeQuery();
		
		List<Notice> list = new ArrayList<Notice>();
		
		while(rs.next()){
		    int id = rs.getInt("ID");
		    String title = rs.getString("TITLE");
		    String writerId = rs.getString("WRITER_ID");
		    Date regDate = rs.getDate("REGDATE");
		    String content = rs.getString("CONTENT");
		    int hit = rs.getInt("hit");
		    String files = rs.getString("FILES");
		    
		    Notice notice = new Notice(
		    					id,
		    					title,
		    					writerId,
		    					regDate,
		    					content,
		    					hit,
		    					files
		    				);

		    list.add(notice);
		    
		}

		
		rs.close();
		st.close();
		con.close();
		
		return list;
	}
	
	// 게시글 상세내용
	@Override
	public List<Notice> getView(int ID) throws ClassNotFoundException, SQLException {
		String sql = "SELECT * FROM NOTICE WHERE ID = ? ";	
		
		Connection con = dataSource.getConnection();
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, ID);
		ResultSet rs = st.executeQuery();
		
		List<Notice> view = new ArrayList<Notice>();
		
		while(rs.next()){
		    int id = rs.getInt("ID");
		    String title = rs.getString("TITLE");
		    String writerId = rs.getString("WRITER_ID");
		    Date regDate = rs.getDate("REGDATE");
		    String content = rs.getString("CONTENT");
		    int hit = rs.getInt("hit");
		    String files = rs.getString("FILES");
		    
		    Notice notice = new Notice(
		    					id,
		    					title,
		    					writerId,
		    					regDate,
		    					content,
		    					hit,
		    					files
		    				);

		    view.add(notice);
		    
		}

		
		rs.close();
		st.close();
		con.close();
		
		return view;
	}
	
	
	
}

