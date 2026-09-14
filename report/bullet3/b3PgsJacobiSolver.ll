Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3PgsJacobiSolver?download=true
inline.NumInlined: 892
inline.NumDeleted: 188
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN17b3PgsJacobiSolver28solveGroupCacheFriendlySetupEP15b3RigidBodyDataP13b3InertiaDataiP10b3Contact4iPP17b3TypedConstraintiRK19b3ContactSolverInfo:bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.rw)
          to label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i unwind label %bb.bn

_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i: ; preds = %bb.bx, %bb.bw, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.sa, align 8, !tbaa !34
  store ptr %.0.i12.i.i428, ptr %i.rv, align 8, !tbaa !35
  store i32 %.0.i.i429, ptr %i.rb, align 8, !tbaa !37
  br label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE18resizeNoInitializeEi.exit

_ZN20b3AlignedObjectArrayI18b3SolverConstraintE18resizeNoInitializeEi.exit: ; preds = %._crit_edge605, %bb.bt, %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i
  store i32 %.0255.lcssa, ptr %i.qy, align 4, !tbaa !36
  br i1 %i.kf, label %.lr.ph615, label %.preheader582

.lr.ph615:                                        ; preds = %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE18resizeNoInitializeEi.exit
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.se = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.sg = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.sh = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.si = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.sj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.sk = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.sl = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.sm = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.sn = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.so = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.sp = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.sq = getelementptr inbounds nuw i8, ptr %9, i64 92 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ss = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.st = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.su = getelementptr inbounds nuw i8, ptr %9, i64 88
  %wide.trip.count652 = zext nneg i32 %7 to i64
  %.pre683 = load ptr, ptr %i.sb, align 8, !tbaa !49
  br label %bb.by

.preheader582:                                    ; preds = %bb.co, %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE18resizeNoInitializeEi.exit
  br i1 %i.kw, label %.lr.ph617.preheader, label %._crit_edge618

.lr.ph617.preheader:                              ; preds = %.preheader582
  %wide.trip.count657 = zext nneg i32 %5 to i64
  br label %.lr.ph617

bb.by:                                            ; preds = %.lr.ph615, %bb.co
  %i.sv = phi ptr [ %.pre683, %.lr.ph615 ], [ %i.acb, %bb.co ] ; 2 uses
  %indvars.iv649 = phi i64 [ 0, %.lr.ph615 ], [ %indvars.iv.next650, %bb.co ] ; 4 uses
  %.0258614 = phi i32 [ 0, %.lr.ph615 ], [ %i.acc, %bb.co ] ; 2 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv649 ; 5 uses
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !176
  %.not265 = icmp eq i32 %i.sx, 0
  br i1 %.not265, label %bb.co, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.sy = load ptr, ptr %i.sc, align 8, !tbaa !35
  %i.sz = sext i32 %.0258614 to i64
  %i.ta = getelementptr inbounds [160 x i8], ptr %i.sy, i64 %i.sz ; 9 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv649 ; 3 uses
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !172 ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 36 ; 2 uses
  %i.te = load i32, ptr %i.td, align 4, !tbaa !174 ; 2 uses
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [80 x i8], ptr %1, i64 %i.tf ; 5 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 40 ; 3 uses
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !173
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [80 x i8], ptr %1, i64 %i.tj ; 5 uses
  %i.tl = invoke noundef i32 @_ZN17b3PgsJacobiSolver19getOrInitSolverBodyEiP15b3RigidBodyDataP13b3InertiaData(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %i.te, ptr noundef %1, ptr poison)
          to label %bb.ca unwind label %bb.cf     ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %i.tm = load i32, ptr %i.th, align 8, !tbaa !173
  %i.tn = invoke noundef i32 @_ZN17b3PgsJacobiSolver19getOrInitSolverBodyEiP15b3RigidBodyDataP13b3InertiaData(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %i.tm, ptr noundef %1, ptr poison)
          to label %bb.cb unwind label %bb.cg     ; 2 uses

bb.cb:                                            ; preds = %bb.ca
  %i.to = load ptr, ptr %i.sd, align 8, !tbaa !28 ; 2 uses
  %i.tp = sext i32 %i.tl to i64
  %i.tq = getelementptr inbounds [240 x i8], ptr %i.to, i64 %i.tp ; 2 uses
  %i.tr = sext i32 %i.tn to i64
  %i.ts = getelementptr inbounds [240 x i8], ptr %i.to, i64 %i.tr ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tc, i64 32
  %i.tu = load i32, ptr %i.tt, align 16, !tbaa !178 ; 2 uses
  %i.tv = icmp sgt i32 %i.tu, 0
  br i1 %i.tv, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.tw = load i32, ptr %i.se, align 4, !tbaa !68
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.tx = phi i32 [ %i.tw, %bb.cc ], [ %i.tu, %bb.cb ] ; 3 uses
  %i.ty = load i32, ptr %i.a, align 4, !tbaa !101
  %i.tz = icmp sgt i32 %i.tx, %i.ty
  br i1 %i.tz, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  store i32 %i.tx, ptr %i.a, align 4, !tbaa !101
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
  %i.uc = load i32, ptr %i.sw, align 4, !tbaa !176
  %i.ud = icmp sgt i32 %i.uc, 0
  br i1 %i.ud, label %.lr.ph608, label %._crit_edge609

