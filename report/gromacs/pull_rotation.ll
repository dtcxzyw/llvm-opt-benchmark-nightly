Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pull_rotation?download=true
inline.NumInlined: 1360
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZL18opt_angle_analyticPA3_fS0_PfiPKfS3_S1_:bb.a
  store double %i.tz, ptr %i.tt, align 8, !tbaa !666
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tj, i64 16 ; 4 uses
  %.promoted.2.1 = load double, ptr %i.ua, align 8, !tbaa !666
  %i.ub = load double, ptr %i.sl, align 8, !tbaa !666
  %i.uc = load double, ptr %i.sy, align 8, !tbaa !666
  %i.ud = call double @llvm.fmuladd.f64(double %i.ub, double %i.uc, double %.promoted.2.1) ; 2 uses
  store double %i.ud, ptr %i.ua, align 8, !tbaa !666
  %i.ue = load double, ptr %i.sp, align 8, !tbaa !666
  %i.uf = load double, ptr %i.tc, align 8, !tbaa !666
  %i.ug = call double @llvm.fmuladd.f64(double %i.ue, double %i.uf, double %i.ud) ; 2 uses
  store double %i.ug, ptr %i.ua, align 8, !tbaa !666
  %i.uh = load double, ptr %i.st, align 8, !tbaa !666
  %i.ui = load double, ptr %i.tg, align 8, !tbaa !666
  %i.uj = call double @llvm.fmuladd.f64(double %i.uh, double %i.ui, double %i.ug)
  store double %i.uj, ptr %i.ua, align 8, !tbaa !666
  %.promoted.2228 = load double, ptr %i.ry, align 8, !tbaa !666
  %i.uk = load double, ptr %i.sy, align 8, !tbaa !666
  %i.ul = load double, ptr %i.sa, align 8, !tbaa !666
  %i.um = call double @llvm.fmuladd.f64(double %i.uk, double %i.ul, double %.promoted.2228) ; 2 uses
  store double %i.um, ptr %i.ry, align 8, !tbaa !666
  %i.un = load double, ptr %i.tc, align 8, !tbaa !666
  %i.uo = load double, ptr %i.sd, align 8, !tbaa !666
  %i.up = call double @llvm.fmuladd.f64(double %i.un, double %i.uo, double %i.um) ; 2 uses
  store double %i.up, ptr %i.ry, align 8, !tbaa !666
  %i.uq = load double, ptr %i.tg, align 8, !tbaa !666
  %i.ur = load double, ptr %i.sg, align 8, !tbaa !666
  %i.us = call double @llvm.fmuladd.f64(double %i.uq, double %i.ur, double %i.up)
  store double %i.us, ptr %i.ry, align 8, !tbaa !666
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 4 uses
  %.promoted.1.2 = load double, ptr %i.ut, align 8, !tbaa !666
  %i.uu = load ptr, ptr %i.cc, align 8, !tbaa !663 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16 ; 2 uses
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !666
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uy = load double, ptr %i.ux, align 8, !tbaa !666
  %i.uz = call double @llvm.fmuladd.f64(double %i.uw, double %i.uy, double %.promoted.1.2) ; 2 uses
  store double %i.uz, ptr %i.ut, align 8, !tbaa !666
  %i.va = load ptr, ptr %i.ce, align 8, !tbaa !663 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16 ; 2 uses
  %i.vc = load double, ptr %i.vb, align 8, !tbaa !666
  %i.vd = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.ve = load double, ptr %i.vd, align 8, !tbaa !666
  %i.vf = call double @llvm.fmuladd.f64(double %i.vc, double %i.ve, double %i.uz) ; 2 uses
  store double %i.vf, ptr %i.ut, align 8, !tbaa !666
  %i.vg = load ptr, ptr %i.cg, align 8, !tbaa !663 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16 ; 2 uses
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !666
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !666
  %i.vl = call double @llvm.fmuladd.f64(double %i.vi, double %i.vk, double %i.vf)
  store double %i.vl, ptr %i.ut, align 8, !tbaa !666
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ry, i64 16 ; 4 uses
  %.promoted.2.2 = load double, ptr %i.vm, align 8, !tbaa !666
  %i.vn = load double, ptr %i.uv, align 8, !tbaa !666 ; 2 uses
  %i.vo = call double @llvm.fmuladd.f64(double %i.vn, double %i.vn, double %.promoted.2.2) ; 2 uses
  store double %i.vo, ptr %i.vm, align 8, !tbaa !666
  %i.vp = load double, ptr %i.vb, align 8, !tbaa !666 ; 2 uses
  %i.vq = call double @llvm.fmuladd.f64(double %i.vp, double %i.vp, double %i.vo) ; 2 uses
  store double %i.vq, ptr %i.vm, align 8, !tbaa !666
  %i.vr = load double, ptr %i.vh, align 8, !tbaa !666 ; 2 uses
  %i.vs = call double @llvm.fmuladd.f64(double %i.vr, double %i.vr, double %i.vq)
  store double %i.vs, ptr %i.vm, align 8, !tbaa !666
  %i.vt = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.2, i32 noundef 1518, i64 noundef 3, i64 noundef 8) ; 8 uses
  %i.vu = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.2, i32 noundef 1521, i64 noundef 3, i64 noundef 8)
  store ptr %i.vu, ptr %i.vt, align 8, !tbaa !663
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 8 ; 3 uses
  %i.vw = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.2, i32 noundef 1521, i64 noundef 3, i64 noundef 8)
  store ptr %i.vw, ptr %i.vv, align 8, !tbaa !663
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 16 ; 3 uses
  %i.vy = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.2, i32 noundef 1521, i64 noundef 3, i64 noundef 8)
  store ptr %i.vy, ptr %i.vx, align 8, !tbaa !663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.rt, i32 noundef 3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.vt, ptr noundef nonnull %i.a)
  %i.vz = load double, ptr %i.c, align 16, !tbaa !666 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !666 ; 3 uses
  %i.wc = fcmp ogt double %i.vz, %i.wb
  %.pre.pre.pre = load ptr, ptr %i.vt, align 8, !tbaa !663 ; 13 uses
  %.pre336.pre.pre = load ptr, ptr %i.vv, align 8, !tbaa !663 ; 13 uses
  %.pre337.pre.pre = load ptr, ptr %i.vx, align 8, !tbaa !663 ; 12 uses
  br i1 %i.wc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZL18calc_correl_matrixPA3_fS0_PPdi.exit
  store double %i.vz, ptr %i.wa, align 8, !tbaa !666
  store double %i.wb, ptr %i.c, align 16, !tbaa !666
  %i.wd = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 8 ; 2 uses
  %i.we = load double, ptr %i.wd, align 8, !tbaa !666
  %i.wf = getelementptr inbounds nuw i8, ptr %.pre336.pre.pre, i64 8 ; 2 uses
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !666
  %i.wh = getelementptr inbounds nuw i8, ptr %.pre337.pre.pre, i64 8 ; 2 uses
  %i.wi = load double, ptr %i.wh, align 8, !tbaa !666
  %i.wj = load double, ptr %.pre.pre.pre, align 8, !tbaa !666
  store double %i.wj, ptr %i.wd, align 8, !tbaa !666
  %i.wk = load double, ptr %.pre336.pre.pre, align 8, !tbaa !666
  store double %i.wk, ptr %i.wf, align 8, !tbaa !666
  %i.wl = load double, ptr %.pre337.pre.pre, align 8, !tbaa !666
  store double %i.wl, ptr %i.wh, align 8, !tbaa !666
  store double %i.we, ptr %.pre.pre.pre, align 8, !tbaa !666
  store double %i.wg, ptr %.pre336.pre.pre, align 8, !tbaa !666
  store double %i.wi, ptr %.pre337.pre.pre, align 8, !tbaa !666
  %.pre.i = load double, ptr %i.wa, align 8, !tbaa !666
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZL18calc_correl_matrixPA3_fS0_PPdi.exit
  %i.wm = phi double [ %.pre.i, %bb.t ], [ %i.wb, %_ZL18calc_correl_matrixPA3_fS0_PPdi.exit ] ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.wo = load double, ptr %i.wn, align 16, !tbaa !666 ; 2 uses
  %i.wp = fcmp ogt double %i.wm, %i.wo
  br i1 %i.wp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store double %i.wm, ptr %i.wn, align 16, !tbaa !666
  store double %i.wo, ptr %i.wa, align 8, !tbaa !666
  %i.wq = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 16 ; 2 uses
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !666
  %i.ws = getelementptr inbounds nuw i8, ptr %.pre336.pre.pre, i64 16 ; 2 uses
  %i.wt = load double, ptr %i.ws, align 8, !tbaa !666
  %i.wu = getelementptr inbounds nuw i8, ptr %.pre337.pre.pre, i64 16 ; 2 uses
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !666
  %i.ww = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 8 ; 2 uses
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !666
  store double %i.wx, ptr %i.wq, align 8, !tbaa !666
  %i.wy = getelementptr inbounds nuw i8, ptr %.pre336.pre.pre, i64 8 ; 2 uses
  %i.wz = load double, ptr %i.wy, align 8, !tbaa !666
  store double %i.wz, ptr %i.ws, align 8, !tbaa !666
  %i.xa = getelementptr inbounds nuw i8, ptr %.pre337.pre.pre, i64 8 ; 2 uses
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !666
  store double %i.xb, ptr %i.wu, align 8, !tbaa !666
  store double %i.wr, ptr %i.ww, align 8, !tbaa !666
  store double %i.wt, ptr %i.wy, align 8, !tbaa !666
  store double %i.wv, ptr %i.xa, align 8, !tbaa !666
  %.pre15.i = load double, ptr %i.wa, align 8, !tbaa !666
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.xc = phi double [ %.pre15.i, %bb.v ], [ %i.wm, %bb.u ] ; 2 uses
  %i.xd = load double, ptr %i.c, align 16, !tbaa !666 ; 2 uses
  %i.xe = fcmp ogt double %i.xd, %i.xc
  br i1 %i.xe, label %bb.x, label %_ZL21diagonalize_symmetricPPdS0_S_.exit

