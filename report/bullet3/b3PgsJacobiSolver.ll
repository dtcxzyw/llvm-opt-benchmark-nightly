inline.NumInlined: 892
inline.NumDeleted: 188
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN17b3PgsJacobiSolver28solveGroupCacheFriendlySetupEP15b3RigidBodyDataP13b3InertiaDataiP10b3Contact4iPP17b3TypedConstraintiRK19b3ContactSolverInfo:bb.a
  br i1 %i.kw, label %.lr.ph617.preheader, label %._crit_edge618

.lr.ph617.preheader:                              ; preds = %.preheader582
  %wide.trip.count657 = zext nneg i32 %5 to i64
  br label %.lr.ph617

bb.by:                                            ; preds = %.lr.ph615, %bb.co
  %i.sv = phi ptr [ %.pre683, %.lr.ph615 ], [ %i.aav, %bb.co ] ; 2 uses
  %indvars.iv649 = phi i64 [ 0, %.lr.ph615 ], [ %indvars.iv.next650, %bb.co ] ; 4 uses
  %.0258613 = phi i32 [ 0, %.lr.ph615 ], [ %i.aaw, %bb.co ] ; 2 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv649 ; 5 uses
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !150
  %.not265 = icmp eq i32 %i.sx, 0
  br i1 %.not265, label %bb.co, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.sy = load ptr, ptr %i.sc, align 8, !tbaa !34
  %i.sz = sext i32 %.0258613 to i64
  %i.ta = getelementptr inbounds [160 x i8], ptr %i.sy, i64 %i.sz ; 9 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv649 ; 3 uses
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !134 ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 36 ; 2 uses
  %i.te = load i32, ptr %i.td, align 4, !tbaa !140 ; 2 uses
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [80 x i8], ptr %1, i64 %i.tf ; 7 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 40 ; 3 uses
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !136
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [80 x i8], ptr %1, i64 %i.tj ; 7 uses
  %i.tl = invoke noundef i32 @_ZN17b3PgsJacobiSolver19getOrInitSolverBodyEiP15b3RigidBodyDataP13b3InertiaData(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %i.te, ptr noundef %1, ptr poison)
          to label %bb.ca unwind label %bb.cf     ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %i.tm = load i32, ptr %i.th, align 8, !tbaa !136
  %i.tn = invoke noundef i32 @_ZN17b3PgsJacobiSolver19getOrInitSolverBodyEiP15b3RigidBodyDataP13b3InertiaData(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %i.tm, ptr noundef %1, ptr poison)
          to label %bb.cb unwind label %bb.cg     ; 2 uses

bb.cb:                                            ; preds = %bb.ca
  %i.to = load ptr, ptr %i.sd, align 8, !tbaa !27 ; 2 uses
  %i.tp = sext i32 %i.tl to i64
  %i.tq = getelementptr inbounds [240 x i8], ptr %i.to, i64 %i.tp ; 2 uses
  %i.tr = sext i32 %i.tn to i64
  %i.ts = getelementptr inbounds [240 x i8], ptr %i.to, i64 %i.tr ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tc, i64 32
  %i.tu = load i32, ptr %i.tt, align 16, !tbaa !154 ; 2 uses
  %i.tv = icmp sgt i32 %i.tu, 0
  br i1 %i.tv, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.tw = load i32, ptr %i.se, align 4, !tbaa !70
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.tx = phi i32 [ %i.tw, %bb.cc ], [ %i.tu, %bb.cb ] ; 3 uses
  %i.ty = load i32, ptr %i.a, align 4, !tbaa !116
  %i.tz = icmp sgt i32 %i.tx, %i.ty
  br i1 %i.tz, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  store i32 %i.tx, ptr %i.a, align 4, !tbaa !116
  br label %bb.ch

bb.cf:                                            ; preds = %bb.bz
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.cg:                                            ; preds = %bb.ca
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.ch:                                            ; preds = %bb.ce, %bb.cd
  %i.uc = load i32, ptr %i.sw, align 4, !tbaa !150
  %i.ud = icmp sgt i32 %i.uc, 0
  br i1 %i.ud, label %.lr.ph608, label %._crit_edge609

.lr.ph608:                                        ; preds = %bb.ch, %.lr.ph608
  %indvars.iv643 = phi i64 [ %indvars.iv.next644, %.lr.ph608 ], [ 0, %bb.ch ] ; 2 uses
  %i.ue = getelementptr inbounds nuw [160 x i8], ptr %i.ta, i64 %indvars.iv643 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.ue, i8 0, i64 160, i1 false)
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 112
  store <2 x float> <float f0xFF7FFFFF, float f0x7F7FFFFF>, ptr %i.uf, align 16, !tbaa !14
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 80
  store float 0.000000e+00, ptr %i.ug, align 16, !tbaa !80
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 144
  store i32 %i.tl, ptr %i.uh, align 16, !tbaa !89
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 148
  store i32 %i.tn, ptr %i.ui, align 4, !tbaa !90
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ue, i64 136
  store i32 %i.tx, ptr %i.uj, align 8, !tbaa !155
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 2 uses
  %i.uk = load i32, ptr %i.sw, align 4, !tbaa !150
  %i.ul = sext i32 %i.uk to i64
  %i.um = icmp slt i64 %indvars.iv.next644, %i.ul
  br i1 %i.um, label %.lr.ph608, label %._crit_edge609, !llvm.loop !156

