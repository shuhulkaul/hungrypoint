<%@ page import="java.sql.*" %> 
<%
int id = Integer.parseInt(request.getParameter("id"));
try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hungrypoint", "root", "0707");
           Statement st=con.createStatement();
           int i=st.executeUpdate("delete from bill where id="+id);
 
           ResultSet rs=   st.executeQuery("SELECT COUNT(*) FROM bill");
           rs.next();
           if (Integer.parseInt(rs.getString(1))==0) {
   			  response.sendRedirect("index.jsp");
        	 
        	} else{
        		out.println("<center><font color=#ff0000>"+"ORDER DELETED!"+"</font></center>");
         	   RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
         	   rd.include(request, response);
           }
}
catch (Exception e){
System.out.println(e);
}
%>