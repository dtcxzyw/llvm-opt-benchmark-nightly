inline.NumInlined: 55
inline.NumDeleted: 26
begin_hunk_0_@optimize_format:bb.a

PyUnicode_READ.exit.us.i:                         ; preds = %.lr.ph.i, %bb.j
  %.03054.us.i = phi i64 [ %.131.us.i, %bb.j ], [ %.063, %.lr.ph.i ] ; 5 uses
  %.03253.us.i = phi i1 [ %.133.us.i, %bb.j ], [ false, %.lr.ph.i ] ; 3 uses
  %i.s = getelementptr i8, ptr %.0.i.i, i64 %.03054.us.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %.not.us.i = icmp eq i8 %i.t, 37
end_hunk_0
begin_hunk_1_@optimize_format:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %PyUnicode_READ.exit.us.i
  %.133.us.i = phi i1 [ true, %bb.i ], [ %.03253.us.i, %PyUnicode_READ.exit.us.i ] ; 2 uses
  %.131.us.i = phi i64 [ %i.z, %bb.i ], [ %i.u, %PyUnicode_READ.exit.us.i ] ; 3 uses
  %i.aa = icmp slt i64 %.131.us.i, %.val.i
  br i1 %i.aa, label %PyUnicode_READ.exit.us.i, label %._crit_edge.i, !llvm.loop !125

PyUnicode_READ.exit.us69.i:                       ; preds = %.lr.ph.i, %bb.m
  %.03054.us67.i = phi i64 [ %.131.us75.i, %bb.m ], [ %.063, %.lr.ph.i ] ; 5 uses
  %.03253.us68.i = phi i1 [ %.133.us74.i, %bb.m ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ab = getelementptr [2 x i8], ptr %.0.i.i, i64 %.03054.us67.i
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !126
  %.not.us71.i = icmp eq i16 %i.ac, 37
end_hunk_1
begin_hunk_2_@optimize_format:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %PyUnicode_READ.exit.us69.i
  %.133.us74.i = phi i1 [ true, %bb.l ], [ %.03253.us68.i, %PyUnicode_READ.exit.us69.i ] ; 2 uses
  %.131.us75.i = phi i64 [ %i.ai, %bb.l ], [ %i.ad, %PyUnicode_READ.exit.us69.i ] ; 3 uses
  %i.aj = icmp slt i64 %.131.us75.i, %.val.i
  br i1 %i.aj, label %PyUnicode_READ.exit.us69.i, label %._crit_edge.i, !llvm.loop !125

PyUnicode_READ.exit.i:                            ; preds = %.lr.ph.i, %bb.p
  %.03054.i = phi i64 [ %.131.i, %bb.p ], [ %.063, %.lr.ph.i ] ; 5 uses
  %.03253.i = phi i1 [ %.133.i, %bb.p ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ak = getelementptr [4 x i8], ptr %.0.i.i, i64 %.03054.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %.not.i = icmp eq i32 %i.al, 37
end_hunk_2
begin_hunk_3_@optimize_format:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %PyUnicode_READ.exit.i
  %.133.i = phi i1 [ true, %bb.o ], [ %.03253.i, %PyUnicode_READ.exit.i ] ; 2 uses
  %.131.i = phi i64 [ %i.ar, %bb.o ], [ %i.am, %PyUnicode_READ.exit.i ] ; 3 uses
  %i.as = icmp slt i64 %.131.i, %.val.i
  br i1 %i.as, label %PyUnicode_READ.exit.i, label %._crit_edge.i, !llvm.loop !125

._crit_edge.i:                                    ; preds = %bb.m, %PyUnicode_READ.exit52.us72.i, %bb.k, %bb.j, %PyUnicode_READ.exit52.us.i, %bb.h, %bb.p, %PyUnicode_READ.exit52.i, %bb.n
  %.032.lcssa.i = phi i1 [ %.03253.us.i, %PyUnicode_READ.exit52.us.i ], [ %.03253.i, %bb.n ], [ %.133.i, %bb.p ], [ %.03253.i, %PyUnicode_READ.exit52.i ], [ %.03253.us.i, %bb.h ], [ %.133.us.i, %bb.j ], [ %.03253.us68.i, %PyUnicode_READ.exit52.us72.i ], [ %.133.us74.i, %bb.m ], [ %.03253.us68.i, %bb.k ]
  %.030.lcssa.i = phi i64 [ %.03054.us.i, %PyUnicode_READ.exit52.us.i ], [ %.03054.i, %bb.n ], [ %.131.i, %bb.p ], [ %.03054.i, %PyUnicode_READ.exit52.i ], [ %.03054.us.i, %bb.h ], [ %.131.us.i, %bb.j ], [ %.03054.us67.i, %PyUnicode_READ.exit52.us72.i ], [ %.131.us75.i, %bb.m ], [ %.03054.us67.i, %bb.k ] ; 8 uses
  %i.at = icmp eq i64 %.030.lcssa.i, %.063
  br i1 %i.at, label %parse_literal.exit.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  %i.au = call ptr @PyUnicode_Substring(ptr noundef %1, i64 noundef %.063, i64 noundef %.030.lcssa.i) #6 ; 6 uses
  %i.av = icmp ne ptr %i.au, null
  %or.cond.i = select i1 %i.av, i1 %.032.lcssa.i, i1 false
  br i1 %or.cond.i, label %bb.r, label %Py_DECREF.exit47.i

bb.r:                                             ; preds = %bb.q
end_hunk_3
