inline.NumInlined: 2079
inline.NumDeleted: 821
begin_hunk_0_@_ZN6Assimp3IFC21ProcessSweptDiskSolidERKNS0_10Schema_2x317IfcSweptDiskSolidERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
  br i1 %i.ln, label %.split418, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split:  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split
  br i1 %i.lj, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split
  %brmerge622 = or i1 %i.lk, %i.lm
  br i1 %brmerge622, label %.split418, label %.split417.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split
  br i1 %i.lh, label %.split.us.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split
  %brmerge625 = or i1 %i.lk, %i.lm
  br i1 %brmerge625, label %.split418, label %.split417.us

.split418:                                        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split
  %i.lo = fmul double %.sroa.12.0458, %.sroa.19.0.fr
  %i.lp = call double @llvm.fmuladd.f64(double %i.ld, double %.sroa.8.0461, double %i.lo)
  %i.lq = fneg double %i.lp
  %i.lr = fdiv double %i.lq, %i.le
  br label %.loopexit397

.split.us.split:                                  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split
  %i.ls = fmul double %.sroa.12.0458, %.sroa.19.0.fr
  %i.lt = call double @llvm.fmuladd.f64(double %i.le, double %.sroa.0324.0464, double %i.ls)
  %i.lu = fneg double %i.lt
  %i.lv = fdiv double %i.lu, %i.ld
  br label %.loopexit397

.split417.us:                                     ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us
  %i.lw = fmul double %.sroa.0324.0464, %i.le
  %i.lx = call double @llvm.fmuladd.f64(double %i.ld, double %.sroa.8.0461, double %i.lw)
  %i.ly = fneg double %i.lx
  %i.lz = fdiv double %i.ly, %.sroa.19.0.fr
  br label %.loopexit397