._crit_edge609:                                   ; preds = %.lr.ph608, %bb.ch
  %i.un = getelementptr inbounds nuw i8, ptr %i.tq, i64 64
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tq, i64 144
  %i.up = getelementptr inbounds nuw i8, ptr %i.ts, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.un, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.uo, i8 0, i64 32, i1 false)
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ts, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.up, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.uq, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ur = load float, ptr %i.sf, align 4, !tbaa !104
  %i.us = fdiv float 1.000000e+00, %i.ur
  store float %i.us, ptr %9, align 8, !tbaa !157
  %i.ut = load float, ptr %i.sg, align 4, !tbaa !160
  store float %i.ut, ptr %i.sh, align 4, !tbaa !161
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  store ptr %i.uu, ptr %i.si, align 8, !tbaa !162
  store ptr %i.ta, ptr %i.sj, align 8, !tbaa !163
  store ptr null, ptr %i.sk, align 8, !tbaa !164
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ta, i64 32
  store ptr %i.uv, ptr %i.sl, align 8, !tbaa !165
  store i32 40, ptr %i.sm, align 8, !tbaa !166
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ta, i64 104
  store ptr %i.uw, ptr %i.sn, align 8, !tbaa !167
  %i.ux = load float, ptr %i.so, align 4, !tbaa !66
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ta, i64 108 ; 2 uses
  store float %i.ux, ptr %i.uy, align 4, !tbaa !75
  %i.uz = load float, ptr %i.sp, align 4, !tbaa !168
  store float %i.uz, ptr %i.sq, align 4, !tbaa !169
  store ptr %i.uy, ptr %i.sr, align 8, !tbaa !170
  %i.va = getelementptr inbounds nuw i8, ptr %i.ta, i64 112
  store ptr %i.va, ptr %i.ss, align 8, !tbaa !171
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ta, i64 116
  store ptr %i.vb, ptr %i.st, align 8, !tbaa !172
  %i.vc = load i32, ptr %i.se, align 4, !tbaa !70
  store i32 %i.vc, ptr %i.su, align 8, !tbaa !173
  %i.vd = load ptr, ptr %i.tb, align 8, !tbaa !134 ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 16, !tbaa !20
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 32
  %i.vg = load ptr, ptr %i.vf, align 8
  invoke void %i.vg(ptr noundef nonnull align 16 dereferenceable(64) %i.vd, ptr noundef nonnull %9, ptr noundef %1)
          to label %.preheader583 unwind label %bb.ck

.preheader583:                                    ; preds = %._crit_edge609
  %i.vh = load i32, ptr %i.sw, align 4, !tbaa !150
  %i.vi = icmp sgt i32 %i.vh, 0
  br i1 %i.vi, label %.lr.ph611, label %._crit_edge612

.lr.ph611:                                        ; preds = %.preheader583
  %i.vj = getelementptr inbounds nuw i8, ptr %i.tg, i64 68
  %i.vk = getelementptr inbounds nuw i8, ptr %i.tk, i64 68
  %i.vl = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  %i.vm = getelementptr inbounds nuw i8, ptr %i.tg, i64 36
  %i.vn = getelementptr inbounds nuw i8, ptr %i.tg, i64 40
  %i.vo = getelementptr inbounds nuw i8, ptr %i.tg, i64 48
  %i.vp = getelementptr inbounds nuw i8, ptr %i.tg, i64 52
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tg, i64 56
  %i.vr = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.vs = getelementptr inbounds nuw i8, ptr %i.tk, i64 36
  %i.vt = getelementptr inbounds nuw i8, ptr %i.tk, i64 40
  %i.vu = getelementptr inbounds nuw i8, ptr %i.tk, i64 48
  %i.vv = getelementptr inbounds nuw i8, ptr %i.tk, i64 52
  %i.vw = getelementptr inbounds nuw i8, ptr %i.tk, i64 56
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph611, %bb.cn
  %indvars.iv646 = phi i64 [ 0, %.lr.ph611 ], [ %indvars.iv.next647, %bb.cn ] ; 2 uses
  %i.vx = getelementptr inbounds nuw [160 x i8], ptr %i.ta, i64 %indvars.iv646 ; 19 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 116 ; 2 uses
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !78
  %i.wa = load ptr, ptr %i.tb, align 8, !tbaa !134
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 24
  %i.wc = load float, ptr %i.wb, align 8, !tbaa !174 ; 3 uses
  %i.wd = fcmp ult float %i.vz, %i.wc
  br i1 %i.wd, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store float %i.wc, ptr %i.vy, align 4, !tbaa !78
  br label %bb.cl

bb.ck:                                            ; preds = %._crit_edge609
  %i.we = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.dn

