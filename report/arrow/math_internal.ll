inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@_ZN5arrow8internal9NormalPPFEd:bb.a
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = fadd double %i.ac, -1.600000e+00        ; 14 uses
  %1 = tail call double @llvm.fmuladd.f64(double %i.ae, double 0x3F49615AC0B7ACE9, double 0x3F9744EB6C45EC67)
  %2 = tail call double @llvm.fmuladd.f64(double %1, double %i.ae, double 0x3FCEF2ABB9B85C37)
  %3 = tail call double @llvm.fmuladd.f64(double %2, double %i.ae, double 0x3FF453CC085375B2)
  %4 = tail call double @llvm.fmuladd.f64(double %3, double %i.ae, double 0x400D2ECB1A3D02C4)
  %5 = tail call double @llvm.fmuladd.f64(double %4, double %i.ae, double 0x401713F71462256A)
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %i.ae, double 0x4012857748CAB19B)
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %i.ae, double 0x3FF6C665FDE9526A)
  %8 = tail call double @llvm.fmuladd.f64(double %i.ae, double 0x3E120D3F686439E4, double 0x3F41F18CBFDF2728)
  %9 = tail call double @llvm.fmuladd.f64(double %8, double %i.ae, double 0x3F8F207A7EAB17BF)
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %i.ae, double 0x3FC2F5123394F040)
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %i.ae, double 0x3FE61292F23385C9)
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %i.ae, double 0x3FFAD278E6526633)
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %i.ae, double 0x40006CEFBB46A449)
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %i.ae, double 1.000000e+00)
  %15 = fdiv double %7, %14
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = fadd double %i.ac, -5.000000e+00        ; 14 uses
  %16 = tail call double @llvm.fmuladd.f64(double %i.af, double 0x3E8AFB74D693BF93, double 0x3EFC6EC6CC59E02A)
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %i.af, double 0x3F545C1908425345)
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %i.af, double 0x3F9B2B41193B4EE7)
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %i.af, double 0x3FD2FAD9315255CF)
  %20 = tail call double @llvm.fmuladd.f64(double %19, double %i.af, double 0x3FFC8EA6461FA445)
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %i.af, double 0x4015DAEA6E875003)
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %i.af, double 0x401AA1B1C13EE526)
  %23 = tail call double @llvm.fmuladd.f64(double %i.af, double 0x3CE269BFF1F8C190, double 0x3E831446F740B9E0)
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %i.af, double 0x3EF35C2C496374BF)
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %i.af, double 0x3F49C8BC979DC5D7)
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %i.af, double 0x3F8E76F93215462A)
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %i.af, double 0x3FC186EB183443FB)
  %28 = tail call double @llvm.fmuladd.f64(double %27, double %i.af, double 0x3FE331D34FC7D77F)
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %i.af, double 1.000000e+00)
  %30 = fdiv double %22, %29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi double [ %15, %bb.f ], [ %30, %bb.g ]
  %i.ag = tail call double @llvm.copysign.f64(double %.0, double %i.c)
  br label %bb.i

end_hunk_0
begin_hunk_1_@llvm.copysign.f64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
end_hunk_1
