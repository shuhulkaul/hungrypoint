function show(name)
{
if(name=='Regular')
	{document.getElementById('div2').style.display="none";
	document.getElementById('div1').style.display="block";
	}
else {document.getElementById('div1').style.display="none";
	document.getElementById('div2').style.display="block";

}	}

function show2(name)
{
if(name=='Regular')
	{document.getElementById('div4').style.display="none";
	document.getElementById('div3').style.display="block";
	}
else {document.getElementById('div3').style.display="none";
	document.getElementById('div4').style.display="block";

}	}
function show3(name)
{
if(name=='Regular')
	{document.getElementById('div6').style.display="none";
	document.getElementById('div5').style.display="block";
	}
else {document.getElementById('div5').style.display="none";
	document.getElementById('div6').style.display="block";

}	}
function show4(name)
{
if(name=='Regular')
	{document.getElementById('div8').style.display="none";
	document.getElementById('div7').style.display="block";
	}
else {document.getElementById('div7').style.display="none";
	document.getElementById('div8').style.display="block";

}	}
	function hidefield()
	{
		document.getElementById('div2').style.display="none";
		document.getElementById('div4').style.display="none";

		document.getElementById('div6').style.display="none";

		document.getElementById('div8').style.display="none";
	}