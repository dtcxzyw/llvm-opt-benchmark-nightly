inline.NumInlined: 2079
inline.NumDeleted: 821
begin_hunk_0_@_ZN6Assimp3IFC21ProcessSweptDiskSolidERKNS0_10Schema_2x317IfcSweptDiskSolidERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
  %i.ic = call noundef double @llvm.fmuladd.f64(double %i.hp, double %i.hz, double %i.ib)
  %i.id = fcmp olt double %i.ic, 0.000000e+00
  br i1 %i.id, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ie = getelementptr inbounds i8, ptr %i.gi, i64 -48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.gl, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gk, ptr noundef nonnull align 8 dereferenceable(24) %i.ie, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.if = load ptr, ptr %i.cm, align 8            ; 3 uses
  %i.ig = load ptr, ptr %i.be, align 8
  %.not.i.i247.us = icmp eq ptr %i.if, %i.ig
  br i1 %.not.i.i247.us, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 4, ptr %i.if, align 4
  %i.ih = load ptr, ptr %i.cm, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  store ptr %i.ii, ptr %i.cm, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

bb.aj:                                            ; preds = %bb.ah
  %i.ij = load ptr, ptr %i.az, align 8            ; 4 uses
  %i.ik = ptrtoint ptr %i.if to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il                    ; 6 uses
  %i.in = icmp eq i64 %i.im, 9223372036854775804
  br i1 %i.in, label %.split507.us, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.aj
  %i.io = ashr exact i64 %i.im, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i248.us = call i64 @llvm.umax.i64(i64 %i.io, i64 1)
  %i.ip = add nsw i64 %.sroa.speculated.i.i.i.i248.us, %i.io ; 2 uses
  %i.iq = icmp ult i64 %i.ip, %i.io
  %i.ir = call i64 @llvm.umin.i64(i64 %i.ip, i64 2305843009213693951)
  %i.is = select i1 %i.iq, i64 2305843009213693951, i64 %i.ir ; 3 uses
  %.not.i.i.i.i249.us = icmp ne i64 %i.is, 0
  call void @llvm.assume(i1 %.not.i.i.i.i249.us)
  %i.it = shl nuw nsw i64 %i.is, 2
  %i.iu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.it) #28
          to label %.noexc251.us unwind label %.loopexit386.split.us ; 4 uses

.noexc251.us:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 %i.im ; 2 uses
  store i32 4, ptr %i.iv, align 4
  %i.iw = icmp sgt i64 %i.im, 0
  br i1 %i.iw, label %bb.ak, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

bb.ak:                                            ; preds = %.noexc251.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iu, ptr align 4 %i.ij, i64 %i.im, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us: ; preds = %bb.ak, %.noexc251.us
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %.not.i17.i.i.i.us = icmp eq ptr %i.ij, null
  br i1 %.not.i17.i.i.i.us, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef %i.im) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us: ; preds = %bb.al, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  store ptr %i.iu, ptr %i.az, align 8
  store ptr %i.ix, ptr %i.cm, align 8
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.is
  store ptr %i.iy, ptr %i.be, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, %bb.ai
  %exitcond552.not = icmp eq i64 %indvars.iv.next549, %i.ad
  br i1 %exitcond552.not, label %._crit_edge494.us, label %bb.s, !llvm.loop !104

bb.am:                                            ; preds = %.lr.ph490.us, %bb.am
  %indvars.iv = phi i64 [ 0, %.lr.ph490.us ], [ %indvars.iv.next, %bb.am ] ; 3 uses
  %.0133488.us = phi i32 [ 0, %.lr.ph490.us ], [ %.1134.us, %bb.am ]
  %.0136486.us = phi float [ 1.000000e+10, %.lr.ph490.us ], [ %.1137.us, %bb.am ] ; 2 uses
  %i.iz = getelementptr [24 x i8], ptr %i.kd, i64 %indvars.iv ; 3 uses
  %i.ja = load double, ptr %i.iz, align 8
  %i.jb = fptrunc double %i.ja to float
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jd = load double, ptr %i.jc, align 8
  %i.je = fptrunc double %i.jd to float
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jg = load double, ptr %i.jf, align 8
  %i.jh = fptrunc double %i.jg to float
  %i.ji = fsub float %i.jb, %i.ju                 ; 2 uses
  %i.jj = fsub float %i.je, %i.jx                 ; 2 uses
  %i.jk = fsub float %i.jh, %i.ka                 ; 2 uses
  %i.jl = fmul float %i.jj, %i.jj
  %i.jm = call float @llvm.fmuladd.f32(float %i.ji, float %i.ji, float %i.jl)
  %i.jn = call noundef float @llvm.fmuladd.f32(float %i.jk, float %i.jk, float %i.jm) ; 2 uses
  %i.jo = fcmp olt float %i.jn, %.0136486.us      ; 2 uses
  %.1137.us = select i1 %i.jo, float %i.jn, float %.0136486.us
  %i.jp = trunc nuw i64 %indvars.iv to i32
  %.1134.us = select i1 %i.jo, i32 %i.jp, i32 %.0133488.us ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond547.not = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %exitcond547.not, label %.preheader.us, label %bb.am, !llvm.loop !105

