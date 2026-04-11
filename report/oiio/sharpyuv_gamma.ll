inline.NumInlined: 60
inline.NumDeleted: 29
begin_hunk_0_@SharpYuvGammaToLinear:bb.a
  %i.cj = fpext float %i.ab to double
  %i.ck = tail call double @pow(double noundef %i.cj, double noundef 0x3F89F9B580000000) #4, !tbaa !3
  %i.cl = fptrunc double %i.ck to float           ; 2 uses
  %i.cm = fadd float %i.cl, 0xBFEAC00000000000    ; 2 uses
  %3 = fcmp ogt float %i.cm, 0.000000e+00
  %4 = select i1 %3, float %i.cm, float 0.000000e+00
  %5 = tail call float @llvm.fmuladd.f32(float %i.cl, float -1.868750e+01, float 0x4032DA0000000000) ; 2 uses
  %6 = fcmp ogt float %5, 0x3810000000000000
  %7 = select i1 %6, float %5, float 0x3810000000000000
  %i.cn = fdiv float %4, %7
  %i.co = fpext float %i.cn to double
  %i.cp = tail call double @pow(double noundef %i.co, double noundef 0x4019172160000000) #4, !tbaa !3
  %i.cq = fptrunc double %i.cp to float
end_hunk_0
begin_hunk_1_@SharpYuvLinearToGamma:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.ce = fpext float %i.aa to double
  %i.cf = tail call double @pow(double noundef %i.ce, double noundef 0x3FC4680000000000) #4, !tbaa !3
  %i.cg = fptrunc double %i.cf to float           ; 2 uses
  %3 = tail call float @llvm.fmuladd.f32(float %i.cg, float 0x4032DA0000000000, float 0x3FEAC00000000000)
  %4 = tail call float @llvm.fmuladd.f32(float %i.cg, float 1.868750e+01, float 1.000000e+00)
  %i.ch = fdiv float %3, %4
  %i.ci = fpext float %i.ch to double
  %i.cj = tail call double @pow(double noundef %i.ci, double noundef 0x4053B60000000000) #4, !tbaa !3
  %i.ck = fptrunc double %i.cj to float
end_hunk_1
begin_hunk_2_@llvm.ceil.f32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #2

attributes #0 = { nofree norecurse nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_2
