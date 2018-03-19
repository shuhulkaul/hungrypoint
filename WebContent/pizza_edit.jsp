<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*, java.util.Date, java.util.Enumeration"%>
<html>
<head>
<link rel="shortcut icon" href="css/img/title.ico" type="image/x-icon" /> 

<title>EDIT PIZZA</title>
<link rel="stylesheet" href="css/display.css">
<link rel="stylesheet" href="css/header.css">
<script type="text/javascript" src="js/clock.js"></script>  


<script>
function hide(val)
{
	if (val=="Regular"){
	document.getElementById("a").style.display="none";
document.getElementById("b").style.display="none";
	}
	else{
document.getElementById("a").style.display="block";
document.getElementById("b").style.display="block";
	}
}
</script></head>
<body onload="clock()">
<div class="main" id="main_div">
<div id="clock" class="clock" align="right"> </div>


<div class="tab" id="tab_div" align="left">
<form method="submit" action="update.jsp">
<table border="1">
<tr><th>Name</th><th>Type</th><th>Addon1</th><th id="b">Addon2</th><th colspan=2>Edit</th></tr>
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
<td><input type="text" name="prod"  value="<%=rs.getString(2)%>" readonly></td>
<td><select type="text" name="type" onchange="hide(this.value);" id="type" value="<%=rs.getString(3)%>">

                           <option label="text" disabled>-----PIZZA-----</option>
                            <option name="Regular" value="Regular" >Regular</option>
                            <option  name="Medium" value="Medium" ">Medium</option>
                         <option  name="Large" value="Large" selected>Large</option>
                  
                        </select></td>
<td><select type="text" name="addon1" id="addon1" value="<%=rs.getString(4)%>">
<option name="-" value="-">-</option>

 <option label="text" disabled>-----Pizza-----</option>
<option name=Extra_Cheese2" value="Extra Cheese">Extra Cheese</option>
</select></td>
<td id="a"><select  type="text" name="addon2" value="<%=rs.getString(5)%>">

<option name="-" value="-">-</option>
<option label="text" disabled>-----PIZZA-----</option>
<option name="Cheese_Burst" value="Cheese Burst">Cheese Burst</option></select></td>
<td><input type="hidden" name="id" value="<%=rs.getString(1)%>"></td>

<td><input type="submit" name="Submit" class="ton" value="Update" color:#ffffff;"></td>
</tr>
<%
}
}
catch(Exception e){}
%>
</table>
</form></div></div></body></html>