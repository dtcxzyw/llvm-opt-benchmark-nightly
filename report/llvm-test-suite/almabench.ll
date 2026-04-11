inline.NumInlined: 3
begin_hunk_0_@planetpv:bb.a
  %i.qg = tail call double @llvm.fmuladd.f64(double %i.qf, double %i.pl, double %i.po)
  %i.qh = fmul double %i.ow, %i.qg
  %i.qi = tail call double @llvm.fmuladd.f64(double %i.ps, double %i.pj, double %i.pn)
  %i.qj = fmul double %i.ow, %i.qi                ; 2 uses
  %i.qk = fmul double %i.pw, %i.qf
  %i.ql = fmul double %i.ow, %i.qk                ; 2 uses
  store double %i.qh, ptr %2, align 8, !tbaa !8
  %3 = fmul double %i.ql, 0xBFD9752E50F4B399
  %4 = tail call double @llvm.fmuladd.f64(double %i.qj, double 0x3FED5C0357681EF3, double %3)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %4, ptr %5, align 8, !tbaa !8
  %6 = fmul double %i.ql, 0x3FED5C0357681EF3
  %7 = tail call double @llvm.fmuladd.f64(double %i.qj, double 0x3FD9752E50F4B399, double %6)
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %7, ptr %8, align 8, !tbaa !8
  %i.qm = tail call double @llvm.fmuladd.f64(double %i.qd, double %i.pl, double -1.000000e+00)
  %i.qn = fmul double %i.qe, %i.qc
  %i.qo = tail call double @llvm.fmuladd.f64(double %i.qm, double %i.pz, double %i.qn)
end_hunk_0
begin_hunk_1_@planetpv:bb.a
  %i.qs = fneg double %i.pz
  %i.qt = fmul double %i.qe, %i.qs
  %i.qu = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.qc, double %i.qt)
  %i.qv = fmul double %i.pf, %i.qu                ; 2 uses
  %i.qw = fmul double %i.pw, 2.000000e+00
  %i.qx = fmul double %i.pj, %i.qc
  %i.qy = tail call double @llvm.fmuladd.f64(double %i.pl, double %i.pz, double %i.qx)
  %i.qz = fmul double %i.qw, %i.qy
  %i.ra = fmul double %i.pf, %i.qz                ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.qp, ptr %i.rb, align 8, !tbaa !8
  %9 = fmul double %i.ra, 0xBFD9752E50F4B399
  %10 = tail call double @llvm.fmuladd.f64(double %i.qv, double 0x3FED5C0357681EF3, double %9)
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %10, ptr %11, align 8, !tbaa !8
  %12 = fmul double %i.ra, 0x3FED5C0357681EF3
  %13 = tail call double @llvm.fmuladd.f64(double %i.qv, double 0x3FD9752E50F4B399, double %12)
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %13, ptr %14, align 8, !tbaa !8
  ret void
}

end_hunk_1
begin_hunk_2_@fflush
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
