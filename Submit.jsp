<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submit JSP</title>
</head>
<body>
Name:<%= request.getParameter("name") %><br><br>
Address: <%=request.getParameter("address") %><br><br>
Languages Known:<%
for(String lang:request.getParameterValues("Languages[]"))
{out.println(lang+"<br>");
}
%><br><br>
Gender:<%=request.getParameter("gender") %><br><br>
Country:<%=request.getParameter("country") %><br><br>

</body>