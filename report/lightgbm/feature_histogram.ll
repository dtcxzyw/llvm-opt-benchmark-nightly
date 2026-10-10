Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/feature_histogram?download=true
inline.NumInlined: 27965
inline.NumDeleted: 4134
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 130
begin_hunk_0_@_ZN8LightGBM16FeatureHistogram36FindBestThresholdCategoricalIntInnerILb1ELb0ELb1ELb0ELb1EiissLi16ELi16EEEvlddiPKNS_17FeatureConstraintEdPNS_9SplitInfoE:bb.a
  %i.gk = icmp sgt i64 %i.fz, 0
  br i1 %i.gk, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.u:                                             ; preds = %.noexc338
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gh, ptr align 4 %.sroa.0445.0531, i64 %i.fz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.u, %.noexc338
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0445.0531, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0445.0531, i64 noundef %i.fz) #23
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gf
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.r, %.lr.ph533
  %.sroa.18.1 = phi ptr [ %.sroa.18.0529, %.lr.ph533 ], [ %i.gm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.18.0529, %bb.r ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0530, %.lr.ph533 ], [ %i.gl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.fw, %bb.r ] ; 2 uses
  %.sroa.0445.1 = phi ptr [ %.sroa.0445.0531, %.lr.ph533 ], [ %i.gh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0445.0531, %bb.r ] ; 2 uses
  %indvars.iv.next583 = add nsw i64 %indvars.iv582, 1 ; 2 uses
  %i.gn = icmp slt i64 %indvars.iv.next583, %i.ay
  br i1 %i.gn, label %.lr.ph533, label %._crit_edge.loopexit, !llvm.loop !1013

bb.w:                                             ; preds = %bb.p, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.go = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #21
          to label %.noexc339 unwind label %bb.z  ; 6 uses

.noexc339:                                        ; preds = %bb.w
  store i32 1, ptr %i.go, align 4, !tbaa !617
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4 ; 2 uses
  %i.gq = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #21
          to label %.lr.ph.i.i.i.i.i.i.i.i.i340.preheader unwind label %.thread476 ; 4 uses

.lr.ph.i.i.i.i.i.i.i.i.i340.preheader:            ; preds = %.noexc339
  store i32 0, ptr %i.gq, align 4, !tbaa !617
  %i.gr = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i350 unwind label %bb.aa ; 6 uses

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i350: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i340.preheader
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4 ; 2 uses
  store i32 -1, ptr %i.gs, align 4, !tbaa !617
  %i.gt = load i32, ptr %i.go, align 4
  store i32 %i.gt, ptr %i.gr, align 4
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef 4) #23
  %i.gu = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %bb.x unwind label %bb.ab      ; 4 uses

bb.x:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i350
  %i.gv = add nsw i32 %i.eo, -1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 2 uses
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !617
  %i.gx = load i32, ptr %i.gq, align 4
  store i32 %i.gx, ptr %i.gu, align 4
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef 4) #23
  %i.gy = load ptr, ptr %0, align 8, !tbaa !535   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !542 ; 6 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 500
  %i.hc = add nsw i32 %i.eo, 1
  %i.hd = sdiv i32 %i.hc, 2
  %i.he = load i32, ptr %i.hb, align 4, !tbaa !617
  %.sroa.speculated405 = call i32 @llvm.smin.i32(i32 %i.hd, i32 %i.he)
  %.sroa.speculated410 = call i32 @llvm.smin.i32(i32 %.sroa.speculated405, i32 %i.eo) ; 4 uses
  %i.hf = call i32 @llvm.smax.i32(i32 %.sroa.speculated410, i32 1)
  %.sroa.speculated = add nsw i32 %i.hf, -1       ; 2 uses
  %.not506 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not506, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 44 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !607
  %i.hi = mul i32 %i.hh, 214013
  %i.hj = add i32 %i.hi, 2531011                  ; 2 uses
  store i32 %i.hj, ptr %i.hg, align 4, !tbaa !607
  %i.hk = and i32 %i.hj, 2147483647
  %i.hl = urem i32 %i.hk, %.sroa.speculated
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread476:                                       ; preds = %.noexc339
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i340.preheader
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.thread486

bb.ab:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i350
  %i.hp = landingpad { ptr, i32 }
          cleanup
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  br label %.thread486

bb.ac:                                            ; preds = %bb.y, %bb.x
  %.1279 = phi i32 [ 0, %bb.x ], [ %i.hl, %bb.y ] ; 4 uses
  store i8 0, ptr %i.a, align 8, !tbaa !595
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ha, i64 496
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !618
  %.fr = freeze i32 %i.hs                         ; 3 uses
  %i.ht = icmp sgt i32 %.sroa.speculated410, 0
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ha, i64 312 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ha, i64 416 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ha, i64 720 ; 2 uses
  br i1 %i.ht, label %.split.us, label %_ZNSt6vectorIiSaIiEED2Ev.exit363

