inline.NumInlined: 15
inline.NumDeleted: 2
begin_hunk_0_@cft1st:bb.a
  %.idx = shl nuw nsw i64 %indvars.iv.next301, 4
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 15 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 24
end_hunk_0
begin_hunk_1_@cft1st:bb.a
  %i.nt = extractelement <2 x double> %i.lq, i64 0
  %i.nu = fmul double %i.nt, 2.000000e+00         ; 2 uses
  %i.nv = fneg double %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.li, i64 64 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.li, i64 80 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.li, i64 72
  %i.nz = getelementptr inbounds nuw i8, ptr %i.li, i64 96
  %i.oa = getelementptr inbounds nuw i8, ptr %i.li, i64 112
  %i.ob = getelementptr inbounds nuw i8, ptr %i.li, i64 120
  %i.oc = fneg double %i.lr
  %i.od = load <2 x double>, ptr %i.nr, align 8, !tbaa !8 ; 3 uses
  %i.oe = load double, ptr %i.ns, align 8, !tbaa !8 ; 2 uses
end_hunk_1
begin_hunk_2_@cft1st:bb.a
  %i.og = tail call double @llvm.fmuladd.f64(double %i.nv, double %i.oe, double %i.of) ; 2 uses
  %i.oh = fneg double %i.oe
  %i.oi = tail call double @llvm.fmuladd.f64(double %i.nu, double %i.of, double %i.oh) ; 2 uses
  %3 = load <2 x double>, ptr %i.nw, align 8, !tbaa !8
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %5 = load <2 x double>, ptr %i.nx, align 8, !tbaa !8
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %7 = fsub <4 x double> %4, %6                   ; 3 uses
  %8 = fadd <4 x double> %4, %6                   ; 3 uses
  %9 = shufflevector <4 x double> %7, <4 x double> %8, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %10 = load <4 x double>, ptr %i.nz, align 8, !tbaa !8 ; 3 uses
  %11 = shufflevector <4 x double> %10, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %12 = fsub <4 x double> %10, %11                ; 3 uses
  %13 = fadd <4 x double> %10, %11                ; 3 uses
  %14 = shufflevector <4 x double> %12, <4 x double> %13, <4 x i32> <i32 1, i32 0, i32 6, i32 7> ; 2 uses
  %15 = extractelement <4 x double> %8, i64 2
  %16 = extractelement <4 x double> %13, i64 2
  %17 = fadd double %15, %16
  store double %17, ptr %i.nw, align 8, !tbaa !8
  %18 = extractelement <4 x double> %8, i64 3
  %19 = extractelement <4 x double> %13, i64 3
  %i.oj = fadd double %18, %19
  store double %i.oj, ptr %i.ny, align 8, !tbaa !8
  %20 = fsub <4 x double> %9, %14                 ; 3 uses
  %21 = fadd <4 x double> %9, %14                 ; 2 uses
  %22 = shufflevector <4 x double> %20, <4 x double> %21, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %23 = shufflevector <4 x double> %21, <4 x double> %20, <2 x i32> <i32 1, i32 7>
  %24 = fneg <2 x double> %23
  %25 = shufflevector <2 x double> %i.lq, <2 x double> %i.od, <4 x i32> <i32 3, i32 3, i32 0, i32 0>
  %26 = shufflevector <4 x double> %20, <4 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %27 = shufflevector <2 x double> %24, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %28 = shufflevector <4 x double> %27, <4 x double> %26, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %29 = fmul <4 x double> %25, %28
  %30 = shufflevector <2 x double> %i.od, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %31 = insertelement <4 x double> poison, double %i.oc, i64 0
  %32 = shufflevector <4 x double> %31, <4 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %33 = shufflevector <4 x double> %30, <4 x double> %32, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %34 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %33, <4 x double> %22, <4 x double> %29)
  store <4 x double> %34, ptr %i.nx, align 8, !tbaa !8
  %35 = extractelement <4 x double> %7, i64 0
  %36 = extractelement <4 x double> %12, i64 1
  %37 = fadd double %35, %36                      ; 2 uses
  %38 = extractelement <4 x double> %7, i64 1
  %39 = extractelement <4 x double> %12, i64 0
  %i.ok = fsub double %38, %39                    ; 2 uses
  %i.ol = fneg double %i.ok
  %i.om = fmul double %i.oi, %i.ol
  %i.on = tail call double @llvm.fmuladd.f64(double %i.og, double %37, double %i.om)
  store double %i.on, ptr %i.oa, align 8, !tbaa !8
  %i.oo = fmul double %i.oi, %37
  %i.op = tail call double @llvm.fmuladd.f64(double %i.og, double %i.ok, double %i.oo)
  store double %i.op, ptr %i.ob, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
end_hunk_2
