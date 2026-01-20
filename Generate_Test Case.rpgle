Scenario:
Multiple calculations, branching, boundaries


dcl-s custType    char(1);
dcl-s qty         int(10);
dcl-s price       packed(7:2);
dcl-s discount    packed(5:2);
dcl-s tax         packed(5:2);
dcl-s totalAmt    packed(11:2);

custType = 'R';
qty = 5;
price = 150.00;
discount = 5.00;
tax = 18.00;

totalAmt = (qty * price) -
           ((qty * price) * discount / 100);

if custType = 'W';
   totalAmt -= (totalAmt * 10 / 100);
endif;

totalAmt += (totalAmt * tax / 100);

if totalAmt > 5000;
   dsply 'High value order';
endif;

dsply ('Final Amount:' + %char(totalAmt));
return;