.split.us:                                        ; preds = %bb.ac
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ha, i64 308
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !610 ; 3 uses
  %invariant.smax.us = call i32 @llvm.smax.i32(i32 %i.hy, i32 %.fr) ; 2 uses
  %i.hz = load i32, ptr %i.gr, align 4, !tbaa !617 ; 2 uses
  %i.ia = load i32, ptr %i.gu, align 4, !tbaa !617
  %i.ib = sext i32 %i.ia to i64
  %i.ic = sext i32 %i.hz to i64
  %i.id = insertelement <2 x double> poison, double %2, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.if = insertelement <2 x double> poison, double %6, i64 0
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ih = insertelement <2 x double> poison, double %i.er, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.split.us, %bb.am
  %indvars.iv585 = phi i64 [ %i.ib, %.split.us ], [ %indvars.iv.next586, %bb.am ] ; 2 uses
  %.8545.us = phi double [ -inf, %.split.us ], [ %.14.ph.us, %bb.am ] ; 9 uses
  %.8239544.us = phi i32 [ 0, %.split.us ], [ %.14245.ph.us, %bb.am ] ; 8 uses
  %.0249543.us = phi i32 [ 0, %.split.us ], [ %i.le, %bb.am ] ; 2 uses
  %.0250542.us = phi i32 [ 0, %.split.us ], [ %i.iu, %bb.am ]
  %.0251541.us = phi i32 [ 0, %.split.us ], [ %i.it, %bb.am ]
  %.0252540.us = phi i32 [ 0, %.split.us ], [ %.3255.ph.us, %bb.am ]
  %.1281538.us = phi i32 [ 1, %.split.us ], [ %.7287.ph.us, %bb.am ] ; 8 uses
  %.8298537.us = phi i32 [ -1, %.split.us ], [ %.14304.ph.us, %bb.am ] ; 8 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0445.0.lcssa, i64 %indvars.iv585
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !617
  %indvars.iv.next586 = add nsw i64 %indvars.iv585, %i.ic
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !617 ; 2 uses
  %i.io = and i32 %i.in, 65535
  %i.ip = uitofp nneg i32 %i.io to double
  %i.iq = fmul double %i.at, %i.ip
  %i.ir = fadd double %i.iq, 5.000000e-01
  %i.is = fptosi double %i.ir to i32              ; 2 uses
  %i.it = add nsw i32 %i.in, %.0251541.us         ; 5 uses
  %i.iu = add nsw i32 %.0250542.us, %i.is         ; 4 uses
  %i.iv = add nsw i32 %.0252540.us, %i.is         ; 4 uses
  %i.iw = and i32 %i.it, 65535
  %i.ix = uitofp nneg i32 %i.iw to double
  %i.iy = fmul double %3, %i.ix                   ; 2 uses
  %i.iz = icmp slt i32 %i.iu, %i.hy
  br i1 %i.iz, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ja = load double, ptr %i.hu, align 8, !tbaa !611 ; 2 uses
  %i.jb = fcmp olt double %i.iy, %i.ja
  br i1 %i.jb, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jc = sub nsw i32 %4, %i.iu                   ; 2 uses
  %or.cond.us = icmp slt i32 %i.jc, %invariant.smax.us
  br i1 %or.cond.us, label %._crit_edge548.us, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jd = sub nsw i32 %i.h, %i.it                 ; 2 uses
  %i.je = and i32 %i.jd, 65535
  %i.jf = uitofp nneg i32 %i.je to double
  %i.jg = fmul double %3, %i.jf                   ; 2 uses
  %i.jh = fcmp olt double %i.jg, %i.ja
  br i1 %i.jh, label %._crit_edge548.us, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ji = icmp slt i32 %i.iv, %.fr
  br i1 %i.ji, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not326.us = icmp eq i32 %.0249543.us, %.1279
  br i1 %.not326.us, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.jj = insertelement <2 x i32> poison, i32 %i.it, i64 0
  %i.jk = insertelement <2 x i32> %i.jj, i32 %i.jd, i64 1
  %i.jl = ashr <2 x i32> %i.jk, splat (i32 16)
  %i.jm = load double, ptr %i.hv, align 8, !tbaa !581
  %i.jn = load double, ptr %i.hw, align 8, !tbaa !579
  %i.jo = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.jp = insertelement <2 x double> %i.jo, double %i.jg, i64 1
  %i.jq = fadd <2 x double> %i.ii, %i.jp          ; 2 uses
  %i.jr = insertelement <2 x i32> poison, i32 %i.iu, i64 0
  %i.js = insertelement <2 x i32> %i.jr, i32 %i.jc, i64 1
  %i.jt = sitofp <2 x i32> %i.js to <2 x double>
  %i.ju = sitofp <2 x i32> %i.jl to <2 x double>
  %i.jv = fmul <2 x double> %i.ie, %i.ju          ; 3 uses
  %i.jw = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.jv)
  %i.jx = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.jy = shufflevector <2 x double> %i.jx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jz = fsub <2 x double> %i.jw, %i.jy          ; 2 uses
  %i.ka = fcmp ogt <2 x double> %i.jz, zeroinitializer
  %i.kb = select <2 x i1> %i.ka, <2 x double> %i.jz, <2 x double> zeroinitializer ; 2 uses
  %i.kc = fcmp ogt <2 x double> %i.jv, zeroinitializer
  %i.kd = zext <2 x i1> %i.kc to <2 x i8>
  %i.ke = fcmp olt <2 x double> %i.jv, zeroinitializer
  %i.kf = sext <2 x i1> %i.ke to <2 x i8>
  %i.kg = add nsw <2 x i8> %i.kf, %i.kd
  %i.kh = sitofp <2 x i8> %i.kg to <2 x double>   ; 2 uses
  %i.ki = fneg <2 x double> %i.kh
  %i.kj = fmul <2 x double> %i.kb, %i.ki
  %i.kk = fdiv <2 x double> %i.kj, %i.jq
  %i.kl = insertelement <2 x double> poison, double %i.jn, i64 0
  %i.km = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kn = fdiv <2 x double> %i.jt, %i.km          ; 2 uses
  %i.ko = fmul <2 x double> %i.kn, %i.kk
  %i.kp = fadd <2 x double> %i.kn, splat (double 1.000000e+00) ; 2 uses
  %i.kq = fdiv <2 x double> %i.ko, %i.kp
  %i.kr = fdiv <2 x double> %i.ig, %i.kp
  %i.ks = fadd <2 x double> %i.kr, %i.kq          ; 3 uses
  %i.kt = fmul <2 x double> %i.kb, %i.kh
  %i.ku = fmul <2 x double> %i.kt, splat (double 2.000000e+00)
  %i.kv = fmul <2 x double> %i.jq, %i.ks
  %i.kw = fmul <2 x double> %i.ks, %i.kv
  %i.kx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ku, <2 x double> %i.ks, <2 x double> %i.kw) ; 2 uses
  %i.ky = extractelement <2 x double> %i.kx, i64 1
  %i.kz = fneg double %i.ky
  %i.la = extractelement <2 x double> %i.kx, i64 0
  %i.lb = fsub double %i.kz, %i.la                ; 3 uses
  %i.lc = fcmp ugt double %i.lb, %i.aj
  br i1 %i.lc, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  store i8 1, ptr %i.a, align 8, !tbaa !595
  %i.ld = fcmp ogt double %i.lb, %.8545.us
  br i1 %i.ld, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ae, %bb.ad
  %.14304.ph.us = phi i32 [ %.8298537.us, %bb.ak ], [ %.1279, %bb.al ], [ %.8298537.us, %bb.aj ], [ %.8298537.us, %bb.ai ], [ %.8298537.us, %bb.ah ], [ %.8298537.us, %bb.ae ], [ %.8298537.us, %bb.ad ] ; 2 uses
  %.7287.ph.us = phi i32 [ %.1281538.us, %bb.ak ], [ %i.hz, %bb.al ], [ %.1281538.us, %bb.aj ], [ %.1281538.us, %bb.ai ], [ %.1281538.us, %bb.ah ], [ %.1281538.us, %bb.ae ], [ %.1281538.us, %bb.ad ] ; 2 uses
  %.3255.ph.us = phi i32 [ 0, %bb.ak ], [ 0, %bb.al ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ %i.iv, %bb.ah ], [ %i.iv, %bb.ae ], [ %i.iv, %bb.ad ]
  %.14245.ph.us = phi i32 [ %.8239544.us, %bb.ak ], [ %i.it, %bb.al ], [ %.8239544.us, %bb.aj ], [ %.8239544.us, %bb.ai ], [ %.8239544.us, %bb.ah ], [ %.8239544.us, %bb.ae ], [ %.8239544.us, %bb.ad ] ; 2 uses
  %.14.ph.us = phi double [ %.8545.us, %bb.ak ], [ %i.lb, %bb.al ], [ %.8545.us, %bb.aj ], [ %.8545.us, %bb.ai ], [ %.8545.us, %bb.ah ], [ %.8545.us, %bb.ae ], [ %.8545.us, %bb.ad ] ; 2 uses
  %i.le = add nuw nsw i32 %.0249543.us, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.le, %.sroa.speculated410
  br i1 %exitcond.not, label %._crit_edge548.us, label %bb.ad, !llvm.loop !1014

