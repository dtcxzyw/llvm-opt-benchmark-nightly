inline.NumInlined: 9
begin_hunk_0_@MultMatrixHPoint:bb.a
  %i.e = load <2 x double>, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !12
  %3 = load <16 x double>, ptr %1, align 8, !tbaa !8 ; 4 uses
  %4 = shufflevector <2 x double> %i.c, <2 x double> poison, <4 x i32> zeroinitializer
  %5 = shufflevector <16 x double> %3, <16 x double> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %6 = fmul <4 x double> %4, %5
  %7 = shufflevector <2 x double> %i.a, <2 x double> poison, <4 x i32> zeroinitializer
  %8 = shufflevector <16 x double> %3, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %9 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %7, <4 x double> %8, <4 x double> %6)
  %10 = shufflevector <2 x double> %i.e, <2 x double> poison, <4 x i32> zeroinitializer
  %11 = shufflevector <16 x double> %3, <16 x double> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %12 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %10, <4 x double> %11, <4 x double> %9)
  %13 = insertelement <4 x double> poison, double %i.g, i64 0
  %14 = shufflevector <4 x double> %13, <4 x double> poison, <4 x i32> zeroinitializer
  %15 = shufflevector <16 x double> %3, <16 x double> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %16 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %14, <4 x double> %15, <4 x double> %12)
  store <4 x double> %16, ptr %0, align 8, !tbaa !8
  ret void
}

end_hunk_0
begin_hunk_1_@printf
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
