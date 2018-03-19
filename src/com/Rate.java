package com;

public class Rate 
{

public int value(String val1, String val2, String val3, String val4, String val5)
{	//Pizza
	if(val5.equals("Pizza"))
	{
	//Margherita
	
	if(val1.equals("Margherita"))
	{ 	
		//Regular
		if(val2.equals("Regular"))
		{
			int rate=80;
			if(val3.equals("-")&&val4.equals("-"))
			{
				return rate;
				
			}
			else if(val3.equals("Extra Cheese")&&val4.equals("-"))
			{
				return rate=rate+50;
			}
			else if(val4.equals("Cheese Burst")&&val3.equals("-"))
			{
				return rate=rate+80;
			}
			else if(val3.equals("Extra Cheese")&val4.equals("Cheese Burst"))
			{
				return rate=rate+50+80;
			}
			else{
				return 0;
			}
			
		}
			
		//Medium
		else if(val2.equals("Medium"))
		{
			int rate=150;
			if(val3.equals("-")&&val4.equals("-"))
			{
				return rate;
				
			}
			else if(val3.equals("Extra Cheese")&&val4.equals("-"))
			{
				return rate=rate+50;
			}
			else if(val4.equals("Cheese Burst")&&val3.equals("-"))
			{
				return rate=rate+80;
			}
			else if(val3.equals("Extra Cheese")&val4.equals("Cheese Burst"))
			{
				return rate=rate+50+80;
			}
			else{
				return 1;
			}
			
		}
		
		//Large
		else if(val2.equals("Large"))
		{
			int rate=220;
			if(val3.equals("-")&&val4.equals("-"))
			{
				return rate;
				
			}
			else if(val3.equals("Extra Cheese")&&val4.equals("-"))
			{
				return rate=rate+50;
			}
			else if(val4.equals("Cheese Burst")&&val3.equals("-"))
			{
				return rate=rate+80;
			}
			else if(val3.equals("Extra Cheese")&val4.equals("Cheese Burst"))
			{
				return rate=rate+50+80;
			}
			else{
				return 2;
			}
			
		}
		
		
		
		else
		{
			return 3;
		}
		
		
	}
	
	//Farmhouse
	
	else if(val1.equals("Farmhouse"))
	{ 	
		//Regular
		if(val2.equals("Regular"))
		{
			int rate=130;
			if(val3.equals("-")&&val4.equals("-"))
			{
				return rate;
				
			}
			else if(val3.equals("Extra Cheese")&&val4.equals("-"))
			{
				return rate=rate+50;
			}
			else if(val4.equals("Cheese Burst")&&val3.equals("-"))
			{
				return rate=rate+80;
			}
			else if(val3.equals("Extra Cheese")&val4.equals("Cheese Burst"))
			{
				return rate=rate+50+80;
			}
			else{
				return 0;
			}
			
		}
			
		//Medium
		else if(val2.equals("Medium"))
		{
			int rate=200;
			if(val3.equals("-")&&val4.equals("-"))
			{
				return rate;
				
			}
			else if(val3.equals("Extra Cheese")&&val4.equals("-"))
			{
				return rate=rate+50;
			}
			else if(val4.equals("Cheese Burst")&&val3.equals("-"))
			{
				return rate=rate+80;
			}
			else if(val3.equals("Extra Cheese")&val4.equals("Cheese Burst"))
			{
				return rate=rate+50+80;
			}
			else{
				return 1;
			}
			
		}
		
		//Large
		else if(val2.equals("Large"))
		{
			int rate=270;
			if(val3.equals("-")&&val4.equals("-"))
			{
				return rate;
				
			}
			else if(val3.equals("Extra Cheese")&&val4.equals("-"))
			{
				return rate=rate+50;
			}
			else if(val4.equals("Cheese Burst")&&val3.equals("-"))
			{
				return rate=rate+80;
			}
			else if(val3.equals("Extra Cheese")&val4.equals("Cheese Burst"))
			{
				return rate=rate+50+80;
			}
			else{
				return 2;
			}
			
		}
		
		
		
		else
		{
			return 3;
		}
		
		
	}
	
	//Veggie Paradise
	
	else if(val1.equals("Veggie Paradise"))
	{ 	
		//Regular
		if(val2.equals("Regular"))
		{
			int rate=160;
			if(val3.equals("-")&&val4.equals("-"))
			{
				return rate;
				
			}
			else if(val3.equals("Extra Cheese")&&val4.equals("-"))
			{
				return rate=rate+50;
			}
			else if(val4.equals("Cheese Burst")&&val3.equals("-"))
			{
				return rate=rate+80;
			}
			else if(val3.equals("Extra Cheese")&val4.equals("Cheese Burst"))
			{
				return rate=rate+50+80;
			}
			else{
				return 0;
			}
			
		}
			
		//Medium
		else if(val2.equals("Medium"))
		{
			int rate=230;
			if(val3.equals("-")&&val4.equals("-"))
			{
				return rate;
				
			}
			else if(val3.equals("Extra Cheese")&&val4.equals("-"))
			{
				return rate=rate+50;
			}
			else if(val4.equals("Cheese Burst")&&val3.equals("-"))
			{
				return rate=rate+80;
			}
			else if(val3.equals("Extra Cheese")&val4.equals("Cheese Burst"))
			{
				return rate=rate+50+80;
			}
			else{
				return 1;
			}
			
		}
		
		//Large
		else if(val2.equals("Large"))
		{
			int rate=300;
			if(val3.equals("-")&&val4.equals("-"))
			{
				return rate;
				
			}
			else if(val3.equals("Extra Cheese")&&val4.equals("-"))
			{
				return rate=rate+50;
			}
			else if(val4.equals("Cheese Burst")&&val3.equals("-"))
			{
				return rate=rate+80;
			}
			else if(val3.equals("Extra Cheese")&val4.equals("Cheese Burst"))
			{
				return rate=rate+50+80;
			}
			else{
				return 2;
			}
			
		}
		
		
		
		else
		{
			return 3;
		}
		
		
	}
	
	//5 Pepper
	
	else if(val1.equals("Pepper"))
	{ 	
		//Regular
		if(val2.equals("Regular"))
		{
			int rate=170;
			if(val3.equals("-")&&val4.equals("-"))
			{
				return rate;
				
			}
			else if(val3.equals("Extra Cheese")&&val4.equals("-"))
			{
				return rate=rate+50;
			}
			else if(val4.equals("Cheese Burst")&&val3.equals("-"))
			{
				return rate=rate+80;
			}
			else if(val3.equals("Extra Cheese")&val4.equals("Cheese Burst"))
			{
				return rate=rate+50+80;
			}
			else{
				return 0;
			}
			
		}
			
		//Medium
		else if(val2.equals("Medium"))
		{
			int rate=240;
			if(val3.equals("-")&&val4.equals("-"))
			{
				return rate;
				
			}
			else if(val3.equals("Extra Cheese")&&val4.equals("-"))
			{
				return rate=rate+50;
			}
			else if(val4.equals("Cheese Burst")&&val3.equals("-"))
			{
				return rate=rate+80;
			}
			else if(val3.equals("Extra Cheese")&val4.equals("Cheese Burst"))
			{
				return rate=rate+50+80;
			}
			else{
				return 1;
			}
			
		}
		
		//Large
		else if(val2.equals("Large"))
		{
			int rate=310;
			if(val3.equals("-")&&val4.equals("-"))
			{
				return rate;
				
			}
			else if(val3.equals("Extra Cheese")&&val4.equals("-"))
			{
				return rate=rate+50;
			}
			else if(val4.equals("Cheese Burst")&&val3.equals("-"))
			{
				return rate=rate+80;
			}
			else if(val3.equals("Extra Cheese")&val4.equals("Cheese Burst"))
			{
				return rate=rate+50+80;
			}
			else{
				return 2;
			}
			
		}
		
		
		
		else
		{
			return 3;
		}
		
		
	}
	else{
		return 9;
	}

}

	
	//Burgers
	else if(val5.equals("Burger"))
	{ //Veg Burger
		if(val1.equals("Veg Burger")){
		int	rate=50;
			if(val3.equals("Extra Cheese")){
				return rate=rate+15;
			}
			else{
				return rate;
			}
		}
		//Aalo Tikki Burger
		else if(val1.equals("Aalo Tikki Burger")){
			int	rate=55;
				if(val3.equals("Extra Cheese")){
					return rate=rate+15;
				}
				else{
					return rate;
				}
			}
		//Paneer Burger
		else if(val1.equals("Paneer Burger")){
			int	rate=80;
				if(val3.equals("Extra Cheese")){
					return rate=rate+15;
				}
				else{
					return rate;
				}
			}
		//Burger Maharaja
		else if(val1.equals("Burger Maharaja")){
			int	rate=105;
				if(val3.equals("Extra Cheese")){
					return rate=rate+15;
				}
				else{
					return rate;
				}
			}
		else{
			return 5;
		}
	}
	
		//Coke
	else if(val5.equals("Coke")){
		
		if(val2.equals("250ML")){
			return 40;
		}
		else if(val2.equals("500ML"))
		{
			return 60;
		}
		else{
			return 7;
		}
	}
	
	//Juice
	else if(val5.equals("Juice")){
		return 50;
	}
	
	
	else{
		return 6;
	}
	
	
	
}

}
