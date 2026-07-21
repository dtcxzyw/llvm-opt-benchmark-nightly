loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 33
begin_hunk_0_@L3psycho_anal:bb.a
  %i.rh = fcmp une float %i.qk, 0.000000e+00
  %i.ri = extractelement <2 x float> %i.rg, i64 0 ; 2 uses
  %i.rj = extractelement <2 x float> %i.rg, i64 1 ; 2 uses
  br i1 %i.rh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.rk = fadd float %i.rj, %i.ri
  %i.rl = fadd float %i.qg, %i.qi
  %i.rm = fmul float %i.rl, %i.rk
  %i.rn = fmul float %i.rm, 5.000000e-01
  %i.ro = insertelement <2 x float> poison, float %i.qg, i64 0
  %i.rp = insertelement <2 x float> %i.ro, float %i.qi, i64 1
  %i.rq = fneg <2 x float> %i.rp
  %i.rr = insertelement <2 x float> poison, float %i.rn, i64 0
  %i.rs = shufflevector <2 x float> %i.rr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rq, <2 x float> %i.rg, <2 x float> %i.rs) ; 2 uses
  %i.ru = fmul float %i.qk, %.0853
  %i.rv = extractelement <2 x float> %i.rt, i64 0
  %i.rw = extractelement <2 x float> %i.rt, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.1854 = phi float [ %i.ru, %bb.aa ], [ %.0853, %bb.z ]
  %.1852 = phi float [ %i.rv, %bb.aa ], [ %i.rj, %bb.z ]
  %.1841 = phi float [ %i.rw, %bb.aa ], [ %i.ri, %bb.z ]
  %i.rx = fneg float %i.qk
  %i.ry = tail call float @llvm.fmuladd.f32(float %i.qq, float 2.000000e+00, float %i.rx) ; 2 uses
  %i.rz = tail call float @llvm.fabs.f32(float %i.ry)
  %i.sa = fadd float %i.rz, %sqrtf921             ; 3 uses
  %i.sb = fcmp une float %i.sa, 0.000000e+00
  br i1 %i.sb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.sc = fadd float %i.qs, %i.qu
  %i.sd = fneg float %i.ry
  %i.se = fdiv float %i.sd, %.1854                ; 2 uses
  %i.sf = fmul float %i.se, %.1841
  %i.sg = tail call float @llvm.fmuladd.f32(float %i.sc, float 5.000000e-01, float %i.sf) ; 2 uses
  %i.sh = fsub float %i.qs, %i.qu
  %i.si = fmul float %.1852, %i.se
  %i.sj = tail call float @llvm.fmuladd.f32(float %i.sh, float 5.000000e-01, float %i.si) ; 2 uses
  %i.sk = fmul float %i.sj, %i.sj
  %i.sl = tail call float @llvm.fmuladd.f32(float %i.sg, float %i.sg, float %i.sk)
  %i.sm = fpext float %i.sl to double
  %sqrt = tail call double @llvm.sqrt.f64(double %i.sm)
  %i.sn = fpext float %i.sa to double
  %i.so = fdiv double %sqrt, %i.sn
  %i.sp = fptrunc double %i.so to float
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.2855 = phi float [ %i.sp, %bb.ac ], [ %i.sa, %bb.ab ]
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.cw, i64 %indvars.iv1307
  store float %.2855, ptr %i.sq, align 4, !tbaa !18
  %indvars.iv.next1308 = add nuw nsw i64 %indvars.iv1307, 1 ; 2 uses
  %.b = load i1, ptr @L3psycho_anal.cw_lower_index, align 4
  %i.sr = select i1 %.b, i32 6, i32 0             ; 2 uses
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = icmp samesign ult i64 %indvars.iv.next1308, %i.ss
  br i1 %i.st, label %.peel.next, label %.preheader956, !llvm.loop !57

.preheader955:                                    ; preds = %bb.ak, %.preheader956
  %.lcssa974 = phi i32 [ %i.qc, %.preheader956 ], [ %i.vs, %bb.ak ] ; 2 uses
  %i.su = icmp sgt i32 %.lcssa974, 0
  br i1 %i.su, label %.lr.ph1056, label %.preheader954

