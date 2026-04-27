begin_hunk_0_@asearch1:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0188218 = phi i32 [ %i.r, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.w = shl i32 %.0188218, 2
  %3 = shl i32 %.0188218, 1
  %4 = or i32 %i.w, %3
  %i.x = or i32 %4, %.0188218                     ; 3 uses
  %i.y = shl i32 %i.x, 2
  %5 = shl i32 %i.x, 1
  %6 = or i32 %i.y, %5
  %i.z = or i32 %6, %i.x                          ; 3 uses
  %i.aa = shl i32 %i.z, 2
  %7 = shl i32 %i.z, 1
  %8 = or i32 %i.aa, %7
  %i.ab = or i32 %8, %i.z                         ; 3 uses
  %i.ac = shl i32 %i.ab, 2
  %9 = shl i32 %i.ab, 1
  %10 = or i32 %i.ac, %9
  %i.ad = or i32 %10, %i.ab                       ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !9
end_hunk_0
