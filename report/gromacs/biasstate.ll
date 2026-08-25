Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/biasstate?download=true
inline.NumInlined: 2109
inline.NumDeleted: 970
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN3gmx9BiasState40updateFreeEnergyAndAddSamplesToHistogramENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNS_10BiasParamsERKNS_15CorrelationGridEdlP8_IO_FILEPSt6vectorIiSaIiEE:bb.a
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qd = load i8, ptr %i.qc, align 8, !tbaa !130, !range !128, !noundef !129
  %i.qe = trunc nuw i8 %i.qd to i1
  %i.qf = xor i1 %i.qe, true
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge
  %i.qg = phi i1 [ false, %._crit_edge ], [ %i.qf, %bb.aj ]
  %i.qh = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !117
  %i.qj = icmp ne i32 %i.qi, 0
  %or.cond = or i1 %i.qg, %i.qj
  br i1 %or.cond, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.qk = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !326
  %i.qm = srem i64 %7, %i.ql
  %i.qn = icmp eq i64 %i.qm, 0
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.qo = phi i1 [ false, %bb.ak ], [ %i.qn, %bb.al ] ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.qq = load i8, ptr %i.qp, align 8, !tbaa !130, !range !128, !noundef !129
  %i.qr = trunc nuw i8 %i.qq to i1
  %i.qs = icmp sgt i64 %7, 0
  %or.cond154 = and i1 %i.qs, %i.qr
  br i1 %or.cond154, label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit, label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread

_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit: ; preds = %bb.am
  %i.qt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !327
  %i.qv = srem i64 %7, %i.qu
  %i.qw = icmp eq i64 %i.qv, 0
  br i1 %i.qw, label %bb.an, label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread

bb.an:                                            ; preds = %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit
  %i.qx = call noundef zeroext i1 @_ZNK3gmx9BiasState23isSamplingRegionCoveredERKNS_10BiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(137) %4, ptr %1, ptr poison, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread

_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread: ; preds = %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit, %bb.an, %bb.am
  %.067 = phi i1 [ false, %bb.am ], [ false, %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit ], [ %i.qx, %bb.an ] ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.qz = load ptr, ptr %i.e, align 8, !tbaa !13  ; 3 uses
  %i.ra = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = ptrtoint ptr %i.qz to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.rd
  %i.rf = load ptr, ptr %i.hv, align 8, !tbaa !110 ; 3 uses
  store ptr %i.rf, ptr %14, align 8, !tbaa !197
  %i.rg = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.rh = load ptr, ptr %i.hx, align 8, !tbaa !107
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = ptrtoint ptr %i.rf to i64
  %i.rk = sub i64 %i.ri, %i.rj
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rk
  store ptr %i.rl, ptr %i.rg, align 8, !tbaa !197
  %i.rm = call noundef double @_ZN3gmx13HistogramSize16newHistogramSizeERKNS_10BiasParamsEdbNS_8ArrayRefIKNS_10PointStateEEENS4_IdEEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(65) %i.qy, ptr noundef nonnull align 8 dereferenceable(137) %4, double noundef %6, i1 noundef zeroext %.067, ptr %i.qz, ptr %i.re, ptr noundef nonnull byval(%"class.gmx::ArrayRef.72") align 8 %14, ptr noundef %8) ; 2 uses
  %or.cond3 = or i1 %i.qo, %.067
  br i1 %or.cond3, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread
  %i.rn = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.ro = load i8, ptr %i.rn, align 8, !tbaa !328, !range !128, !noundef !129
  %i.rp = trunc nuw i8 %i.ro to i1
  %i.rq = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.rr = load double, ptr %i.rq, align 8
  %i.rs = fcmp une double %i.rr, 1.000000e+00
  %.not157 = select i1 %i.rp, i1 true, i1 %i.rs
  %or.cond5 = or i1 %.not155.lcssa, %.not157
  br i1 %or.cond5, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao, %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread
  %i.rt = load ptr, ptr %9, align 8, !tbaa !178   ; 3 uses
  %i.ru = load ptr, ptr %i.ar, align 8, !tbaa !176 ; 2 uses
  %.not.i.i101 = icmp eq ptr %i.ru, %i.rt
  br i1 %.not.i.i101, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ap
  store ptr %i.rt, ptr %i.ar, align 8, !tbaa !176
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.ap, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.rv = phi ptr [ %i.ru, %bb.ap ], [ %i.rt, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.rw = load ptr, ptr %i.g, align 8, !tbaa !9   ; 2 uses
  %i.rx = load ptr, ptr %i.e, align 8, !tbaa !13  ; 2 uses
  %.not182 = icmp eq ptr %i.rw, %i.rx
  br i1 %.not182, label %.loopexit, label %.lr.ph172

.lr.ph172:                                        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ry = phi ptr [ %i.tb, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.rx, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 3 uses
  %i.rz = phi ptr [ %i.tc, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.rw, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 2 uses
  %i.sa = phi ptr [ %i.td, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.rv, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 5 uses
  %.066171 = phi i64 [ %i.te, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 0, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 3 uses
  %i.sb = getelementptr inbounds nuw [96 x i8], ptr %i.ry, i64 %.066171
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !14
  %i.se = fcmp ogt double %i.sd, 0.000000e+00
  br i1 %i.se, label %bb.aq, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.aq:                                            ; preds = %.lr.ph172
  %i.sf = trunc i64 %.066171 to i32               ; 2 uses
  %i.sg = load ptr, ptr %i.at, align 8, !tbaa !276
  %.not.i.i102 = icmp eq ptr %i.sa, %i.sg
  br i1 %.not.i.i102, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.sf, ptr %i.sa, align 4, !tbaa !54
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 4 ; 2 uses
  store ptr %i.sh, ptr %i.ar, align 8, !tbaa !176
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.as:                                            ; preds = %bb.aq
  %i.si = load ptr, ptr %9, align 8, !tbaa !178   ; 4 uses
  %i.sj = ptrtoint ptr %i.sa to i64
  %i.sk = ptrtoint ptr %i.si to i64               ; 2 uses
  %i.sl = sub i64 %i.sj, %i.sk                    ; 5 uses
  %i.sm = icmp eq i64 %i.sl, 9223372036854775804
  br i1 %i.sm, label %bb.at, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i103

bb.at:                                            ; preds = %bb.as
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #30
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i103: ; preds = %bb.as
  %i.sn = ashr exact i64 %i.sl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i104 = call i64 @llvm.umax.i64(i64 %i.sn, i64 1)
  %i.so = add nsw i64 %.sroa.speculated.i.i.i.i104, %i.sn ; 2 uses
  %i.sp = icmp ult i64 %i.so, %i.sn
  %i.sq = call i64 @llvm.umin.i64(i64 %i.so, i64 2305843009213693951)
  %i.sr = select i1 %i.sp, i64 2305843009213693951, i64 %i.sq ; 3 uses
  %.not.i.i.i.i105 = icmp ne i64 %i.sr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i105)
  %i.ss = shl nuw nsw i64 %i.sr, 2
  %i.st = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ss) #31 ; 4 uses
  %i.su = getelementptr inbounds i8, ptr %i.st, i64 %i.sl ; 2 uses
  store i32 %i.sf, ptr %i.su, align 4, !tbaa !54
  %i.sv = icmp sgt i64 %i.sl, 0
  br i1 %i.sv, label %bb.au, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i106

bb.au:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i103
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.st, ptr align 4 %i.si, i64 %i.sl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i106

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i106: ; preds = %bb.au, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i103
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 4 ; 2 uses
  %.not.i17.i.i.i107 = icmp eq ptr %i.si, null
  br i1 %.not.i17.i.i.i107, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i106
  %i.sx = load ptr, ptr %i.at, align 8, !tbaa !276
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = sub i64 %i.sy, %i.sk
  call void @_ZdlPvm(ptr noundef nonnull %i.si, i64 noundef %i.sz) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.av, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i106
  store ptr %i.st, ptr %9, align 8, !tbaa !178
  store ptr %i.sw, ptr %i.ar, align 8, !tbaa !176
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.st, i64 %i.sr
  store ptr %i.ta, ptr %i.at, align 8, !tbaa !276
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !9
  %.pre184 = load ptr, ptr %i.e, align 8, !tbaa !13
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ar, %.lr.ph172
  %i.tb = phi ptr [ %.pre184, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ry, %bb.ar ], [ %i.ry, %.lr.ph172 ] ; 2 uses
  %i.tc = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.rz, %bb.ar ], [ %i.rz, %.lr.ph172 ] ; 2 uses
  %i.td = phi ptr [ %i.sw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.sh, %bb.ar ], [ %i.sa, %.lr.ph172 ]
  %i.te = add nuw i64 %.066171, 1                 ; 2 uses
  %i.tf = ptrtoint ptr %i.tc to i64
  %i.tg = ptrtoint ptr %i.tb to i64
  %i.th = sub i64 %i.tf, %i.tg
  %i.ti = sdiv exact i64 %i.th, 96
  %i.tj = icmp ult i64 %i.te, %i.ti
  br i1 %i.tj, label %.lr.ph172, label %.loopexit, !llvm.loop !329

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.ao
  %i.tk = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.tl = load i8, ptr %i.tk, align 8, !tbaa !328, !range !128, !noundef !129
  %i.tm = trunc nuw i8 %i.tl to i1
  %i.tn = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.to = load double, ptr %i.tn, align 8         ; 2 uses
  %i.tp = fcmp une double %i.to, 1.000000e+00
  %.not158 = select i1 %i.tm, i1 true, i1 %i.tp
  br i1 %.not158, label %_ZNK3gmx9BiasState37getSkippedUpdateHistogramScaleFactorsERKNS_10BiasParamsEPdS4_.exit, label %bb.aw

bb.aw:                                            ; preds = %.loopexit
  %i.tq = load i8, ptr %i.qp, align 8, !tbaa !130, !range !128, !noundef !129
  %i.tr = trunc nuw i8 %i.tq to i1
  br i1 %i.tr, label %bb.ax, label %_ZNK3gmx9BiasState37getSkippedUpdateHistogramScaleFactorsERKNS_10BiasParamsEPdS4_.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 96
  %15 = load double, ptr %i.ts, align 8, !tbaa !221
  %i.tt = getelementptr inbounds nuw i8, ptr %4, i64 80
  %16 = load double, ptr %i.tt, align 8, !tbaa !222
  %17 = insertelement <2 x double> poison, double %15, i64 0 ; 2 uses
  %18 = insertelement <2 x double> poison, double %16, i64 0
  %i.tu = fadd <2 x double> %17, %18
  %i.tv = fdiv <2 x double> %17, %i.tu            ; 2 uses
  %i.tw = extractelement <2 x double> %i.tv, i64 0
  %i.tx = call double @log(double noundef %i.tw) #33
  %i.ty = extractelement <2 x double> %i.tv, i64 0
  br label %_ZNK3gmx9BiasState37getSkippedUpdateHistogramScaleFactorsERKNS_10BiasParamsEPdS4_.exit

_ZNK3gmx9BiasState37getSkippedUpdateHistogramScaleFactorsERKNS_10BiasParamsEPdS4_.exit: ; preds = %bb.ax, %bb.aw, %.loopexit
  %.0153 = phi double [ 0.000000e+00, %.loopexit ], [ %i.ty, %bb.ax ], [ 1.000000e+00, %bb.aw ]
  %.0152 = phi double [ 0.000000e+00, %.loopexit ], [ %i.tx, %bb.ax ], [ 0.000000e+00, %bb.aw ]
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !221 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !222 ; 3 uses
  %i.ud = fadd double %i.ua, %i.uc
  %i.ue = call double @llvm.fmuladd.f64(double %i.uc, double %i.to, double %i.ua)
  %i.uf = insertelement <2 x double> poison, double %i.rm, i64 0
  %i.ug = shufflevector <2 x double> %i.uf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uh = insertelement <2 x double> poison, double %i.ue, i64 0
  %i.ui = insertelement <2 x double> %i.uh, double %i.ud, i64 1
  %i.uj = fdiv <2 x double> %i.ug, %i.ui          ; 3 uses
  %i.uk = extractelement <2 x double> %i.uj, i64 1
  %i.ul = call double @log(double noundef %i.uk) #33
  %i.um = load ptr, ptr %9, align 8, !tbaa !52    ; 2 uses
  %i.un = load ptr, ptr %i.ar, align 8, !tbaa !52 ; 2 uses
  %.not173 = icmp eq ptr %i.um, %i.un
  br i1 %.not173, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %_ZNK3gmx9BiasState37getSkippedUpdateHistogramScaleFactorsERKNS_10BiasParamsEPdS4_.exit
  %i.uo = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.up = extractelement <2 x double> %i.uj, i64 0
  br label %bb.ay

._crit_edge176:                                   ; preds = %_ZN3gmx10PointState21updateWithNewSamplingERKNS_10BiasParamsEldd.exit, %_ZNK3gmx9BiasState37getSkippedUpdateHistogramScaleFactorsERKNS_10BiasParamsEPdS4_.exit
  %i.uq = extractelement <2 x double> %i.uj, i64 0
  call void @_ZN3gmx13HistogramSize16setHistogramSizeEdd(ptr noundef nonnull align 8 dereferenceable(65) %i.qy, double noundef %i.rm, double noundef %i.uq)
  br i1 %.not155.lcssa, label %bb.bk, label %_ZN3gmxL28normalizeFreeEnergyAndPmfSumEPSt6vectorINS_10PointStateESaIS1_EE.exit

bb.ay:                                            ; preds = %.lr.ph175, %_ZN3gmx10PointState21updateWithNewSamplingERKNS_10BiasParamsEldd.exit
  %i.ur = phi double [ %i.uc, %.lr.ph175 ], [ %i.wq, %_ZN3gmx10PointState21updateWithNewSamplingERKNS_10BiasParamsEldd.exit ]
  %.sroa.0123.0174 = phi ptr [ %i.um, %.lr.ph175 ], [ %i.xd, %_ZN3gmx10PointState21updateWithNewSamplingERKNS_10BiasParamsEldd.exit ] ; 2 uses
  %i.us = load i32, ptr %.sroa.0123.0174, align 4, !tbaa !54
  %i.ut = sext i32 %i.us to i64
  %i.uu = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.uv = getelementptr inbounds nuw [96 x i8], ptr %i.uu, i64 %i.ut ; 12 uses
  %i.uw = load i8, ptr %i.tk, align 8, !tbaa !328, !range !128, !noundef !129
  %i.ux = trunc nuw i8 %i.uw to i1
  %i.uy = load double, ptr %i.tn, align 8
  %i.uz = fcmp une double %i.uy, 1.000000e+00
  %.not161 = select i1 %i.ux, i1 true, i1 %i.uz
  %.pre187 = load i64, ptr %i.qy, align 8, !tbaa !224
  %.pre188 = shl i64 %.pre187, 32
  %.pre189 = ashr exact i64 %.pre188, 32          ; 4 uses
  br i1 %.not161, label %_ZN3gmx10PointState31performPreviouslySkippedUpdatesERKNS_10BiasParamsEldd.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.va = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %i.vb = load double, ptr %i.va, align 8, !tbaa !14 ; 3 uses
  %i.vc = fcmp ogt double %i.vb, 0.000000e+00
  br i1 %i.vc, label %bb.ba, label %_ZN3gmx10PointState31performPreviouslySkippedUpdatesERKNS_10BiasParamsEldd.exit

bb.ba:                                            ; preds = %bb.az
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uv, i64 56 ; 2 uses
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !225 ; 2 uses
  %i.vf = sub i64 %.pre189, %i.ve                 ; 2 uses
  %.not.i110 = icmp eq i64 %.pre189, %i.ve
  br i1 %.not.i110, label %_ZN3gmx10PointState31performPreviouslySkippedUpdatesERKNS_10BiasParamsEldd.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ba
  %i.vg = icmp sgt i64 %i.vf, 0
  br i1 %i.vg, label %.lr.ph.i112, label %._crit_edge.i111

.lr.ph.i112:                                      ; preds = %.preheader.i
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uv, i64 48 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uv, i64 64 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uv, i64 8 ; 2 uses
  %.pre185 = load double, ptr %i.vh, align 8, !tbaa !126
  %.pre186 = load double, ptr %i.vj, align 8, !tbaa !122
  br label %bb.bb

._crit_edge.i111:                                 ; preds = %_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd.exit, %.preheader.i
  store i64 %.pre189, ptr %i.vd, align 8, !tbaa !225
  br label %_ZN3gmx10PointState31performPreviouslySkippedUpdatesERKNS_10BiasParamsEldd.exit

bb.bb:                                            ; preds = %_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd.exit, %.lr.ph.i112
  %i.vk = phi double [ %.pre186, %.lr.ph.i112 ], [ %i.vq, %_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd.exit ]
  %i.vl = phi double [ %.pre185, %.lr.ph.i112 ], [ %i.wd, %_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd.exit ] ; 3 uses
  %.013.i = phi i64 [ 0, %.lr.ph.i112 ], [ %i.wg, %_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.vm = fadd double %i.vl, 0.000000e+00
  %i.vn = call double @llvm.fmuladd.f64(double %i.ur, double %i.vb, double %i.vl)
  %i.vo = fdiv double %i.vm, %i.vn
  %i.vp = call double @log(double noundef %i.vo) #33
  %i.vq = fsub double %i.vk, %i.vp                ; 3 uses
  store double %i.vq, ptr %i.vj, align 8, !tbaa !122
  %i.vr = call noundef double @llvm.fabs.f64(double %i.vq)
  %i.vs = fcmp ogt double %i.vr, 7.000000e+02
  br i1 %i.vs, label %bb.bc, label %_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd.exit

bb.bc:                                            ; preds = %bb.bb
  %i.vt = call ptr @__cxa_allocate_exception(i64 24) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull @.str.26)
          to label %bb.bd unwind label %.thread.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %bb.be unwind label %.thread18.i

bb.be:                                            ; preds = %bb.bd
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %10, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %12, align 8, !tbaa !65
  %i.vu = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd, ptr %i.vu, align 8, !tbaa !67
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @.str.12, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !67
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 361, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !54
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.vt, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr %i.vt, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.bi unwind label %bb.bg

.thread.i:                                        ; preds = %bb.bc
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

.thread18.i:                                      ; preds = %bb.bd
  %i.vw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #33
  br label %.sink.split.i

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0.i = phi i1 [ false, %bb.bf ], [ true, %bb.be ]
  %i.vx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #33
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br i1 %.0.i, label %bb.bh, label %common.resume

.sink.split.i:                                    ; preds = %.thread18.i, %.thread.i
  %.pn.pn17.ph.i = phi { ptr, i32 } [ %i.vw, %.thread18.i ], [ %i.vv, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split.i, %bb.bg
  %.pn.pn17.i = phi { ptr, i32 } [ %i.vx, %bb.bg ], [ %.pn.pn17.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.vt) #33
  br label %common.resume

bb.bi:                                            ; preds = %bb.bf
  unreachable

_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd.exit: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.vy = load i8, ptr %i.uo, align 8, !tbaa !226, !range !128, !noundef !129
  %i.vz = trunc nuw i8 %i.vy to i1
  %i.wa = load double, ptr %i.ub, align 8
  %i.wb = fmul double %i.vb, %i.wa
  %.sink.i.i.i = select i1 %i.vz, double %i.wb, double 0.000000e+00
  %i.wc = fadd double %.sink.i.i.i, %i.vl
  %i.wd = fmul double %.0153, %i.wc               ; 2 uses
  store double %i.wd, ptr %i.vh, align 8, !tbaa !126
  %i.we = load double, ptr %i.vi, align 8, !tbaa !21
  %i.wf = fadd double %.0152, %i.we
  store double %i.wf, ptr %i.vi, align 8, !tbaa !21
  %i.wg = add nuw nsw i64 %.013.i, 1              ; 2 uses
  %exitcond.not.i113 = icmp eq i64 %i.wg, %i.vf
  br i1 %exitcond.not.i113, label %._crit_edge.i111, label %bb.bb, !llvm.loop !227

_ZN3gmx10PointState31performPreviouslySkippedUpdatesERKNS_10BiasParamsEldd.exit: ; preds = %bb.ay, %._crit_edge.i111, %bb.ba, %bb.az
  %i.wh = getelementptr inbounds nuw i8, ptr %i.uv, i64 56 ; 3 uses
  %i.wi = load i64, ptr %i.wh, align 8, !tbaa !225
  %i.wj = icmp eq i64 %i.wi, %.pre189
  br i1 %i.wj, label %_ZN3gmx10PointState21updateWithNewSamplingERKNS_10BiasParamsEldd.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZN3gmx10PointState31performPreviouslySkippedUpdatesERKNS_10BiasParamsEldd.exit
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx10PointState21updateWithNewSamplingERKNS_10BiasParamsElddENKUlvE_clEv, ptr noundef nonnull @.str.12, i32 noundef 316) #30
  unreachable

_ZN3gmx10PointState21updateWithNewSamplingERKNS_10BiasParamsEldd.exit: ; preds = %_ZN3gmx10PointState31performPreviouslySkippedUpdatesERKNS_10BiasParamsEldd.exit
  %i.wk = getelementptr inbounds nuw i8, ptr %i.uv, i64 32 ; 2 uses
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !318 ; 2 uses
  call void @_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd(ptr noundef nonnull align 8 dereferenceable(96) %i.uv, ptr noundef nonnull align 8 dereferenceable(137) %4, double noundef %i.wl)
  %i.wm = load i8, ptr %i.uo, align 8, !tbaa !226, !range !128, !noundef !129
  %i.wn = trunc nuw i8 %i.wm to i1
  %i.wo = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %i.wp = load double, ptr %i.wo, align 8
  %i.wq = load double, ptr %i.ub, align 8         ; 2 uses
  %i.wr = fmul double %i.wp, %i.wq
  %.sink.i.i.i114 = select i1 %i.wn, double %i.wr, double %i.wl
  %i.ws = load double, ptr %i.tn, align 8, !tbaa !223
  %i.wt = getelementptr inbounds nuw i8, ptr %i.uv, i64 48 ; 2 uses
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !126
end_hunk_0
