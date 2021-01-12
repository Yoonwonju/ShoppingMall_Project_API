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
		
		$.get(contextPath+"/api/listAllQnA", function(json){
			/* alert("json --> " + json); */
				var dataLength = json.length;
				if(dataLength >= 1){
					var sCont = "";
					for(i=0; i<dataLength; i++){
						sCont += "<tr>";
						sCont += "<td>" + json[i].no + "</td>";
						sCont += "<td><a href='qnaView?no=" + json[i].no + "'>" + json[i].subject + "</a></td>";
						sCont += "<td>" + json[i].writeDate + "</td>";
						if(json[i].repYN == 1){
							sCont += "<td>N</td>";
						}else{
							sCont += "<td>Y</td>";
						}
						sCont += "</tr>";
					}
					$("#qnaLists:last-child").append(sCont);
				}
		});
		
		$('#goWrite').on('click',function(){
			window.location.href = "qnaWrite";
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
      <table id="cartList">
      	<thead>
      		<th>번호</th> <th>제목</th> <th>등록일</th> <th>답변 여부</th>
      	</thead>
      	<tbody id="qnaLists">
      	</tbody>
      <!-- <tr>
        <th>번호</th> <th>제목</th> <th>등록일</th> <th>답변 여부</th>    
      </tr> -->
      
      <%-- <c:forEach items="${qnaList}"  var="qna">
      <tr>  
        <td> ${qna.no} </td>    
        <td> <a href="qnaView.do?no=${qna.no}"> ${qna.subject} </a></td>      
        <td> <fmt:formatDate value="${qna.writeDate}" type="date"/></td>
        <td> 
          <c:choose>
            <c:when test="${qna.repYN==1}"> no </c:when>
            <c:when test="${qna.repYN==2}"> yes </c:when>
          </c:choose>
        </td>    
      </tr>
      </c:forEach>     --%>
      </table>
      <div class="clear"></div>
      <div id="buttons" style="float:right">
      <input id="goWrite" type="button" value="1:1 질문하기"  class="submit"> 
      <input id="continue" type="button" value="쇼핑 계속하기"  class="cancel">  
      </div>
    </form>
  </article>
<%@ include file="../footer.jsp" %>
</body>
</html>