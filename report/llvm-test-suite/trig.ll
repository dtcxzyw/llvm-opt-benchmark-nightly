inline.NumInlined: 9
begin_hunk_0_@MultMatrixHPoint:bb.a
  %i.e = load <2 x double>, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !12
  %3 = load <8 x double>, ptr %1, align 8, !tbaa !8 ; 4 uses
  %4 = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %5 = shufflevector <8 x double> %3, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %6 = fmul <2 x double> %4, %5
  %7 = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %8 = shufflevector <8 x double> %3, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %8, <2 x double> %6)
  %10 = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = shufflevector <8 x double> %3, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %12 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %11, <2 x double> %9)
  %13 = insertelement <2 x double> poison, double %i.g, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %15 = shufflevector <8 x double> %3, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %15, <2 x double> %12)
  store <2 x double> %16, ptr %0, align 8, !tbaa !8
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load <8 x double>, ptr %17, align 8, !tbaa !8 ; 4 uses
  %20 = shufflevector <8 x double> %19, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %21 = fmul <2 x double> %4, %20
  %22 = shufflevector <8 x double> %19, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %22, <2 x double> %21)
  %24 = shufflevector <8 x double> %19, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %25 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %24, <2 x double> %23)
  %26 = shufflevector <8 x double> %19, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %27 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %26, <2 x double> %25)
  store <2 x double> %27, ptr %18, align 8, !tbaa !8
  ret void
}

end_hunk_0
begin_hunk_1_@printf
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
