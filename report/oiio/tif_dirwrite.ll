inline.NumInlined: 125
inline.NumDeleted: 53
begin_hunk_0_@DoubleToRational:bb.a
  br label %bb.q

bb.q:                                             ; preds = %ToRationalEuclideanGCD.exit62, %bb.p
  %3 = insertelement <2 x i64> poison, i64 %.sroa.5.3.lcssa.i, i64 0
  %4 = insertelement <2 x i64> %3, i64 %.sroa.5.3.lcssa.i51, i64 1
  %5 = uitofp <2 x i64> %4 to <2 x double>
  %6 = insertelement <2 x i64> poison, i64 %.sroa.7.3.lcssa.i, i64 0
  %7 = insertelement <2 x i64> %6, i64 %.sroa.7.3.lcssa.i52, i64 1
  %8 = uitofp <2 x i64> %7 to <2 x double>
  %9 = fdiv <2 x double> %5, %8
  %10 = insertelement <2 x double> poison, double %0, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = fsub <2 x double> %11, %9
  %13 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %12) ; 2 uses
  %14 = extractelement <2 x double> %13, i64 0
  %15 = extractelement <2 x double> %13, i64 1
  %i.bo = fcmp olt double %14, %15                ; 2 uses
  %. = select i1 %i.bo, i64 %.sroa.5.3.lcssa.i, i64 %.sroa.5.3.lcssa.i51
  %storemerge30 = trunc i64 %. to i32
  store i32 %storemerge30, ptr %1, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@DoubleToRational:bb.a

declare void @TIFFErrorExt(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare float @_TIFFClampDoubleToFloat(double noundef) local_unnamed_addr #1

declare i32 @_TIFFmemcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1
end_hunk_1
begin_hunk_2_@DoubleToSrational:bb.a
  %i.a = fcmp olt double %0, 0.000000e+00         ; 2 uses
  %i.b = fneg double %0
  %.032 = select i1 %i.a, i32 -1, i32 1           ; 3 uses
  %.0 = select i1 %i.a, double %i.b, double %0    ; 15 uses
  %i.c = fcmp ogt double %.0, 0x41DFFFFFFFC00000
  br i1 %i.c, label %bb.b, label %bb.c

end_hunk_2
begin_hunk_3_@DoubleToSrational:bb.a
  br label %bb.o

bb.o:                                             ; preds = %ToRationalEuclideanGCD.exit66, %bb.n
  %3 = insertelement <2 x i64> poison, i64 %.sroa.5.3.lcssa.i, i64 0
  %4 = insertelement <2 x i64> %3, i64 %.sroa.5.3.lcssa.i55, i64 1
  %5 = uitofp <2 x i64> %4 to <2 x double>
  %6 = insertelement <2 x i64> poison, i64 %.sroa.7.3.lcssa.i, i64 0
  %7 = insertelement <2 x i64> %6, i64 %.sroa.7.3.lcssa.i56, i64 1
  %8 = uitofp <2 x i64> %7 to <2 x double>
  %9 = fdiv <2 x double> %5, %8
  %10 = insertelement <2 x double> poison, double %.0, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = fsub <2 x double> %11, %9
  %13 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %12) ; 2 uses
  %14 = extractelement <2 x double> %13, i64 0
  %15 = extractelement <2 x double> %13, i64 1
  %i.bu = fcmp olt double %14, %15                ; 2 uses
  %. = select i1 %i.bu, i64 %.sroa.5.3.lcssa.i, i64 %.sroa.5.3.lcssa.i55
  %.pn = trunc i64 %. to i32
  %storemerge34 = mul i32 %.032, %.pn
end_hunk_3
begin_hunk_4_@llvm.memset.p0.i64
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_4