._crit_edge548.us:                                ; preds = %bb.am, %bb.af, %bb.ag
  %.8298.lcssa.us = phi i32 [ %.8298537.us, %bb.af ], [ %.8298537.us, %bb.ag ], [ %.14304.ph.us, %bb.am ]
  %.1281.lcssa.us = phi i32 [ %.1281538.us, %bb.af ], [ %.1281538.us, %bb.ag ], [ %.7287.ph.us, %bb.am ]
  %.8239.lcssa.us = phi i32 [ %.8239544.us, %bb.af ], [ %.8239544.us, %bb.ag ], [ %.14245.ph.us, %bb.am ]
  %.8.lcssa.us = phi double [ %.8545.us, %bb.af ], [ %.8545.us, %bb.ag ], [ %.14.ph.us, %bb.am ]
  %i.lf = load i32, ptr %i.gs, align 4, !tbaa !617 ; 2 uses
  %i.lg = load i32, ptr %i.gw, align 4, !tbaa !617
  %i.lh = sext i32 %i.lg to i64
  %i.li = sext i32 %i.lf to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.aw, %._crit_edge548.us
  %indvars.iv585.1 = phi i64 [ %i.lh, %._crit_edge548.us ], [ %indvars.iv.next586.1, %bb.aw ] ; 2 uses
  %.8545.us.1 = phi double [ %.8.lcssa.us, %._crit_edge548.us ], [ %.14.ph.us.1, %bb.aw ] ; 9 uses
  %.8239544.us.1 = phi i32 [ %.8239.lcssa.us, %._crit_edge548.us ], [ %.14245.ph.us.1, %bb.aw ] ; 8 uses
  %.0249543.us.1 = phi i32 [ 0, %._crit_edge548.us ], [ %i.oe, %bb.aw ] ; 2 uses
  %.0250542.us.1 = phi i32 [ 0, %._crit_edge548.us ], [ %i.lu, %bb.aw ]
  %.0251541.us.1 = phi i32 [ 0, %._crit_edge548.us ], [ %i.lt, %bb.aw ]
  %.0252540.us.1 = phi i32 [ 0, %._crit_edge548.us ], [ %.3255.ph.us.1, %bb.aw ]
  %.1281538.us.1 = phi i32 [ %.1281.lcssa.us, %._crit_edge548.us ], [ %.7287.ph.us.1, %bb.aw ] ; 8 uses
  %.8298537.us.1 = phi i32 [ %.8298.lcssa.us, %._crit_edge548.us ], [ %.14304.ph.us.1, %bb.aw ] ; 8 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0445.0.lcssa, i64 %indvars.iv585.1
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !617
  %indvars.iv.next586.1 = add nsw i64 %indvars.iv585.1, %i.li
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !617 ; 2 uses
  %i.lo = and i32 %i.ln, 65535
  %i.lp = uitofp nneg i32 %i.lo to double
  %i.lq = fmul double %i.at, %i.lp
  %i.lr = fadd double %i.lq, 5.000000e-01
  %i.ls = fptosi double %i.lr to i32              ; 2 uses
  %i.lt = add nsw i32 %i.ln, %.0251541.us.1       ; 5 uses
  %i.lu = add nsw i32 %.0250542.us.1, %i.ls       ; 4 uses
  %i.lv = add nsw i32 %.0252540.us.1, %i.ls       ; 4 uses
  %i.lw = and i32 %i.lt, 65535
  %i.lx = uitofp nneg i32 %i.lw to double
  %i.ly = fmul double %3, %i.lx                   ; 2 uses
  %i.lz = icmp slt i32 %i.lu, %i.hy
  br i1 %i.lz, label %bb.aw, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ma = load double, ptr %i.hu, align 8, !tbaa !611 ; 2 uses
  %i.mb = fcmp olt double %i.ly, %i.ma
  br i1 %i.mb, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mc = sub nsw i32 %4, %i.lu                   ; 2 uses
  %or.cond.us.1 = icmp slt i32 %i.mc, %invariant.smax.us
  br i1 %or.cond.us.1, label %._crit_edge548.us.1, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.md = sub nsw i32 %i.h, %i.lt                 ; 2 uses
  %i.me = and i32 %i.md, 65535
  %i.mf = uitofp nneg i32 %i.me to double
  %i.mg = fmul double %3, %i.mf                   ; 2 uses
  %i.mh = fcmp olt double %i.mg, %i.ma
  br i1 %i.mh, label %._crit_edge548.us.1, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mi = icmp slt i32 %i.lv, %.fr
  br i1 %i.mi, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not326.us.1 = icmp eq i32 %.0249543.us.1, %.1279
  br i1 %.not326.us.1, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.mj = insertelement <2 x i32> poison, i32 %i.lt, i64 0
  %i.mk = insertelement <2 x i32> %i.mj, i32 %i.md, i64 1
  %i.ml = ashr <2 x i32> %i.mk, splat (i32 16)
  %i.mm = load double, ptr %i.hv, align 8, !tbaa !581
  %i.mn = load double, ptr %i.hw, align 8, !tbaa !579
  %i.mo = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.mp = insertelement <2 x double> %i.mo, double %i.mg, i64 1
  %i.mq = fadd <2 x double> %i.ii, %i.mp          ; 2 uses
  %i.mr = insertelement <2 x i32> poison, i32 %i.lu, i64 0
  %i.ms = insertelement <2 x i32> %i.mr, i32 %i.mc, i64 1
  %i.mt = sitofp <2 x i32> %i.ms to <2 x double>
  %i.mu = sitofp <2 x i32> %i.ml to <2 x double>
  %i.mv = fmul <2 x double> %i.ie, %i.mu          ; 3 uses
  %i.mw = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.mv)
  %i.mx = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.my = shufflevector <2 x double> %i.mx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mz = fsub <2 x double> %i.mw, %i.my          ; 2 uses
  %i.na = fcmp ogt <2 x double> %i.mz, zeroinitializer
  %i.nb = select <2 x i1> %i.na, <2 x double> %i.mz, <2 x double> zeroinitializer ; 2 uses
  %i.nc = fcmp ogt <2 x double> %i.mv, zeroinitializer
  %i.nd = zext <2 x i1> %i.nc to <2 x i8>
  %i.ne = fcmp olt <2 x double> %i.mv, zeroinitializer
  %i.nf = sext <2 x i1> %i.ne to <2 x i8>
  %i.ng = add nsw <2 x i8> %i.nf, %i.nd
  %i.nh = sitofp <2 x i8> %i.ng to <2 x double>   ; 2 uses
  %i.ni = fneg <2 x double> %i.nh
  %i.nj = fmul <2 x double> %i.nb, %i.ni
  %i.nk = fdiv <2 x double> %i.nj, %i.mq
  %i.nl = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.nm = shufflevector <2 x double> %i.nl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nn = fdiv <2 x double> %i.mt, %i.nm          ; 2 uses
  %i.no = fmul <2 x double> %i.nn, %i.nk
  %i.np = fadd <2 x double> %i.nn, splat (double 1.000000e+00) ; 2 uses
  %i.nq = fdiv <2 x double> %i.no, %i.np
  %i.nr = fdiv <2 x double> %i.ig, %i.np
  %i.ns = fadd <2 x double> %i.nr, %i.nq          ; 3 uses
  %i.nt = fmul <2 x double> %i.nb, %i.nh
  %i.nu = fmul <2 x double> %i.nt, splat (double 2.000000e+00)
  %i.nv = fmul <2 x double> %i.mq, %i.ns
  %i.nw = fmul <2 x double> %i.ns, %i.nv
  %i.nx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nu, <2 x double> %i.ns, <2 x double> %i.nw) ; 2 uses
  %i.ny = extractelement <2 x double> %i.nx, i64 1
  %i.nz = fneg double %i.ny
  %i.oa = extractelement <2 x double> %i.nx, i64 0
  %i.ob = fsub double %i.nz, %i.oa                ; 3 uses
  %i.oc = fcmp ugt double %i.ob, %i.aj
  br i1 %i.oc, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  store i8 1, ptr %i.a, align 8, !tbaa !595
  %i.od = fcmp ogt double %i.ob, %.8545.us.1
  br i1 %i.od, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ao, %bb.an
  %.14304.ph.us.1 = phi i32 [ %.8298537.us.1, %bb.au ], [ %.1279, %bb.av ], [ %.8298537.us.1, %bb.at ], [ %.8298537.us.1, %bb.as ], [ %.8298537.us.1, %bb.ar ], [ %.8298537.us.1, %bb.ao ], [ %.8298537.us.1, %bb.an ] ; 2 uses
  %.7287.ph.us.1 = phi i32 [ %.1281538.us.1, %bb.au ], [ %i.lf, %bb.av ], [ %.1281538.us.1, %bb.at ], [ %.1281538.us.1, %bb.as ], [ %.1281538.us.1, %bb.ar ], [ %.1281538.us.1, %bb.ao ], [ %.1281538.us.1, %bb.an ] ; 2 uses
  %.3255.ph.us.1 = phi i32 [ 0, %bb.au ], [ 0, %bb.av ], [ 0, %bb.at ], [ 0, %bb.as ], [ %i.lv, %bb.ar ], [ %i.lv, %bb.ao ], [ %i.lv, %bb.an ]
  %.14245.ph.us.1 = phi i32 [ %.8239544.us.1, %bb.au ], [ %i.lt, %bb.av ], [ %.8239544.us.1, %bb.at ], [ %.8239544.us.1, %bb.as ], [ %.8239544.us.1, %bb.ar ], [ %.8239544.us.1, %bb.ao ], [ %.8239544.us.1, %bb.an ] ; 2 uses
  %.14.ph.us.1 = phi double [ %.8545.us.1, %bb.au ], [ %i.ob, %bb.av ], [ %.8545.us.1, %bb.at ], [ %.8545.us.1, %bb.as ], [ %.8545.us.1, %bb.ar ], [ %.8545.us.1, %bb.ao ], [ %.8545.us.1, %bb.an ] ; 2 uses
  %i.oe = add nuw nsw i32 %.0249543.us.1, 1       ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.oe, %.sroa.speculated410
  br i1 %exitcond.1.not, label %._crit_edge548.us.1, label %bb.an, !llvm.loop !1014

._crit_edge548.us.1:                              ; preds = %bb.aw, %bb.aq, %bb.ap
  %.8298.lcssa.us.1 = phi i32 [ %.8298537.us.1, %bb.ap ], [ %.8298537.us.1, %bb.aq ], [ %.14304.ph.us.1, %bb.aw ]
  %.1281.lcssa.us.1 = phi i32 [ %.1281538.us.1, %bb.ap ], [ %.1281538.us.1, %bb.aq ], [ %.7287.ph.us.1, %bb.aw ]
  %.8239.lcssa.us.1 = phi i32 [ %.8239544.us.1, %bb.ap ], [ %.8239544.us.1, %bb.aq ], [ %.14245.ph.us.1, %bb.aw ]
  %.8.lcssa.us.1 = phi double [ %.8545.us.1, %bb.ap ], [ %.8545.us.1, %bb.aq ], [ %.14.ph.us.1, %bb.aw ]
  %i.of = icmp eq i32 %.1281.lcssa.us.1, 1
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit363

_ZNSt6vectorIiSaIiEED2Ev.exit363:                 ; preds = %bb.ac, %._crit_edge548.us.1
  %.us-phi = phi i32 [ %.8298.lcssa.us.1, %._crit_edge548.us.1 ], [ -1, %bb.ac ]
  %.us-phi568 = phi i1 [ %i.of, %._crit_edge548.us.1 ], [ true, %bb.ac ]
  %.us-phi569 = phi i32 [ %.8239.lcssa.us.1, %._crit_edge548.us.1 ], [ 0, %bb.ac ]
  %.us-phi570 = phi double [ %.8.lcssa.us.1, %._crit_edge548.us.1 ], [ -inf, %bb.ac ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef 8) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef 8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %.pre595 = load i8, ptr %i.a, align 8, !tbaa !595, !range !577
  br label %.loopexit510