.preheader.us:                                    ; preds = %bb.am
  %i.jq = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa607, i64 %i.kc ; 2 uses
  br label %bb.s

.lr.ph490.us:                                     ; preds = %.lr.ph496, %._crit_edge494.us
  %.0132495.us = phi i64 [ %i.kb, %._crit_edge494.us ], [ 0, %.lr.ph496 ] ; 3 uses
  %i.jr = mul i64 %.0132495.us, %i.ad
  %i.js = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa607, i64 %i.jr ; 5 uses
  %i.jt = load double, ptr %i.js, align 8
  %i.ju = fptrunc double %i.jt to float
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jw = load double, ptr %i.jv, align 8
  %i.jx = fptrunc double %i.jw to float
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.jz = load double, ptr %i.jy, align 8
  %i.ka = fptrunc double %i.jz to float
  %i.kb = add nuw i64 %.0132495.us, 1             ; 3 uses
  %i.kc = mul i64 %i.kb, %i.ad                    ; 2 uses
  %i.kd = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa607, i64 %i.kc
  br label %bb.am

._crit_edge494.us:                                ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  %exitcond553.not = icmp eq i64 %i.kb, %.pre-phi560604
  br i1 %exitcond553.not, label %._crit_edge497, label %.lr.ph490.us, !llvm.loop !106

