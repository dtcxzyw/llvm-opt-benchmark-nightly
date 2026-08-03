inline.NumInlined: 2079
inline.NumDeleted: 821
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp3IFC21ProcessSweptDiskSolidERKNS0_10Schema_2x317IfcSweptDiskSolidERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
  br label %bb.t

.lr.ph490.us:                                     ; preds = %.lr.ph496, %._crit_edge494.us
  %.0132495.us = phi i64 [ %i.kc, %._crit_edge494.us ], [ 0, %.lr.ph496 ] ; 3 uses
  %i.js = mul i64 %.0132495.us, %i.ad
  %i.jt = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa597, i64 %i.js ; 5 uses
  %i.ju = load double, ptr %i.jt, align 8
  %i.jv = fptrunc double %i.ju to float
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jx = load double, ptr %i.jw, align 8
  %i.jy = fptrunc double %i.jx to float
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.ka = load double, ptr %i.jz, align 8
  %i.kb = fptrunc double %i.ka to float
  %i.kc = add nuw i64 %.0132495.us, 1             ; 3 uses
  %i.kd = mul i64 %i.kc, %i.ad                    ; 2 uses
  %i.ke = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa597, i64 %i.kd
  br label %bb.s

._crit_edge494.us:                                ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  %exitcond543.not = icmp eq i64 %i.kc, %.pre-phi550594
  br i1 %exitcond543.not, label %._crit_edge497, label %.lr.ph490.us, !llvm.loop !106

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
  %.0128480 = phi i64 [ 0, %.lr.ph483 ], [ %i.nw, %._crit_edge ] ; 3 uses
  %.sroa.0353.1479 = phi ptr [ %.sroa.16.2, %.lr.ph483 ], [ %.sroa.0353.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.16.0478 = phi ptr [ %.sroa.16.2, %.lr.ph483 ], [ %.sroa.16.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.22.1477 = phi ptr [ %.sroa.22.6, %.lr.ph483 ], [ %.sroa.22.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0347.0474 = phi double [ %.sroa.0347.0.copyload, %.lr.ph483 ], [ %.sroa.0328.1, %._crit_edge ] ; 3 uses
  %.sroa.0336.0471 = phi double [ %.sroa.0347.0.copyload, %.lr.ph483 ], [ %.sroa.0347.0474, %._crit_edge ] ; 2 uses
  %.sroa.0328.0470 = phi double [ 0.000000e+00, %.lr.ph483 ], [ %.sroa.0328.1, %._crit_edge ]
  %.sroa.0324.0464 = phi double [ 1.000000e+00, %.lr.ph483 ], [ %i.nx, %._crit_edge ] ; 4 uses
  %.sroa.8.0461 = phi double [ 1.000000e+00, %.lr.ph483 ], [ %i.mh, %._crit_edge ] ; 4 uses
  %.sroa.12.0458 = phi double [ 1.000000e+00, %.lr.ph483 ], [ %i.ny, %._crit_edge ] ; 4 uses
  %i.kf = phi <2 x double> [ %i.ci, %.lr.ph483 ], [ %i.km, %._crit_edge ] ; 4 uses
  %i.kg = phi <2 x double> [ zeroinitializer, %.lr.ph483 ], [ %i.km, %._crit_edge ]
  %i.kh = phi <2 x double> [ %i.ci, %.lr.ph483 ], [ %i.kf, %._crit_edge ] ; 2 uses
  %.not152 = icmp eq i64 %.0128480, %i.cj
  br i1 %.not152, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ki = load ptr, ptr %3, align 8
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %i.ki, i64 %.0128480 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %.sroa.0328.0.copyload = load double, ptr %i.kk, align 8
  %.sroa.7330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %i.kl = load <2 x double>, ptr %.sroa.7330.0..sroa_idx, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.sroa.0328.1 = phi double [ %.sroa.0328.0470, %bb.an ], [ %.sroa.0328.0.copyload, %bb.ao ] ; 3 uses
  %i.km = phi <2 x double> [ %i.kg, %bb.an ], [ %i.kl, %bb.ao ] ; 3 uses
  %i.kn = fsub double %.sroa.0347.0474, %.sroa.0336.0471
  %i.ko = fsub <2 x double> %i.kf, %i.kh
  %i.kp = fsub double %.sroa.0328.1, %.sroa.0336.0471
  %i.kq = fsub <2 x double> %i.km, %i.kh
  %i.kr = fadd <2 x double> %i.ko, %i.kq          ; 5 uses
  %i.ks = fadd double %i.kn, %i.kp                ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.kr, %i.kr
  %i.kt = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ku = call double @llvm.fmuladd.f64(double %i.ks, double %i.ks, double %i.kt)
  %i.kv = extractelement <2 x double> %i.kr, i64 1 ; 2 uses
  %i.kw = call noundef double @llvm.fmuladd.f64(double %i.kv, double %i.kv, double %i.ku) ; 2 uses
  %i.kx = fcmp oeq double %i.kw, 0.000000e+00
  br i1 %i.kx, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %bb.ap
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.kw)
  %i.ky = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.kz = fmul double %i.ks, %i.ky
  %i.la = insertelement <2 x double> poison, double %i.ky, i64 0
  %i.lb = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lc = fmul <2 x double> %i.kr, %i.lb
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %_ZN10aiVector3tIdEdVEd.exit.i, %bb.ap
  %.sroa.0307.0 = phi double [ %i.ks, %bb.ap ], [ %i.kz, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %i.ld = phi <2 x double> [ %i.kr, %bb.ap ], [ %i.lc, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %i.le = freeze <2 x double> %i.ld               ; 7 uses
  %.sroa.0307.0.fr = freeze double %.sroa.0307.0  ; 7 uses
  %i.lf = call double @llvm.fabs.f64(double %.sroa.0307.0.fr)
  %i.lg = fcmp ogt double %i.lf, f0x3EB0C6F7A0000000
  %i.lh = icmp eq i32 %.0125481, 1
  %i.li = extractelement <2 x double> %i.le, i64 0 ; 5 uses
  %i.lj = call double @llvm.fabs.f64(double %i.li)
  %i.lk = fcmp ogt double %i.lj, f0x3EB0C6F7A0000000 ; 2 uses
  %i.ll = icmp ne i32 %.0125481, 2                ; 3 uses
  %i.lm = extractelement <2 x double> %i.le, i64 1 ; 6 uses
  %i.ln = call double @llvm.fabs.f64(double %i.lm)
  %i.lo = fcmp ule double %i.ln, f0x3EB0C6F7A0000000 ; 3 uses
  br i1 %i.lg, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.us:     ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %brmerge609 = or i1 %i.ll, %i.lo
  %or.cond = and i1 %i.lk, %brmerge609
  br i1 %or.cond, label %.split.us.split, label %.split417.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split:        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.lp = icmp eq i32 %.0125481, 0
  br i1 %i.lp, label %.split418, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split:  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split
  br i1 %i.lk, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split
  %brmerge612 = or i1 %i.ll, %i.lo
  br i1 %brmerge612, label %.split418, label %.split417.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split
  br i1 %i.lh, label %.split.us.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split
  %brmerge615 = or i1 %i.ll, %i.lo
  br i1 %brmerge615, label %.split418, label %.split417.us

.split418:                                        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split
  %i.lq = fmul double %.sroa.12.0458, %i.lm
  %i.lr = call double @llvm.fmuladd.f64(double %i.li, double %.sroa.8.0461, double %i.lq)
  %i.ls = fneg double %i.lr
  %i.lt = fdiv double %i.ls, %.sroa.0307.0.fr
  br label %.loopexit397

.split.us.split:                                  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split
  %i.lu = fmul double %.sroa.12.0458, %i.lm
  %i.lv = call double @llvm.fmuladd.f64(double %.sroa.0307.0.fr, double %.sroa.0324.0464, double %i.lu)
  %i.lw = fneg double %i.lv
  %i.lx = fdiv double %i.lw, %i.li
  br label %.loopexit397

.split417.us:                                     ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us
  %i.ly = fmul double %.sroa.0324.0464, %.sroa.0307.0.fr
  %i.lz = call double @llvm.fmuladd.f64(double %i.li, double %.sroa.8.0461, double %i.ly)
  %i.ma = fneg double %i.lz
  %i.mb = fdiv double %i.ma, %i.lm
  br label %.loopexit397

.loopexit397:                                     ; preds = %.split417.us, %.split.us.split, %.split418
  %.sroa.23297.0 = phi double [ %.sroa.12.0458, %.split418 ], [ %.sroa.12.0458, %.split.us.split ], [ %i.mb, %.split417.us ] ; 3 uses
  %.sroa.14.0 = phi double [ %.sroa.8.0461, %.split418 ], [ %i.lx, %.split.us.split ], [ %.sroa.8.0461, %.split417.us ] ; 3 uses
  %.sroa.0290.0 = phi double [ %i.lt, %.split418 ], [ %.sroa.0324.0464, %.split.us.split ], [ %.sroa.0324.0464, %.split417.us ] ; 3 uses
  %.1126 = phi i32 [ 0, %.split418 ], [ 1, %.split.us.split ], [ 2, %.split417.us ]
  %i.mc = load double, ptr %i.ck, align 8
  %i.md = fmul double %.sroa.14.0, %.sroa.14.0
  %i.me = call double @llvm.fmuladd.f64(double %.sroa.0290.0, double %.sroa.0290.0, double %i.md)
  %i.mf = call noundef double @llvm.fmuladd.f64(double %.sroa.23297.0, double %.sroa.23297.0, double %i.me)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.mf)
  %i.mg = fdiv double %i.mc, %sqrt.i              ; 2 uses
  %i.mh = fmul double %.sroa.14.0, %i.mg          ; 2 uses
  %i.mi = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mj = shufflevector <2 x double> %i.mi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mk = insertelement <2 x double> poison, double %.sroa.0290.0, i64 0
  %i.ml = insertelement <2 x double> %i.mk, double %.sroa.23297.0, i64 1
  %i.mm = fmul <2 x double> %i.ml, %i.mj          ; 3 uses
  %i.mn = call double @cos(double noundef %i.o) #30 ; 4 uses
  %i.mo = call double @sin(double noundef %i.o) #30 ; 2 uses
  %i.mp = fsub double 1.000000e+00, %i.mn         ; 3 uses
  %i.mq = fmul double %.sroa.0307.0.fr, %i.mo     ; 2 uses
  %i.mr = fneg double %i.mq
  %i.ms = fmul double %i.li, %i.mp                ; 2 uses
  %i.mt = fmul double %.sroa.0307.0.fr, %i.mp
  %i.mu = fmul double %i.lm, %i.mp
  %i.mv = insertelement <2 x double> poison, double %i.mo, i64 0
  %i.mw = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mx = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.my = fmul <2 x double> %i.mw, %i.mx          ; 3 uses
  %i.mz = extractelement <2 x double> %i.my, i64 0
  %i.na = fneg double %i.mz
  %i.nb = insertelement <2 x double> poison, double %i.mt, i64 0
  %i.nc = shufflevector <2 x double> %i.nb, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.nd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nc, <2 x double> %i.le, <2 x double> %i.my) ; 2 uses
  %i.ne = insertelement <2 x double> poison, double %i.ms, i64 0
  %i.nf = shufflevector <2 x double> %i.ne, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ng = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.nh = insertelement <2 x double> %i.ng, double %i.mr, i64 1
  %i.ni = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nf, <2 x double> %i.le, <2 x double> %i.nh) ; 2 uses
  %i.nj = insertelement <2 x double> %i.le, double %.sroa.0307.0.fr, i64 0
  %i.nk = fneg <2 x double> %i.my
  %i.nl = insertelement <2 x double> %i.nk, double %i.mn, i64 0
  %i.nm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nc, <2 x double> %i.nj, <2 x double> %i.nl)
  %i.nn = insertelement <2 x double> poison, double %i.na, i64 0
  %i.no = insertelement <2 x double> %i.nn, double %i.mq, i64 1
  %i.np = insertelement <2 x double> %i.nc, double %i.ms, i64 1
  %i.nq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.le, <2 x double> %i.no)
  %i.nr = call double @llvm.fmuladd.f64(double %i.mu, double %i.lm, double %i.mn)
  br i1 %.not510, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit397
  %i.ns = insertelement <2 x double> poison, double %.sroa.0347.0474, i64 0
  %i.nt = extractelement <2 x double> %i.ni, i64 0
  %i.nu = shufflevector <2 x double> %i.nd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.nv = insertelement <2 x double> %i.nu, double %i.nr, i64 1
  %4 = extractelement <2 x double> %i.ni, i64 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit, %.loopexit397
  %.sroa.22.2.lcssa = phi ptr [ %.sroa.22.1477, %.loopexit397 ], [ %.sroa.22.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0478, %.loopexit397 ], [ %.sroa.16.3, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.0353.2.lcssa = phi ptr [ %.sroa.0353.1479, %.loopexit397 ], [ %.sroa.0353.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.nw = add nuw i64 %.0128480, 1                ; 2 uses
  %exitcond535.not = icmp eq i64 %i.nw, %i.ac
  %i.nx = extractelement <2 x double> %i.mm, i64 0
  %i.ny = extractelement <2 x double> %i.mm, i64 1
  br i1 %exitcond535.not, label %.preheader391, label %bb.an, !llvm.loop !107

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit
  %.0131455 = phi i32 [ %i.ou, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ 0, %.lr.ph.preheader ]
  %.sroa.0353.2454 = phi ptr [ %.sroa.0353.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.0353.1479, %.lr.ph.preheader ] ; 8 uses
  %.sroa.16.1453 = phi ptr [ %.sroa.16.3, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.16.0478, %.lr.ph.preheader ] ; 9 uses
  %.sroa.22.2452 = phi ptr [ %.sroa.22.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.22.1477, %.lr.ph.preheader ] ; 2 uses
  %.sroa.14.1450 = phi double [ %i.pe, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %i.mh, %.lr.ph.preheader ] ; 3 uses
  %i.nz = phi <2 x double> [ %i.pf, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %i.mm, %.lr.ph.preheader ] ; 6 uses
  %i.oa = insertelement <2 x double> %i.ns, double %.sroa.14.1450, i64 1
  %i.ob = shufflevector <2 x double> %i.nz, <2 x double> %i.kf, <2 x i32> <i32 0, i32 2>
  %i.oc = fadd <2 x double> %i.oa, %i.ob          ; 2 uses
  %i.od = extractelement <2 x double> %i.nz, i64 1
  %foldExtExtBinop625 = fadd <2 x double> %i.kf, %i.nz
  %i.oe = extractelement <2 x double> %foldExtExtBinop625, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.16.1453, %.sroa.22.2452
  br i1 %.not.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph
  store <2 x double> %i.oc, ptr %.sroa.16.1453, align 8
  %.sroa.7284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.16.1453, i64 16
  store double %i.oe, ptr %.sroa.7284.0..sroa_idx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

bb.ar:                                            ; preds = %.lr.ph
  %i.of = ptrtoint ptr %.sroa.16.1453 to i64
  %i.og = ptrtoint ptr %.sroa.0353.2454 to i64
  %i.oh = sub i64 %i.of, %i.og                    ; 4 uses
  %i.oi = icmp eq i64 %i.oh, 9223372036854775800
  br i1 %i.oi, label %bb.as, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc183 unwind label %.loopexit.split-lp393

.noexc183:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ar
  %i.oj = sdiv exact i64 %i.oh, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.oj, i64 1)
  %i.ok = add nsw i64 %.sroa.speculated.i.i.i.i, %i.oj ; 2 uses
  %i.ol = icmp ult i64 %i.ok, %i.oj
  %i.om = call i64 @llvm.umin.i64(i64 %i.ok, i64 384307168202282325)
  %i.on = select i1 %i.ol, i64 384307168202282325, i64 %i.om ; 3 uses
  %.not.i.i.i.i182 = icmp ne i64 %i.on, 0
  call void @llvm.assume(i1 %.not.i.i.i.i182)
  %i.oo = mul nuw nsw i64 %i.on, 24
  %i.op = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oo) #28
          to label %.noexc184 unwind label %.loopexit392 ; 5 uses