.lr.ph608:                                        ; preds = %bb.ch, %.lr.ph608
  %indvars.iv643 = phi i64 [ %indvars.iv.next644, %.lr.ph608 ], [ 0, %bb.ch ] ; 2 uses
  %i.ue = getelementptr inbounds nuw [160 x i8], ptr %i.ta, i64 %indvars.iv643 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.ue, i8 0, i64 160, i1 false)
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 112
  store <2 x float> <float f0xFF7FFFFF, float f0x7F7FFFFF>, ptr %i.uf, align 16, !tbaa !17
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 80
  store float 0.000000e+00, ptr %i.ug, align 16, !tbaa !78
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 144
  store i32 %i.tl, ptr %i.uh, align 16, !tbaa !84
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 148
  store i32 %i.tn, ptr %i.ui, align 4, !tbaa !85
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ue, i64 136
  store i32 %i.tx, ptr %i.uj, align 8, !tbaa !109
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 2 uses
  %i.uk = load i32, ptr %i.sw, align 4, !tbaa !176
  %i.ul = sext i32 %i.uk to i64
  %i.um = icmp slt i64 %indvars.iv.next644, %i.ul
  br i1 %i.um, label %.lr.ph608, label %._crit_edge609, !llvm.loop !147

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
  %i.ur = load float, ptr %i.sf, align 4, !tbaa !95
  %i.us = fdiv float 1.000000e+00, %i.ur
  store float %i.us, ptr %9, align 8, !tbaa !181
  %i.ut = load float, ptr %i.sg, align 4, !tbaa !182
  store float %i.ut, ptr %i.sh, align 4, !tbaa !183
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  store ptr %i.uu, ptr %i.si, align 8, !tbaa !184
  store ptr %i.ta, ptr %i.sj, align 8, !tbaa !185
  store ptr null, ptr %i.sk, align 8, !tbaa !186
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ta, i64 32
  store ptr %i.uv, ptr %i.sl, align 8, !tbaa !187
  store i32 40, ptr %i.sm, align 8, !tbaa !188
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ta, i64 104
  store ptr %i.uw, ptr %i.sn, align 8, !tbaa !189
  %i.ux = load float, ptr %i.so, align 4, !tbaa !66
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ta, i64 108 ; 2 uses
  store float %i.ux, ptr %i.uy, align 4, !tbaa !73
  %i.uz = load float, ptr %i.sp, align 4, !tbaa !190
  store float %i.uz, ptr %i.sq, align 4, !tbaa !191
  store ptr %i.uy, ptr %i.sr, align 8, !tbaa !192
  %i.va = getelementptr inbounds nuw i8, ptr %i.ta, i64 112
  store ptr %i.va, ptr %i.ss, align 8, !tbaa !193
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ta, i64 116
  store ptr %i.vb, ptr %i.st, align 8, !tbaa !194
  %i.vc = load i32, ptr %i.se, align 4, !tbaa !68
  store i32 %i.vc, ptr %i.su, align 8, !tbaa !195
  %i.vd = load ptr, ptr %i.tb, align 8, !tbaa !172 ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 16, !tbaa !22
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 32
  %i.vg = load ptr, ptr %i.vf, align 8
  invoke void %i.vg(ptr noundef nonnull align 16 dereferenceable(64) %i.vd, ptr noundef nonnull %9, ptr noundef %1)
          to label %.preheader583 unwind label %bb.ck

.preheader583:                                    ; preds = %._crit_edge609
  %i.vh = load i32, ptr %i.sw, align 4, !tbaa !176
  %i.vi = icmp sgt i32 %i.vh, 0
  br i1 %i.vi, label %.lr.ph611, label %._crit_edge612

