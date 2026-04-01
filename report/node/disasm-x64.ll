begin_hunk_0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 157 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1
  %2 = shl i8 %i.d, 1
  %i.e = and i8 %2, 8                             ; 2 uses
  %.not16.not = icmp eq i8 %i.e, 0
  br i1 %.not16.not, label %switch.lookup, label %bb.b

end_hunk_0
begin_hunk_1
  %i.i = load i8, ptr %i.b, align 1
  %i.j = lshr i8 %i.i, 3
  %i.k = and i8 %i.j, 7
  %3 = or disjoint i8 %i.e, %i.k
  %i.l = zext nneg i8 %3 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6disasm15DisassemblerX6416PrintImmediateOpEPh, i64 %i.l
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.d
end_hunk_1
