<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!-- 필수 [S] -->
	<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
	<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<!-- 필수  [E] -->
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>(주)신영산업<decorator:title /></title>
    <!-- header -->
    <decorator:head></decorator:head>
    <!-- //header -->
</head>
    <%@include file="/WEB-INF/views/header.jsp" %>
            <decorator:body ></decorator:body>
    <%@include file="/WEB-INF/views/footer.jsp" %>
</html>
