<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>글쓰기</title>

<style type="text/css">
	input 
	{
		margin: 10px 0;
	}
</style>

</head>
<body>
<h1>작성화면입니다.</h1>
<form action="boardinsert">
	제목<br>
	<input type="text" name="title"/><br>
	내용<br>
	<input type="text" name="content"/><br>
	
	
	<input type="submit" value="등록"/>
</form>
</body>
</html>