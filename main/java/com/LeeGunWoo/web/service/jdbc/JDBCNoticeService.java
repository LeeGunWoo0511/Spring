package com.LeeGunWoo.web.service.jdbc;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
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
	private ResultSet total;
	private ResultSet rs;
	
	
	// �Խñ� ���
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
		
	// �۾��� ��� �� �ۼ��ð� ���ϴ� �Լ�
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
	
	// �۾��� ��� �� ���� ���̵� ���ϴ� �Լ�
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
	
	// �۾��� ���
	public int write_ok(Notice notice, MultipartFile file, HttpServletRequest request) throws SQLException, IllegalStateException, IOException  {
		
		String fileNameOri = file.getOriginalFilename();
		String fileName = "";
		String b_name = request.getParameter("b_name");
		if(fileNameOri != "") {
			
			// ���� ��¥/�ð�
			Date now = new Date();
			// ������ ����
			SimpleDateFormat tmp_name = new SimpleDateFormat("yyyyMMddHHmmss");
			// ������ ����
			String temp_name = tmp_name.format(now);
			
			String ext = fileNameOri.substring(fileNameOri.lastIndexOf(".")+1); // ���� Ȯ���� ��������
			fileName = b_name+"_"+temp_name+"."+ext; // ���� ���ε�� ����
			
			String webPath = "/static/upload";
			String realPath = ctx.getRealPath(webPath);
			System.out.printf("realPath: %s\n", realPath);
			// ���ε��ϱ� ���� ��ΰ� ���� ���
			File savePath = new File(realPath);
			if(!savePath.exists())
				savePath.mkdirs();
			
			realPath += File.separator + fileName;
			File saveFile = new File(realPath);
			file.transferTo(saveFile);
		}
		String SQL = "INSERT INTO NOTICE (ID, B_NAME, TITLE, WRITER_ID, CONTENT, FILES, FILES_ORI, FILES_TYPE) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		Connection con = dataSource.getConnection();
		try{
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, b_name);
			pstmt.setString(3, notice.getTitle());
			pstmt.setString(4, "�̰ǿ�");
			pstmt.setString(5, notice.getContent());
			pstmt.setString(6, fileName);
			pstmt.setString(7, fileNameOri);
			pstmt.setString(8, file.getContentType());
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	private String SimpleDateFormat(String string) {
		// TODO Auto-generated method stub
		return null;
	}
	
	// �Խñ� �� ����
	@Override
	public int getTotal(String board, String query) throws ClassNotFoundException, SQLException {
		Connection con = dataSource.getConnection(); // DBĿ�ؼ�
		double Total_record = 0;
		String Tsql = "SELECT COUNT(ID) AS total FROM NOTICE"; // �Խñ� �� ����
		PreparedStatement board_total = con.prepareStatement(Tsql);
//		board_total.setString(1, board);
		ResultSet total_tmp = board_total.executeQuery();
		while(total_tmp.next()) {
			Total_record = (double) total_tmp.getInt("total") / 10;
			Total_record = Math.ceil(Total_record);
		}
		
		total_tmp.close();
		board_total.close();
		con.close();
		
		return (int)Total_record;
	}
		
	private int ceil(int i) {
		// TODO Auto-generated method stub
		return 0;
	}

	// �Խñ� ���
	@Override
	public List<Notice> getList(int page, String board, String query) throws ClassNotFoundException, SQLException {
		Connection con = dataSource.getConnection(); // DBĿ�ؼ�
		int board_id = getNext()-1;
		int start = board_id - ( (page-1) *10) ;
		int end = board_id - (10*page);
				
//		String sql = "SELECT * FROM NOTICE WHERE ID BETWEEN ? AND ? AND B_NAME = ? ORDER BY REGDATE DESC";		
		String sql = "SELECT * FROM NOTICE WHERE ID BETWEEN ? AND ? ORDER BY REGDATE DESC";
		PreparedStatement st = con.prepareStatement(sql);
//		st.setString(1, "%"+query+"%");
		st.setInt(1, end);
		st.setInt(2, start);
//		st.setNString(3, board);
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
	
	// �Խñ� �󼼳���
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

