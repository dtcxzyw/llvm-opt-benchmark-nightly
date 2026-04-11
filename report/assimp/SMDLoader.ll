inline.NumInlined: 1538
inline.NumDeleted: 693
begin_hunk_0_@_ZN6Assimp11SMDImporter10ParseFloatEPKcPS2_S2_Rf:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE18FromEulerAnglesXYZEfff(ptr noundef nonnull align 4 dereferenceable(64) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %1) #28 ; 5 uses
  %i.b = tail call noundef float @sinf(float noundef %1) #28 ; 5 uses
  %i.c = tail call noundef float @cosf(float noundef %2) #28 ; 4 uses
  %i.d = tail call noundef float @sinf(float noundef %2) #28 ; 3 uses
  %i.e = tail call noundef float @cosf(float noundef %3) #28 ; 4 uses
  %i.f = tail call noundef float @sinf(float noundef %3) #28 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN12aiMatrix4x4tIfE18FromEulerAnglesXYZEfff:bb.a
  store float %i.g, ptr %0, align 4
  %i.h = fmul float %i.d, %i.e                    ; 2 uses
  %i.i = fneg float %i.a
  %4 = fmul float %i.f, %i.i
  %5 = tail call float @llvm.fmuladd.f32(float %i.h, float %i.b, float %4)
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %5, ptr %6, align 4
  %7 = fmul float %i.a, %i.h
  %8 = tail call float @llvm.fmuladd.f32(float %i.f, float %i.b, float %7)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %8, ptr %9, align 4
  %i.j = fmul float %i.c, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.j, ptr %i.k, align 4
  %i.l = fmul float %i.d, %i.f                    ; 2 uses
  %10 = fmul float %i.b, %i.l
  %11 = tail call float @llvm.fmuladd.f32(float %i.e, float %i.a, float %10)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %11, ptr %12, align 4
  %13 = fneg float %i.b
  %14 = fmul float %i.e, %13
  %15 = tail call float @llvm.fmuladd.f32(float %i.l, float %i.a, float %14)
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %15, ptr %16, align 4
  %i.m = fneg float %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.m, ptr %i.n, align 4
  %17 = fmul float %i.b, %i.c
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %17, ptr %18, align 4
  %19 = fmul float %i.a, %i.c
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %19, ptr %20, align 4
  ret ptr %0
}

end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v2i32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
end_hunk_2