.loopexit.split.us:                               ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i232.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i216.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i200.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit386.split.us:                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit388.us = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.an:                                            ; preds = %.lr.ph483, %._crit_edge
  %.0125481 = phi i32 [ 0, %.lr.ph483 ], [ %.1126, %._crit_edge ] ; 3 uses
  %.0128480 = phi i64 [ 0, %.lr.ph483 ], [ %i.my, %._crit_edge ] ; 3 uses
  %.sroa.0353.1479 = phi ptr [ %.sroa.16.2, %.lr.ph483 ], [ %.sroa.0353.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.16.0478 = phi ptr [ %.sroa.16.2, %.lr.ph483 ], [ %.sroa.16.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.22.1477 = phi ptr [ %.sroa.22.6, %.lr.ph483 ], [ %.sroa.22.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.14351.0476 = phi double [ %.sroa.14351.0.copyload, %.lr.ph483 ], [ %.sroa.8333.1, %._crit_edge ] ; 3 uses
  %.sroa.9343.0473 = phi double [ %.sroa.14351.0.copyload, %.lr.ph483 ], [ %.sroa.14351.0476, %._crit_edge ] ; 2 uses
  %.sroa.8333.0468 = phi double [ 0.000000e+00, %.lr.ph483 ], [ %.sroa.8333.1, %._crit_edge ]
  %.sroa.0324.0464 = phi double [ 1.000000e+00, %.lr.ph483 ], [ %i.ly, %._crit_edge ] ; 4 uses
  %.sroa.8.0461 = phi double [ 1.000000e+00, %.lr.ph483 ], [ %i.lz, %._crit_edge ] ; 4 uses
  %.sroa.12.0458 = phi double [ 1.000000e+00, %.lr.ph483 ], [ %i.ma, %._crit_edge ] ; 4 uses
  %i.ke = phi <2 x double> [ %i.ci, %.lr.ph483 ], [ %i.kl, %._crit_edge ] ; 4 uses
  %i.kf = phi <2 x double> [ zeroinitializer, %.lr.ph483 ], [ %i.kl, %._crit_edge ]
  %i.kg = phi <2 x double> [ %i.ci, %.lr.ph483 ], [ %i.ke, %._crit_edge ] ; 2 uses
  %.not152 = icmp eq i64 %.0128480, %i.cj
  br i1 %.not152, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kh = load ptr, ptr %5, align 8
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.kh, i64 %.0128480 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load <2 x double>, ptr %i.kj, align 8
  %.sroa.8333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 40
  %.sroa.8333.0.copyload = load double, ptr %.sroa.8333.0..sroa_idx, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.sroa.8333.1 = phi double [ %.sroa.8333.0468, %bb.an ], [ %.sroa.8333.0.copyload, %bb.ao ] ; 3 uses
  %i.kl = phi <2 x double> [ %i.kf, %bb.an ], [ %i.kk, %bb.ao ] ; 3 uses
  %i.km = fsub <2 x double> %i.ke, %i.kg
  %i.kn = fsub double %.sroa.14351.0476, %.sroa.9343.0473
  %i.ko = fsub <2 x double> %i.kl, %i.kg
  %i.kp = fsub double %.sroa.8333.1, %.sroa.9343.0473
  %i.kq = fadd <2 x double> %i.km, %i.ko          ; 5 uses
  %i.kr = fadd double %i.kn, %i.kp                ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.kq, %i.kq
  %i.ks = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.kt = extractelement <2 x double> %i.kq, i64 0 ; 2 uses
  %i.ku = call double @llvm.fmuladd.f64(double %i.kt, double %i.kt, double %i.ks)
  %i.kv = call noundef double @llvm.fmuladd.f64(double %i.kr, double %i.kr, double %i.ku) ; 2 uses
  %i.kw = fcmp oeq double %i.kv, 0.000000e+00
  br i1 %i.kw, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %bb.ap
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.kv)
  %i.kx = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.ky = insertelement <2 x double> poison, double %i.kx, i64 0
  %i.kz = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = fmul <2 x double> %i.kq, %i.kz
  %i.lb = fmul double %i.kr, %i.kx
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %_ZN10aiVector3tIdEdVEd.exit.i, %bb.ap
  %.sroa.19.0 = phi double [ %i.kr, %bb.ap ], [ %i.lb, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %i.lc = phi <2 x double> [ %i.kq, %bb.ap ], [ %i.la, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %.sroa.19.0.fr = freeze double %.sroa.19.0      ; 11 uses
  %6 = icmp eq i32 %.0125481, 1
  %7 = freeze <2 x double> %i.lc                  ; 6 uses
  %8 = extractelement <2 x double> %7, i64 1      ; 8 uses
  %9 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %7)
  %10 = fcmp ogt <2 x double> %9, splat (double f0x3EB0C6F7A0000000) ; 3 uses
  %i.ld = icmp ne i32 %.0125481, 2                ; 3 uses
  %i.le = call double @llvm.fabs.f64(double %.sroa.19.0.fr)
  %i.lf = fcmp ule double %i.le, f0x3EB0C6F7A0000000 ; 3 uses
  %11 = extractelement <2 x i1> %10, i64 0
  br i1 %11, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.us:     ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %brmerge619 = or i1 %i.ld, %i.lf
  %12 = extractelement <2 x i1> %10, i64 1
  %or.cond = and i1 %12, %brmerge619
  br i1 %or.cond, label %.split.us.split, label %.split417.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split:        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.lg = icmp eq i32 %.0125481, 0
  br i1 %i.lg, label %.split418, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split:  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split
  %13 = extractelement <2 x i1> %10, i64 1
  br i1 %13, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split
  %brmerge622 = or i1 %i.ld, %i.lf
  br i1 %brmerge622, label %.split418, label %.split417.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split
  br i1 %6, label %.split.us.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split
  %brmerge625 = or i1 %i.ld, %i.lf
  br i1 %brmerge625, label %.split418, label %.split417.us

.split418:                                        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split
  %i.lh = fmul double %.sroa.12.0458, %.sroa.19.0.fr
  %i.li = call double @llvm.fmuladd.f64(double %8, double %.sroa.8.0461, double %i.lh)
  %i.lj = fneg double %i.li
  %14 = extractelement <2 x double> %7, i64 0
  %i.lk = fdiv double %i.lj, %14
  br label %.loopexit397

.split.us.split:                                  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split
  %i.ll = fmul double %.sroa.12.0458, %.sroa.19.0.fr
  %15 = extractelement <2 x double> %7, i64 0
  %i.lm = call double @llvm.fmuladd.f64(double %15, double %.sroa.0324.0464, double %i.ll)
  %i.ln = fneg double %i.lm
  %i.lo = fdiv double %i.ln, %8
  br label %.loopexit397

.split417.us:                                     ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us
  %16 = extractelement <2 x double> %7, i64 0
  %i.lp = fmul double %.sroa.0324.0464, %16
  %i.lq = call double @llvm.fmuladd.f64(double %8, double %.sroa.8.0461, double %i.lp)
  %i.lr = fneg double %i.lq
  %i.ls = fdiv double %i.lr, %.sroa.19.0.fr
  br label %.loopexit397

.loopexit397:                                     ; preds = %.split417.us, %.split.us.split, %.split418
  %.sroa.23297.0 = phi double [ %.sroa.12.0458, %.split418 ], [ %.sroa.12.0458, %.split.us.split ], [ %i.ls, %.split417.us ] ; 3 uses
  %.sroa.14.0 = phi double [ %.sroa.8.0461, %.split418 ], [ %i.lo, %.split.us.split ], [ %.sroa.8.0461, %.split417.us ] ; 3 uses
  %.sroa.0290.0 = phi double [ %i.lk, %.split418 ], [ %.sroa.0324.0464, %.split.us.split ], [ %.sroa.0324.0464, %.split417.us ] ; 3 uses
  %.1126 = phi i32 [ 0, %.split418 ], [ 1, %.split.us.split ], [ 2, %.split417.us ]
  %i.lt = load double, ptr %i.ck, align 8
  %i.lu = fmul double %.sroa.14.0, %.sroa.14.0
  %i.lv = call double @llvm.fmuladd.f64(double %.sroa.0290.0, double %.sroa.0290.0, double %i.lu)
  %i.lw = call noundef double @llvm.fmuladd.f64(double %.sroa.23297.0, double %.sroa.23297.0, double %i.lv)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.lw)
  %i.lx = fdiv double %i.lt, %sqrt.i              ; 3 uses
  %i.ly = fmul double %.sroa.0290.0, %i.lx        ; 2 uses
  %i.lz = fmul double %.sroa.14.0, %i.lx          ; 2 uses
  %i.ma = fmul double %.sroa.23297.0, %i.lx       ; 2 uses
  %i.mb = call double @cos(double noundef %i.o) #30 ; 4 uses
  %i.mc = call double @sin(double noundef %i.o) #30 ; 3 uses
  %i.md = fsub double 1.000000e+00, %i.mb         ; 3 uses
  %17 = extractelement <2 x double> %7, i64 0     ; 3 uses
  %i.me = fmul double %17, %i.md                  ; 5 uses
  %i.mf = call double @llvm.fmuladd.f64(double %i.me, double %17, double %i.mb)
  %i.mg = fmul double %.sroa.19.0.fr, %i.mc       ; 2 uses
  %i.mh = fneg double %i.mg
  %i.mi = call double @llvm.fmuladd.f64(double %i.me, double %8, double %i.mh)
  %i.mj = fmul double %8, %i.mc                   ; 2 uses
  %i.mk = call double @llvm.fmuladd.f64(double %i.me, double %.sroa.19.0.fr, double %i.mj)
  %i.ml = call double @llvm.fmuladd.f64(double %i.me, double %8, double %i.mg)
  %i.mm = fmul double %8, %i.md                   ; 3 uses
  %i.mn = call double @llvm.fmuladd.f64(double %i.mm, double %8, double %i.mb)
  %i.mo = fmul double %17, %i.mc                  ; 2 uses
  %i.mp = fneg double %i.mo
  %i.mq = call double @llvm.fmuladd.f64(double %i.mm, double %.sroa.19.0.fr, double %i.mp)
  %i.mr = fneg double %i.mj
  %i.ms = call double @llvm.fmuladd.f64(double %i.me, double %.sroa.19.0.fr, double %i.mr)
  %i.mt = call double @llvm.fmuladd.f64(double %i.mm, double %.sroa.19.0.fr, double %i.mo)
  %i.mu = fmul double %.sroa.19.0.fr, %i.md
  %i.mv = call double @llvm.fmuladd.f64(double %i.mu, double %.sroa.19.0.fr, double %i.mb)
  br i1 %.not519, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit397
  %i.mw = extractelement <2 x double> %i.ke, i64 0
  %i.mx = extractelement <2 x double> %i.ke, i64 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit, %.loopexit397
  %.sroa.22.2.lcssa = phi ptr [ %.sroa.22.1477, %.loopexit397 ], [ %.sroa.22.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0478, %.loopexit397 ], [ %.sroa.16.3, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.0353.2.lcssa = phi ptr [ %.sroa.0353.1479, %.loopexit397 ], [ %.sroa.0353.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.my = add nuw i64 %.0128480, 1                ; 2 uses
  %exitcond545.not = icmp eq i64 %i.my, %i.ac
  br i1 %exitcond545.not, label %.preheader391, label %bb.an, !llvm.loop !107

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit
  %.0131455 = phi i32 [ %i.nr, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ 0, %.lr.ph.preheader ]
  %.sroa.0353.2454 = phi ptr [ %.sroa.0353.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.0353.1479, %.lr.ph.preheader ] ; 8 uses
  %.sroa.16.1453 = phi ptr [ %.sroa.16.3, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.16.0478, %.lr.ph.preheader ] ; 10 uses
  %.sroa.22.2452 = phi ptr [ %.sroa.22.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.22.1477, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0290.1451 = phi double [ %i.nv, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %i.ly, %.lr.ph.preheader ] ; 4 uses
  %.sroa.14.1450 = phi double [ %i.nz, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %i.lz, %.lr.ph.preheader ] ; 4 uses
  %.sroa.23297.1449 = phi double [ %i.od, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %i.ma, %.lr.ph.preheader ] ; 4 uses
  %i.mz = fadd double %i.mw, %.sroa.0290.1451     ; 2 uses
  %i.na = fadd double %i.mx, %.sroa.14.1450       ; 2 uses
  %i.nb = fadd double %.sroa.14351.0476, %.sroa.23297.1449 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.16.1453, %.sroa.22.2452
  br i1 %.not.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph
  store double %i.mz, ptr %.sroa.16.1453, align 8
  %.sroa.6281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.16.1453, i64 8
  store double %i.na, ptr %.sroa.6281.0..sroa_idx, align 8
  %.sroa.7284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.16.1453, i64 16
  store double %i.nb, ptr %.sroa.7284.0..sroa_idx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

bb.ar:                                            ; preds = %.lr.ph
  %i.nc = ptrtoint ptr %.sroa.16.1453 to i64
  %i.nd = ptrtoint ptr %.sroa.0353.2454 to i64
  %i.ne = sub i64 %i.nc, %i.nd                    ; 4 uses
  %i.nf = icmp eq i64 %i.ne, 9223372036854775800
  br i1 %i.nf, label %bb.as, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc183 unwind label %.loopexit.split-lp393

.noexc183:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ar
  %i.ng = sdiv exact i64 %i.ne, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ng, i64 1)
  %i.nh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ng ; 2 uses
  %i.ni = icmp ult i64 %i.nh, %i.ng
  %i.nj = call i64 @llvm.umin.i64(i64 %i.nh, i64 384307168202282325)
  %i.nk = select i1 %i.ni, i64 384307168202282325, i64 %i.nj ; 3 uses
  %.not.i.i.i.i182 = icmp ne i64 %i.nk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i182)
  %i.nl = mul nuw nsw i64 %i.nk, 24
  %i.nm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nl) #28
          to label %.noexc184 unwind label %.loopexit392 ; 5 uses

.noexc184:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.ne ; 3 uses
  store double %i.mz, ptr %i.nn, align 8
  %.sroa.6281.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store double %i.na, ptr %.sroa.6281.0..sroa_idx282, align 8
  %.sroa.7284.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  store double %i.nb, ptr %.sroa.7284.0..sroa_idx285, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0353.2454, %.sroa.16.1453
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc184, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.np, %.lr.ph.i.i.i.i.i.i ], [ %i.nm, %.noexc184 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.no, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0353.2454, %.noexc184 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !108
  %i.no = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.no, %.sroa.16.1453
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc184
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.nm, %.noexc184 ], [ %i.np, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0353.2454, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.2454, i64 noundef %i.ne) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.at, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.nq = getelementptr inbounds nuw [24 x i8], ptr %i.nm, i64 %i.nk
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.aq
  %.sroa.22.7 = phi ptr [ %i.nq, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.22.2452, %bb.aq ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.16.1453, %bb.aq ]
  %.sroa.0353.7 = phi ptr [ %i.nm, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0353.2454, %bb.aq ] ; 2 uses
  %.sroa.16.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24 ; 2 uses
  %i.nr = add nuw i32 %.0131455, 1                ; 2 uses
  %i.ns = fmul double %i.mi, %.sroa.14.1450
  %i.nt = call double @llvm.fmuladd.f64(double %i.mf, double %.sroa.0290.1451, double %i.ns)
  %i.nu = call double @llvm.fmuladd.f64(double %i.mk, double %.sroa.23297.1449, double %i.nt)
  %i.nv = fadd double %i.nu, 0.000000e+00
  %i.nw = fmul double %i.mn, %.sroa.14.1450
  %i.nx = call double @llvm.fmuladd.f64(double %i.ml, double %.sroa.0290.1451, double %i.nw)
  %i.ny = call double @llvm.fmuladd.f64(double %i.mq, double %.sroa.23297.1449, double %i.nx)
  %i.nz = fadd double %i.ny, 0.000000e+00
  %i.oa = fmul double %i.mt, %.sroa.14.1450
  %i.ob = call double @llvm.fmuladd.f64(double %i.ms, double %.sroa.0290.1451, double %i.oa)
  %i.oc = call double @llvm.fmuladd.f64(double %i.mv, double %.sroa.23297.1449, double %i.ob)
  %i.od = fadd double %i.oc, 0.000000e+00
  %exitcond.not = icmp eq i32 %i.nr, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !112

.loopexit392:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit394 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp393:                            ; preds = %bb.as
  %lpad.loopexit.split-lp395 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

._crit_edge497:                                   ; preds = %._crit_edge494.us, %.lr.ph496, %.preheader391
  %.sroa.0353.1.lcssa608 = phi ptr [ %.sroa.0353.1.lcssa607, %.lr.ph496 ], [ %.sroa.0353.2.lcssa, %.preheader391 ], [ %.sroa.0353.1.lcssa607, %._crit_edge494.us ] ; 3 uses
  %.sroa.22.1.lcssa606 = phi ptr [ %.sroa.22.1.lcssa605, %.lr.ph496 ], [ %.sroa.22.2.lcssa, %.preheader391 ], [ %.sroa.22.1.lcssa605, %._crit_edge494.us ] ; 3 uses
  %i.oe = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc185 unwind label %bb.ay

.noexc185:                                        ; preds = %._crit_edge497
  br i1 %i.oe, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, label %bb.au

bb.au:                                            ; preds = %.noexc185
  %i.of = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc186 unwind label %bb.ay

.noexc186:                                        ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.og = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc187 unwind label %bb.ay

.noexc187:                                        ; preds = %.noexc186
  store ptr %i.og, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugIJPKcRA80_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.of, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(80) @.str.6)
          to label %.noexc188 unwind label %bb.ay

