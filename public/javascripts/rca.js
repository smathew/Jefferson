// **************************************************************
// InterenetActive Calculators™
// Version 2.0
// Copyright © Share One.
// **************************************************************

	document.write("");
	document.write("<table class="calculator">");

	document.write("<tr>");
	document.write("<td colspan=4>");
	document.write("");
	document.write("");
	document.write("Retirement Schedule");
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
	document.write("</tr>");

	document.write("<tr>");
	document.write("<td BGCOLOR=#EEEEEE>");
	document.write("");
	document.write("");
	document.write("Age");
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
	document.write("Income");
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
			
	document.write("<td BGCOLOR=#EEEEEE>");
	document.write("");
	document.write("");
	document.write("Balance");
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
		
	document.write("<td BGCOLOR=#EEFFEE>");
	document.write("");
	document.write("");
	document.write("$0.00");
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
		
	document.write("<td BGCOLOR=#EEFFEE>");
	document.write("");
	document.write("");
	document.write("$0.00");
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
			
	document.write("<td BGCOLOR=#EEFFEE>");
	document.write("");
	document.write("");
	if (SO == 0) {
		document.write(currencyPad(A));
	}
	if (SO == 1) {
		document.write(currencyPad(A));
	}
	if (SO == 2) {
		document.write(currencyPad(Z));
	}
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
	document.write("</tr>");
			
	document.write("<br />");

	var G = 0;
	var M = 0;
	var N = 0;
	var MM = 0;
	var NN = 0;
	
	if (SO == 0) {
		var AA = A;
	}
	if (SO == 1) {
		var AA = A;
	}
	if (SO == 2) {
		var AA = Z;
	}
	
	if (SO == 0) {
		var UU = C;
	}
	if (SO == 1) {
		var UU = Z;
	}
	if (SO == 2) {
		var UU = C;
	}
						
	document.write("<tr>");
	document.write("<td BGCOLOR=#EEFFEE>");
	document.write("");
	document.write("");
	document.write(PA);
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
	document.write(currencyPad(MM));
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");

	if (SO == 0) {
		AA = (AA * (1 + (B / 100))) + Math.abs(C);
	}
	if (SO == 1) {
		AA = (AA * (1 + (B / 100))) + Math.abs(UU);
	}
	if (SO == 2) {
		AA = (AA * (1 + (B / 100))) + Math.abs(C);
	}

	document.write("<td BGCOLOR=#EEFFEE>");
	document.write("");
	document.write("");
	document.write(currencyPad(AA));
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
	document.write("</tr>");
			
	PA = parseInt(PA);
	
	for (I = PA; I <= RA - 2; I++)

	{
		G = I + 1;
				
		if (SO == 0) {
			UU = C * Math.pow(( 1 + (EE / 100)), G - PA);
		}
		if (SO == 1) {
			UU = Z * Math.pow(( 1 + (EE / 100)), G - PA);
		}
		if (SO == 2) {
			UU = C * Math.pow(( 1 + (EE / 100)), G - PA);
		}
												
		AA = AA * (1 + (B / 100));
				
		MM = 0;
				
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
		document.write(currencyPad(MM));
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
			
	var G = 0;
	var M = 0;
	var N = 0;
	if (SO == 0) {
		var MM = DDD;
	}
	if (SO == 1) {
		var MM = D;
	}
	if (SO == 2) {
		var MM = D;
	}
	var NN = 0;
	var AA = A;
	var UU = 0;

// *******************

	document.write("<tr>");
	document.write("<td BGCOLOR=#EEFFEE>");
	document.write("");
	document.write("");
	document.write(RA);
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
	document.write(currencyPad(MM));
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
			
	ZZ = (ZZ * (1 + (B / 100))) - (MM * (1 + (B / 100)));

	document.write("<td BGCOLOR=#EEFFEE>");
	document.write("");
	document.write("");
	document.write(currencyPad(ZZ));
	document.write("</CENTER>");
	document.write("");
	document.write("</td>");
	document.write("</tr>");
			
	RA = parseInt(RA);
						
	for (I = RA; I <= WA - 2; I++)
			
	{
		G = I + 1;
				
		UU = 0;
											
		AA = AA * (1 + (B / 100));
				
		MM = MM * (1 + (E / 100));
				
		ZZ = (ZZ * (1 + (B / 100))) - (MM * (1 + (B / 100)));
			
		AA = ZZ;
				
		if (ZZ <= MM) { ZZ = 0 }

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
		document.write(currencyPad(MM));
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

// **************************************************************