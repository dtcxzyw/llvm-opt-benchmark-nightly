inline.NumInlined: 7
begin_hunk_0_@createRandomArray:bb.a
  %i.t = fmul double %i.s, %i.j
  %i.u = fptosi double %i.t to i32                ; 2 uses
  %i.v = icmp eq i32 %0, %i.u
  %1 = add nsw i32 %i.u, 1
  %2 = sext i1 %i.v to i32
  %i.w = add nsw i32 %1, %2
  store i32 %i.w, ptr %i.d, align 4, !tbaa !4
  %.not16.i = icmp eq i32 %0, 0
  br i1 %.not16.i, label %shuffle.exit, label %.lr.ph.preheader.i
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.x = fmul nnan double %i.w, 5.000000e+05
  %i.y = fptosi double %i.x to i32                ; 2 uses
  %i.z = icmp eq i32 %i.y, 500000
  %i.aa = add nsw i32 %i.y, 1
  %0 = sext i1 %i.z to i32
  %1 = add nsw i32 %i.aa, %0
  store i32 %1, ptr %i.a, align 4, !tbaa !4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i
end_hunk_1
