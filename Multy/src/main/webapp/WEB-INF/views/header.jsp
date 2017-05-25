<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>(주)신영산업</title>
<script type="text/javascript">
	WebFontConfig = {
		custom : {
			families : [ 'Nanum Gothic' ],
			urls : [ 'http://fonts.googleapis.com/earlyaccess/nanumgothic.css' ]
		}
	};
	(function() {
		var wf = document.createElement('script');
		wf.src = ('https:' == document.location.protocol ? 'https' : 'http')
				+ '://ajax.googleapis.com/ajax/libs/webfont/1.4.10/webfont.js';
		wf.type = 'text/javascript';
		wf.async = 'true';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(wf, s);
	})();
	
// 	$(document).ready(function() {
// 		alert("${page}");
// 		$("#privision > li:eq('1')").addClass("active");		
// 	});
	
	
</script>

<!-- core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/animate.min.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/owl.carousel.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/owl.transitions.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/prettyPhoto.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/responsive.css"/>"	rel="stylesheet">

<!-- 추가 css[S] -->
<link href="<c:url value="/resources/css/contents.css"/>" rel="stylesheet">
<!-- 추가 css[E] -->

<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    
	<link rel="shortcut icon"	href="<c:url value="/resources/images/ico/favicon.ico"/>">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="/resources/images/ico/apple-touch-icon-144-precomposed.png"/>">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="/resources/images/ico/apple-touch-icon-114-precomposed.png"/>">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="/resources/images/ico/apple-touch-icon-72-precomposed.png"/>">
	<link rel="apple-touch-icon-precomposed" href="<c:url value="/resources/images/ico/apple-touch-icon-57-precomposed.png"/>">
	
	<script src="<c:url value="/resources/js/jquery.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
    <script src="<c:url value="/resources/js/mousescroll.js"/>"></script>
    <script src="<c:url value="/resources/js/smoothscroll.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.prettyPhoto.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.isotope.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.inview.min.js"/>"></script>
    <script src="<c:url value="/resources/js/wow.min.js"/>"></script>
    <script src="<c:url value="/resources/js/main.js"/>"></script>
    
    
    <script>
    	function delBtn(no){
    		var result = confirm('삭제하시겠습니까?');
    		if(result == true){
    			$(location).attr('href','/delBarod.do?no='+no);
    		}
    	}
    	
    	$(document).ready(function(){
    		if("${idx}" != "")
    			$("#menuDiv > #menuList li").eq("${idx}").addClass("active");
    		
    		if("${page}" == ""){
    			$("#privision > li:eq('0')").addClass("active");
    		}else{
    			$("#privision > li:eq('${page-1}')").addClass("active");
    		}
    		
    		if("${gallery}" == ""){
    			$("#galleryApply").hide();
    			$("#galleryIntro").hide();
    			$("#explanation").hide();
    			$("#galleryProduct").show();
    		}else if("${gallery}" == "2"){
    			$("#galleryIntro").hide();
    			$("#galleryProduct").hide();
    			$("#explanation").hide();
    			$("#galleryApply").show();
    		}else if("${gallery}" == "3"){
    			$("#galleryApply").hide();
    			$("#galleryProduct").hide();
    			$("#explanation").hide();
    			$("#galleryIntro").show();
    		}else if("${gallery}" == "4"){
    			$("#galleryApply").hide();
    			$("#galleryProduct").hide();
    			$("#galleryIntro").hide();
    			$("#explanation").show();
    			
    		}
    		
    		if("${insert}" == "Y" || "${delete}" == "Y"){
    			$(location).attr('href','/contents/board.do?idx=2');
    		}
    		
    		$("#btnWrt").click(function(){
    			$(location).attr('href','/setWrite.do');
    		});
    		
    		// 갤러리 서브메뉴
    		if("${gallery}" == ""){
    			$("#gallerySubMenu > ul > li:eq('0')").addClass("active");
    		}else{
    			$("#gallerySubMenu > ul > li:eq('${gallery - 1}')").addClass("active");
    		}
    		
    		$('.dropdown-toggle').dropdown();
    		var str = "${url}";
    		var total = $("html").outerHeight();
    		var bodySize = $("body").outerHeight()
    		
    		if(str.indexOf('board') != -1 || str.indexOf('location') != -1){
    			if(total > bodySize){
	    			$("#footer").css("margin-top",total-bodySize + "px");
    			}
    		}
    		if(document.body.clientWidth > 766){
    			$("#dropMenu").css("padding-top","37px");
    		}
    		
    		
    	});
    </script>
	
</head>
<!--/head-->

<header id="header">
	<nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/"><img src="/resources/images/logo.png" class="img-rounded" style="height:50px;"></a>
			</div>
			
			

			<div id="menuDiv" class="collapse navbar-collapse navbar-right">
				<ul id="menuList" class="nav navbar-nav">
					<li class="scroll"><a href="/contents/introduce.do?idx=0"><span class="headerMenu">회사소개</span></a></li>
						  <li>
						  <div class="dropdown" id="dropMenu">
						  <a id="dLabel" style="color:#777" data-target="#" href="http://example.com" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
						    <span class="headerMenu">용융아연도금</span>
<!-- 						    <span class="caret"></span> -->
						  </a>
						
						  <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
						    	<li><a href="/contents/gallery.do?idx=1">소개</a></li>
						    	<li><a href="/contents/gallery.do?idx=1&gallery=2">공정</a></li>
						    	<li><a href="/contents/gallery.do?idx=1&gallery=3">취급품목</a></li>
						  </ul>
						  </div>
						  </li>
					<!-- <li class="scroll"><a href="/contents/gallery.do?idx=1"><span class="headerMenu">용융아연도금</span></a></li> -->
					
					<li class="scroll"><a href="/contents/board.do?idx=2"><span class="headerMenu">공지사항</span></a></li>
					<li class="scroll"><a href="/contents/location.do?idx=4"><span class="headerMenu">찾아 오시는 길</span></a></li>
					<c:if test="${not empty id}">
						<a href="/admin/changePass.do" role="button" class="btn btn-info btn-xs">비밀번호 수정</a>
						<a href="/doLogout.do" role="button" class="btn btn-danger btn-xs">로그아웃</a>
					<li class="scroll"><span style="color:orange">관리자님 반갑습니다</span>
					</li>
					</c:if>
				</ul>
			</div>
		</div>
		<!--/.container-->
	</nav>
	<!--/nav-->
</header>
<!--/header-->
