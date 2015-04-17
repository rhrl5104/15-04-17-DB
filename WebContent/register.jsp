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
    	
    	<!-- 메소드 안쓸시 get방식 -->
    	<form action="registerProc.jsp">
    		<input type="text" name="id">
    		<input type="text" name="pwd">
    		<input type="submit" value="가입">
    	</form>
    
    </body>
    </html>