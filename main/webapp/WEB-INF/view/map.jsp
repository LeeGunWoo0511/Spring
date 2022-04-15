<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
#map img {
  max-width: none;
  height: auto;
  border: 0;
  -ms-interpolation-mode: bicubic;
}
</style>
		<div id="ttr_content_and_sidebar_container">
			<div id="ttr_content">
				<div id="ttr_content_margin" class="container-fluid">
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
					<div class="ttr_Firm-Profile_html_row0 row">
						<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="ttr_Firm-Profile_html_column00">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="text-align: Center;">
										<span
											style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 2.571em; color: rgba(53, 181, 235, 1);">오시는길</span>
									</p>
								</div>
								<div style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div style="clear: both;"></div>
							</div>
						</div>
						<div id="map" style="width:97%;height:400px; margin:auto; margin-top:10px;"></div>
					</div>
					<div class="ttr_Firm-Profile_html_row1 row">
						
						<div
							class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
						</div>
						<div class="post_column col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="ttr_Firm-Profile_html_column11">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="margin: 2.14em 0em 0.36em 0em;">
										<span
											style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 1.714em; color: rgba(34, 34, 34, 1);">대중교통</span>
									</p>
									<p
										style="margin: 0.71em 0em 0.36em 0em; line-height: 1.69014084507042;">
										<span style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(105, 105, 105, 1);">
										<strong>지하철</strong><br>
										지하철 7호선 하계역 3번출구에서 하차 후 대진고등하교 정문방향으로 5분거리<br>
										<strong>버스</strong><br>
										1224번 100번: 대진고등학교 앞역 하차 후 대진고등학교 방향에서 3분거리<br>
										그 외 버스들은 하계역 하차 후 대진고등학교 정문방향으로 5분거리
										</span>
									</p>
								</div>
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div style="clear: both;"></div>
							</div>
						</div>
						<div class="clearfix visible-xs-block"></div>
						<div class="post_column col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="ttr_Firm-Profile_html_column12">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="margin: 2.14em 0em 0.36em 0em;">
										<span
											style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 1.714em; color: rgba(34, 34, 34, 1);">연락처</span>
									</p>
									<p
										style="margin: 0.71em 0em 0.36em 0em; line-height: 1.69014084507042;">
										<span style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(105, 105, 105, 1);">
										교회: 02-123-1234<br>
										담임목사: 010-1234-5678<br>
										OOO장로: 010-1234-5567<br>
										청년부부장: 010-1234-1235
										</span>
									</p>
								</div>
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div style="clear: both;"></div>
							</div>
						</div>
						
						
						<div
							class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
						</div>
					</div>
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				</div>
			</div>
			<div style="clear: both"></div>
		</div>
		<div style="height: 0px; width: 0px; overflow: hidden;"></div>


		<div
			style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
	</div>
	</div>
	<div style="clear: both"></div>
	</div>
	<div style="height: 0px; width: 0px; overflow: hidden;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c472b3f737218aea70ceaf368e69414c"></script>
	<script>
	    var container = document.getElementById('map'); //지도 표시 div
	    var options = {
		        //center: new kakao.maps.LatLng(37.635899, 127.075043), //지도의 중심좌표
		        center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표
	        level: 1 //지도의 확대 레벨
	    };
	    
	    var map = new kakao.maps.Map(container, options);
	    
	 	// 지도를 표시하는 div 크기를 변경하는 함수입니다
	    function resizeMap() {
	        var mapContainer = document.getElementById('map');
	        mapContainer.style.width = '97%';
	        mapContainer.style.height = '400px'; 
	    }

	    function relayout() {    
	        
	        // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
	        // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다 
	        // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
	        map.relayout();
	    }
	    
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