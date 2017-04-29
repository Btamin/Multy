<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body id="home" class="homepage">

<%-- 	<%@include file="/WEB-INF/views/header.jsp" %> --%>
		<div class="container">
			<table align="center">
				<c:forEach begin="0" end="7" varStatus="status">
					<tr>
						<td style="padding-bottom:20px;"><img src="<c:url value="/resources/images/gallery/${status.count }.jpg"/>"></td>
					</tr>
					
					<tr>
						<td class="galleryContents" style="padding-bottom:50px;" align="center">${contentsList[status.count-1] }</td>
					</tr>
					
				</c:forEach>
			</table>
		</div>	
<%-- 	<%@include file="/WEB-INF/views/footer.jsp" %> --%>
	
</body>