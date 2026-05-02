inline.NumInlined: 59
inline.NumDeleted: 41
begin_hunk_0_@uv__fs_work:bb.a
  br i1 %.not.i20.i, label %.loopexit.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.eg, %.outer68.i.i
  %.0.ph151.i.i = phi i32 [ %.0105.us177.i.i, %.outer68.i.i ], [ 1, %bb.eg ]
  %.047.ph149.i.i = phi i64 [ %i.so, %.outer68.i.i ], [ %i.rq, %bb.eg ] ; 5 uses
  %.048.ph148.i.i = phi i64 [ %i.sp, %.outer68.i.i ], [ 0, %bb.eg ]
  %18 = icmp ne i32 %.0.ph151.i.i, 0
  br label %bb.eh

bb.eh:                                            ; preds = %.backedge, %.lr.ph.i.i
  %.0105.us.i.i = phi i1 [ %18, %.lr.ph.i.i ], [ false, %.backedge ] ; 2 uses
  %.048104.us.i.i = phi i64 [ %.048.ph148.i.i, %.lr.ph.i.i ], [ 0, %.backedge ] ; 6 uses
  %i.rr = sub nuw i64 %i.rn, %.048104.us.i.i
  %spec.store.select.us.i.i = call i64 @llvm.umin.i64(i64 %i.rr, i64 8192) ; 2 uses
end_hunk_0
begin_hunk_1_@uv__fs_work:bb.a
  br i1 %i.rz, label %.split.us.us.i.i, label %.split102.us109.i.i, !llvm.loop !18

.preheader64.i.i:                                 ; preds = %.split.us110.i.i, %.split.us.us.i.i
  %.0105.us177.i.i = phi i32 [ 1, %.split.us.us.i.i ], [ 0, %.split.us110.i.i ]
  %.us-phi98.i.i = phi i64 [ %i.rx, %.split.us.us.i.i ], [ %i.rs, %.split.us110.i.i ] ; 6 uses
  %i.sa = icmp sgt i64 %.us-phi98.i.i, 0
  br i1 %i.sa, label %.outer.split.i.i, label %.outer68.i.i
end_hunk_1
