inline.NumInlined: 3
begin_hunk_0_@planetpv:bb.a
  %i.qg = tail call double @llvm.fmuladd.f64(double %i.qf, double %i.pl, double %i.po)
  %i.qh = fmul double %i.ow, %i.qg
  %i.qi = tail call double @llvm.fmuladd.f64(double %i.ps, double %i.pj, double %i.pn)
  %i.qj = fmul double %i.ow, %i.qi
  %i.qk = fmul double %i.pw, %i.qf
  %i.ql = fmul double %i.ow, %i.qk
  store double %i.qh, ptr %2, align 8, !tbaa !8
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = insertelement <2 x double> poison, double %i.ql, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x double> %5, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %7 = insertelement <2 x double> poison, double %i.qj, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %6)
  store <2 x double> %9, ptr %3, align 8, !tbaa !8
  %i.qm = tail call double @llvm.fmuladd.f64(double %i.qd, double %i.pl, double -1.000000e+00)
  %i.qn = fmul double %i.qe, %i.qc
  %i.qo = tail call double @llvm.fmuladd.f64(double %i.qm, double %i.pz, double %i.qn)
end_hunk_0
begin_hunk_1_@planetpv:bb.a
  %i.qs = fneg double %i.pz
  %i.qt = fmul double %i.qe, %i.qs
  %i.qu = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.qc, double %i.qt)
  %i.qv = fmul double %i.pf, %i.qu
  %i.qw = fmul double %i.pw, 2.000000e+00
  %i.qx = fmul double %i.pj, %i.qc
  %i.qy = tail call double @llvm.fmuladd.f64(double %i.pl, double %i.pz, double %i.qx)
  %i.qz = fmul double %i.qw, %i.qy
  %i.ra = fmul double %i.pf, %i.qz
  %i.rb = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.qp, ptr %i.rb, align 8, !tbaa !8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %11 = insertelement <2 x double> poison, double %i.ra, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %12, <double 0xBFD9752E50F4B399, double 0x3FED5C0357681EF3>
  %14 = insertelement <2 x double> poison, double %i.qv, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> <double 0x3FED5C0357681EF3, double 0x3FD9752E50F4B399>, <2 x double> %13)
  store <2 x double> %16, ptr %10, align 8, !tbaa !8
  ret void
}

end_hunk_1
begin_hunk_2_@fflush
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
