begin_hunk_0_@asearch1:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0188218 = phi i32 [ %i.r, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.w = shl i32 %.0188218, 1
  %3 = or i32 %i.w, %.0188218                     ; 2 uses
  %4 = shl i32 %3, 1
  %i.x = or i32 %4, %3                            ; 2 uses
  %i.y = shl i32 %i.x, 1
  %5 = or i32 %i.y, %i.x                          ; 2 uses
  %6 = shl i32 %5, 1
  %i.z = or i32 %6, %5                            ; 2 uses
  %i.aa = shl i32 %i.z, 1
  %7 = or i32 %i.aa, %i.z                         ; 2 uses
  %8 = shl i32 %7, 1
  %i.ab = or i32 %8, %7                           ; 2 uses
  %i.ac = shl i32 %i.ab, 1
  %9 = or i32 %i.ac, %i.ab                        ; 2 uses
  %10 = shl i32 %9, 1
  %i.ad = or i32 %10, %9                          ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !9
end_hunk_0
