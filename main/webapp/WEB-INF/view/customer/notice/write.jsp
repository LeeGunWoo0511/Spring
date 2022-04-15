<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>
<c:if test="${Pass eq 'FALSE'}">
<script>
	alert("암호가 틀렸습니다.\n다시한번 확인해주세요!!!");
	history.back(-1);
</script>
</c:if>
	<div id="ttr_page" class="container">
		
		<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="ttr_Firm-Profile_html_column00">
				<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
				<div class="html_content">
					<p style="text-align:Center;">
						<span style="font-family:'Roboto Slab','Arial';font-weight:700;font-size:2.571em;color:rgba(53,181,235,1);">설교내용</span>
					</p>
				</div>
			</div>
		</div>
		<form action="write_ok" id="write_ok" method="post" enctype="multipart/form-data" >
		<input type="hidden" name="regdate" value="<%= sf.format(nowTime) %>"/>
		<input type="hidden" name="b_name" value="${b_name}"/>
		<div id="ttr_content_and_sidebar_container">
			<div id="ttr_content">
				<div id="ttr_content_margin" class="container-fluid">
					<div style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
					<div class="ttr_Firm-Profile_html_row0 row">
						<table class="type07">
						  <tbody>
						  <tr>
						    <th scope="row">설교제목</th>
						    <td class="tb-td"><input type="text" name="title" id="title"/></td>
						  </tr>
						  <tr>
						    <th scope="row">주보 이미지</th>
						    <td class="tb-td"><input type="file" name="file"/></td>
						  </tr>
						  <tr>
						    <td colspan="2" class="content-area">
						    	<textarea style="height:100%" name="content"></textarea>
						    </td>
						  </tr>
						  </tbody>
						</table>
						
						<div style="text-align: center;">
							<button class="btn-submit" type="button" id="form_btn">저장하기</button>
							<button class="btn-cancel" type="button" onclick="history.back('-1')">뒤로가기</button>
						</div>
					</div>
					<div style="height: 0px; width: 0px; overflow: hidden; margin-bottom: 60px;"></div>
				</div>
			</div>
		</div>
		</form>

<script>
$(document).ready(function(){
	$("#form_btn").click(function() {
		var chk_title = $("#title").val();
		if(chk_title == ""){
			alert("제목을 입력해주세요!!");
			return; false;
		}
		$('#write_ok')[0].submit();
	});
});
</script>