bb.cl:                                            ; preds = %bb.cj, %bb.ci
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vx, i64 112 ; 2 uses
  %i.wg = load float, ptr %i.wf, align 16, !tbaa !77
  %i.wh = fneg float %i.wc                        ; 2 uses
  %i.wi = fcmp ugt float %i.wg, %i.wh
  br i1 %i.wi, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  store float %i.wh, ptr %i.wf, align 16, !tbaa !77
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vx, i64 128
  store ptr %i.tc, ptr %i.wj, align 16, !tbaa !17
  %i.wk = load i32, ptr %i.td, align 4, !tbaa !140
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [96 x i8], ptr %2, i64 %i.wl ; 10 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 8 ; 2 uses
  %i.wq = load float, ptr %i.wp, align 8, !tbaa !17
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.ws = load float, ptr %i.wr, align 8, !tbaa !17 ; 7 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wm, i64 16 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wm, i64 20
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wm, i64 24 ; 2 uses
  %i.ww = load float, ptr %i.wv, align 8, !tbaa !17
  %i.wx = load <2 x float>, ptr %i.wm, align 16, !tbaa !17 ; 2 uses
  %i.wy = load <2 x float>, ptr %i.wt, align 16, !tbaa !17 ; 2 uses
  %10 = shufflevector <2 x float> %i.wx, <2 x float> %i.wy, <2 x i32> <i32 1, i32 3>
  %11 = shufflevector <2 x float> %i.wx, <2 x float> %i.wy, <2 x i32> <i32 0, i32 2>
  %12 = insertelement <2 x float> poison, float %i.wq, i64 0
  %13 = insertelement <2 x float> %12, float %i.ww, i64 1
  %i.wz = insertelement <2 x float> poison, float %i.ws, i64 0
  %i.xa = shufflevector <2 x float> %i.wz, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = getelementptr inbounds nuw i8, ptr %i.wm, i64 32 ; 2 uses
  %15 = load float, ptr %14, align 16, !tbaa !17
  %16 = getelementptr inbounds nuw i8, ptr %i.wm, i64 36 ; 2 uses
  %17 = load float, ptr %16, align 4, !tbaa !17
  %18 = getelementptr inbounds nuw i8, ptr %i.wm, i64 40 ; 2 uses
  %19 = load float, ptr %18, align 8, !tbaa !17
  %20 = getelementptr inbounds nuw i8, ptr %i.vx, i64 48
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vx, i64 56
  %21 = getelementptr inbounds nuw i8, ptr %i.vx, i64 32
  %22 = getelementptr inbounds nuw i8, ptr %i.vx, i64 36
  %23 = getelementptr inbounds nuw i8, ptr %i.vx, i64 40
  %24 = load float, ptr %23, align 8, !tbaa !17   ; 7 uses
  %i.xb = insertelement <2 x float> poison, float %24, i64 0
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = getelementptr inbounds nuw i8, ptr %i.vx, i64 64
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vx, i64 72
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %26 = getelementptr inbounds nuw i8, ptr %i.vx, i64 20
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  %i.xf = load float, ptr %i.xe, align 8, !tbaa !17 ; 5 uses
  %27 = load <2 x float>, ptr %i.vx, align 16, !tbaa !17 ; 5 uses
  %28 = load float, ptr %i.wo, align 4, !tbaa !17 ; 5 uses
  %29 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %30 = fmul <2 x float> %29, %10
  %31 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %31, <2 x float> %30)
  %33 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %i.xa, <2 x float> %32)
  %34 = fmul float %28, %17
  %35 = extractelement <2 x float> %27, i64 0     ; 5 uses
  %36 = call float @llvm.fmuladd.f32(float %15, float %35, float %34)
  %37 = call noundef float @llvm.fmuladd.f32(float %19, float %i.ws, float %36)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %37, i64 0
  store <2 x float> %33, ptr %20, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !17
  %38 = load i32, ptr %i.th, align 8, !tbaa !136
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [96 x i8], ptr %2, i64 %39 ; 10 uses
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 4
  %42 = load <2 x float>, ptr %21, align 16, !tbaa !17 ; 4 uses
  %i.xg = load float, ptr %22, align 4, !tbaa !17 ; 5 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.xi = load float, ptr %i.xh, align 8, !tbaa !17
  %i.xj = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %40, i64 20
  %i.xl = getelementptr inbounds nuw i8, ptr %40, i64 24 ; 2 uses
  %i.xm = load float, ptr %i.xl, align 8, !tbaa !17
  %i.xn = load <2 x float>, ptr %40, align 16, !tbaa !17 ; 2 uses
  %i.xo = load <2 x float>, ptr %i.xj, align 16, !tbaa !17 ; 2 uses
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xp = shufflevector <2 x float> %i.xn, <2 x float> %i.xo, <2 x i32> <i32 1, i32 3>
  %i.xq = fmul <2 x float> %43, %i.xp
  %i.xr = shufflevector <2 x float> %i.xn, <2 x float> %i.xo, <2 x i32> <i32 0, i32 2>
  %i.xs = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xr, <2 x float> %i.xs, <2 x float> %i.xq)
  %i.xu = insertelement <2 x float> poison, float %i.xi, i64 0
  %i.xv = insertelement <2 x float> %i.xu, float %i.xm, i64 1
  %i.xw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xv, <2 x float> %i.xc, <2 x float> %i.xt)
  %i.xx = getelementptr inbounds nuw i8, ptr %40, i64 32 ; 2 uses
  %i.xy = load float, ptr %i.xx, align 16, !tbaa !17
  %i.xz = getelementptr inbounds nuw i8, ptr %40, i64 36 ; 2 uses
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !17
  %i.yb = fmul float %i.xg, %i.ya
  %44 = extractelement <2 x float> %42, i64 0     ; 5 uses
  %i.yc = call float @llvm.fmuladd.f32(float %i.xy, float %44, float %i.yb)
  %i.yd = getelementptr inbounds nuw i8, ptr %40, i64 40 ; 2 uses
  %i.ye = load float, ptr %i.yd, align 8, !tbaa !17
  %i.yf = call noundef float @llvm.fmuladd.f32(float %i.ye, float %24, float %i.yc)
  %.sroa.3.12.vec.insert.i.i443 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.yf, i64 0
  store <2 x float> %i.xw, ptr %25, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i443, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17
  %45 = load float, ptr %i.vj, align 4, !tbaa !14 ; 3 uses
  %46 = load <2 x float>, ptr %i.xd, align 16, !tbaa !17 ; 3 uses
  %47 = load float, ptr %26, align 4, !tbaa !17   ; 4 uses
  %48 = load float, ptr %i.wn, align 4, !tbaa !17
  %i.yg = load float, ptr %i.wm, align 16, !tbaa !17
  %i.yh = load float, ptr %i.wp, align 8, !tbaa !17
  %49 = load float, ptr %i.wu, align 4, !tbaa !17
  %50 = load float, ptr %i.wt, align 16, !tbaa !17
  %i.yi = load float, ptr %i.wv, align 8, !tbaa !17
  %51 = load float, ptr %16, align 4, !tbaa !17
  %52 = load float, ptr %14, align 16, !tbaa !17
  %i.yj = load float, ptr %18, align 8, !tbaa !17
  %53 = load float, ptr %i.vk, align 4, !tbaa !14 ; 3 uses
  %i.yk = load float, ptr %41, align 4, !tbaa !17
  %i.yl = load float, ptr %40, align 16, !tbaa !17
  %54 = fmul float %i.xg, %i.yk
  %55 = extractelement <2 x float> %46, i64 0     ; 4 uses
  %56 = fmul float %55, %53
  %57 = fmul float %28, %48
  %i.ym = fmul float %55, %45
  %58 = call float @llvm.fmuladd.f32(float %i.yl, float %44, float %54)
  %i.yn = call float @llvm.fmuladd.f32(float %i.yg, float %35, float %57)
  %i.yo = load float, ptr %i.xh, align 8, !tbaa !17
  %59 = call noundef float @llvm.fmuladd.f32(float %i.yo, float %24, float %58)
  %i.yp = call noundef float @llvm.fmuladd.f32(float %i.yh, float %i.ws, float %i.yn)
  %i.yq = load float, ptr %i.xk, align 4, !tbaa !17
  %i.yr = load float, ptr %i.xj, align 16, !tbaa !17
  %60 = fmul float %i.xg, %i.yq
  %i.ys = fmul float %47, %53
  %61 = fmul float %28, %49
  %62 = fmul float %45, %47
  %i.yt = call float @llvm.fmuladd.f32(float %i.yr, float %44, float %60)
  %63 = call float @llvm.fmuladd.f32(float %50, float %35, float %61)
  %i.yu = load float, ptr %i.xl, align 8, !tbaa !17
  %64 = call noundef float @llvm.fmuladd.f32(float %i.yu, float %24, float %i.yt)
  %i.yv = call noundef float @llvm.fmuladd.f32(float %i.yi, float %i.ws, float %63)
  %i.yw = load float, ptr %i.xz, align 4, !tbaa !17
  %65 = load float, ptr %i.xx, align 16, !tbaa !17
  %66 = fmul float %i.xg, %i.yw
  %i.yx = fmul float %i.xf, %53
  %i.yy = fmul float %28, %51
  %i.yz = fmul float %45, %i.xf
  %67 = call float @llvm.fmuladd.f32(float %65, float %44, float %66)
  %68 = call float @llvm.fmuladd.f32(float %52, float %35, float %i.yy)
  %i.za = load float, ptr %i.yd, align 8, !tbaa !17
  %69 = call noundef float @llvm.fmuladd.f32(float %i.za, float %24, float %67)
  %i.zb = call noundef float @llvm.fmuladd.f32(float %i.yj, float %i.ws, float %68)
  %70 = shufflevector <2 x float> %46, <2 x float> %27, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %71 = shufflevector <2 x float> %42, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %72 = shufflevector <4 x float> %70, <4 x float> %71, <4 x i32> <i32 0, i32 1, i32 0, i32 5>
  %73 = insertelement <4 x float> poison, float %62, i64 0
  %74 = insertelement <4 x float> %73, float %i.yv, i64 1
  %75 = insertelement <4 x float> %74, float %i.ys, i64 2
  %76 = insertelement <4 x float> %75, float %64, i64 3
  %77 = fmul <4 x float> %72, %76
  %78 = insertelement <4 x float> poison, float %i.ym, i64 0
  %79 = insertelement <4 x float> %78, float %i.yp, i64 1
  %80 = insertelement <4 x float> %79, float %56, i64 2
  %81 = insertelement <4 x float> %80, float %59, i64 3
  %82 = shufflevector <2 x float> %46, <2 x float> %27, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %83 = shufflevector <4 x float> %82, <4 x float> %71, <4 x i32> <i32 0, i32 1, i32 0, i32 4>
  %84 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %81, <4 x float> %83, <4 x float> %77)
  %85 = insertelement <4 x float> poison, float %i.yz, i64 0
  %86 = insertelement <4 x float> %85, float %i.zb, i64 1
  %87 = insertelement <4 x float> %86, float %i.yx, i64 2
  %88 = insertelement <4 x float> %87, float %69, i64 3
  %89 = insertelement <4 x float> poison, float %i.xf, i64 0
  %90 = insertelement <4 x float> %89, float %i.ws, i64 1
  %91 = insertelement <4 x float> %90, float %24, i64 2
  %92 = shufflevector <4 x float> %91, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %93 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %88, <4 x float> %92, <4 x float> %84) ; 4 uses
  %shift = shufflevector <4 x float> %93, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %93, %shift
  %shift877 = shufflevector <4 x float> %93, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop878 = fadd <4 x float> %foldExtExtBinop, %shift877
  %shift880 = shufflevector <4 x float> %93, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop881 = fadd <4 x float> %foldExtExtBinop878, %shift880
  %94 = extractelement <4 x float> %foldExtExtBinop881, i64 0 ; 2 uses
  %i.zc = call noundef float @llvm.fabs.f32(float %94)
  %i.zd = fcmp ogt float %i.zc, f0x34000000
  %i.ze = fdiv float 1.000000e+00, %94
  %i.zf = select i1 %i.zd, float %i.ze, float 0.000000e+00 ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.vx, i64 100
  store float %i.zf, ptr %i.zg, align 4, !tbaa !76
  %i.zh = load float, ptr %i.vl, align 16, !tbaa !17
  %i.zi = load float, ptr %i.vm, align 4, !tbaa !17
  %i.zj = fmul float %47, %i.zi
  %i.zk = call float @llvm.fmuladd.f32(float %55, float %i.zh, float %i.zj)
  %i.zl = load float, ptr %i.vn, align 8, !tbaa !17
  %i.zm = call noundef float @llvm.fmuladd.f32(float %i.xf, float %i.zl, float %i.zk)
  %i.zn = load float, ptr %i.vo, align 16, !tbaa !17
  %i.zo = load float, ptr %i.vp, align 4, !tbaa !17
  %i.zp = fmul float %28, %i.zo
  %i.zq = call float @llvm.fmuladd.f32(float %35, float %i.zn, float %i.zp)
  %i.zr = load float, ptr %i.vq, align 8, !tbaa !17
  %i.zs = call noundef float @llvm.fmuladd.f32(float %i.ws, float %i.zr, float %i.zq)
  %i.zt = fadd float %i.zm, %i.zs
  %i.zu = load float, ptr %i.vr, align 16, !tbaa !17
  %i.zv = load float, ptr %i.vs, align 4, !tbaa !17
  %i.zw = fmul float %47, %i.zv
  %i.zx = call float @llvm.fmuladd.f32(float %55, float %i.zu, float %i.zw)
  %i.zy = load float, ptr %i.vt, align 8, !tbaa !17
  %i.zz = call noundef float @llvm.fmuladd.f32(float %i.xf, float %i.zy, float %i.zx)
  %i.aaa = load float, ptr %i.vu, align 16, !tbaa !17
  %i.aab = load float, ptr %i.vv, align 4, !tbaa !17
  %i.aac = fmul float %i.xg, %i.aab
  %i.aad = call float @llvm.fmuladd.f32(float %44, float %i.aaa, float %i.aac)
  %i.aae = load float, ptr %i.vw, align 8, !tbaa !17
  %i.aaf = call noundef float @llvm.fmuladd.f32(float %24, float %i.aae, float %i.aad)
  %i.aag = fsub float %i.aaf, %i.zz
  %i.aah = fadd float %i.zt, %i.aag
  %i.aai = getelementptr inbounds nuw i8, ptr %i.vx, i64 104 ; 2 uses
  %i.aaj = load float, ptr %i.aai, align 8, !tbaa !72
  %i.aak = load float, ptr %i.sq, align 4, !tbaa !169
  %i.aal = fneg float %i.aah
  %i.aam = call float @llvm.fmuladd.f32(float %i.aal, float %i.aak, float 0.000000e+00)
  %i.aan = fmul float %i.zf, %i.aaj
  %i.aao = fmul float %i.zf, %i.aam
  %i.aap = fadd float %i.aan, %i.aao
  store float %i.aap, ptr %i.aai, align 8, !tbaa !72
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.vx, i64 84
  store float 0.000000e+00, ptr %i.aaq, align 4, !tbaa !74
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1 ; 2 uses
  %i.aar = load i32, ptr %i.sw, align 4, !tbaa !150
  %i.aas = sext i32 %i.aar to i64
  %i.aat = icmp slt i64 %indvars.iv.next647, %i.aas
  br i1 %i.aat, label %bb.ci, label %._crit_edge612, !llvm.loop !175

