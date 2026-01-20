

ctl-opt dftactgrp(*no) actgrp('ORDPROC');

dcl-s custId        char(10);
dcl-s qty           int(10);
dcl-s unitPrice     packed(7:2);
dcl-s discountPct   packed(5:2);
dcl-s taxPct        packed(5:2);
dcl-s grossAmount   packed(11:2);
dcl-s netAmount     packed(11:2);
dcl-s errMsg        varchar(100);

custId      = 'C10045';
qty         = 0;
unitPrice  = 199.95;
discountPct= 10.00;
taxPct     = 18.00;

grossAmount = qty * unitPrice;

netAmount = grossAmount -
            (grossAmount * discountPct / 100) +
            (grossAmount * taxPct / 100);

if netAmount < 0;
   errMsg = 'Invalid net amount calculated';
   dsply errMsg;
endif;

dsply ('Customer:' + custId);
dsply ('Net Amount:' + %char(netAmount));

return;