.lr.ph611:                                        ; preds = %.preheader583
  %i.vj = getelementptr inbounds nuw i8, ptr %i.tg, i64 68
  %i.vk = getelementptr inbounds nuw i8, ptr %i.tk, i64 68
  %i.vl = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  %i.vm = getelementptr inbounds nuw i8, ptr %i.tg, i64 40
  %i.vn = getelementptr inbounds nuw i8, ptr %i.tg, i64 48
  %i.vo = getelementptr inbounds nuw i8, ptr %i.tg, i64 56
  %i.vp = getelementptr inbounds nuw i8, ptr %i.tk, i64 32
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tk, i64 40
  %i.vr = getelementptr inbounds nuw i8, ptr %i.tk, i64 48
  %i.vs = getelementptr inbounds nuw i8, ptr %i.tk, i64 56
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph611, %bb.cn
  %indvars.iv646 = phi i64 [ 0, %.lr.ph611 ], [ %indvars.iv.next647, %bb.cn ] ; 2 uses
  %i.vt = getelementptr inbounds nuw [160 x i8], ptr %i.ta, i64 %indvars.iv646 ; 16 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 116 ; 2 uses
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !76
  %i.vw = load ptr, ptr %i.tb, align 8, !tbaa !172
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 24
  %i.vy = load float, ptr %i.vx, align 8, !tbaa !110 ; 3 uses
  %i.vz = fcmp ult float %i.vv, %i.vy
  br i1 %i.vz, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store float %i.vy, ptr %i.vu, align 4, !tbaa !76
  br label %bb.cl

bb.ck:                                            ; preds = %._crit_edge609
  %i.wa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.dn