.noexc184:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.oh ; 2 uses
  store <2 x double> %i.oc, ptr %i.oq, align 8
  %.sroa.7284.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  store double %i.oe, ptr %.sroa.7284.0..sroa_idx285, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0353.2454, %.sroa.16.1453
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc184, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.os, %.lr.ph.i.i.i.i.i.i ], [ %i.op, %.noexc184 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.or, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0353.2454, %.noexc184 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !108
  %i.or = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.or, %.sroa.16.1453
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc184
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.op, %.noexc184 ], [ %i.os, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0353.2454, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.2454, i64 noundef %i.oh) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.at, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.ot = getelementptr inbounds nuw [24 x i8], ptr %i.op, i64 %i.on
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.aq
  %.sroa.22.7 = phi ptr [ %i.ot, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.22.2452, %bb.aq ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.16.1453, %bb.aq ]
  %.sroa.0353.7 = phi ptr [ %i.op, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0353.2454, %bb.aq ] ; 2 uses
  %.sroa.16.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24 ; 2 uses
  %i.ou = add nuw i32 %.0131455, 1                ; 2 uses
  %i.ov = insertelement <2 x double> poison, double %.sroa.14.1450, i64 0
  %i.ow = shufflevector <2 x double> %i.ov, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ox = fmul <2 x double> %i.nq, %i.ow
  %i.oy = fmul double %i.nt, %.sroa.14.1450
  %i.oz = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> %i.oz, <2 x double> %i.ox) ; 2 uses
  %i.pb = shufflevector <2 x double> %i.pa, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pc = insertelement <2 x double> %i.pb, double %i.oy, i64 0
  %i.pd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nd, <2 x double> %i.nz, <2 x double> %i.pc)
  %5 = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %6 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nv, <2 x double> %5, <2 x double> %i.pa)
  %7 = extractelement <2 x double> %i.pd, i64 0
  %8 = call double @llvm.fmuladd.f64(double %4, double %i.od, double %7)
  %i.pe = fadd double %8, 0.000000e+00
  %i.pf = fadd <2 x double> %6, zeroinitializer
  %exitcond.not = icmp eq i32 %i.ou, %i.m
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
  %.sroa.0353.1.lcssa598 = phi ptr [ %.sroa.0353.2.lcssa, %.preheader391 ], [ %.sroa.0353.1.lcssa597, %.lr.ph496 ], [ %.sroa.0353.1.lcssa597, %._crit_edge494.us ] ; 3 uses
  %.sroa.22.1.lcssa596 = phi ptr [ %.sroa.22.2.lcssa, %.preheader391 ], [ %.sroa.22.1.lcssa595, %.lr.ph496 ], [ %.sroa.22.1.lcssa595, %._crit_edge494.us ] ; 3 uses
  %i.pg = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc185 unwind label %bb.ay

