begin_hunk_0
; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11X3DImporter40PostprocessHelper_Matrix_GlobalToCurrentEv(ptr dead_on_unwind noalias writable writeonly sret(%class.aiMatrix4x4t) align 4 captures(none) initializes((0, 64)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.a, align 8
end_hunk_0
begin_hunk_1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4
end_hunk_1
begin_hunk_2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.lr.ph.i.i.a, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.d
  %.09 = phi ptr [ %i.v, %bb.d ], [ %i.j, %bb.a ] ; 3 uses
end_hunk_2
begin_hunk_3
  br i1 %.not12, label %.loopexit, label %.preheader, !llvm.loop !3

.loopexit:                                        ; preds = %bb.d
  %.pre = load ptr, ptr %2, align 8, !noalias !5  ; 4 uses
  %.not5367 = icmp eq ptr %2, %.pre
  br i1 %.not5367, label %.lr.ph.i.i.a, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %.sroa.9.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.13.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.19.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.21.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.29.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.33.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e
  store <2 x float> %43, ptr %.sroa.9.0..sroa_idx23, align 4
  %3 = extractelement <4 x float> %i.af, i64 0
  store float %3, ptr %.sroa.13.0..sroa_idx27, align 4
  store <2 x float> %66, ptr %.sroa.19.0..sroa_idx33, align 4
  %4 = extractelement <4 x float> %i.af, i64 1
  store float %4, ptr %.sroa.21.0..sroa_idx35, align 4
  store <2 x float> %82, ptr %.sroa.29.0..sroa_idx43, align 4
  %5 = extractelement <4 x float> %i.af, i64 2
  store float %5, ptr %.sroa.33.0..sroa_idx47, align 4
  %6 = extractelement <4 x float> %i.af, i64 3
  br label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %bb.a, %._crit_edge, %.loopexit
  %.not5367107 = phi i1 [ false, %._crit_edge ], [ true, %.loopexit ], [ true, %bb.a ]
  %7 = phi ptr [ %.pre, %._crit_edge ], [ %.pre, %.loopexit ], [ %2, %bb.a ]
  %.lcssa66 = phi float [ %6, %._crit_edge ], [ 1.000000e+00, %.loopexit ], [ 1.000000e+00, %bb.a ]
  %8 = phi <2 x float> [ %35, %._crit_edge ], [ <float 1.000000e+00, float 0.000000e+00>, %.loopexit ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ]
  %9 = phi <2 x float> [ %74, %._crit_edge ], [ <float 1.000000e+00, float 0.000000e+00>, %.loopexit ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ]
  %10 = phi <2 x float> [ %56, %._crit_edge ], [ <float 1.000000e+00, float 0.000000e+00>, %.loopexit ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ] ; 2 uses
  store <2 x float> %8, ptr %0, align 4
  %11 = extractelement <2 x float> %10, i64 0
  store float %11, ptr %i.d, align 4
  %12 = extractelement <2 x float> %10, i64 1
  store float %12, ptr %i.e, align 4
  store <2 x float> %9, ptr %i.f, align 4
  store float %.lcssa66, ptr %i.h, align 4
  br i1 %.not5367107, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge

_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge: ; preds = %.lr.ph.i.i.a, %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge
  %.09.i.i = phi ptr [ %13, %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge ], [ %7, %.lr.ph.i.i.a ] ; 2 uses
  %13 = load ptr, ptr %.09.i.i, align 8           ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 80) #21
  %.not.i.i = icmp eq ptr %13, %2
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge, !llvm.loop !8

_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge, %.lr.ph.i.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.052.069 = phi ptr [ %2, %.lr.ph ], [ %i.x, %bb.e ]
  %14 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %89, %bb.e ] ; 4 uses
  %15 = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %.lr.ph ], [ %i.af, %bb.e ] ; 7 uses
  %16 = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %95, %bb.e ] ; 4 uses
  %17 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %91, %bb.e ] ; 4 uses
  %18 = phi <4 x float> [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %93, %bb.e ] ; 4 uses
  %19 = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %96, %bb.e ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.052.069, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 10 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %22 = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %23 = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %24 = load <2 x float>, ptr %20, align 4        ; 5 uses
  %25 = load <2 x float>, ptr %21, align 4        ; 5 uses
  %26 = shufflevector <4 x float> %19, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %27 = fmul <2 x float> %26, %25
  %28 = shufflevector <4 x float> %19, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %29 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %28, <2 x float> %27)
  %30 = load <2 x float>, ptr %22, align 4        ; 5 uses
  %31 = shufflevector <4 x float> %19, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %32 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %31, <2 x float> %29)
  %33 = load <2 x float>, ptr %23, align 4        ; 5 uses
  %34 = shufflevector <4 x float> %19, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %35 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %34, <2 x float> %32) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %36 = load <2 x float>, ptr %i.z, align 4       ; 5 uses
  %37 = load <2 x float>, ptr %i.y, align 4       ; 5 uses
  %38 = load <2 x float>, ptr %i.aa, align 4      ; 5 uses
  %39 = load <2 x float>, ptr %i.ab, align 4      ; 5 uses
  %40 = fmul <2 x float> %26, %36
  %41 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> %28, <2 x float> %40)
  %42 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %31, <2 x float> %41)
  %43 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> %34, <2 x float> %42) ; 2 uses
  %44 = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> zeroinitializer
  %45 = shufflevector <2 x float> %25, <2 x float> %36, <2 x i32> <i32 1, i32 2>
  %46 = fmul <2 x float> %44, %45
  %47 = shufflevector <2 x float> %24, <2 x float> %37, <2 x i32> <i32 1, i32 2>
  %48 = shufflevector <4 x float> %15, <4 x float> poison, <2 x i32> zeroinitializer
  %49 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %47, <2 x float> %48, <2 x float> %46)
  %50 = shufflevector <2 x float> %30, <2 x float> %38, <2 x i32> <i32 1, i32 2>
  %51 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %52 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> zeroinitializer
  %53 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %50, <2 x float> %52, <2 x float> %49)
  %54 = shufflevector <2 x float> %33, <2 x float> %39, <2 x i32> <i32 1, i32 2>
  %55 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %56 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %54, <2 x float> %55, <2 x float> %53) ; 3 uses
  %57 = shufflevector <4 x float> %18, <4 x float> %15, <2 x i32> <i32 0, i32 5>
  %58 = shufflevector <2 x float> %36, <2 x float> %25, <2 x i32> <i32 1, i32 2>
  %59 = fmul <2 x float> %57, %58
  %60 = shufflevector <2 x float> %37, <2 x float> %24, <2 x i32> <i32 1, i32 2>
  %61 = shufflevector <4 x float> %15, <4 x float> %17, <2 x i32> <i32 0, i32 5>
  %62 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %61, <2 x float> %59)
  %63 = shufflevector <2 x float> %38, <2 x float> %30, <2 x i32> <i32 1, i32 2>
  %64 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %63, <2 x float> %51, <2 x float> %62)
  %65 = shufflevector <2 x float> %39, <2 x float> %33, <2 x i32> <i32 1, i32 2>
  %66 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %65, <2 x float> %14, <2 x float> %64) ; 3 uses
  %67 = shufflevector <4 x float> %15, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %68 = fmul <2 x float> %67, %36
  %69 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %70 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> %69, <2 x float> %68)
  %71 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %72 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %71, <2 x float> %70)
  %73 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %74 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> %73, <2 x float> %72) ; 3 uses
  %75 = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %76 = fmul <2 x float> %75, %25
  %77 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %78 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %77, <2 x float> %76)
  %79 = shufflevector <4 x float> %15, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %80 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %79, <2 x float> %78)
  %81 = shufflevector <4 x float> %15, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %82 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %81, <2 x float> %80) ; 3 uses
  %83 = shufflevector <2 x float> %25, <2 x float> %36, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ac = fmul <4 x float> %18, %83
  %84 = shufflevector <2 x float> %24, <2 x float> %37, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ad = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %84, <4 x float> %17, <4 x float> %i.ac)
  %85 = shufflevector <2 x float> %30, <2 x float> %38, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ae = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %85, <4 x float> %16, <4 x float> %i.ad)
  %86 = shufflevector <2 x float> %33, <2 x float> %39, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %87 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %88 = shufflevector <4 x float> %87, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 7, i32 7>
  %i.af = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %86, <4 x float> %88, <4 x float> %i.ae) ; 8 uses
  %.not53 = icmp eq ptr %i.x, %.pre
  %89 = shufflevector <2 x float> %66, <2 x float> %74, <2 x i32> <i32 0, i32 3>
  %90 = shufflevector <2 x float> %66, <2 x float> %82, <4 x i32> <i32 poison, i32 1, i32 2, i32 2>
  %91 = shufflevector <4 x float> %i.af, <4 x float> %90, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %92 = shufflevector <2 x float> %56, <2 x float> %82, <4 x i32> <i32 0, i32 poison, i32 3, i32 3>
  %93 = shufflevector <4 x float> %92, <4 x float> %i.af, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %94 = shufflevector <2 x float> %56, <2 x float> %74, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %95 = shufflevector <4 x float> %94, <4 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 6, i32 6>
  %96 = shufflevector <2 x float> %35, <2 x float> %43, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  br i1 %.not53, label %._crit_edge, label %bb.e, !llvm.loop !9

.lr.ph.i.i16:                                     ; preds = %bb.c, %.lr.ph.i.i16
end_hunk_3
begin_hunk_4
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_4
