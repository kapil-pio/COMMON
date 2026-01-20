Scenario:
Critical logic, no comments, audit-unfriendly


ctl-opt dftactgrp(*no);

dcl-f CUSTMAST usage(*input);
dcl-f ORDHDR   usage(*update);
dcl-f ORDLINE  usage(*input);

dcl-s creditLimit packed(9:2);
dcl-s orderTotal  packed(11:2);
dcl-s holdFlag    char(1);

holdFlag = 'N';
orderTotal = 0;

read CUSTMAST;
if not %eof(CUSTMAST);
   creditLimit = CUSTLIMIT;
endif;

read ORDLINE;
dow not %eof(ORDLINE);
   orderTotal += LINEAMT;
   read ORDLINE;
enddo;

if orderTotal > creditLimit;
   holdFlag = 'Y';
   ORDSTATUS = 'HOLD';
   update ORDHDR;
endif;

dsply ('Order Total:' + %char(orderTotal));
return;