bb.cl:                                            ; preds = %bb.cj, %bb.ci
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vt, i64 112 ; 2 uses
  %i.wc = load float, ptr %i.wb, align 16, !tbaa !75
  %i.wd = fneg float %i.vy                        ; 2 uses
  %i.we = fcmp ugt float %i.wc, %i.wd
  br i1 %i.we, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  store float %i.wd, ptr %i.wb, align 16, !tbaa !75
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vt, i64 128
  store ptr %i.tc, ptr %i.wf, align 16, !tbaa !19
  %i.wg = load i32, ptr %i.td, align 4, !tbaa !174
  %i.wh = sext i32 %i.wg to i64
  %i.wi = getelementptr inbounds [96 x i8], ptr %2, i64 %i.wh ; 8 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8 ; 2 uses
  %i.wk = load float, ptr %i.wj, align 8, !tbaa !19
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 16 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wi, i64 24 ; 2 uses
  %i.wn = load float, ptr %i.wm, align 8, !tbaa !19
  %i.wo = load <2 x float>, ptr %i.wi, align 16, !tbaa !19 ; 2 uses
  %10 = load <3 x float>, ptr %i.vt, align 16, !tbaa !19 ; 7 uses
  %11 = load float, ptr %i.vt, align 16, !tbaa !19 ; 4 uses
  %12 = load <2 x float>, ptr %i.wl, align 16, !tbaa !19 ; 2 uses
  %13 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %14 = shufflevector <2 x float> %i.wo, <2 x float> %12, <2 x i32> <i32 1, i32 3>
  %15 = fmul <2 x float> %13, %14
  %16 = shufflevector <2 x float> %i.wo, <2 x float> %12, <2 x i32> <i32 0, i32 2>
  %i.wp = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> zeroinitializer
  %17 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %i.wp, <2 x float> %15)
  %18 = insertelement <2 x float> poison, float %i.wk, i64 0
  %19 = insertelement <2 x float> %18, float %i.wn, i64 1
  %20 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %21 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %20, <2 x float> %17)
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wi, i64 32 ; 2 uses
  %22 = load float, ptr %i.wq, align 16, !tbaa !19
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wi, i64 36
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !19
  %23 = extractelement <3 x float> %10, i64 1
  %24 = fmul float %23, %i.ws
  %25 = call float @llvm.fmuladd.f32(float %22, float %11, float %24)
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wi, i64 40 ; 2 uses
  %i.wu = load float, ptr %i.wt, align 8, !tbaa !19
  %i.wv = extractelement <3 x float> %10, i64 2   ; 6 uses
  %i.ww = call noundef float @llvm.fmuladd.f32(float %i.wu, float %i.wv, float %25)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ww, i64 0
  %26 = getelementptr inbounds nuw i8, ptr %i.vt, i64 48
  store <2 x float> %21, ptr %26, align 16
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vt, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !19
  %i.wx = load i32, ptr %i.th, align 8, !tbaa !173
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds [96 x i8], ptr %2, i64 %i.wy ; 8 uses
  %27 = getelementptr inbounds nuw i8, ptr %i.vt, i64 32 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 8 ; 2 uses
  %i.xb = load float, ptr %i.xa, align 8, !tbaa !19
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wz, i64 24 ; 2 uses
  %i.xe = load float, ptr %i.xd, align 8, !tbaa !19
  %i.xf = load <2 x float>, ptr %i.wz, align 16, !tbaa !19 ; 2 uses
  %28 = load <3 x float>, ptr %27, align 16, !tbaa !19 ; 7 uses
  %i.xg = load float, ptr %27, align 16, !tbaa !19 ; 5 uses
  %i.xh = load <2 x float>, ptr %i.xc, align 16, !tbaa !19 ; 2 uses
  %i.xi = shufflevector <3 x float> %28, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xj = shufflevector <2 x float> %i.xf, <2 x float> %i.xh, <2 x i32> <i32 1, i32 3>
  %i.xk = fmul <2 x float> %i.xi, %i.xj
  %i.xl = shufflevector <2 x float> %i.xf, <2 x float> %i.xh, <2 x i32> <i32 0, i32 2>
  %i.xm = shufflevector <3 x float> %28, <3 x float> poison, <2 x i32> zeroinitializer
  %i.xn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xl, <2 x float> %i.xm, <2 x float> %i.xk)
  %i.xo = insertelement <2 x float> poison, float %i.xb, i64 0
  %i.xp = insertelement <2 x float> %i.xo, float %i.xe, i64 1
  %29 = shufflevector <3 x float> %28, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.xq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xp, <2 x float> %29, <2 x float> %i.xn)
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wz, i64 32 ; 2 uses
  %i.xs = load float, ptr %i.xr, align 16, !tbaa !19
  %i.xt = getelementptr inbounds nuw i8, ptr %i.wz, i64 36
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !19
  %30 = extractelement <3 x float> %28, i64 1     ; 2 uses
  %31 = fmul float %30, %i.xu
  %i.xv = call float @llvm.fmuladd.f32(float %i.xs, float %i.xg, float %31)
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wz, i64 40 ; 2 uses
  %i.xx = load float, ptr %i.xw, align 8, !tbaa !19
  %32 = extractelement <3 x float> %28, i64 2     ; 6 uses
  %i.xy = call noundef float @llvm.fmuladd.f32(float %i.xx, float %32, float %i.xv)
  %.sroa.3.12.vec.insert.i.i443 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xy, i64 0
  %33 = getelementptr inbounds nuw i8, ptr %i.vt, i64 64
  store <2 x float> %i.xq, ptr %33, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vt, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i443, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19
  %34 = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.xz = load float, ptr %i.vj, align 4, !tbaa !17 ; 3 uses
  %35 = getelementptr inbounds nuw i8, ptr %i.vt, i64 20
  %36 = getelementptr inbounds nuw i8, ptr %i.vt, i64 24
  %37 = load float, ptr %36, align 8, !tbaa !19   ; 6 uses
  %i.ya = fmul float %i.xz, %37
  %38 = load float, ptr %i.wj, align 8, !tbaa !19
  %39 = load float, ptr %i.wm, align 8, !tbaa !19
  %40 = load float, ptr %i.wt, align 8, !tbaa !19
  %i.yb = load float, ptr %i.vk, align 4, !tbaa !17 ; 3 uses
  %41 = fmul float %37, %i.yb
  %42 = load <2 x float>, ptr %i.wi, align 16, !tbaa !19 ; 2 uses
  %i.yc = load <2 x float>, ptr %i.wl, align 16, !tbaa !19 ; 2 uses
  %i.yd = load <2 x float>, ptr %i.wq, align 16, !tbaa !19
  %i.ye = load <2 x float>, ptr %i.wz, align 16, !tbaa !19
  %43 = shufflevector <3 x float> %10, <3 x float> %28, <4 x i32> <i32 1, i32 1, i32 1, i32 4> ; 2 uses
  %i.yf = shufflevector <2 x float> %42, <2 x float> %i.yc, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.yg = shufflevector <2 x float> %i.yd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yh = shufflevector <4 x float> %i.yf, <4 x float> %i.yg, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.yi = shufflevector <2 x float> %i.ye, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yj = shufflevector <4 x float> %i.yh, <4 x float> %i.yi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.yk = fmul <4 x float> %43, %i.yj
  %i.yl = shufflevector <2 x float> %42, <2 x float> %i.yc, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ym = shufflevector <4 x float> %i.yl, <4 x float> %i.yg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.yn = shufflevector <4 x float> %i.ym, <4 x float> %i.yi, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %44 = insertelement <4 x float> poison, float %11, i64 0
  %45 = insertelement <4 x float> %44, float %i.xg, i64 1
  %46 = shufflevector <4 x float> %45, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %47 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yn, <4 x float> %46, <4 x float> %i.yk) ; 4 uses
  %i.yo = extractelement <4 x float> %47, i64 0
  %i.yp = call noundef float @llvm.fmuladd.f32(float %38, float %i.wv, float %i.yo)
  %i.yq = extractelement <4 x float> %47, i64 1
  %i.yr = call noundef float @llvm.fmuladd.f32(float %39, float %i.wv, float %i.yq)
  %48 = extractelement <4 x float> %47, i64 2
  %49 = call noundef float @llvm.fmuladd.f32(float %40, float %i.wv, float %48)
  %i.ys = load float, ptr %i.xa, align 8, !tbaa !19
  %i.yt = extractelement <4 x float> %47, i64 3
  %i.yu = call noundef float @llvm.fmuladd.f32(float %i.ys, float %32, float %i.yt)
  %i.yv = load float, ptr %i.xd, align 8, !tbaa !19
  %i.yw = load float, ptr %i.xw, align 8, !tbaa !19
  %i.yx = load <2 x float>, ptr %34, align 16, !tbaa !19 ; 2 uses
  %i.yy = load float, ptr %35, align 4, !tbaa !19 ; 4 uses
  %i.yz = extractelement <2 x float> %i.yx, i64 0 ; 3 uses
  %i.za = fmul float %i.yz, %i.xz
  %i.zb = fmul float %i.xz, %i.yy
  %i.zc = fmul float %i.yz, %i.yb
  %i.zd = fmul float %i.yy, %i.yb
  %i.ze = load <2 x float>, ptr %i.xc, align 16, !tbaa !19 ; 2 uses
  %i.zf = load <2 x float>, ptr %i.xr, align 16, !tbaa !19 ; 2 uses
  %50 = shufflevector <3 x float> %28, <3 x float> %10, <4 x i32> <i32 1, i32 1, i32 poison, i32 4>
  %51 = shufflevector <2 x float> %i.yx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 3 uses
  %52 = shufflevector <4 x float> %50, <4 x float> %51, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.zg = shufflevector <2 x float> %i.ze, <2 x float> %i.zf, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.zh = insertelement <4 x float> %i.zg, float %i.zb, i64 2
  %i.zi = insertelement <4 x float> %i.zh, float %i.yr, i64 3
  %i.zj = fmul <4 x float> %52, %i.zi
  %i.zk = shufflevector <2 x float> %i.ze, <2 x float> %i.zf, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %53 = insertelement <4 x float> %i.zk, float %i.za, i64 2
  %i.zl = insertelement <4 x float> %53, float %i.yp, i64 3
  %i.zm = insertelement <4 x float> poison, float %i.xg, i64 0
  %54 = shufflevector <4 x float> %i.zm, <4 x float> %51, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %55 = insertelement <4 x float> %54, float %11, i64 2
  %56 = shufflevector <4 x float> %55, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.zn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zl, <4 x float> %56, <4 x float> %i.zj) ; 4 uses
  %i.zo = extractelement <4 x float> %i.zn, i64 0
  %i.zp = call noundef float @llvm.fmuladd.f32(float %i.yv, float %32, float %i.zo)
  %i.zq = extractelement <4 x float> %i.zn, i64 1
  %i.zr = call noundef float @llvm.fmuladd.f32(float %i.yw, float %32, float %i.zq)
  %i.zs = extractelement <4 x float> %i.zn, i64 2
  %i.zt = call noundef float @llvm.fmuladd.f32(float %i.ya, float %37, float %i.zs)
  %i.zu = extractelement <4 x float> %i.zn, i64 3
  %i.zv = call noundef float @llvm.fmuladd.f32(float %49, float %i.wv, float %i.zu)
  %i.zw = fadd float %i.zt, %i.zv
  %i.zx = fmul float %i.yy, %i.zd
  %i.zy = call float @llvm.fmuladd.f32(float %i.zc, float %i.yz, float %i.zx)
  %i.zz = call noundef float @llvm.fmuladd.f32(float %41, float %37, float %i.zy)
  %i.aaa = fadd float %i.zw, %i.zz
  %i.aab = fmul float %30, %i.zp
  %i.aac = call float @llvm.fmuladd.f32(float %i.yu, float %i.xg, float %i.aab)
  %i.aad = call noundef float @llvm.fmuladd.f32(float %i.zr, float %32, float %i.aac)
  %i.aae = fadd float %i.aaa, %i.aad              ; 2 uses
  %i.aaf = call noundef float @llvm.fabs.f32(float %i.aae)
  %i.aag = fcmp ogt float %i.aaf, f0x34000000
  %i.aah = fdiv float 1.000000e+00, %i.aae
  %i.aai = select i1 %i.aag, float %i.aah, float 0.000000e+00 ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.vt, i64 100
  store float %i.aai, ptr %i.aaj, align 4, !tbaa !74
  %i.aak = load float, ptr %i.vm, align 8, !tbaa !19
  %i.aal = load float, ptr %i.vo, align 8, !tbaa !19
  %i.aam = load float, ptr %i.vq, align 8, !tbaa !19
  %i.aan = load <2 x float>, ptr %i.vl, align 16, !tbaa !19 ; 2 uses
  %i.aao = load <2 x float>, ptr %i.vn, align 16, !tbaa !19 ; 2 uses
  %i.aap = load <2 x float>, ptr %i.vp, align 16, !tbaa !19
  %i.aaq = load <2 x float>, ptr %i.vr, align 16, !tbaa !19
  %i.aar = insertelement <4 x float> poison, float %i.yy, i64 0
  %57 = shufflevector <4 x float> %i.aar, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %58 = shufflevector <4 x float> %57, <4 x float> %43, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.aas = shufflevector <2 x float> %i.aan, <2 x float> %i.aao, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.aat = shufflevector <2 x float> %i.aap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aau = shufflevector <4 x float> %i.aas, <4 x float> %i.aat, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aav = shufflevector <2 x float> %i.aaq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aaw = shufflevector <4 x float> %i.aau, <4 x float> %i.aav, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aax = fmul <4 x float> %58, %i.aaw
  %59 = insertelement <4 x float> %51, float %11, i64 1
  %60 = insertelement <4 x float> %59, float %i.xg, i64 3
  %i.aay = shufflevector <2 x float> %i.aan, <2 x float> %i.aao, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.aaz = shufflevector <4 x float> %i.aay, <4 x float> %i.aat, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aba = shufflevector <4 x float> %i.aaz, <4 x float> %i.aav, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.abb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %60, <4 x float> %i.aba, <4 x float> %i.aax) ; 4 uses
  %i.abc = extractelement <4 x float> %i.abb, i64 0
  %i.abd = call noundef float @llvm.fmuladd.f32(float %37, float %i.aak, float %i.abc)
  %i.abe = extractelement <4 x float> %i.abb, i64 1
  %i.abf = call noundef float @llvm.fmuladd.f32(float %i.wv, float %i.aal, float %i.abe)
  %i.abg = fadd float %i.abd, %i.abf
  %i.abh = extractelement <4 x float> %i.abb, i64 2
  %i.abi = call noundef float @llvm.fmuladd.f32(float %37, float %i.aam, float %i.abh)
  %i.abj = load float, ptr %i.vs, align 8, !tbaa !19
  %i.abk = extractelement <4 x float> %i.abb, i64 3
  %i.abl = call noundef float @llvm.fmuladd.f32(float %32, float %i.abj, float %i.abk)
  %i.abm = fsub float %i.abl, %i.abi
  %i.abn = fadd float %i.abg, %i.abm
  %i.abo = getelementptr inbounds nuw i8, ptr %i.vt, i64 104 ; 2 uses
  %i.abp = load float, ptr %i.abo, align 8, !tbaa !71
  %i.abq = load float, ptr %i.sq, align 4, !tbaa !191
  %i.abr = fneg float %i.abn
  %i.abs = call float @llvm.fmuladd.f32(float %i.abr, float %i.abq, float 0.000000e+00)
  %i.abt = fmul float %i.aai, %i.abp
  %i.abu = fmul float %i.aai, %i.abs
  %i.abv = fadd float %i.abt, %i.abu
  store float %i.abv, ptr %i.abo, align 8, !tbaa !71
  %i.abw = getelementptr inbounds nuw i8, ptr %i.vt, i64 84
  store float 0.000000e+00, ptr %i.abw, align 4, !tbaa !72
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1 ; 2 uses
  %i.abx = load i32, ptr %i.sw, align 4, !tbaa !176
  %i.aby = sext i32 %i.abx to i64
  %i.abz = icmp slt i64 %indvars.iv.next647, %i.aby
  br i1 %i.abz, label %bb.ci, label %._crit_edge612, !llvm.loop !148

