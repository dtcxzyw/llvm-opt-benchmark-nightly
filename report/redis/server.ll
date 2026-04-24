inline.NumInlined: 245
inline.NumDeleted: 29
begin_hunk_0_@main:bb.a
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1 = phi i64 [ 2, %bb.r ], [ 1, %bb.q ]
  %.1.a = phi i32 [ 2, %bb.r ], [ 1, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #42
  %i.cu = icmp samesign ult i32 %.1.a, %0
  br i1 %i.cu, label %.lr.ph175, label %._crit_edge176

.lr.ph175:                                        ; preds = %bb.s
  %i.cv = add nsw i32 %0, -1
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %wide.trip.count186 = zext nneg i32 %0 to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph175, %bb.am
  %indvars.iv184 = phi i64 [ %.1, %.lr.ph175 ], [ %indvars.iv.next185, %bb.am ] ; 5 uses
  %.0111170 = phi i32 [ 1, %.lr.ph175 ], [ %.2113, %bb.am ] ; 2 uses
  %.0114169 = phi i8 [ 0, %.lr.ph175 ], [ %.1115, %bb.am ] ; 2 uses
  %.0117168 = phi ptr [ %i.bd, %.lr.ph175 ], [ %.3120, %bb.am ] ; 10 uses
end_hunk_0
