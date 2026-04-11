inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@_statistics__normal_dist_inv_cdf:bb.a
  br i1 %i.aw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = fadd double %i.av, -1.600000e+00
  %3 = insertelement <2 x double> poison, double %i.ax, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %5 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> <double 0x3F49615AC0B7ACE9, double 0x3E120D3F686439E4>, <2 x double> <double 0x3F9744EB6C45EC67, double 0x3F41F18CBFDF2728>)
  %6 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %4, <2 x double> <double 0x3FCEF2ABB9B85C37, double 0x3F8F207A7EAB17BF>)
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %4, <2 x double> <double 0x3FF453CC085375B2, double 0x3FC2F5123394F040>)
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %4, <2 x double> <double 0x400D2ECB1A3D02C4, double 0x3FE61292F23385C9>)
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %4, <2 x double> <double 0x401713F71462256A, double 0x3FFAD278E6526633>)
  %10 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %4, <2 x double> <double 0x4012857748CAB19B, double 0x40006CEFBB46A449>)
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %4, <2 x double> <double 0x3FF6C665FDE9526A, double 1.000000e+00>)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ay = fadd double %i.av, -5.000000e+00
  %12 = insertelement <2 x double> poison, double %i.ay, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> <double 0x3E8AFB74D693BF93, double 0x3CE269BFF1F8C190>, <2 x double> <double 0x3EFC6EC6CC59E02A, double 0x3E831446F740B9E0>)
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %13, <2 x double> <double 0x3F545C1908425345, double 0x3EF35C2C496374BF>)
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %13, <2 x double> <double 0x3F9B2B41193B4EE7, double 0x3F49C8BC979DC5D7>)
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %13, <2 x double> <double 0x3FD2FAD9315255CF, double 0x3F8E76F93215462A>)
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %13, <2 x double> <double 0x3FFC8EA6461FA445, double 0x3FC186EB183443FB>)
  %19 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %13, <2 x double> <double 0x4015DAEA6E875003, double 0x3FE331D34FC7D77F>)
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> %13, <2 x double> <double 0x401AA1B1C13EE526, double 1.000000e+00>)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %21 = phi <2 x double> [ %11, %bb.o ], [ %20, %bb.p ] ; 2 uses
  %22 = extractelement <2 x double> %21, i64 1    ; 2 uses
  %i.az = fcmp oeq double %22, 0.000000e+00
  br i1 %i.az, label %_statistics__normal_dist_inv_cdf_impl.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %23 = extractelement <2 x double> %21, i64 0
  %i.ba = fdiv double %23, %22                    ; 2 uses
  %i.bb = fcmp olt double %i.s, 0.000000e+00
  %i.bc = fneg double %i.ba
  %.0.i = select i1 %i.bb, double %i.bc, double %i.ba
end_hunk_0
begin_hunk_1_@PyErr_SetString
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_1
