<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인기가요 게시판인가요/글쓰기</title>
</head>
<body>
	<h1>글쓰기</h1>
       <form:form method="post" action="save">  
      	<table >  
         <tr>  
          <td>작성자 : </td> 
          <td><form:input path="name"  /></td>
         </tr>  
          
         <tr>  
          <td>제목 :</td>  
          <td><form:input path="designation" /></td>
         </tr> 
         
         <tr>  
          <td>내용 :</td>  
          <td><form:input path="salary" /></td>
         </tr>
         
         <tr>  
          <td> </td>  
          <td><input type="submit" value="Save" /></td>  
         </tr>  
        </table>  
      </form:form>  
</body>
</html>

		
