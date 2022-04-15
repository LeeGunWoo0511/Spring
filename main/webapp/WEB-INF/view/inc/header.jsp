<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="chk_route" value="/" />
<c:if test="${chk_board eq 'board'}">
	<c:set var="chk_route" value="../../" />
</c:if>
<head profile="http://www.w3.org/2005/10/profile">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>하계소망교회${chk_board}</title>
<link rel="stylesheet" href="${chk_route}bootstrap.css" type="text/css" media="screen" />
<link rel="stylesheet" href="${chk_route}style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="${chk_route}customer.css" type="text/css" media="screen" />
<script type="text/javascript" src="${chk_route}js/jquery.js"></script>
<script type="text/javascript" src="${chk_route}js/jquery-ui.min.js"></script>
<script type="text/javascript" src="${chk_route}js/tt_slideshow.js"></script>
<script type="text/javascript" src="${chk_route}js/bootstrap.min.js"></script>
<script type="text/javascript" src="${chk_route}js/Customjs.js"></script>
<script type="text/javascript" src="${chk_route}js/contactform.js"></script>
<script type="text/javascript" src="${chk_route}js/totop.js"></script>
</head>
<script>
jQuery(document).ready(function(){
	const chk_url = window.location.pathname;
	if(chk_url == "/index"){
		$("#ctlClass").attr('class','Home');
	}else{
		$("#ctlClass").attr('class','Firm-Profile');
	}
});
</script>
<div id="popup_mask"></div>
<body id="ctlClass">
	<div class="totopshow">
		<a href="#" class="back-to-top"><img alt="Back to Top" src="${chk_route}images/gototop0.png" /></a>
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
					<div class="html_content" style="text-align: right;">
						<p>
							<span style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 15px;  ">대한예수교장로회</span><br>
							<span style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 30px; ">하계소망교회</span>
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
						<a href="/index" target="_self"> <img class="ttr_menu_logo" src="${chk_route}menulogo.png">
						</a>
					</div>
					<div class="menu-center collapse navbar-collapse">
						<ul class="ttr_menu_items nav navbar-nav navbar-right">
							<!-- _active 해당 페이지시 class 추가 -->

							<li class="ttr_menu_items_parent dropdown">
								<a href="${chk_route}info" class="ttr_menu_items_parent_link">
									<span class="menuchildicon"></span>교회소개
								</a>
								<hr class="horiz_separator" />
							</li>
							<li class="ttr_menu_items_parent dropdown">
								<a href="${chk_route}customer/notice/list?b_name=jubo" class="ttr_menu_items_parent_link">
									<span class="menuchildicon"></span>예배
								</a>
								<hr class="horiz_separator" />
							</li>
							<li class="ttr_menu_items_parent dropdown">
								<a href="${chk_route}map" class="ttr_menu_items_parent_link">
									<span class="menuchildicon"></span>오시는길</a>
								<hr class="horiz_separator" />
							</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>