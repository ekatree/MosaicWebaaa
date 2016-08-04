<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.html</title>
</head>
<body>
<h1>설정 확인</h1>

</form>
<hr>
<ol>
	<li><a href="Hello.html">HTML 실행....</a></li>
	<li><a href="Hello.jsp">JSP 실행..</a></li>
	<li><a href="HelloServlet">Servlet 실행..</a></li>
	<li><a href="dept.jsp">Mybatis 실행..</a></li>
	<li>========================chap05=========================</li>
	<li><a href="../chap05/bufferInfo.jsp">bufferInfo</a>
	<li><a href="../chap05/usePageContext.jsp">usePageContext</a>
	<li><a href="../chap05/readInitParameter.jsp">readInitParameter</a>
	<li><a href="../chap05/viewServerInfo.jsp">viewServerInfo</a>
	<li>==================Cookie & Session======================</li>
	<li><a href="cookie/dept.jsp">Cookie login</a></li>
	<li><a href="session/dept.jsp">Session login</a></li>
	<li><a href="logout.jsp">Logout 화면</a></li>
</ol>
</body>
</html>