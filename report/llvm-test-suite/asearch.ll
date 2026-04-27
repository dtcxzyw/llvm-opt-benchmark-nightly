begin_hunk_0_@asearch0:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0157186 = phi i32 [ %i.g, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.l = shl i32 %.0157186, 1
  %3 = or i32 %i.l, %.0157186                     ; 2 uses
  %4 = shl i32 %3, 1
  %i.m = or i32 %4, %3                            ; 2 uses
  %i.n = shl i32 %i.m, 1
  %5 = or i32 %i.n, %i.m                          ; 2 uses
  %6 = shl i32 %5, 1
  %i.o = or i32 %6, %5                            ; 2 uses
  %i.p = shl i32 %i.o, 1
  %7 = or i32 %i.p, %i.o                          ; 2 uses
  %8 = shl i32 %7, 1
  %i.q = or i32 %8, %7                            ; 2 uses
  %i.r = shl i32 %i.q, 1
  %9 = or i32 %i.r, %i.q                          ; 2 uses
  %10 = shl i32 %9, 1
  %i.s = or i32 %10, %9                           ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !9
end_hunk_0
begin_hunk_1_@asearch:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0252343 = phi i32 [ %i.j, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.o = shl i32 %.0252343, 1
  %3 = or i32 %i.o, %.0252343                     ; 2 uses
  %4 = shl i32 %3, 1
  %i.p = or i32 %4, %3                            ; 2 uses
  %i.q = shl i32 %i.p, 1
  %5 = or i32 %i.q, %i.p                          ; 2 uses
  %6 = shl i32 %5, 1
  %i.r = or i32 %6, %5                            ; 2 uses
  %i.s = shl i32 %i.r, 1
  %7 = or i32 %i.s, %i.r                          ; 2 uses
  %8 = shl i32 %7, 1
  %i.t = or i32 %8, %7                            ; 2 uses
  %i.u = shl i32 %i.t, 1
  %9 = or i32 %i.u, %i.t                          ; 2 uses
  %10 = shl i32 %9, 1
  %i.v = or i32 %10, %9                           ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !27
end_hunk_1