bb.ae:                                            ; preds = %.lr.ph1041, %bb.ak
  %indvars.iv1312 = phi i64 [ %i.qe, %.lr.ph1041 ], [ %indvars.iv.next1313, %bb.ak ] ; 3 uses
  %i.sv = trunc i64 %indvars.iv1312 to i32
  %i.sw = add i32 %i.sv, 2
  %i.sx = lshr i32 %i.sw, 2                       ; 4 uses
  %i.sy = zext nneg i32 %i.sx to i64              ; 6 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.energy_s, i64 %i.sy
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !18 ; 4 uses
  %i.tb = fcmp une float %i.ta, 0.000000e+00
  br i1 %i.tb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.sy
  %i.td = load float, ptr %i.tc, align 4, !tbaa !18 ; 3 uses
  %i.te = sub nsw i32 256, %i.sx
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.tf
  %i.th = load float, ptr %i.tg, align 4, !tbaa !18 ; 3 uses
  %i.ti = fneg float %i.th
  %i.tj = fmul float %i.th, %i.ti
  %i.tk = tail call float @llvm.fmuladd.f32(float %i.td, float %i.td, float %i.tj)
  %i.tl = insertelement <2 x float> poison, float %i.td, i64 0
  %i.tm = insertelement <2 x float> %i.tl, float %i.tk, i64 1
  %i.tn = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.th, i64 0
  %i.to = fmul <2 x float> %i.tm, %i.tn
  %sqrtf = tail call float @sqrtf(float noundef %i.ta) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.0850 = phi float [ %sqrtf, %bb.af ], [ %i.ta, %bb.ae ]
  %.0842 = phi float [ %i.ta, %bb.af ], [ 1.000000e+00, %bb.ae ] ; 2 uses
  %i.tp = phi <2 x float> [ %i.to, %bb.af ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.ae ] ; 3 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.energy_s, i64 1032), i64 %i.sy
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !18 ; 3 uses
  %i.ts = fcmp une float %i.tr, 0.000000e+00
  %i.tt = extractelement <2 x float> %i.tp, i64 0 ; 2 uses
  %i.tu = extractelement <2 x float> %i.tp, i64 1 ; 2 uses
  br i1 %i.ts, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.sy
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !18 ; 2 uses
  %i.tx = sub nsw i32 256, %i.sx
  %i.ty = sext i32 %i.tx to i64
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.ty
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !18 ; 2 uses
  %i.ub = fadd float %i.tt, %i.tu
  %i.uc = fadd float %i.tw, %i.ua
  %i.ud = fmul float %i.ub, %i.uc
  %i.ue = fmul float %i.ud, 5.000000e-01
  %i.uf = insertelement <2 x float> poison, float %i.tw, i64 0
  %i.ug = insertelement <2 x float> %i.uf, float %i.ua, i64 1
  %i.uh = fneg <2 x float> %i.ug
  %i.ui = insertelement <2 x float> poison, float %i.ue, i64 0
  %i.uj = shufflevector <2 x float> %i.ui, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uh, <2 x float> %i.tp, <2 x float> %i.uj) ; 2 uses
  %sqrtf919 = tail call float @sqrtf(float noundef %i.tr) #11 ; 2 uses
  %i.ul = fmul float %.0842, %sqrtf919
  %i.um = extractelement <2 x float> %i.uk, i64 0
  %i.un = extractelement <2 x float> %i.uk, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.0849 = phi float [ %sqrtf919, %bb.ah ], [ %i.tr, %bb.ag ]
  %.1848 = phi float [ %i.un, %bb.ah ], [ %i.tt, %bb.ag ]
  %.1846 = phi float [ %i.um, %bb.ah ], [ %i.tu, %bb.ag ]
  %.1843 = phi float [ %i.ul, %bb.ah ], [ %.0842, %bb.ag ]
  %i.uo = fneg float %.0849
  %i.up = tail call float @llvm.fmuladd.f32(float %.0850, float 2.000000e+00, float %i.uo) ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @L3psycho_anal.energy_s, i64 516), i64 %i.sy
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !18
  %sqrtf920 = tail call float @sqrtf(float noundef %i.ur) #11
  %i.us = tail call float @llvm.fabs.f32(float %i.up)
  %i.ut = fadd float %i.us, %sqrtf920             ; 3 uses
  %i.uu = fcmp une float %i.ut, 0.000000e+00
  br i1 %i.uu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.sy
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !18 ; 2 uses
  %i.ux = sub nsw i32 256, %i.sx
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.on, i64 %i.uy
  %i.va = load float, ptr %i.uz, align 4, !tbaa !18 ; 2 uses
  %i.vb = fadd float %i.uw, %i.va
  %i.vc = fneg float %i.up
  %i.vd = fdiv float %i.vc, %.1843                ; 2 uses
  %i.ve = fmul float %.1848, %i.vd
  %i.vf = tail call float @llvm.fmuladd.f32(float %i.vb, float 5.000000e-01, float %i.ve) ; 2 uses
  %i.vg = fsub float %i.uw, %i.va
  %i.vh = fmul float %.1846, %i.vd
  %i.vi = tail call float @llvm.fmuladd.f32(float %i.vg, float 5.000000e-01, float %i.vh) ; 2 uses
  %i.vj = fmul float %i.vi, %i.vi
  %i.vk = tail call float @llvm.fmuladd.f32(float %i.vf, float %i.vf, float %i.vj)
  %i.vl = fpext float %i.vk to double
  %sqrt943 = tail call double @llvm.sqrt.f64(double %i.vl)
  %i.vm = fpext float %i.ut to double
  %i.vn = fdiv double %sqrt943, %i.vm
  %i.vo = fptrunc double %i.vn to float
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2844 = phi float [ %i.vo, %bb.aj ], [ %i.ut, %bb.ai ]
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.cw, i64 %indvars.iv1312
  %i.vq = insertelement <4 x float> poison, float %.2844, i64 0
  %i.vr = shufflevector <4 x float> %i.vq, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.vr, ptr %i.vp, align 4, !tbaa !18
  %indvars.iv.next1313 = add nuw nsw i64 %indvars.iv1312, 4 ; 2 uses
  %i.vs = load i32, ptr @L3psycho_anal.cw_upper_index, align 4, !tbaa !4 ; 2 uses
  %i.vt = sext i32 %i.vs to i64
  %i.vu = icmp slt i64 %indvars.iv.next1313, %i.vt
  br i1 %i.vu, label %bb.ae, label %.preheader955, !llvm.loop !59