bb.x:                                             ; preds = %bb.w
  store double %i.xd, ptr %i.wa, align 8, !tbaa !666
  store double %i.xc, ptr %i.c, align 16, !tbaa !666
  %i.xf = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 8 ; 2 uses
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !666
  %i.xh = getelementptr inbounds nuw i8, ptr %.pre336.pre.pre, i64 8 ; 2 uses
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !666
  %i.xj = getelementptr inbounds nuw i8, ptr %.pre337.pre.pre, i64 8 ; 2 uses
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !666
  %i.xl = load double, ptr %.pre.pre.pre, align 8, !tbaa !666
  store double %i.xl, ptr %i.xf, align 8, !tbaa !666
  %i.xm = load double, ptr %.pre336.pre.pre, align 8, !tbaa !666
  store double %i.xm, ptr %i.xh, align 8, !tbaa !666
  %i.xn = load double, ptr %.pre337.pre.pre, align 8, !tbaa !666
  store double %i.xn, ptr %i.xj, align 8, !tbaa !666
  store double %i.xg, ptr %.pre.pre.pre, align 8, !tbaa !666
  store double %i.xi, ptr %.pre336.pre.pre, align 8, !tbaa !666
  store double %i.xk, ptr %.pre337.pre.pre, align 8, !tbaa !666
  br label %_ZL21diagonalize_symmetricPPdS0_S_.exit