.thread486:                                       ; preds = %bb.aa, %bb.ab
  %.sroa.16.0.ph = phi ptr [ %i.hq, %bb.ab ], [ %i.gp, %bb.aa ]
  %.sroa.0430.0.ph = phi ptr [ %i.gr, %bb.ab ], [ %i.go, %bb.aa ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.hp, %bb.ab ], [ %i.ho, %bb.aa ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef 4) #23
  br label %bb.ax

bb.ax:                                            ; preds = %.thread486, %.thread476
  %.pn.pn.pn483 = phi { ptr, i32 } [ %i.hn, %.thread476 ], [ %.pn.pn.ph, %.thread486 ]
  %.sroa.0430.1482 = phi ptr [ %i.go, %.thread476 ], [ %.sroa.0430.0.ph, %.thread486 ] ; 2 uses
  %.sroa.16.1481 = phi ptr [ %i.gp, %.thread476 ], [ %.sroa.16.0.ph, %.thread486 ]
  %i.og = ptrtoint ptr %.sroa.16.1481 to i64
  %i.oh = ptrtoint ptr %.sroa.0430.1482 to i64
  %i.oi = sub i64 %i.og, %i.oh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0430.1482, i64 noundef %i.oi) #23
  br label %.body

.body:                                            ; preds = %bb.z, %bb.ax, %bb.l
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fd, %bb.l ], [ %.pn.pn.pn483, %bb.ax ], [ %i.hm, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.bp

.loopexit510:                                     ; preds = %bb.i, %_ZNSt6vectorIiSaIiEED2Ev.exit363
  %i.oj = phi i8 [ %.pre595, %_ZNSt6vectorIiSaIiEED2Ev.exit363 ], [ %i.eh, %bb.i ]
  %.sroa.18.2 = phi ptr [ %.sroa.18.0.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit363 ], [ null, %bb.i ] ; 5 uses
  %.sroa.0445.2 = phi ptr [ %.sroa.0445.0.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit363 ], [ null, %bb.i ] ; 9 uses
  %.0464 = phi i64 [ %i.en, %_ZNSt6vectorIiSaIiEED2Ev.exit363 ], [ -1, %bb.i ]
  %.0307 = phi double [ %i.er, %_ZNSt6vectorIiSaIiEED2Ev.exit363 ], [ %i.s, %bb.i ] ; 2 uses
  %.16306 = phi i32 [ %.us-phi, %_ZNSt6vectorIiSaIiEED2Ev.exit363 ], [ %.6296, %bb.i ] ; 3 uses
  %.9289 = phi i1 [ %.us-phi568, %_ZNSt6vectorIiSaIiEED2Ev.exit363 ], [ true, %bb.i ]
  %.16247 = phi i32 [ %.us-phi569, %_ZNSt6vectorIiSaIiEED2Ev.exit363 ], [ %.6237, %bb.i ] ; 3 uses
  %.16 = phi double [ %.us-phi570, %_ZNSt6vectorIiSaIiEED2Ev.exit363 ], [ %.6, %bb.i ]
  %i.ok = trunc nuw i8 %i.oj to i1
  br i1 %i.ok, label %bb.ay, label %bb.bn

bb.ay:                                            ; preds = %.loopexit510
  %i.ol = ashr i32 %.16247, 16                    ; 2 uses
  %i.om = and i32 %.16247, 65535                  ; 2 uses
  %i.on = sub nsw i32 %i.h, %.16247               ; 2 uses
  %i.oo = ashr i32 %i.on, 16
  %i.op = and i32 %i.on, 65535
  %i.oq = sitofp i32 %i.oo to double
  %i.or = fmul double %2, %i.oq                   ; 4 uses
  %i.os = uitofp nneg i32 %i.op to double         ; 2 uses
  %i.ot = fmul double %3, %i.os                   ; 2 uses
  %i.ou = fmul double %i.at, %i.os
  %i.ov = fadd double %i.ou, 5.000000e-01
  %i.ow = fptosi double %i.ov to i32              ; 2 uses
  %i.ox = sext i32 %i.ol to i64
  %i.oy = shl nsw i64 %i.ox, 32
  %i.oz = zext nneg i32 %i.om to i64
  %i.pa = or disjoint i64 %i.oy, %i.oz            ; 2 uses
  %i.pb = sub nsw i64 %1, %i.pa
  %i.pc = load ptr, ptr %0, align 8, !tbaa !535
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !542
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 416
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !581
  %i.ph = load ptr, ptr %5, align 8, !tbaa !620
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pj = load ptr, ptr %i.pi, align 8
  %i.pk = invoke { double, double } %i.pj(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.az unwind label %bb.bd     ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.pl = uitofp nneg i32 %i.om to double         ; 2 uses
  %i.pm = fmul double %i.at, %i.pl
  %i.pn = fadd double %i.pm, 5.000000e-01
  %i.po = fptosi double %i.pn to i32              ; 2 uses
  %i.pp = fmul double %3, %i.pl                   ; 2 uses
  %i.pq = sitofp i32 %i.ol to double
  %i.pr = fmul double %2, %i.pq                   ; 4 uses
  %i.ps = load ptr, ptr %0, align 8, !tbaa !535
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !542 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 720
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !579
  %i.px = call double @llvm.fabs.f64(double %i.pr)
  %i.py = fsub double %i.px, %i.pg                ; 2 uses
  %i.pz = fcmp ogt double %i.py, 0.000000e+00
  %.sroa.speculated.i.i.i372 = select i1 %i.pz, double %i.py, double 0.000000e+00
  %i.qa = fcmp ogt double %i.pr, 0.000000e+00
  %i.qb = zext i1 %i.qa to i32
  %i.qc = fcmp olt double %i.pr, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.qc to i32
  %i.qd = add nsw i32 %.neg.i.i.i.i, %i.qb
  %i.qe = sitofp i32 %i.qd to double
  %i.qf = fneg double %i.qe
  %i.qg = fmul double %.sroa.speculated.i.i.i372, %i.qf
  %i.qh = fadd double %.0307, %i.pp
  %i.qi = fdiv double %i.qg, %i.qh
  %i.qj = sitofp i32 %i.po to double
  %i.qk = fdiv double %i.qj, %i.pw                ; 2 uses
  %i.ql = fmul double %i.qi, %i.qk
  %i.qm = fadd double %i.qk, 1.000000e+00         ; 2 uses
  %i.qn = fdiv double %i.ql, %i.qm
  %i.qo = fdiv double %6, %i.qm
  %i.qp = fadd double %i.qn, %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double %i.qp, ptr %i.qq, align 8, !tbaa !621
  %i.qr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.po, ptr %i.qr, align 8, !tbaa !622
  %i.qs = getelementptr inbounds nuw i8, ptr %7, i64 48
  store double %i.pr, ptr %i.qs, align 8, !tbaa !623
  %i.qt = getelementptr inbounds nuw i8, ptr %7, i64 56
  store double %i.pp, ptr %i.qt, align 8, !tbaa !624
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pu, i64 416
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !581
  %i.qw = load ptr, ptr %5, align 8, !tbaa !620
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = invoke { double, double } %i.qy(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ba unwind label %bb.be     ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.ra = load ptr, ptr %0, align 8, !tbaa !535
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 32
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !542
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 720
  %i.re = load double, ptr %i.rd, align 8, !tbaa !579
  %i.rf = call double @llvm.fabs.f64(double %i.or)
  %i.rg = fsub double %i.rf, %i.qv                ; 2 uses
  %i.rh = fcmp ogt double %i.rg, 0.000000e+00
  %.sroa.speculated.i.i.i373 = select i1 %i.rh, double %i.rg, double 0.000000e+00
  %i.ri = fcmp ogt double %i.or, 0.000000e+00
  %i.rj = zext i1 %i.ri to i32
  %i.rk = fcmp olt double %i.or, 0.000000e+00
  %.neg.i.i.i.i374 = sext i1 %i.rk to i32
  %i.rl = add nsw i32 %.neg.i.i.i.i374, %i.rj
  %i.rm = sitofp i32 %i.rl to double
  %i.rn = fneg double %i.rm
  %i.ro = fmul double %.sroa.speculated.i.i.i373, %i.rn
  %i.rp = fadd double %.0307, %i.ot
  %i.rq = fdiv double %i.ro, %i.rp
  %i.rr = sitofp i32 %i.ow to double
  %i.rs = fdiv double %i.rr, %i.re                ; 2 uses
  %i.rt = fmul double %i.rq, %i.rs
  %i.ru = fadd double %i.rs, 1.000000e+00         ; 2 uses
  %i.rv = fdiv double %i.rt, %i.ru
  %i.rw = fdiv double %6, %i.ru
  %i.rx = fadd double %i.rv, %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %7, i64 32
  store double %i.rx, ptr %i.ry, align 8, !tbaa !625
  %i.rz = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.ow, ptr %i.rz, align 4, !tbaa !626
  %i.sa = getelementptr inbounds nuw i8, ptr %7, i64 72
  store double %i.or, ptr %i.sa, align 8, !tbaa !627
  %i.sb = getelementptr inbounds nuw i8, ptr %7, i64 80
  store double %i.ot, ptr %i.sb, align 8, !tbaa !628
  %i.sc = fsub double %.16, %i.aj
  %i.sd = getelementptr inbounds nuw i8, ptr %7, i64 40
  store double %i.sc, ptr %i.sd, align 8, !tbaa !629
  %i.se = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 %i.pa, ptr %i.se, align 8, !tbaa !653
  %i.sf = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i64 %i.pb, ptr %i.sf, align 8, !tbaa !654
  br i1 %.not, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
end_hunk_0
begin_hunk_1_@_ZN8LightGBM16FeatureHistogram36FindBestThresholdCategoricalIntInnerILb0ELb0ELb1ELb0ELb1EiissLi16ELi16EEEvlddiPKNS_17FeatureConstraintEdPNS_9SplitInfoE:bb.a
bb.p:                                             ; preds = %.lr.ph503
  %.not.i = icmp eq ptr %.sroa.13.0500, %.sroa.18.0499
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = trunc nsw i64 %indvars.iv552 to i32
  store i32 %i.fm, ptr %.sroa.13.0500, align 4, !tbaa !617
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.13.0500, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.r:                                             ; preds = %bb.p
  %i.fo = ptrtoint ptr %.sroa.13.0500 to i64
  %i.fp = ptrtoint ptr %.sroa.0416.0501 to i64
  %i.fq = sub i64 %i.fo, %i.fp                    ; 6 uses
  %i.fr = icmp eq i64 %i.fq, 9223372036854775804
  br i1 %i.fr, label %bb.s, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.fs = ashr exact i64 %i.fq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fs, i64 1)
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i, %i.fs ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs
  %i.fv = tail call i64 @llvm.umin.i64(i64 %i.ft, i64 2305843009213693951)
  %i.fw = select i1 %i.fu, i64 2305843009213693951, i64 %i.fv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.fx = shl nuw nsw i64 %i.fw, 2
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #21
          to label %.noexc313 unwind label %.loopexit ; 4 uses

.noexc313:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 %i.fq ; 2 uses
  %i.ga = trunc nsw i64 %indvars.iv552 to i32
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !617
  %i.gb = icmp sgt i64 %i.fq, 0
  br i1 %i.gb, label %bb.t, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.t:                                             ; preds = %.noexc313
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fy, ptr align 4 %.sroa.0416.0501, i64 %i.fq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.t, %.noexc313
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0416.0501, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0416.0501, i64 noundef %i.fq) #23
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fw
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.q, %.lr.ph503
  %.sroa.18.1 = phi ptr [ %.sroa.18.0499, %.lr.ph503 ], [ %i.gd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.18.0499, %bb.q ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0500, %.lr.ph503 ], [ %i.gc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.fn, %bb.q ] ; 2 uses
  %.sroa.0416.1 = phi ptr [ %.sroa.0416.0501, %.lr.ph503 ], [ %i.fy, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0416.0501, %bb.q ] ; 2 uses
  %indvars.iv.next553 = add nsw i64 %indvars.iv552, 1 ; 2 uses
  %i.ge = icmp slt i64 %indvars.iv.next553, %i.bl
  br i1 %i.ge, label %.lr.ph503, label %._crit_edge.loopexit, !llvm.loop !2070

bb.v:                                             ; preds = %bb.o, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.gf = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #21
          to label %.noexc314 unwind label %bb.ap ; 6 uses

.noexc314:                                        ; preds = %bb.v
  store i32 1, ptr %i.gf, align 4, !tbaa !617
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  %i.gh = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #21
          to label %.lr.ph.i.i.i.i.i.i.i.i.i315.preheader unwind label %.thread447 ; 4 uses

.lr.ph.i.i.i.i.i.i.i.i.i315.preheader:            ; preds = %.noexc314
  store i32 0, ptr %i.gh, align 4, !tbaa !617
  %i.gi = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i325 unwind label %bb.aq ; 6 uses

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i325: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i315.preheader
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 2 uses
  store i32 -1, ptr %i.gj, align 4, !tbaa !617
  %i.gk = load i32, ptr %i.gf, align 4
  store i32 %i.gk, ptr %i.gi, align 4
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef 4) #23
  %i.gl = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %bb.w unwind label %bb.ar      ; 4 uses