.noexc185:                                        ; preds = %._crit_edge497
  br i1 %i.pg, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, label %bb.au

bb.au:                                            ; preds = %.noexc185
  %i.ph = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc186 unwind label %bb.ay

.noexc186:                                        ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.pi = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc187 unwind label %bb.ay

.noexc187:                                        ; preds = %.noexc186
  store ptr %i.pi, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugIJPKcRA80_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ph, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(80) @.str.6)
          to label %.noexc188 unwind label %bb.ay

.noexc188:                                        ; preds = %.noexc187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit

.split499.us.invoke:                              ; preds = %bb.ae, %bb.ab, %bb.y, %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.split499.us.cont unwind label %.loopexit.split-lp

.split499.us.cont:                                ; preds = %.split499.us.invoke
  unreachable

.loopexit.split-lp:                               ; preds = %.split499.us.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.split507.us:                                     ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc250 unwind label %.loopexit.split-lp387

.noexc250:                                        ; preds = %.split507.us
  unreachable

.loopexit.split-lp387:                            ; preds = %.split507.us
  %lpad.loopexit.split-lp389 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit: ; preds = %.noexc185, %.noexc188, %.noexc181, %.noexc178
  %.sroa.22.3 = phi ptr [ %.sroa.22.6, %.noexc181 ], [ %.sroa.22.6, %.noexc178 ], [ %.sroa.22.1.lcssa596, %.noexc188 ], [ %.sroa.22.1.lcssa596, %.noexc185 ]
  %.sroa.0353.3 = phi ptr [ %.sroa.16.2, %.noexc181 ], [ %.sroa.16.2, %.noexc178 ], [ %.sroa.0353.1.lcssa598, %.noexc188 ], [ %.sroa.0353.1.lcssa598, %.noexc185 ] ; 3 uses
  %.not.i.i.i252 = icmp eq ptr %.sroa.0353.3, null
  br i1 %.not.i.i.i252, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit
  %i.pj = ptrtoint ptr %.sroa.22.3 to i64
  %i.pk = ptrtoint ptr %.sroa.0353.3 to i64
  %i.pl = sub i64 %i.pj, %i.pk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.3, i64 noundef %i.pl) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, %bb.av
  %i.pm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.pn = load ptr, ptr %i.pm, align 8            ; 3 uses
  %.not.i.i.i.i253 = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i.i253, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %i.po = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.pp = load ptr, ptr %i.po, align 8
  %i.pq = ptrtoint ptr %i.pp to i64
  %i.pr = ptrtoint ptr %i.pn to i64
  %i.ps = sub i64 %i.pq, %i.pr
  call void @_ZdlPvm(ptr noundef nonnull %i.pn, i64 noundef %i.ps) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.aw, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %i.pt = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.pt, null
  br i1 %.not.i.i.i1.i, label %_ZN6Assimp3IFC8TempMeshD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.pu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = ptrtoint ptr %i.pt to i64
  %i.py = sub i64 %i.pw, %i.px
  call void @_ZdlPvm(ptr noundef nonnull %i.pt, i64 noundef %i.py) #29
  br label %_ZN6Assimp3IFC8TempMeshD2Ev.exit