.noexc188:                                        ; preds = %.noexc187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit

.split499.us.invoke:                              ; preds = %bb.ad, %bb.aa, %bb.x, %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.split499.us.cont unwind label %.loopexit.split-lp

.split499.us.cont:                                ; preds = %.split499.us.invoke
  unreachable

.loopexit.split-lp:                               ; preds = %.split499.us.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.split507.us:                                     ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc250 unwind label %.loopexit.split-lp387

.noexc250:                                        ; preds = %.split507.us
  unreachable

.loopexit.split-lp387:                            ; preds = %.split507.us
  %lpad.loopexit.split-lp389 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit: ; preds = %.noexc185, %.noexc188, %.noexc181, %.noexc178
  %.sroa.22.3 = phi ptr [ %.sroa.22.6, %.noexc181 ], [ %.sroa.22.6, %.noexc178 ], [ %.sroa.22.1.lcssa606, %.noexc188 ], [ %.sroa.22.1.lcssa606, %.noexc185 ]
  %.sroa.0353.3 = phi ptr [ %.sroa.16.2, %.noexc181 ], [ %.sroa.16.2, %.noexc178 ], [ %.sroa.0353.1.lcssa608, %.noexc188 ], [ %.sroa.0353.1.lcssa608, %.noexc185 ] ; 3 uses
  %.not.i.i.i252 = icmp eq ptr %.sroa.0353.3, null
  br i1 %.not.i.i.i252, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit
  %i.oh = ptrtoint ptr %.sroa.22.3 to i64
  %i.oi = ptrtoint ptr %.sroa.0353.3 to i64
  %i.oj = sub i64 %i.oh, %i.oi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.3, i64 noundef %i.oj) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, %bb.av
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 24
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS5_:bb.a
  %.sroa.06.0.i23 = phi ptr [ %i.cd, %bb.m ], [ %.02126.i15, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i17.thread ] ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %i.ar
  br i1 %i.cf, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i21.thread
  %i.cg = icmp eq ptr %i.ce, %i.ar
  br i1 %i.cg, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29: ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i23, i64 40
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = icmp ult i32 %i.ci, %i.ck
  br i1 %i.cl, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29, %bb.n
  br label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread83: ; preds = %bb.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10
  %i.cm = icmp ult ptr %i.as, %i.ar
  br i1 %i.cm, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread83
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = icmp ult i32 %i.co, %i.cq
  br i1 %i.cr, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread83, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %1
  br i1 %i.cu, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread
  %i.cv = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #32 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = icmp ult ptr %i.ar, %i.cx
  br i1 %i.cy, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = icmp eq ptr %i.ar, %i.cx
  br i1 %i.cz, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread89

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35: ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = icmp ult i32 %i.db, %i.dd
  br i1 %i.de, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread89

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread: ; preds = %bb.o, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = icmp eq ptr %i.dg, null                 ; 2 uses
  %spec.select94 = select i1 %i.dh, ptr null, ptr %i.cv
  %spec.select95 = select i1 %i.dh, ptr %1, ptr %i.cv
  br label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread89: ; preds = %bb.p, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02124.i36 = load ptr, ptr %i.di, align 8      ; 2 uses
  %.not25.i37 = icmp eq ptr %.02124.i36, null
  br i1 %.not25.i37, label %._crit_edge.thread.i54, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread89
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load i32, ptr %i.dj, align 8
  br label %.backedge97

