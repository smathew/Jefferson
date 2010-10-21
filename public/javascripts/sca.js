// **************************************************************
// Copyright © Share One
// **************************************************************

	document.write("");
	document.write("<table class="calculator">");

	document.write("<tr>");
	document.write("<td colspan=3>");
	document.write("");
	document.write("");
	document.write("Savings Schedule");
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
	document.write("</tr>");

	document.write("<tr>");
	document.write("<td BGCOLOR=#EEEEEE>");
	document.write("");
	document.write("");
	document.write("Number");
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
		
	document.write("<td BGCOLOR=#EEEEEE>");
	document.write("");
	document.write("");
	document.write("Deposit");
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
		
	document.write("<td BGCOLOR=#EEEEEE>");
	document.write("");
	document.write("");
	document.write("Total");
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
	document.write("</tr>");

	document.write("<tr>");
	document.write("<td BGCOLOR=#FFFFFF>");
	document.write("");
	document.write("");
	document.write("-");
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
		
	document.write("<td BGCOLOR=#FFFFFF>");
	document.write("");
	document.write("");
	document.write("-");
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
	
	document.write("<td BGCOLOR=#EEFFEE>");
	document.write("");
	document.write("");
	document.write(currencyPad(A));
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
	document.write("</tr>");

	var G = 0;
	var M = 0;
	var N = 0;
	var MM = 0;
	var NN = 0;
	var AA = A;
	var UU = 0;
	var ZZ = 0;
									
	for (I = 0; I <= D - 1; I++)
	{
		G = I + 1;
		UU = C * (Math.pow((1 + (H / (CO * 100))), G - 1));
		AA = AA * (1 + ((B / 100) / CO));		
		ZZ = AA + UU;
		AA = ZZ;

		document.write("<tr>");
		document.write("<td BGCOLOR=#EEFFEE>");
		document.write("");
		document.write("");
		document.write(G);
		document.write("</CENTER>");
		document.write("");
		document.write("</td>");
		
		document.write("<td BGCOLOR=#EEFFEE>");
		document.write("");
		document.write("");
		document.write(currencyPad(UU));
		document.write("</CENTER>");
		document.write("");
		document.write("</td>");
			
		document.write("<td BGCOLOR=#EEFFEE>");
		document.write("");
		document.write("");
		document.write(currencyPad(ZZ));
		document.write("</CENTER>");
		document.write("");
		document.write("</td>");
		document.write("</tr>");
			
	}
			
		document.write("</TABLE>");
		document.write("<br />");
			
		document.write("<span class=FontFive>");
		document.write("PLEASE NOTE: The effect of " +roundingPad((F*100.00)/100)+ "% annual inflation over " +D+ " " +strZ+ " translates " +currencyPad(ZZ)+ " into " +currencyPad(JJJ)+ " in today's dollars."); 
		document.write("");

// **************************************************************