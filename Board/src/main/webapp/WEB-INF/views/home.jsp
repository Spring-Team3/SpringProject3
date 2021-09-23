<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
	<title>Home</title>
	<style type="text/css">
	body
	{
		width: 900px;
		margin: auto;
	}
	table,tr
	{
		width: 700px;
		border: 1px solid black; 
	}
	td
	{
		padding: 5px;
	}
	.mainbtn
	{
		background-color: pink;
		padding: 3px;
		border-radius: 5px; 
		text-decoration: none;
		color: black;
		margin-left: 600px;
	}
	a:visited 
	{
		color: blue;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<h1>
	게시판
</h1>

<a class="mainbtn" href="boardinsertform">글쓰기</a>


<!-- <div style="margin-bottom: 30px;"><a href="/org5">home</a></div> -->
<div>
	<table style="margin-top: 20px;">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			
		</tr>
		<c:forEach items="${alist }" var="dto">
			<tr>
				<td>${dto.idx}</td>
				<td style="text-align: center;">
					<a href="boardupdateform?idx=${dto.idx }">${dto.title}</a>
				</td>
				<td>${dto.date}</td>
				
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>
