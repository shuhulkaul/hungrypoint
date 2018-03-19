function cancel()
{
var answer=confirm("Are you sure you want to cancel?");
if (answer==true)
  {
	window.location="cancel.jsp";
  }
else
  {
   
  }
	
	}
function order()
{

	var answer=confirm("Are you sure you want to continue?");
	if (answer==true)
	  {
		window.location="order.jsp";	  }
	else
	  {
	   
	  }

	}
function addmore()
{window.location.href ="index.jsp";
	}
function editRecord(id, item){
   if(item=="Pizza") {var f=document.form;
    f.method="post";
    f.action='pizza_edit.jsp?id='+id;
    f.submit();}
   else if(item=="Burger"){
	   var f=document.form;
   f.method="post";
   f.action='burger_edit.jsp?id='+id;
   f.submit();
	   
   }
   else if(item=="Coke"){
	   var f=document.form;
	    f.method="post";
	    f.action='coke_edit.jsp?id='+id;
	    f.submit();  
   }
   else if(item=="Juice"){
	   var f=document.form;
	    f.method="post";
	    f.action='juice_edit.jsp?id='+id;
	    f.submit();
   }
   else
	   { System.out.println(" ");
	   }
   }
function deleteRecord(id){
    var f=document.form;
    f.method="post";
    f.action='delete.jsp?id='+id;
    f.submit();
}