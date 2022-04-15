<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<div id="ttr_content_and_sidebar_container">
			<div id="ttr_content">
				<div id="ttr_content_margin" class="container-fluid">
					<div style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
					<div class="ttr_Firm-Profile_html_row0 row">
						<table class="type07">
						  <tbody>
						  <c:forEach var="n" items="${view}">
						  <tr>
						    <th scope="row">설교제목</th>
						    <td class="tb-td">${n.title}</td>
						  </tr><tr>
						    <th scope="row">날짜</th>
						    <td class="tb-td">${n.regDate}</td>
						  </tr>
						  <tr>
						    <td colspan="2" class="content-area">
						    	<div style="width:97%; height:100%">
						    		<c:if test="${!empty n.files}">
						    		<img alt="${n.files}" src="/upload/${n.files}"/><br>
						    		</c:if>
						    		${n.content}
						    	</div>
						    </td>
						  </tr>
						  </c:forEach>
						  </tbody>
						</table>
						
						<div style="text-align: center;">
							<button class="btn-back" onclick="history.back('-1')">목록으로</button>
						</div>
					</div>
					<div style="height: 0px; width: 0px; overflow: hidden; margin-bottom: 60px;"></div>
				</div>
			</div>
		</div>