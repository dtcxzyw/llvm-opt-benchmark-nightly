inline.NumInlined: 5
begin_hunk_0_@main:bb.a

.lr.ph33:                                         ; preds = %.lr.ph33, %.lr.ph33.preheader.new
  %indvars.iv38 = phi i64 [ 0, %.lr.ph33.preheader.new ], [ %indvars.iv.next39.1, %.lr.ph33 ] ; 4 uses
  %.032 = phi double [ 0.000000e+00, %.lr.ph33.preheader.new ], [ %5, %.lr.ph33 ]
  %.02431 = phi double [ 0.000000e+00, %.lr.ph33.preheader.new ], [ %4, %.lr.ph33 ]
  %niter = phi i64 [ 0, %.lr.ph33.preheader.new ], [ %niter.next.1, %.lr.ph33 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv38
  %i.aa = load double, ptr %i.z, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv38
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !8 ; 3 uses
  %2 = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ac, double %.02431)
  %3 = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %.032)
  %indvars.iv.next39 = or disjoint i64 %indvars.iv38, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next39
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next39
  %i.ag = load double, ptr %i.af, align 8, !tbaa !8 ; 3 uses
  %4 = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ag, double %2) ; 3 uses
  %5 = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %3) ; 3 uses
  %indvars.iv.next39.1 = add nuw nsw i64 %indvars.iv38, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
end_hunk_0
begin_hunk_1_@main:bb.a

.lr.ph33.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph33.preheader
  %indvars.iv38.epil.init = phi i64 [ 0, %.lr.ph33.preheader ], [ %indvars.iv.next39.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.032.epil.init = phi double [ 0.000000e+00, %.lr.ph33.preheader ], [ %5, %._crit_edge.loopexit.unr-lcssa ]
  %.02431.epil.init = phi double [ 0.000000e+00, %.lr.ph33.preheader ], [ %4, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod47 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv38.epil.init
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv38.epil.init
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !8 ; 3 uses
  %6 = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ak, double %.02431.epil.init)
  %7 = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %.032.epil.init)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph33.epil.preheader
  %.lcssa45 = phi double [ %4, %._crit_edge.loopexit.unr-lcssa ], [ %6, %.lr.ph33.epil.preheader ]
  %.lcssa = phi double [ %5, %._crit_edge.loopexit.unr-lcssa ], [ %7, %.lr.ph33.epil.preheader ]
  %i.al = fdiv double %.lcssa45, %.lcssa
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader27
end_hunk_1
begin_hunk_2_@strtol
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_2
