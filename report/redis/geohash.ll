inline.NumInlined: 27
inline.NumDeleted: 3
begin_hunk_0_@geohashDecode:bb.a
  %i.p = lshr exact i64 %i.o, 1
  %i.q = lshr i64 %i.m, 2
  %i.r = or disjoint i64 %i.q, %i.m
  %i.s = lshr i64 %i.o, 3
  %i.t = or disjoint i64 %i.p, %i.s
  %7 = insertelement <2 x double> poison, double %1, i64 0
  %8 = insertelement <2 x double> %7, double %3, i64 1
  %9 = insertelement <2 x double> poison, double %0, i64 0
  %10 = insertelement <2 x double> %9, double %2, i64 1 ; 2 uses
  %11 = fsub <2 x double> %8, %10                 ; 3 uses
  %12 = zext nneg i8 %5 to i64
  %13 = shl nuw i64 1, %12
  %14 = uitofp i64 %13 to double                  ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %18 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %19 = insertelement <2 x i64> %18, i64 %i.r, i64 1
  %20 = and <2 x i64> %19, splat (i64 1085102592571150095) ; 2 uses
  %21 = lshr <2 x i64> %20, splat (i64 4)
  %22 = or disjoint <2 x i64> %21, %20
  %23 = and <2 x i64> %22, splat (i64 71777214294589695) ; 2 uses
  %24 = lshr <2 x i64> %23, splat (i64 8)
  %25 = or disjoint <2 x i64> %24, %23            ; 2 uses
  %26 = lshr <2 x i64> %25, splat (i64 16)
  %27 = and <2 x i64> %26, splat (i64 4294901760)
  %28 = and <2 x i64> %25, splat (i64 65535)
  %29 = or disjoint <2 x i64> %27, %28
  %30 = trunc nuw <2 x i64> %29 to <2 x i32>      ; 3 uses
  %31 = extractelement <2 x i32> %30, i64 1
  %i.u = add i32 %31, 1
  %i.v = uitofp i32 %i.u to double
  %32 = fdiv double %i.v, %14
  %33 = extractelement <2 x double> %11, i64 1
  %34 = tail call double @llvm.fmuladd.f64(double %32, double %33, double %2)
  store double %34, ptr %15, align 8, !tbaa !24
  %35 = extractelement <2 x i32> %30, i64 0
  %36 = uitofp i32 %35 to double
  %37 = fdiv double %36, %14
  %38 = extractelement <2 x double> %11, i64 0
  %39 = tail call double @llvm.fmuladd.f64(double %37, double %38, double %0)
  store double %39, ptr %16, align 8, !tbaa !26
  %40 = add <2 x i32> %30, <i32 1, i32 0>
  %41 = uitofp <2 x i32> %40 to <2 x double>
  %i.w = insertelement <2 x double> poison, double %14, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %42 = fdiv <2 x double> %41, %i.x
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %42, <2 x double> %11, <2 x double> %10)
  store <2 x double> %i.y, ptr %17, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
end_hunk_0
begin_hunk_1_@geohashDecode:bb.a
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @geohashDecodeType(i64 %0, i8 %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
end_hunk_1
begin_hunk_2_@geohashDecodeAreaToLongLat:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !27
  %i.e = fadd double %i.b, %i.d
  %i.f = fmul double %i.e, 5.000000e-01           ; 2 uses
  %i.g = fcmp ogt double %i.f, 1.800000e+02
end_hunk_2
begin_hunk_3_@geohashDecodeAreaToLongLat:bb.a
  %storemerge16 = select i1 %i.h, double -1.800000e+02, double %storemerge
  store double %storemerge16, ptr %1, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load double, ptr %i.k, align 8, !tbaa !24
  %i.m = fadd double %i.j, %i.l
  %i.n = fmul double %i.m, 5.000000e-01           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_3
begin_hunk_4_@llvm.fmuladd.v2f64
!21 = !{!19, !11, i64 8}
!22 = !{!20, !20, i64 0}
!23 = !{!11, !11, i64 0}
!24 = !{!25, !14, i64 40}
!25 = !{!"", !19, i64 0, !16, i64 16, !16, i64 32}
!26 = !{!25, !14, i64 16}
!27 = !{!25, !14, i64 24}
!28 = !{!25, !14, i64 32}
!29 = !{i64 0, i64 8, !22, i64 8, i64 1, !23}
end_hunk_4