._crit_edge612:                                   ; preds = %bb.cn, %.preheader583
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.pre684 = load ptr, ptr %i.sb, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert685 = getelementptr inbounds nuw [8 x i8], ptr %.pre684, i64 %indvars.iv649
  %.pre686 = load i32, ptr %.phi.trans.insert685, align 4, !tbaa !150
  br label %bb.co

bb.co:                                            ; preds = %._crit_edge612, %bb.by
  %i.aau = phi i32 [ %.pre686, %._crit_edge612 ], [ 0, %bb.by ]
  %i.aav = phi ptr [ %.pre684, %._crit_edge612 ], [ %i.sv, %bb.by ]
  %i.aaw = add nsw i32 %i.aau, %.0258613
  %indvars.iv.next650 = add nuw nsw i64 %indvars.iv649, 1 ; 2 uses
  %exitcond653.not = icmp eq i64 %indvars.iv.next650, %wide.trip.count652
  br i1 %exitcond653.not, label %.preheader582, label %bb.by, !llvm.loop !176

.lr.ph617:                                        ; preds = %.lr.ph617.preheader, %bb.cp
  %indvars.iv654 = phi i64 [ 0, %.lr.ph617.preheader ], [ %indvars.iv.next655, %bb.cp ] ; 2 uses
  %i.aax = getelementptr inbounds nuw [112 x i8], ptr %4, i64 %indvars.iv654
  invoke void @_ZN17b3PgsJacobiSolver14convertContactEP15b3RigidBodyDataP13b3InertiaDataP10b3Contact4RK19b3ContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.aax, ptr noundef nonnull align 4 dereferenceable(84) %8)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %.lr.ph617
  %indvars.iv.next655 = add nuw nsw i64 %indvars.iv654, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %indvars.iv.next655, %wide.trip.count657
  br i1 %exitcond658.not, label %._crit_edge618, label %.lr.ph617, !llvm.loop !177

