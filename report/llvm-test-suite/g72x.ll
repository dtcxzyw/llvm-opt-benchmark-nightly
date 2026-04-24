inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@fmult:.lr.ph.i
  br i1 %i.n, label %quan.exit, label %.lr.ph.i.12

.lr.ph.i.12:                                      ; preds = %.lr.ph.i.11
  %i.o = icmp samesign ult i32 %i.d, 4096         ; 2 uses
  %spec.select = select i1 %i.o, i32 6, i32 7
  %spec.select.a = select i1 %i.o, i16 6, i16 7
  br label %quan.exit

end_hunk_0
begin_hunk_1_@fmult:.lr.ph.i
  br label %quan.exit

quan.exit:                                        ; preds = %.lr.ph.i.12, %.lr.ph.i, %quan.exit.fold.split, %.lr.ph.i.11, %.lr.ph.i.10, %.lr.ph.i.9, %.lr.ph.i.8, %.lr.ph.i.7, %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2
  %.0.lcssa.i = phi i32 [ 5, %.lr.ph.i.11 ], [ -6, %.lr.ph.i ], [ 3, %.lr.ph.i.9 ], [ 1, %.lr.ph.i.7 ], [ -4, %.lr.ph.i.2 ], [ 2, %.lr.ph.i.8 ], [ -3, %.lr.ph.i.3 ], [ -5, %quan.exit.fold.split ], [ -2, %.lr.ph.i.4 ], [ 4, %.lr.ph.i.10 ], [ -1, %.lr.ph.i.5 ], [ %spec.select, %.lr.ph.i.12 ], [ 0, %.lr.ph.i.6 ] ; 2 uses
  %i.p = phi i1 [ true, %.lr.ph.i.11 ], [ false, %.lr.ph.i ], [ true, %.lr.ph.i.9 ], [ true, %.lr.ph.i.7 ], [ false, %.lr.ph.i.2 ], [ true, %.lr.ph.i.8 ], [ false, %.lr.ph.i.3 ], [ false, %quan.exit.fold.split ], [ false, %.lr.ph.i.4 ], [ true, %.lr.ph.i.10 ], [ false, %.lr.ph.i.5 ], [ true, %.lr.ph.i.12 ], [ true, %.lr.ph.i.6 ]
  %.0.lcssa.i.a = phi i16 [ 5, %.lr.ph.i.11 ], [ -6, %.lr.ph.i ], [ 3, %.lr.ph.i.9 ], [ 1, %.lr.ph.i.7 ], [ -4, %.lr.ph.i.2 ], [ 2, %.lr.ph.i.8 ], [ -3, %.lr.ph.i.3 ], [ -5, %quan.exit.fold.split ], [ -2, %.lr.ph.i.4 ], [ 4, %.lr.ph.i.10 ], [ -1, %.lr.ph.i.5 ], [ %spec.select.a, %.lr.ph.i.12 ], [ 0, %.lr.ph.i.6 ]
  %i.q = icmp eq i32 %i.d, 0
  br i1 %i.q, label %bb.d, label %bb.a

bb.a:                                             ; preds = %quan.exit
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = lshr i32 %i.d, %.0.lcssa.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = sub nsw i32 0, %.0.lcssa.i
  %i.t = shl nuw nsw i32 %i.d, %i.s
  br label %bb.d

end_hunk_1
