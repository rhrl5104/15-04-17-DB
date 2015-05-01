/*
 
중간고사
1. 설명(10점) * 그림도 같이 그려도 됨..
 - 서블릿 / JSP 동작 방식
 - 웹서버, 웹서버 어플리케이션 
 - 페이지 이동
 - 요청 방법
 - 영역

2. 회원관리 소스(20점)
p.260 ~ 262 책이랑 우리가 한 소스 섞어서 냈음


 
 
 
 
프로그램을 배우는 것?
데이터를 가져다 가공해서 - 사람들이 원하는 데이터를 만들기 위해.

1. 데이터 저장(RAM)	
	변수 => 데이터 1개만 저장 가능.
	배열 => 데이터를 묶어 저장 가능.
	구조체 => 서로 다른 데이터를 저장하기 위해

2.이런것을 처리하는 것을 
	=> 함수(메소드)


1. 2를 묶어 클레스라 한다.

* RAM 휘발성.

* HDD에 저장하면 File이 된다. (사용자가 삭제할시에만 지워진다.) 
	=> File은 데이터가 저장된 곳에만 저장된다.

* DB(Database)
	=> 서버에 데이터를 저장해 어디서든 접속 가능하도록 해준다.
  ㄴ 관계형 데이터베이스 =>DBMS (ex 오라클, MYSQL, MSSQL 등)
  ㄴ 모두 표준인 SQL을 사용, DB에서 사용하는언어(ANSI에서 정한것)



401page

406page

408page ~
  
 
418page
1. JDBC 드라이버 로드 
2. 데이터베이스 연결
3. SQL문 실행
4. 데이터베이스와 연결 끊음
            
                        
*/



create user jspuserc indentified by jsp1234; 

--SQL
-- 1) 데이터 정의 언어(DDL) : create, alter, drop	-스키마 변화
-- 2) 데이터 조작 언어(DML) : insert, update, delete, select -인스턴스 변화(select 사용 많다 login, 횟수 등등)
-- 3) 데이터 제어 언어(DCL) : grant(권한주기), revoke(권한뺐기)	->특정한 테이블 접근시 허가 또는 허가거부



--varchar2 : 가변길이 - 예를들어 15자리를 저장하고 10자리만 쓰면 5자리는 다른곳에 사용가능.
--char     : 고정길이 - 예를들어 15자리를 저장하고 10자리만 쓰면 5자리는 다른곳에 사용 불가능.
--varchar2 는 계산해야하므로 속도가 char보다 느리다.
--primary key : 중복된 값을 허용하지 않는다.
--defalut sysdate : 오늘 날짜가 자동으로 들어가게 하도록 하는 것. 

--에러메시지
--ORA-00942: table or view does not exist : 테이블이 존재하지 않는다는 것.
--ORA-00001: unique constraint (JSPUSERC.SYS_C007001) violated : 기본키는 유니크해야 하지만 위반했다.


-- 테이블 생성
create table member (
	id 			varchar2(15)	 primary key,		
	password 	varchar2(10),
	name 		varchar2(20),
	age		    number,
	gender		char(1),
	addr 		varchar2(100),
	regdate 	date default sysdate
)

--데이터 삽입
insert into member
values('test', '1234', '유호상', 24, '1', '수원시', '2015-04-17')

insert into member
values('test1', '1234', '유호상', 24, '1', '수원시', '2015-04-17')



--데이터 변경
update member set addr='경기도' where id='test1'
delete member where id='test1'


select * from member 