.loopexit397:                                     ; preds = %.split417.us, %.split.us.split, %.split418
  %.sroa.23297.0 = phi double [ %.sroa.12.0458, %.split418 ], [ %.sroa.12.0458, %.split.us.split ], [ %i.lz, %.split417.us ] ; 3 uses
  %.sroa.14.0 = phi double [ %.sroa.8.0461, %.split418 ], [ %i.lv, %.split.us.split ], [ %.sroa.8.0461, %.split417.us ] ; 3 uses
  %.sroa.0290.0 = phi double [ %i.lr, %.split418 ], [ %.sroa.0324.0464, %.split.us.split ], [ %.sroa.0324.0464, %.split417.us ] ; 3 uses
  %.1126 = phi i32 [ 0, %.split418 ], [ 1, %.split.us.split ], [ 2, %.split417.us ]
  %i.ma = load double, ptr %i.ck, align 8
  %i.mb = fmul double %.sroa.14.0, %.sroa.14.0
  %i.mc = call double @llvm.fmuladd.f64(double %.sroa.0290.0, double %.sroa.0290.0, double %i.mb)
  %i.md = call noundef double @llvm.fmuladd.f64(double %.sroa.23297.0, double %.sroa.23297.0, double %i.mc)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.md)
  %i.me = fdiv double %i.ma, %sqrt.i              ; 3 uses
  %i.mf = fmul double %.sroa.0290.0, %i.me        ; 2 uses
  %i.mg = fmul double %.sroa.14.0, %i.me          ; 2 uses
  %i.mh = fmul double %.sroa.23297.0, %i.me       ; 2 uses
  %i.mi = call double @cos(double noundef %i.o) #30 ; 4 uses
  %i.mj = call double @sin(double noundef %i.o) #30 ; 3 uses
  %i.mk = fsub double 1.000000e+00, %i.mi         ; 3 uses
  %i.ml = fmul double %i.le, %i.mk                ; 5 uses
  %i.mm = call double @llvm.fmuladd.f64(double %i.ml, double %i.le, double %i.mi)
  %i.mn = fmul double %.sroa.19.0.fr, %i.mj       ; 2 uses
  %i.mo = fneg double %i.mn
  %i.mp = call double @llvm.fmuladd.f64(double %i.ml, double %i.ld, double %i.mo)
  %i.mq = fmul double %i.ld, %i.mj                ; 2 uses
  %i.mr = call double @llvm.fmuladd.f64(double %i.ml, double %.sroa.19.0.fr, double %i.mq)
  %i.ms = call double @llvm.fmuladd.f64(double %i.ml, double %i.ld, double %i.mn)
  %i.mt = fmul double %i.ld, %i.mk                ; 3 uses
  %i.mu = call double @llvm.fmuladd.f64(double %i.mt, double %i.ld, double %i.mi)
  %i.mv = fmul double %i.le, %i.mj                ; 2 uses
  %i.mw = fneg double %i.mv
  %i.mx = call double @llvm.fmuladd.f64(double %i.mt, double %.sroa.19.0.fr, double %i.mw)
  %i.my = fneg double %i.mq
  %i.mz = call double @llvm.fmuladd.f64(double %i.ml, double %.sroa.19.0.fr, double %i.my)
  %i.na = call double @llvm.fmuladd.f64(double %i.mt, double %.sroa.19.0.fr, double %i.mv)
  %i.nb = fmul double %.sroa.19.0.fr, %i.mk
  %i.nc = call double @llvm.fmuladd.f64(double %i.nb, double %.sroa.19.0.fr, double %i.mi)
  br i1 %.not519, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit397
  %i.nd = extractelement <2 x double> %i.ke, i64 0
  %i.ne = extractelement <2 x double> %i.ke, i64 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit, %.loopexit397
  %.sroa.22.2.lcssa = phi ptr [ %.sroa.22.1477, %.loopexit397 ], [ %.sroa.22.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0478, %.loopexit397 ], [ %.sroa.16.3, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.0353.2.lcssa = phi ptr [ %.sroa.0353.1479, %.loopexit397 ], [ %.sroa.0353.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.nf = add nuw i64 %.0128480, 1                ; 2 uses
  %exitcond545.not = icmp eq i64 %i.nf, %i.ac
  br i1 %exitcond545.not, label %.preheader391, label %bb.an, !llvm.loop !107

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit
  %.0131455 = phi i32 [ %i.ny, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ 0, %.lr.ph.preheader ]
  %.sroa.0353.2454 = phi ptr [ %.sroa.0353.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.0353.1479, %.lr.ph.preheader ] ; 8 uses
  %.sroa.16.1453 = phi ptr [ %.sroa.16.3, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.16.0478, %.lr.ph.preheader ] ; 10 uses
  %.sroa.22.2452 = phi ptr [ %.sroa.22.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.22.1477, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0290.1451 = phi double [ %i.oc, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %i.mf, %.lr.ph.preheader ] ; 4 uses
  %.sroa.14.1450 = phi double [ %i.og, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %i.mg, %.lr.ph.preheader ] ; 4 uses
  %.sroa.23297.1449 = phi double [ %i.ok, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %i.mh, %.lr.ph.preheader ] ; 4 uses
  %i.ng = fadd double %i.nd, %.sroa.0290.1451     ; 2 uses
  %i.nh = fadd double %i.ne, %.sroa.14.1450       ; 2 uses
  %i.ni = fadd double %.sroa.14351.0476, %.sroa.23297.1449 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.16.1453, %.sroa.22.2452
  br i1 %.not.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph
  store double %i.ng, ptr %.sroa.16.1453, align 8
  %.sroa.6281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.16.1453, i64 8
  store double %i.nh, ptr %.sroa.6281.0..sroa_idx, align 8
  %.sroa.7284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.16.1453, i64 16
  store double %i.ni, ptr %.sroa.7284.0..sroa_idx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

bb.ar:                                            ; preds = %.lr.ph
  %i.nj = ptrtoint ptr %.sroa.16.1453 to i64
  %i.nk = ptrtoint ptr %.sroa.0353.2454 to i64
  %i.nl = sub i64 %i.nj, %i.nk                    ; 4 uses
  %i.nm = icmp eq i64 %i.nl, 9223372036854775800
  br i1 %i.nm, label %bb.as, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc183 unwind label %.loopexit.split-lp393

.noexc183:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ar
  %i.nn = sdiv exact i64 %i.nl, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.nn, i64 1)
  %i.no = add nsw i64 %.sroa.speculated.i.i.i.i, %i.nn ; 2 uses
  %i.np = icmp ult i64 %i.no, %i.nn
  %i.nq = call i64 @llvm.umin.i64(i64 %i.no, i64 384307168202282325)
  %i.nr = select i1 %i.np, i64 384307168202282325, i64 %i.nq ; 3 uses
  %.not.i.i.i.i182 = icmp ne i64 %i.nr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i182)
  %i.ns = mul nuw nsw i64 %i.nr, 24
  %i.nt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ns) #28
          to label %.noexc184 unwind label %.loopexit392 ; 5 uses

