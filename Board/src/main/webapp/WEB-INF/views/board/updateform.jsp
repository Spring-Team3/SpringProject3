<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>수정화면</title>

<style type="text/css">
	input 
	{
		margin: 10px 0;
	}
</style>

</head>
<body>
<h1>수정화면</h1>
<form action="boardupdate">
	<input type="hidden" name="idx" value="${board.idx }">
	제목<br>
	<input type="text" name="title" value="${board.title }"/><br>
	내용<br>
	<input type="text" name="content" value="${board.content }"/><br>
	
	<input type="submit" value="수정"/>
</form>
</body>
</html>