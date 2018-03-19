<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*, java.util.Date, java.util.Enumeration"%>

<html>
<head>
<link rel="shortcut icon" href="css/img/title.ico" type="image/x-icon" /> 
<link rel="stylesheet" href="css/display.css">
<link rel="stylesheet" href="css/header.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu</title>
<script type="text/javascript" src="js/clock.js"></script>  
<script type="text/javascript" src="js/index.js"></script>
</head>

<body onload="start()">
<div class="main" id="main_div">
<div id="clock" class="clock" align="right"> </div>
<div class="tab" id="p_tab_div" align="left">
<!-- PIZZA -->

<div id="col1">
<h1>PIZZA</h1>  
<h3>1. Margherita</h3>
<form action="submit" id="menu" method="post">
<table>
<tr>
<td><input type="text" name="prod" id="prod" value="Margherita" readonly></td>

<td><select type="text" name="type" id="type" onchange="show(this.options[this.selectedIndex].value)">
                            <option name="Regular" value="Regular">Regular</option>
                            <option name="Medium" value="Medium">Medium</option>
                         <option name="Large" value="Large">Large</option>
                        </select></td>                


<td id="div1"> <input type="checkbox" name="addon1" id="addon1" value="Extra Cheese">Extra Cheese</td>
<td id="div2"><input type="checkbox" name="addon1" id="addon1" value="Extra Cheese">Extra Cheese <input type="checkbox" name="addon2" value="Cheese Burst">Cheese Burst</td>
<td><input type="hidden" name="item" id="item" value="Pizza"></td>
<td><input type="hidden" name="time" id="time"  ></td>

</tr>


</table><br><center><input type="submit" name="Add" class="ton" value="Add"></center><hr><br>
</form>
 
<h3>2. Farmhouse</h3>
<form action="submit" id="menu"  method="post">
<table>
<tr>
<td><input type="text" name="prod" id="prod" value="Farmhouse" readonly></td>

<td>
 <select type="text" name="type" id="type"  onchange="show2(this.options[this.selectedIndex].value)">
                            <option name="Regular" value="Regular">Regular</option>
                            <option name="Medium" value="Medium">Medium</option>
                         <option name="Large" value="Large">Large</option>
                        </select>
        </td>                


<td id="div3"> <input type="checkbox" name="addon1" id="addon1" value="Extra Cheese">Extra Cheese</td>
<td id="div4"><input type="checkbox" name="addon1" id="addon1" value="Extra Cheese">Extra Cheese <input type="checkbox" name="addon2" value="Cheese Burst">Cheese Burst</td>
<td><input type="hidden" name="item" id="item"  value="Pizza"></td>
<td><input type="hidden" name="time" id="time"  ></td>

</tr>


</table>
<br><center><input type="submit" name="Add" class="ton" value="Add"></center><hr><br>
</form>
 
<h3>3. Veggie Paradise</h3>
<form action="submit" id="menu"  method="post">
<table>
<tr>
<td><input type="text" name="prod" id="prod" value="Veggie Paradise" readonly></td>

<td>
 <select type="text" name="type" id="type"  onchange="show3(this.options[this.selectedIndex].value)">
                            <option name="Regular" value="Regular">Regular</option>
                            <option name="Medium" value="Medium">Medium</option>
                         <option name="Large" value="Large">Large</option>
                        </select>
        </td>                


<td id="div5"> <input type="checkbox" name="addon1"  id="addon1" value="Extra Cheese">Extra Cheese</td>
<td id="div6"><input type="checkbox" name="addon1" id="addon1" value="Extra Cheese">Extra Cheese <input type="checkbox" name="addon2" value="Cheese Burst">Cheese Burst</td>
<td><input type="hidden" name="item" id="item"  value="Pizza"></td>
<td><input type="hidden" name="time" id="time"  ></td>

</tr>


</table>
<br><center><input type="submit" name="Add" class="ton" value="Add"></center><hr><br>
</form>
 
<h3>4. 5 Pepper</h3>
<form action="submit" id="menu"  method="post">
<table>
<tr>
<td><input type="text" name="prod" id="prod" value="Pepper" readonly></td>

<td>
 <select type="text" name="type" id="type"  onchange="show4(this.options[this.selectedIndex].value)">
                            <option name="Regular" value="Regular">Regular</option>
                            <option name="Medium" value="Medium">Medium</option>
                         <option name="Large" value="Large">Large</option>
                        </select>
        </td>                