.preheader954.loopexit:                           ; preds = %._crit_edge1050
  %i.vv = trunc nuw i64 %indvars.iv.next1321 to i32
  br label %.preheader954

.preheader954:                                    ; preds = %.preheader954.loopexit, %.preheader955
  %.11819.lcssa = phi i32 [ 0, %.preheader955 ], [ %.12.lcssa, %.preheader954.loopexit ]
  %.5.lcssa = phi i32 [ 0, %.preheader955 ], [ %i.vv, %.preheader954.loopexit ] ; 2 uses
  %i.vw = load i32, ptr @L3psycho_anal.npart_l_orig, align 4, !tbaa !4 ; 2 uses
  %i.vx = icmp slt i32 %.5.lcssa, %i.vw
  br i1 %i.vx, label %.lr.ph1070.preheader, label %._crit_edge1071

.lr.ph1070.preheader:                             ; preds = %.preheader954
  %i.vy = zext i32 %.5.lcssa to i64
  br label %.lr.ph1070

.lr.ph1056:                                       ; preds = %.preheader955, %._crit_edge1050
  %indvars.iv1320 = phi i64 [ %indvars.iv.next1321, %._crit_edge1050 ], [ 0, %.preheader955 ] ; 4 uses
  %.118191054 = phi i32 [ %.12.lcssa, %._crit_edge1050 ], [ 0, %.preheader955 ] ; 3 uses
  %i.vz = sext i32 %.118191054 to i64             ; 2 uses
  %i.wa = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %i.vz
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !18 ; 2 uses
  %i.wc = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.cw, i64 %i.vz
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !18
  %i.we = fmul float %i.wb, %i.wd
  %11 = insertelement <2 x float> poison, float %i.wb, i64 0
  %12 = insertelement <2 x float> %11, float %i.we, i64 1
  %13 = fpext <2 x float> %12 to <2 x double>     ; 3 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.numlines_l, i64 %indvars.iv1320
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !4  ; 6 uses
  %.121043 = add nsw i32 %.118191054, 1           ; 2 uses
  %i.wh = icmp sgt i32 %i.wg, 1
  br i1 %i.wh, label %.lr.ph1049.preheader, label %._crit_edge1050

.lr.ph1049.preheader:                             ; preds = %.lr.ph1056
  %i.wi = sext i32 %.121043 to i64                ; 4 uses
  %i.wj = and i32 %i.wg, 1
  %lcmp.mod1756.not.not = icmp eq i32 %i.wj, 0
  br i1 %lcmp.mod1756.not.not, label %.lr.ph1049.prol, label %.lr.ph1049.prol.loopexit

