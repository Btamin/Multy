<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body id="home" class="homepage">

<%-- 	<%@include file="/WEB-INF/views/header.jsp" %> --%>
		
		<!-- <div class="container">
			<div class="col-md-4">
			</div>
			<div id="gallerySubMenu" class="col-md-4" style="padding-top:50px; padding-bottom:50px;">
				<a href="/contents/gallery.do?idx=1" role="button" type="button" class="btn-info btn-lg">소개</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="/contents/gallery.do?idx=1&gallery=2" role="button" type="button" class="btn-info btn-lg">공정</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="/contents/gallery.do?idx=1&gallery=3" role="button" type="button" class="btn-info btn-lg">적용품목</a>
			</div>
			<div class="col-md-4"></div>
		</div> -->
		
		<div class="container">
		<div class="col-md-2" style="padding-top:50px;padding-right:50px;" id="gallerySubMenu">
			<ul class="nav nav-pills nav-stacked">
			  <li role="presentation"><a href="/contents/gallery.do?idx=1">소개</a></li>
			  <li role="presentation"><a href="/contents/gallery.do?idx=1&gallery=2">공정</a></li>
			  <li role="presentation"><a href="/contents/gallery.do?idx=1&gallery=3">취급품목</a></li>
			  <li role="presentation"><a href="/contents/gallery.do?idx=1&gallery=4">백화현상에대해</a></li>
			</ul>		
		</div>
		
		<table>
		<div class="container col-md-10" id="galleryIntro">
				<c:forEach begin="0" end="7" varStatus="status">
					<div class="col-md-4">
					<img src="<c:url value="/resources/images/gallery/${status.count }.jpg"/>" style="height:150px;">
					<h5>${contentsList[status.count-1]}</h5>
					</div>
        				
				</c:forEach>
		</div>
		</table>
		
		<div class="container col-md-10" id="galleryApply">
		</div>
		
		
		<div class="container col-md-10" id="galleryProduct">
			<!-- <h1>최고의 기술과 서비스를 제공하여<p><br>
			고객에게 무한한 만족과 감동을 드리는 용융아연도금업체<p><br></h1> -->
			<h2 class="text-primary">용융아연도금이란</h2><p><br>
			도금하고자 하는 철강재에 붙어있는 먼지, 기름, 녹 등의 불순물을 제거한 후 약450℃ 정도의 아연용량에 피도금물(철강재)을
			침적, 철소지와 아연이 서로 반응하여 철-아연의 합금층이 형성되어 이 합급층 위에 순수한 아연층이 입혀지게 되는 것을 말합니다.<p>
			
			<h2 class="text-primary">용융아연도금의 필요성</h2><p><br>
			용융앙연도금은 철강보강재를 보호하는 확실한 방법이다. 특히 콘크리트 내구성이 보장되지 않는 곳에서 더욱더 절실하다.
			용융아연도금은 어떤 극심한 노출 상화도 고려함과 동시에 철구조물의 간수명, 부식으로부터의 탈피, 저유지비를 중요한 지표로 삼고있다.<p><br>
			<img src="/resources/images/gallery/product/galleryProduct1.PNG"/><p><br>
			
			<h2 class="text-primary">용융아연도금의 경제성</h2><p>
			철강재의 부식을 방지하기 위한 표면 도장에는 소요비용과 방식 효과가 다른여러종류의 방법이 있으나 비용이 저렴하면서 수명이 길고 또한
			충분한 방식효과를 갖는 것이 이상적입니다. 일반적으로 도장 경제성 여하는 처음에 소요되는 비용, 도장후 다음 보수시 까지의 기간,
			보수에 소용되는 비용등에 의하여 결정됩니다.<p>
			
			<img src="/resources/images/gallery/product/galleryProduct2.PNG"/><p>
		</div>
		
		<div class="container col-md-10" id="explanation">
			<br>
			<strong><h2 class="text-primary">백화현상</h2><br>
			도금제품을 대기중에 사용하고 있으면 도금표면에 치밀한 산화팩을 향상하는 것에 따라 광택을 잃게 된다. 아연도금이 우수한 내식성을 가진 것에는
			이 치밀한 산화피막이 대기를 차단하여 하지아연을 보호하는 것에 의한다. 백화는 이 보호 피막이 아니고 백색의분말현상의 녹이 도금표면에발생하여
			가루로 부착되어 있는 것을 말한다.<p>
			
			<h2 class="text-primary">발생원인</h2><br>
			백화는 아연광택이 있는 아연도금 층이 비나 이슬에젖어 쉽게 건조하지 못하는 환경하에서 발생하는 것으로 수중에침척된 상태에서 발생하지않는다.
			도금표면에 아연을 부식시키는 물질 예를 들면 산청물질, 알칼리성물질, 유기산, 식염 등이 부착하면 백화가 발생한다. 예상수송 등에서 해수에 접히는
			경우 등으로 많이 나타난다.
			
			백화가 염기성 탄산아연(2ZnCo3-3Zn(OH)2)이 주성분으로 알려져있고 그 발생에는 반드시 수분이 관여한다. 수분은 우수나 물에 의한 것도있지만
			이슬에 의한것도 종종 있따. 도금 층의 일부가 건조하고 일부가 젖어있는 상태로 그 경계선이 장시간 이동하지 않을 떄에 그 경계선에 인접한 젖어있는
			측의 도금면상에 발생하는 경우를 많이 볼 수 있다. 건조의 경계선이 장시간 소요되며 이동되는 경우에 백화의 발생부는 큰면적을 갖게 된다.
			
			물방울은 미세하지만 염류를 포함하여 전기를 전달한다. 또 물방울의 외주는 공기에 접촉하고 있기 때문에 내부보다 공기 중의 산소를 많이 용해하고 있다.
			이 상태에서 산소농염 전지현상이 얼마나 물방울의 중앙부에 접하는 아연표면은 물방을 외주의 경계선에 접하는 아연표면보다 저전위로 된다. 이 때문에
			중앙부에 가까운 아연이 이온화되어 물방울에 용출하여 수산기나 탄산이온에 의해 염기성 탄산아연으로 변하고 표면에 침착하여 백화현상이 나타난다.
			
			백화는 분말상의 아연산화물이기 때문에 실제 도금 층의 부식이 경미하더라도 현저하게 침식된 것으로 보여질 수 있다.
			어느 정도 진행하여 백청의 밑부분이 흑색으로 변하고 있는 경우에도 외관으로 느끼는 것보다 침식되고 있는 양은 경미하게 소량으로 되어 있다.
			통산 백화에 의한 아연의 감량은 도금피막두께로 1㎛이하이다.
			백화는 발생환경으로부터 개방되면 저절로 소멸되며 도금표면에는 치밀한 보호성 피막을 형성하기 때문에 내식성에는 영햐잉 없고 시간이 경과함에 따라 외관상의 차도 없어지게 된다.
			따라서 백화는 도금품질상의 결함으로 취급할 문제는 아니다.
			
			<h1 class="text-primary">백화현상 방지대책</h1><p>
			
			<h2 class="text-primary">1. 환경의 개선</h2><br>
			 백화를 방지하는 데는 보관 및 취급시에 발생환경을 피하는 것이 효과적이다.<p>
			 
			 통풍이 양호한 실내에 보관한다.
			 옥외보관에서는 수분이 접하지 않는 장소에 지면과 이격하여 보고나한다.
			 부분적인 수분접촉이 없도록 배려한다
			 중첩의 접촉부가 많은 것은 우천중의 하역을 피한다.
			 옥외 보관의 경우 우천 시에는 완전히 커버를 씌우고 날씨가 맑아지면 빨리 커버를 벗긴다.
			조해성물질, 흡습성물질의 근처에 두지 않는다.
			해상수송, 해안보관 등에서는 해수의 비말이 접하지 않도록 한다. 
			
			<h2 class="text-primary">2. 백화방지 처리</h2><br>
			화학약품에 의한 화성처리와 도장의 2가지 방법이 있다
			
			화성처리에는 크롬산 처리가 널리 이용되고 있다.
			그러나 착색하지 않는 희박한 크롬산 처리를 실시하기 때문에
			방식효과는 기대할 수 없고 백화방지 효과도 단기적이다.
			
			도장에는 무색의 속건성 도료가 이용되고 있다.
			종래에는 유기용제가 사용되었기 때문에 작업환경상의 문제가
			있었지만 최근에는 수용도료가 널리 사용되고 있다.
			</strong><p>
		</div>
		
		
		</div>
		
			
<%-- 	<%@include file="/WEB-INF/views/footer.jsp" %> --%>
	
</body>