._crit_edge612:                                   ; preds = %bb.cn, %.preheader583
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.pre684 = load ptr, ptr %i.sb, align 8, !tbaa !49 ; 2 uses
  %.phi.trans.insert685 = getelementptr inbounds nuw [8 x i8], ptr %.pre684, i64 %indvars.iv649
  %.pre686 = load i32, ptr %.phi.trans.insert685, align 4, !tbaa !176
  br label %bb.co

bb.co:                                            ; preds = %._crit_edge612, %bb.by
  %i.aca = phi i32 [ %.pre686, %._crit_edge612 ], [ 0, %bb.by ]
  %i.acb = phi ptr [ %.pre684, %._crit_edge612 ], [ %i.sv, %bb.by ]
  %i.acc = add nsw i32 %i.aca, %.0258614
  %indvars.iv.next650 = add nuw nsw i64 %indvars.iv649, 1 ; 2 uses
  %exitcond653.not = icmp eq i64 %indvars.iv.next650, %wide.trip.count652
  br i1 %exitcond653.not, label %.preheader582, label %bb.by, !llvm.loop !149

.lr.ph617:                                        ; preds = %.lr.ph617.preheader, %bb.cp
  %indvars.iv654 = phi i64 [ 0, %.lr.ph617.preheader ], [ %indvars.iv.next655, %bb.cp ] ; 2 uses
  %i.acd = getelementptr inbounds nuw [112 x i8], ptr %4, i64 %indvars.iv654
  invoke void @_ZN17b3PgsJacobiSolver14convertContactEP15b3RigidBodyDataP13b3InertiaDataP10b3Contact4RK19b3ContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.acd, ptr noundef nonnull align 4 dereferenceable(84) %8)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %.lr.ph617
  %indvars.iv.next655 = add nuw nsw i64 %indvars.iv654, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %indvars.iv.next655, %wide.trip.count657
  br i1 %exitcond658.not, label %._crit_edge618, label %.lr.ph617, !llvm.loop !150

