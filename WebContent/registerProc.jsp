<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String addr = request.getParameter("addr");
	
	//out.print(id);
	//out.print(pwd);

	// 1. JDBC 드라이버 로드
		// C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib의 ojdbc6이 파일을 webContent 밑의 WEP-INF lib에 추가시켜준다
		// 05.JDBCProject에 빌드페스에 ojdbc6 추가 => 확인? Java Resource의 라이브러리 안.
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// 2. 데이터베이스와 연결
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserc", "jsp1234");
	
	// 3. SQL문 실행
	// 3-1) Statement 객체 이용
/* 	
	String sql = "insert into member values('"+id+"', '"+pwd+"', '홍길동', 20, '1', '서울시', '2015-04-17')"; // "+id+ " : 변수와 문자열과 연결해주기 위해
	Statement stmt = con.createStatement(); 	//sql문으로써 역할을 해줄수 있게 해주는 것
	int result = stmt.executeUpdate(sql);	//실행 
	out.print(resulut);
*/
	// 3-2) PreparedStatement 객체 이용
	String sql = "insert into member values(?, ?, ?, ?, ?, ?,  default)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	//바인딩
	//숫자는 String sql = "insert into member values(?, ?, ?, ?, ?, ?,  default)"; 의 괄호안의 순서.
	//따라서 값들을 연결시켜주는것이다.
	pstmt.setString(1, id);
	pstmt.setString(2, pwd);
	pstmt.setString(3, name);
	pstmt.setInt(4, Integer.parseInt(age));
	pstmt.setString(5, gender);
	pstmt.setString(6, addr);
	
	int result = pstmt.executeUpdate();
	
	out.print(result);
	
	// 4. 데이터베이스와 연결 끊음
	//stmt.close();
	pstmt.close();
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