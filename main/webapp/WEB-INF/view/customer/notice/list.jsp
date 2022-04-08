<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
/* 레이어 팝업 */
#popupDiv {  /* 팝업창 css */
	top : 0px;
	position: absolute;
	background: #FFFFFF;
	width: 275px;
	height: 125px;
	display: none; 
}
#popup_mask { /* 팝업 배경 css */
	position: fixed;
	width: 100%;
	height: 1000px;
	top: 0px;
	left: 0px;
	display: none; 
	background-color:#000;
	opacity: 0.8;
}
/* 레이어 팝업 */
/* 게시판 table css */
table.type07 {
  width : 99%;
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border: 1px solid #ccc;
  margin: 20px 10px;
}
table.type07 thead {
  border-right: 1px solid #ccc;
  border-left: 1px solid #ccc;
  background: #00B6F0;
}
table.type07 thead th {
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #fff;
}
table.type07 tbody th {
  width: 30%;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #A9D0F5;
}
table.type07 td {
  width: 70%;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}
/* 게시판 table css */
.btn-write {
	width: 70px;
	height: 25px;
	border-radius: 10px;
	border: 0px solid;
	background: #00B6F0;
	color: #FFFFFF;
	font-family: 'Roboto Slab','Arial';
	font-weight: bold;
    font-size: 15px;
}
.btn-s-submit {
	width: 70px;
	height: 25px;
	border-radius: 10px;
	border: 0px solid;
	background: #00B6F0;
	color: #FFFFFF;
	font-family: 'Roboto Slab','Arial';
	font-weight: bold;
    font-size: 15px;
}
.btn-s-cancel {
	width: 70px;
	height: 25px;
	border-radius: 10px;
	border: 0px solid;
	background: #808080;
	color: #FFFFFF;
	font-family: 'Roboto Slab','Arial';
	font-weight: bold;
    font-size: 15px;
}
</style>
<body class="Firm-Profile">
<div id ="popup_mask" ></div><!-- 레이어 팝업 띄울 시 배경 불투명 -->
	<div class="totopshow">
		<a href="#" class="back-to-top"><img alt="Back to Top"
			src="/images/gototop0.png" /></a>
	</div>
	<div id="ttr_page" class="container">
		<header id="ttr_header">
			<div id="ttr_header_inner">
				<div class="ttr_headershape02">
					<div class="html_content">
						<p
							style="margin: 0em 0em 0em 0em; text-align: Center; line-height: normal;">
							<br style="font-size: 0.571em;" />
						</p>
						<p
							style="margin: 0em 0em 0em 0em; text-align: Center; line-height: normal;">
							<span
								style="font-family: 'Roboto', 'Arial'; font-weight: 300; color: rgba(153, 153, 153, 1);">Phone:-
								+49 25 7373737</span>
						</p>
					</div>
				</div>
			</div>
		</header>
		<nav id="ttr_menu" class="navbar-default navbar">
			<div id="ttr_menu_inner_in">
				<div class="menuforeground"></div>
				<div class="ttr_menushape1">
					<div class="html_content">
						<p style="width: 220px;">
							<span
								style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 2.571em; color: rgba(53, 181, 235, 1);">하계소망교회</span>
						</p>
					</div>
				</div>
				<div id="navigationmenu">
					<div class="navbar-header">
						<button id="nav-expander" data-target=".navbar-collapse"
							data-toggle="collapse" class="navbar-toggle" type="button">
							<span class="sr-only"> </span> <span class="icon-bar"> </span> <span
								class="icon-bar"> </span> <span class="icon-bar"> </span>
						</button>
						<a href="/index" target="_self"> <img class="ttr_menu_logo"
							src="../../menulogo.png">
						</a>
					</div>
					<div class="menu-center collapse navbar-collapse">
						<ul class="ttr_menu_items nav navbar-nav navbar-right">
							<li class="ttr_menu_items_parent dropdown"><a
								href="home.html" class="ttr_menu_items_parent_link"><span
									class="menuchildicon"></span>Home</a>
								<hr class="horiz_separator" /></li>
							<li class="ttr_menu_items_parent dropdown active"><a
								href="firm-profile.html"
								class="ttr_menu_items_parent_link_active"><span
									class="menuchildicon"></span>Firm Profile</a>
								<hr class="horiz_separator" /></li>
							<li class="ttr_menu_items_parent dropdown"><a
								href="services.html" class="ttr_menu_items_parent_link"><span
									class="menuchildicon"></span>Services</a>
								<hr class="horiz_separator" /></li>
							<li class="ttr_menu_items_parent dropdown"><a
								href="projects.html" class="ttr_menu_items_parent_link"><span
									class="menuchildicon"></span>Projects</a>
								<hr class="horiz_separator" /></li>
							<li class="ttr_menu_items_parent dropdown"><a
								href="contact.html" class="ttr_menu_items_parent_link"><span
									class="menuchildicon"></span>Contact</a>
								<hr class="horiz_separator" /></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
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
				</div>
			</div>
		</div>
		<!-- 글쓰기 암호창 팝업 -->
		<form id="Go_write" method="post" action="write">
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