inline.NumInlined: 1039
inline.NumDeleted: 404
begin_hunk_0_@_ZNK5folly7TDigest11mergeValuesERS0_NS_5RangeIPKdEERSt6vectorINS0_8CentroidESaIS7_EE:bb.a
  %i.g = ashr exact i64 %i.f, 3
  %i.h = uitofp i64 %i.g to double
  %i.i = fadd double %i.c, %i.h                   ; 3 uses
  %i.j = load double, ptr %2, align 8, !tbaa !28  ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %3, i64 -8
  %i.l = load double, ptr %i.k, align 8, !tbaa !28 ; 2 uses
  %i.m = fcmp ogt double %i.c, 0.000000e+00
  %6 = insertelement <2 x double> poison, double %i.l, i64 0
  %7 = insertelement <2 x double> %6, double %i.j, i64 1 ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %8 = load <2 x double>, ptr %i.n, align 8, !tbaa !28 ; 3 uses
  %9 = insertelement <2 x double> %8, double %i.j, i64 1
  %10 = insertelement <2 x double> %8, double %i.l, i64 0
  %11 = fcmp olt <2 x double> %9, %10
  %12 = select <2 x i1> %11, <2 x double> %7, <2 x double> %8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %13 = phi <2 x double> [ %12, %bb.c ], [ %7, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11   ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK5folly7TDigest11mergeValuesERS0_NS_5RangeIPKdEERSt6vectorINS0_8CentroidESaIS7_EE:bb.a
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.i, ptr %i.gp, align 8, !tbaa !22
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <2 x double> %13, ptr %i.gq, align 8, !tbaa !28
  %i.gr = load ptr, ptr %5, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i28, label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit, label %bb.ai
end_hunk_1