bb.w:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i325
  %i.gm = add nsw i32 %i.ef, -1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4 ; 2 uses
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !617
  %i.go = load i32, ptr %i.gh, align 4
  store i32 %i.go, ptr %i.gl, align 4
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef 4) #23
  %i.gp = load ptr, ptr %0, align 8, !tbaa !535
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !542 ; 6 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 500
  %i.gt = add nsw i32 %i.ef, 1
  %i.gu = sdiv i32 %i.gt, 2
  %i.gv = load i32, ptr %i.gs, align 4, !tbaa !617
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.gu, i32 %i.gv)
  store i8 0, ptr %i.a, align 8, !tbaa !595
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 496
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !618
  %.fr = freeze i32 %i.gx                         ; 3 uses
  %.sroa.speculated.fr = freeze i32 %.sroa.speculated
  %invariant.smin = call i32 @llvm.smin.i32(i32 %i.ef, i32 %.sroa.speculated.fr) ; 3 uses
  %i.gy = icmp sgt i32 %invariant.smin, 0
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 312 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 416 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 720 ; 2 uses
  br i1 %i.gy, label %.split.us, label %_ZNSt6vectorIiSaIiEED2Ev.exit338

.split.us:                                        ; preds = %bb.w
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gr, i64 308
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !610 ; 3 uses
  %invariant.smax.us = call i32 @llvm.smax.i32(i32 %i.hd, i32 %.fr) ; 2 uses
  %i.he = load i32, ptr %i.gi, align 4, !tbaa !617 ; 2 uses
  %i.hf = load i32, ptr %i.gl, align 4, !tbaa !617
  %i.hg = sext i32 %i.hf to i64
  %i.hh = sext i32 %i.he to i64
  %i.hi = insertelement <2 x double> poison, double %2, i64 0
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hk = insertelement <2 x double> poison, double %6, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hm = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.split.us, %bb.af
  %indvars.iv555 = phi i64 [ %i.hg, %.split.us ], [ %indvars.iv.next556, %bb.af ] ; 2 uses
  %.7515.us = phi double [ -inf, %.split.us ], [ %.12.ph.us, %bb.af ] ; 8 uses
  %.7228514.us = phi i32 [ 0, %.split.us ], [ %.12233.ph.us, %bb.af ] ; 7 uses
  %.0237513.us = phi i32 [ 0, %.split.us ], [ %i.kj, %bb.af ] ; 2 uses
  %.0238512.us = phi i32 [ 0, %.split.us ], [ %i.hz, %bb.af ]
  %.0239511.us = phi i32 [ 0, %.split.us ], [ %i.hy, %bb.af ]
  %.0240510.us = phi i32 [ 0, %.split.us ], [ %.3243.ph.us, %bb.af ]
  %.1264508.us = phi i32 [ 1, %.split.us ], [ %.6269.ph.us, %bb.af ] ; 7 uses
  %.7279507.us = phi i32 [ -1, %.split.us ], [ %.12284.ph.us, %bb.af ] ; 7 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0416.0.lcssa, i64 %indvars.iv555
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !617
  %indvars.iv.next556 = add nsw i64 %indvars.iv555, %i.hh
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !617 ; 2 uses
  %i.ht = and i32 %i.hs, 65535
  %i.hu = uitofp nneg i32 %i.ht to double
  %i.hv = fmul double %i.as, %i.hu
  %i.hw = fadd double %i.hv, 5.000000e-01
  %i.hx = fptosi double %i.hw to i32              ; 2 uses
  %i.hy = add nsw i32 %i.hs, %.0239511.us         ; 5 uses
  %i.hz = add nsw i32 %.0238512.us, %i.hx         ; 4 uses
  %i.ia = add nsw i32 %.0240510.us, %i.hx         ; 4 uses
  %i.ib = and i32 %i.hy, 65535
  %i.ic = uitofp nneg i32 %i.ib to double
  %i.id = fmul double %3, %i.ic                   ; 2 uses
  %i.ie = icmp slt i32 %i.hz, %i.hd
  br i1 %i.ie, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.if = load double, ptr %i.gz, align 8, !tbaa !611 ; 2 uses
  %i.ig = fcmp olt double %i.id, %i.if
  br i1 %i.ig, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ih = sub nsw i32 %4, %i.hz                   ; 2 uses
  %or.cond.us = icmp slt i32 %i.ih, %invariant.smax.us
  br i1 %or.cond.us, label %._crit_edge518.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ii = sub nsw i32 %i.h, %i.hy                 ; 2 uses
  %i.ij = and i32 %i.ii, 65535
  %i.ik = uitofp nneg i32 %i.ij to double
  %i.il = fmul double %3, %i.ik                   ; 2 uses
  %i.im = fcmp olt double %i.il, %i.if
  br i1 %i.im, label %._crit_edge518.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.in = icmp slt i32 %i.ia, %.fr
  br i1 %i.in, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.io = insertelement <2 x i32> poison, i32 %i.hy, i64 0
  %i.ip = insertelement <2 x i32> %i.io, i32 %i.ii, i64 1
  %i.iq = ashr <2 x i32> %i.ip, splat (i32 16)
  %i.ir = load double, ptr %i.ha, align 8, !tbaa !581
  %i.is = load double, ptr %i.hb, align 8, !tbaa !579
  %i.it = insertelement <2 x double> poison, double %i.id, i64 0
  %i.iu = insertelement <2 x double> %i.it, double %i.il, i64 1
  %i.iv = fadd <2 x double> %i.hn, %i.iu          ; 2 uses
  %i.iw = insertelement <2 x i32> poison, i32 %i.hz, i64 0
  %i.ix = insertelement <2 x i32> %i.iw, i32 %i.ih, i64 1
  %i.iy = sitofp <2 x i32> %i.ix to <2 x double>
  %i.iz = sitofp <2 x i32> %i.iq to <2 x double>
  %i.ja = fmul <2 x double> %i.hj, %i.iz          ; 3 uses
  %i.jb = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ja)
  %i.jc = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.jd = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.je = fsub <2 x double> %i.jb, %i.jd          ; 2 uses
  %i.jf = fcmp ogt <2 x double> %i.je, zeroinitializer
  %i.jg = select <2 x i1> %i.jf, <2 x double> %i.je, <2 x double> zeroinitializer ; 2 uses
  %i.jh = fcmp ogt <2 x double> %i.ja, zeroinitializer
  %i.ji = zext <2 x i1> %i.jh to <2 x i8>
  %i.jj = fcmp olt <2 x double> %i.ja, zeroinitializer
  %i.jk = sext <2 x i1> %i.jj to <2 x i8>
  %i.jl = add nsw <2 x i8> %i.jk, %i.ji
  %i.jm = sitofp <2 x i8> %i.jl to <2 x double>   ; 2 uses
  %i.jn = fneg <2 x double> %i.jm
  %i.jo = fmul <2 x double> %i.jg, %i.jn
  %i.jp = fdiv <2 x double> %i.jo, %i.iv
  %i.jq = insertelement <2 x double> poison, double %i.is, i64 0
  %i.jr = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.js = fdiv <2 x double> %i.iy, %i.jr          ; 2 uses
  %i.jt = fmul <2 x double> %i.js, %i.jp
  %i.ju = fadd <2 x double> %i.js, splat (double 1.000000e+00) ; 2 uses
  %i.jv = fdiv <2 x double> %i.jt, %i.ju
  %i.jw = fdiv <2 x double> %i.hl, %i.ju
  %i.jx = fadd <2 x double> %i.jw, %i.jv          ; 3 uses
  %i.jy = fmul <2 x double> %i.jg, %i.jm
  %i.jz = fmul <2 x double> %i.jy, splat (double 2.000000e+00)
  %i.ka = fmul <2 x double> %i.iv, %i.jx
  %i.kb = fmul <2 x double> %i.jx, %i.ka
  %i.kc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.jx, <2 x double> %i.kb) ; 2 uses
  %i.kd = extractelement <2 x double> %i.kc, i64 1
  %i.ke = fneg double %i.kd
  %i.kf = extractelement <2 x double> %i.kc, i64 0
  %i.kg = fsub double %i.ke, %i.kf                ; 3 uses
  %i.kh = fcmp ugt double %i.kg, %i.aj
  br i1 %i.kh, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  store i8 1, ptr %i.a, align 8, !tbaa !595
  %i.ki = fcmp ogt double %i.kg, %.7515.us
  br i1 %i.ki, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.y, %bb.x
  %.12284.ph.us = phi i32 [ %.7279507.us, %bb.ad ], [ %.0237513.us, %bb.ae ], [ %.7279507.us, %bb.ac ], [ %.7279507.us, %bb.ab ], [ %.7279507.us, %bb.y ], [ %.7279507.us, %bb.x ] ; 2 uses
  %.6269.ph.us = phi i32 [ %.1264508.us, %bb.ad ], [ %i.he, %bb.ae ], [ %.1264508.us, %bb.ac ], [ %.1264508.us, %bb.ab ], [ %.1264508.us, %bb.y ], [ %.1264508.us, %bb.x ] ; 2 uses
  %.3243.ph.us = phi i32 [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.ac ], [ %i.ia, %bb.ab ], [ %i.ia, %bb.y ], [ %i.ia, %bb.x ]
  %.12233.ph.us = phi i32 [ %.7228514.us, %bb.ad ], [ %i.hy, %bb.ae ], [ %.7228514.us, %bb.ac ], [ %.7228514.us, %bb.ab ], [ %.7228514.us, %bb.y ], [ %.7228514.us, %bb.x ] ; 2 uses
  %.12.ph.us = phi double [ %.7515.us, %bb.ad ], [ %i.kg, %bb.ae ], [ %.7515.us, %bb.ac ], [ %.7515.us, %bb.ab ], [ %.7515.us, %bb.y ], [ %.7515.us, %bb.x ] ; 2 uses
  %i.kj = add nuw nsw i32 %.0237513.us, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.kj, %invariant.smin
  br i1 %exitcond.not, label %._crit_edge518.us, label %bb.x, !llvm.loop !2071

