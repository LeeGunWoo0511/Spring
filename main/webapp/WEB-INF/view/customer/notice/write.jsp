<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../js/tt_slideshow.js"></script>
<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../../js/Customjs.js"></script>
<script type="text/javascript" src="../../js/contactform.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>하계소망교회</title>
<link rel="stylesheet" href="../../bootstrap.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="../../style.css" type="text/css" media="screen" />
<script type="text/javascript" src="../../js/totop.js"></script>
</head>
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
.btn-submit {
	width: 100px;
	height: 45px;
	border-radius: 10px;
	border: 0px solid;
	background: #00B6F0;
	color: #FFFFFF;
	font-family: 'Roboto Slab','Arial';
	font-weight: bold;
    font-size: 18px;
}
.btn-cancel {
	width: 100px;
	height: 45px;
	border-radius: 10px;
	border: 0px solid;
	background: #808080;
	color: #FFFFFF;
	font-family: 'Roboto Slab','Arial';
	font-weight: bold;
    font-size: 18px;
}
</style>
<c:if test="${Pass eq 'FALSE'}">
<script>
	alert("암호가 틀렸습니다.\n다시한번 확인해주세요!!!");
	history.back(-1);
</script>
</c:if>

<body class="Firm-Profile">
	<div class="totopshow">
		<a href="#" class="back-to-top"><img alt="Back to Top"
			src="../../../images/gototop0.png" /></a>
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
		<form action="write_ok" method="post" enctype="multipart/form-data" >
		<input type="hidden" name="regdate" value="<%= sf.format(nowTime) %>"/>
		<div id="ttr_content_and_sidebar_container">
			<div id="ttr_content">
				<div id="ttr_content_margin" class="container-fluid">
					<div style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
					<div class="ttr_Firm-Profile_html_row0 row">
						<table class="type07">
						  <tbody>
						  <tr>
						    <th scope="row">설교제목</th>
						    <td class="tb-td"><input type="text" name="title"/></td>
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
							<button class="btn-submit" type="submit">저장하기</button>
							<button class="btn-cancel" type="button" onclick="history.back('-1')">뒤로가기</button>
						</div>
					</div>
					<div style="height: 0px; width: 0px; overflow: hidden;"></div>
				</div>
			</div>
		</div>
		</form>
		
		<footer id="ttr_footer">
	<div class="ttr_footerHome_html_row0 row">
		<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
			<div class="ttr_footerHome_html_column00">
				<div
					style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				<div class="html_content">
					<p style="margin: 0.36em 0em 0.36em 2.86em;">&nbsp;</p>
					<p style="margin: 0.36em 0em 0.36em 2.86em;">
						<span
							style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 1.429em; color: rgba(0, 182, 240, 1);">NAVIGATION</span>
					</p>
					<p style="margin: 1.43em 0em 0.36em 2.86em;">
						<a HREF="Home.html" class="tt_link" target="_self"><span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Home</span></a>
					</p>
					<p style="margin: 0.57em 0em 0.36em 2.86em;">
						<a HREF="Firm-Profile.html" class="tt_link" target="_self"><span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Firm
								Profile&nbsp;&nbsp;</span></a>
					</p>
					<p style="margin: 0.57em 0em 0.36em 2.86em;">
						<a HREF="Services.html" class="tt_link" target="_self"><span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Services</span></a>
					</p>
					<p style="margin: 0.57em 0em 0.36em 2.86em;">
						<a HREF="Events.html" class="tt_link" target="_self"><span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Events</span></a>
					</p>
					<p style="margin: 0.57em 0em 0.36em 2.86em;">
						<a HREF="Contact.html" class="tt_link" target="_self"><span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Contact</span></a>
					</p>
				</div>
				<div
					style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
			</div>
		</div>
		<div class="clearfix visible-xs-block"></div>
		<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
			<div class="ttr_footerHome_html_column01">
				<div
					style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				<div class="html_content">
					<p style="margin: 0.36em 0em 0.36em 2.86em;">&nbsp;</p>
					<p style="margin: 0.36em 0em 0.36em 2.86em;">
						<span
							style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 1.429em; color: rgba(0, 182, 240, 1);">SERVICES</span>
					</p>
					<p style="margin: 1.43em 0em 0em 2.86em;">
						<a HREF="Services.html" class="tt_link" target="_self"><span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Client
								Searvices</span></a>&nbsp;&nbsp;
					</p>
					<p
						style="margin:0.57em 0em 0em 2.86em;font-family:'<String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;>&amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;gt;&amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;gt;&amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;gt;&amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;amp;gt;Arial&amp;amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;gt;&amp;amp;amp;lt;/String&amp;amp;amp;gt;&amp;amp;lt;/String&amp;amp;gt;&amp;lt;/String&amp;gt;</String>';font-size:1.333em;">
						<a HREF="Services.html" class="tt_link" target="_self"><span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Economic
								Consulting </span></a>&nbsp;&nbsp;
					</p>
					<p
						style="margin:0.57em 0em 0em 2.86em;font-family:'<String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;>&amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;gt;&amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;gt;&amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;gt;&amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;amp;gt;Arial&amp;amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;gt;&amp;amp;amp;lt;/String&amp;amp;amp;gt;&amp;amp;lt;/String&amp;amp;gt;&amp;lt;/String&amp;gt;</String>';font-size:1.333em;">
						<a HREF="Services.html" class="tt_link" target="_self"><span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Strategic
								Communications </span></a>&nbsp;&nbsp;
					</p>
					<p
						style="margin:0.57em 0em 0em 2.86em;font-family:'<String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;>&amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;gt;&amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;gt;&amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;gt;&amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;amp;gt;Arial&amp;amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;gt;&amp;amp;amp;lt;/String&amp;amp;amp;gt;&amp;amp;lt;/String&amp;amp;gt;&amp;lt;/String&amp;gt;</String>';font-size:1.333em;">
						<a HREF="Services.html" class="tt_link" target="_self"><span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Technology
								Consulting</span></a>&nbsp;&nbsp;
					</p>
					<p style="margin: 0.57em 0em 0em 2.86em;">
						<a HREF="Services.html" class="tt_link" target="_self"><span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Executive
								search</span></a>&nbsp;&nbsp;
					</p>
				</div>
				<div
					style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
			</div>
		</div>
		<div
			class="clearfix visible-sm-block visible-md-block visible-xs-block">
		</div>
		<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
			<div class="ttr_footerHome_html_column02">
				<div
					style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				<div class="html_content">
					<p style="margin: 0.36em 0em 0.36em 2.86em;">&nbsp;</p>
					<p style="margin: 0.36em 0em 0.36em 2.86em;">
						<span
							style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 1.429em; color: rgba(0, 182, 240, 1);">ARCHIVES</span>
					</p>
					<p style="margin: 1.43em 0em 0.36em 2.86em;">
						<span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">July
							2014</span>
					</p>
					<p style="margin: 0.57em 0em 0.36em 2.86em;">
						<span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Sep
							2014</span>
					</p>
					<p style="margin: 0.57em 0em 0.36em 2.86em;">
						<span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Dec
							2014</span>
					</p>
					<p style="margin: 0.57em 0em 0.36em 2.86em;">
						<span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">March
							2015</span>
					</p>
					<p style="margin: 0.57em 0em 0.36em 2.86em;">
						<span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">June
							2015</span>
					</p>
				</div>
				<div
					style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
			</div>
		</div>
		<div class="clearfix visible-xs-block"></div>
		<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
			<div class="ttr_footerHome_html_column03">
				<div
					style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				<div class="html_content">
					<p style="margin: 0.36em 0em 0.36em 2.86em;">&nbsp;</p>
					<p style="margin: 0.36em 0em 0.36em 2.86em;">
						<span
							style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 1.429em; color: rgba(0, 182, 240, 1);">RECENT
							POSTS </span>
					</p>
					<p style="margin: 1.43em 0em 0.36em 2.86em;">
						<span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Arenean
							Nonummy </span>
					</p>
					<p style="margin: 0.57em 0em 0.36em 2.86em;">
						<span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Hendrerit
							Mauselntes </span>
					</p>
					<p style="margin: 0.57em 0em 0.36em 2.86em;">
						<span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Ulusm
							Duifusceras </span>
					</p>
					<p style="margin: 0.57em 0em 0.36em 2.86em;">
						<span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Vitaeneque
							Turpisin </span>
					</p>
					<p style="margin: 0.57em 0em 0.36em 2.86em;">
						<span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(255, 255, 255, 1);">Praesent
							Pulvinar </span>
					</p>
				</div>
				<div
					style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
			</div>
		</div>
		<div
			class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
		</div>
	</div>
	<div class="ttr_footer_bottom_footer">
		<div class="ttr_footer_bottom_footer_inner">
			<div class="ttr_footershape1">
				<div class="html_content">
					<p>&nbsp;</p>
				</div>
			</div>
			<div class="ttr_footershape2">
				<div class="html_content">
					<p>&nbsp;</p>
				</div>
			</div>
			<div id="ttr_copyright">
				<a href="http://www.kixgo.com/"> Designed by KixGO </a><a
					href="http://www.kixgo.com/">Website Builder </a>
			</div>
			<a href="#" class="ttr_footer_facebook" target="_self"> </a> <a
				href="#" class="ttr_footer_twitter" target="_self"> </a> <a href="#"
				class="ttr_footer_googleplus" target="_self"> </a>
		</div>
	</div>
</footer>
<div style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-bottom-collapse: separate;"></div>

</body>
	<script type="text/javascript">
		WebFontConfig = {
			google : {
				families : [ 'Roboto+Slab:700', 'Roboto+Slab' ]
			}
		};
		(function() {
			var wf = document.createElement('script');
			wf.src = ('https:' == document.location.protocol ? 'https' : 'http')
					+ '://ajax.googleapis.com/ajax/libs/webfont/1.0.31/webfont.js';
			wf.type = 'text/javascript';
			wf.async = 'true';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(wf, s);
		})();
	</script>
</html>