bb.cq:                                            ; preds = %.lr.ph617
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

._crit_edge618:                                   ; preds = %bb.cp, %.preheader582
  %i.acf = load i32, ptr %i.qy, align 4, !tbaa !36 ; 12 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !36 ; 14 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !36 ; 12 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 4 uses
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !43
  %i.acm = icmp sgt i32 %i.acf, %i.acl
  br i1 %i.acm, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %._crit_edge618
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.aco = load i32, ptr %i.acn, align 8, !tbaa !44
  %i.acp = icmp slt i32 %i.aco, %i.acf
  br i1 %i.acp, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %.not.i.i.i466 = icmp eq i32 %i.acf, 0
  br i1 %.not.i.i.i466, label %.split7.i.i479, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i467

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i467: ; preds = %bb.cs
  %i.acq = sext i32 %i.acf to i64
  %i.acr = shl nsw i64 %i.acq, 2
  %i.acs = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.acr, i32 noundef 16)
          to label %.noexc480 unwind label %bb.db ; 12 uses

.noexc480:                                        ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i467
  %i.act = ptrtoaddr ptr %i.acs to i64
  %i.acu = icmp eq ptr %i.acs, null
  br i1 %i.acu, label %.split7.i.i479, label %.split.i.i468

.split.i.i468:                                    ; preds = %.noexc480
  %i.acv = load i32, ptr %i.ack, align 4, !tbaa !43 ; 3 uses
  %i.acw = icmp sgt i32 %i.acv, 0
  br i1 %i.acw, label %.lr.ph.i.i.i474, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469