_ZL21diagonalize_symmetricPPdS0_S_.exit:          ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.xo = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 8 ; 4 uses
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !666
  %i.xq = getelementptr inbounds nuw i8, ptr %.pre336.pre.pre, i64 8 ; 4 uses
  %i.xr = load double, ptr %i.xq, align 8, !tbaa !666
  %i.xs = getelementptr inbounds nuw i8, ptr %.pre337.pre.pre, i64 8 ; 4 uses
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !666
  %i.xu = load double, ptr %.pre.pre.pre, align 8, !tbaa !666
  store double %i.xu, ptr %i.xo, align 8, !tbaa !666
  %i.xv = load double, ptr %.pre336.pre.pre, align 8, !tbaa !666
  store double %i.xv, ptr %i.xq, align 8, !tbaa !666
  %i.xw = load double, ptr %.pre337.pre.pre, align 8, !tbaa !666
  store double %i.xw, ptr %i.xs, align 8, !tbaa !666
  store double %i.xp, ptr %.pre.pre.pre, align 8, !tbaa !666
  store double %i.xr, ptr %.pre336.pre.pre, align 8, !tbaa !666
  store double %i.xt, ptr %.pre337.pre.pre, align 8, !tbaa !666
  %i.xx = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 16 ; 2 uses
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !666
  %i.xz = getelementptr inbounds nuw i8, ptr %.pre336.pre.pre, i64 16 ; 2 uses
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !666
  %i.yb = getelementptr inbounds nuw i8, ptr %.pre337.pre.pre, i64 16 ; 2 uses
  %i.yc = load double, ptr %i.yb, align 8, !tbaa !666
  %i.yd = load double, ptr %i.xo, align 8, !tbaa !666
  store double %i.yd, ptr %i.xx, align 8, !tbaa !666
  %i.ye = load double, ptr %i.xq, align 8, !tbaa !666
  store double %i.ye, ptr %i.xz, align 8, !tbaa !666
  %i.yf = load double, ptr %i.xs, align 8, !tbaa !666
  store double %i.yf, ptr %i.yb, align 8, !tbaa !666
  store double %i.xy, ptr %i.xo, align 8, !tbaa !666
  store double %i.ya, ptr %i.xq, align 8, !tbaa !666
  store double %i.yc, ptr %i.xs, align 8, !tbaa !666
  %i.yg = load double, ptr %i.c, align 16, !tbaa !666
  %i.yh = load <2 x double>, ptr %i.wa, align 8, !tbaa !666 ; 3 uses
  store double %i.yg, ptr %i.wn, align 16, !tbaa !666
  store <2 x double> %i.yh, ptr %i.c, align 16, !tbaa !666
  %i.yi = extractelement <2 x double> %i.yh, i64 0 ; 2 uses
  %i.yj = call double @sqrt(double noundef %i.yi) #28
  %i.yk = extractelement <2 x double> %i.yh, i64 1 ; 2 uses
  %i.yl = call double @sqrt(double noundef %i.yk) #28
  %i.ym = call double @sqrt(double noundef %i.yi) #28
  %i.yn = call double @sqrt(double noundef %i.yk) #28
  %7 = load ptr, ptr %i.cc, align 8, !tbaa !663   ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %9 = load double, ptr %8, align 8, !tbaa !666
  %i.yo = load ptr, ptr %i.ce, align 8, !tbaa !663 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  %11 = load double, ptr %10, align 8, !tbaa !666
  %12 = load <2 x double>, ptr %.pre.pre.pre, align 8, !tbaa !666
  %13 = load <2 x double>, ptr %.pre336.pre.pre, align 8, !tbaa !666
  %14 = shufflevector <2 x double> %13, <2 x double> %12, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %15 = insertelement <4 x double> poison, double %i.yn, i64 0
  %16 = insertelement <4 x double> %15, double %i.yl, i64 1
  %17 = insertelement <4 x double> %16, double %i.ym, i64 2
  %18 = insertelement <4 x double> %17, double %i.yj, i64 3
  %19 = fdiv <4 x double> %14, %18                ; 4 uses
  %20 = load <2 x double>, ptr %7, align 8, !tbaa !666 ; 2 uses
  %21 = load <2 x double>, ptr %i.yo, align 8, !tbaa !666 ; 2 uses
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.2, i32 noundef 423, ptr noundef nonnull %7)
  %22 = load ptr, ptr %i.ce, align 8, !tbaa !663
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.2, i32 noundef 423, ptr noundef %22)
  %23 = load ptr, ptr %i.cg, align 8, !tbaa !663
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.2, i32 noundef 423, ptr noundef %23)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.2, i32 noundef 425, ptr noundef nonnull %i.cc)
  %i.yp = load ptr, ptr %i.vt, align 8, !tbaa !663 ; 3 uses
  %24 = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %i.yr = load double, ptr %i.yp, align 8, !tbaa !666
  %25 = load double, ptr %24, align 8, !tbaa !666
  %i.ys = load double, ptr %i.yq, align 8, !tbaa !666
  %26 = shufflevector <2 x double> %21, <2 x double> %20, <2 x i32> <i32 0, i32 2> ; 3 uses
  %27 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %28 = shufflevector <2 x double> %21, <2 x double> %20, <2 x i32> <i32 1, i32 3> ; 3 uses
  %29 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> zeroinitializer, <2 x double> %27)
  %30 = insertelement <2 x double> poison, double %11, i64 0
  %31 = insertelement <2 x double> %30, double %9, i64 1 ; 3 uses
  %32 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> zeroinitializer, <2 x double> %29)
  %33 = shufflevector <4 x double> %19, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %34 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> %33, <2 x double> zeroinitializer)
  %35 = shufflevector <4 x double> %19, <4 x double> poison, <2 x i32> zeroinitializer
  %36 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %35, <2 x double> %34)
  %37 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> zeroinitializer, <2 x double> %36)
  %38 = shufflevector <4 x double> %19, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %39 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> %38, <2 x double> zeroinitializer)
  %40 = shufflevector <4 x double> %19, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %41 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %40, <2 x double> %39)
  %42 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> zeroinitializer, <2 x double> %41)
  %43 = insertelement <2 x double> poison, double %i.yr, i64 0
  %44 = shufflevector <2 x double> %43, <2 x double> poison, <2 x i32> zeroinitializer
  %45 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %44, <2 x double> %42, <2 x double> zeroinitializer)
  %46 = insertelement <2 x double> poison, double %25, i64 0
  %47 = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> zeroinitializer
  %48 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %47, <2 x double> %37, <2 x double> %45)
  %49 = insertelement <2 x double> poison, double %i.ys, i64 0
  %50 = shufflevector <2 x double> %49, <2 x double> poison, <2 x i32> zeroinitializer
  %51 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %50, <2 x double> %32, <2 x double> %48) ; 2 uses
  %52 = extractelement <2 x double> %51, i64 1    ; 2 uses
  %53 = fcmp ogt double %52, 1.000000e+00
  %54 = fcmp olt <2 x double> %51, <double 0.000000e+00, double -1.000000e+00> ; 2 uses
  %55 = extractelement <2 x i1> %54, i64 1
  %spec.select358 = select i1 %55, double -1.000000e+00, double %52
  %.sroa.0.0 = select i1 %53, double 1.000000e+00, double %spec.select358
  %i.yt = call double @acos(double noundef %.sroa.0.0) #28
  %i.yu = load ptr, ptr %i.rt, align 8, !tbaa !663
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.2, i32 noundef 423, ptr noundef %i.yu)
  %i.yv = load ptr, ptr %i.rv, align 8, !tbaa !663
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.2, i32 noundef 423, ptr noundef %i.yv)
  %i.yw = load ptr, ptr %i.rx, align 8, !tbaa !663
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.2, i32 noundef 423, ptr noundef %i.yw)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.2, i32 noundef 425, ptr noundef nonnull %i.rt)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.2, i32 noundef 1602, ptr noundef %i.e)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.2, i32 noundef 1603, ptr noundef %i.f)
  %i.yx = load ptr, ptr %i.vt, align 8, !tbaa !663
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.2, i32 noundef 1606, ptr noundef %i.yx)
  %i.yy = load ptr, ptr %i.vv, align 8, !tbaa !663
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.2, i32 noundef 1606, ptr noundef %i.yy)
  %i.yz = load ptr, ptr %i.vx, align 8, !tbaa !663
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.2, i32 noundef 1606, ptr noundef %i.yz)
  %i.za = fmul double %i.yt, -1.800000e+02
  %i.zb = fdiv double %i.za, f0x400921FB54442D18  ; 2 uses
  %i.zc = fneg double %i.zb
  %56 = extractelement <2 x i1> %54, i64 0
  %spec.select = select i1 %56, double %i.zc, double %i.zb
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.2, i32 noundef 1608, ptr noundef nonnull %i.vt)
  %i.zd = fptrunc double %spec.select to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret float %i.zd
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL12align_with_zPA3_fiPf(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #8 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.2, i32 noundef 1360, i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 12) ; 13 uses
  %i.c = load float, ptr %2, align 4, !tbaa !61   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !61 ; 3 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !61 ; 3 uses
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.g)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.j)
  %i.k = fdiv float 1.000000e+00, %sqrt.i         ; 3 uses
  %i.l = fmul float %i.c, %i.k                    ; 3 uses
  store float %i.l, ptr %2, align 4, !tbaa !61
  %i.m = fmul float %i.e, %i.k                    ; 3 uses
  store float %i.m, ptr %i.d, align 4, !tbaa !61
  %i.n = fmul float %i.i, %i.k                    ; 4 uses
  store float %i.n, ptr %i.h, align 4, !tbaa !61
  %i.o = fmul float %i.n, 0.000000e+00
  %i.p = fsub float %i.m, %i.o                    ; 6 uses
  %i.q = fneg float %i.l
  %i.r = tail call float @llvm.fmuladd.f32(float %i.n, float 0.000000e+00, float %i.q) ; 6 uses
  %i.s = fmul float %i.m, -0.000000e+00
  %i.t = tail call float @llvm.fmuladd.f32(float %i.l, float 0.000000e+00, float %i.s) ; 6 uses
  %i.u = tail call noundef float @acosf(float noundef %i.n) #28 ; 3 uses
  %i.v = fcmp olt float %i.u, 0.000000e+00
  %i.w = fpext float %i.u to double
  %i.x = fadd double %i.w, f0x400921FB54442D18
  %i.y = fptrunc double %i.x to float
  %.0 = select i1 %i.v, float %i.y, float %i.u
  %i.z = fpext float %.0 to double
  %i.aa = fmul double %i.z, 1.800000e+02
  %i.ab = fdiv double %i.aa, f0x400921FB54442D18
  %i.ac = fptrunc double %i.ab to float
  %i.ad = fpext float %i.ac to double
  %i.ae = fmul double %i.ad, f0x400921FB54442D18
  %i.af = fdiv double %i.ae, 1.800000e+02
  %i.ag = fptrunc double %i.af to float           ; 2 uses
  %i.ah = tail call noundef float @cosf(float noundef %i.ag) #28 ; 4 uses
  %i.ai = tail call noundef float @sinf(float noundef %i.ag) #28 ; 6 uses
  %i.aj = fsub float 1.000000e+00, %i.ah          ; 6 uses
  %i.ak = fmul float %i.r, %i.p
  %i.al = fmul float %i.aj, %i.ak                 ; 2 uses
  %i.am = fmul float %i.p, %i.t
  %i.an = fmul float %i.aj, %i.am                 ; 2 uses
  %i.ao = fmul float %i.r, %i.t
  %i.ap = fmul float %i.aj, %i.ao                 ; 2 uses
  %i.aq = fmul float %i.p, %i.p
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aj, float %i.ah) ; 2 uses
  %i.as = tail call float @llvm.fmuladd.f32(float %i.t, float %i.ai, float %i.al) ; 2 uses
  %i.at = fneg float %i.r
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.ai, float %i.an) ; 2 uses
  %i.av = fneg float %i.t
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.ai, float %i.al) ; 2 uses
  %i.ax = fmul float %i.r, %i.r
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.aj, float %i.ah) ; 2 uses
  %i.az = tail call float @llvm.fmuladd.f32(float %i.p, float %i.ai, float %i.ap) ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.r, float %i.ai, float %i.an) ; 2 uses
  %i.bb = fneg float %i.p
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.ai, float %i.ap) ; 2 uses
  %i.bd = fmul float %i.t, %i.t
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.aj, float %i.ah) ; 2 uses
  %i.bf = icmp sgt i32 %1, 0
  br i1 %i.bf, label %.preheader49.preheader, label %._crit_edge

