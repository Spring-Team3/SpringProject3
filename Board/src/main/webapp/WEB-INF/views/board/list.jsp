<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style type="text/css">
	table,tr
	{
		border: 1px solid black; 
	}
	td
	{
		padding: 5px;
	}
	a
	{
		background-color: pink;
		padding: 3px;
		border-radius: 5px; 
		text-decoration: none;
		color: black;
	}
	a:visited 
	{
		color: blue;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- <script type="text/javascript">
	$("document").ready( function(){ 
		
		/* $("#update").on("click", function name() {	alert('누름'); }); */
		
	} );
</script> -->
</head>
<body>
<h1>list</h1>
<%-- ${aa}<br>
${alist}
<br>
<c:forEach items="${alist}" var="dto">
	${dto }<br>
</c:forEach>
<br> --%>
<div style="margin-bottom: 30px;"><a href="/org5">home</a></div>
<div>
	<table>
		<tr>
			<th>idx</th>
			<th>id</th>
			<th>pw</th>
			<th>age</th>
			<th>gender</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${alist }" var="dto">
			<tr>
				<td>${dto.idx}</td>
				<td>${dto.id}</td>
				<td>${dto.pw}</td>
				<td>${dto.age}</td>
				<td>${dto.gender}</td>
				<td>
					<a href="memberupdateform?idx=${dto.idx }">수정</a>
				</td>
				<td>
					<a href="memberdelete?idx=${dto.idx }">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>

</body>
</html>