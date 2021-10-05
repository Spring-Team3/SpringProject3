<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="UTF-8"> -->
<title>게시판 목록</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/css.css" type="text/css">

</head>
<body>
	<div class="board_wrap">
        <div class="board_title">
            <strong>게시판 목록</strong>
            <p>전체 350,000건 게시판 관리기준안내></p>
        </div>
	
		<div class="board_list_wrap">
	        <div class="board_list">
	           <div class="top">
	                 <div class="num">번호</div>
	                 <div class="title">제목</div>
	                 <div class="writer">글쓴이</div>
	                 <div class="date">작성일</div>
	                 <div class="count">조회</div>
	                 <!-- <div class="count">수정</div>
	                 <div class="count">삭제</div> -->
	            </div>
	            <c:forEach var="emp" items="${list}">
	            <div>
	            	<div class="num">${emp.id}</div>
	            	<div class="title"><a href="editemp/${emp.id}">${emp.designation}</a></div>
	            	<div class="writer">${emp.name}</div>
	            	<div class="date">${emp.date}</div>
	            	<div class="count">${emp.salary}</div>
	            </div>
	            </c:forEach>
	        </div>
		    <div class="board_page">
		    	<a href="#" class="bt first"><<</a>
		        <a href="#" class="bt prev"><</a>
		        <a href="#" class="num on">1</a>
		        <a href="#" class="num">2</a>
		        <a href="#" class="num">3</a>
		        <a href="#" class="num">4</a>
		        <a href="#" class="num">5</a>
		        <a href="#" class="bt next">></a>
		        <a href="#" class="bt last">>></a>       
		    </div>
	    	<div class="bt_wrap">
	        	<a href="empform" class="on">글쓰기</a>
	    	</div>
    	</div>
    </div>
</body>
</html>

<%-- <table>
	        	<c:forEach var="emp" items="${list}">
            		<tr>
			   			<td>${emp.id}</td>
			    		<td>${emp.designation}</td>
			    		<td>${emp.name}</td>
			    		<td>${emp.salary}</td>
			    		<td><a href="editemp/${emp.id}">수정</a></td>
			    		<td><a href="deleteemp/${emp.id}">삭제</a></td>
		    		</tr>
            	</c:forEach>  
	        
	        </table> --%>
	        
            
		<%-- <table>
			<!-- <tr class="headLine">
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>조회수</th>
				<th>수정</th>
				<th>삭제</th>
			</tr> -->
		    <c:forEach var="emp" items="${list}"> 
		    
		    <tr>
			    <td>${emp.id}</td>
			    <td>${emp.designation}</td>
			    <td>${emp.name}</td>
			    <td>${emp.salary}</td>
			    <td><a href="editemp/${emp.id}">수정</a></td>
			    <td><a href="deleteemp/${emp.id}">삭제</a></td>
		    </tr>
		    
		    </c:forEach>
		    
	    </table>
	    <br/> --%>

	