_ZN6Assimp3IFC8TempMeshD2Ev.exit:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA54_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA54_KcEEEvDpOT_.exit: ; preds = %bb.c, %bb.b, %_ZN6Assimp3IFC8TempMeshD2Ev.exit
  ret void

bb.ay:                                            ; preds = %.noexc187, %.noexc186, %bb.au, %._crit_edge497
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit392, %.loopexit.split-lp393, %bb.ay, %bb.q
  %.sroa.22.5 = phi ptr [ %.sroa.22.0, %bb.q ], [ %.sroa.22.1.lcssa596, %bb.ay ], [ %.sroa.16.1453, %.loopexit392 ], [ %.sroa.16.1453, %.loopexit.split-lp393 ]
  %.sroa.0353.5 = phi ptr [ %.sroa.0353.0, %bb.q ], [ %.sroa.0353.1.lcssa598, %bb.ay ], [ %.sroa.0353.2454, %.loopexit392 ], [ %.sroa.0353.2454, %.loopexit.split-lp393 ] ; 2 uses
  %.pn158 = phi { ptr, i32 } [ %i.ch, %bb.q ], [ %i.pz, %bb.ay ], [ %lpad.loopexit394, %.loopexit392 ], [ %lpad.loopexit.split-lp395, %.loopexit.split-lp393 ] ; 2 uses
  %.not.i.i.i254 = icmp eq ptr %.sroa.0353.5, null
  br i1 %.not.i.i.i254, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit255, label %.thread

