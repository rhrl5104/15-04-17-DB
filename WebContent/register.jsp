<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    
    <html>
    <head>
    		<title>JSP/Servlet Example</title>
    </head>
    
    <body>
    	<h1>회원가입</h1>
    	<hr>
<!--     	
    	메소드 안쓸시 get방식
    	<form action="registerProc.jsp">
    		<input type="text" name="id">
    		<input type="text" name="pwd">
    		<input type="submit" value="가입">
    	</form>
-->

	<form action="registerProc.jsp">
		<label for="id">아이디 : </label>
		<input type="text" name="id" id="id"> <br>
		
		<label for="pwd">비밀번호 : </label>
		<input type="password" name="pwd" id="pwd"> <br>
		 
		<label for="name">이 름 :</label>
		<input type="text" name="name" id="name"> <br>
		
		<label for="gender">성 별 :</label>
		<input type="radio" name="gender" id="gender" value="1">남자
		<input type="radio" name="gender" id="gender" value="2">여자 <br>
		
		<label for="age">나 이 :</label>
		<input type="text" name="age" id="age">  <br>
		
		<label for="addr">주 소 : </label>
		<input type="text" name="addr" id="addr"> <br>
			
		<input type="submit" value="가입">
		
	</form>
    
    </body>
    </html>