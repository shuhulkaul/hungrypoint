package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Submit
 */
@WebServlet("/Submit")
public class Submit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Submit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		String prod = "";
				prod=request.getParameter("prod");
		String type = "";
				type=request.getParameter("type");
		String addon1 = "";
				addon1=request.getParameter("addon1");
		String addon2 = "";
				addon2= request.getParameter("addon2");
				String item = "";
				item= request.getParameter("item");
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
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hungrypoint","root","0707");
					PreparedStatement ps=con.prepareStatement("insert into bill(Name, Type, Addon1, Addon2, Item) values(?,?,?,?,?)");  
					
					ps.setString(1,prod);
					ps.setString(2,type);
					ps.setString(3,addon1);
					ps.setString(4,addon2);
					ps.setString(5,item);
				
    
					int u=ps.executeUpdate();  
					if(u>0) {
						RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
						out.println("<center><font color=#ff0000>"+"Added!"+"</font></center>");
						rd.include(request, response);
						

					}
					
						
					}catch (Exception e2) {System.out.println(e2);}
	}

}
