inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@codeInteger:bb.a

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1
  %4 = xor i32 %2, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@codeInteger:bb.a

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.018.i = phi ptr [ %i.am, %bb.j ], [ %i.an, %bb.k ], [ %1, %bb.i ]
  %.0.i = phi i32 [ %4, %bb.j ], [ %2, %bb.k ], [ %2, %bb.i ]
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
end_hunk_1
begin_hunk_2_@codeInteger:bb.a
  br i1 %i.au, label %.preheader.i, label %bb.n, !llvm.loop !1841

bb.n:                                             ; preds = %.preheader.i
  %i.av = icmp samesign ult i64 %indvars.iv.i, 19
  br i1 %i.av, label %sqlite3FitsIn64Bits.exit.thread47, label %bb.o

end_hunk_2
begin_hunk_3_@codeInteger:bb.a

sqlite3FitsIn64Bits.exit:                         ; preds = %bb.p, %bb.q
  %.0.i.i22 = phi i32 [ %i.bb, %bb.q ], [ %i.aw, %bb.p ]
  %.not50 = icmp slt i32 %.0.i.i22, %.0.i
  br i1 %.not50, label %sqlite3FitsIn64Bits.exit.thread47, label %sqlite3FitsIn64Bits.exit.thread

sqlite3FitsIn64Bits.exit.thread47:                ; preds = %bb.n, %sqlite3FitsIn64Bits.exit
end_hunk_3
begin_hunk_4_@codeInteger:bb.a
  %.029.lcssa.i = phi i64 [ 0, %.preheader.i23 ], [ %i.bv, %.lr.ph.i ] ; 2 uses
  %i.ca = sub nsw i64 0, %.029.lcssa.i
  %i.cb = select i1 %.not34.i, i64 %i.ca, i64 %.029.lcssa.i ; 2 uses
  %.not19 = icmp eq i32 %2, 0
  %i.cc = sub nsw i64 0, %i.cb
  %spec.select = select i1 %.not19, i64 %i.cb, i64 %i.cc
  %.val = load ptr, ptr %0, align 8, !tbaa !106   ; 2 uses
  %.not.i.i29 = icmp eq ptr %.val, null
  br i1 %.not.i.i29, label %sqlite3DbMallocRaw.exit.i, label %bb.u
end_hunk_4