.noexc184:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nl ; 3 uses
  store double %i.ng, ptr %i.nu, align 8
  %.sroa.6281.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store double %i.nh, ptr %.sroa.6281.0..sroa_idx282, align 8
  %.sroa.7284.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store double %i.ni, ptr %.sroa.7284.0..sroa_idx285, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0353.2454, %.sroa.16.1453
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc184, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.nw, %.lr.ph.i.i.i.i.i.i ], [ %i.nt, %.noexc184 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.nv, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0353.2454, %.noexc184 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !108
  %i.nv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.nv, %.sroa.16.1453
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc184
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.nt, %.noexc184 ], [ %i.nw, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0353.2454, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.2454, i64 noundef %i.nl) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.at, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.nx = getelementptr inbounds nuw [24 x i8], ptr %i.nt, i64 %i.nr
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.aq
  %.sroa.22.7 = phi ptr [ %i.nx, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.22.2452, %bb.aq ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.16.1453, %bb.aq ]
  %.sroa.0353.7 = phi ptr [ %i.nt, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0353.2454, %bb.aq ] ; 2 uses
  %.sroa.16.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24 ; 2 uses
  %i.ny = add nuw i32 %.0131455, 1                ; 2 uses
  %i.nz = fmul double %i.mp, %.sroa.14.1450
  %i.oa = call double @llvm.fmuladd.f64(double %i.mm, double %.sroa.0290.1451, double %i.nz)
  %i.ob = call double @llvm.fmuladd.f64(double %i.mr, double %.sroa.23297.1449, double %i.oa)
  %i.oc = fadd double %i.ob, 0.000000e+00
  %i.od = fmul double %i.mu, %.sroa.14.1450
  %i.oe = call double @llvm.fmuladd.f64(double %i.ms, double %.sroa.0290.1451, double %i.od)
  %i.of = call double @llvm.fmuladd.f64(double %i.mx, double %.sroa.23297.1449, double %i.oe)
  %i.og = fadd double %i.of, 0.000000e+00
  %i.oh = fmul double %i.na, %.sroa.14.1450
  %i.oi = call double @llvm.fmuladd.f64(double %i.mz, double %.sroa.0290.1451, double %i.oh)
  %i.oj = call double @llvm.fmuladd.f64(double %i.nc, double %.sroa.23297.1449, double %i.oi)
  %i.ok = fadd double %i.oj, 0.000000e+00
  %exitcond.not = icmp eq i32 %i.ny, %i.m
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
  %i.ol = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc185 unwind label %bb.ay

.noexc185:                                        ; preds = %._crit_edge497
  br i1 %i.ol, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, label %bb.au

bb.au:                                            ; preds = %.noexc185
  %i.om = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc186 unwind label %bb.ay

.noexc186:                                        ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.on = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc187 unwind label %bb.ay

