<%@ page import="java.sql.*" %> 

<%
try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hungrypoint", "root", "0707");
           Statement st=con.createStatement();
           int i=st.executeUpdate("delete from bill" );
           RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			out.println("<center><font color=#ff0000>"+"ORDER DELETED!"+"</font></center>");
			rd.include(request, response);
}
catch (Exception e){
System.out.println(e);
}
%>