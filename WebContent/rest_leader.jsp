<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>

<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Rest_rules.jsp" method="post">
<table cellpadding="5" cellspacing="5"  align="left"   border="1" >

<tr>
	<td><button type="submit">Restaurant Leader</button></td>
	<!-- <td><a href="http://localhost:9000/Practice/Restaurants.jsp">Restaurant Comments</a></td> -->
</tr>
</table>
</form>
<table align="center" border="1">
<tr>

	<td>Comment-ID</td>
	<td>UserID</td>
	<td>RestID</td>
	<td>Rest_name</td>
	<td>Rest_rating</td>
	<td>Reviews</td> 
	<td>Date_reported</td>
	<td>Block</td>
	
</tr>

<%

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/dbo_project";
String username="root";
String password="harsh123";
Connection conn=DriverManager.getConnection(url,username,password);

	 		
			
		 	
		 	Statement names = conn.createStatement();
		    Statement brands = conn.createStatement();
		    Statement comment_type = conn.createStatement();
		    
		    String query="select * from  comments_on_restaurants order by  Date_reported desc;";
		    Statement stp=conn.createStatement();

		    ResultSet rs=stp.executeQuery(query);
		    ResultSetMetaData metadata = rs.getMetaData();
		    String requrl=null; 
		    while(rs.next())
		    {
		    	requrl="/Practice/deleteuser.jsp?txtuser=";
		    	%>
		       <tr>
		 	             <%
		 	             
		 	             for(int i = 1; i<=metadata.getColumnCount();i++)
		 	                { %>
		 	                <td> 
		 	                <% 
		 	                 if(i == 2)
		 	                 {
		 	                 	requrl = requrl+rs.getString(i); 
		 	                 } 
		 	                 
		 	                 %>
		 	                 <%=rs.getString(i)%>
		 	                 </td>
		 	                
		 	            <% 
		 	            
		 	                }
		 	             
		 	            %>
		       		<!-- <form action="deleteuser.jsp" method="post"> -->
		       		<td><a href=<%=requrl%>><input type="button" value="Block"/></a></td>
		       		
		       		<!-- <td><button type="submit">Rate</button></td> -->
		       		
		       		<!-- <td><button type="submit">See Reviews</button> -->
		       	</tr>
		    <%

		    }
		    
 
 %>
 


</table>

</body>
</html>