.lr.ph.i.i.i474:                                  ; preds = %.split.i.i468
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !42 ; 7 uses
  %wide.trip.count.i.i.i475 = zext nneg i32 %i.acv to i64 ; 5 uses
  %min.iters.check768 = icmp ult i32 %i.acv, 8
  %i.acz = ptrtoaddr ptr %i.acy to i64
  %i.ada = sub i64 %i.acz, %i.act
  %diff.check766 = icmp ugt i64 %i.ada, -32
  %or.cond861 = select i1 %min.iters.check768, i1 true, i1 %diff.check766
  br i1 %or.cond861, label %scalar.ph767.preheader, label %vector.ph769

vector.ph769:                                     ; preds = %.lr.ph.i.i.i474
  %n.vec770 = and i64 %wide.trip.count.i.i.i475, 2147483640 ; 3 uses
  br label %vector.body771

vector.body771:                                   ; preds = %vector.body771, %vector.ph769
  %index772 = phi i64 [ 0, %vector.ph769 ], [ %index.next775, %vector.body771 ] ; 3 uses
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %index772 ; 2 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %index772 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  %wide.load773 = load <4 x i32>, ptr %i.adc, align 4, !tbaa !89
  %wide.load774 = load <4 x i32>, ptr %i.add, align 4, !tbaa !89
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adb, i64 16
  store <4 x i32> %wide.load773, ptr %i.adb, align 4, !tbaa !89
  store <4 x i32> %wide.load774, ptr %i.ade, align 4, !tbaa !89
  %index.next775 = add nuw i64 %index772, 8       ; 2 uses
  %i.adf = icmp eq i64 %index.next775, %n.vec770
  br i1 %i.adf, label %middle.block776, label %vector.body771, !llvm.loop !151

middle.block776:                                  ; preds = %vector.body771
  %cmp.n777 = icmp eq i64 %n.vec770, %wide.trip.count.i.i.i475
  br i1 %cmp.n777, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469, label %scalar.ph767.preheader

scalar.ph767.preheader:                           ; preds = %.lr.ph.i.i.i474, %middle.block776
  %indvars.iv.i.i.i476.ph = phi i64 [ 0, %.lr.ph.i.i.i474 ], [ %n.vec770, %middle.block776 ] ; 3 uses
  %xtraiter934 = and i64 %wide.trip.count.i.i.i475, 3 ; 2 uses
  %lcmp.mod935.not = icmp eq i64 %xtraiter934, 0
  br i1 %lcmp.mod935.not, label %scalar.ph767.prol.loopexit, label %scalar.ph767.prol

