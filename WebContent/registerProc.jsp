<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	//out.print(id);
	//out.print(pwd);

	// 1. JDBC 드라이버 로드
		// C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib의 ojdbc6이 파일을 webContent 밑의 WEP-INF lib에 추가시켜준다
		// 05.JDBCProject에 빌드페스에 ojdbc6 추가 => 확인? Java Resource의 라이브러리 안.
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// 2. 데이터베이스와 연결
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserc", "jsp1234");
	
	// 3. SQL문 실행
	String sql = "insert into member values('"+id+"', '"+pwd+"', '홍길동', 20, '1', '서울시', '2015-04-17')"; // "+id+ " : 변수와 문자열과 연결해주기 위해
	Statement stmt = con.createStatement(); 	//sql문으로써 역할을 해줄수 있게 해주는 것
	int result = stmt.executeUpdate(sql);	//실행
	
	out.print(result);
	// 4. 데이터베이스와 연결 끊음
	stmt.close();
	con.close();
%>    
    
    
    
    
    <!DOCTYPE html>
    
    <html>
    <head>
    		<title>JSP/Servlet Example</title>
    </head>
    
    <body>
    
    </body>
    </html> 
    </html> 