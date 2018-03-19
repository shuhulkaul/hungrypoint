<%@page import="org.omg.PortableInterceptor.SYSTEM_EXCEPTION"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");

String prod=request.getParameter("prod");
String type=request.getParameter("type");
String addon1=request.getParameter("addon1");
String addon2=request.getParameter("addon2");
if(type==null){
	type="-";
}
if(addon1==null){
	addon1="-";
}
if(addon2==null){
	addon2="-";
}
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hungrypoint","root", "0707");

PreparedStatement update = conn.prepareStatement("UPDATE bill set Type=?, Addon1=?, Addon2=? WHERE id=?");

update.setString(1, type);
update.setString(2, addon1);
update.setString(3, addon2);
update.setString(4, id);
update.executeUpdate();

out.println("<center><font color=#ff0000>"+"THE ORDER HAS BEEN UPDATED SUCCESSFULLY!"+"</font></center>");
RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
rd.include(request, response);
}
catch(Exception e){
System.out.println(e);
}
%>