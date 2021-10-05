<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인기가요 게시판인가요:글쓰기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/css.css" type="text/css">
</head>
<body>
      <div class="board_wrap">
        <div class="board_title">
            <strong>인기가요 게시판인가요:글쓰기</strong>
            <p>게시판을 빠르고 정확하게 안내해드립니다.</p>
        </div>
       	<form:form method="post" action="save">
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><form:input path="designation" /></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>글쓴이</dt>
                        <dd><form:input path="name"  /></dd>
                    </dl>
                    <!-- <dl>
                        <dt>비밀번호</dt>
                        <dd><input type="password" placeholder="비밀번호 입력"></dd>
                    </dl> -->
                </div>
                <div class="cont">
                    <textarea placeholder="내용 입력"></textarea>
                </div>
            </div>
            <div class="bt_wrap">
                <a href="" class="on" value="Save">등록</a>
                <a href="viewemp">취소</a>
            </div>
        </div>
        </form:form>
    </div>
</body>
</html>

<%-- <h1>글쓰기</h1>
	
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
      </form:form>  --%>
		