._crit_edge518.us:                                ; preds = %bb.af, %bb.z, %bb.aa
  %.7279.lcssa.us = phi i32 [ %.7279507.us, %bb.z ], [ %.7279507.us, %bb.aa ], [ %.12284.ph.us, %bb.af ]
  %.1264.lcssa.us = phi i32 [ %.1264508.us, %bb.z ], [ %.1264508.us, %bb.aa ], [ %.6269.ph.us, %bb.af ]
  %.7228.lcssa.us = phi i32 [ %.7228514.us, %bb.z ], [ %.7228514.us, %bb.aa ], [ %.12233.ph.us, %bb.af ]
  %.7.lcssa.us = phi double [ %.7515.us, %bb.z ], [ %.7515.us, %bb.aa ], [ %.12.ph.us, %bb.af ]
  %i.kk = load i32, ptr %i.gj, align 4, !tbaa !617 ; 2 uses
  %i.kl = load i32, ptr %i.gn, align 4, !tbaa !617
  %i.km = sext i32 %i.kl to i64
  %i.kn = sext i32 %i.kk to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ao, %._crit_edge518.us
  %indvars.iv555.1 = phi i64 [ %i.km, %._crit_edge518.us ], [ %indvars.iv.next556.1, %bb.ao ] ; 2 uses
  %.7515.us.1 = phi double [ %.7.lcssa.us, %._crit_edge518.us ], [ %.12.ph.us.1, %bb.ao ] ; 8 uses
  %.7228514.us.1 = phi i32 [ %.7228.lcssa.us, %._crit_edge518.us ], [ %.12233.ph.us.1, %bb.ao ] ; 7 uses
  %.0237513.us.1 = phi i32 [ 0, %._crit_edge518.us ], [ %i.nj, %bb.ao ] ; 2 uses
  %.0238512.us.1 = phi i32 [ 0, %._crit_edge518.us ], [ %i.kz, %bb.ao ]
  %.0239511.us.1 = phi i32 [ 0, %._crit_edge518.us ], [ %i.ky, %bb.ao ]
  %.0240510.us.1 = phi i32 [ 0, %._crit_edge518.us ], [ %.3243.ph.us.1, %bb.ao ]
  %.1264508.us.1 = phi i32 [ %.1264.lcssa.us, %._crit_edge518.us ], [ %.6269.ph.us.1, %bb.ao ] ; 7 uses
  %.7279507.us.1 = phi i32 [ %.7279.lcssa.us, %._crit_edge518.us ], [ %.12284.ph.us.1, %bb.ao ] ; 7 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0416.0.lcssa, i64 %indvars.iv555.1
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !617
  %indvars.iv.next556.1 = add nsw i64 %indvars.iv555.1, %i.kn
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !617 ; 2 uses
  %i.kt = and i32 %i.ks, 65535
  %i.ku = uitofp nneg i32 %i.kt to double
  %i.kv = fmul double %i.as, %i.ku
  %i.kw = fadd double %i.kv, 5.000000e-01
  %i.kx = fptosi double %i.kw to i32              ; 2 uses
  %i.ky = add nsw i32 %i.ks, %.0239511.us.1       ; 5 uses
  %i.kz = add nsw i32 %.0238512.us.1, %i.kx       ; 4 uses
  %i.la = add nsw i32 %.0240510.us.1, %i.kx       ; 4 uses
  %i.lb = and i32 %i.ky, 65535
  %i.lc = uitofp nneg i32 %i.lb to double
  %i.ld = fmul double %3, %i.lc                   ; 2 uses
  %i.le = icmp slt i32 %i.kz, %i.hd
  br i1 %i.le, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lf = load double, ptr %i.gz, align 8, !tbaa !611 ; 2 uses
  %i.lg = fcmp olt double %i.ld, %i.lf
  br i1 %i.lg, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.lh = sub nsw i32 %4, %i.kz                   ; 2 uses
  %or.cond.us.1 = icmp slt i32 %i.lh, %invariant.smax.us
  br i1 %or.cond.us.1, label %._crit_edge518.us.1, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.li = sub nsw i32 %i.h, %i.ky                 ; 2 uses
  %i.lj = and i32 %i.li, 65535
  %i.lk = uitofp nneg i32 %i.lj to double
  %i.ll = fmul double %3, %i.lk                   ; 2 uses
  %i.lm = fcmp olt double %i.ll, %i.lf
  br i1 %i.lm, label %._crit_edge518.us.1, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ln = icmp slt i32 %i.la, %.fr
  br i1 %i.ln, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lo = insertelement <2 x i32> poison, i32 %i.ky, i64 0
  %i.lp = insertelement <2 x i32> %i.lo, i32 %i.li, i64 1
  %i.lq = ashr <2 x i32> %i.lp, splat (i32 16)
  %i.lr = load double, ptr %i.ha, align 8, !tbaa !581
  %i.ls = load double, ptr %i.hb, align 8, !tbaa !579
  %i.lt = insertelement <2 x double> poison, double %i.ld, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.ll, i64 1
  %i.lv = fadd <2 x double> %i.hn, %i.lu          ; 2 uses
  %i.lw = insertelement <2 x i32> poison, i32 %i.kz, i64 0
  %i.lx = insertelement <2 x i32> %i.lw, i32 %i.lh, i64 1
  %i.ly = sitofp <2 x i32> %i.lx to <2 x double>
  %i.lz = sitofp <2 x i32> %i.lq to <2 x double>
  %i.ma = fmul <2 x double> %i.hj, %i.lz          ; 3 uses
  %i.mb = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ma)
  %i.mc = insertelement <2 x double> poison, double %i.lr, i64 0
  %i.md = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.me = fsub <2 x double> %i.mb, %i.md          ; 2 uses
  %i.mf = fcmp ogt <2 x double> %i.me, zeroinitializer
  %i.mg = select <2 x i1> %i.mf, <2 x double> %i.me, <2 x double> zeroinitializer ; 2 uses
  %i.mh = fcmp ogt <2 x double> %i.ma, zeroinitializer
  %i.mi = zext <2 x i1> %i.mh to <2 x i8>
  %i.mj = fcmp olt <2 x double> %i.ma, zeroinitializer
  %i.mk = sext <2 x i1> %i.mj to <2 x i8>
  %i.ml = add nsw <2 x i8> %i.mk, %i.mi
  %i.mm = sitofp <2 x i8> %i.ml to <2 x double>   ; 2 uses
  %i.mn = fneg <2 x double> %i.mm
  %i.mo = fmul <2 x double> %i.mg, %i.mn
  %i.mp = fdiv <2 x double> %i.mo, %i.lv
  %i.mq = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.mr = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ms = fdiv <2 x double> %i.ly, %i.mr          ; 2 uses
  %i.mt = fmul <2 x double> %i.ms, %i.mp
  %i.mu = fadd <2 x double> %i.ms, splat (double 1.000000e+00) ; 2 uses
  %i.mv = fdiv <2 x double> %i.mt, %i.mu
  %i.mw = fdiv <2 x double> %i.hl, %i.mu
  %i.mx = fadd <2 x double> %i.mw, %i.mv          ; 3 uses
  %i.my = fmul <2 x double> %i.mg, %i.mm
  %i.mz = fmul <2 x double> %i.my, splat (double 2.000000e+00)
  %i.na = fmul <2 x double> %i.lv, %i.mx
  %i.nb = fmul <2 x double> %i.mx, %i.na
  %i.nc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.mx, <2 x double> %i.nb) ; 2 uses
  %i.nd = extractelement <2 x double> %i.nc, i64 1
  %i.ne = fneg double %i.nd
  %i.nf = extractelement <2 x double> %i.nc, i64 0
  %i.ng = fsub double %i.ne, %i.nf                ; 3 uses
  %i.nh = fcmp ugt double %i.ng, %i.aj
  br i1 %i.nh, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  store i8 1, ptr %i.a, align 8, !tbaa !595
  %i.ni = fcmp ogt double %i.ng, %.7515.us.1
  br i1 %i.ni, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ah, %bb.ag
  %.12284.ph.us.1 = phi i32 [ %.7279507.us.1, %bb.am ], [ %.0237513.us.1, %bb.an ], [ %.7279507.us.1, %bb.al ], [ %.7279507.us.1, %bb.ak ], [ %.7279507.us.1, %bb.ah ], [ %.7279507.us.1, %bb.ag ] ; 2 uses
  %.6269.ph.us.1 = phi i32 [ %.1264508.us.1, %bb.am ], [ %i.kk, %bb.an ], [ %.1264508.us.1, %bb.al ], [ %.1264508.us.1, %bb.ak ], [ %.1264508.us.1, %bb.ah ], [ %.1264508.us.1, %bb.ag ] ; 2 uses
  %.3243.ph.us.1 = phi i32 [ 0, %bb.am ], [ 0, %bb.an ], [ 0, %bb.al ], [ %i.la, %bb.ak ], [ %i.la, %bb.ah ], [ %i.la, %bb.ag ]
  %.12233.ph.us.1 = phi i32 [ %.7228514.us.1, %bb.am ], [ %i.ky, %bb.an ], [ %.7228514.us.1, %bb.al ], [ %.7228514.us.1, %bb.ak ], [ %.7228514.us.1, %bb.ah ], [ %.7228514.us.1, %bb.ag ] ; 2 uses
  %.12.ph.us.1 = phi double [ %.7515.us.1, %bb.am ], [ %i.ng, %bb.an ], [ %.7515.us.1, %bb.al ], [ %.7515.us.1, %bb.ak ], [ %.7515.us.1, %bb.ah ], [ %.7515.us.1, %bb.ag ] ; 2 uses
  %i.nj = add nuw nsw i32 %.0237513.us.1, 1       ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.nj, %invariant.smin
  br i1 %exitcond.1.not, label %._crit_edge518.us.1, label %bb.ag, !llvm.loop !2071