scalar.ph767.prol:                                ; preds = %scalar.ph767.preheader, %scalar.ph767.prol
  %indvars.iv.i.i.i476.prol = phi i64 [ %indvars.iv.next.i.i.i477.prol, %scalar.ph767.prol ], [ %indvars.iv.i.i.i476.ph, %scalar.ph767.preheader ] ; 3 uses
  %prol.iter936 = phi i64 [ %prol.iter936.next, %scalar.ph767.prol ], [ 0, %scalar.ph767.preheader ]
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %indvars.iv.i.i.i476.prol
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %indvars.iv.i.i.i476.prol
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !89
  store i32 %i.adi, ptr %i.adg, align 4, !tbaa !89
  %indvars.iv.next.i.i.i477.prol = add nuw nsw i64 %indvars.iv.i.i.i476.prol, 1 ; 2 uses
  %prol.iter936.next = add i64 %prol.iter936, 1   ; 2 uses
  %prol.iter936.cmp.not = icmp eq i64 %prol.iter936.next, %xtraiter934
  br i1 %prol.iter936.cmp.not, label %scalar.ph767.prol.loopexit, label %scalar.ph767.prol, !llvm.loop !152

scalar.ph767.prol.loopexit:                       ; preds = %scalar.ph767.prol, %scalar.ph767.preheader
  %indvars.iv.i.i.i476.unr = phi i64 [ %indvars.iv.i.i.i476.ph, %scalar.ph767.preheader ], [ %indvars.iv.next.i.i.i477.prol, %scalar.ph767.prol ]
  %i.adj = sub nsw i64 %indvars.iv.i.i.i476.ph, %wide.trip.count.i.i.i475
  %i.adk = icmp ugt i64 %i.adj, -4
  br i1 %i.adk, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469, label %scalar.ph767

scalar.ph767:                                     ; preds = %scalar.ph767.prol.loopexit, %scalar.ph767
  %indvars.iv.i.i.i476 = phi i64 [ %indvars.iv.next.i.i.i477.3, %scalar.ph767 ], [ %indvars.iv.i.i.i476.unr, %scalar.ph767.prol.loopexit ] ; 6 uses
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %indvars.iv.i.i.i476
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %indvars.iv.i.i.i476
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !89
  store i32 %i.adn, ptr %i.adl, align 4, !tbaa !89
  %indvars.iv.next.i.i.i477 = add nuw nsw i64 %indvars.iv.i.i.i476, 1 ; 2 uses
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %indvars.iv.next.i.i.i477
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %indvars.iv.next.i.i.i477
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !89
  store i32 %i.adq, ptr %i.ado, align 4, !tbaa !89
  %indvars.iv.next.i.i.i477.1 = add nuw nsw i64 %indvars.iv.i.i.i476, 2 ; 2 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %indvars.iv.next.i.i.i477.1
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %indvars.iv.next.i.i.i477.1
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !89
  store i32 %i.adt, ptr %i.adr, align 4, !tbaa !89
  %indvars.iv.next.i.i.i477.2 = add nuw nsw i64 %indvars.iv.i.i.i476, 3 ; 2 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %indvars.iv.next.i.i.i477.2
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %indvars.iv.next.i.i.i477.2
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !89
  store i32 %i.adw, ptr %i.adu, align 4, !tbaa !89
  %indvars.iv.next.i.i.i477.3 = add nuw nsw i64 %indvars.iv.i.i.i476, 4 ; 2 uses
  %exitcond.not.i.i.i478.3 = icmp eq i64 %indvars.iv.next.i.i.i477.3, %wide.trip.count.i.i.i475
  br i1 %exitcond.not.i.i.i478.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469, label %scalar.ph767, !llvm.loop !153

.split7.i.i479:                                   ; preds = %.noexc480, %bb.cs
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 301)
          to label %.noexc481 unwind label %bb.db

.noexc481:                                        ; preds = %.split7.i.i479
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.8)
          to label %.noexc482 unwind label %bb.db

.noexc482:                                        ; preds = %.noexc481
  store i32 0, ptr %i.ack, align 4, !tbaa !43
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469: ; preds = %scalar.ph767.prol.loopexit, %scalar.ph767, %middle.block776, %.noexc482, %.split.i.i468
  %.0.i12.i.i470 = phi ptr [ null, %.noexc482 ], [ %i.acs, %.split.i.i468 ], [ %i.acs, %middle.block776 ], [ %i.acs, %scalar.ph767 ], [ %i.acs, %scalar.ph767.prol.loopexit ]
  %.0.i.i471 = phi i32 [ 0, %.noexc482 ], [ %i.acf, %.split.i.i468 ], [ %i.acf, %middle.block776 ], [ %i.acf, %scalar.ph767 ], [ %i.acf, %scalar.ph767.prol.loopexit ]
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !42 ; 2 uses
  %.not.i10.i.i472 = icmp eq ptr %i.ady, null
  br i1 %.not.i10.i.i472, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i473, label %bb.ct

bb.ct:                                            ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aea = load i8, ptr %i.adz, align 8, !tbaa !41, !range !64, !noundef !88
  %i.aeb = trunc nuw i8 %i.aea to i1
  br i1 %i.aeb, label %bb.cu, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i473

bb.cu:                                            ; preds = %bb.ct
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ady)
          to label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i473 unwind label %bb.db

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i473: ; preds = %bb.cu, %bb.ct, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i469
end_hunk_0