.backedge97:                                      ; preds = %.backedge97.backedge, %.lr.ph.i38
  %.02126.i39 = phi ptr [ %.02124.i36, %.lr.ph.i38 ], [ %.02126.i39.be, %.backedge97.backedge ] ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8            ; 3 uses
  %i.dn = icmp ult ptr %i.ar, %i.dm
  br i1 %i.dn, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41, label %bb.q

bb.q:                                             ; preds = %.backedge97
  %i.do = icmp eq ptr %i.ar, %i.dm
  br i1 %i.do, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i56, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i56: ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 40
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = icmp ult i32 %i.dk, %i.dq
  br i1 %i.dr, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i56, %.backedge97
  %i.ds = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 16
  %.021.i43 = load ptr, ptr %i.ds, align 8        ; 2 uses
  %.not.i44 = icmp eq ptr %.021.i43, null
  br i1 %.not.i44, label %._crit_edge.thread.i54, label %.backedge97.backedge

.backedge97.backedge:                             ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread
  %.02126.i39.be = phi ptr [ %.021.i43, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41 ], [ %.021.i4391, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread ]
  br label %.backedge97, !llvm.loop !483

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread: ; preds = %bb.q, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i56
  %i.dt = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 24
  %.021.i4391 = load ptr, ptr %i.dt, align 8      ; 2 uses
  %.not.i4492 = icmp eq ptr %.021.i4391, null
  br i1 %.not.i4492, label %._crit_edge.i45.thread, label %.backedge97.backedge

