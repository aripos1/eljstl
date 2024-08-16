<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="com.javaex.vo.UserVo"%>

<%
List<UserVo> userList = (List<UserVo>) request.getAttribute("userList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>el 값표현</h2>
	<h3>for-each 반복문</h3>

	<table border="1">
		<thead>
			<th>번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>패스워드</th>
			<th>성별</th>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < userList.size(); i++) {
			%>
			<tr>
				<td><%=userList.get(i).getNo()%></td>
				<td><%=userList.get(i).getName()%></td>
				<td><%=userList.get(i).getEmail()%></td>
				<td><%=userList.get(i).getPassword()%></td>
				<td><%=userList.get(i).getGender()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<br>
	<br>
	<br>


	<table border="1">
		<thead>
			<th>번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>패스워드</th>
			<th>성별</th>
		</thead>
		<tbody>
			<c:forEach items="${requestScope.userList}" var="userVo">
				<tr>
					<td>${userVo.no}</td>
					<td>${userVo.name}</td>
					<td>${userVo.email}</td>
					<td>${userVo.password}</td>
					<td>${userVo.gender}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>