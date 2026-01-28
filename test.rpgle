//----------------------------
// PIO COMMON Session 2026 - test.rpgle
// Author: kapil-pai
// Date: 2026-01-15
// Description: Simple test program demonstrating variable declarations and a Monitor block.
//----------------------------

ctl-opt dftactgrp(*no) actgrp(*caller) option(*nodebugio);

**free
// Variable declarations
dcl-s var1 zoned(5) inz(5);
dcl-s var2 zoned(5) inz(10);
dcl-s var3 zoned(5) inz(0);
dcl-s var4 char(20) inz ;
dcl-s var5 char(20) inz ;


// Perform calculation inside a Monitor block to catch errors (e.g., divide by zero)

   var3 = var2 / var1;
   // Error handling: set var3 to 0 and continue
   var3 = 0;

Var3= Var+Var5 ;

*inlr = *on;
return;


