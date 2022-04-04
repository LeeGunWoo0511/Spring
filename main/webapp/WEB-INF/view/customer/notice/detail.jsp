<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
table.type07 {
  width : 97%;
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
.tb-td {
  width: 70%;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}

.content-area {
  width: 70%;
  height: 360px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 0px solid #ccc;
}
</style>
<body class="Firm-Profile">
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
						<p>
							<span
								style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 2.571em; color: rgba(53, 181, 235, 1);">CorpOne</span>
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
						<a href="#" target="_self"> <img class="ttr_menu_logo"
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
						    		${n.content}
						    	</div>
						    </td>
						  </tr>
						  </c:forEach>
						  </tbody>
						</table>
						
						<div style="text-align: center;">
							<button onclick="history.back('-1')">목록으로</button>
						</div>
					</div>
					<div style="height: 0px; width: 0px; overflow: hidden;"></div>
				</div>
			</div>
		</div>