.lr.ph1049.prol:                                  ; preds = %.lr.ph1049.preheader
  %.0800.prol = add nsw i32 %i.wg, -1
  %i.wk = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %i.wi
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !18 ; 2 uses
  %14 = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.cw, i64 %i.wi
  %15 = load float, ptr %14, align 4, !tbaa !18
  %16 = fmul float %i.wl, %15
  %17 = insertelement <2 x float> poison, float %i.wl, i64 0
  %18 = insertelement <2 x float> %17, float %16, i64 1
  %19 = fpext <2 x float> %18 to <2 x double>
  %20 = fadd <2 x double> %13, %19                ; 2 uses
  %indvars.iv.next1317.prol = add nsw i64 %i.wi, 1
  br label %.lr.ph1049.prol.loopexit

.lr.ph1049.prol.loopexit:                         ; preds = %.lr.ph1049.prol, %.lr.ph1049.preheader
  %indvars.iv1316.unr = phi i64 [ %i.wi, %.lr.ph1049.preheader ], [ %indvars.iv.next1317.prol, %.lr.ph1049.prol ]
  %.0800.in1046.unr = phi i32 [ %i.wg, %.lr.ph1049.preheader ], [ %.0800.prol, %.lr.ph1049.prol ]
  %.unr = phi <2 x double> [ %13, %.lr.ph1049.preheader ], [ %20, %.lr.ph1049.prol ]
  %.lcssa1724.unr = phi <2 x double> [ poison, %.lr.ph1049.preheader ], [ %20, %.lr.ph1049.prol ]
  %i.wm = icmp eq i32 %i.wg, 2
  br i1 %i.wm, label %._crit_edge1050.loopexit, label %.lr.ph1049

.lr.ph1049:                                       ; preds = %.lr.ph1049.prol.loopexit, %.lr.ph1049
  %indvars.iv1316 = phi i64 [ %indvars.iv.next1317.1, %.lr.ph1049 ], [ %indvars.iv1316.unr, %.lr.ph1049.prol.loopexit ] ; 4 uses
  %.0800.in1046 = phi i32 [ %.0800.1, %.lr.ph1049 ], [ %.0800.in1046.unr, %.lr.ph1049.prol.loopexit ] ; 2 uses
  %21 = phi <2 x double> [ %35, %.lr.ph1049 ], [ %.unr, %.lr.ph1049.prol.loopexit ]
  %i.wn = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1316
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !18 ; 2 uses
  %22 = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.cw, i64 %indvars.iv1316
  %23 = load float, ptr %22, align 4, !tbaa !18
  %24 = fmul float %i.wo, %23
  %25 = insertelement <2 x float> poison, float %i.wo, i64 0
  %26 = insertelement <2 x float> %25, float %24, i64 1
  %27 = fpext <2 x float> %26 to <2 x double>
  %28 = fadd <2 x double> %21, %27
  %indvars.iv.next1317 = add nsw i64 %indvars.iv1316, 1 ; 2 uses
  %.0800.1 = add nsw i32 %.0800.in1046, -2
  %i.wp = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv.next1317
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !18 ; 2 uses
  %29 = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.cw, i64 %indvars.iv.next1317
  %30 = load float, ptr %29, align 4, !tbaa !18
  %31 = fmul float %i.wq, %30
  %32 = insertelement <2 x float> poison, float %i.wq, i64 0
  %33 = insertelement <2 x float> %32, float %31, i64 1
  %34 = fpext <2 x float> %33 to <2 x double>
  %35 = fadd <2 x double> %28, %34                ; 2 uses
  %indvars.iv.next1317.1 = add nsw i64 %indvars.iv1316, 2
  %i.wr = icmp sgt i32 %.0800.in1046, 3
  br i1 %i.wr, label %.lr.ph1049, label %._crit_edge1050.loopexit, !llvm.loop !60

._crit_edge1050.loopexit:                         ; preds = %.lr.ph1049, %.lr.ph1049.prol.loopexit
  %.lcssa1724 = phi <2 x double> [ %.lcssa1724.unr, %.lr.ph1049.prol.loopexit ], [ %35, %.lr.ph1049 ]
  %i.ws = add i32 %.118191054, %i.wg
  br label %._crit_edge1050

