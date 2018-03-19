<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%@ page import = "java.io.*,java.util.*" %>

<html>
   <head>
      <title>Auto Refresh Header Example</title>
   </head>
   
   <body>
    
       
         <%
            // Set refresh, autoload time as 5 seconds
            response.setIntHeader("Refresh", 3);
            
            // Get current time
            Calendar calendar = new GregorianCalendar();
            String am_pm;
            int date = calendar.get(Calendar.DATE);
            int month = calendar.get(Calendar.MONTH);
            int year = calendar.get(Calendar.YEAR);
            int hour = calendar.get(Calendar.HOUR);
            int minute = calendar.get(Calendar.MINUTE);
            int second = calendar.get(Calendar.SECOND);
            String today=date+"-"+month+"-"+year;
            if(calendar.get(Calendar.AM_PM) == 0)
               am_pm = "AM";
            else
               am_pm = "PM";
            String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
          
         %>
         <div><h3>Date: <%=today %> <br> Time: <%=CT %></h3></div>
    
   
   </body>
</html>
</body>
</html>