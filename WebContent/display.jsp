<%@ page import="java.sql.*" %>
<%@page import="java.io.*, java.util.Date, java.util.Enumeration"%>
<%@ page import="com.Rate" %>
<html>
<head>
<link rel="shortcut icon" href="css/img/title.ico" type="image/x-icon" /> 

<title>ORDER</title>
<script type="text/javascript" src="js/display.js"></script>
<script type="text/javascript" src="js/clock.js"></script>
<link rel="stylesheet" href="css/display.css">
<link rel="stylesheet" href="css/header.css">
</head>
<body onload="clock()">
<div class="main" id="main_div">
<div  class="clock" id="clock" align="right"> </div>
<br><br>
<div class="tab" id="tab_div" align="left">
<form method="post" name="form">
<table border="1">
<tr><th>Name</th><th>Type</th><th>Addon 1</th><th>Addon 2</th><th>Price</th><th colspan=2>Edit Order</th></tr>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "hungrypoint";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="0707";

int sumcount=0;
Statement st;
try{
Class.forName(driver).newInstance();
con = DriverManager.getConnection(url+db,userName,password);
String query = "select * from bill";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>
<%
while(rs.next()){
%>
<tr><td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td>
<%Rate obj= new Rate();
int rate=obj.value(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));

%>
 Rs.<%=rate %>
</td>
<% String item =rs.getString(6);%>
<td ><input type="button" name="edit" value="Edit" class="ton" onclick="editRecord(<%=rs.getString(1) %>,'<%=rs.getString(6)%>');" ></td>
<td ><input type="button" name="delete" value="Delete" class="gton" onclick="deleteRecord(<%=rs.getString(1)%>);" ></td>
</tr>
<%
PreparedStatement update = con.prepareStatement("UPDATE bill SET Price=? WHERE id=?");

update.setInt(1, rate);
update.setInt(2, Integer.parseInt(rs.getString(1)));

update.executeUpdate();
}
%>
<%
}
catch(Exception e){e.printStackTrace();}
%>
</table>
</form>
<div class="but">
<input type="button" name="addmore" value="Add More" class="button1" onclick="addmore();" >
<input type="button" name="cancel" value="Cancel Order" class="button2"  onclick="cancel();" >

<input type="button" name="order" value="Order" class="button3" onclick="order();" ></div>
</div>
<div class="total" id="total_div">Total:<%try {Class.forName("com.mysql.jdbc.Driver").newInstance();con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hungrypoint","root", "0707"); Statement sm = con.createStatement(); ResultSet rt=sm.executeQuery(" select sum(Price) from bill");while(rt.next()){ %><%=rt.getInt(1) %><%}}catch(Exception e){e.printStackTrace();}  %></div>
</div>

</body>
</html>