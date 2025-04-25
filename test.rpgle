//----------------------------
// PIO COMMON Session 2025 //
//----------------------------
dcl-s var1 zoned(5) inz(5) ;
dcl-s var2 zoned(5) inz(10);
dcl-s var3 zoned(5) inz;
test


**Free
Monitor;
 var3 = var2/Var1;
On-Error;
EndMon;

*Inlr = *on ;
