//----------------------------
// PIO COMMON Session 2025 - test.rpgle
// Author: kapil-pio
// Date: 2025-12-06
// Description: Simple test program demonstrating variable declarations and a Monitor block.
//----------------------------

ctl-opt dftactgrp(*no) actgrp(*caller) option(*nodebugio);

**free
// Variable declarations
dcl-s var1 zoned(5) inz(5);
dcl-s var2 zoned(5) inz(10);
dcl-s var3 zoned(5) inz(0);

// Perform calculation inside a Monitor block to catch errors (e.g., divide by zero)
monitor;
   var3 = var2 / var1;
on-error;
   // Error handling: set var3 to 0 and continue
   var3 = 0;
endmon;

*inlr = *on;
return;
