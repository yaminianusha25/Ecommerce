<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transaction Successful !!!</title>
</head>
<body>
<h5 align="right">Logged in as <%=session.getAttribute("UserName")%><br>
<a href='logout.jsp'>Log out</a></h5>
<h2 align="center">Bank Transaction</h2>
 <form action= "" method="post"> 
<input type="hidden" name="pagename" value="filterdata"/> 

<table cellpadding="5" cellspacing="5" align="center" width="80%" cellpadding="10" border="1" >
<tr>
	<td>Congratulations !!! Your Transaction has been completed successfully !</td>
</tr>

</body>
</html>