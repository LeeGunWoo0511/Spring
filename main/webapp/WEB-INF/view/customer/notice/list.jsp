<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${requestScope['javax.servlet.forward.servlet_path']}" />
		<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="ttr_Firm-Profile_html_column00">
				<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
				<div class="html_content">
					<p style="text-align:Center;">
						<span style="font-family:'Roboto Slab','Arial';font-weight:700;font-size:2.571em;color:rgba(53,181,235,1);">예배</span>
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
						  <thead>
						  <tr>
						    <th scope="cols">날짜</th>
						    <th scope="cols">설교제목</th>
						  </tr>
						  </thead>
						  <tbody>
						  <c:forEach var="n" items="${list}">
						  <tr>
						    <th scope="row">${n.regDate}</th>
						    <td><a href="detail?ID=${n.id}">${n.title}</a></td>
						  </tr>
						  </c:forEach>
						  </tbody>
						</table>
						<div style="text-align: right;">
							<button class="btn-write" id="popOpenBtn">글쓰기</button><!--  onclick="location.href='write'" -->
						</div>
					</div>
					<div style="height: 0px; width: 0px; overflow: hidden;"></div>
					<div class="page_wrap">
					   <div class="page_nation">
					      <!-- 첫번째 페이지로 이동 -->
					      <a class="arrow pprev" href="${path}?b_name=${b_name}&p=1"></a>
					      
					      <c:if test="${!empty param.p}" >
					      <c:set var="p" value="${param.p}" />
					      </c:if>
					      <c:if test="${empty param.p}" >
					      	<c:set var="p" value="1" />
					      </c:if>
					      
					      <!-- 이전 페이지로 이동 -->
					      <c:if test="${p == 1}">
					      <a class="arrow prev" href="javascript:void(0);alert('이전 페이지가 없습니다!!');"></a>
					      </c:if>
					      <c:if test="${p > 1}">
					      <a class="arrow prev" href="${path}?b_name=${b_name}&p=${p-1}"></a>
					      </c:if>
					      
					      <!-- 페이징 -->
					      <c:forEach  var="i" begin="1" end="${total}" >
					      	<a href="${path}?b_name=${b_name}&p=${i}" <c:if test="${i == p}">class="active"</c:if> >${i}</a>
					      </c:forEach>
					      
					      <!-- 다음 페이지로 이동 -->
					      <c:if test="${p < total}">
					      <a class="arrow next" href="${path}?b_name=${b_name}&p=${p+1}"></a>
					      </c:if>
					      <c:if test="${p == total}">
					      <a class="arrow next" href="javascript:void(0);alert('다음 페이지가 없습니다!!');"></a>
					      </c:if>
					      
					      <!-- 마지막 페이지로 이동 -->
					      <a class="arrow nnext" href="${path}?b_name=${b_name}&p=${total}"></a>
					   </div>
					</div>
					<div style="height: 0px; width: 0px; overflow: hidden; margin-bottom: 60px;"></div>
				</div>
			</div>
		</div>
		<!-- 글쓰기 암호창 팝업 -->
		<form id="Go_write" method="post" action="write">
		<input type="hidden" name="b_name" value="${param.b_name}" />
		<div id="popupDiv"> <!-- 팝업창 -->
			<div style="text-align:center; padding:12px">
				<div style="margin-bottom: 3px;"><strong>암호 입력</strong></div>
				<div style="margin-bottom: 15px;"><input type="password" name="pass" id="pass" style="width:170px; height:5px;"/></div>
		        <div>
			        <button class="btn-s-submit" id="form_btn">확인</button>
			        <button class="btn-s-cancel" id="popCloseBtn">close</button>
			    </div>
	    	</div>
	    </div>
	    </form>
		<!-- 글쓰기 암호창 팝업 -->
		<script>
		$(document).ready(function(){
			$("#popOpenBtn").click(function(event){  //팝업 Open 버튼 클릭 시 
				$("#popupDiv").css({
					"top": (($(window).height()-$("#popupDiv").outerHeight())/2+$(window).scrollTop())+"px",
					"left": (($(window).width()-$("#popupDiv").outerWidth())/2+$(window).scrollLeft())+"px"
					//팝업창을 가운데로 띄우기 위해 현재 화면의 가운데 값과 스크롤 값을 계산하여 팝업창 CSS 설정
				});
			    $("#popup_mask").css("display","block"); //팝업 뒷배경 display block
			    $("#popupDiv").css("display","block"); //팝업창 display block 
			    $("body").css("overflow","hidden");//body 스크롤바 없애기
			});
			$("#popCloseBtn").click(function(event){
				$("#popup_mask").css("display","none"); //팝업창 뒷배경 display none
				$("#popupDiv").css("display","none"); //팝업창 display none
				$("body").css("overflow","auto");//body 스크롤바 생성
			});
			
			$("#form_btn").click(function() {
				var chk_pass = $("#pass").val();
				if(chk_pass == ""){
					alert("패스워드를 입력해주세요!!");
					return; false;
				}
				$('#Go_write')[0].submit();
			});
		});
		</script>