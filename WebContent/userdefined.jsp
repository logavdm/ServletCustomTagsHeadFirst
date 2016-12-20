<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/customtags.tld" prefix="custom"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Custom Tags Demo</title>
</head>
<body>

	<form action="lang" method="get">

		<select name="lang">
			<option value="ta">Tamil</option>

			<option value="en">English</option>

			<option value="hi">Hindi</option>


		</select> <input type="submit">

	</form>

	<custom:getText key="username" />

</body>
</html>