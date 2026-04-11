inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@_ZN5arrow8internal9NormalPPFEd:bb.a
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = fadd double %i.ac, -1.600000e+00
  %1 = insertelement <2 x double> poison, double %i.ae, i64 0
  %2 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %3 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> <double 0x3F49615AC0B7ACE9, double 0x3E120D3F686439E4>, <2 x double> <double 0x3F9744EB6C45EC67, double 0x3F41F18CBFDF2728>)
  %4 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> %2, <2 x double> <double 0x3FCEF2ABB9B85C37, double 0x3F8F207A7EAB17BF>)
  %5 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %2, <2 x double> <double 0x3FF453CC085375B2, double 0x3FC2F5123394F040>)
  %6 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %2, <2 x double> <double 0x400D2ECB1A3D02C4, double 0x3FE61292F23385C9>)
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %2, <2 x double> <double 0x401713F71462256A, double 0x3FFAD278E6526633>)
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %2, <2 x double> <double 0x4012857748CAB19B, double 0x40006CEFBB46A449>)
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %2, <2 x double> <double 0x3FF6C665FDE9526A, double 1.000000e+00>) ; 2 uses
  %shift = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv <2 x double> %9, %shift
  %10 = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = fadd double %i.ac, -5.000000e+00
  %11 = insertelement <2 x double> poison, double %i.af, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> <double 0x3E8AFB74D693BF93, double 0x3CE269BFF1F8C190>, <2 x double> <double 0x3EFC6EC6CC59E02A, double 0x3E831446F740B9E0>)
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %12, <2 x double> <double 0x3F545C1908425345, double 0x3EF35C2C496374BF>)
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %12, <2 x double> <double 0x3F9B2B41193B4EE7, double 0x3F49C8BC979DC5D7>)
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %12, <2 x double> <double 0x3FD2FAD9315255CF, double 0x3F8E76F93215462A>)
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %12, <2 x double> <double 0x3FFC8EA6461FA445, double 0x3FC186EB183443FB>)
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %12, <2 x double> <double 0x4015DAEA6E875003, double 0x3FE331D34FC7D77F>)
  %19 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %12, <2 x double> <double 0x401AA1B1C13EE526, double 1.000000e+00>) ; 2 uses
  %shift67 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop68 = fdiv <2 x double> %19, %shift67
  %20 = extractelement <2 x double> %foldExtExtBinop68, i64 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi double [ %10, %bb.f ], [ %20, %bb.g ]
  %i.ag = tail call double @llvm.copysign.f64(double %.0, double %i.c)
  br label %bb.i

end_hunk_0
begin_hunk_1_@llvm.copysign.f64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
end_hunk_1
