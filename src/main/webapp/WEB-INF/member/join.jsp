<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 게시판</title>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		var contextPath = "<%=request.getContextPath()%>";
		
		$('#reg').on('click', function(){
			alert("회원가입");
			var newMember = {
					id: $('#id').val(),
					pwd: $('#pwd').val(),
					name: $('#name').val(),
					email: $('#email').val(),
					zipNum: $('#zipNum').val(),
					address: $('#address').val(),
					phone: $('#phone').val()
			};
			alert("ID : " + newMember.id + "\nPWD : " + newMember.pwd + "\nNAME : " + newMember.name
					 + "\nEMAIL : " + newMember.email + "\nZIPNUM : " + newMember.zipNum
					 + "\nADDRESS : " + newMember.address + "\nPHONE : " + newMember.phone);
			$.ajax({
				url : contextPath + "/api/joinMember/",
				type : 'post',
				contentType : "application/json; charset=utf-8",
				dataType : 'json',
				cache : false,
				data : JSON.stringify(newMember),
				success : function(res){
					alert(res);
					window.location.href = "login";
				},
				error : function(request, status, error){
					alert("code: " + request.status + "\nmessage: " + request.responseText +
							"\nerror: " + error);
					window.location.href = "join";
				}
			})
		});
		
		$(function(){
			$('#continue').on('click',function(){
				window.location.href = contextPath + "/main";
			});
		});
	})

</script>
</head>
<body>
<%@ include file="../header.jsp"%>   
<%@ include file="sub_img.html"%> 
<%@ include file="sub_menu.jsp" %>   

  <article>
    <h2>Join Us</h2>
    <form id="join" action="" method="post">
		<fieldset> 
	        <legend>Basic Info</legend>
	        <label>User ID</label>
		        <input type="text"      id="id" name="id"        size="12"  >
		        <input type="button"    id="dup" value="중복 체크"  class="dup"><br>
		        <div id="check_id"></div>
	        <label>Password</label> 
		        <input type="password"  id="pwd" name="pwd"><br>
		        <div id="check_pwd"></div> 
	        <label>Retype Password</label> 
		        <input type="password"  id="pwdCheck" name="pwdCheck"><br> 
	        <label>Name</label>
	        	<input type="text"      id="name" name="name"><br> 
	        	<div id="check_name"></div>
	        <label>E-Mail</label>
	        	<input type="email"     id="email" name="email"><br>
	        	<div id="check_email"></div>
	</fieldset>
	<fieldset>
	        <legend>Optional</legend>
	        <label>Zip Code</label> 
		        <input type="text"       id="zipNum" name="zipNum"   size="10" onclick="">      
		        <input type="button"     id="findZipNum" value="주소 찾기" class="dup"><br>
	        <label>Address</label> 
		        <input type="text"       id="addr1" name="addr1"   size="50">
		    <label></label>
				<input type="text"       id="addr2" name="addr2"   size="25"> <br>
		    <label>Phone Number</label> 
		        <input  type="tel"       name="phone"><br>
	</fieldset>
      <div class="clear"></div>
      <div id="buttons">
        <input id="reg" type="button" value="회원가입"   class="submit"> 
        <input id="continue" type="reset"  value="취소" class="cancel">
      </div>
    </form>
  </article>
<%@ include file="../footer.jsp" %>
</body>
</html>