<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script>
	$(document).ready(function(){
		$("#btnLogin").click(function(){
			$(location).attr('href','/setLogin.do');		
		});
		
		if("${memberCheck}" == "Y"){
			$(location).attr('href','../');
		}else if("${memberCheck}" == "N"){
			alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
		}
	});
</script>

<body id="home" class="homepage">

	<form action="/setLogin.do" method="post">
	<div class="container" style="padding-left:300px;">
	
	<div class="form-group" style="padding-top:50px;">
	    <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
	    <div class="col-sm-10" >
	      <input type="text" class="form-control" id="inputId" name="inputId" style="width:300px;">
	    </div>
	  </div>
	  
	  <div class="form-group" style="padding-top:50px;">
	    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="inputPass" name="inputPass" style="width:300px;">
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10" style="margin-top:30px;margin-bottom:30px;">
	      <button type="submit" class="btn btn-info btn-lg">로그인</button>
	    </div>
	  </div>
	</div>
	</form>

</body> 