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
		var no = ${param.no}
		/* alert("게시글번호 --> " + no); */
		
		$.get(contextPath + "/api/getQnA/" + no, function(json){
			/* alert("json --> " + json); */
			var sContSub = "";
				sContSub = json.subject;
			$("#subject").append(sContSub);
			
			var sContDate = "";
				sContDate = json.writeDate;
			$("#writeDate").append(sContDate);
			
			var sContContent = "";
				sContContent = json.content;
			$("#content").append(sContContent);
			
			var sContRep = "";
				sContRep = json.rep;
			$("#rep").append(sContRep);
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
      <h2> 1:1 고객 게시판 </h2>
      <h3> 고객님의 질문에 대해서 운영자가 1:1 답변을 드립니다.</h3>    
    <form name="formm" method="post">
    <table id="notice">
      <tr>
		<th>제목</th>
		<td id="subject"></td> 
      </tr>
      <tr>
        <th>등록일</th>
        <td id="writeDate"></td>
      </tr>
      <tr>
        <th>질문내용</th>
        <td id="content"></td>
      </tr>
      <tr>
        <th>답변 내용</th>
        <td id="rep"></td>  
      </tr>
    </table>
    <div class="clear"></div>
    <div id="buttons" style="float:right">
      <input id="goList" type="button"  value="목록보기"     class="submit"> 
      <input id="continue" type="button"  value="쇼핑 계속하기"  class="cancel">  
    </div>
    </form>
  </article>
<%@ include file="../footer.jsp" %>
</body>
</html>