.thread:                                          ; preds = %.loopexit386.split.us, %.loopexit.split-lp387, %.loopexit.split.us, %.loopexit.split-lp, %bb.az
  %.pn158374 = phi { ptr, i32 } [ %.pn158, %bb.az ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit388.us, %.loopexit386.split.us ], [ %lpad.loopexit.split-lp389, %.loopexit.split-lp387 ]
  %.sroa.0353.5373 = phi ptr [ %.sroa.0353.5, %bb.az ], [ %.sroa.0353.1.lcssa597, %.loopexit.split-lp ], [ %.sroa.0353.1.lcssa597, %.loopexit.split.us ], [ %.sroa.0353.1.lcssa597, %.loopexit386.split.us ], [ %.sroa.0353.1.lcssa597, %.loopexit.split-lp387 ] ; 2 uses
  %.sroa.22.5372 = phi ptr [ %.sroa.22.5, %bb.az ], [ %.sroa.22.1.lcssa595, %.loopexit.split-lp ], [ %.sroa.22.1.lcssa595, %.loopexit.split.us ], [ %.sroa.22.1.lcssa595, %.loopexit386.split.us ], [ %.sroa.22.1.lcssa595, %.loopexit.split-lp387 ]
  %i.qa = ptrtoint ptr %.sroa.22.5372 to i64
  %i.qb = ptrtoint ptr %.sroa.0353.5373 to i64
  %i.qc = sub i64 %i.qa, %i.qb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.5373, i64 noundef %i.qc) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit255

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit255: ; preds = %.thread, %bb.az, %bb.p, %bb.o
  %.pn158.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.o ], [ %i.cg, %bb.p ], [ %.pn158, %bb.az ], [ %.pn158374, %.thread ]
  call void @_ZN6Assimp3IFC8TempMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn158.pn.pn
}

declare noundef ptr @_ZN6Assimp3IFC5Curve7ConvertERKNS0_10Schema_2x38IfcCurveERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(392)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(41) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x38IfcCurveEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.59", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #30
end_hunk_0
