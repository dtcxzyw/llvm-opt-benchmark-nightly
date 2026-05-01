inline.NumInlined: 2
begin_hunk_0_@rgb_rgb_convert:bb.a
  store i16 4095, ptr %i.cr, align 2, !tbaa !77
  %i.cs = getelementptr inbounds nuw i8, ptr %.024.i3799.us, i64 16 ; 2 uses
  %indvars.iv.next151.1 = add nuw nsw i64 %indvars.iv150, 2 ; 2 uses
  %niter296.next.1 = add nuw i64 %niter296, 2     ; 2 uses
  %niter296.ncmp.1 = icmp eq i64 %niter296.next.1, %unroll_iter295
  br i1 %niter296.ncmp.1, label %..loopexit66_crit_edge.us.unr-lcssa, label %.lr.ph.us104.new, !llvm.loop !164

end_hunk_0
begin_hunk_1_@rgb_rgb_convert:bb.a
  store i16 4095, ptr %i.gr, align 2, !tbaa !77
  %i.gs = getelementptr inbounds nuw i8, ptr %.024.i4787.us, i64 16 ; 2 uses
  %indvars.iv.next141.1 = add nuw nsw i64 %indvars.iv140, 2 ; 2 uses
  %niter288.next.1 = add nuw i64 %niter288, 2     ; 2 uses
  %niter288.ncmp.1 = icmp eq i64 %niter288.next.1, %unroll_iter287
  br i1 %niter288.ncmp.1, label %..loopexit70_crit_edge.us.unr-lcssa, label %.lr.ph.us92.new, !llvm.loop !179

end_hunk_1
begin_hunk_2_@rgb_rgb_convert:bb.a
  store i16 4095, ptr %i.id, align 2, !tbaa !77
  %i.in = getelementptr inbounds nuw i8, ptr %.024.i5281.us, i64 16 ; 2 uses
  %indvars.iv.next136.1 = add nuw nsw i64 %indvars.iv135, 2 ; 2 uses
  %niter282.next.1 = add nuw i64 %niter282, 2     ; 2 uses
  %niter282.ncmp.1 = icmp eq i64 %niter282.next.1, %unroll_iter281
  br i1 %niter282.ncmp.1, label %..loopexit72_crit_edge.us.unr-lcssa, label %.lr.ph.us86.new, !llvm.loop !181

end_hunk_2
begin_hunk_3_@rgb_rgb_convert:bb.a
  store i16 4095, ptr %i.jy, align 2, !tbaa !77
  %i.ki = getelementptr inbounds nuw i8, ptr %.024.i5776.us, i64 16 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit74_crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !183

end_hunk_3