bb.cq:                                            ; preds = %.lr.ph617
  %i.aay = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

._crit_edge618:                                   ; preds = %bb.cp, %.preheader582
  %i.aaz = load i32, ptr %i.qy, align 4, !tbaa !35 ; 12 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !35 ; 14 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !35 ; 12 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 4 uses
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !42
  %i.abg = icmp sgt i32 %i.aaz, %i.abf
  br i1 %i.abg, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %._crit_edge618
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.abi = load i32, ptr %i.abh, align 8, !tbaa !43
  %i.abj = icmp slt i32 %i.abi, %i.aaz
  br i1 %i.abj, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %.not.i.i.i466 = icmp eq i32 %i.aaz, 0
  br i1 %.not.i.i.i466, label %.split7.i.i479, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i467

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i467: ; preds = %bb.cs
  %i.abk = sext i32 %i.aaz to i64
  %i.abl = shl nsw i64 %i.abk, 2
  %i.abm = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.abl, i32 noundef 16)
          to label %.noexc480 unwind label %bb.db ; 12 uses

.noexc480:                                        ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i467
  %i.abn = ptrtoaddr ptr %i.abm to i64
  %i.abo = icmp eq ptr %i.abm, null
  br i1 %i.abo, label %.split7.i.i479, label %.split.i.i468

.split.i.i468:                                    ; preds = %.noexc480
  %i.abp = load i32, ptr %i.abe, align 4, !tbaa !42 ; 3 uses
  %i.abq = icmp sgt i32 %i.abp, 0
  br i1 %i.abq, label %.lr.ph.i.i.i474, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469

.lr.ph.i.i.i474:                                  ; preds = %.split.i.i468
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count.i.i.i475 = zext nneg i32 %i.abp to i64 ; 5 uses
  %min.iters.check769 = icmp ult i32 %i.abp, 8
  %i.abt = ptrtoaddr ptr %i.abs to i64
  %i.abu = sub i64 %i.abt, %i.abn
  %diff.check767 = icmp ugt i64 %i.abu, -32
  %or.cond869 = select i1 %min.iters.check769, i1 true, i1 %diff.check767
  br i1 %or.cond869, label %scalar.ph768.preheader, label %vector.ph770

vector.ph770:                                     ; preds = %.lr.ph.i.i.i474
  %n.vec772 = and i64 %wide.trip.count.i.i.i475, 2147483640 ; 3 uses
  br label %vector.body773

vector.body773:                                   ; preds = %vector.body773, %vector.ph770
  %index774 = phi i64 [ 0, %vector.ph770 ], [ %index.next777, %vector.body773 ] ; 3 uses
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %index774 ; 2 uses
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %index774 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  %wide.load775 = load <4 x i32>, ptr %i.abw, align 4, !tbaa !94
  %wide.load776 = load <4 x i32>, ptr %i.abx, align 4, !tbaa !94
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  store <4 x i32> %wide.load775, ptr %i.abv, align 4, !tbaa !94
  store <4 x i32> %wide.load776, ptr %i.aby, align 4, !tbaa !94
  %index.next777 = add nuw i64 %index774, 8       ; 2 uses
  %i.abz = icmp eq i64 %index.next777, %n.vec772
  br i1 %i.abz, label %middle.block778, label %vector.body773, !llvm.loop !178

middle.block778:                                  ; preds = %vector.body773
  %cmp.n779 = icmp eq i64 %n.vec772, %wide.trip.count.i.i.i475
  br i1 %cmp.n779, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469, label %scalar.ph768.preheader

scalar.ph768.preheader:                           ; preds = %.lr.ph.i.i.i474, %middle.block778
  %indvars.iv.i.i.i476.ph = phi i64 [ 0, %.lr.ph.i.i.i474 ], [ %n.vec772, %middle.block778 ] ; 3 uses
  %xtraiter949 = and i64 %wide.trip.count.i.i.i475, 3 ; 2 uses
  %lcmp.mod950.not = icmp eq i64 %xtraiter949, 0
  br i1 %lcmp.mod950.not, label %scalar.ph768.prol.loopexit, label %scalar.ph768.prol

scalar.ph768.prol:                                ; preds = %scalar.ph768.preheader, %scalar.ph768.prol
  %indvars.iv.i.i.i476.prol = phi i64 [ %indvars.iv.next.i.i.i477.prol, %scalar.ph768.prol ], [ %indvars.iv.i.i.i476.ph, %scalar.ph768.preheader ] ; 3 uses
  %prol.iter951 = phi i64 [ %prol.iter951.next, %scalar.ph768.prol ], [ 0, %scalar.ph768.preheader ]
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv.i.i.i476.prol
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %indvars.iv.i.i.i476.prol
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !94
  store i32 %i.acc, ptr %i.aca, align 4, !tbaa !94
  %indvars.iv.next.i.i.i477.prol = add nuw nsw i64 %indvars.iv.i.i.i476.prol, 1 ; 2 uses
  %prol.iter951.next = add i64 %prol.iter951, 1   ; 2 uses
  %prol.iter951.cmp.not = icmp eq i64 %prol.iter951.next, %xtraiter949
  br i1 %prol.iter951.cmp.not, label %scalar.ph768.prol.loopexit, label %scalar.ph768.prol, !llvm.loop !179

