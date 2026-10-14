Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/biasstate?download=true
inline.NumInlined: 2109
inline.NumDeleted: 970
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN3gmx9BiasState40updateFreeEnergyAndAddSamplesToHistogramENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNS_10BiasParamsERKNS_15CorrelationGridEdlP8_IO_FILEPSt6vectorIiSaIiEE:bb.a
  %i.pe = trunc nuw i8 %i.pd to i1
  br i1 %i.pe, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.pg = load i8, ptr %i.pf, align 8, !tbaa !98, !range !95, !noundef !96
  %i.ph = trunc nuw i8 %i.pg to i1
  %i.pi = xor i1 %i.ph, true
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge
  %i.pj = phi i1 [ false, %._crit_edge ], [ %i.pi, %bb.aj ]
  %i.pk = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !88
  %i.pm = icmp ne i32 %i.pl, 0
  %or.cond = or i1 %i.pj, %i.pm
  br i1 %or.cond, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.pn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !334
  %i.pp = srem i64 %7, %i.po
  %i.pq = icmp eq i64 %i.pp, 0
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.pr = phi i1 [ false, %bb.ak ], [ %i.pq, %bb.al ] ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.pt = load i8, ptr %i.ps, align 8, !tbaa !98, !range !95, !noundef !96
  %i.pu = trunc nuw i8 %i.pt to i1
  %i.pv = icmp sgt i64 %7, 0
  %or.cond155 = and i1 %i.pv, %i.pu
  br i1 %or.cond155, label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit, label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread

_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit: ; preds = %bb.am
  %i.pw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !335
  %i.py = srem i64 %7, %i.px
  %i.pz = icmp eq i64 %i.py, 0
  br i1 %i.pz, label %bb.an, label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread

bb.an:                                            ; preds = %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit
  %i.qa = call noundef zeroext i1 @_ZNK3gmx9BiasState23isSamplingRegionCoveredERKNS_10BiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(137) %4, ptr %1, ptr poison, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread

_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread: ; preds = %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit, %bb.an, %bb.am
  %.067 = phi i1 [ false, %bb.am ], [ false, %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit ], [ %i.qa, %bb.an ] ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.qc = load ptr, ptr %i.e, align 8, !tbaa !17  ; 3 uses
  %i.qd = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.qe = ptrtoint ptr %i.qd to i64
  %i.qf = ptrtoint ptr %i.qc to i64
  %i.qg = sub i64 %i.qe, %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qc, i64 %i.qg
  %i.qi = load ptr, ptr %i.gy, align 8, !tbaa !81 ; 3 uses
  store ptr %i.qi, ptr %14, align 8, !tbaa !134
  %i.qj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.qk = load ptr, ptr %i.ha, align 8, !tbaa !80
  %i.ql = ptrtoint ptr %i.qk to i64
  %i.qm = ptrtoint ptr %i.qi to i64
  %i.qn = sub i64 %i.ql, %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qn
  store ptr %i.qo, ptr %i.qj, align 8, !tbaa !134
  %i.qp = call noundef double @_ZN3gmx13HistogramSize16newHistogramSizeERKNS_10BiasParamsEdbNS_8ArrayRefIKNS_10PointStateEEENS4_IdEEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(65) %i.qb, ptr noundef nonnull align 8 dereferenceable(137) %4, double noundef %6, i1 noundef zeroext %.067, ptr %i.qc, ptr %i.qh, ptr noundef nonnull byval(%"class.gmx::ArrayRef.72") align 8 %14, ptr noundef %8) ; 2 uses
  %or.cond3 = or i1 %i.pr, %.067
  br i1 %or.cond3, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread
  %i.qq = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.qr = load i8, ptr %i.qq, align 8, !tbaa !336, !range !95, !noundef !96
  %i.qs = trunc nuw i8 %i.qr to i1
  %i.qt = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.qu = load double, ptr %i.qt, align 8
  %i.qv = fcmp une double %i.qu, 1.000000e+00
  %.not158 = select i1 %i.qs, i1 true, i1 %i.qv
  %or.cond5 = or i1 %.not156.lcssa, %.not158
  br i1 %or.cond5, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao, %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread
  %i.qw = load ptr, ptr %9, align 8, !tbaa !123   ; 3 uses
  %i.qx = load ptr, ptr %i.ac, align 8, !tbaa !122 ; 2 uses
  %.not.i.i101 = icmp eq ptr %i.qx, %i.qw
  br i1 %.not.i.i101, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ap
  store ptr %i.qw, ptr %i.ac, align 8, !tbaa !122
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.ap, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.qy = phi ptr [ %i.qx, %bb.ap ], [ %i.qw, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.qz = load ptr, ptr %i.g, align 8, !tbaa !16  ; 2 uses
  %i.ra = load ptr, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %.not181 = icmp eq ptr %i.qz, %i.ra
  br i1 %.not181, label %.loopexit, label %.lr.ph171

.lr.ph171:                                        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.rb = phi ptr [ %i.se, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.ra, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 3 uses
  %i.rc = phi ptr [ %i.sf, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.qz, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 2 uses
  %i.rd = phi ptr [ %i.sg, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.qy, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 5 uses
  %.066170 = phi i64 [ %i.sh, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 0, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 3 uses
  %i.re = getelementptr inbounds nuw [96 x i8], ptr %i.rb, i64 %.066170
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !21
  %i.rh = fcmp ogt double %i.rg, 0.000000e+00
  br i1 %i.rh, label %bb.aq, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.aq:                                            ; preds = %.lr.ph171
  %i.ri = trunc i64 %.066170 to i32               ; 2 uses
  %i.rj = load ptr, ptr %i.ae, align 8, !tbaa !157
  %.not.i.i102 = icmp eq ptr %i.rd, %i.rj
  br i1 %.not.i.i102, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.ri, ptr %i.rd, align 4, !tbaa !39
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rd, i64 4 ; 2 uses
  store ptr %i.rk, ptr %i.ac, align 8, !tbaa !122
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.as:                                            ; preds = %bb.aq
  %i.rl = load ptr, ptr %9, align 8, !tbaa !123   ; 4 uses
  %i.rm = ptrtoint ptr %i.rd to i64
  %i.rn = ptrtoint ptr %i.rl to i64               ; 2 uses
  %i.ro = sub i64 %i.rm, %i.rn                    ; 5 uses
  %i.rp = icmp eq i64 %i.ro, 9223372036854775804
  br i1 %i.rp, label %bb.at, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i103

bb.at:                                            ; preds = %bb.as
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #29
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i103: ; preds = %bb.as
  %i.rq = ashr exact i64 %i.ro, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i104 = call i64 @llvm.umax.i64(i64 %i.rq, i64 1)
  %i.rr = add nsw i64 %.sroa.speculated.i.i.i.i104, %i.rq ; 2 uses
  %i.rs = icmp ult i64 %i.rr, %i.rq
  %i.rt = call i64 @llvm.umin.i64(i64 %i.rr, i64 2305843009213693951)
  %i.ru = select i1 %i.rs, i64 2305843009213693951, i64 %i.rt ; 3 uses
  %.not.i.i.i.i105 = icmp ne i64 %i.ru, 0
  call void @llvm.assume(i1 %.not.i.i.i.i105)
  %i.rv = shl nuw nsw i64 %i.ru, 2
  %i.rw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rv) #30 ; 4 uses
  %i.rx = getelementptr inbounds i8, ptr %i.rw, i64 %i.ro ; 2 uses
  store i32 %i.ri, ptr %i.rx, align 4, !tbaa !39
  %i.ry = icmp sgt i64 %i.ro, 0
  br i1 %i.ry, label %bb.au, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i106

bb.au:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i103
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rw, ptr align 4 %i.rl, i64 %i.ro, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i106

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i106: ; preds = %bb.au, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i103
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 4 ; 2 uses
  %.not.i17.i.i.i107 = icmp eq ptr %i.rl, null
  br i1 %.not.i17.i.i.i107, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i106
  %i.sa = load ptr, ptr %i.ae, align 8, !tbaa !157
  %i.sb = ptrtoint ptr %i.sa to i64
  %i.sc = sub i64 %i.sb, %i.rn
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef %i.sc) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.av, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i106
  store ptr %i.rw, ptr %9, align 8, !tbaa !123
  store ptr %i.rz, ptr %i.ac, align 8, !tbaa !122
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.ru
  store ptr %i.sd, ptr %i.ae, align 8, !tbaa !157
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !16
  %.pre183 = load ptr, ptr %i.e, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ar, %.lr.ph171
  %i.se = phi ptr [ %.pre183, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.rb, %bb.ar ], [ %i.rb, %.lr.ph171 ] ; 2 uses
  %i.sf = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.rc, %bb.ar ], [ %i.rc, %.lr.ph171 ] ; 2 uses
  %i.sg = phi ptr [ %i.rz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.rk, %bb.ar ], [ %i.rd, %.lr.ph171 ]
  %i.sh = add nuw i64 %.066170, 1                 ; 2 uses
  %i.si = ptrtoint ptr %i.sf to i64
  %i.sj = ptrtoint ptr %i.se to i64
  %i.sk = sub i64 %i.si, %i.sj
  %i.sl = sdiv exact i64 %i.sk, 96
  %i.sm = icmp ult i64 %i.sh, %i.sl
  br i1 %i.sm, label %.lr.ph171, label %.loopexit, !llvm.loop !330

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.ao
  %i.sn = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.so = load i8, ptr %i.sn, align 8, !tbaa !336, !range !95, !noundef !96
  %i.sp = trunc nuw i8 %i.so to i1
  %i.sq = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.sr = load double, ptr %i.sq, align 8         ; 2 uses
  %i.ss = fcmp une double %i.sr, 1.000000e+00
  %.not159 = select i1 %i.sp, i1 true, i1 %i.ss
  br i1 %.not159, label %_ZNK3gmx9BiasState37getSkippedUpdateHistogramScaleFactorsERKNS_10BiasParamsEPdS4_.exit, label %bb.aw

bb.aw:                                            ; preds = %.loopexit
  %i.st = load i8, ptr %i.ps, align 8, !tbaa !98, !range !95, !noundef !96
  %i.su = trunc nuw i8 %i.st to i1
  br i1 %i.su, label %bb.ax, label %_ZNK3gmx9BiasState37getSkippedUpdateHistogramScaleFactorsERKNS_10BiasParamsEPdS4_.exit

bb.ax:                                            ; preds = %bb.aw
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %15 = load <2 x double>, ptr %i.sv, align 8     ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %4, i64 80
  %16 = load <2 x double>, ptr %i.sw, align 8
  %i.sx = fadd <2 x double> %15, %16
  %i.sy = fdiv <2 x double> %15, %i.sx            ; 2 uses
  %i.sz = extractelement <2 x double> %i.sy, i64 0
  %i.ta = call double @log(double noundef %i.sz) #32
  %i.tb = extractelement <2 x double> %i.sy, i64 0
  br label %_ZNK3gmx9BiasState37getSkippedUpdateHistogramScaleFactorsERKNS_10BiasParamsEPdS4_.exit

_ZNK3gmx9BiasState37getSkippedUpdateHistogramScaleFactorsERKNS_10BiasParamsEPdS4_.exit: ; preds = %bb.ax, %bb.aw, %.loopexit
  %.0154 = phi double [ 0.000000e+00, %.loopexit ], [ %i.tb, %bb.ax ], [ 1.000000e+00, %bb.aw ]
  %.0153 = phi double [ 0.000000e+00, %.loopexit ], [ %i.ta, %bb.ax ], [ 0.000000e+00, %bb.aw ]
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.td = load double, ptr %i.tc, align 8, !tbaa !138 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.tf = load double, ptr %i.te, align 8, !tbaa !139 ; 3 uses
  %i.tg = call double @llvm.fmuladd.f64(double %i.tf, double %i.sr, double %i.td)
  %i.th = fadd double %i.td, %i.tf
  %i.ti = insertelement <2 x double> poison, double %i.qp, i64 0
  %i.tj = shufflevector <2 x double> %i.ti, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tk = insertelement <2 x double> poison, double %i.tg, i64 0
  %i.tl = insertelement <2 x double> %i.tk, double %i.th, i64 1
  %i.tm = fdiv <2 x double> %i.tj, %i.tl          ; 3 uses
  %i.tn = extractelement <2 x double> %i.tm, i64 1
  %i.to = call double @log(double noundef %i.tn) #32
  %i.tp = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.tq = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 2 uses
  %.not172 = icmp eq ptr %i.tp, %i.tq
  br i1 %.not172, label %._crit_edge175, label %.lr.ph174

.lr.ph174:                                        ; preds = %_ZNK3gmx9BiasState37getSkippedUpdateHistogramScaleFactorsERKNS_10BiasParamsEPdS4_.exit
  %i.tr = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.ts = extractelement <2 x double> %i.tm, i64 0
  br label %bb.ay

._crit_edge175:                                   ; preds = %_ZN3gmx10PointState21updateWithNewSamplingERKNS_10BiasParamsEldd.exit, %_ZNK3gmx9BiasState37getSkippedUpdateHistogramScaleFactorsERKNS_10BiasParamsEPdS4_.exit
  %i.tt = extractelement <2 x double> %i.tm, i64 0
  call void @_ZN3gmx13HistogramSize16setHistogramSizeEdd(ptr noundef nonnull align 8 dereferenceable(65) %i.qb, double noundef %i.qp, double noundef %i.tt)
  br i1 %.not156.lcssa, label %bb.bk, label %_ZN3gmxL28normalizeFreeEnergyAndPmfSumEPSt6vectorINS_10PointStateESaIS1_EE.exit

bb.ay:                                            ; preds = %.lr.ph174, %_ZN3gmx10PointState21updateWithNewSamplingERKNS_10BiasParamsEldd.exit
  %i.tu = phi double [ %i.tf, %.lr.ph174 ], [ %i.vt, %_ZN3gmx10PointState21updateWithNewSamplingERKNS_10BiasParamsEldd.exit ]
  %.sroa.0124.0173 = phi ptr [ %i.tp, %.lr.ph174 ], [ %i.wg, %_ZN3gmx10PointState21updateWithNewSamplingERKNS_10BiasParamsEldd.exit ] ; 2 uses
  %i.tv = load i32, ptr %.sroa.0124.0173, align 4, !tbaa !39
  %i.tw = sext i32 %i.tv to i64
  %i.tx = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.ty = getelementptr inbounds nuw [96 x i8], ptr %i.tx, i64 %i.tw ; 12 uses
  %i.tz = load i8, ptr %i.sn, align 8, !tbaa !336, !range !95, !noundef !96
  %i.ua = trunc nuw i8 %i.tz to i1
  %i.ub = load double, ptr %i.sq, align 8
  %i.uc = fcmp une double %i.ub, 1.000000e+00
  %.not162 = select i1 %i.ua, i1 true, i1 %i.uc
  %.pre186 = load i64, ptr %i.qb, align 8, !tbaa !141
  %.pre187 = shl i64 %.pre186, 32
  %.pre188 = ashr exact i64 %.pre187, 32          ; 4 uses
  br i1 %.not162, label %_ZN3gmx10PointState31performPreviouslySkippedUpdatesERKNS_10BiasParamsEldd.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !21 ; 3 uses
  %i.uf = fcmp ogt double %i.ue, 0.000000e+00
  br i1 %i.uf, label %bb.ba, label %_ZN3gmx10PointState31performPreviouslySkippedUpdatesERKNS_10BiasParamsEldd.exit

bb.ba:                                            ; preds = %bb.az
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ty, i64 56 ; 2 uses
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !142 ; 2 uses
  %i.ui = sub i64 %.pre188, %i.uh                 ; 2 uses
  %.not.i110 = icmp eq i64 %.pre188, %i.uh
  br i1 %.not.i110, label %_ZN3gmx10PointState31performPreviouslySkippedUpdatesERKNS_10BiasParamsEldd.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ba
  %i.uj = icmp sgt i64 %i.ui, 0
  br i1 %i.uj, label %.lr.ph.i112, label %._crit_edge.i111

.lr.ph.i112:                                      ; preds = %.preheader.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ty, i64 48 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ty, i64 64 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ty, i64 8 ; 2 uses
  %.pre184 = load double, ptr %i.uk, align 8, !tbaa !93
  %.pre185 = load double, ptr %i.um, align 8, !tbaa !90
  br label %bb.bb

._crit_edge.i111:                                 ; preds = %_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd.exit, %.preheader.i
  store i64 %.pre188, ptr %i.ug, align 8, !tbaa !142
  br label %_ZN3gmx10PointState31performPreviouslySkippedUpdatesERKNS_10BiasParamsEldd.exit

bb.bb:                                            ; preds = %_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd.exit, %.lr.ph.i112
  %i.un = phi double [ %.pre185, %.lr.ph.i112 ], [ %i.ut, %_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd.exit ]
  %i.uo = phi double [ %.pre184, %.lr.ph.i112 ], [ %i.vg, %_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd.exit ] ; 3 uses
  %.013.i = phi i64 [ 0, %.lr.ph.i112 ], [ %i.vj, %_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.up = fadd double %i.uo, 0.000000e+00
  %i.uq = call double @llvm.fmuladd.f64(double %i.tu, double %i.ue, double %i.uo)
  %i.ur = fdiv double %i.up, %i.uq
  %i.us = call double @log(double noundef %i.ur) #32
  %i.ut = fsub double %i.un, %i.us                ; 3 uses
  store double %i.ut, ptr %i.um, align 8, !tbaa !90
  %i.uu = call noundef double @llvm.fabs.f64(double %i.ut)
  %i.uv = fcmp ogt double %i.uu, 7.000000e+02
  br i1 %i.uv, label %bb.bc, label %_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd.exit

bb.bc:                                            ; preds = %bb.bb
  %i.uw = call ptr @__cxa_allocate_exception(i64 24) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull @.str.26)
          to label %bb.bd unwind label %.thread.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %bb.be unwind label %.thread18.i

bb.be:                                            ; preds = %bb.bd
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %10, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %12, align 8, !tbaa !47
  %i.ux = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd, ptr %i.ux, align 8, !tbaa !49
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @.str.12, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !49
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 361, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !39
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.uw, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr %i.uw, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #29
          to label %bb.bi unwind label %bb.bg

.thread.i:                                        ; preds = %bb.bc
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

.thread18.i:                                      ; preds = %bb.bd
  %i.uz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #32
  br label %.sink.split.i

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0.i = phi i1 [ false, %bb.bf ], [ true, %bb.be ]
  %i.va = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #32
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br i1 %.0.i, label %bb.bh, label %common.resume

.sink.split.i:                                    ; preds = %.thread18.i, %.thread.i
  %.pn.pn17.ph.i = phi { ptr, i32 } [ %i.uz, %.thread18.i ], [ %i.uy, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split.i, %bb.bg
  %.pn.pn17.i = phi { ptr, i32 } [ %i.va, %bb.bg ], [ %.pn.pn17.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.uw) #32
  br label %common.resume

bb.bi:                                            ; preds = %bb.bf
  unreachable

_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd.exit: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.vb = load i8, ptr %i.tr, align 8, !tbaa !143, !range !95, !noundef !96
  %i.vc = trunc nuw i8 %i.vb to i1
  %i.vd = load double, ptr %i.te, align 8
  %i.ve = fmul double %i.ue, %i.vd
  %.sink.i.i.i = select i1 %i.vc, double %i.ve, double 0.000000e+00
  %i.vf = fadd double %.sink.i.i.i, %i.uo
  %i.vg = fmul double %.0154, %i.vf               ; 2 uses
  store double %i.vg, ptr %i.uk, align 8, !tbaa !93
  %i.vh = load double, ptr %i.ul, align 8, !tbaa !22
  %i.vi = fadd double %.0153, %i.vh
  store double %i.vi, ptr %i.ul, align 8, !tbaa !22
  %i.vj = add nuw nsw i64 %.013.i, 1              ; 2 uses
  %exitcond.not.i113 = icmp eq i64 %i.vj, %i.ui
  br i1 %exitcond.not.i113, label %._crit_edge.i111, label %bb.bb, !llvm.loop !2

_ZN3gmx10PointState31performPreviouslySkippedUpdatesERKNS_10BiasParamsEldd.exit: ; preds = %bb.ay, %._crit_edge.i111, %bb.ba, %bb.az
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ty, i64 56 ; 3 uses
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !142
  %i.vm = icmp eq i64 %i.vl, %.pre188
  br i1 %i.vm, label %_ZN3gmx10PointState21updateWithNewSamplingERKNS_10BiasParamsEldd.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZN3gmx10PointState31performPreviouslySkippedUpdatesERKNS_10BiasParamsEldd.exit
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx10PointState21updateWithNewSamplingERKNS_10BiasParamsElddENKUlvE_clEv, ptr noundef nonnull @.str.12, i32 noundef 316) #29
  unreachable

_ZN3gmx10PointState21updateWithNewSamplingERKNS_10BiasParamsEldd.exit: ; preds = %_ZN3gmx10PointState31performPreviouslySkippedUpdatesERKNS_10BiasParamsEldd.exit
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ty, i64 32 ; 2 uses
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !161 ; 2 uses
  call void @_ZN3gmx10PointState16updateFreeEnergyERKNS_10BiasParamsEd(ptr noundef nonnull align 8 dereferenceable(96) %i.ty, ptr noundef nonnull align 8 dereferenceable(137) %4, double noundef %i.vo)
  %i.vp = load i8, ptr %i.tr, align 8, !tbaa !143, !range !95, !noundef !96
  %i.vq = trunc nuw i8 %i.vp to i1
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.vs = load double, ptr %i.vr, align 8
  %i.vt = load double, ptr %i.te, align 8         ; 2 uses
  %i.vu = fmul double %i.vs, %i.vt
  %.sink.i.i.i114 = select i1 %i.vq, double %i.vu, double %i.vo
  %i.vv = load double, ptr %i.sq, align 8, !tbaa !140
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ty, i64 48 ; 2 uses
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !93
  %i.vy = call double @llvm.fmuladd.f64(double %.sink.i.i.i114, double %i.vv, double %i.vx)
end_hunk_0
