inline.NumInlined: 1538
inline.NumDeleted: 693
begin_hunk_0_@_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE18FromEulerAnglesXYZEfff(ptr noundef nonnull align 4 dereferenceable(64) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %1) #28 ; 4 uses
  %i.b = tail call noundef float @sinf(float noundef %1) #28 ; 2 uses
  %i.c = tail call noundef float @cosf(float noundef %2) #28 ; 3 uses
  %i.d = tail call noundef float @sinf(float noundef %2) #28 ; 3 uses
  %i.e = tail call noundef float @cosf(float noundef %3) #28 ; 4 uses
  %i.f = tail call noundef float @sinf(float noundef %3) #28 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN12aiMatrix4x4tIfE18FromEulerAnglesXYZEfff:bb.a
  store float %i.g, ptr %0, align 4
  %i.h = fmul float %i.d, %i.e                    ; 2 uses
  %i.i = fneg float %i.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %5 = insertelement <2 x float> poison, float %i.f, i64 0
  %6 = insertelement <2 x float> %5, float %i.a, i64 1
  %7 = insertelement <2 x float> poison, float %i.i, i64 0
  %8 = insertelement <2 x float> %7, float %i.h, i64 1
  %9 = fmul <2 x float> %6, %8
  %10 = insertelement <2 x float> poison, float %i.h, i64 0
  %11 = insertelement <2 x float> %10, float %i.f, i64 1
  %12 = insertelement <2 x float> poison, float %i.b, i64 0 ; 3 uses
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %13, <2 x float> %9)
  store <2 x float> %14, ptr %4, align 4
  %i.j = fmul float %i.c, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.j, ptr %i.k, align 4
  %i.l = fmul float %i.d, %i.f                    ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %16 = fneg float %i.b
  %17 = insertelement <2 x float> %12, float %i.e, i64 1
  %18 = insertelement <2 x float> poison, float %i.l, i64 0
  %19 = insertelement <2 x float> %18, float %16, i64 1
  %20 = fmul <2 x float> %17, %19
  %21 = insertelement <2 x float> poison, float %i.e, i64 0
  %22 = insertelement <2 x float> %21, float %i.l, i64 1
  %23 = insertelement <2 x float> poison, float %i.a, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %24, <2 x float> %20)
  store <2 x float> %25, ptr %15, align 4
  %i.m = fneg float %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.m, ptr %i.n, align 4
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %27 = insertelement <2 x float> %12, float %i.a, i64 1
  %28 = insertelement <2 x float> poison, float %i.c, i64 0
  %29 = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> zeroinitializer
  %30 = fmul <2 x float> %27, %29
  store <2 x float> %30, ptr %26, align 4
  ret ptr %0
}

end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v2i32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
end_hunk_2
