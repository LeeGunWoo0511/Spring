<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="map" style="width:600px;height:400px; margin:auto; margin-top:10px;"></div>
					    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c472b3f737218aea70ceaf368e69414c"></script>
					    <script>
						    var container = document.getElementById('map'); //지도 표시 div
					        var options = {
					            center: new kakao.maps.LatLng(37.635899, 127.075043), //지도의 중심좌표
					            level: 1 //지도의 확대 레벨
					        };
					 
					        setTimeout(function() {
							    map.relayout();
							    map.setCenter(new kakao.maps.LatLng(lat, lng));
							    // map.setLevel(2); 필요하면 레벨조정
							}, 100);
					        
						    var map = new kakao.maps.Map(container, options);
					        
					        // 마커가 표시될 위치
					        var markerPosition  = new kakao.maps.LatLng(37.635899, 127.075043); 
					 
					        // 마커 생성
					        var marker = new kakao.maps.Marker({
					            position: markerPosition
					        });
					 
					        // 마커가 지도 위에 표시되도록 설정
					        marker.setMap(map);
					 
					        // 아래 코드는 지도 위의 마커를 제거하는 코드
					        // marker.setMap(null);  
					        
					    </script>
</body>
</html>