scalar.ph768.prol.loopexit:                       ; preds = %scalar.ph768.prol, %scalar.ph768.preheader
  %indvars.iv.i.i.i476.unr = phi i64 [ %indvars.iv.i.i.i476.ph, %scalar.ph768.preheader ], [ %indvars.iv.next.i.i.i477.prol, %scalar.ph768.prol ]
  %i.acd = sub nsw i64 %indvars.iv.i.i.i476.ph, %wide.trip.count.i.i.i475
  %i.ace = icmp ugt i64 %i.acd, -4
  br i1 %i.ace, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469, label %scalar.ph768

scalar.ph768:                                     ; preds = %scalar.ph768.prol.loopexit, %scalar.ph768
  %indvars.iv.i.i.i476 = phi i64 [ %indvars.iv.next.i.i.i477.3, %scalar.ph768 ], [ %indvars.iv.i.i.i476.unr, %scalar.ph768.prol.loopexit ] ; 6 uses
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv.i.i.i476
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %indvars.iv.i.i.i476
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !94
  store i32 %i.ach, ptr %i.acf, align 4, !tbaa !94
  %indvars.iv.next.i.i.i477 = add nuw nsw i64 %indvars.iv.i.i.i476, 1 ; 2 uses
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv.next.i.i.i477
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %indvars.iv.next.i.i.i477
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !94
  store i32 %i.ack, ptr %i.aci, align 4, !tbaa !94
  %indvars.iv.next.i.i.i477.1 = add nuw nsw i64 %indvars.iv.i.i.i476, 2 ; 2 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv.next.i.i.i477.1
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %indvars.iv.next.i.i.i477.1
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !94
  store i32 %i.acn, ptr %i.acl, align 4, !tbaa !94
  %indvars.iv.next.i.i.i477.2 = add nuw nsw i64 %indvars.iv.i.i.i476, 3 ; 2 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %indvars.iv.next.i.i.i477.2
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %indvars.iv.next.i.i.i477.2
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !94
  store i32 %i.acq, ptr %i.aco, align 4, !tbaa !94
  %indvars.iv.next.i.i.i477.3 = add nuw nsw i64 %indvars.iv.i.i.i476, 4 ; 2 uses
  %exitcond.not.i.i.i478.3 = icmp eq i64 %indvars.iv.next.i.i.i477.3, %wide.trip.count.i.i.i475
  br i1 %exitcond.not.i.i.i478.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469, label %scalar.ph768, !llvm.loop !180

.split7.i.i479:                                   ; preds = %.noexc480, %bb.cs
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 301)
          to label %.noexc481 unwind label %bb.db

.noexc481:                                        ; preds = %.split7.i.i479
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.8)
          to label %.noexc482 unwind label %bb.db

.noexc482:                                        ; preds = %.noexc481
  store i32 0, ptr %i.abe, align 4, !tbaa !42
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469: ; preds = %scalar.ph768.prol.loopexit, %scalar.ph768, %middle.block778, %.noexc482, %.split.i.i468
  %.0.i12.i.i470 = phi ptr [ null, %.noexc482 ], [ %i.abm, %.split.i.i468 ], [ %i.abm, %middle.block778 ], [ %i.abm, %scalar.ph768 ], [ %i.abm, %scalar.ph768.prol.loopexit ]
  %.0.i.i471 = phi i32 [ 0, %.noexc482 ], [ %i.aaz, %.split.i.i468 ], [ %i.aaz, %middle.block778 ], [ %i.aaz, %scalar.ph768 ], [ %i.aaz, %scalar.ph768.prol.loopexit ]
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !41 ; 2 uses
  %.not.i10.i.i472 = icmp eq ptr %i.acs, null
  br i1 %.not.i10.i.i472, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i473, label %bb.ct

bb.ct:                                            ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.acu = load i8, ptr %i.act, align 8, !tbaa !37, !range !63, !noundef !93
  %i.acv = trunc nuw i8 %i.acu to i1
  br i1 %i.acv, label %bb.cu, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i473

