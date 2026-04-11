inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@_statistics__normal_dist_inv_cdf:bb.a
  br i1 %i.aw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = fadd double %i.av, -1.600000e+00        ; 14 uses
  %3 = tail call double @llvm.fmuladd.f64(double %i.ax, double 0x3F49615AC0B7ACE9, double 0x3F9744EB6C45EC67)
  %4 = tail call double @llvm.fmuladd.f64(double %3, double %i.ax, double 0x3FCEF2ABB9B85C37)
  %5 = tail call double @llvm.fmuladd.f64(double %4, double %i.ax, double 0x3FF453CC085375B2)
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %i.ax, double 0x400D2ECB1A3D02C4)
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %i.ax, double 0x401713F71462256A)
  %8 = tail call double @llvm.fmuladd.f64(double %7, double %i.ax, double 0x4012857748CAB19B)
  %9 = tail call double @llvm.fmuladd.f64(double %8, double %i.ax, double 0x3FF6C665FDE9526A)
  %10 = tail call double @llvm.fmuladd.f64(double %i.ax, double 0x3E120D3F686439E4, double 0x3F41F18CBFDF2728)
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %i.ax, double 0x3F8F207A7EAB17BF)
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %i.ax, double 0x3FC2F5123394F040)
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %i.ax, double 0x3FE61292F23385C9)
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %i.ax, double 0x3FFAD278E6526633)
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %i.ax, double 0x40006CEFBB46A449)
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %i.ax, double 1.000000e+00)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ay = fadd double %i.av, -5.000000e+00        ; 14 uses
  %17 = tail call double @llvm.fmuladd.f64(double %i.ay, double 0x3E8AFB74D693BF93, double 0x3EFC6EC6CC59E02A)
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %i.ay, double 0x3F545C1908425345)
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %i.ay, double 0x3F9B2B41193B4EE7)
  %20 = tail call double @llvm.fmuladd.f64(double %19, double %i.ay, double 0x3FD2FAD9315255CF)
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %i.ay, double 0x3FFC8EA6461FA445)
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %i.ay, double 0x4015DAEA6E875003)
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %i.ay, double 0x401AA1B1C13EE526)
  %24 = tail call double @llvm.fmuladd.f64(double %i.ay, double 0x3CE269BFF1F8C190, double 0x3E831446F740B9E0)
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %i.ay, double 0x3EF35C2C496374BF)
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %i.ay, double 0x3F49C8BC979DC5D7)
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %i.ay, double 0x3F8E76F93215462A)
  %28 = tail call double @llvm.fmuladd.f64(double %27, double %i.ay, double 0x3FC186EB183443FB)
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %i.ay, double 0x3FE331D34FC7D77F)
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %i.ay, double 1.000000e+00)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.077.i = phi double [ %9, %bb.o ], [ %23, %bb.p ]
  %.076.i = phi double [ %16, %bb.o ], [ %30, %bb.p ] ; 2 uses
  %i.az = fcmp oeq double %.076.i, 0.000000e+00
  br i1 %i.az, label %_statistics__normal_dist_inv_cdf_impl.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = fdiv double %.077.i, %.076.i            ; 2 uses
  %i.bb = fcmp olt double %i.s, 0.000000e+00
  %i.bc = fneg double %i.ba
  %.0.i = select i1 %i.bb, double %i.bc, double %i.ba
end_hunk_0
begin_hunk_1_@PyErr_SetString
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_1