.preheader49.preheader:                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 9 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.preheader49.preheader123, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader49.preheader
  %i.bg = mul nuw nsw i64 %wide.trip.count, 12    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.bg
  %scevgep68 = getelementptr i8, ptr %0, i64 %i.bg
  %bound0 = icmp ult ptr %i.b, %scevgep68
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader49.preheader123, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ar, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat70 = shufflevector <8 x float> %broadcast.splatinsert69, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <8 x float> poison, float %i.ba, i64 0
  %broadcast.splat72 = shufflevector <8 x float> %broadcast.splatinsert71, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <8 x float> poison, float %i.as, i64 0
  %broadcast.splat74 = shufflevector <8 x float> %broadcast.splatinsert73, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert75 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat76 = shufflevector <8 x float> %broadcast.splatinsert75, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert77 = insertelement <8 x float> poison, float %i.bc, i64 0
  %broadcast.splat78 = shufflevector <8 x float> %broadcast.splatinsert77, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat80 = shufflevector <8 x float> %broadcast.splatinsert79, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert81 = insertelement <8 x float> poison, float %i.az, i64 0
  %broadcast.splat82 = shufflevector <8 x float> %broadcast.splatinsert81, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert83 = insertelement <8 x float> poison, float %i.be, i64 0
  %broadcast.splat84 = shufflevector <8 x float> %broadcast.splatinsert83, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index ; 3 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.b, <8 x i64> %vec.ind ; 5 uses
  %i.bi = extractelement <8 x ptr> %wide.gep, i64 0 ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.bi, align 4, !tbaa !61, !alias.scope !678, !noalias !679 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec85 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec86 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec87 = load <24 x float>, ptr %i.bh, align 4, !tbaa !61, !alias.scope !679 ; 3 uses
  %strided.vec88 = shufflevector <24 x float> %wide.vec87, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec89 = shufflevector <24 x float> %wide.vec87, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec90 = shufflevector <24 x float> %wide.vec87, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.bj = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %strided.vec88, <8 x float> %strided.vec) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bj, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !61, !alias.scope !678, !noalias !679
  %i.bk = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat70, <8 x float> %strided.vec89, <8 x float> %i.bj) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bk, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !61, !alias.scope !678, !noalias !679
  %i.bl = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat72, <8 x float> %strided.vec90, <8 x float> %i.bk)
  %wide.gep91 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4 ; 2 uses
  %wide.vec92 = load <24 x float>, ptr %i.bh, align 4, !tbaa !61, !alias.scope !679 ; 3 uses
  %strided.vec93 = shufflevector <24 x float> %wide.vec92, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec94 = shufflevector <24 x float> %wide.vec92, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec95 = shufflevector <24 x float> %wide.vec92, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.bm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat74, <8 x float> %strided.vec93, <8 x float> %strided.vec85) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bm, <8 x ptr> align 4 %wide.gep91, <8 x i1> splat (i1 true)), !tbaa !61, !alias.scope !678, !noalias !679
  %i.bn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat76, <8 x float> %strided.vec94, <8 x float> %i.bm) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bn, <8 x ptr> align 4 %wide.gep91, <8 x i1> splat (i1 true)), !tbaa !61, !alias.scope !678, !noalias !679
  %i.bo = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat78, <8 x float> %strided.vec95, <8 x float> %i.bn)
  %wide.gep96 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8 ; 2 uses
  %wide.vec97 = load <24 x float>, ptr %i.bh, align 4, !tbaa !61, !alias.scope !679 ; 3 uses
  %strided.vec98 = shufflevector <24 x float> %wide.vec97, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec99 = shufflevector <24 x float> %wide.vec97, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec100 = shufflevector <24 x float> %wide.vec97, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.bp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat80, <8 x float> %strided.vec98, <8 x float> %strided.vec86) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bp, <8 x ptr> align 4 %wide.gep96, <8 x i1> splat (i1 true)), !tbaa !61, !alias.scope !678, !noalias !679
  %i.bq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat82, <8 x float> %strided.vec99, <8 x float> %i.bp) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bq, <8 x ptr> align 4 %wide.gep96, <8 x i1> splat (i1 true)), !tbaa !61, !alias.scope !678, !noalias !679
  %i.br = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat84, <8 x float> %strided.vec100, <8 x float> %i.bq)
  %i.bs = shufflevector <8 x float> %i.bl, <8 x float> %i.bo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bt = shufflevector <8 x float> %i.br, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.bs, <16 x float> %i.bt, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.bi, align 4, !tbaa !61, !alias.scope !678, !noalias !679
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !670

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader.preheader, label %.preheader49.preheader123

