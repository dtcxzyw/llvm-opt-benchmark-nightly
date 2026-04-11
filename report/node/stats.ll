inline.NumInlined: 54
inline.NumDeleted: 43
begin_hunk_0_@_ZN3hwy5Stats10AssimilateERKS0_:bb.a
  %i.ad = uitofp nneg i64 %i.ac to double         ; 2 uses
  %i.ae = sitofp i64 %i.c to double               ; 2 uses
  %i.af = fmul nnan double %i.ae, %i.ad
  %i.ag = fdiv double 1.000000e+00, %i.ae         ; 4 uses
  %i.ah = fdiv double 1.000000e+00, %i.ad         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load double, ptr %i.ai, align 8         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = load double, ptr %i.ak, align 8         ; 2 uses
  %i.am = fsub double %i.aj, %i.al                ; 5 uses
  %2 = fmul double %i.am, %i.am                   ; 5 uses
  %3 = fmul double %i.am, %2
  %4 = fmul double %2, %2
  %i.an = sitofp i64 %i.a to double               ; 3 uses
  %i.ao = sitofp i64 %i.v to double
  %i.ap = fmul double %i.aj, %i.ao
end_hunk_0
begin_hunk_1_@_ZN3hwy5Stats10AssimilateERKS0_:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load double, ptr %i.au, align 8         ; 3 uses
  %i.aw = fadd double %i.at, %i.av
  %5 = fmul double %2, %i.x
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %i.ag, double %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8         ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load double, ptr %i.az, align 8         ; 2 uses
  %i.bb = fadd double %i.ay, %i.ba
  %7 = fmul double %3, %i.x
  %i.bc = load i64, ptr %1, align 8               ; 2 uses
  %i.bd = sub nsw i64 %i.a, %i.bc
  %i.be = sitofp i64 %i.bd to double
  %i.bf = fmul double %7, %i.be
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.ah, double %i.bb)
  %8 = fmul double %i.am, 3.000000e+00
  %9 = sitofp i64 %i.bc to double
  %10 = fneg double %9                            ; 2 uses
  %i.bh = fmul double %i.at, %10
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.an, double %i.av, double %i.bh)
  %i.bj = fmul double %8, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.ag, double %i.bg)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bm = load double, ptr %i.bl, align 8
  %11 = fmul double %4, %i.x
  %12 = fsub nnan double %i.z, %i.x
  %13 = fadd nnan double %12, %i.ab
  %i.bn = fmul double %13, %11
  %14 = fdiv double %i.bn, %i.af
  %15 = fadd double %14, %i.bm
  %i.bo = fmul double %2, 6.000000e+00
  %i.bp = fmul double %i.at, %i.ab
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.z, double %i.av, double %i.bp)
  %16 = fmul double %i.bo, %i.bq
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %i.ah, double %15)
  %i.br = fmul double %i.am, 4.000000e+00
  %i.bs = fmul double %i.ay, %10
  %18 = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ba, double %i.bs)
  %19 = fmul double %i.br, %18
  %20 = tail call double @llvm.fmuladd.f64(double %19, double %i.ag, double %17)
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %22 = load double, ptr %21, align 8
  %23 = fadd double %22, %20
  store double %23, ptr %21, align 8
  store double %6, ptr %i.as, align 8
  store double %i.bk, ptr %i.ax, align 8
  store i64 %i.c, ptr %0, align 8
  br label %bb.c

end_hunk_1
begin_hunk_2_@exp
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_2
