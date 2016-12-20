<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:set var="name" value="loganthan" scope="session"></c:set>

<p>Before Remove Variable</p>
<c:out value="${name}"></c:out>

<c:remove var="name" />
<p>After Remove Value</p>

<c:out value="${name }"></c:out>

<c:set var="val" value="10"></c:set>

<c:if test="${val>100 }">
<p>Value Greater Than 1000</p>

</c:if>

<c:choose>
<c:when test="${val<5 }">
<p>value Less Than 5</p>
</c:when>
<c:when test="${val<=10 }">

<p>Value Less Than 10</p>
</c:when>

</c:choose>




<c:forEach var="i" begin="1" end="10">

<!-- <p>Item </p> <c:out value="${i}"></c:out> -->

</c:forEach>


<c:forTokens items="name1,name2,name3,name4,name5" delims="," var="name">

<c:out value="${name}"></c:out>

</c:forTokens>


</body>
</html>