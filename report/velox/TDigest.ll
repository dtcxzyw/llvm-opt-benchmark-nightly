inline.NumInlined: 1039
inline.NumDeleted: 404
begin_hunk_0_@_ZNK5folly7TDigest11mergeValuesERS0_NS_5RangeIPKdEERSt6vectorINS0_8CentroidESaIS7_EE:bb.a
  %i.g = ashr exact i64 %i.f, 3
  %i.h = uitofp i64 %i.g to double
  %i.i = fadd double %i.c, %i.h                   ; 3 uses
  %i.j = load double, ptr %2, align 8, !tbaa !28  ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %3, i64 -8
  %i.l = load double, ptr %i.k, align 8, !tbaa !28 ; 3 uses
  %i.m = fcmp ogt double %i.c, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %6 = load double, ptr %i.n, align 8, !tbaa !28  ; 2 uses
  %7 = fcmp olt double %i.j, %6
  %.sroa.speculated40 = select i1 %7, double %i.j, double %6
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %9 = load double, ptr %8, align 8, !tbaa !28    ; 2 uses
  %10 = fcmp olt double %9, %i.l
  %.sroa.speculated = select i1 %10, double %i.l, double %9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.016 = phi double [ %.sroa.speculated40, %bb.c ], [ %i.j, %bb.b ]
  %.015 = phi double [ %.sroa.speculated, %bb.c ], [ %i.l, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11   ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK5folly7TDigest11mergeValuesERS0_NS_5RangeIPKdEERSt6vectorINS0_8CentroidESaIS7_EE:bb.a
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.i, ptr %i.gp, align 8, !tbaa !22
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 48
  store double %.015, ptr %i.gq, align 8, !tbaa !23
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %.016, ptr %11, align 8, !tbaa !24
  %i.gr = load ptr, ptr %5, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i28, label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit, label %bb.ai
end_hunk_1
