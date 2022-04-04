<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>

    <!-- header 부분 -->
	<tiles:insertAttribute name="header"/>
    <!-- body 부분 -->
	<tiles:insertAttribute name="body"/>
    <!-- footer 부분 -->
	<tiles:insertAttribute name="footer"/>

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