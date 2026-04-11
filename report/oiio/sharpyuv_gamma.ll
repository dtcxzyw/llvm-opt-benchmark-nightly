inline.NumInlined: 60
inline.NumDeleted: 29
begin_hunk_0_@SharpYuvGammaToLinear:bb.a
  %i.cj = fpext float %i.ab to double
  %i.ck = tail call double @pow(double noundef %i.cj, double noundef 0x3F89F9B580000000) #4, !tbaa !3
  %i.cl = fptrunc double %i.ck to float           ; 2 uses
  %i.cm = fadd float %i.cl, 0xBFEAC00000000000
  %3 = tail call float @llvm.fmuladd.f32(float %i.cl, float -1.868750e+01, float 0x4032DA0000000000)
  %4 = insertelement <2 x float> poison, float %i.cm, i64 0
  %5 = insertelement <2 x float> %4, float %3, i64 1 ; 2 uses
  %6 = fcmp ogt <2 x float> %5, <float 0.000000e+00, float 0x3810000000000000>
  %7 = select <2 x i1> %6, <2 x float> %5, <2 x float> <float 0.000000e+00, float 0x3810000000000000> ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0
  %9 = extractelement <2 x float> %7, i64 1
  %i.cn = fdiv float %8, %9
  %i.co = fpext float %i.cn to double
  %i.cp = tail call double @pow(double noundef %i.co, double noundef 0x4019172160000000) #4, !tbaa !3
  %i.cq = fptrunc double %i.cp to float
end_hunk_0
begin_hunk_1_@SharpYuvLinearToGamma:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.ce = fpext float %i.aa to double
  %i.cf = tail call double @pow(double noundef %i.ce, double noundef 0x3FC4680000000000) #4, !tbaa !3
  %i.cg = fptrunc double %i.cf to float
  %3 = insertelement <2 x float> poison, float %i.cg, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> <float 0x4032DA0000000000, float 1.868750e+01>, <2 x float> <float 0x3FEAC00000000000, float 1.000000e+00>) ; 2 uses
  %6 = extractelement <2 x float> %5, i64 0
  %7 = extractelement <2 x float> %5, i64 1
  %i.ch = fdiv float %6, %7
  %i.ci = fpext float %i.ch to double
  %i.cj = tail call double @pow(double noundef %i.ci, double noundef 0x4053B60000000000) #4, !tbaa !3
  %i.ck = fptrunc double %i.cj to float
end_hunk_1
begin_hunk_2_@llvm.ceil.f32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

attributes #0 = { nofree norecurse nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_2