._crit_edge518.us.1:                              ; preds = %bb.ao, %bb.aj, %bb.ai
  %.7279.lcssa.us.1 = phi i32 [ %.7279507.us.1, %bb.ai ], [ %.7279507.us.1, %bb.aj ], [ %.12284.ph.us.1, %bb.ao ]
  %.1264.lcssa.us.1 = phi i32 [ %.1264508.us.1, %bb.ai ], [ %.1264508.us.1, %bb.aj ], [ %.6269.ph.us.1, %bb.ao ]
  %.7228.lcssa.us.1 = phi i32 [ %.7228514.us.1, %bb.ai ], [ %.7228514.us.1, %bb.aj ], [ %.12233.ph.us.1, %bb.ao ]
  %.7.lcssa.us.1 = phi double [ %.7515.us.1, %bb.ai ], [ %.7515.us.1, %bb.aj ], [ %.12.ph.us.1, %bb.ao ]
  %i.nk = icmp eq i32 %.1264.lcssa.us.1, 1
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit338

_ZNSt6vectorIiSaIiEED2Ev.exit338:                 ; preds = %bb.w, %._crit_edge518.us.1
  %.us-phi = phi i32 [ %.7279.lcssa.us.1, %._crit_edge518.us.1 ], [ -1, %bb.w ]
  %.us-phi538 = phi i1 [ %i.nk, %._crit_edge518.us.1 ], [ true, %bb.w ]
  %.us-phi539 = phi i32 [ %.7228.lcssa.us.1, %._crit_edge518.us.1 ], [ 0, %bb.w ]
  %.us-phi540 = phi double [ %.7.lcssa.us.1, %._crit_edge518.us.1 ], [ -inf, %bb.w ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef 8) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef 8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %.pre565 = load i8, ptr %i.a, align 8, !tbaa !595, !range !577
  br label %.loopexit480

bb.ap:                                            ; preds = %bb.v
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread447:                                       ; preds = %.noexc314
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i315.preheader
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.thread457