.preheader49.preheader123:                        ; preds = %vector.memcheck, %.preheader49.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader49.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.preheader123, %.preheader49
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader49 ], [ %indvars.iv.ph, %.preheader49.preheader123 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv ; 6 uses
  %.promoted = load float, ptr %i.bw, align 4, !tbaa !61
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !61
  %i.by = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bx, float %.promoted) ; 2 uses
  store float %i.by, ptr %i.bw, align 4, !tbaa !61
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 3 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !61
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.ca, float %i.by) ; 2 uses
  store float %i.cb, ptr %i.bw, align 4, !tbaa !61
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !61
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.cd, float %i.cb)
  store float %i.ce, ptr %i.bw, align 4, !tbaa !61
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 4 uses
  %.promoted.1 = load float, ptr %i.cf, align 4, !tbaa !61
  %i.cg = load float, ptr %i.bv, align 4, !tbaa !61
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.as, float %i.cg, float %.promoted.1) ; 2 uses
  store float %i.ch, ptr %i.cf, align 4, !tbaa !61
  %i.ci = load float, ptr %i.bz, align 4, !tbaa !61
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ci, float %i.ch) ; 2 uses
  store float %i.cj, ptr %i.cf, align 4, !tbaa !61
  %i.ck = load float, ptr %i.cc, align 4, !tbaa !61
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.ck, float %i.cj)
  store float %i.cl, ptr %i.cf, align 4, !tbaa !61
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %.promoted.2 = load float, ptr %i.cm, align 4, !tbaa !61
  %i.cn = load float, ptr %i.bv, align 4, !tbaa !61
  %i.co = tail call float @llvm.fmuladd.f32(float %i.au, float %i.cn, float %.promoted.2) ; 2 uses
  store float %i.co, ptr %i.cm, align 4, !tbaa !61
  %i.cp = load float, ptr %i.bz, align 4, !tbaa !61
