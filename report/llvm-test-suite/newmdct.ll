inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@mdct_sub48:bb.a
.loopexit218:                                     ; preds = %.loopexit216, %bb.g, %bb.f
  %i.je = getelementptr inbounds nuw i8, ptr %gep267, i64 72
  %i.jf = getelementptr inbounds nuw [4608 x i8], ptr %i.cv, i64 %indvars.iv292 ; 2 uses
  %5 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 576), align 16 ; 4 uses
  %6 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 584), align 8 ; 5 uses
  %i.jg = load double, ptr getelementptr inbounds nuw (i8, ptr @win, i64 592), align 16 ; 2 uses
  %i.jh = extractelement <2 x double> %6, i64 0
  %7 = shufflevector <2 x double> %5, <2 x double> %6, <4 x i32> <i32 0, i32 1, i32 3, i32 0>
  %8 = shufflevector <2 x double> %6, <2 x double> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %9 = shufflevector <2 x double> %5, <2 x double> %6, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.ji = insertelement <4 x double> poison, double %i.jg, i64 0
  %10 = shufflevector <4 x double> %i.ji, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %11 = shufflevector <4 x double> %10, <4 x double> %9, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %12 = shufflevector <2 x double> %5, <2 x double> %6, <4 x i32> <i32 0, i32 2, i32 poison, i32 0>
  %13 = shufflevector <4 x double> %12, <4 x double> %10, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %bb.k

bb.k:                                             ; preds = %.loopexit218, %.loopexit
end_hunk_0
begin_hunk_1_@mdct_sub48:bb.a
  %i.py = load double, ptr %gep245.1, align 8, !tbaa !15 ; 2 uses
  %gep247.1 = getelementptr i8, ptr %invariant.gep240, i64 4096
  %i.pz = load double, ptr %gep247.1, align 8, !tbaa !15 ; 2 uses
  %gep249.1 = getelementptr inbounds nuw i8, ptr %invariant.gep248, i64 256
  %i.qa = load double, ptr %gep249.1, align 8, !tbaa !15 ; 2 uses
  %gep251.1 = getelementptr i8, ptr %invariant.gep248, i64 1024
end_hunk_1
begin_hunk_2_@mdct_sub48:bb.a
  %i.qj = load double, ptr %gep245.2, align 8, !tbaa !15 ; 2 uses
  %gep247.2 = getelementptr i8, ptr %invariant.gep240, i64 4352
  %i.qk = load double, ptr %gep247.2, align 8, !tbaa !15 ; 2 uses
  %14 = insertelement <4 x double> poison, double %i.qe, i64 0
  %15 = insertelement <4 x double> %14, double %i.pw, i64 1
  %16 = insertelement <4 x double> %15, double %i.pl, i64 2
  %17 = insertelement <4 x double> %16, double %i.qk, i64 3
  %18 = shufflevector <2 x double> %i.qi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %19 = insertelement <4 x double> %18, double %i.pn, i64 2
  %20 = insertelement <4 x double> %19, double %i.qj, i64 3
  %21 = insertelement <2 x double> poison, double %i.qk, i64 0
  %22 = insertelement <2 x double> %21, double %i.pz, i64 1
  %23 = fneg <2 x double> %22
  %i.ql = tail call double @llvm.fmuladd.f64(double %i.pv, double %i.jg, double %i.pu)
  store double %i.ql, ptr getelementptr inbounds nuw (i8, ptr @win, i64 744), align 8, !tbaa !15
  %i.qm = tail call double @llvm.fmuladd.f64(double %i.qd, double %i.jh, double %i.qc)
  store double %i.qm, ptr getelementptr inbounds nuw (i8, ptr @win, i64 736), align 16, !tbaa !15
  %24 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %17, <4 x double> %7, <4 x double> %20)
  store <4 x double> %24, ptr getelementptr inbounds nuw (i8, ptr @win, i64 608), align 16, !tbaa !15
  %i.qn = insertelement <4 x double> poison, double %i.pz, i64 0
  %i.qo = insertelement <4 x double> %i.qn, double %i.pp, i64 1
  %25 = insertelement <4 x double> %i.qo, double %i.qj, i64 2
  %i.qp = insertelement <4 x double> %25, double %i.py, i64 3
  %i.qq = insertelement <4 x double> poison, double %i.py, i64 0
  %26 = insertelement <4 x double> %i.qq, double %i.po, i64 1
  %27 = shufflevector <2 x double> %23, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %28 = shufflevector <4 x double> %26, <4 x double> %27, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %29 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qp, <4 x double> %8, <4 x double> %28)
  store <4 x double> %29, ptr getelementptr inbounds nuw (i8, ptr @win, i64 640), align 16, !tbaa !15
  %i.qr = load double, ptr %invariant.gep248, align 8, !tbaa !15 ; 2 uses
  %gep251.2 = getelementptr i8, ptr %invariant.gep248, i64 1280
  %i.qs = load double, ptr %gep251.2, align 8, !tbaa !15 ; 2 uses
end_hunk_2
begin_hunk_3_@mdct_sub48:bb.a
  %i.qy = insertelement <4 x double> %i.qx, double %i.qr, i64 1
  %i.qz = insertelement <4 x double> %i.qy, double %i.qa, i64 2
  %i.ra = insertelement <4 x double> %i.qz, double %i.pr, i64 3
  %i.rb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qw, <4 x double> %11, <4 x double> %i.ra)
  store <4 x double> %i.rb, ptr getelementptr inbounds nuw (i8, ptr @win, i64 672), align 16, !tbaa !15
  %i.rc = insertelement <2 x double> poison, double %i.qs, i64 0
  %i.rd = insertelement <2 x double> %i.rc, double %i.qb, i64 1
end_hunk_3
begin_hunk_4_@mdct_sub48:bb.a
  %i.rl = shufflevector <2 x double> %i.re, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rm = insertelement <4 x double> %i.rl, double %i.pt, i64 2
  %i.rn = insertelement <4 x double> %i.rm, double %i.rf, i64 3
  %i.ro = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.rk, <4 x double> %13, <4 x double> %i.rn)
  store <4 x double> %i.ro, ptr getelementptr inbounds nuw (i8, ptr @win, i64 704), align 16, !tbaa !15
  %i.rp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 704), align 16
  %broadcast.splat310 = shufflevector <2 x double> %i.rp, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_4
