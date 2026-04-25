inline.NumInlined: 15
inline.NumDeleted: 2
begin_hunk_0_@cft1st:bb.a
  %.idx = shl nuw nsw i64 %indvars.iv.next301, 4
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 17 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 24
end_hunk_0
begin_hunk_1_@cft1st:bb.a
  %i.nt = extractelement <2 x double> %i.lq, i64 0
  %i.nu = fmul double %i.nt, 2.000000e+00         ; 2 uses
  %i.nv = fneg double %i.nu
  %3 = getelementptr inbounds nuw i8, ptr %i.li, i64 64 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.li, i64 80 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.li, i64 72 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.li, i64 88
  %i.ny = getelementptr inbounds nuw i8, ptr %i.li, i64 96
  %i.nz = getelementptr inbounds nuw i8, ptr %i.li, i64 112 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.li, i64 104
  %i.ob = getelementptr inbounds nuw i8, ptr %i.li, i64 120 ; 2 uses
  %i.oc = fneg double %i.lr
  %i.od = load <2 x double>, ptr %i.nr, align 8, !tbaa !8 ; 3 uses
  %i.oe = load double, ptr %i.ns, align 8, !tbaa !8 ; 2 uses
end_hunk_1
begin_hunk_2_@cft1st:bb.a
  %i.og = tail call double @llvm.fmuladd.f64(double %i.nv, double %i.oe, double %i.of) ; 2 uses
  %i.oh = fneg double %i.oe
  %i.oi = tail call double @llvm.fmuladd.f64(double %i.nu, double %i.of, double %i.oh) ; 2 uses
  %5 = load double, ptr %i.nw, align 8, !tbaa !8  ; 2 uses
  %6 = load double, ptr %3, align 8, !tbaa !8     ; 2 uses
  %7 = load double, ptr %4, align 8, !tbaa !8     ; 2 uses
  %8 = fadd double %6, %7                         ; 2 uses
  %9 = fsub double %6, %7                         ; 2 uses
  %10 = load double, ptr %i.ob, align 8, !tbaa !8 ; 2 uses
  %11 = load double, ptr %i.nx, align 8, !tbaa !8 ; 2 uses
  %12 = load double, ptr %i.ny, align 8, !tbaa !8 ; 2 uses
  %13 = load double, ptr %i.nz, align 8, !tbaa !8 ; 2 uses
  %14 = load double, ptr %i.oa, align 8, !tbaa !8 ; 2 uses
  %15 = fadd double %14, %10                      ; 2 uses
  %16 = fsub double %5, %11                       ; 2 uses
  %17 = fadd double %12, %13                      ; 2 uses
  %18 = fadd double %5, %11                       ; 2 uses
  %19 = fsub double %12, %13                      ; 2 uses
  %20 = fsub double %14, %10                      ; 2 uses
  %21 = fadd double %8, %17
  store double %21, ptr %3, align 8, !tbaa !8
  %i.oj = fadd double %18, %15
  store double %i.oj, ptr %i.nw, align 8, !tbaa !8
  %22 = fsub double %8, %17
  %23 = fsub double %18, %15                      ; 2 uses
  %24 = fadd double %16, %19                      ; 2 uses
  %25 = fsub double %9, %20
  %26 = insertelement <2 x double> poison, double %24, i64 0
  %27 = insertelement <2 x double> %26, double %23, i64 1
  %28 = fneg <2 x double> %27
  %29 = shufflevector <2 x double> %i.od, <2 x double> %i.lq, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %30 = shufflevector <2 x double> %28, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %31 = insertelement <4 x double> %30, double %25, i64 2
  %32 = insertelement <4 x double> %31, double %22, i64 3 ; 2 uses
  %33 = fmul <4 x double> %29, %32
  %34 = insertelement <2 x double> %i.od, double %i.oc, i64 1
  %35 = shufflevector <2 x double> %34, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %36 = shufflevector <4 x double> %32, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %37 = insertelement <4 x double> %36, double %24, i64 2
  %38 = insertelement <4 x double> %37, double %23, i64 3
  %39 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %35, <4 x double> %38, <4 x double> %33)
  %40 = shufflevector <4 x double> %39, <4 x double> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %40, ptr %4, align 8, !tbaa !8
  %41 = fadd double %9, %20                       ; 2 uses
  %i.ok = fsub double %16, %19                    ; 2 uses
  %i.ol = fneg double %i.ok
  %i.om = fmul double %i.oi, %i.ol
  %i.on = tail call double @llvm.fmuladd.f64(double %i.og, double %41, double %i.om)
  store double %i.on, ptr %i.nz, align 8, !tbaa !8
  %i.oo = fmul double %i.oi, %41
  %i.op = tail call double @llvm.fmuladd.f64(double %i.og, double %i.ok, double %i.oo)
  store double %i.op, ptr %i.ob, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
end_hunk_2
