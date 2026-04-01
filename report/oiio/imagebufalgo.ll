begin_hunk_0
  br i1 %exitcond130.not, label %._crit_edge, label %.lr.ph.us.us.preheader, !llvm.loop !983

._crit_edge61.split.us66.us:                      ; preds = %._crit_edge61.split.us66.us, %._crit_edge61.split.us66.us.preheader.new
  %indvars.iv90 = phi i64 [ 0, %._crit_edge61.split.us66.us.preheader.new ], [ %indvars.iv.next91.1, %._crit_edge61.split.us66.us ] ; 4 uses
  %niter145 = phi i64 [ 0, %._crit_edge61.split.us66.us.preheader.new ], [ %niter145.next.1, %._crit_edge61.split.us66.us ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv90
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !930
  %i.bz = load i64, ptr %i.bx, align 4, !tbaa !96
  store i64 %i.bz, ptr %i.by, align 4, !tbaa !96
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !930
  %5 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv90
  %i.cb = load i64, ptr %i.ca, align 4, !tbaa !96
  store i64 %i.cb, ptr %5, align 4, !tbaa !96
  %indvars.iv.next91 = or disjoint i64 %indvars.iv90, 1 ; 2 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next91
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !930
  %i.cd = load i64, ptr %6, align 4, !tbaa !96
  store i64 %i.cd, ptr %i.cc, align 4, !tbaa !96
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !930
  %7 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next91
  %i.cf = load i64, ptr %i.ce, align 4, !tbaa !96
  store i64 %i.cf, ptr %7, align 4, !tbaa !96
  %indvars.iv.next91.1 = add nuw nsw i64 %indvars.iv90, 2 ; 2 uses
  %niter145.next.1 = add i64 %niter145, 2         ; 2 uses
  %niter145.ncmp.1 = icmp eq i64 %niter145.next.1, %unroll_iter144
end_hunk_0
begin_hunk_1
  br i1 %lcmp.mod142.not, label %._crit_edge, label %._crit_edge61.split.us66.us.epil.preheader

._crit_edge61.split.us66.us.epil.preheader:       ; preds = %._crit_edge.loopexit.unr-lcssa, %._crit_edge61.split.us66.us.preheader
  %indvars.iv90.epil.init = phi i64 [ 0, %._crit_edge61.split.us66.us.preheader ], [ %indvars.iv.next91.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod143 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv90.epil.init
  %i.ch = load ptr, ptr %i.d, align 8, !tbaa !930
  %i.ci = load i64, ptr %i.cg, align 4, !tbaa !96
  store i64 %i.ci, ptr %i.ch, align 4, !tbaa !96
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !930
  %8 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv90.epil.init
  %i.ck = load i64, ptr %i.cj, align 4, !tbaa !96
  store i64 %i.ck, ptr %8, align 4, !tbaa !96
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge61.split.us.us.us, %._crit_edge61.split.us66.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader52.lr.ph, %bb.a
end_hunk_1
