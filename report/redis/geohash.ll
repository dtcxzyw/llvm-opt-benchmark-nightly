inline.NumInlined: 27
inline.NumDeleted: 3
begin_hunk_0_@geohashDecode:bb.a
  %i.p = lshr exact i64 %i.o, 1
  %i.q = lshr i64 %i.m, 2
  %i.r = or disjoint i64 %i.q, %i.m
  %7 = and i64 %i.r, 1085102592571150095          ; 2 uses
  %i.s = lshr i64 %i.o, 3
  %i.t = or disjoint i64 %i.p, %i.s
  %8 = and i64 %i.t, 1085102592571150095          ; 2 uses
  %9 = lshr i64 %7, 4
  %10 = or disjoint i64 %9, %7
  %11 = and i64 %10, 71777214294589695            ; 2 uses
  %12 = lshr i64 %8, 4
  %13 = or disjoint i64 %12, %8
  %14 = and i64 %13, 71777214294589695            ; 2 uses
  %15 = lshr i64 %11, 8
  %16 = or disjoint i64 %15, %11                  ; 2 uses
  %17 = lshr i64 %14, 8
  %18 = or disjoint i64 %17, %14                  ; 2 uses
  %19 = lshr i64 %16, 16
  %20 = and i64 %19, 4294901760
  %.masked.i = and i64 %16, 65535
  %21 = or disjoint i64 %20, %.masked.i
  %22 = lshr i64 %18, 16
  %23 = and i64 %22, 4294901760
  %.masked28.i = and i64 %18, 65535
  %24 = or disjoint i64 %23, %.masked28.i
  %25 = fsub double %3, %2
  %26 = fsub double %1, %0
  %27 = zext nneg i8 %5 to i64
  %28 = shl nuw i64 1, %27
  %29 = uitofp i64 %28 to double
  %30 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %31 = trunc nuw i64 %21 to i32                  ; 2 uses
  %i.u = add i32 %31, 1
  %32 = uitofp i32 %i.u to double
  %i.v = uitofp i32 %31 to double
  %33 = insertelement <2 x double> poison, double %i.v, i64 0
  %34 = insertelement <2 x double> %33, double %32, i64 1
  %35 = insertelement <2 x double> poison, double %29, i64 0
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %37 = fdiv <2 x double> %34, %36
  %38 = insertelement <2 x double> poison, double %25, i64 0
  %39 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> zeroinitializer
  %40 = insertelement <2 x double> poison, double %2, i64 0
  %41 = shufflevector <2 x double> %40, <2 x double> poison, <2 x i32> zeroinitializer
  %42 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %37, <2 x double> %39, <2 x double> %41)
  store <2 x double> %42, ptr %30, align 8, !tbaa !13
  %43 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %44 = trunc nuw i64 %24 to i32                  ; 2 uses
  %45 = add i32 %44, 1
  %46 = uitofp i32 %45 to double
  %47 = uitofp i32 %44 to double
  %48 = insertelement <2 x double> poison, double %47, i64 0
  %49 = insertelement <2 x double> %48, double %46, i64 1
  %50 = fdiv <2 x double> %49, %36
  %i.w = insertelement <2 x double> poison, double %26, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %51 = insertelement <2 x double> poison, double %0, i64 0
  %52 = shufflevector <2 x double> %51, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %50, <2 x double> %i.x, <2 x double> %52)
  store <2 x double> %i.y, ptr %43, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
end_hunk_0
begin_hunk_1_@geohashDecode:bb.a
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @geohashDecodeType(i64 %0, i8 %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
end_hunk_1
begin_hunk_2_@geohashDecodeAreaToLongLat:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !26
  %i.e = fadd double %i.b, %i.d
  %i.f = fmul double %i.e, 5.000000e-01           ; 2 uses
  %i.g = fcmp ogt double %i.f, 1.800000e+02
end_hunk_2
begin_hunk_3_@geohashDecodeAreaToLongLat:bb.a
  %storemerge16 = select i1 %i.h, double -1.800000e+02, double %storemerge
  store double %storemerge16, ptr %1, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load double, ptr %i.k, align 8, !tbaa !28
  %i.m = fadd double %i.j, %i.l
  %i.n = fmul double %i.m, 5.000000e-01           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_3
begin_hunk_4_@llvm.fmuladd.v2f64
!21 = !{!19, !11, i64 8}
!22 = !{!20, !20, i64 0}
!23 = !{!11, !11, i64 0}
!24 = !{!25, !14, i64 16}
!25 = !{!"", !19, i64 0, !16, i64 16, !16, i64 32}
!26 = !{!25, !14, i64 24}
!27 = !{!25, !14, i64 32}
!28 = !{!25, !14, i64 40}
!29 = !{i64 0, i64 8, !22, i64 8, i64 1, !23}
end_hunk_4