bb.ar:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i325
  %i.no = landingpad { ptr, i32 }
          cleanup
  %i.np = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  br label %.thread457

.thread457:                                       ; preds = %bb.aq, %bb.ar
  %.sroa.16.0.ph = phi ptr [ %i.np, %bb.ar ], [ %i.gg, %bb.aq ]
  %.sroa.0401.0.ph = phi ptr [ %i.gi, %bb.ar ], [ %i.gf, %bb.aq ]
  %.pn.ph = phi { ptr, i32 } [ %i.no, %bb.ar ], [ %i.nn, %bb.aq ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef 4) #23
  br label %bb.as

bb.as:                                            ; preds = %.thread457, %.thread447
  %.pn.pn454 = phi { ptr, i32 } [ %i.nm, %.thread447 ], [ %.pn.ph, %.thread457 ]
  %.sroa.0401.1453 = phi ptr [ %i.gf, %.thread447 ], [ %.sroa.0401.0.ph, %.thread457 ] ; 2 uses
  %.sroa.16.1452 = phi ptr [ %i.gg, %.thread447 ], [ %.sroa.16.0.ph, %.thread457 ]
  %i.nq = ptrtoint ptr %.sroa.16.1452 to i64
  %i.nr = ptrtoint ptr %.sroa.0401.1453 to i64
  %i.ns = sub i64 %i.nq, %i.nr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0401.1453, i64 noundef %i.ns) #23
  br label %.body

.body:                                            ; preds = %bb.ap, %bb.as, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eu, %bb.k ], [ %.pn.pn454, %bb.as ], [ %i.nl, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.bk

.loopexit480:                                     ; preds = %bb.h, %_ZNSt6vectorIiSaIiEED2Ev.exit338
  %i.nt = phi i8 [ %.pre565, %_ZNSt6vectorIiSaIiEED2Ev.exit338 ], [ %i.dy, %bb.h ]
  %.sroa.18.2 = phi ptr [ %.sroa.18.0.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit338 ], [ null, %bb.h ] ; 5 uses
  %.sroa.0416.2 = phi ptr [ %.sroa.0416.0.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit338 ], [ null, %bb.h ] ; 9 uses
  %.0435 = phi i64 [ %i.ee, %_ZNSt6vectorIiSaIiEED2Ev.exit338 ], [ -1, %bb.h ]
  %.0287 = phi double [ %i.ei, %_ZNSt6vectorIiSaIiEED2Ev.exit338 ], [ %i.s, %bb.h ] ; 2 uses
  %.14286 = phi i32 [ %.us-phi, %_ZNSt6vectorIiSaIiEED2Ev.exit338 ], [ %.5277, %bb.h ] ; 3 uses
  %.8271 = phi i1 [ %.us-phi538, %_ZNSt6vectorIiSaIiEED2Ev.exit338 ], [ true, %bb.h ]
  %.14235 = phi i32 [ %.us-phi539, %_ZNSt6vectorIiSaIiEED2Ev.exit338 ], [ %.5226, %bb.h ] ; 3 uses
  %.14 = phi double [ %.us-phi540, %_ZNSt6vectorIiSaIiEED2Ev.exit338 ], [ %.5, %bb.h ]
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %bb.at, label %bb.bi

bb.at:                                            ; preds = %.loopexit480
  %i.nv = ashr i32 %.14235, 16                    ; 2 uses
  %i.nw = and i32 %.14235, 65535                  ; 2 uses
  %i.nx = sub nsw i32 %i.h, %.14235               ; 2 uses
  %i.ny = ashr i32 %i.nx, 16
  %i.nz = and i32 %i.nx, 65535
  %i.oa = sitofp i32 %i.ny to double
  %i.ob = fmul double %2, %i.oa                   ; 4 uses
  %i.oc = uitofp nneg i32 %i.nz to double         ; 2 uses
  %i.od = fmul double %3, %i.oc                   ; 2 uses
  %i.oe = fmul double %i.as, %i.oc
  %i.of = fadd double %i.oe, 5.000000e-01
  %i.og = fptosi double %i.of to i32              ; 2 uses
  %i.oh = sext i32 %i.nv to i64
  %i.oi = shl nsw i64 %i.oh, 32
  %i.oj = zext nneg i32 %i.nw to i64
  %i.ok = or disjoint i64 %i.oi, %i.oj            ; 2 uses
  %i.ol = sub nsw i64 %1, %i.ok
  %i.om = load ptr, ptr %0, align 8, !tbaa !535
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 32
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !542
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 416
  %i.oq = load double, ptr %i.op, align 8, !tbaa !581
  %i.or = load ptr, ptr %5, align 8, !tbaa !620
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = invoke { double, double } %i.ot(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.au unwind label %bb.ay     ; 0 uses

bb.au:                                            ; preds = %bb.at
  %i.ov = uitofp nneg i32 %i.nw to double         ; 2 uses
  %i.ow = fmul double %i.as, %i.ov
  %i.ox = fadd double %i.ow, 5.000000e-01
  %i.oy = fptosi double %i.ox to i32              ; 2 uses
  %i.oz = fmul double %3, %i.ov                   ; 2 uses
  %i.pa = sitofp i32 %i.nv to double
  %i.pb = fmul double %2, %i.pa                   ; 4 uses
  %i.pc = load ptr, ptr %0, align 8, !tbaa !535
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !542 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 720
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !579
  %i.ph = call double @llvm.fabs.f64(double %i.pb)
  %i.pi = fsub double %i.ph, %i.oq                ; 2 uses
  %i.pj = fcmp ogt double %i.pi, 0.000000e+00
  %.sroa.speculated.i.i.i347 = select i1 %i.pj, double %i.pi, double 0.000000e+00
  %i.pk = fcmp ogt double %i.pb, 0.000000e+00
  %i.pl = zext i1 %i.pk to i32
  %i.pm = fcmp olt double %i.pb, 0.000000e+00
  %.neg.i.i.i.i = sext i1 %i.pm to i32
  %i.pn = add nsw i32 %.neg.i.i.i.i, %i.pl
  %i.po = sitofp i32 %i.pn to double
  %i.pp = fneg double %i.po
  %i.pq = fmul double %.sroa.speculated.i.i.i347, %i.pp
  %i.pr = fadd double %.0287, %i.oz
  %i.ps = fdiv double %i.pq, %i.pr
  %i.pt = sitofp i32 %i.oy to double
  %i.pu = fdiv double %i.pt, %i.pg                ; 2 uses
  %i.pv = fmul double %i.ps, %i.pu
  %i.pw = fadd double %i.pu, 1.000000e+00         ; 2 uses
  %i.px = fdiv double %i.pv, %i.pw
  %i.py = fdiv double %6, %i.pw
  %i.pz = fadd double %i.px, %i.py
  %i.qa = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double %i.pz, ptr %i.qa, align 8, !tbaa !621
  %i.qb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.oy, ptr %i.qb, align 8, !tbaa !622
  %i.qc = getelementptr inbounds nuw i8, ptr %7, i64 48
  store double %i.pb, ptr %i.qc, align 8, !tbaa !623
  %i.qd = getelementptr inbounds nuw i8, ptr %7, i64 56
  store double %i.oz, ptr %i.qd, align 8, !tbaa !624
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pe, i64 416
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !581
  %i.qg = load ptr, ptr %5, align 8, !tbaa !620
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = invoke { double, double } %i.qi(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.av unwind label %bb.az     ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.qk = load ptr, ptr %0, align 8, !tbaa !535
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !542
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 720
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !579
  %i.qp = call double @llvm.fabs.f64(double %i.ob)
  %i.qq = fsub double %i.qp, %i.qf                ; 2 uses
  %i.qr = fcmp ogt double %i.qq, 0.000000e+00
  %.sroa.speculated.i.i.i348 = select i1 %i.qr, double %i.qq, double 0.000000e+00
  %i.qs = fcmp ogt double %i.ob, 0.000000e+00
  %i.qt = zext i1 %i.qs to i32
  %i.qu = fcmp olt double %i.ob, 0.000000e+00
  %.neg.i.i.i.i349 = sext i1 %i.qu to i32
  %i.qv = add nsw i32 %.neg.i.i.i.i349, %i.qt
  %i.qw = sitofp i32 %i.qv to double
  %i.qx = fneg double %i.qw
  %i.qy = fmul double %.sroa.speculated.i.i.i348, %i.qx
  %i.qz = fadd double %.0287, %i.od
  %i.ra = fdiv double %i.qy, %i.qz
  %i.rb = sitofp i32 %i.og to double
  %i.rc = fdiv double %i.rb, %i.qo                ; 2 uses
  %i.rd = fmul double %i.ra, %i.rc
  %i.re = fadd double %i.rc, 1.000000e+00         ; 2 uses
end_hunk_1