._crit_edge1050:                                  ; preds = %._crit_edge1050.loopexit, %.lr.ph1056
  %.12.lcssa = phi i32 [ %.121043, %.lr.ph1056 ], [ %i.ws, %._crit_edge1050.loopexit ] ; 3 uses
  %36 = phi <2 x double> [ %13, %.lr.ph1056 ], [ %.lcssa1724, %._crit_edge1050.loopexit ] ; 2 uses
  %37 = getelementptr inbounds nuw [8 x i8], ptr @L3psycho_anal.eb, i64 %indvars.iv1320
  %38 = extractelement <2 x double> %36, i64 0
  store double %38, ptr %37, align 8, !tbaa !19
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr @L3psycho_anal.cb, i64 %indvars.iv1320
  %39 = extractelement <2 x double> %36, i64 1
  store double %39, ptr %i.wt, align 8, !tbaa !19
  %indvars.iv.next1321 = add nuw nsw i64 %indvars.iv1320, 1 ; 2 uses
  %i.wu = icmp slt i32 %.12.lcssa, %.lcssa974
  br i1 %i.wu, label %.lr.ph1056, label %.preheader954.loopexit, !llvm.loop !61

.lr.ph1070:                                       ; preds = %.lr.ph1070.preheader, %._crit_edge1065
  %indvars.iv1328 = phi i64 [ %i.vy, %.lr.ph1070.preheader ], [ %indvars.iv.next1329, %._crit_edge1065 ] ; 4 uses
  %.131068 = phi i32 [ %.11819.lcssa, %.lr.ph1070.preheader ], [ %.14.lcssa, %._crit_edge1065 ] ; 3 uses
  %i.wv = sext i32 %.131068 to i64
  %i.ww = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %i.wv
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !18
  %i.wy = fpext float %i.wx to double             ; 3 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr @L3psycho_anal.numlines_l, i64 %indvars.iv1328
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !4  ; 6 uses
  %.141059 = add i32 %.131068, 1                  ; 2 uses
  %i.xb = icmp sgt i32 %i.xa, 1
  br i1 %i.xb, label %.lr.ph1064.preheader, label %._crit_edge1065

.lr.ph1064.preheader:                             ; preds = %.lr.ph1070
  %i.xc = sext i32 %.141059 to i64                ; 2 uses
  %i.xd = add nuw i32 %i.xa, 3
  %i.xe = add nsw i32 %i.xa, -2
  %xtraiter1758 = and i32 %i.xd, 3                ; 2 uses
  %lcmp.mod1759.not = icmp eq i32 %xtraiter1758, 0
  br i1 %lcmp.mod1759.not, label %.lr.ph1064.prol.loopexit, label %.lr.ph1064.prol

.lr.ph1064.prol:                                  ; preds = %.lr.ph1064.preheader, %.lr.ph1064.prol
  %indvars.iv1324.prol = phi i64 [ %indvars.iv.next1325.prol, %.lr.ph1064.prol ], [ %i.xc, %.lr.ph1064.preheader ] ; 2 uses
  %.07981061.prol = phi double [ %i.xi, %.lr.ph1064.prol ], [ %i.wy, %.lr.ph1064.preheader ]
  %.0799.in1060.prol = phi i32 [ %.0799.prol, %.lr.ph1064.prol ], [ %i.xa, %.lr.ph1064.preheader ]
  %prol.iter1760 = phi i32 [ %prol.iter1760.next, %.lr.ph1064.prol ], [ 0, %.lr.ph1064.preheader ]
  %.0799.prol = add nsw i32 %.0799.in1060.prol, -1 ; 2 uses
  %i.xf = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1324.prol
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !18
  %i.xh = fpext float %i.xg to double
  %i.xi = fadd double %.07981061.prol, %i.xh      ; 3 uses
  %indvars.iv.next1325.prol = add nsw i64 %indvars.iv1324.prol, 1 ; 2 uses
  %prol.iter1760.next = add i32 %prol.iter1760, 1 ; 2 uses
  %prol.iter1760.cmp.not = icmp eq i32 %prol.iter1760.next, %xtraiter1758
  br i1 %prol.iter1760.cmp.not, label %.lr.ph1064.prol.loopexit, label %.lr.ph1064.prol, !llvm.loop !62

