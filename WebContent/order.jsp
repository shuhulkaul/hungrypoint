<%@ page import="java.sql.*" %>

<html>
<head>
<link rel="shortcut icon" href="css/img/title.ico" type="image/x-icon" /> 

<title>ORDER</title>
<link rel="stylesheet" href="css/display.css">

<link rel="stylesheet" href="css/header.css">
<script type="text/javascript" src="js/clock.js"></script>
<script>
function hide()
{document.getElementById("print").style.display="none";
window.print();
window.location="postdelete.jsp";}
</script>

</head>
<body onload="clock()">

<div class="main" id="main_div">
<br><br>

<div class="tab" id="print_tab_div" >
<form method="post" name="form">
<table border="1">
<tr><th>Name</th><th>Type</th><th>Addon 1</th><th>Addon 2</th></tr>
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

<%
}
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
<%try {Class.forName("com.mysql.jdbc.Driver").newInstance();con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hungrypoint","root", "0707"); Statement sm = con.createStatement(); ResultSet rt=sm.executeQuery(" select sum(Price) from bill");while(rt.next()){ %>
<center>
</table>
<table><tr>
<th >Total:</th><th><b>Rs. <%=rt.getInt(1) %></b></th></tr>
</table></center>
<%}}catch(Exception e){e.printStackTrace();} %>
<br>
<input type="button" name="print" id="print" value="Print" class="ton" onclick="hide();" >
</form></div></div>
</body>
</html>