<td id="div7"> <input type="checkbox" name="addon1" id="addon1" value="Extra Cheese">Extra Cheese</td>
<td id="div8"><input type="checkbox" name="addon1" id="addon1" value="Extra Cheese">Extra Cheese <input type="checkbox" name="addon2" value="Cheese Burst">Cheese Burst</td>
<td><input type="hidden" name="item" id="item" value="Pizza"></td>
<td><input type="hidden" name="time" id="time"  ></td>

</tr>


</table>
<br><center><input type="submit" name="Add" class="ton" value="Add"></center><br><hr><br>
</form>
</div></div>
  
<!--  BURGERS -->
<div class="tab" id="p_tab2_div" align="left">

<div id="col2">
<h1>BURGERS</h1>  
<h3>1. Veg Burger</h3>
<form action="submit" id="menu"  method="post">
<table>
<tr>
<td><input type="text" name="prod" id="prod" value="Veg Burger" readonly></td>



<td > <input type="checkbox" prod="addon1" value="Extra Cheese">Extra Cheese</td>
<td><input type="hidden" name="item" id="item" value="Burger"></td>
<td><input type="hidden" name="time" id="time"  ></td>

</tr>


</table>
<br><center><input type="submit" name="Add" class="ton" value="Add"></center><br><hr><br>
</form>
 
<h3>2. Aalo Tikki Burger</h3>
<form action="submit" id="menu"  method="post">
<table>
<tr>
<td><input type="text" name="prod"  id="prod" value="Aalo Tikki Burger" readonly></td>


<td > <input type="checkbox" name="addon1"  id="addon1" value="Extra Cheese">Extra Cheese</td>
<td><input type="hidden" name="item" id="item" value="Burger"></td>
<td><input type="hidden" name="time" id="time"  ></td>

</tr>


</table>
<br><center><input type="submit" name="Add" class="ton" value="Add"></center><br><hr><br>
</form>
 
<h3>3. Paneer Burger</h3>
<form action="submit" id="menu"  method="post">
<table>
<tr>
<td><input type="text" name="prod" id="prod" value="Paneer Burger" readonly></td>
<td > <input type="checkbox" name="addon1" id="addon1" value="Extra Cheese">Extra Cheese</td>
<td><input type="hidden" name="item" id="item" value="Burger"></td>
<td><input type="hidden" name="time" id="time"  ></td>

</tr>


</table>
<br><center><input type="submit" name="Add" class="ton" value="Add"></center><br><hr><br>
</form>
 
<h3>4. Burger Maharaja</h3>
<form action="submit" id="menu"  method="post">
<table>
<tr>
<td><input type="text" name="prod"  id="prod" value="Burger Maharaja" readonly></td>
                


<td id="div7"> <input type="checkbox" name="addon1"  id="addon1" value="Extra Cheese">Extra Cheese</td>
<td><input type="hidden" name="item" id="item" value="Burger"></td>
<td><input type="hidden" name="time" id="time"  ></td>

</tr>


</table>
<br><center><input type="submit" name="Add" class="ton" value="Add"></center><br><hr><br>
</form>
</div>
  
</div>
<!--  BEVERAGES -->


<div class="tab" id="p_tab3_div" align="left">
<div id="col3">
<h1>BEVERAGES</h1>  
<h3>1. COKE</h3>
<form action="submit" id="menu"  method="post">
<table>
<tr>
<td><input type="text" name="prod" id="prod" value="Coke" readonly></td>
<td>
 <select type="text" name="type" id="type"  >
                            <option name="250ML" value="250ML">250ML</option>
                            <option name="500ML" value="500ML">500ML</option>
                      
                        </select>
        </td> 
<td><input type="hidden" name="item" id="item" value="Coke"></td>
<td><input type="hidden" name="time" id="time"  ></td>

</tr>


</table>
<br><center><input type="submit" name="Add" class="ton" value="Add"></center><br><hr><br>
</form>
 
<h3>2. Juice</h3>
<form action="submit" id="menu"  method="post">
<table>
<tr>
<td><input type="text" name="prod" id="prod" value="Juice" readonly></td>
<td>
 <select type="text" name="type" id="type"  >
                            <option name="Mango" value="Mango">Mango</option>
                            <option name="Orange" value="Orange">Orange</option>
                         <option name="Apple" value="Apple">Apple</option>
                        </select>
        </td> <td><input type="hidden" name="item" id="item" value="Juice"></td>
<td><input type="hidden" name="time" id="time"  ></td>

</tr>


</table>

<br><center><input type="submit" name="Add" class="ton" value="Add"></center><br><hr><br>

</form></div>
<div id="proceed">
<form action="display.jsp"  method="post">
<input class="pton" type="submit" name="Proceed" value="Proceed">
</form>
</div>
</div></div>
</body>
</html>