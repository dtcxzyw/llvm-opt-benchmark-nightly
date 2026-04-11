inline.NumInlined: 54
inline.NumDeleted: 43
begin_hunk_0_@_ZN3hwy5Stats10AssimilateERKS0_:bb.a
  %i.ad = uitofp nneg i64 %i.ac to double         ; 2 uses
  %i.ae = sitofp i64 %i.c to double               ; 2 uses
  %i.af = fmul nnan double %i.ae, %i.ad
  %i.ag = fdiv double 1.000000e+00, %i.ae         ; 3 uses
  %i.ah = fdiv double 1.000000e+00, %i.ad         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load double, ptr %i.ai, align 8         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = load double, ptr %i.ak, align 8         ; 2 uses
  %i.am = fsub double %i.aj, %i.al                ; 3 uses
  %i.an = sitofp i64 %i.a to double               ; 3 uses
  %i.ao = sitofp i64 %i.v to double
  %i.ap = fmul double %i.aj, %i.ao
end_hunk_0
begin_hunk_1_@_ZN3hwy5Stats10AssimilateERKS0_:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load double, ptr %i.au, align 8         ; 3 uses
  %i.aw = fadd double %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load double, ptr %i.ax, align 8         ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load double, ptr %i.az, align 8         ; 2 uses
  %i.bb = fadd double %i.ay, %i.ba
  %i.bc = load i64, ptr %1, align 8               ; 2 uses
  %i.bd = sub nsw i64 %i.a, %i.bc
  %2 = sitofp i64 %i.bd to double
  %i.be = sitofp i64 %i.bc to double
  %3 = fneg double %i.be                          ; 2 uses
  %i.bf = fmul double %i.at, %3
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.an, double %i.av, double %i.bf)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %5 = load double, ptr %4, align 8
  %6 = fsub nnan double %i.z, %i.x
  %7 = fadd nnan double %6, %i.ab
  %i.bh = fmul double %i.at, %i.ab
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.z, double %i.av, double %i.bh)
  %8 = fmul double %i.am, 4.000000e+00
  %i.bj = fmul double %i.ay, %3
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ba, double %i.bj)
  %9 = fmul double %8, %i.bk
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8
  %10 = insertelement <2 x double> poison, double %i.am, i64 0 ; 2 uses
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x double> %10, double 3.000000e+00, i64 1
  %13 = fmul <2 x double> %11, %12                ; 4 uses
  %14 = extractelement <2 x double> %13, i64 0    ; 2 uses
  %i.bn = fmul double %i.am, %14
  %foldExtExtBinop = fmul <2 x double> %13, %13
  %15 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bo = fmul double %i.bn, %i.x
  %i.bp = fmul double %i.bo, %2
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.ah, double %i.bb)
  %16 = insertelement <2 x double> poison, double %i.x, i64 0
  %17 = insertelement <2 x double> %16, double %i.bg, i64 1
  %18 = fmul <2 x double> %13, %17
  %19 = insertelement <2 x double> poison, double %i.ag, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = insertelement <2 x double> poison, double %i.aw, i64 0
  %22 = insertelement <2 x double> %21, double %i.bq, i64 1
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %20, <2 x double> %22)
  %i.br = fmul double %15, %i.x
  %i.bs = fmul double %7, %i.br
  %24 = fdiv double %i.bs, %i.af
  %25 = fadd double %24, %5
  %26 = fmul double %14, 6.000000e+00
  %27 = fmul double %26, %i.bi
  %28 = tail call double @llvm.fmuladd.f64(double %27, double %i.ah, double %25)
  %29 = tail call double @llvm.fmuladd.f64(double %9, double %i.ag, double %28)
  %30 = fadd double %i.bm, %29
  store double %30, ptr %i.bl, align 8
  store <2 x double> %23, ptr %i.as, align 8
  store i64 %i.c, ptr %0, align 8
  br label %bb.c

end_hunk_1
begin_hunk_2_@exp
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_2
