<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import="com.javaex.vo.UserVo" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>el 값표현</h2>
	<h3>request의 attribute에 있는 값 가져오기</h3>

	<h4>스크립틀릿</h4>
	
		<%=request.getAttribute("userVo")%><br>

		<% 	int i = (int)request.getAttribute("num"); 
			String str = (String)request.getAttribute("str");
			UserVo userVo = (UserVo)request.getAttribute("userVo");
					%>
		%>
		i = <%=i %><br>
		str = <%=str %><br>
		userVo no = <%=userVo.getNo()%><br>
		userVo name = <%=userVo.getName()%><br>
		userVo email = <%=userVo.getEmail()%><br>
		userVo password = <%=userVo.getPassword()%><br>
		userVo gender = <%=userVo.getGender()%><br>
		
		
	<h4>el</h4>
		i = ${requestScope.num} <br>
		str = ${requestScope.str} <br>
		userVo no = ${requestScope.userVo.no} <br>
		userVo name = ${requestScope.userVo.name} <br>
		userVo email = ${requestScope.userVo.email} <br>
		userVo password = ${requestScope.userVo.password} <br>
		userVo gender = ${requestScope.userVo.gender} <br>
		 
		<h4>requestScope 생략</h4>
		i = ${num} <br>
		str = ${str} <br>
		userVo no = ${userVo.no} <br>
		userVo name = ${userVo.name} <br>
		userVo email = ${userVo.email} <br>
		userVo password = ${userVo.password} <br>
		userVo gender = ${userVo.gender} <br>	 
</body>
</html>