.lr.ph1064.prol.loopexit:                         ; preds = %.lr.ph1064.prol, %.lr.ph1064.preheader
  %indvars.iv1324.unr = phi i64 [ %i.xc, %.lr.ph1064.preheader ], [ %indvars.iv.next1325.prol, %.lr.ph1064.prol ]
  %.07981061.unr = phi double [ %i.wy, %.lr.ph1064.preheader ], [ %i.xi, %.lr.ph1064.prol ]
  %.0799.in1060.unr = phi i32 [ %i.xa, %.lr.ph1064.preheader ], [ %.0799.prol, %.lr.ph1064.prol ]
  %.lcssa1726.unr.a = phi double [ poison, %.lr.ph1064.preheader ], [ %i.xi, %.lr.ph1064.prol ]
  %i.xj = icmp ult i32 %i.xe, 3
  br i1 %i.xj, label %._crit_edge1065.loopexit, label %.lr.ph1064

.lr.ph1064:                                       ; preds = %.lr.ph1064.prol.loopexit, %.lr.ph1064
  %indvars.iv1324 = phi i64 [ %indvars.iv.next1325.3, %.lr.ph1064 ], [ %indvars.iv1324.unr, %.lr.ph1064.prol.loopexit ] ; 5 uses
  %.07981061 = phi double [ %i.yc, %.lr.ph1064 ], [ %.07981061.unr, %.lr.ph1064.prol.loopexit ]
  %.0799.in1060 = phi i32 [ %.0799.3, %.lr.ph1064 ], [ %.0799.in1060.unr, %.lr.ph1064.prol.loopexit ] ; 2 uses
  %i.xk = getelementptr inbounds [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1324
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !18
  %i.xm = fpext float %i.xl to double
  %i.xn = fadd double %.07981061, %i.xm
  %i.xo = getelementptr [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1324
  %i.xp = getelementptr i8, ptr %i.xo, i64 4
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !18
  %i.xr = fpext float %i.xq to double
  %i.xs = fadd double %i.xn, %i.xr
  %i.xt = getelementptr [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1324
  %i.xu = getelementptr i8, ptr %i.xt, i64 8
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !18
  %i.xw = fpext float %i.xv to double
  %i.xx = fadd double %i.xs, %i.xw
  %.0799.3 = add nsw i32 %.0799.in1060, -4
  %i.xy = getelementptr [4 x i8], ptr @L3psycho_anal.energy, i64 %indvars.iv1324
  %i.xz = getelementptr i8, ptr %i.xy, i64 12
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !18
  %i.yb = fpext float %i.ya to double
  %i.yc = fadd double %i.xx, %i.yb                ; 2 uses
  %indvars.iv.next1325.3 = add nsw i64 %indvars.iv1324, 4
  %i.yd = icmp sgt i32 %.0799.in1060, 5
  br i1 %i.yd, label %.lr.ph1064, label %._crit_edge1065.loopexit, !llvm.loop !63

._crit_edge1065.loopexit:                         ; preds = %.lr.ph1064, %.lr.ph1064.prol.loopexit
  %.lcssa1726.a = phi double [ %.lcssa1726.unr.a, %.lr.ph1064.prol.loopexit ], [ %i.yc, %.lr.ph1064 ]
  %i.ye = add i32 %.131068, %i.xa
  br label %._crit_edge1065

._crit_edge1065:                                  ; preds = %._crit_edge1065.loopexit, %.lr.ph1070
  %.0798.lcssa = phi double [ %i.wy, %.lr.ph1070 ], [ %.lcssa1726.a, %._crit_edge1065.loopexit ] ; 2 uses
  %.14.lcssa = phi i32 [ %.141059, %.lr.ph1070 ], [ %i.ye, %._crit_edge1065.loopexit ]
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr @L3psycho_anal.eb, i64 %indvars.iv1328
  store double %.0798.lcssa, ptr %i.yf, align 8, !tbaa !19
  %i.yg = fmul double %.0798.lcssa, 4.000000e-01
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr @L3psycho_anal.cb, i64 %indvars.iv1328
  store double %i.yg, ptr %i.yh, align 8, !tbaa !19
  %indvars.iv.next1329 = add nuw nsw i64 %indvars.iv1328, 1 ; 2 uses
  %i.yi = trunc nuw i64 %indvars.iv.next1329 to i32
  %i.yj = icmp sgt i32 %i.vw, %i.yi
  br i1 %i.yj, label %.lr.ph1070, label %._crit_edge1071, !llvm.loop !64

._crit_edge1071:                                  ; preds = %._crit_edge1065, %.preheader954
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr @L3psycho_anal.pe, i64 %indvars.iv1398 ; 2 uses
  store double 0.000000e+00, ptr %i.yk, align 8, !tbaa !19
  %i.yl = load i32, ptr @L3psycho_anal.npart_l, align 4, !tbaa !4 ; 2 uses
  %i.ym = icmp sgt i32 %i.yl, 0
  br i1 %i.ym, label %.lr.ph1083, label %._crit_edge1084

.lr.ph1083:                                       ; preds = %._crit_edge1071
  %i.yn = getelementptr inbounds nuw [504 x i8], ptr @L3psycho_anal.nb_1, i64 %indvars.iv1398
  %i.yo = getelementptr inbounds nuw [504 x i8], ptr @L3psycho_anal.nb_2, i64 %indvars.iv1398
  %wide.trip.count1342 = zext nneg i32 %i.yl to i64
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph1083, %bb.aq
  %i.yp = phi double [ 0.000000e+00, %.lr.ph1083 ], [ %i.abt, %bb.aq ] ; 2 uses
  %indvars.iv1338 = phi i64 [ 0, %.lr.ph1083 ], [ %indvars.iv.next1339, %bb.aq ] ; 10 uses
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr @L3psycho_anal.s3ind, i64 %indvars.iv1338 ; 2 uses
  %i.yr = load i32, ptr %i.yq, align 8, !tbaa !4  ; 4 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 4
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !4  ; 3 uses
  %.not9181072 = icmp sgt i32 %i.yr, %i.yt
  br i1 %.not9181072, label %._crit_edge1078.thread, label %.lr.ph1077

.lr.ph1077:                                       ; preds = %bb.al
  %i.yu = getelementptr inbounds nuw [512 x i8], ptr @L3psycho_anal.s3_l, i64 %indvars.iv1338 ; 3 uses
  %i.yv = sext i32 %i.yr to i64                   ; 5 uses
  %i.yw = add i32 %i.yt, 1                        ; 2 uses
  %i.yx = sub i32 %i.yw, %i.yr
  %xtraiter1763 = and i32 %i.yx, 1
  %lcmp.mod1764.not = icmp eq i32 %xtraiter1763, 0
  br i1 %lcmp.mod1764.not, label %.prol.loopexit1762, label %.prol.loopexit1762.unr-lcssa

.prol.loopexit1762.unr-lcssa:                     ; preds = %.lr.ph1077
  %i.yy = getelementptr inbounds [8 x i8], ptr %i.yu, i64 %i.yv
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !19
  %i.za = getelementptr inbounds [8 x i8], ptr @L3psycho_anal.eb, i64 %i.yv
  %i.zb = load double, ptr %i.za, align 8, !tbaa !19
  %i.zc = getelementptr inbounds [8 x i8], ptr @L3psycho_anal.cb, i64 %i.yv
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !19
  %i.ze = insertelement <2 x double> poison, double %i.yz, i64 0
  %i.zf = shufflevector <2 x double> %i.ze, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zg = insertelement <2 x double> poison, double %i.zd, i64 0
  %i.zh = insertelement <2 x double> %i.zg, double %i.zb, i64 1
  %i.zi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zf, <2 x double> %i.zh, <2 x double> zeroinitializer) ; 3 uses
  %i.zj = extractelement <2 x double> %i.zi, i64 1
  %indvars.iv.next1333.prol = add nsw i64 %i.yv, 1
  br label %.prol.loopexit1762

.prol.loopexit1762:                               ; preds = %.prol.loopexit1762.unr-lcssa, %.lr.ph1077
  %.lcssa1728.unr = phi <2 x double> [ poison, %.lr.ph1077 ], [ %i.zi, %.prol.loopexit1762.unr-lcssa ]
  %.lcssa1727.unr = phi double [ poison, %.lr.ph1077 ], [ %i.zj, %.prol.loopexit1762.unr-lcssa ]
  %indvars.iv1332.unr = phi i64 [ %i.yv, %.lr.ph1077 ], [ %indvars.iv.next1333.prol, %.prol.loopexit1762.unr-lcssa ]
  %.unr.a = phi <2 x double> [ zeroinitializer, %.lr.ph1077 ], [ %i.zi, %.prol.loopexit1762.unr-lcssa ]
  %i.zk = icmp eq i32 %i.yt, %i.yr
  br i1 %i.zk, label %._crit_edge1078, label %.lr.ph1077.new

.lr.ph1077.new:                                   ; preds = %.prol.loopexit1762, %.lr.ph1077.new
  %indvars.iv1332 = phi i64 [ %indvars.iv.next1333.1, %.lr.ph1077.new ], [ %indvars.iv1332.unr, %.prol.loopexit1762 ] ; 5 uses
  %i.zl = phi <2 x double> [ %i.aah, %.lr.ph1077.new ], [ %.unr.a, %.prol.loopexit1762 ]
  %i.zm = getelementptr inbounds [8 x i8], ptr %i.yu, i64 %indvars.iv1332
  %i.zn = load double, ptr %i.zm, align 8, !tbaa !19
  %i.zo = getelementptr inbounds [8 x i8], ptr @L3psycho_anal.eb, i64 %indvars.iv1332
  %i.zp = load double, ptr %i.zo, align 8, !tbaa !19
  %i.zq = getelementptr inbounds [8 x i8], ptr @L3psycho_anal.cb, i64 %indvars.iv1332
  %i.zr = load double, ptr %i.zq, align 8, !tbaa !19
  %i.zs = insertelement <2 x double> poison, double %i.zn, i64 0
  %i.zt = shufflevector <2 x double> %i.zs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zu = insertelement <2 x double> poison, double %i.zr, i64 0
  %i.zv = insertelement <2 x double> %i.zu, double %i.zp, i64 1
  %i.zw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.zv, <2 x double> %i.zl)
  %indvars.iv.next1333 = add nsw i64 %indvars.iv1332, 1 ; 3 uses
  %i.zx = getelementptr inbounds [8 x i8], ptr %i.yu, i64 %indvars.iv.next1333
  %i.zy = load double, ptr %i.zx, align 8, !tbaa !19
  %i.zz = getelementptr inbounds [8 x i8], ptr @L3psycho_anal.eb, i64 %indvars.iv.next1333
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !19
  %i.aab = getelementptr inbounds [8 x i8], ptr @L3psycho_anal.cb, i64 %indvars.iv.next1333
  %i.aac = load double, ptr %i.aab, align 8, !tbaa !19
  %i.aad = insertelement <2 x double> poison, double %i.zy, i64 0
  %i.aae = shufflevector <2 x double> %i.aad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aaf = insertelement <2 x double> poison, double %i.aac, i64 0
  %i.aag = insertelement <2 x double> %i.aaf, double %i.aaa, i64 1
  %i.aah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aae, <2 x double> %i.aag, <2 x double> %i.zw) ; 3 uses
  %indvars.iv.next1333.1 = add nsw i64 %indvars.iv1332, 2 ; 2 uses
  %lftr.wideiv1336.1 = trunc i64 %indvars.iv.next1333.1 to i32
  %exitcond1337.not.1 = icmp eq i32 %i.yw, %lftr.wideiv1336.1
  br i1 %exitcond1337.not.1, label %._crit_edge1078.unr-lcssa, label %.lr.ph1077.new, !llvm.loop !65