bb.cu:                                            ; preds = %bb.ct
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.acs)
          to label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i473 unwind label %bb.db

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i473: ; preds = %bb.cu, %bb.ct, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469
end_hunk_0
begin_hunk_1_@_ZN15b3TransformUtil18integrateTransformERK11b3TransformRK9b3Vector3S5_fRS0_:bb.a
  %i.ch = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul <2 x float> %i.bz, %i.ci           ; 6 uses
  %i.ck = fmul float %i.bl, %i.cf                 ; 4 uses
  %i.cl = extractelement <2 x float> %i.cj, i64 0
  %foldExtExtBinop66 = fmul <2 x float> %i.cj, %i.cj
  %i.cm = extractelement <2 x float> %foldExtExtBinop66, i64 0
  %i.cn = call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cm)
  %i.co = extractelement <2 x float> %i.cj, i64 1 ; 3 uses
  %i.cp = call float @llvm.fmuladd.f32(float %i.co, float %i.co, float %i.cn)
  %i.cq = call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cp)
  %i.cr = fdiv float 2.000000e+00, %i.cq          ; 2 uses
  %i.cs = fmul float %i.cg, %i.cr                 ; 2 uses
  %i.ct = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x float> %i.cj, %i.cu           ; 4 uses
  %i.cw = fmul float %i.ck, %i.cs                 ; 2 uses
  %i.cx = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.da = fmul <2 x float> %i.cy, %i.cz           ; 4 uses
  %i.db = fmul float %i.cg, %i.cs                 ; 2 uses
  %i.dc = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x float> %i.dd, %i.cv           ; 4 uses
  %foldExtExtBinop68 = fmul <2 x float> %i.cj, %i.cv
  %i.df = extractelement <2 x float> %foldExtExtBinop68, i64 0 ; 2 uses
  %i.dg = extractelement <2 x float> %i.cv, i64 1 ; 2 uses
  %i.dh = fmul float %i.cl, %i.dg                 ; 2 uses
  %i.di = fmul float %i.co, %i.dg                 ; 2 uses
  %i.dj = fadd float %i.df, %i.di
  %i.dk = fsub float 1.000000e+00, %i.dj
  %i.dl = fsub <2 x float> %i.de, %i.da
  %i.dm = fadd <2 x float> %i.de, %i.da
  %i.dn = shufflevector <2 x float> %i.dl, <2 x float> %i.dm, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop70 = fadd <2 x float> %i.de, %i.da
  %i.do = extractelement <2 x float> %foldExtExtBinop70, i64 0
  %i.dp = fadd float %i.db, %i.di
  %i.dq = fsub float 1.000000e+00, %i.dp
  %i.dr = fsub float %i.dh, %i.cw
  %foldExtExtBinop72 = fsub <2 x float> %i.de, %i.da
  %i.ds = extractelement <2 x float> %foldExtExtBinop72, i64 1
  %i.dt = fadd float %i.dh, %i.cw
  %i.du = fadd float %i.db, %i.df
  %i.dv = fsub float 1.000000e+00, %i.du
  store float %i.dk, ptr %4, align 16, !tbaa !17
  store <2 x float> %i.dn, ptr %i.bm, align 4, !tbaa !17
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.dw, align 4, !tbaa !17
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.do, ptr %i.dx, align 16, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.dq, ptr %i.dy, align 4, !tbaa !17
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.dr, ptr %i.dz, align 8, !tbaa !17
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.ea, align 4, !tbaa !17
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %i.ds, ptr %i.eb, align 16, !tbaa !17
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.dt, ptr %i.ec, align 4, !tbaa !17
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.dv, ptr %i.ed, align 8, !tbaa !17
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.ee, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11b3Matrix3x311getRotationER12b3Quaternion(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 16, !tbaa !14  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !14 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 8, !tbaa !14 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #22 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 8, !tbaa !14
  %i.t = load float, ptr %i.m, align 4, !tbaa !14
  %i.u = load float, ptr %i.j, align 16, !tbaa !14
  %i.v = load float, ptr %i.k, align 16, !tbaa !14
  %i.w = load float, ptr %i.o, align 8, !tbaa !14
  %i.x = load float, ptr %i.p, align 4, !tbaa !14
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 1
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.y, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !14
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !14
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !14
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #22 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !14
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !14
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !14
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !14
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !14
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !14
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !14
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !14
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !14
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !14
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 16, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare void @b3OutputErrorMessageVarArgsInternal(ptr noundef, ...) local_unnamed_addr #15

declare noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !12, i64 48}
!10 = !{!"_ZTS14b3ContactPoint", !11, i64 0, !11, i64 16, !11, i64 32, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !11, i64 64, !11, i64 80, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !13, i64 124}
!11 = !{!"_ZTS9b3Vector3", !7, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!"bool", !7, i64 0}
!14 = !{!12, !12, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!10, !12, i64 52}
!19 = !{!10, !13, i64 124}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !8, i64 0}
!22 = !{!23, !13, i64 24}
!23 = !{!"_ZTS20b3AlignedObjectArrayI12b3SolverBodyE", !24, i64 0, !6, i64 4, !6, i64 8, !25, i64 16, !13, i64 24}
!24 = !{!"_ZTS18b3AlignedAllocatorI12b3SolverBodyLj16EE"}
!25 = !{!"p1 _ZTS12b3SolverBody", !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!23, !25, i64 16}
!28 = !{!23, !6, i64 4}
!29 = !{!23, !6, i64 8}
!30 = !{!31, !13, i64 24}
!31 = !{!"_ZTS20b3AlignedObjectArrayI18b3SolverConstraintE", !32, i64 0, !6, i64 4, !6, i64 8, !33, i64 16, !13, i64 24}
!32 = !{!"_ZTS18b3AlignedAllocatorI18b3SolverConstraintLj16EE"}
!33 = !{!"p1 _ZTS18b3SolverConstraint", !26, i64 0}
!34 = !{!31, !33, i64 16}
!35 = !{!31, !6, i64 4}
!36 = !{!31, !6, i64 8}
!37 = !{!38, !13, i64 24}
!38 = !{!"_ZTS20b3AlignedObjectArrayIiE", !39, i64 0, !6, i64 4, !6, i64 8, !40, i64 16, !13, i64 24}
!39 = !{!"_ZTS18b3AlignedAllocatorIiLj16EE"}
!40 = !{!"p1 int", !26, i64 0}
!41 = !{!38, !40, i64 16}
!42 = !{!38, !6, i64 4}
!43 = !{!38, !6, i64 8}
!44 = !{!45, !13, i64 24}
!45 = !{!"_ZTS20b3AlignedObjectArrayIN17b3TypedConstraint17b3ConstraintInfo1EE", !46, i64 0, !6, i64 4, !6, i64 8, !47, i64 16, !13, i64 24}
!46 = !{!"_ZTS18b3AlignedAllocatorIN17b3TypedConstraint17b3ConstraintInfo1ELj16EE"}
!47 = !{!"p1 _ZTSN17b3TypedConstraint17b3ConstraintInfo1E", !26, i64 0}
!48 = !{!45, !47, i64 16}
!49 = !{!45, !6, i64 4}
!50 = !{!45, !6, i64 8}
!51 = !{!52, !13, i64 24}
!52 = !{!"_ZTS20b3AlignedObjectArrayI9b3Vector3E", !53, i64 0, !6, i64 4, !6, i64 8, !54, i64 16, !13, i64 24}
!53 = !{!"_ZTS18b3AlignedAllocatorI9b3Vector3Lj16EE"}
!54 = !{!"p1 _ZTS9b3Vector3", !26, i64 0}
!55 = !{!52, !54, i64 16}
!56 = !{!52, !6, i64 4}
!57 = !{!52, !6, i64 8}
!58 = !{!59, !13, i64 424}
!59 = !{!"_ZTS17b3PgsJacobiSolver", !23, i64 8, !31, i64 40, !31, i64 72, !31, i64 104, !31, i64 136, !38, i64 168, !38, i64 200, !38, i64 232, !45, i64 264, !38, i64 296, !38, i64 328, !52, i64 360, !52, i64 392, !13, i64 424, !6, i64 428, !6, i64 432, !60, i64 440}
!60 = !{!"long", !7, i64 0}
!61 = !{!59, !6, i64 432}
!62 = !{!59, !60, i64 440}
!63 = !{i8 0, i8 2}
!64 = !{!65, !12, i64 16}
!65 = !{!"_ZTS23b3ContactSolverInfoData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !6, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !6, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !12, i64 76, !12, i64 80}
!66 = !{!65, !12, i64 40}
!67 = !{!65, !6, i64 68}
!68 = !{!65, !6, i64 72}
!69 = !{!65, !6, i64 44}
!70 = !{!65, !6, i64 20}
!71 = !{!65, !6, i64 64}
!72 = !{!73, !12, i64 104}
!73 = !{!"_ZTS18b3SolverConstraint", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 48, !11, i64 64, !12, i64 80, !12, i64 84, !6, i64 88, !6, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !7, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148}
!74 = !{!73, !12, i64 84}
!75 = !{!73, !12, i64 108}
!76 = !{!73, !12, i64 100}
!77 = !{!73, !12, i64 112}
!78 = !{!73, !12, i64 116}
!79 = !{!73, !12, i64 120}
!80 = !{!73, !12, i64 80}
!81 = !{i64 0, i64 16, !17}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZL17getWorldTransformP15b3RigidBodyData: argument 0"}
!84 = distinct !{!84, !"_ZL17getWorldTransformP15b3RigidBodyData"}
!85 = !{!86, !12, i64 68}
!86 = !{!"_ZTS15b3RigidBodyData", !11, i64 0, !87, i64 16, !11, i64 32, !11, i64 48, !6, i64 64, !12, i64 68, !12, i64 72, !12, i64 76}
!87 = !{!"_ZTS12b3Quaternion", !88, i64 0}
!88 = !{!"_ZTS10b3QuadWord", !7, i64 0}
!89 = !{!73, !6, i64 144}
!90 = !{!73, !6, i64 148}
!91 = !{!10, !12, i64 60}
!92 = !{!73, !12, i64 96}
!93 = !{}
!94 = !{!6, !6, i64 0}
!95 = !{i64 0, i64 16, !17, i64 16, i64 16, !17, i64 32, i64 16, !17, i64 48, i64 16, !17, i64 64, i64 16, !17, i64 80, i64 4, !14, i64 84, i64 4, !14, i64 88, i64 4, !94, i64 92, i64 4, !94, i64 96, i64 4, !14, i64 100, i64 4, !14, i64 104, i64 4, !14, i64 108, i64 4, !14, i64 112, i64 4, !14, i64 116, i64 4, !14, i64 120, i64 4, !14, i64 128, i64 8, !17, i64 136, i64 4, !94, i64 140, i64 4, !94, i64 144, i64 4, !94, i64 148, i64 4, !94}
!96 = distinct !{!96, !97}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!73, !6, i64 140}
!99 = !{!10, !12, i64 104}
!100 = distinct !{!100, !97}
!101 = !{!65, !12, i64 56}
!102 = !{!10, !12, i64 56}
!103 = !{!65, !12, i64 60}
!104 = !{!65, !12, i64 12}
!105 = !{!10, !12, i64 96}
!106 = !{!10, !12, i64 100}
!107 = !{!108, !6, i64 88}
!108 = !{!"_ZTS14b3Contact4Data", !7, i64 0, !11, i64 64, !16, i64 80, !16, i64 82, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108}
!109 = !{!108, !6, i64 92}
!110 = !{!65, !12, i64 80}
!111 = !{!10, !12, i64 108}
!112 = !{!10, !12, i64 116}
!113 = !{!10, !12, i64 112}
!114 = !{!10, !12, i64 120}
!115 = distinct !{!115, !97}
!116 = !{!59, !6, i64 428}
!117 = distinct !{!117, !118}
!118 = !{!"llvm.loop.unroll.disable"}
!119 = distinct !{!119, !97}
!120 = distinct !{!120, !97, !121, !122}
!121 = !{!"llvm.loop.isvectorized", i32 1}
!122 = !{!"llvm.loop.unroll.runtime.disable"}
!123 = distinct !{!123, !118}
!124 = distinct !{!124, !97, !121}
!125 = distinct !{!125, !97, !121, !122}
!126 = distinct !{!126, !118}
!127 = distinct !{!127, !97, !121}
!128 = distinct !{!128, !118}
!129 = distinct !{!129, !97}
!130 = distinct !{!130, !97}
!131 = distinct !{!131, !118}
!132 = distinct !{!132, !118}
!133 = distinct !{!133, !118}
!134 = !{!135, !135, i64 0}
!135 = !{!"p1 _ZTS17b3TypedConstraint", !26, i64 0}
!136 = !{!137, !6, i64 40}
!137 = !{!"_ZTS17b3TypedConstraint", !138, i64 8, !6, i64 12, !7, i64 16, !12, i64 24, !13, i64 28, !13, i64 29, !6, i64 32, !6, i64 36, !6, i64 40, !12, i64 44, !12, i64 48, !139, i64 56}
!138 = !{!"_ZTS13b3TypedObject", !6, i64 0}
!139 = !{!"p1 _ZTS15b3JointFeedback", !26, i64 0}
!140 = !{!137, !6, i64 36}
!141 = distinct !{!141, !97}
!142 = distinct !{!142, !97}
!143 = !{!137, !12, i64 44}
!144 = distinct !{!144, !97}
!145 = distinct !{!145, !118}
!146 = distinct !{!146, !97}
!147 = distinct !{!147, !118}
!148 = !{!137, !139, i64 56}
!149 = !{!137, !13, i64 28}
!150 = !{!151, !6, i64 0}
!151 = !{!"_ZTSN17b3TypedConstraint17b3ConstraintInfo1E", !6, i64 0, !6, i64 4}
!152 = !{!151, !6, i64 4}
!153 = distinct !{!153, !97}
!154 = !{!137, !6, i64 32}
!155 = !{!73, !6, i64 136}
!156 = distinct !{!156, !97}
!157 = !{!158, !12, i64 0}
!158 = !{!"_ZTSN17b3TypedConstraint17b3ConstraintInfo2E", !12, i64 0, !12, i64 4, !159, i64 8, !159, i64 16, !159, i64 24, !159, i64 32, !6, i64 40, !159, i64 48, !159, i64 56, !159, i64 64, !159, i64 72, !40, i64 80, !6, i64 88, !12, i64 92}
!159 = !{!"p1 float", !26, i64 0}
!160 = !{!65, !12, i64 32}
!161 = !{!158, !12, i64 4}
!162 = !{!158, !159, i64 8}
!163 = !{!158, !159, i64 16}
!164 = !{!158, !159, i64 24}
!165 = !{!158, !159, i64 32}
!166 = !{!158, !6, i64 40}
!167 = !{!158, !159, i64 48}
!168 = !{!65, !12, i64 4}
!169 = !{!158, !12, i64 92}
!170 = !{!158, !159, i64 56}
!171 = !{!158, !159, i64 64}
end_hunk_1
