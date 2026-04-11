inline.NumInlined: 967
inline.NumDeleted: 447
begin_hunk_0_@"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY7ST_208421GenerateLinearToPQOpsERNS1_10OpRcPtrVecEE3$_0E9_M_invokeERKSt9_Any_dataOd":bb.a
  %.val = load double, ptr %1, align 8, !tbaa !14 ; 2 uses
  %i.a = fmul double %.val, 1.000000e-02
  %i.b = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.c = tail call double @pow(double noundef %i.b, double noundef 0x3FC4640000000000) #21, !tbaa !3 ; 2 uses
  %2 = tail call double @llvm.fmuladd.f64(double %i.c, double 0x4032DA0000000000, double 0x3FEAC00000000000)
  %3 = tail call double @llvm.fmuladd.f64(double %i.c, double 1.868750e+01, double 1.000000e+00)
  %i.d = fdiv double %2, %3                       ; 2 uses
  %i.e = fcmp ogt double %i.d, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.e, double %i.d, double 0.000000e+00
  %i.f = tail call double @pow(double noundef %.sroa.speculated.i.i.i, double noundef 0x4053B60000000000) #21, !tbaa !3
end_hunk_0
begin_hunk_1_@llvm.sqrt.f64
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