._crit_edge1078.unr-lcssa:                        ; preds = %.lr.ph1077.new
  %i.aai = extractelement <2 x double> %i.aah, i64 1
  br label %._crit_edge1078

._crit_edge1078:                                  ; preds = %.prol.loopexit1762, %._crit_edge1078.unr-lcssa
  %.lcssa1728 = phi <2 x double> [ %.lcssa1728.unr, %.prol.loopexit1762 ], [ %i.aah, %._crit_edge1078.unr-lcssa ]
  %.lcssa1727 = phi double [ %.lcssa1727.unr, %.prol.loopexit1762 ], [ %i.aai, %._crit_edge1078.unr-lcssa ] ; 7 uses
  %i.aaj = fcmp une double %.lcssa1727, 0.000000e+00
  br i1 %i.aaj, label %bb.am, label %._crit_edge1078.thread

bb.am:                                            ; preds = %._crit_edge1078
  %i.aak = extractelement <2 x double> %.lcssa1728, i64 0
  %i.aal = fdiv double %i.aak, %.lcssa1727        ; 3 uses
  %i.aam = fcmp ugt double %i.aal, f0x3FA8F6869E6F084D
  br i1 %i.aam, label %bb.an, label %._crit_edge1078.thread

bb.an:                                            ; preds = %bb.am
  %i.aan = fcmp ogt double %i.aal, f0x3FDFEDFBDEEA22F7
  br i1 %i.aan, label %._crit_edge1078.thread, label %bb.ao
end_hunk_0