.noexc187:                                        ; preds = %.noexc186
  store ptr %i.on, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugIJPKcRA80_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.om, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(80) @.str.6)
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
  %i.oo = ptrtoint ptr %.sroa.22.3 to i64
  %i.op = ptrtoint ptr %.sroa.0353.3 to i64
  %i.oq = sub i64 %i.oo, %i.op
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.3, i64 noundef %i.oq) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, %bb.av
  %i.or = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.os = load ptr, ptr %i.or, align 8            ; 3 uses
  %.not.i.i.i.i253 = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i.i253, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %i.ot = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ou = load ptr, ptr %i.ot, align 8
  %i.ov = ptrtoint ptr %i.ou to i64
  %i.ow = ptrtoint ptr %i.os to i64
  %i.ox = sub i64 %i.ov, %i.ow
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef %i.ox) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.aw, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %i.oy = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i1.i, label %_ZN6Assimp3IFC8TempMeshD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.oz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = ptrtoint ptr %i.oy to i64
  %i.pd = sub i64 %i.pb, %i.pc
  call void @_ZdlPvm(ptr noundef nonnull %i.oy, i64 noundef %i.pd) #29
  br label %_ZN6Assimp3IFC8TempMeshD2Ev.exit

_ZN6Assimp3IFC8TempMeshD2Ev.exit:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA54_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA54_KcEEEvDpOT_.exit: ; preds = %bb.c, %bb.b, %_ZN6Assimp3IFC8TempMeshD2Ev.exit
  ret void

bb.ay:                                            ; preds = %.noexc187, %.noexc186, %bb.au, %._crit_edge497
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit392, %.loopexit.split-lp393, %bb.ay, %bb.q
  %.sroa.22.5 = phi ptr [ %.sroa.22.0, %bb.q ], [ %.sroa.22.1.lcssa606, %bb.ay ], [ %.sroa.16.1453, %.loopexit392 ], [ %.sroa.16.1453, %.loopexit.split-lp393 ]
  %.sroa.0353.5 = phi ptr [ %.sroa.0353.0, %bb.q ], [ %.sroa.0353.1.lcssa608, %bb.ay ], [ %.sroa.0353.2454, %.loopexit392 ], [ %.sroa.0353.2454, %.loopexit.split-lp393 ] ; 2 uses
  %.pn158 = phi { ptr, i32 } [ %i.ch, %bb.q ], [ %i.pe, %bb.ay ], [ %lpad.loopexit394, %.loopexit392 ], [ %lpad.loopexit.split-lp395, %.loopexit.split-lp393 ] ; 2 uses
  %.not.i.i.i254 = icmp eq ptr %.sroa.0353.5, null
  br i1 %.not.i.i.i254, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit255, label %.thread

.thread:                                          ; preds = %.loopexit386.split.us, %.loopexit.split-lp387, %.loopexit.split.us, %.loopexit.split-lp, %bb.az
  %.pn158374 = phi { ptr, i32 } [ %.pn158, %bb.az ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit388.us, %.loopexit386.split.us ], [ %lpad.loopexit.split-lp389, %.loopexit.split-lp387 ]
  %.sroa.0353.5373 = phi ptr [ %.sroa.0353.5, %bb.az ], [ %.sroa.0353.1.lcssa607, %.loopexit.split-lp ], [ %.sroa.0353.1.lcssa607, %.loopexit.split.us ], [ %.sroa.0353.1.lcssa607, %.loopexit386.split.us ], [ %.sroa.0353.1.lcssa607, %.loopexit.split-lp387 ] ; 2 uses
  %.sroa.22.5372 = phi ptr [ %.sroa.22.5, %bb.az ], [ %.sroa.22.1.lcssa605, %.loopexit.split-lp ], [ %.sroa.22.1.lcssa605, %.loopexit.split.us ], [ %.sroa.22.1.lcssa605, %.loopexit386.split.us ], [ %.sroa.22.1.lcssa605, %.loopexit.split-lp387 ]
  %i.pf = ptrtoint ptr %.sroa.22.5372 to i64
  %i.pg = ptrtoint ptr %.sroa.0353.5373 to i64
  %i.ph = sub i64 %i.pf, %i.pg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.5373, i64 noundef %i.ph) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit255

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit255: ; preds = %.thread, %bb.az, %bb.p, %bb.o
  %.pn158.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.o ], [ %i.cg, %bb.p ], [ %.pn158, %bb.az ], [ %.pn158374, %.thread ]
  call void @_ZN6Assimp3IFC8TempMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
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
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %bb.h, %bb.g
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x38IfcCurveE, i64 -1) #30 ; 2 uses
end_hunk_0
