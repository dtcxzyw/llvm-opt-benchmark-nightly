begin_hunk_0_@asearch0:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0157186 = phi i32 [ %i.g, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.l = shl i32 %.0157186, 2
  %3 = shl i32 %.0157186, 1
  %4 = or i32 %i.l, %3
  %i.m = or i32 %4, %.0157186                     ; 3 uses
  %i.n = shl i32 %i.m, 2
  %5 = shl i32 %i.m, 1
  %6 = or i32 %i.n, %5
  %i.o = or i32 %6, %i.m                          ; 3 uses
  %i.p = shl i32 %i.o, 2
  %7 = shl i32 %i.o, 1
  %8 = or i32 %i.p, %7
  %i.q = or i32 %8, %i.o                          ; 3 uses
  %i.r = shl i32 %i.q, 2
  %9 = shl i32 %i.q, 1
  %10 = or i32 %i.r, %9
  %i.s = or i32 %10, %i.q                         ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !9
end_hunk_0
begin_hunk_1_@asearch:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0252343 = phi i32 [ %i.j, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.o = shl i32 %.0252343, 2
  %3 = shl i32 %.0252343, 1
  %4 = or i32 %i.o, %3
  %i.p = or i32 %4, %.0252343                     ; 3 uses
  %i.q = shl i32 %i.p, 2
  %5 = shl i32 %i.p, 1
  %6 = or i32 %i.q, %5
  %i.r = or i32 %6, %i.p                          ; 3 uses
  %i.s = shl i32 %i.r, 2
  %7 = shl i32 %i.r, 1
  %8 = or i32 %i.s, %7
  %i.t = or i32 %8, %i.r                          ; 3 uses
  %i.u = shl i32 %i.t, 2
  %9 = shl i32 %i.t, 1
  %10 = or i32 %i.u, %9
  %i.v = or i32 %10, %i.t                         ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !27
end_hunk_1
