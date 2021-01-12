<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 고객 게시판</title>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		var contextPath = "<%=request.getContextPath()%>";
		
		$('#new').on('click', function(){
			alert("아아아");
			var newQna = {
					subject: $('#subject').val(),
					content: $('#content').val()
			};
			alert("SUBJECT : " + newQna.subject + "\nCONTENT : " + newQna.content);
			$.ajax({
				url : contextPath + "/api/insertQnA/",
				type : 'post',
				contentType : "application/json; charset=utf-8",
				dataType : 'json',
				cache : false,
				data : JSON.stringify(newQna),
				success : function(res){
					alert(res);
					window.location.href = "qnaList";
				},
				error : function(request, status, error){
					alert("code: " + request.status + "\nmessage: " + request.responseText +
							"\nerror: " + error);
					window.location.href = "qnaList";
				}
			})
		});
		
		$('#goList').on('click',function(){
			window.location.href = "qnaList";
		});
		
		$('#continue').on('click',function(){
			window.location.href = contextPath + "/main";
		});
		
	});
</script>
</head>
<body>
<%@ include file="../header.jsp" %>   
<%@ include file="../product/sub_img.html"%> 
<%@ include file="../product/sub_menu.jsp" %> 
	<article>
	    <h2> 1:1 문의 글쓰기 </h2>
	    <h3> 고객님의 질문에 대해서 운영자가 1:1 답변을 드립니다.</h3>    
		<form name="formm" method="post" action="">
			<fieldset>	
				<legend>Board Info</legend>		
			    <label>Title</label>
			    <input type="text" name="subject"  size="62" ><br>
				<label>Content</label>
			    <textarea rows="8" cols="65" name="content"></textarea><br>
			</fieldset>   
		 <div class="clear"></div>
		 <div id="buttons" style="float:right">
		 	<!-- <input id="qnaList" type="button" value="취소"  class="submit"> -->
			<input id="new" type="submit"  value="글쓰기"     class="submit"> 
			<input id="goList" type="button"   value="취소"     class="cancel">
			<input id="continue" type="button"  value="쇼핑 계속하기"  class="submit">	
		  </div>
		</form>
	</article>
<%@ include file="../footer.jsp" %>
</body>
</html>