end_hunk_0
begin_hunk_1_@_ZL12align_with_zPA3_fiPf:bb.a
  %n.vec110 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next118, %vector.body111 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %index112
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index112
  %wide.vec113 = load <24 x float>, ptr %i.cu, align 4, !tbaa !61, !alias.scope !680
  store <24 x float> %wide.vec113, ptr %i.cv, align 4, !tbaa !61, !alias.scope !681, !noalias !680
  %index.next118 = add nuw i64 %index112, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next118, %n.vec110
  br i1 %i.cw, label %middle.block119, label %vector.body111, !llvm.loop !675

middle.block119:                                  ; preds = %vector.body111
  %cmp.n120 = icmp eq i64 %n.vec110, %wide.trip.count
  br i1 %cmp.n120, label %._crit_edge, label %.preheader.preheader122

.preheader.preheader122:                          ; preds = %vector.memcheck101, %.preheader.preheader, %middle.block119
  %indvars.iv62.ph = phi i64 [ 0, %vector.memcheck101 ], [ 0, %.preheader.preheader ], [ %n.vec110, %middle.block119 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader122, %.preheader.prol
  %indvars.iv62.prol = phi i64 [ %indvars.iv.next63.prol, %.preheader.prol ], [ %indvars.iv62.ph, %.preheader.preheader122 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader122 ]
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv62.prol ; 3 uses
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv62.prol ; 3 uses
  %i.cz = load float, ptr %i.cx, align 4, !tbaa !61
  store float %i.cz, ptr %i.cy, align 4, !tbaa !61
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !61
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store float %i.db, ptr %i.dc, align 4, !tbaa !61
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.de = load float, ptr %i.dd, align 4, !tbaa !61
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store float %i.de, ptr %i.df, align 4, !tbaa !61
  %indvars.iv.next63.prol = add nuw nsw i64 %indvars.iv62.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !676

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader122
  %indvars.iv62.unr = phi i64 [ %indvars.iv62.ph, %.preheader.preheader122 ], [ %indvars.iv.next63.prol, %.preheader.prol ]
  %i.dg = sub nsw i64 %indvars.iv62.ph, %wide.trip.count
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.3, %.preheader ], [ %indvars.iv62.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv62 ; 3 uses
  %i.dj = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv62 ; 3 uses
  %i.dk = load float, ptr %i.di, align 4, !tbaa !61
  store float %i.dk, ptr %i.dj, align 4, !tbaa !61
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !61
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store float %i.dm, ptr %i.dn, align 4, !tbaa !61
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !61
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store float %i.dp, ptr %i.dq, align 4, !tbaa !61
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.next63 ; 3 uses
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.next63 ; 3 uses
  %i.dt = load float, ptr %i.dr, align 4, !tbaa !61
  store float %i.dt, ptr %i.ds, align 4, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dv = load float, ptr %i.du, align 4, !tbaa !61
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store float %i.dv, ptr %i.dw, align 4, !tbaa !61
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !61
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store float %i.dy, ptr %i.dz, align 4, !tbaa !61
  %indvars.iv.next63.1 = add nuw nsw i64 %indvars.iv62, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.next63.1 ; 3 uses
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.next63.1 ; 3 uses
  %i.ec = load float, ptr %i.ea, align 4, !tbaa !61
  store float %i.ec, ptr %i.eb, align 4, !tbaa !61
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !61
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store float %i.ee, ptr %i.ef, align 4, !tbaa !61
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !61
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store float %i.eh, ptr %i.ei, align 4, !tbaa !61
  %indvars.iv.next63.2 = add nuw nsw i64 %indvars.iv62, 3 ; 2 uses
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.next63.2 ; 3 uses
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.next63.2 ; 3 uses
  %i.el = load float, ptr %i.ej, align 4, !tbaa !61
  store float %i.el, ptr %i.ek, align 4, !tbaa !61
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !61
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store float %i.en, ptr %i.eo, align 4, !tbaa !61
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !61
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store float %i.eq, ptr %i.er, align 4, !tbaa !61
  %indvars.iv.next63.3 = add nuw nsw i64 %indvars.iv62, 4 ; 2 uses
  %exitcond66.not.3 = icmp eq i64 %indvars.iv.next63.3, %wide.trip.count65
  br i1 %exitcond66.not.3, label %._crit_edge, label %.preheader, !llvm.loop !677

._crit_edge:                                      ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block119, %bb.a
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.2, i32 noundef 1398, ptr noundef %i.b)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #18

