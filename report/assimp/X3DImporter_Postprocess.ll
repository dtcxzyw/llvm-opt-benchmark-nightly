begin_hunk_0
; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11X3DImporter40PostprocessHelper_Matrix_GlobalToCurrentEv(ptr dead_on_unwind noalias writable writeonly sret(%class.aiMatrix4x4t) align 4 captures(none) initializes((0, 64)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.a, align 8
end_hunk_0
begin_hunk_1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4
end_hunk_1
begin_hunk_2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.d
  %.09 = phi ptr [ %i.v, %bb.d ], [ %i.j, %bb.a ] ; 3 uses
end_hunk_2
begin_hunk_3
  br i1 %.not12, label %.loopexit, label %.preheader, !llvm.loop !3

.loopexit:                                        ; preds = %bb.d
  %.pre = load ptr, ptr %2, align 8, !noalias !5  ; 3 uses
  %.not5367 = icmp eq ptr %2, %.pre
  br i1 %.not5367, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %.sroa.13.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.21.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.29.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e
  store <4 x float> %16, ptr %0, align 4
  store <4 x float> %24, ptr %.sroa.13.0..sroa_idx27, align 4
  store <4 x float> %32, ptr %.sroa.21.0..sroa_idx35, align 4
  store <4 x float> %i.af, ptr %.sroa.29.0..sroa_idx43, align 4
  br label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %._crit_edge, %.lr.ph.i.i.a
  %.09.i.i = phi ptr [ %3, %.lr.ph.i.i.a ], [ %.pre, %._crit_edge ] ; 2 uses
  %3 = load ptr, ptr %.09.i.i, align 8            ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 80) #21
  %.not.i.i = icmp eq ptr %3, %2
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i.a, !llvm.loop !8

_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge: ; preds = %bb.a, %.loopexit
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %0, align 4
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 4
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.f, align 4
  store float 1.000000e+00, ptr %i.h, align 4
  br label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit

_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i.a, %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.052.069 = phi ptr [ %2, %.lr.ph ], [ %i.x, %bb.e ]
  %4 = phi <16 x float> [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %.lr.ph ], [ %41, %bb.e ] ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.052.069, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %5 = load <4 x float>, ptr %i.y, align 4        ; 4 uses
  %6 = load <4 x float>, ptr %i.z, align 4        ; 4 uses
  %7 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %8 = fmul <4 x float> %7, %6
  %9 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> zeroinitializer
  %10 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %9, <4 x float> %8)
  %11 = load <4 x float>, ptr %i.aa, align 4      ; 4 uses
  %12 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %13 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %12, <4 x float> %10)
  %14 = load <4 x float>, ptr %i.ab, align 4      ; 4 uses
  %15 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %16 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %15, <4 x float> %13) ; 2 uses
  %17 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %18 = fmul <4 x float> %17, %6
  %19 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %20 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %19, <4 x float> %18)
  %21 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %22 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %21, <4 x float> %20)
  %23 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %24 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %23, <4 x float> %22) ; 2 uses
  %25 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %26 = fmul <4 x float> %25, %6
  %27 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %28 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %27, <4 x float> %26)
  %29 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %30 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %29, <4 x float> %28)
  %31 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %32 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %31, <4 x float> %30) ; 2 uses
  %33 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %i.ac = fmul <4 x float> %33, %6
  %34 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %i.ad = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %34, <4 x float> %i.ac)
  %35 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %i.ae = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %35, <4 x float> %i.ad)
  %36 = shufflevector <16 x float> %4, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %i.af = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %36, <4 x float> %i.ae) ; 2 uses
  %.not53 = icmp eq ptr %i.x, %.pre
  %37 = shufflevector <4 x float> %16, <4 x float> %24, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %38 = shufflevector <4 x float> %32, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %39 = shufflevector <16 x float> %37, <16 x float> %38, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %40 = shufflevector <4 x float> %i.af, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %41 = shufflevector <16 x float> %39, <16 x float> %40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  br i1 %.not53, label %._crit_edge, label %bb.e, !llvm.loop !9

.lr.ph.i.i16:                                     ; preds = %bb.c, %.lr.ph.i.i16
end_hunk_3
begin_hunk_4
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_4
