<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>(주)신영산업</title>
	<!-- core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/owl.carousel.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/owl.transitions.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/prettyPhoto.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/responsive.css"/>" rel="stylesheet">
    
    <!-- 추가 css[S] -->
    	<link href="<c:url value="/resources/css/contents.css"/>" rel="stylesheet">
    <!-- 추가 css[E] -->
    
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="<c:url value="/resources/images/ico/favicon.ico"/>">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="/resources/images/ico/apple-touch-icon-144-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="/resources/images/ico/apple-touch-icon-114-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="/resources/images/ico/apple-touch-icon-72-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" href="<c:url value="/resources/images/ico/apple-touch-icon-57-precomposed.png"/>">
    
</head><!--/head-->

    <header id="header">
        <nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/"><span class="headerMenu">(주) 신영산업(임시로고)</span></a>
<%--                     <a class="navbar-brand" href="/Multy"><img src="<c:url value="/resources/images/logo.png"/>" alt="logo"></a> --%>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                    	<!-- 메뉴 클릭시  class active적용 -->
                    	<!-- 이전 메뉴에 설정되어있는 class active 삭제하기 -->
                        <li class="scroll active"><a href="<c:url value="/contents/introduce.do"/>"><span class="headerMenu">회사소개</span></a></li>
                        <li class="scroll"><a href="<c:url value="/contents/gallery.do"/>"><span class="headerMenu">용융아연도금</span></a></li>
<!--                         <li class="scroll"><a href="#services"><span class="headerMenu">자주찾는질문</span></a></li> -->
                        <li class="scroll"><a href="#portfolio"><span class="headerMenu">공지사항</span></a></li>
                        <li class="scroll"><a href="#meet-team"><span class="headerMenu">찾아 오시는 길</span></a></li>
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>
    <!--/header-->