._crit_edge.thread.i54:                           ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread89
  %.020.lcssa34.i55 = phi ptr [ %i.a, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread89 ], [ %.02126.i39, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41 ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = icmp eq ptr %.020.lcssa34.i55, %i.dv
  br i1 %i.dw, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i54
  %i.dx = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i55) #32 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %._crit_edge.i45.thread

._crit_edge.i45.thread:                           ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread, %bb.r
  %i.dy = phi ptr [ %.pre, %bb.r ], [ %i.dm, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread ] ; 2 uses
  %.020.lcssa33.i46 = phi ptr [ %.020.lcssa34.i55, %bb.r ], [ %.02126.i39, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread ] ; 2 uses
  %.sroa.06.0.i47 = phi ptr [ %i.dx, %bb.r ], [ %.02126.i39, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread ] ; 2 uses
  %i.dz = icmp ult ptr %i.dy, %i.ar
  br i1 %i.dz, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i45.thread
  %i.ea = icmp eq ptr %i.dy, %i.ar
  br i1 %i.ea, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53: ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i47, i64 40
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = icmp ult i32 %i.ec, %i.ee
  br i1 %i.ef, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53, %bb.s
  br label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53, %._crit_edge.i45.thread, %._crit_edge.thread.i54, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29, %._crit_edge.i21.thread, %._crit_edge.thread.i30, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i, %._crit_edge.i.thread, %._crit_edge.thread.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit11.thread, %bb.c, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit
  %.sroa.078.2 = phi ptr [ %spec.select, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit11.thread ], [ null, %bb.c ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit ], [ %spec.select94, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread ], [ %1, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34 ], [ null, %._crit_edge.i.thread ], [ %i.bb, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread ], [ null, %._crit_edge.i45.thread ], [ null, %._crit_edge.i21.thread ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread ], [ %.sroa.06.0.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i ], [ null, %._crit_edge.thread.i ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i ], [ %.sroa.06.0.i23, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24 ], [ null, %._crit_edge.thread.i30 ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29 ], [ %.sroa.06.0.i47, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48 ], [ null, %._crit_edge.thread.i54 ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53 ]
  %.sroa.12.2 = phi ptr [ %spec.select93, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit11.thread ], [ %i.f, %bb.c ], [ %i.f, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit ], [ %spec.select95, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34 ], [ %.020.lcssa33.i, %._crit_edge.i.thread ], [ %i.bb, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread ], [ %.020.lcssa33.i46, %._crit_edge.i45.thread ], [ %.020.lcssa33.i22, %._crit_edge.i21.thread ], [ %i.ct, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i ], [ %.020.lcssa34.i, %._crit_edge.thread.i ], [ %.020.lcssa33.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24 ], [ %.020.lcssa34.i31, %._crit_edge.thread.i30 ], [ %.020.lcssa33.i22, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29 ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48 ], [ %.020.lcssa34.i55, %._crit_edge.thread.i54 ], [ %.020.lcssa33.i46, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.078.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
          to label %_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #31
  unreachable

_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #29
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind memory(none) }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !6}
!4 = distinct !{!4, !5, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!5 = distinct !{!5, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!6 = distinct !{!6, !5, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZSt11make_sharedIN6Assimp3IFC8TempMeshEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!12 = distinct !{!12, !"_ZSt11make_sharedIN6Assimp3IFC8TempMeshEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!13 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!16, !18}
!16 = distinct !{!16, !17, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!17 = distinct !{!17, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!18 = distinct !{!18, !17, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!19 = distinct !{!19, !8}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!22 = distinct !{!22, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!23 = distinct !{!23, !22, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!28 = distinct !{!28, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!31 = !{!27, !30}
!32 = distinct !{!32, !8}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!35 = distinct !{!35, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!36 = distinct !{!36, !35, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev: argument 0"}
!39 = distinct !{!39, !"_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev"}
!40 = !{}
!41 = !{i64 4}
!42 = !{!43, !45}
!43 = distinct !{!43, !44, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!44 = distinct !{!44, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!45 = distinct !{!45, !44, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!48 = distinct !{!48, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!49 = distinct !{!49, !48, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!50 = !{!51, !53}
!51 = distinct !{!51, !52, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!52 = distinct !{!52, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!53 = distinct !{!53, !52, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!56 = distinct !{!56, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!57 = distinct !{!57, !56, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!58 = !{!59, !61}
!59 = distinct !{!59, !60, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!60 = distinct !{!60, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!61 = distinct !{!61, !60, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!62 = distinct !{!62, !8}
!63 = distinct !{!63, !8}
!64 = distinct !{!64, !8}
!65 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!66 = !{!67, !69}
!67 = distinct !{!67, !68, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!68 = distinct !{!68, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!69 = distinct !{!69, !68, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!70 = !{!71, !73}
!71 = distinct !{!71, !72, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!72 = distinct !{!72, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!73 = distinct !{!73, !72, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!74 = distinct !{!74, !8}
!75 = !{!76, !78}
!76 = distinct !{!76, !77, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!77 = distinct !{!77, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!78 = distinct !{!78, !77, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!79 = !{!80, !82}
!80 = distinct !{!80, !81, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!81 = distinct !{!81, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!82 = distinct !{!82, !81, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!83 = !{!84, !86}
!84 = distinct !{!84, !85, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!85 = distinct !{!85, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!86 = distinct !{!86, !85, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!87 = !{!88, !90}
!88 = distinct !{!88, !89, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!89 = distinct !{!89, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!90 = distinct !{!90, !89, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!91 = !{!92, !94}
!92 = distinct !{!92, !93, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!93 = distinct !{!93, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!94 = distinct !{!94, !93, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!97 = distinct !{!97, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!100 = distinct !{!100, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!103 = distinct !{!103, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!104 = distinct !{!104, !8}
!105 = distinct !{!105, !8}
!106 = distinct !{!106, !8}
!107 = distinct !{!107, !8}
!108 = !{!109, !111}
!109 = distinct !{!109, !110, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!110 = distinct !{!110, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!111 = distinct !{!111, !110, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!112 = distinct !{!112, !8}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!115 = distinct !{!115, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!116 = distinct !{!116, !8}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!119 = distinct !{!119, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!120 = distinct !{!120, !8}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!123 = distinct !{!123, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!124 = distinct !{!124, !8}
!125 = !{!126, !128}
!126 = distinct !{!126, !127, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!127 = distinct !{!127, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!128 = distinct !{!128, !127, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!129 = distinct !{!129, !8}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix4x4tIS1_ERKS2_: argument 0"}
!132 = distinct !{!132, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix4x4tIS1_ERKS2_"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix3x3tIS1_ERKS2_: argument 0"}
!135 = distinct !{!135, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix3x3tIS1_ERKS2_"}
!136 = distinct !{!136, !8}
!137 = !{i8 0, i8 2}
!138 = distinct !{!138, !8}
!139 = !{!140, !142}
!140 = distinct !{!140, !141, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!141 = distinct !{!141, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!142 = distinct !{!142, !141, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!145 = distinct !{!145, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!148 = distinct !{!148, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!149 = !{!150, !152}
!150 = distinct !{!150, !151, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!151 = distinct !{!151, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!152 = distinct !{!152, !151, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!155 = distinct !{!155, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!158 = distinct !{!158, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
end_hunk_1
