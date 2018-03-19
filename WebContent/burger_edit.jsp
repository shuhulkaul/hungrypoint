<%@page language="java"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*, java.util.Date, java.util.Enumeration"%>
<html>
<head>
<link rel="shortcut icon" href="css/img/title.ico" type="image/x-icon" /> 
<title>EDIT BURGER</title>
<link rel="stylesheet" href="css/display.css">
<script type="text/javascript" src="js/clock.js"></script>  
<link rel="stylesheet" href="css/header.css">
</head>
<body onload="clock()">
<div class="main" id="main_div">
<div class="clock" id="clock" align="right"> </div>

<div class="tab" id="tab_div" align="left">
<form method="submit" action="update.jsp">
<table border="1">
<tr><th>Name</th><th>Addon1</th><th colspan=2>Edit</th></tr>

<% 
String id=request.getParameter("id");
int no=Integer.parseInt(id);
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hungrypoint", "root", "0707");
String query = "select * from bill where id="+id;
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<tr>
<td><input type="text" name="prod" value="<%=rs.getString(2)%>" readonly></td>

<td><select type="text" name="addon1" id="addon1" value="<%=rs.getString(4)%>">
<option name="-" value="-">-</option>
<option label="text" disabled>-----Burger-----</option>
<option name="Extra_Cheese" id="Extra_Cheese" value="Extra Cheese">Extra Cheese (B)</option>

 
</select></td>
<td><input type="hidden" name="id" value="<%=rs.getString(1)%>"></td>
<td><input type="submit" name="Submit" value="Update" class="ton"></td>
</tr>
<%
}
}
catch(Exception e){}
%>
</table>
</form>
</div>
</div>
</body>
</html>