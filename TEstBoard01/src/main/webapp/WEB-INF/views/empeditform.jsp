<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>게시글 수정</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/css.css" type="text/css">
</head>
<body>
      <div class="board_wrap">
        <div class="board_title">
            <strong>게시글 수정</strong>
            <p>수정화면</p>
        </div>
        
        <form:form method="POST" action="/board/editsave">
        	<div class="board_view_wrap">
        		<div class="board_view">
	                <div class="title">
	              	<form:input path="designation" />
	              		<!-- 방탄X콜플 신곡 차트 넣어주세요 -->
	                </div>
	                <div class="info">
	                    <dl>
	                        <dt>번호</dt>
	                        <dd><form:input path="id" ></form:input></dd>
	                    </dl>
	                    <dl>
	                        <dt>글쓴이</dt>
	                        <dd><form:input path="name"  /></dd>
	                    </dl>
	                    <dl>
	                        <dt>작성일</dt>
	                        <dd><form:input path="date" /></dd>
	                    </dl>
	                    <dl>
	                        <dt>조회</dt>
	                        <dd><form:input path="salary" /></dd>
	                    </dl>
	                </div>
	                <div class="cont">
	                    <!-- 4일에 발매된 방탄소년단 콜드플레이 콜라보 협업곡 차트에 올려주세요 <br>
						방탄이 콜드플레이곡에 피쳐링한게 아니라 같이 듀엣처럼 부른 신곡입니다 <br>
						팝송에 피쳐링한게 아니에요 한국어 가사도 있어요 <br>
						방탄 신곡이나 마찬가지입니다 인가 후보에 올라가지 않는다는 말이 돌아서 적어봅니다 <br>
						뮤비는 지금 콜드플레이 채널에 올라와 있고 다른버전 방탄채널에 곧 올라올 예정이라고 합니다 <br>
						sns점수 콜플 계정에 올라온 뮤비로 점수 들어가야 맞다고 봅니다 <br> -->
	                </div>
           	    </div>
        			</form:form>
        
	            <div class="bt_wrap">
	                <a href="list.html" class="on">목록</a>
	                <a href="editemp/${emp.id}">수정</a>
	                <a href="deleteemp/${emp.id}">삭제</a>
	            </div>
        	</div>
    </div>
</body>
</html>

<%-- <h1>게시글 수정</h1>
       <form:form method="POST" action="/board/editsave">
      	<table >  
      	
      	<tr>
      	<td></td>  
         <td><form:hidden  path="id" /></td>
         </tr> 
         
         <tr>  
          <td>Name : </td> 
          <td><form:input path="name"  /></td>
         </tr>  
         
         <tr>  
          <td>Salary :</td>  
          <td><form:input path="salary" /></td>
         </tr> 
         
         <tr>  
          <td>Designation :</td>  
          <td><form:input path="designation" /></td>
         </tr> 
         
         <tr>  
          <td> </td>  
          <td><input type="submit" value="Edit Save" /></td>  
         </tr>  
         
        </table>  
       </form:form> --%>

		