declare void @_Z6jacobiPPdiS_S0_Pi(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_pull_rotation.cpp() #23 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL6RotStrB5cxx11, i64 16), ptr @_ZL6RotStrB5cxx11, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 18, ptr %i.a, align 8, !tbaa !110
  %i.b = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL6RotStrB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.b, ptr @_ZL6RotStrB5cxx11, align 8, !tbaa !101
  %i.c = load i64, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL6RotStrB5cxx11, i64 16), align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.b, ptr noundef nonnull align 1 dereferenceable(18) @.str, i64 18, i1 false)
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL6RotStrB5cxx11, i64 8), align 8, !tbaa !112
  %i.d = load ptr, ptr @_ZL6RotStrB5cxx11, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  store i8 0, ptr %i.e, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL6RotStrB5cxx11, ptr nonnull @__dso_handle) #28 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr>, <4 x i1>, <4 x ptr>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { noreturn }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !36}
!1 = distinct !{!1, !36}
!2 = distinct !{!2, !36}
!3 = !{i32 7, !"openmp", i32 51}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS5t_rot", !12, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!15 = !{!"p1 float", !12, i64 0}
!16 = !{!"p1 _ZTS16sort_along_vec_t", !12, i64 0}
!17 = !{!"bool", !8, i64 0}
!18 = !{!"p1 _ZTS13gmx_enfrotgrp", !12, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseI13gmx_enfrotgrpSaIS0_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!"_ZTSNSt12_Vector_baseI13gmx_enfrotgrpSaIS0_EE12_Vector_implE", !19, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseI13gmx_enfrotgrpSaIS0_EE", !20, i64 0}
!22 = !{!"_ZTSSt6vectorI13gmx_enfrotgrpSaIS0_EE", !21, i64 0}
!23 = !{!"_ZTS10gmx_enfrot", !13, i64 0, !9, i64 8, !9, i64 12, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !9, i64 48, !15, i64 56, !15, i64 64, !16, i64 72, !15, i64 80, !15, i64 88, !9, i64 96, !17, i64 100, !17, i64 101, !22, i64 104}
!24 = !{!23, !14, i64 16}
!25 = !{!23, !14, i64 40}
!26 = !{!23, !14, i64 32}
!27 = !{!23, !14, i64 24}
!28 = !{!19, !18, i64 0}
!29 = !{!19, !18, i64 8}
!30 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !12, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!31, !30, i64 0}
!33 = !{!31, !30, i64 16}
!34 = !{!"p1 _ZTSN3gmx12LocalAtomSetE", !12, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!19, !18, i64 16}
!38 = !{!23, !13, i64 0}
!39 = !{!"p1 _ZTSN3gmx16EnforcedRotation4ImplE", !12, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!18, !18, i64 0}
!42 = !{!23, !9, i64 8}
!43 = !{!"p1 _ZTS8t_rotgrp", !12, i64 0}
!44 = !{!"float", !8, i64 0}
!45 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx12LocalAtomSetELb0EE", !34, i64 0}
!46 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx12LocalAtomSetESt14default_deleteIS1_EEE", !45, i64 0}
!47 = !{!"_ZTSSt5tupleIJPN3gmx12LocalAtomSetESt14default_deleteIS1_EEE", !46, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx12LocalAtomSetESt14default_deleteIS1_EE", !47, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx12LocalAtomSetESt14default_deleteIS1_ELb1ELb1EE", !48, i64 0}
!50 = !{!"_ZTSSt10unique_ptrIN3gmx12LocalAtomSetESt14default_deleteIS1_EE", !49, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !31, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !52, i64 0}
!54 = !{!"p1 int", !12, i64 0}
!55 = !{!"p1 _ZTS12gmx_slabdata", !12, i64 0}
!56 = !{!"p1 _ZTS10gmx_potfit", !12, i64 0}
!57 = !{!"_ZTS13gmx_enfrotgrp", !43, i64 0, !9, i64 8, !44, i64 12, !8, i64 16, !50, i64 56, !8, i64 64, !44, i64 76, !15, i64 80, !15, i64 88, !8, i64 96, !8, i64 108, !53, i64 120, !15, i64 144, !54, i64 152, !54, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !54, i64 192, !15, i64 200, !15, i64 208, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !15, i64 232, !15, i64 240, !15, i64 248, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !54, i64 280, !54, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !44, i64 328, !15, i64 336, !54, i64 344, !15, i64 352, !55, i64 360, !56, i64 368}
!58 = !{!57, !44, i64 76}
!59 = !{!57, !15, i64 80}
!60 = !{!9, !9, i64 0}
!61 = !{!44, !44, i64 0}
!62 = !{!23, !9, i64 12}
!63 = !{!23, !17, i64 101}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!"p1 _ZTS10tmpi_comm_", !12, i64 0}
!67 = !{!"p1 _ZTSN3gmx7MpiComm19HierarchicalReducerE", !12, i64 0}
!68 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx7MpiComm19HierarchicalReducerELb0EE", !67, i64 0}
!69 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !68, i64 0}
!70 = !{!"_ZTSSt5tupleIJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !69, i64 0}
!71 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_ELb1ELb1EE", !71, i64 0}
!73 = !{!"_ZTSSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !72, i64 0}
!74 = !{!"_ZTSN3gmx7MpiCommE", !66, i64 0, !9, i64 8, !9, i64 12, !73, i64 16}
!75 = !{!74, !9, i64 8}
!76 = !{!23, !9, i64 96}
!77 = !{!57, !43, i64 0}
!78 = !{!57, !9, i64 260}
!79 = !{!57, !9, i64 256}
!80 = !{!57, !44, i64 220}
!81 = !{!57, !44, i64 224}
!82 = !{!57, !44, i64 228}
!83 = !{!"_ZTS25EnforcedRotationGroupType", !8, i64 0}
!84 = !{!"_ZTS20RotationGroupFitting", !8, i64 0}
!85 = !{!"_ZTS8t_rotgrp", !83, i64 0, !17, i64 4, !9, i64 8, !54, i64 16, !53, i64 24, !8, i64 48, !44, i64 60, !44, i64 64, !8, i64 68, !84, i64 80, !9, i64 84, !44, i64 88, !44, i64 92, !44, i64 96, !44, i64 100}
!86 = !{!85, !84, i64 80}
!87 = !{!85, !9, i64 84}
!88 = !{!57, !56, i64 368}
!89 = !{!"_ZTS10gmx_potfit", !15, i64 0, !15, i64 8, !15, i64 16}
!90 = !{!89, !15, i64 8}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = !{!"branch_weights", i32 4, i32 28}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!85, !83, i64 0}
!96 = !{!57, !15, i64 320}
!97 = !{!"p1 omnipotent char", !12, i64 0}
!98 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !97, i64 0}
!99 = !{!"long", !8, i64 0}
!100 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !98, i64 0, !99, i64 8, !8, i64 16}
!101 = !{!100, !97, i64 0}
!102 = !{!74, !66, i64 0}
!103 = !{!74, !9, i64 12}
!104 = !{!89, !15, i64 0}
!105 = !{!57, !9, i64 8}
!106 = !{!57, !15, i64 312}
!107 = !{!85, !44, i64 96}
!108 = !{!57, !44, i64 12}
!109 = !{!98, !97, i64 0}
!110 = !{!99, !99, i64 0}
!111 = !{!8, !8, i64 0}
!112 = !{!100, !99, i64 8}
!113 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !12, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!97, !97, i64 0}
!116 = !{!85, !44, i64 92}
!117 = !{!"double", !8, i64 0}
!118 = !{!30, !30, i64 0}
!119 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!120 = !{i64 0, i64 12, !111}
!121 = !{!85, !9, i64 8}
!122 = !{!15, !15, i64 0}
!123 = !{!57, !15, i64 200}
!124 = !{!57, !44, i64 216}
!125 = !{!85, !44, i64 60}
!126 = !{!57, !15, i64 168}
!127 = !{!57, !44, i64 328}
!128 = !{!57, !9, i64 264}
!129 = !{!57, !9, i64 268}
!130 = !{!57, !55, i64 360}
!131 = !{!57, !15, i64 88}
!132 = !{!85, !44, i64 64}
!133 = !{!85, !44, i64 100}
!134 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!136 = !{!135, !134, i64 8}
!137 = !{!135, !134, i64 16}
!138 = !{!135, !134, i64 0}
!139 = !{!57, !15, i64 296}
!140 = !{!57, !15, i64 304}
!141 = !{!57, !15, i64 144}
!142 = !{!57, !54, i64 152}
!143 = !{!89, !15, i64 16}
!144 = !{!"_ZTS16sort_along_vec_t", !44, i64 0, !9, i64 4, !44, i64 8, !8, i64 12, !8, i64 24}
!145 = !{!144, !44, i64 0}
!146 = !{i64 0, i64 4, !61, i64 4, i64 4, !60, i64 8, i64 4, !61, i64 12, i64 12, !111, i64 24, i64 12, !111}
!147 = !{!57, !54, i64 344}
!148 = !{!57, !15, i64 336}
!149 = distinct !{!149, !36}
!150 = distinct !{!150, !36, !91, !92}
!151 = distinct !{!151, !36, !91, !92}
!152 = distinct !{!152, !94}
!153 = distinct !{!153, !36, !91}
!154 = distinct !{!154, !36, !91, !92}
!155 = distinct !{!155, !36, !91, !92}
!156 = distinct !{!156, !94}
!157 = distinct !{!157, !36, !91}
!158 = distinct !{!158, !36, !91, !92}
!159 = distinct !{!159, !36, !91, !92}
!160 = distinct !{!160, !94}
end_hunk_1
