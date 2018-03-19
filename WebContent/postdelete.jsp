<%@ page import="java.sql.*" %> 
<%

try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hungrypoint", "root", "0707");
           Statement st=con.createStatement();
           st.executeUpdate("INSERT INTO orders (Name,Type,Addon1,Addon2,Item,Price) SELECT Name,Type,Addon1,Addon2,Item,Price FROM bill");
          st.executeUpdate("delete from bill" );
          st.executeUpdate("ALTER TABLE bill AUTO_INCREMENT = 1" );
           RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			out.println("<center><font color=#ff0000>"+"ORDER SUCCESSFUL!"+"</font></center>");
			rd.include(request, response);
}
catch (Exception e){
System.out.println(e);
}
%>