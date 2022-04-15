<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
</body>
</html>
<script>
	//alert('${b_name}');
	const chk = "${chk}";

	if(chk == 1){
		alert("게시글이 작성되었습니다.");
		location.href="list?b_name=${b_name}";
	}else{
		alert("오류 발생!!!!!");
		location.href="list?b_name=${b_name}";
	}
</script>