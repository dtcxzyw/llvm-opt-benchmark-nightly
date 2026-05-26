inline.NumInlined: 8095
inline.NumDeleted: 2632
begin_hunk_0_@_ZN11OpenImageIO4v3_1L8compare_IffEEbRKNS0_8ImageBufES4_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1178251.us.us = phi i1 [ %.0177264.us.us, %.preheader.us.us ], [ %.2179.us.us, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1181250.us.us = phi i1 [ %.0180263.us.us, %.preheader.us.us ], [ %.3183.us.us, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2186249.us.us = phi double [ %.1185262.us.us, %.preheader.us.us ], [ %.6190.us.us, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065267.us.us, i32 noundef %.064254.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065267.us.us, i32 noundef %.064254.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre324 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065267.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre324, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3253.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3253.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2171252.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2186249.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065267.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1181250.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2182.us.us = phi i1 [ true, %bb.aj ], [ %.1181250.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1178251.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6190.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2186249.us.us, %bb.af ], [ %.2186249.us.us, %bb.ad ] ; 3 uses
  %.3183.us.us = phi i1 [ %.2182.us.us, %bb.al ], [ %.2182.us.us, %bb.ak ], [ %.1181250.us.us, %bb.af ], [ %.1181250.us.us, %bb.ad ] ; 2 uses
  %.2179.us.us = phi i1 [ true, %bb.al ], [ %.1178251.us.us, %bb.ak ], [ %.1178251.us.us, %bb.af ], [ %.1178251.us.us, %bb.ad ] ; 2 uses
  %.6175.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2171252.us.us, %bb.af ], [ %.2171252.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3253.us.us, %bb.af ], [ %.3253.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064254.us.us, 1       ; 2 uses
  %exitcond315.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond315.not, label %._crit_edge256.us.us, label %bb.ab, !llvm.loop !200

._crit_edge256.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.it = add nsw i32 %.065267.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge268.us, !llvm.loop !201

.split288.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.split291.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.split294.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.preheader195.split:                              ; preds = %.preheader195.split.preheader, %.critedge.loopexit194
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit194 ], [ 1.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.pk, %.critedge.loopexit194 ], [ 0.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.pj, %.critedge.loopexit194 ], [ 0.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader195.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us283, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader195.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062248 = phi i32 [ %i.nt, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4247 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3172246 = phi double [ %.4173.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3187245 = phi double [ %.4188.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 4 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond370 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond370, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit194, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted235 = load i64, ptr %i.ag, align 8
  %.promoted234 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load i32, ptr %i.am, align 8            ; 2 uses
  %i.kd = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.ke = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4188.lcssa = phi double [ %.3187245, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4173.lcssa = phi double [ %.3172246, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4247, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.kf = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kf, ptr %i.ak, align 4, !tbaa !176
  %i.kg = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kh = icmp slt i32 %i.kf, %i.kg
  br i1 %i.kh, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.ki = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre317 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kk = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.km = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kn = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %i.km
  store ptr %i.ko, ptr %i.aq, align 8, !tbaa !189
  %i.kp = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kf, %i.kp
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.cc

bb.av:                                            ; preds = %bb.as
  %i.kq = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ks = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kt = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.ks
  store ptr %i.ku, ptr %i.aq, align 8, !tbaa !189
  %i.kv = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kw = icmp slt i32 %i.kf, %i.kv               ; 3 uses
  %i.kx = load i32, ptr %i.bb, align 4
  %i.ky = icmp sge i32 %i.kf, %i.kx
  %not..i.i112 = xor i1 %i.kw, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.ky, !prof !191
  %i.kz = load ptr, ptr %i.bc, align 8
  %i.la = icmp eq ptr %i.kz, null
  %i.lb = select i1 %or.cond.i.i113, i1 true, i1 %i.la, !prof !191
  br i1 %i.lb, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lc = load ptr, ptr %8, align 8, !tbaa !182
  %i.ld = load i32, ptr %i.am, align 8, !tbaa !178
  %i.le = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lf = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i32 noundef %i.kf, i32 noundef %i.ld, i32 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kw, i32 noundef %i.lf)
          to label %.noexc116 unwind label %bb.cc

.noexc116:                                        ; preds = %bb.ax
  %i.lh = zext i1 %i.kw to i8
  store ptr %i.lg, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lh, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.li = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.li, ptr %i.ak, align 4, !tbaa !176
  %i.lj = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lk = add nsw i32 %i.lj, 1                    ; 3 uses
  store i32 %i.lk, ptr %i.am, align 8, !tbaa !178
  %i.ll = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lk, %i.ll
  %.pre318 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.lm, ptr %i.am, align 8, !tbaa !178
  %i.ln = add nsw i32 %.pre318, 1                 ; 3 uses
  store i32 %i.ln, ptr %i.ao, align 4, !tbaa !180
  %i.lo = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.ln, %i.lo
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lp = phi i32 [ %.pre318, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre317, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lk, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.li, %bb.ay ], [ %i.li, %bb.az ], [ %i.kf, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.lp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.cc

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.ke, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 7 uses
  %.0163240 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 4 uses
  %.0164239 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 4 uses
  %.5238 = phi float [ %.4247, %.lr.ph ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 4 uses
  %.4173237 = phi double [ %.3172246, %.lr.ph ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.4188236 = phi double [ %.3187245, %.lr.ph ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.ls = phi double [ %.promoted, %.lr.ph ], [ %i.ns, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 4 uses
  %i.lt = phi i64 [ %.promoted234, %.lr.ph ], [ %i.nr, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 4 uses
  %i.lu = phi i64 [ %.promoted235, %.lr.ph ], [ %i.nq, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 4 uses
  %i.lv = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %indvars.iv
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !7
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ly = phi float [ %i.lx, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 3 uses
  %i.lz = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.lz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %indvars.iv
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !7
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.mc = phi float [ %i.mb, %bb.bf ], [ 0.000000e+00, %bb.be ] ; 3 uses
  %i.md = call float @llvm.fabs.f32(float %i.ly)  ; 5 uses
  %i.me = fcmp one float %i.md, +inf
  %i.mf = call float @llvm.fabs.f32(float %i.mc)  ; 5 uses
  %i.mg = fcmp one float %i.mf, +inf
  %or.cond70.i119 = and i1 %i.me, %i.mg
  br i1 %or.cond70.i119, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mh = fcmp uno float %i.ly, 0.000000e+00
  %i.mi = fcmp uno float %i.mc, 0.000000e+00
  %i.mj = xor i1 %i.mh, %i.mi
  br i1 %i.mj, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mk = fcmp oeq float %i.md, +inf
  %i.ml = fcmp oeq float %i.mf, +inf
  %i.mm = xor i1 %i.mk, %i.ml
  br i1 %i.mm, label %bb.bj, label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.mn = call double @llvm.fabs.f64(double %i.ls)
  %i.mo = fcmp ueq double %i.mn, +inf
  br i1 %i.mo, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  store i32 %.pre.pre, ptr %i.ac, align 8, !tbaa !202
  store i32 %i.kc, ptr %i.ad, align 4, !tbaa !203
  store i32 %i.kd, ptr %i.ae, align 8, !tbaa !196
  %i.mp = trunc nsw i64 %indvars.iv to i32
  store i32 %i.mp, ptr %i.af, align 4, !tbaa !197
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L8compare_IfhEEbRKNS0_8ImageBufES4_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1178251.us.us = phi i1 [ %.0177264.us.us, %.preheader.us.us ], [ %.2179.us.us, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1181250.us.us = phi i1 [ %.0180263.us.us, %.preheader.us.us ], [ %.3183.us.us, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2186249.us.us = phi double [ %.1185262.us.us, %.preheader.us.us ], [ %.6190.us.us, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065267.us.us, i32 noundef %.064254.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065267.us.us, i32 noundef %.064254.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre325 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065267.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre325, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3253.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3253.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2171252.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2186249.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065267.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1181250.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2182.us.us = phi i1 [ true, %bb.aj ], [ %.1181250.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1178251.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6190.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2186249.us.us, %bb.af ], [ %.2186249.us.us, %bb.ad ] ; 3 uses
  %.3183.us.us = phi i1 [ %.2182.us.us, %bb.al ], [ %.2182.us.us, %bb.ak ], [ %.1181250.us.us, %bb.af ], [ %.1181250.us.us, %bb.ad ] ; 2 uses
  %.2179.us.us = phi i1 [ true, %bb.al ], [ %.1178251.us.us, %bb.ak ], [ %.1178251.us.us, %bb.af ], [ %.1178251.us.us, %bb.ad ] ; 2 uses
  %.6175.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2171252.us.us, %bb.af ], [ %.2171252.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3253.us.us, %bb.af ], [ %.3253.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064254.us.us, 1       ; 2 uses
  %exitcond316.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond316.not, label %._crit_edge256.us.us, label %bb.ab, !llvm.loop !210

._crit_edge256.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.it = add nsw i32 %.065267.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge268.us, !llvm.loop !211

.split288.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.split291.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.split294.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.preheader195.split:                              ; preds = %.preheader195.split.preheader, %.critedge.loopexit194
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit194 ], [ 1.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.pe, %.critedge.loopexit194 ], [ 0.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.pd, %.critedge.loopexit194 ], [ 0.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader195.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us283, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader195.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062248 = phi i32 [ %i.nn, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4247 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3172246 = phi double [ %.4173.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3187245 = phi double [ %.4188.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 4 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond372 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond372, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit194, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted235 = load i64, ptr %i.ag, align 8
  %.promoted234 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load i32, ptr %i.am, align 8            ; 2 uses
  %i.kd = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.ke = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4188.lcssa = phi double [ %.3187245, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4173.lcssa = phi double [ %.3172246, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4247, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.kf = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kf, ptr %i.ak, align 4, !tbaa !176
  %i.kg = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kh = icmp slt i32 %i.kf, %i.kg
  br i1 %i.kh, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.ki = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre318 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kk = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.km = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kn = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %i.km
  store ptr %i.ko, ptr %i.aq, align 8, !tbaa !189
  %i.kp = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kf, %i.kp
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bz

bb.av:                                            ; preds = %bb.as
  %i.kq = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ks = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kt = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.ks
  store ptr %i.ku, ptr %i.aq, align 8, !tbaa !189
  %i.kv = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kw = icmp slt i32 %i.kf, %i.kv               ; 3 uses
  %i.kx = load i32, ptr %i.bb, align 4
  %i.ky = icmp sge i32 %i.kf, %i.kx
  %not..i.i112 = xor i1 %i.kw, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.ky, !prof !191
  %i.kz = load ptr, ptr %i.bc, align 8
  %i.la = icmp eq ptr %i.kz, null
  %i.lb = select i1 %or.cond.i.i113, i1 true, i1 %i.la, !prof !191
  br i1 %i.lb, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lc = load ptr, ptr %8, align 8, !tbaa !182
  %i.ld = load i32, ptr %i.am, align 8, !tbaa !178
  %i.le = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lf = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i32 noundef %i.kf, i32 noundef %i.ld, i32 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kw, i32 noundef %i.lf)
          to label %.noexc116 unwind label %bb.bz

.noexc116:                                        ; preds = %bb.ax
  %i.lh = zext i1 %i.kw to i8
  store ptr %i.lg, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lh, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.li = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.li, ptr %i.ak, align 4, !tbaa !176
  %i.lj = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lk = add nsw i32 %i.lj, 1                    ; 3 uses
  store i32 %i.lk, ptr %i.am, align 8, !tbaa !178
  %i.ll = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lk, %i.ll
  %.pre319 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.lm, ptr %i.am, align 8, !tbaa !178
  %i.ln = add nsw i32 %.pre319, 1                 ; 3 uses
  store i32 %i.ln, ptr %i.ao, align 4, !tbaa !180
  %i.lo = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.ln, %i.lo
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lp = phi i32 [ %.pre319, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre318, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lk, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.li, %bb.ay ], [ %i.li, %bb.az ], [ %i.kf, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.lp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bz

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.ke, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 7 uses
  %.0163240 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.0164239 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.5238 = phi float [ %.4247, %.lr.ph ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.4173237 = phi double [ %.3172246, %.lr.ph ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4188236 = phi double [ %.3187245, %.lr.ph ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.ls = phi double [ %.promoted, %.lr.ph ], [ %i.nm, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lt = phi i64 [ %.promoted234, %.lr.ph ], [ %i.nl, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lu = phi i64 [ %.promoted235, %.lr.ph ], [ %i.nk, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lv = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %indvars.iv
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !7
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ly = phi float [ %i.lx, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 2 uses
  %i.lz = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.lz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ma = getelementptr inbounds i8, ptr %i.kb, i64 %indvars.iv
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !136
  %i.mc = uitofp i8 %i.mb to float
  %i.md = fmul nnan float %i.mc, f0x3B808081
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.me = phi float [ %i.md, %bb.bf ], [ 0.000000e+00, %bb.be ] ; 4 uses
  %i.mf = call float @llvm.fabs.f32(float %i.ly)  ; 4 uses
  %i.mg = fcmp one float %i.mf, +inf
  %i.mh = call double @llvm.fabs.f64(double %i.ls)
  %i.mi = fcmp ueq double %i.mh, +inf
  %or.cond = select i1 %i.mg, i1 true, i1 %i.mi
  br i1 %or.cond, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  store i32 %.pre.pre, ptr %i.ac, align 8, !tbaa !202
  store i32 %i.kc, ptr %i.ad, align 4, !tbaa !203
  store i32 %i.kd, ptr %i.ae, align 8, !tbaa !196
  %i.mj = trunc nsw i64 %indvars.iv to i32
  store i32 %i.mj, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128

bb.bi:                                            ; preds = %bb.bg
  %i.mk = fpext float %i.mf to double
  %i.ml = fpext nnan ninf float %i.me to double
  %i.mm = fmul nnan double %i.ml, 5.000000e-01
  %i.mn = call double @llvm.fmuladd.f64(double %i.mk, double 5.000000e-01, double %i.mm) ; 2 uses
  %i.mo = fptrunc double %i.mn to float
  %i.mp = fcmp olt float %i.mf, %i.me
  %.sroa.speculated65.i120 = select i1 %i.mp, float %i.me, float %i.mf ; 2 uses
  %i.mq = fcmp olt float %.5238, %.sroa.speculated65.i120
  %.sroa.speculated.i121 = select i1 %i.mq, float %.sroa.speculated65.i120, float %.5238 ; 2 uses
  %i.mr = fsub float %i.ly, %i.me
  %i.ms = call noundef float @llvm.fabs.f32(float %i.mr) ; 3 uses
  %i.mt = fpext float %i.ms to double             ; 7 uses
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L8compare_IfN9Imath_3_14halfEEEbRKNS0_8ImageBufES6_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1178251.us.us = phi i1 [ %.0177264.us.us, %.preheader.us.us ], [ %.2179.us.us, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1181250.us.us = phi i1 [ %.0180263.us.us, %.preheader.us.us ], [ %.3183.us.us, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2186249.us.us = phi double [ %.1185262.us.us, %.preheader.us.us ], [ %.6190.us.us, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065267.us.us, i32 noundef %.064254.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065267.us.us, i32 noundef %.064254.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre324 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065267.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre324, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3253.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3253.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2171252.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2186249.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065267.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1181250.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2182.us.us = phi i1 [ true, %bb.aj ], [ %.1181250.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1178251.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6190.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2186249.us.us, %bb.af ], [ %.2186249.us.us, %bb.ad ] ; 3 uses
  %.3183.us.us = phi i1 [ %.2182.us.us, %bb.al ], [ %.2182.us.us, %bb.ak ], [ %.1181250.us.us, %bb.af ], [ %.1181250.us.us, %bb.ad ] ; 2 uses
  %.2179.us.us = phi i1 [ true, %bb.al ], [ %.1178251.us.us, %bb.ak ], [ %.1178251.us.us, %bb.af ], [ %.1178251.us.us, %bb.ad ] ; 2 uses
  %.6175.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2171252.us.us, %bb.af ], [ %.2171252.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3253.us.us, %bb.af ], [ %.3253.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064254.us.us, 1       ; 2 uses
  %exitcond315.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond315.not, label %._crit_edge256.us.us, label %bb.ab, !llvm.loop !214

._crit_edge256.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.it = add nsw i32 %.065267.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge268.us, !llvm.loop !215

.split288.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.split291.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.split294.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.preheader195.split:                              ; preds = %.preheader195.split.preheader, %.critedge.loopexit194
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit194 ], [ 1.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.qb, %.critedge.loopexit194 ], [ 0.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.qa, %.critedge.loopexit194 ], [ 0.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader195.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us283, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader195.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062248 = phi i32 [ %i.ok, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4247 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3172246 = phi double [ %.4173.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3187245 = phi double [ %.4188.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 4 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond372 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond372, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit194, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted235 = load i64, ptr %i.ag, align 8
  %.promoted234 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load i32, ptr %i.am, align 8            ; 2 uses
  %i.kd = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.ke = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4188.lcssa = phi double [ %.3187245, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4173.lcssa = phi double [ %.3172246, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4247, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.kf = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kf, ptr %i.ak, align 4, !tbaa !176
  %i.kg = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kh = icmp slt i32 %i.kf, %i.kg
  br i1 %i.kh, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.ki = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre317 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kk = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.km = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kn = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %i.km
  store ptr %i.ko, ptr %i.aq, align 8, !tbaa !189
  %i.kp = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kf, %i.kp
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.ch

bb.av:                                            ; preds = %bb.as
  %i.kq = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ks = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kt = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.ks
  store ptr %i.ku, ptr %i.aq, align 8, !tbaa !189
  %i.kv = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kw = icmp slt i32 %i.kf, %i.kv               ; 3 uses
  %i.kx = load i32, ptr %i.bb, align 4
  %i.ky = icmp sge i32 %i.kf, %i.kx
  %not..i.i112 = xor i1 %i.kw, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.ky, !prof !191
  %i.kz = load ptr, ptr %i.bc, align 8
  %i.la = icmp eq ptr %i.kz, null
  %i.lb = select i1 %or.cond.i.i113, i1 true, i1 %i.la, !prof !191
  br i1 %i.lb, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lc = load ptr, ptr %8, align 8, !tbaa !182
  %i.ld = load i32, ptr %i.am, align 8, !tbaa !178
  %i.le = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lf = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i32 noundef %i.kf, i32 noundef %i.ld, i32 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kw, i32 noundef %i.lf)
          to label %.noexc116 unwind label %bb.ch

.noexc116:                                        ; preds = %bb.ax
  %i.lh = zext i1 %i.kw to i8
  store ptr %i.lg, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lh, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.li = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.li, ptr %i.ak, align 4, !tbaa !176
  %i.lj = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lk = add nsw i32 %i.lj, 1                    ; 3 uses
  store i32 %i.lk, ptr %i.am, align 8, !tbaa !178
  %i.ll = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lk, %i.ll
  %.pre318 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.lm, ptr %i.am, align 8, !tbaa !178
  %i.ln = add nsw i32 %.pre318, 1                 ; 3 uses
  store i32 %i.ln, ptr %i.ao, align 4, !tbaa !180
  %i.lo = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.ln, %i.lo
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lp = phi i32 [ %.pre318, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre317, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lk, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.li, %bb.ay ], [ %i.li, %bb.az ], [ %i.kf, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.lp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.ch

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.ke, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 7 uses
  %.0163240 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 4 uses
  %.0164239 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 4 uses
  %.5238 = phi float [ %.4247, %.lr.ph ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 4 uses
  %.4173237 = phi double [ %.3172246, %.lr.ph ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.4188236 = phi double [ %.3187245, %.lr.ph ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.ls = phi double [ %.promoted, %.lr.ph ], [ %i.oj, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 4 uses
  %i.lt = phi i64 [ %.promoted234, %.lr.ph ], [ %i.oi, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 4 uses
  %i.lu = phi i64 [ %.promoted235, %.lr.ph ], [ %i.oh, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 4 uses
  %i.lv = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %indvars.iv
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !7
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ly = phi float [ %i.lx, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 3 uses
  %i.lz = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.lz, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  %i.ma = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %indvars.iv
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !216 ; 2 uses
  %i.mc = zext i16 %i.mb to i32
  %i.md = shl nuw nsw i32 %i.mc, 13
  %i.me = and i32 %i.md, 268427264                ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.mb to i32
  %i.mf = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.mg = icmp samesign ugt i32 %i.me, 8388607
  br i1 %i.mg, label %bb.bg, label %bb.bj, !prof !164

bb.bg:                                            ; preds = %bb.bf
  %i.mh = or disjoint i32 %i.me, %i.mf            ; 2 uses
  %i.mi = icmp samesign ult i32 %i.me, 260046848
  br i1 %i.mi, label %bb.bh, label %bb.bi, !prof !164

bb.bh:                                            ; preds = %bb.bg
  %i.mj = add nuw nsw i32 %i.mh, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.bi:                                            ; preds = %bb.bg
  %i.mk = or i32 %i.mh, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.bj:                                            ; preds = %bb.bf
  %.not.i.i.i.i.i = icmp eq i32 %i.me, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ml = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.me, i1 true)
  %i.mm = add nsw i32 %i.ml, -8                   ; 2 uses
  %i.mn = shl i32 %i.me, %i.mm
  %i.mo = or i32 %i.mf, %i.mn
  %i.mp = or i32 %i.mo, 947912704
  %i.mq = shl nuw nsw i32 %i.mm, 23
  %i.mr = sub nuw i32 %i.mp, %i.mq
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_1L8compare_IftEEbRKNS0_8ImageBufES4_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1178251.us.us = phi i1 [ %.0177264.us.us, %.preheader.us.us ], [ %.2179.us.us, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1181250.us.us = phi i1 [ %.0180263.us.us, %.preheader.us.us ], [ %.3183.us.us, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2186249.us.us = phi double [ %.1185262.us.us, %.preheader.us.us ], [ %.6190.us.us, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065267.us.us, i32 noundef %.064254.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065267.us.us, i32 noundef %.064254.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre325 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065267.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre325, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3253.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3253.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2171252.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2186249.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065267.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1181250.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2182.us.us = phi i1 [ true, %bb.aj ], [ %.1181250.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1178251.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6190.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2186249.us.us, %bb.af ], [ %.2186249.us.us, %bb.ad ] ; 3 uses
  %.3183.us.us = phi i1 [ %.2182.us.us, %bb.al ], [ %.2182.us.us, %bb.ak ], [ %.1181250.us.us, %bb.af ], [ %.1181250.us.us, %bb.ad ] ; 2 uses
  %.2179.us.us = phi i1 [ true, %bb.al ], [ %.1178251.us.us, %bb.ak ], [ %.1178251.us.us, %bb.af ], [ %.1178251.us.us, %bb.ad ] ; 2 uses
  %.6175.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2171252.us.us, %bb.af ], [ %.2171252.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3253.us.us, %bb.af ], [ %.3253.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064254.us.us, 1       ; 2 uses
  %exitcond316.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond316.not, label %._crit_edge256.us.us, label %bb.ab, !llvm.loop !221

._crit_edge256.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.it = add nsw i32 %.065267.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge268.us, !llvm.loop !222

.split288.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.split291.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.split294.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.preheader195.split:                              ; preds = %.preheader195.split.preheader, %.critedge.loopexit194
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit194 ], [ 1.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.pe, %.critedge.loopexit194 ], [ 0.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.pd, %.critedge.loopexit194 ], [ 0.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader195.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us283, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader195.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062248 = phi i32 [ %i.nn, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4247 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3172246 = phi double [ %.4173.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3187245 = phi double [ %.4188.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 4 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond372 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond372, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit194, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted235 = load i64, ptr %i.ag, align 8
  %.promoted234 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load i32, ptr %i.am, align 8            ; 2 uses
  %i.kd = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.ke = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4188.lcssa = phi double [ %.3187245, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4173.lcssa = phi double [ %.3172246, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4247, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.kf = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kf, ptr %i.ak, align 4, !tbaa !176
  %i.kg = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kh = icmp slt i32 %i.kf, %i.kg
  br i1 %i.kh, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.ki = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre318 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kk = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.km = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kn = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %i.km
  store ptr %i.ko, ptr %i.aq, align 8, !tbaa !189
  %i.kp = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kf, %i.kp
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bz

bb.av:                                            ; preds = %bb.as
  %i.kq = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ks = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kt = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.ks
  store ptr %i.ku, ptr %i.aq, align 8, !tbaa !189
  %i.kv = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kw = icmp slt i32 %i.kf, %i.kv               ; 3 uses
  %i.kx = load i32, ptr %i.bb, align 4
  %i.ky = icmp sge i32 %i.kf, %i.kx
  %not..i.i112 = xor i1 %i.kw, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.ky, !prof !191
  %i.kz = load ptr, ptr %i.bc, align 8
  %i.la = icmp eq ptr %i.kz, null
  %i.lb = select i1 %or.cond.i.i113, i1 true, i1 %i.la, !prof !191
  br i1 %i.lb, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lc = load ptr, ptr %8, align 8, !tbaa !182
  %i.ld = load i32, ptr %i.am, align 8, !tbaa !178
  %i.le = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lf = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i32 noundef %i.kf, i32 noundef %i.ld, i32 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kw, i32 noundef %i.lf)
          to label %.noexc116 unwind label %bb.bz

.noexc116:                                        ; preds = %bb.ax
  %i.lh = zext i1 %i.kw to i8
  store ptr %i.lg, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lh, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.li = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.li, ptr %i.ak, align 4, !tbaa !176
  %i.lj = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lk = add nsw i32 %i.lj, 1                    ; 3 uses
  store i32 %i.lk, ptr %i.am, align 8, !tbaa !178
  %i.ll = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lk, %i.ll
  %.pre319 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.lm, ptr %i.am, align 8, !tbaa !178
  %i.ln = add nsw i32 %.pre319, 1                 ; 3 uses
  store i32 %i.ln, ptr %i.ao, align 4, !tbaa !180
  %i.lo = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.ln, %i.lo
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lp = phi i32 [ %.pre319, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre318, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lk, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.li, %bb.ay ], [ %i.li, %bb.az ], [ %i.kf, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.lp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bz

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.ke, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 7 uses
  %.0163240 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.0164239 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.5238 = phi float [ %.4247, %.lr.ph ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.4173237 = phi double [ %.3172246, %.lr.ph ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4188236 = phi double [ %.3187245, %.lr.ph ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.ls = phi double [ %.promoted, %.lr.ph ], [ %i.nm, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lt = phi i64 [ %.promoted234, %.lr.ph ], [ %i.nl, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lu = phi i64 [ %.promoted235, %.lr.ph ], [ %i.nk, %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lv = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %indvars.iv
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !7
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ly = phi float [ %i.lx, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 2 uses
  %i.lz = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.lz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ma = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %indvars.iv
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !223
  %i.mc = uitofp i16 %i.mb to float
  %i.md = fmul nnan float %i.mc, f0x37800080
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.me = phi float [ %i.md, %bb.bf ], [ 0.000000e+00, %bb.be ] ; 4 uses
  %i.mf = call float @llvm.fabs.f32(float %i.ly)  ; 4 uses
  %i.mg = fcmp one float %i.mf, +inf
  %i.mh = call double @llvm.fabs.f64(double %i.ls)
  %i.mi = fcmp ueq double %i.mh, +inf
  %or.cond = select i1 %i.mg, i1 true, i1 %i.mi
  br i1 %or.cond, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  store i32 %.pre.pre, ptr %i.ac, align 8, !tbaa !202
  store i32 %i.kc, ptr %i.ad, align 4, !tbaa !203
  store i32 %i.kd, ptr %i.ae, align 8, !tbaa !196
  %i.mj = trunc nsw i64 %indvars.iv to i32
  store i32 %i.mj, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIffEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128

bb.bi:                                            ; preds = %bb.bg
  %i.mk = fpext float %i.mf to double
  %i.ml = fpext nnan ninf float %i.me to double
  %i.mm = fmul nnan double %i.ml, 5.000000e-01
  %i.mn = call double @llvm.fmuladd.f64(double %i.mk, double 5.000000e-01, double %i.mm) ; 2 uses
  %i.mo = fptrunc double %i.mn to float
  %i.mp = fcmp olt float %i.mf, %i.me
  %.sroa.speculated65.i120 = select i1 %i.mp, float %i.me, float %i.mf ; 2 uses
  %i.mq = fcmp olt float %.5238, %.sroa.speculated65.i120
  %.sroa.speculated.i121 = select i1 %i.mq, float %.sroa.speculated65.i120, float %.5238 ; 2 uses
  %i.mr = fsub float %i.ly, %i.me
  %i.ms = call noundef float @llvm.fabs.f32(float %i.mr) ; 3 uses
  %i.mt = fpext float %i.ms to double             ; 7 uses
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_1L8compare_IhfEEbRKNS0_8ImageBufES4_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1178253.us.us = phi i1 [ %.0177266.us.us, %.preheader.us.us ], [ %.2179.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1181252.us.us = phi i1 [ %.0180265.us.us, %.preheader.us.us ], [ %.3183.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2186251.us.us = phi double [ %.1185264.us.us, %.preheader.us.us ], [ %.6190.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065269.us.us, i32 noundef %.064256.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065269.us.us, i32 noundef %.064256.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre327 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065269.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre327, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3255.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3255.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2171254.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2186251.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065269.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1181252.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2182.us.us = phi i1 [ true, %bb.aj ], [ %.1181252.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1178253.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6190.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2186251.us.us, %bb.af ], [ %.2186251.us.us, %bb.ad ] ; 3 uses
  %.3183.us.us = phi i1 [ %.2182.us.us, %bb.al ], [ %.2182.us.us, %bb.ak ], [ %.1181252.us.us, %bb.af ], [ %.1181252.us.us, %bb.ad ] ; 2 uses
  %.2179.us.us = phi i1 [ true, %bb.al ], [ %.1178253.us.us, %bb.ak ], [ %.1178253.us.us, %bb.af ], [ %.1178253.us.us, %bb.ad ] ; 2 uses
  %.6175.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2171254.us.us, %bb.af ], [ %.2171254.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3255.us.us, %bb.af ], [ %.3255.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064256.us.us, 1       ; 2 uses
  %exitcond318.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond318.not, label %._crit_edge258.us.us, label %bb.ab, !llvm.loop !226

._crit_edge258.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.it = add nsw i32 %.065269.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge270.us, !llvm.loop !227

.split290.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split293.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split296.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.preheader197.split:                              ; preds = %.preheader197.split.preheader, %.critedge.loopexit196
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit196 ], [ 1.000000e+00, %.preheader197.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.pf, %.critedge.loopexit196 ], [ 0.000000e+00, %.preheader197.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.pe, %.critedge.loopexit196 ], [ 0.000000e+00, %.preheader197.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader197.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us285, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader197.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062250 = phi i32 [ %i.no, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4249 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3172248 = phi double [ %.4173.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3187247 = phi double [ %.4188.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 4 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond374 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond374, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit196, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted237 = load i64, ptr %i.ag, align 8
  %.promoted236 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load i32, ptr %i.am, align 8            ; 2 uses
  %i.kd = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.ke = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4188.lcssa = phi double [ %.3187247, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4173.lcssa = phi double [ %.3172248, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4249, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.kf = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kf, ptr %i.ak, align 4, !tbaa !176
  %i.kg = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kh = icmp slt i32 %i.kf, %i.kg
  br i1 %i.kh, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.ki = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre320 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kk = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.km = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kn = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %i.km
  store ptr %i.ko, ptr %i.aq, align 8, !tbaa !189
  %i.kp = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kf, %i.kp
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.av:                                            ; preds = %bb.as
  %i.kq = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ks = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kt = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.ks
  store ptr %i.ku, ptr %i.aq, align 8, !tbaa !189
  %i.kv = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kw = icmp slt i32 %i.kf, %i.kv               ; 3 uses
  %i.kx = load i32, ptr %i.bb, align 4
  %i.ky = icmp sge i32 %i.kf, %i.kx
  %not..i.i112 = xor i1 %i.kw, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.ky, !prof !191
  %i.kz = load ptr, ptr %i.bc, align 8
  %i.la = icmp eq ptr %i.kz, null
  %i.lb = select i1 %or.cond.i.i113, i1 true, i1 %i.la, !prof !191
  br i1 %i.lb, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lc = load ptr, ptr %8, align 8, !tbaa !182
  %i.ld = load i32, ptr %i.am, align 8, !tbaa !178
  %i.le = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lf = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i32 noundef %i.kf, i32 noundef %i.ld, i32 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kw, i32 noundef %i.lf)
          to label %.noexc116 unwind label %bb.bx

.noexc116:                                        ; preds = %bb.ax
  %i.lh = zext i1 %i.kw to i8
  store ptr %i.lg, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lh, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.li = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.li, ptr %i.ak, align 4, !tbaa !176
  %i.lj = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lk = add nsw i32 %i.lj, 1                    ; 3 uses
  store i32 %i.lk, ptr %i.am, align 8, !tbaa !178
  %i.ll = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lk, %i.ll
  %.pre321 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.lm, ptr %i.am, align 8, !tbaa !178
  %i.ln = add nsw i32 %.pre321, 1                 ; 3 uses
  store i32 %i.ln, ptr %i.ao, align 4, !tbaa !180
  %i.lo = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.ln, %i.lo
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lp = phi i32 [ %.pre321, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre320, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lk, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.li, %bb.ay ], [ %i.li, %bb.az ], [ %i.kf, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.lp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.ke, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 7 uses
  %.0163242 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.0164241 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.5240 = phi float [ %.4249, %.lr.ph ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.4173239 = phi double [ %.3172248, %.lr.ph ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4188238 = phi double [ %.3187247, %.lr.ph ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.ls = phi double [ %.promoted, %.lr.ph ], [ %i.nn, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lt = phi i64 [ %.promoted236, %.lr.ph ], [ %i.nm, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lu = phi i64 [ %.promoted237, %.lr.ph ], [ %i.nl, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lv = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lw = getelementptr inbounds i8, ptr %i.ka, i64 %indvars.iv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !136
  %i.ly = uitofp i8 %i.lx to float
  %i.lz = fmul nnan float %i.ly, f0x3B808081
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ma = phi float [ %i.lz, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 4 uses
  %i.mb = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.mb, label %bb.bf, label %.thread

bb.bf:                                            ; preds = %bb.be
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %indvars.iv
  %i.md = load float, ptr %i.mc, align 4, !tbaa !7 ; 2 uses
  %i.me = call float @llvm.fabs.f32(float %i.md)  ; 2 uses
  %i.mf = fcmp one float %i.me, +inf
  %i.mg = call double @llvm.fabs.f64(double %i.ls)
  %i.mh = fcmp ueq double %i.mg, +inf
  %or.cond = select i1 %i.mf, i1 true, i1 %i.mh
  br i1 %or.cond, label %.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  store i32 %.pre.pre, ptr %i.ac, align 8, !tbaa !202
  store i32 %i.kc, ptr %i.ad, align 4, !tbaa !203
  store i32 %i.kd, ptr %i.ae, align 8, !tbaa !196
  %i.mi = trunc nsw i64 %indvars.iv to i32
  store i32 %i.mi, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128

.thread:                                          ; preds = %bb.be, %bb.bf
  %i.mj = phi float [ %i.me, %bb.bf ], [ 0.000000e+00, %bb.be ] ; 3 uses
  %i.mk = phi float [ %i.md, %bb.bf ], [ 0.000000e+00, %bb.be ]
  %i.ml = fpext float %i.ma to double
  %i.mm = fpext float %i.mj to double
  %i.mn = fmul double %i.mm, 5.000000e-01
  %i.mo = call double @llvm.fmuladd.f64(double %i.ml, double 5.000000e-01, double %i.mn) ; 2 uses
  %i.mp = fptrunc double %i.mo to float
  %i.mq = fcmp olt float %i.ma, %i.mj
  %.sroa.speculated65.i120 = select i1 %i.mq, float %i.mj, float %i.ma ; 2 uses
  %i.mr = fcmp olt float %.5240, %.sroa.speculated65.i120
  %.sroa.speculated.i121 = select i1 %i.mr, float %.sroa.speculated65.i120, float %.5240 ; 2 uses
  %i.ms = fsub float %i.ma, %i.mk
  %i.mt = call noundef float @llvm.fabs.f32(float %i.ms) ; 3 uses
  %i.mu = fpext float %i.mt to double             ; 7 uses
  %i.mv = fpext float %i.mp to double
  %i.mw = fcmp ogt double %i.mo, f0x3690000000000000
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_1L8compare_IhhEEbRKNS0_8ImageBufES4_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1176247.us.us = phi i1 [ %.0175260.us.us, %.preheader.us.us ], [ %.2177.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1179246.us.us = phi i1 [ %.0178259.us.us, %.preheader.us.us ], [ %.3181.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2184245.us.us = phi double [ %.1183258.us.us, %.preheader.us.us ], [ %.6188.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065263.us.us, i32 noundef %.064250.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065263.us.us, i32 noundef %.064250.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre321 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065263.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre321, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3249.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3249.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2170248.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2184245.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065263.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1179246.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2180.us.us = phi i1 [ true, %bb.aj ], [ %.1179246.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1176247.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6188.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2184245.us.us, %bb.af ], [ %.2184245.us.us, %bb.ad ] ; 3 uses
  %.3181.us.us = phi i1 [ %.2180.us.us, %bb.al ], [ %.2180.us.us, %bb.ak ], [ %.1179246.us.us, %bb.af ], [ %.1179246.us.us, %bb.ad ] ; 2 uses
  %.2177.us.us = phi i1 [ true, %bb.al ], [ %.1176247.us.us, %bb.ak ], [ %.1176247.us.us, %bb.af ], [ %.1176247.us.us, %bb.ad ] ; 2 uses
  %.6174.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2170248.us.us, %bb.af ], [ %.2170248.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3249.us.us, %bb.af ], [ %.3249.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064250.us.us, 1       ; 2 uses
  %exitcond312.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond312.not, label %._crit_edge252.us.us, label %bb.ab, !llvm.loop !230

._crit_edge252.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.it = add nsw i32 %.065263.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge264.us, !llvm.loop !231

.split284.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split287.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split290.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.preheader192.split:                              ; preds = %.preheader192.split.preheader, %.critedge.loopexit191
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit191 ], [ 1.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.oy, %.critedge.loopexit191 ], [ 0.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.ox, %.critedge.loopexit191 ], [ 0.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader192.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us279, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader192.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062244 = phi i32 [ %i.nh, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4243 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3171242 = phi double [ %.4172.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3185241 = phi double [ %.4186.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 3 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond368 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond368, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit191, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted232 = load i64, ptr %i.ag, align 8
  %.promoted231 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load <2 x i32>, ptr %i.am, align 8
  %i.kd = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4186.lcssa = phi double [ %.3185241, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172.lcssa = phi double [ %.3171242, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4243, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.ke = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.ke, ptr %i.ak, align 4, !tbaa !176
  %i.kf = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kg = icmp slt i32 %i.ke, %i.kf
  br i1 %i.kg, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.kh = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre314 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kj = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.kl = load i64, ptr %i.az, align 8, !tbaa !188
  %i.km = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 %i.kl
  store ptr %i.kn, ptr %i.aq, align 8, !tbaa !189
  %i.ko = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.ke, %i.ko
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.av:                                            ; preds = %bb.as
  %i.kp = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kr = load i64, ptr %i.az, align 8, !tbaa !188
  %i.ks = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 %i.kr
  store ptr %i.kt, ptr %i.aq, align 8, !tbaa !189
  %i.ku = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kv = icmp slt i32 %i.ke, %i.ku               ; 3 uses
  %i.kw = load i32, ptr %i.bb, align 4
  %i.kx = icmp sge i32 %i.ke, %i.kw
  %not..i.i112 = xor i1 %i.kv, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.kx, !prof !191
  %i.ky = load ptr, ptr %i.bc, align 8
  %i.kz = icmp eq ptr %i.ky, null
  %i.la = select i1 %or.cond.i.i113, i1 true, i1 %i.kz, !prof !191
  br i1 %i.la, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lb = load ptr, ptr %8, align 8, !tbaa !182
  %i.lc = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ld = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.le = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lf = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, i32 noundef %i.ke, i32 noundef %i.lc, i32 noundef %i.ld, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kv, i32 noundef %i.le)
          to label %.noexc116 unwind label %bb.bx

.noexc116:                                        ; preds = %bb.ax
  %i.lg = zext i1 %i.kv to i8
  store ptr %i.lf, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lg, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.lh = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.lh, ptr %i.ak, align 4, !tbaa !176
  %i.li = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lj = add nsw i32 %i.li, 1                    ; 3 uses
  store i32 %i.lj, ptr %i.am, align 8, !tbaa !178
  %i.lk = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lj, %i.lk
  %.pre315 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ll = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.ll, ptr %i.am, align 8, !tbaa !178
  %i.lm = add nsw i32 %.pre315, 1                 ; 3 uses
  store i32 %i.lm, ptr %i.ao, align 4, !tbaa !180
  %i.ln = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.lm, %i.ln
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lo = phi i32 [ %.pre315, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre314, %._crit_edge.i109 ]
  %i.lp = phi i32 [ %i.lj, %bb.ay ], [ %i.ll, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lh, %bb.ay ], [ %i.lh, %bb.az ], [ %i.ke, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lq, i32 noundef %i.lp, i32 noundef %i.lo)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.kd, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 6 uses
  %.0163237 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.0164236 = phi i1 [ false, %.lr.ph ], [ %.1165, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5235 = phi float [ %.4243, %.lr.ph ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172234 = phi double [ %.3171242, %.lr.ph ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %.4186233 = phi double [ %.3185241, %.lr.ph ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %i.lr = phi double [ %.promoted, %.lr.ph ], [ %i.my, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.ls = phi i64 [ %.promoted231, %.lr.ph ], [ %i.nc, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.lt = phi i64 [ %.promoted232, %.lr.ph ], [ %i.ng, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.lu = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lv = getelementptr inbounds i8, ptr %i.ka, i64 %indvars.iv
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !136
  %i.lx = uitofp i8 %i.lw to float
  %i.ly = fmul nnan float %i.lx, f0x3B808081
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.lz = phi float [ %i.ly, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 4 uses
  %i.ma = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.ma, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mb = getelementptr inbounds i8, ptr %i.kb, i64 %indvars.iv
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !136
  %i.md = uitofp i8 %i.mc to float
  %i.me = fmul nnan float %i.md, f0x3B808081
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.mf = phi float [ %i.me, %bb.bf ], [ 0.000000e+00, %bb.be ] ; 4 uses
  %i.mg = fpext float %i.lz to double
  %i.mh = fpext nnan ninf float %i.mf to double
  %i.mi = fmul nnan double %i.mh, 5.000000e-01
  %i.mj = call double @llvm.fmuladd.f64(double %i.mg, double 5.000000e-01, double %i.mi) ; 2 uses
  %i.mk = fptrunc double %i.mj to float
  %i.ml = fcmp olt float %i.lz, %i.mf
  %.sroa.speculated65.i120 = select i1 %i.ml, float %i.mf, float %i.lz ; 2 uses
  %i.mm = fcmp olt float %.5235, %.sroa.speculated65.i120
  %.sroa.speculated.i121 = select i1 %i.mm, float %.sroa.speculated65.i120, float %.5235 ; 2 uses
  %i.mn = fsub float %i.lz, %i.mf
  %i.mo = call noundef float @llvm.fabs.f32(float %i.mn) ; 3 uses
  %i.mp = fpext float %i.mo to double             ; 7 uses
  %i.mq = fpext float %i.mk to double
  %i.mr = fcmp ogt double %i.mj, f0x3690000000000000
  %i.ms = fdiv double %i.mp, %i.mq
  %i.mt = select i1 %i.mr, double %i.ms, double 0.000000e+00 ; 2 uses
  %i.mu = fadd double %.4172234, %i.mp            ; 2 uses
  %i.mv = call double @llvm.fmuladd.f64(double %i.mp, double %i.mp, double %.4186233) ; 2 uses
  %i.mw = fcmp ult double %i.lr, %i.mp
  br i1 %i.mw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store double %i.mp, ptr %i.ab, align 8, !tbaa !195
  store i32 %.pre.pre, ptr %i.ac, align 8, !tbaa !202
  store <2 x i32> %i.kc, ptr %i.ad, align 4, !tbaa !3
  %i.mx = trunc nsw i64 %indvars.iv to i32
  store i32 %i.mx, ptr %i.af, align 4, !tbaa !197
  br label %bb.bi
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_1L8compare_IhN9Imath_3_14halfEEEbRKNS0_8ImageBufES6_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1178253.us.us = phi i1 [ %.0177266.us.us, %.preheader.us.us ], [ %.2179.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1181252.us.us = phi i1 [ %.0180265.us.us, %.preheader.us.us ], [ %.3183.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2186251.us.us = phi double [ %.1185264.us.us, %.preheader.us.us ], [ %.6190.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065269.us.us, i32 noundef %.064256.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065269.us.us, i32 noundef %.064256.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre327 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065269.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre327, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3255.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3255.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2171254.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2186251.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065269.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1181252.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2182.us.us = phi i1 [ true, %bb.aj ], [ %.1181252.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1178253.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6190.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2186251.us.us, %bb.af ], [ %.2186251.us.us, %bb.ad ] ; 3 uses
  %.3183.us.us = phi i1 [ %.2182.us.us, %bb.al ], [ %.2182.us.us, %bb.ak ], [ %.1181252.us.us, %bb.af ], [ %.1181252.us.us, %bb.ad ] ; 2 uses
  %.2179.us.us = phi i1 [ true, %bb.al ], [ %.1178253.us.us, %bb.ak ], [ %.1178253.us.us, %bb.af ], [ %.1178253.us.us, %bb.ad ] ; 2 uses
  %.6175.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2171254.us.us, %bb.af ], [ %.2171254.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3255.us.us, %bb.af ], [ %.3255.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064256.us.us, 1       ; 2 uses
  %exitcond318.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond318.not, label %._crit_edge258.us.us, label %bb.ab, !llvm.loop !234

._crit_edge258.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.it = add nsw i32 %.065269.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge270.us, !llvm.loop !235

.split290.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.split293.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.split296.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.preheader197.split:                              ; preds = %.preheader197.split.preheader, %.critedge.loopexit196
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit196 ], [ 1.000000e+00, %.preheader197.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.pw, %.critedge.loopexit196 ], [ 0.000000e+00, %.preheader197.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.pv, %.critedge.loopexit196 ], [ 0.000000e+00, %.preheader197.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader197.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us285, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader197.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062250 = phi i32 [ %i.of, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4249 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3172248 = phi double [ %.4173.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3187247 = phi double [ %.4188.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 4 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond376 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond376, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit196, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted237 = load i64, ptr %i.ag, align 8
  %.promoted236 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load i32, ptr %i.am, align 8            ; 2 uses
  %i.kd = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.ke = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4188.lcssa = phi double [ %.3187247, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4173.lcssa = phi double [ %.3172248, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4249, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.kf = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kf, ptr %i.ak, align 4, !tbaa !176
  %i.kg = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kh = icmp slt i32 %i.kf, %i.kg
  br i1 %i.kh, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.ki = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre320 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kk = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.km = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kn = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %i.km
  store ptr %i.ko, ptr %i.aq, align 8, !tbaa !189
  %i.kp = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kf, %i.kp
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.cd

bb.av:                                            ; preds = %bb.as
  %i.kq = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ks = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kt = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.ks
  store ptr %i.ku, ptr %i.aq, align 8, !tbaa !189
  %i.kv = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kw = icmp slt i32 %i.kf, %i.kv               ; 3 uses
  %i.kx = load i32, ptr %i.bb, align 4
  %i.ky = icmp sge i32 %i.kf, %i.kx
  %not..i.i112 = xor i1 %i.kw, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.ky, !prof !191
  %i.kz = load ptr, ptr %i.bc, align 8
  %i.la = icmp eq ptr %i.kz, null
  %i.lb = select i1 %or.cond.i.i113, i1 true, i1 %i.la, !prof !191
  br i1 %i.lb, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lc = load ptr, ptr %8, align 8, !tbaa !182
  %i.ld = load i32, ptr %i.am, align 8, !tbaa !178
  %i.le = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lf = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i32 noundef %i.kf, i32 noundef %i.ld, i32 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kw, i32 noundef %i.lf)
          to label %.noexc116 unwind label %bb.cd

.noexc116:                                        ; preds = %bb.ax
  %i.lh = zext i1 %i.kw to i8
  store ptr %i.lg, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lh, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.li = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.li, ptr %i.ak, align 4, !tbaa !176
  %i.lj = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lk = add nsw i32 %i.lj, 1                    ; 3 uses
  store i32 %i.lk, ptr %i.am, align 8, !tbaa !178
  %i.ll = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lk, %i.ll
  %.pre321 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.lm, ptr %i.am, align 8, !tbaa !178
  %i.ln = add nsw i32 %.pre321, 1                 ; 3 uses
  store i32 %i.ln, ptr %i.ao, align 4, !tbaa !180
  %i.lo = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.ln, %i.lo
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lp = phi i32 [ %.pre321, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre320, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lk, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.li, %bb.ay ], [ %i.li, %bb.az ], [ %i.kf, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.lp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.cd

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.ke, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 7 uses
  %.0163242 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.0164241 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.5240 = phi float [ %.4249, %.lr.ph ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.4173239 = phi double [ %.3172248, %.lr.ph ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4188238 = phi double [ %.3187247, %.lr.ph ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.ls = phi double [ %.promoted, %.lr.ph ], [ %i.oe, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lt = phi i64 [ %.promoted236, %.lr.ph ], [ %i.od, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lu = phi i64 [ %.promoted237, %.lr.ph ], [ %i.oc, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lv = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lw = getelementptr inbounds i8, ptr %i.ka, i64 %indvars.iv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !136
  %i.ly = uitofp i8 %i.lx to float
  %i.lz = fmul nnan float %i.ly, f0x3B808081
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ma = phi float [ %i.lz, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 4 uses
  %i.mb = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.mb, label %bb.bf, label %.thread

bb.bf:                                            ; preds = %bb.be
  %i.mc = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %indvars.iv
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !216 ; 2 uses
  %i.me = zext i16 %i.md to i32
  %i.mf = shl nuw nsw i32 %i.me, 13
  %i.mg = and i32 %i.mf, 268427264                ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.md to i32
  %i.mh = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.mi = icmp samesign ugt i32 %i.mg, 8388607
  br i1 %i.mi, label %bb.bg, label %bb.bj, !prof !164

bb.bg:                                            ; preds = %bb.bf
  %i.mj = or disjoint i32 %i.mg, %i.mh            ; 2 uses
  %i.mk = icmp samesign ult i32 %i.mg, 260046848
  br i1 %i.mk, label %bb.bh, label %bb.bi, !prof !164

bb.bh:                                            ; preds = %bb.bg
  %i.ml = add nuw nsw i32 %i.mj, 939524096
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.mm = or i32 %i.mj, 2139095040
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bf
  %.not.i.i.i.i.i = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mn = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.mg, i1 true)
  %i.mo = add nsw i32 %i.mn, -8                   ; 2 uses
  %i.mp = shl i32 %i.mg, %i.mo
  %i.mq = or i32 %i.mh, %i.mp
  %i.mr = or i32 %i.mq, 947912704
  %i.ms = shl nuw nsw i32 %i.mo, 23
  %i.mt = sub nuw i32 %i.mr, %i.ms
end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_1L8compare_IhtEEbRKNS0_8ImageBufES4_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1176247.us.us = phi i1 [ %.0175260.us.us, %.preheader.us.us ], [ %.2177.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1179246.us.us = phi i1 [ %.0178259.us.us, %.preheader.us.us ], [ %.3181.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2184245.us.us = phi double [ %.1183258.us.us, %.preheader.us.us ], [ %.6188.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065263.us.us, i32 noundef %.064250.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065263.us.us, i32 noundef %.064250.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre321 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065263.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre321, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3249.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3249.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2170248.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2184245.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065263.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1179246.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2180.us.us = phi i1 [ true, %bb.aj ], [ %.1179246.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1176247.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6188.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2184245.us.us, %bb.af ], [ %.2184245.us.us, %bb.ad ] ; 3 uses
  %.3181.us.us = phi i1 [ %.2180.us.us, %bb.al ], [ %.2180.us.us, %bb.ak ], [ %.1179246.us.us, %bb.af ], [ %.1179246.us.us, %bb.ad ] ; 2 uses
  %.2177.us.us = phi i1 [ true, %bb.al ], [ %.1176247.us.us, %bb.ak ], [ %.1176247.us.us, %bb.af ], [ %.1176247.us.us, %bb.ad ] ; 2 uses
  %.6174.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2170248.us.us, %bb.af ], [ %.2170248.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3249.us.us, %bb.af ], [ %.3249.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064250.us.us, 1       ; 2 uses
  %exitcond312.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond312.not, label %._crit_edge252.us.us, label %bb.ab, !llvm.loop !238

._crit_edge252.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.it = add nsw i32 %.065263.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge264.us, !llvm.loop !239

.split284.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split287.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split290.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.preheader192.split:                              ; preds = %.preheader192.split.preheader, %.critedge.loopexit191
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit191 ], [ 1.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.oy, %.critedge.loopexit191 ], [ 0.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.ox, %.critedge.loopexit191 ], [ 0.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader192.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us279, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader192.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062244 = phi i32 [ %i.nh, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4243 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3171242 = phi double [ %.4172.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3185241 = phi double [ %.4186.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 3 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond368 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond368, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit191, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted232 = load i64, ptr %i.ag, align 8
  %.promoted231 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load <2 x i32>, ptr %i.am, align 8
  %i.kd = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4186.lcssa = phi double [ %.3185241, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172.lcssa = phi double [ %.3171242, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4243, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.ke = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.ke, ptr %i.ak, align 4, !tbaa !176
  %i.kf = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kg = icmp slt i32 %i.ke, %i.kf
  br i1 %i.kg, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.kh = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre314 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kj = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.kl = load i64, ptr %i.az, align 8, !tbaa !188
  %i.km = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 %i.kl
  store ptr %i.kn, ptr %i.aq, align 8, !tbaa !189
  %i.ko = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.ke, %i.ko
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.av:                                            ; preds = %bb.as
  %i.kp = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kr = load i64, ptr %i.az, align 8, !tbaa !188
  %i.ks = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 %i.kr
  store ptr %i.kt, ptr %i.aq, align 8, !tbaa !189
  %i.ku = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kv = icmp slt i32 %i.ke, %i.ku               ; 3 uses
  %i.kw = load i32, ptr %i.bb, align 4
  %i.kx = icmp sge i32 %i.ke, %i.kw
  %not..i.i112 = xor i1 %i.kv, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.kx, !prof !191
  %i.ky = load ptr, ptr %i.bc, align 8
  %i.kz = icmp eq ptr %i.ky, null
  %i.la = select i1 %or.cond.i.i113, i1 true, i1 %i.kz, !prof !191
  br i1 %i.la, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lb = load ptr, ptr %8, align 8, !tbaa !182
  %i.lc = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ld = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.le = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lf = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, i32 noundef %i.ke, i32 noundef %i.lc, i32 noundef %i.ld, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kv, i32 noundef %i.le)
          to label %.noexc116 unwind label %bb.bx

.noexc116:                                        ; preds = %bb.ax
  %i.lg = zext i1 %i.kv to i8
  store ptr %i.lf, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lg, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.lh = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.lh, ptr %i.ak, align 4, !tbaa !176
  %i.li = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lj = add nsw i32 %i.li, 1                    ; 3 uses
  store i32 %i.lj, ptr %i.am, align 8, !tbaa !178
  %i.lk = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lj, %i.lk
  %.pre315 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ll = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.ll, ptr %i.am, align 8, !tbaa !178
  %i.lm = add nsw i32 %.pre315, 1                 ; 3 uses
  store i32 %i.lm, ptr %i.ao, align 4, !tbaa !180
  %i.ln = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.lm, %i.ln
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lo = phi i32 [ %.pre315, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre314, %._crit_edge.i109 ]
  %i.lp = phi i32 [ %i.lj, %bb.ay ], [ %i.ll, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lh, %bb.ay ], [ %i.lh, %bb.az ], [ %i.ke, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lq, i32 noundef %i.lp, i32 noundef %i.lo)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.kd, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 6 uses
  %.0163237 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.0164236 = phi i1 [ false, %.lr.ph ], [ %.1165, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5235 = phi float [ %.4243, %.lr.ph ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172234 = phi double [ %.3171242, %.lr.ph ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %.4186233 = phi double [ %.3185241, %.lr.ph ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %i.lr = phi double [ %.promoted, %.lr.ph ], [ %i.my, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.ls = phi i64 [ %.promoted231, %.lr.ph ], [ %i.nc, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.lt = phi i64 [ %.promoted232, %.lr.ph ], [ %i.ng, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.lu = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lv = getelementptr inbounds i8, ptr %i.ka, i64 %indvars.iv
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !136
  %i.lx = uitofp i8 %i.lw to float
  %i.ly = fmul nnan float %i.lx, f0x3B808081
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.lz = phi float [ %i.ly, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 4 uses
  %i.ma = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.ma, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mb = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %indvars.iv
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !223
  %i.md = uitofp i16 %i.mc to float
  %i.me = fmul nnan float %i.md, f0x37800080
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.mf = phi float [ %i.me, %bb.bf ], [ 0.000000e+00, %bb.be ] ; 4 uses
  %i.mg = fpext float %i.lz to double
  %i.mh = fpext nnan ninf float %i.mf to double
  %i.mi = fmul nnan double %i.mh, 5.000000e-01
  %i.mj = call double @llvm.fmuladd.f64(double %i.mg, double 5.000000e-01, double %i.mi) ; 2 uses
  %i.mk = fptrunc double %i.mj to float
  %i.ml = fcmp olt float %i.lz, %i.mf
  %.sroa.speculated65.i120 = select i1 %i.ml, float %i.mf, float %i.lz ; 2 uses
  %i.mm = fcmp olt float %.5235, %.sroa.speculated65.i120
  %.sroa.speculated.i121 = select i1 %i.mm, float %.sroa.speculated65.i120, float %.5235 ; 2 uses
  %i.mn = fsub float %i.lz, %i.mf
  %i.mo = call noundef float @llvm.fabs.f32(float %i.mn) ; 3 uses
  %i.mp = fpext float %i.mo to double             ; 7 uses
  %i.mq = fpext float %i.mk to double
  %i.mr = fcmp ogt double %i.mj, f0x3690000000000000
  %i.ms = fdiv double %i.mp, %i.mq
  %i.mt = select i1 %i.mr, double %i.ms, double 0.000000e+00 ; 2 uses
  %i.mu = fadd double %.4172234, %i.mp            ; 2 uses
  %i.mv = call double @llvm.fmuladd.f64(double %i.mp, double %i.mp, double %.4186233) ; 2 uses
  %i.mw = fcmp ult double %i.lr, %i.mp
  br i1 %i.mw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store double %i.mp, ptr %i.ab, align 8, !tbaa !195
  store i32 %.pre.pre, ptr %i.ac, align 8, !tbaa !202
  store <2 x i32> %i.kc, ptr %i.ad, align 4, !tbaa !3
  %i.mx = trunc nsw i64 %indvars.iv to i32
  store i32 %i.mx, ptr %i.af, align 4, !tbaa !197
  br label %bb.bi
end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_1L8compare_IN9Imath_3_14halfEfEEbRKNS0_8ImageBufES6_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1178251.us.us = phi i1 [ %.0177264.us.us, %.preheader.us.us ], [ %.2179.us.us, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us ] ; 4 uses
  %.1181250.us.us = phi i1 [ %.0180263.us.us, %.preheader.us.us ], [ %.3183.us.us, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us ] ; 4 uses
  %.2186249.us.us = phi double [ %.1185262.us.us, %.preheader.us.us ], [ %.6190.us.us, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065267.us.us, i32 noundef %.064254.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065267.us.us, i32 noundef %.064254.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre324 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065267.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre324, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3253.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3253.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2171252.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2186249.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065267.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1181250.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2182.us.us = phi i1 [ true, %bb.aj ], [ %.1181250.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1178251.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6190.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2186249.us.us, %bb.af ], [ %.2186249.us.us, %bb.ad ] ; 3 uses
  %.3183.us.us = phi i1 [ %.2182.us.us, %bb.al ], [ %.2182.us.us, %bb.ak ], [ %.1181250.us.us, %bb.af ], [ %.1181250.us.us, %bb.ad ] ; 2 uses
  %.2179.us.us = phi i1 [ true, %bb.al ], [ %.1178251.us.us, %bb.ak ], [ %.1178251.us.us, %bb.af ], [ %.1178251.us.us, %bb.ad ] ; 2 uses
  %.6175.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2171252.us.us, %bb.af ], [ %.2171252.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3253.us.us, %bb.af ], [ %.3253.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064254.us.us, 1       ; 2 uses
  %exitcond315.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond315.not, label %._crit_edge256.us.us, label %bb.ab, !llvm.loop !242

._crit_edge256.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us
  %i.it = add nsw i32 %.065267.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge268.us, !llvm.loop !243

.split288.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.split291.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.split294.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.preheader195.split:                              ; preds = %.preheader195.split.preheader, %.critedge.loopexit194
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit194 ], [ 1.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.qb, %.critedge.loopexit194 ], [ 0.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.qa, %.critedge.loopexit194 ], [ 0.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader195.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us283, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader195.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062248 = phi i32 [ %i.ok, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4247 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3172246 = phi double [ %.4173.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3187245 = phi double [ %.4188.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 4 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond372 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond372, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit194, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted235 = load i64, ptr %i.ag, align 8
  %.promoted234 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load i32, ptr %i.am, align 8            ; 2 uses
  %i.kd = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.ke = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4188.lcssa = phi double [ %.3187245, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 2 uses
  %.4173.lcssa = phi double [ %.3172246, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4247, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 2 uses
  %i.kf = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kf, ptr %i.ak, align 4, !tbaa !176
  %i.kg = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kh = icmp slt i32 %i.kf, %i.kg
  br i1 %i.kh, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.ki = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre317 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kk = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.km = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kn = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %i.km
  store ptr %i.ko, ptr %i.aq, align 8, !tbaa !189
  %i.kp = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kf, %i.kp
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.ch

bb.av:                                            ; preds = %bb.as
  %i.kq = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ks = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kt = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.ks
  store ptr %i.ku, ptr %i.aq, align 8, !tbaa !189
  %i.kv = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kw = icmp slt i32 %i.kf, %i.kv               ; 3 uses
  %i.kx = load i32, ptr %i.bb, align 4
  %i.ky = icmp sge i32 %i.kf, %i.kx
  %not..i.i112 = xor i1 %i.kw, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.ky, !prof !191
  %i.kz = load ptr, ptr %i.bc, align 8
  %i.la = icmp eq ptr %i.kz, null
  %i.lb = select i1 %or.cond.i.i113, i1 true, i1 %i.la, !prof !191
  br i1 %i.lb, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lc = load ptr, ptr %8, align 8, !tbaa !182
  %i.ld = load i32, ptr %i.am, align 8, !tbaa !178
  %i.le = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lf = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i32 noundef %i.kf, i32 noundef %i.ld, i32 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kw, i32 noundef %i.lf)
          to label %.noexc116 unwind label %bb.ch

.noexc116:                                        ; preds = %bb.ax
  %i.lh = zext i1 %i.kw to i8
  store ptr %i.lg, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lh, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.li = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.li, ptr %i.ak, align 4, !tbaa !176
  %i.lj = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lk = add nsw i32 %i.lj, 1                    ; 3 uses
  store i32 %i.lk, ptr %i.am, align 8, !tbaa !178
  %i.ll = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lk, %i.ll
  %.pre318 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.lm, ptr %i.am, align 8, !tbaa !178
  %i.ln = add nsw i32 %.pre318, 1                 ; 3 uses
  store i32 %i.ln, ptr %i.ao, align 4, !tbaa !180
  %i.lo = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.ln, %i.lo
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lp = phi i32 [ %.pre318, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre317, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lk, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.li, %bb.ay ], [ %i.li, %bb.az ], [ %i.kf, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.lp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.ch

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128
  %indvars.iv = phi i64 [ %i.ke, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 7 uses
  %.0163240 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 4 uses
  %.0164239 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 4 uses
  %.5238 = phi float [ %.4247, %.lr.ph ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 4 uses
  %.4173237 = phi double [ %.3172246, %.lr.ph ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 3 uses
  %.4188236 = phi double [ %.3187245, %.lr.ph ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 3 uses
  %i.ls = phi double [ %.promoted, %.lr.ph ], [ %i.oj, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 4 uses
  %i.lt = phi i64 [ %.promoted234, %.lr.ph ], [ %i.oi, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 4 uses
  %i.lu = phi i64 [ %.promoted235, %.lr.ph ], [ %i.oh, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 4 uses
  %i.lv = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lv, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.lw = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %indvars.iv
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !216 ; 2 uses
  %i.ly = zext i16 %i.lx to i32
  %i.lz = shl nuw nsw i32 %i.ly, 13
  %i.ma = and i32 %i.lz, 268427264                ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.lx to i32
  %i.mb = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.mc = icmp samesign ugt i32 %i.ma, 8388607
  br i1 %i.mc, label %bb.be, label %bb.bh, !prof !164

bb.be:                                            ; preds = %bb.bd
  %i.md = or disjoint i32 %i.ma, %i.mb            ; 2 uses
  %i.me = icmp samesign ult i32 %i.ma, 260046848
  br i1 %i.me, label %bb.bf, label %bb.bg, !prof !164

bb.bf:                                            ; preds = %bb.be
  %i.mf = add nuw nsw i32 %i.md, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.bg:                                            ; preds = %bb.be
  %i.mg = or i32 %i.md, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.bh:                                            ; preds = %bb.bd
  %.not.i.i.i.i.i = icmp eq i32 %i.ma, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mh = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ma, i1 true)
  %i.mi = add nsw i32 %i.mh, -8                   ; 2 uses
  %i.mj = shl i32 %i.ma, %i.mi
  %i.mk = or i32 %i.mb, %i.mj
  %i.ml = or i32 %i.mk, 947912704
  %i.mm = shl nuw nsw i32 %i.mi, 23
  %i.mn = sub nuw i32 %i.ml, %i.mm
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit: ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.mf, %bb.bf ], [ %i.mg, %bb.bg ], [ %i.mn, %bb.bi ], [ %i.mb, %bb.bh ]
  %i.mo = bitcast i32 %.sroa.0.0.i.i.i.i.i to float
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, %bb.bc
  %i.mp = phi float [ %i.mo, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit ], [ 0.000000e+00, %bb.bc ] ; 3 uses
  %i.mq = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.mq, label %bb.bk, label %bb.bl

end_hunk_8
begin_hunk_9_@_ZN11OpenImageIO4v3_1L8compare_IN9Imath_3_14halfEhEEbRKNS0_8ImageBufES6_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1178251.us.us = phi i1 [ %.0177264.us.us, %.preheader.us.us ], [ %.2179.us.us, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us ] ; 4 uses
  %.1181250.us.us = phi i1 [ %.0180263.us.us, %.preheader.us.us ], [ %.3183.us.us, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us ] ; 4 uses
  %.2186249.us.us = phi double [ %.1185262.us.us, %.preheader.us.us ], [ %.6190.us.us, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065267.us.us, i32 noundef %.064254.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065267.us.us, i32 noundef %.064254.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre325 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065267.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre325, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3253.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3253.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2171252.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2186249.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065267.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1181250.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2182.us.us = phi i1 [ true, %bb.aj ], [ %.1181250.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1178251.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6190.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2186249.us.us, %bb.af ], [ %.2186249.us.us, %bb.ad ] ; 3 uses
  %.3183.us.us = phi i1 [ %.2182.us.us, %bb.al ], [ %.2182.us.us, %bb.ak ], [ %.1181250.us.us, %bb.af ], [ %.1181250.us.us, %bb.ad ] ; 2 uses
  %.2179.us.us = phi i1 [ true, %bb.al ], [ %.1178251.us.us, %bb.ak ], [ %.1178251.us.us, %bb.af ], [ %.1178251.us.us, %bb.ad ] ; 2 uses
  %.6175.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2171252.us.us, %bb.af ], [ %.2171252.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3253.us.us, %bb.af ], [ %.3253.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064254.us.us, 1       ; 2 uses
  %exitcond316.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond316.not, label %._crit_edge256.us.us, label %bb.ab, !llvm.loop !246

._crit_edge256.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us
  %i.it = add nsw i32 %.065267.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge268.us, !llvm.loop !247

.split288.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.split291.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.split294.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.preheader195.split:                              ; preds = %.preheader195.split.preheader, %.critedge.loopexit194
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit194 ], [ 1.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.pv, %.critedge.loopexit194 ], [ 0.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.pu, %.critedge.loopexit194 ], [ 0.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader195.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us283, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader195.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062248 = phi i32 [ %i.oe, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4247 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3172246 = phi double [ %.4173.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3187245 = phi double [ %.4188.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 4 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond374 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond374, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit194, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted235 = load i64, ptr %i.ag, align 8
  %.promoted234 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load i32, ptr %i.am, align 8            ; 2 uses
  %i.kd = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.ke = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4188.lcssa = phi double [ %.3187245, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 2 uses
  %.4173.lcssa = phi double [ %.3172246, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4247, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 2 uses
  %i.kf = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kf, ptr %i.ak, align 4, !tbaa !176
  %i.kg = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kh = icmp slt i32 %i.kf, %i.kg
  br i1 %i.kh, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.ki = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre318 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kk = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.km = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kn = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %i.km
  store ptr %i.ko, ptr %i.aq, align 8, !tbaa !189
  %i.kp = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kf, %i.kp
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.ce

bb.av:                                            ; preds = %bb.as
  %i.kq = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ks = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kt = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.ks
  store ptr %i.ku, ptr %i.aq, align 8, !tbaa !189
  %i.kv = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kw = icmp slt i32 %i.kf, %i.kv               ; 3 uses
  %i.kx = load i32, ptr %i.bb, align 4
  %i.ky = icmp sge i32 %i.kf, %i.kx
  %not..i.i112 = xor i1 %i.kw, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.ky, !prof !191
  %i.kz = load ptr, ptr %i.bc, align 8
  %i.la = icmp eq ptr %i.kz, null
  %i.lb = select i1 %or.cond.i.i113, i1 true, i1 %i.la, !prof !191
  br i1 %i.lb, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lc = load ptr, ptr %8, align 8, !tbaa !182
  %i.ld = load i32, ptr %i.am, align 8, !tbaa !178
  %i.le = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lf = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i32 noundef %i.kf, i32 noundef %i.ld, i32 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kw, i32 noundef %i.lf)
          to label %.noexc116 unwind label %bb.ce

.noexc116:                                        ; preds = %bb.ax
  %i.lh = zext i1 %i.kw to i8
  store ptr %i.lg, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lh, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.li = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.li, ptr %i.ak, align 4, !tbaa !176
  %i.lj = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lk = add nsw i32 %i.lj, 1                    ; 3 uses
  store i32 %i.lk, ptr %i.am, align 8, !tbaa !178
  %i.ll = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lk, %i.ll
  %.pre319 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.lm, ptr %i.am, align 8, !tbaa !178
  %i.ln = add nsw i32 %.pre319, 1                 ; 3 uses
  store i32 %i.ln, ptr %i.ao, align 4, !tbaa !180
  %i.lo = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.ln, %i.lo
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lp = phi i32 [ %.pre319, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre318, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lk, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.li, %bb.ay ], [ %i.li, %bb.az ], [ %i.kf, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.lp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.ce

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128
  %indvars.iv = phi i64 [ %i.ke, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 7 uses
  %.0163240 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 3 uses
  %.0164239 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 3 uses
  %.5238 = phi float [ %.4247, %.lr.ph ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 3 uses
  %.4173237 = phi double [ %.3172246, %.lr.ph ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 2 uses
  %.4188236 = phi double [ %.3187245, %.lr.ph ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 2 uses
  %i.ls = phi double [ %.promoted, %.lr.ph ], [ %i.od, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 3 uses
  %i.lt = phi i64 [ %.promoted234, %.lr.ph ], [ %i.oc, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 3 uses
  %i.lu = phi i64 [ %.promoted235, %.lr.ph ], [ %i.ob, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 3 uses
  %i.lv = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lv, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.lw = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %indvars.iv
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !216 ; 2 uses
  %i.ly = zext i16 %i.lx to i32
  %i.lz = shl nuw nsw i32 %i.ly, 13
  %i.ma = and i32 %i.lz, 268427264                ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.lx to i32
  %i.mb = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.mc = icmp samesign ugt i32 %i.ma, 8388607
  br i1 %i.mc, label %bb.be, label %bb.bh, !prof !164

bb.be:                                            ; preds = %bb.bd
  %i.md = or disjoint i32 %i.ma, %i.mb            ; 2 uses
  %i.me = icmp samesign ult i32 %i.ma, 260046848
  br i1 %i.me, label %bb.bf, label %bb.bg, !prof !164

bb.bf:                                            ; preds = %bb.be
  %i.mf = add nuw nsw i32 %i.md, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.bg:                                            ; preds = %bb.be
  %i.mg = or i32 %i.md, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.bh:                                            ; preds = %bb.bd
  %.not.i.i.i.i.i = icmp eq i32 %i.ma, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mh = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ma, i1 true)
  %i.mi = add nsw i32 %i.mh, -8                   ; 2 uses
  %i.mj = shl i32 %i.ma, %i.mi
  %i.mk = or i32 %i.mb, %i.mj
  %i.ml = or i32 %i.mk, 947912704
  %i.mm = shl nuw nsw i32 %i.mi, 23
  %i.mn = sub nuw i32 %i.ml, %i.mm
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit: ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.mf, %bb.bf ], [ %i.mg, %bb.bg ], [ %i.mn, %bb.bi ], [ %i.mb, %bb.bh ]
  %i.mo = bitcast i32 %.sroa.0.0.i.i.i.i.i to float
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, %bb.bc
  %i.mp = phi float [ %i.mo, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit ], [ 0.000000e+00, %bb.bc ] ; 2 uses
  %i.mq = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.mq, label %bb.bk, label %bb.bl

end_hunk_9
begin_hunk_10_@_ZN11OpenImageIO4v3_1L8compare_IN9Imath_3_14halfES3_EEbRKNS0_8ImageBufES6_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1182255.us.us = phi i1 [ %.0181268.us.us, %.preheader.us.us ], [ %.2183.us.us, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us ] ; 4 uses
  %.1185254.us.us = phi i1 [ %.0184267.us.us, %.preheader.us.us ], [ %.3187.us.us, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us ] ; 4 uses
  %.2190253.us.us = phi double [ %.1189266.us.us, %.preheader.us.us ], [ %.6194.us.us, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065271.us.us, i32 noundef %.064258.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065271.us.us, i32 noundef %.064258.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre328 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065271.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre328, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3257.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3257.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2175256.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2190253.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065271.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1185254.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2186.us.us = phi i1 [ true, %bb.aj ], [ %.1185254.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1182255.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6194.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2190253.us.us, %bb.af ], [ %.2190253.us.us, %bb.ad ] ; 3 uses
  %.3187.us.us = phi i1 [ %.2186.us.us, %bb.al ], [ %.2186.us.us, %bb.ak ], [ %.1185254.us.us, %bb.af ], [ %.1185254.us.us, %bb.ad ] ; 2 uses
  %.2183.us.us = phi i1 [ true, %bb.al ], [ %.1182255.us.us, %bb.ak ], [ %.1182255.us.us, %bb.af ], [ %.1182255.us.us, %bb.ad ] ; 2 uses
  %.6179.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2175256.us.us, %bb.af ], [ %.2175256.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3257.us.us, %bb.af ], [ %.3257.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064258.us.us, 1       ; 2 uses
  %exitcond319.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond319.not, label %._crit_edge260.us.us, label %bb.ab, !llvm.loop !250

._crit_edge260.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us
  %i.it = add nsw i32 %.065271.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge272.us, !llvm.loop !251

.split292.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.split295.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.split298.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.preheader199.split:                              ; preds = %.preheader199.split.preheader, %.critedge.loopexit198
  %.0170 = phi float [ %.4.lcssa, %.critedge.loopexit198 ], [ 1.000000e+00, %.preheader199.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.qs, %.critedge.loopexit198 ], [ 0.000000e+00, %.preheader199.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.qr, %.critedge.loopexit198 ], [ 0.000000e+00, %.preheader199.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader199.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us287, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader199.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit149

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit144
  %.062252 = phi i32 [ %i.pb, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit144 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4251 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit144 ], [ %.0170, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3176250 = phi double [ %.4177.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit144 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3191249 = phi double [ %.4192.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit144 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 4 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond378 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond378, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit198, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted239 = load i64, ptr %i.ag, align 8
  %.promoted238 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load i32, ptr %i.am, align 8            ; 2 uses
  %i.kd = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.ke = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit132, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4192.lcssa = phi double [ %.3191249, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7195, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit132 ] ; 2 uses
  %.4177.lcssa = phi double [ %.3176250, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7180, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit132 ] ; 2 uses
  %.5.lcssa = phi float [ %.4251, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit132 ] ; 2 uses
  %i.kf = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kf, ptr %i.ak, align 4, !tbaa !176
  %i.kg = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kh = icmp slt i32 %i.kf, %i.kg
  br i1 %i.kh, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.ki = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre321 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kk = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.km = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kn = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %i.km
  store ptr %i.ko, ptr %i.aq, align 8, !tbaa !189
  %i.kp = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kf, %i.kp
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.cm

bb.av:                                            ; preds = %bb.as
  %i.kq = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ks = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kt = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.ks
  store ptr %i.ku, ptr %i.aq, align 8, !tbaa !189
  %i.kv = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kw = icmp slt i32 %i.kf, %i.kv               ; 3 uses
  %i.kx = load i32, ptr %i.bb, align 4
  %i.ky = icmp sge i32 %i.kf, %i.kx
  %not..i.i112 = xor i1 %i.kw, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.ky, !prof !191
  %i.kz = load ptr, ptr %i.bc, align 8
  %i.la = icmp eq ptr %i.kz, null
  %i.lb = select i1 %or.cond.i.i113, i1 true, i1 %i.la, !prof !191
  br i1 %i.lb, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lc = load ptr, ptr %8, align 8, !tbaa !182
  %i.ld = load i32, ptr %i.am, align 8, !tbaa !178
  %i.le = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lf = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i32 noundef %i.kf, i32 noundef %i.ld, i32 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kw, i32 noundef %i.lf)
          to label %.noexc116 unwind label %bb.cm

.noexc116:                                        ; preds = %bb.ax
  %i.lh = zext i1 %i.kw to i8
  store ptr %i.lg, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lh, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.li = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.li, ptr %i.ak, align 4, !tbaa !176
  %i.lj = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lk = add nsw i32 %i.lj, 1                    ; 3 uses
  store i32 %i.lk, ptr %i.am, align 8, !tbaa !178
  %i.ll = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lk, %i.ll
  %.pre322 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.lm, ptr %i.am, align 8, !tbaa !178
  %i.ln = add nsw i32 %.pre322, 1                 ; 3 uses
  store i32 %i.ln, ptr %i.ao, align 4, !tbaa !180
  %i.lo = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.ln, %i.lo
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lp = phi i32 [ %.pre322, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre321, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lk, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.li, %bb.ay ], [ %i.li, %bb.az ], [ %i.kf, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.lp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.cm

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit132
  %indvars.iv = phi i64 [ %i.ke, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit132 ] ; 7 uses
  %.0167244 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit132 ] ; 4 uses
  %.0168243 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit132 ] ; 4 uses
  %.5242 = phi float [ %.4251, %.lr.ph ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit132 ] ; 4 uses
  %.4177241 = phi double [ %.3176250, %.lr.ph ], [ %.7180, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit132 ] ; 3 uses
  %.4192240 = phi double [ %.3191249, %.lr.ph ], [ %.7195, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit132 ] ; 3 uses
  %i.ls = phi double [ %.promoted, %.lr.ph ], [ %i.pa, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit132 ] ; 4 uses
  %i.lt = phi i64 [ %.promoted238, %.lr.ph ], [ %i.oz, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit132 ] ; 4 uses
  %i.lu = phi i64 [ %.promoted239, %.lr.ph ], [ %i.oy, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit132 ] ; 4 uses
  %i.lv = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lv, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.lw = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %indvars.iv
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !216 ; 2 uses
  %i.ly = zext i16 %i.lx to i32
  %i.lz = shl nuw nsw i32 %i.ly, 13
  %i.ma = and i32 %i.lz, 268427264                ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.lx to i32
  %i.mb = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.mc = icmp samesign ugt i32 %i.ma, 8388607
  br i1 %i.mc, label %bb.be, label %bb.bh, !prof !164

bb.be:                                            ; preds = %bb.bd
  %i.md = or disjoint i32 %i.ma, %i.mb            ; 2 uses
  %i.me = icmp samesign ult i32 %i.ma, 260046848
  br i1 %i.me, label %bb.bf, label %bb.bg, !prof !164

bb.bf:                                            ; preds = %bb.be
  %i.mf = add nuw nsw i32 %i.md, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.bg:                                            ; preds = %bb.be
  %i.mg = or i32 %i.md, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.bh:                                            ; preds = %bb.bd
  %.not.i.i.i.i.i = icmp eq i32 %i.ma, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mh = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ma, i1 true)
  %i.mi = add nsw i32 %i.mh, -8                   ; 2 uses
  %i.mj = shl i32 %i.ma, %i.mi
  %i.mk = or i32 %i.mb, %i.mj
  %i.ml = or i32 %i.mk, 947912704
  %i.mm = shl nuw nsw i32 %i.mi, 23
  %i.mn = sub nuw i32 %i.ml, %i.mm
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit: ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.mf, %bb.bf ], [ %i.mg, %bb.bg ], [ %i.mn, %bb.bi ], [ %i.mb, %bb.bh ]
  %i.mo = bitcast i32 %.sroa.0.0.i.i.i.i.i to float
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, %bb.bc
  %i.mp = phi float [ %i.mo, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit ], [ 0.000000e+00, %bb.bc ] ; 3 uses
  %i.mq = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.mq, label %bb.bk, label %bb.bq

end_hunk_10
begin_hunk_11_@_ZN11OpenImageIO4v3_1L8compare_IN9Imath_3_14halfEtEEbRKNS0_8ImageBufES6_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1178251.us.us = phi i1 [ %.0177264.us.us, %.preheader.us.us ], [ %.2179.us.us, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us ] ; 4 uses
  %.1181250.us.us = phi i1 [ %.0180263.us.us, %.preheader.us.us ], [ %.3183.us.us, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us ] ; 4 uses
  %.2186249.us.us = phi double [ %.1185262.us.us, %.preheader.us.us ], [ %.6190.us.us, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065267.us.us, i32 noundef %.064254.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065267.us.us, i32 noundef %.064254.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre325 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065267.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre325, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3253.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3253.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2171252.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2186249.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065267.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1181250.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2182.us.us = phi i1 [ true, %bb.aj ], [ %.1181250.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1178251.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6190.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2186249.us.us, %bb.af ], [ %.2186249.us.us, %bb.ad ] ; 3 uses
  %.3183.us.us = phi i1 [ %.2182.us.us, %bb.al ], [ %.2182.us.us, %bb.ak ], [ %.1181250.us.us, %bb.af ], [ %.1181250.us.us, %bb.ad ] ; 2 uses
  %.2179.us.us = phi i1 [ true, %bb.al ], [ %.1178251.us.us, %bb.ak ], [ %.1178251.us.us, %bb.af ], [ %.1178251.us.us, %bb.ad ] ; 2 uses
  %.6175.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2171252.us.us, %bb.af ], [ %.2171252.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3253.us.us, %bb.af ], [ %.3253.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064254.us.us, 1       ; 2 uses
  %exitcond316.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond316.not, label %._crit_edge256.us.us, label %bb.ab, !llvm.loop !254

._crit_edge256.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit.us.us
  %i.it = add nsw i32 %.065267.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge268.us, !llvm.loop !255

.split288.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.split291.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.split294.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.preheader195.split:                              ; preds = %.preheader195.split.preheader, %.critedge.loopexit194
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit194 ], [ 1.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.pv, %.critedge.loopexit194 ], [ 0.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.pu, %.critedge.loopexit194 ], [ 0.000000e+00, %.preheader195.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader195.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us283, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader195.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062248 = phi i32 [ %i.oe, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4247 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3172246 = phi double [ %.4173.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3187245 = phi double [ %.4188.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 4 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond374 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond374, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit194, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted235 = load i64, ptr %i.ag, align 8
  %.promoted234 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load i32, ptr %i.am, align 8            ; 2 uses
  %i.kd = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.ke = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4188.lcssa = phi double [ %.3187245, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 2 uses
  %.4173.lcssa = phi double [ %.3172246, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4247, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 2 uses
  %i.kf = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kf, ptr %i.ak, align 4, !tbaa !176
  %i.kg = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kh = icmp slt i32 %i.kf, %i.kg
  br i1 %i.kh, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.ki = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre318 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kk = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.km = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kn = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %i.km
  store ptr %i.ko, ptr %i.aq, align 8, !tbaa !189
  %i.kp = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kf, %i.kp
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.ce

bb.av:                                            ; preds = %bb.as
  %i.kq = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ks = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kt = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.ks
  store ptr %i.ku, ptr %i.aq, align 8, !tbaa !189
  %i.kv = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kw = icmp slt i32 %i.kf, %i.kv               ; 3 uses
  %i.kx = load i32, ptr %i.bb, align 4
  %i.ky = icmp sge i32 %i.kf, %i.kx
  %not..i.i112 = xor i1 %i.kw, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.ky, !prof !191
  %i.kz = load ptr, ptr %i.bc, align 8
  %i.la = icmp eq ptr %i.kz, null
  %i.lb = select i1 %or.cond.i.i113, i1 true, i1 %i.la, !prof !191
  br i1 %i.lb, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lc = load ptr, ptr %8, align 8, !tbaa !182
  %i.ld = load i32, ptr %i.am, align 8, !tbaa !178
  %i.le = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lf = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i32 noundef %i.kf, i32 noundef %i.ld, i32 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kw, i32 noundef %i.lf)
          to label %.noexc116 unwind label %bb.ce

.noexc116:                                        ; preds = %bb.ax
  %i.lh = zext i1 %i.kw to i8
  store ptr %i.lg, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lh, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.li = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.li, ptr %i.ak, align 4, !tbaa !176
  %i.lj = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lk = add nsw i32 %i.lj, 1                    ; 3 uses
  store i32 %i.lk, ptr %i.am, align 8, !tbaa !178
  %i.ll = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lk, %i.ll
  %.pre319 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.lm, ptr %i.am, align 8, !tbaa !178
  %i.ln = add nsw i32 %.pre319, 1                 ; 3 uses
  store i32 %i.ln, ptr %i.ao, align 4, !tbaa !180
  %i.lo = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.ln, %i.lo
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lp = phi i32 [ %.pre319, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre318, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lk, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.li, %bb.ay ], [ %i.li, %bb.az ], [ %i.kf, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.lp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.ce

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128
  %indvars.iv = phi i64 [ %i.ke, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 7 uses
  %.0163240 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 3 uses
  %.0164239 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 3 uses
  %.5238 = phi float [ %.4247, %.lr.ph ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 3 uses
  %.4173237 = phi double [ %.3172246, %.lr.ph ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 2 uses
  %.4188236 = phi double [ %.3187245, %.lr.ph ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 2 uses
  %i.ls = phi double [ %.promoted, %.lr.ph ], [ %i.od, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 3 uses
  %i.lt = phi i64 [ %.promoted234, %.lr.ph ], [ %i.oc, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 3 uses
  %i.lu = phi i64 [ %.promoted235, %.lr.ph ], [ %i.ob, %_ZN11OpenImageIO4v3_113compare_valueIN9Imath_3_14halfEfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S9_RNS0_12ImageBufAlgo14CompareResultsERfRdSE_RbSF_ffff.exit128 ] ; 3 uses
  %i.lv = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lv, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.lw = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %indvars.iv
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !216 ; 2 uses
  %i.ly = zext i16 %i.lx to i32
  %i.lz = shl nuw nsw i32 %i.ly, 13
  %i.ma = and i32 %i.lz, 268427264                ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.lx to i32
  %i.mb = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.mc = icmp samesign ugt i32 %i.ma, 8388607
  br i1 %i.mc, label %bb.be, label %bb.bh, !prof !164

bb.be:                                            ; preds = %bb.bd
  %i.md = or disjoint i32 %i.ma, %i.mb            ; 2 uses
  %i.me = icmp samesign ult i32 %i.ma, 260046848
  br i1 %i.me, label %bb.bf, label %bb.bg, !prof !164

bb.bf:                                            ; preds = %bb.be
  %i.mf = add nuw nsw i32 %i.md, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.bg:                                            ; preds = %bb.be
  %i.mg = or i32 %i.md, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.bh:                                            ; preds = %bb.bd
  %.not.i.i.i.i.i = icmp eq i32 %i.ma, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mh = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ma, i1 true)
  %i.mi = add nsw i32 %i.mh, -8                   ; 2 uses
  %i.mj = shl i32 %i.ma, %i.mi
  %i.mk = or i32 %i.mb, %i.mj
  %i.ml = or i32 %i.mk, 947912704
  %i.mm = shl nuw nsw i32 %i.mi, 23
  %i.mn = sub nuw i32 %i.ml, %i.mm
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit: ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.mf, %bb.bf ], [ %i.mg, %bb.bg ], [ %i.mn, %bb.bi ], [ %i.mb, %bb.bh ]
  %i.mo = bitcast i32 %.sroa.0.0.i.i.i.i.i to float
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, %bb.bc
  %i.mp = phi float [ %i.mo, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit ], [ 0.000000e+00, %bb.bc ] ; 2 uses
  %i.mq = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.mq, label %bb.bk, label %bb.bl

end_hunk_11
begin_hunk_12_@_ZN11OpenImageIO4v3_1L8compare_ItfEEbRKNS0_8ImageBufES4_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1178253.us.us = phi i1 [ %.0177266.us.us, %.preheader.us.us ], [ %.2179.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1181252.us.us = phi i1 [ %.0180265.us.us, %.preheader.us.us ], [ %.3183.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2186251.us.us = phi double [ %.1185264.us.us, %.preheader.us.us ], [ %.6190.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065269.us.us, i32 noundef %.064256.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065269.us.us, i32 noundef %.064256.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre327 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065269.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre327, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3255.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3255.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2171254.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2186251.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065269.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1181252.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2182.us.us = phi i1 [ true, %bb.aj ], [ %.1181252.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1178253.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6190.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2186251.us.us, %bb.af ], [ %.2186251.us.us, %bb.ad ] ; 3 uses
  %.3183.us.us = phi i1 [ %.2182.us.us, %bb.al ], [ %.2182.us.us, %bb.ak ], [ %.1181252.us.us, %bb.af ], [ %.1181252.us.us, %bb.ad ] ; 2 uses
  %.2179.us.us = phi i1 [ true, %bb.al ], [ %.1178253.us.us, %bb.ak ], [ %.1178253.us.us, %bb.af ], [ %.1178253.us.us, %bb.ad ] ; 2 uses
  %.6175.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2171254.us.us, %bb.af ], [ %.2171254.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3255.us.us, %bb.af ], [ %.3255.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064256.us.us, 1       ; 2 uses
  %exitcond318.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond318.not, label %._crit_edge258.us.us, label %bb.ab, !llvm.loop !258

._crit_edge258.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.it = add nsw i32 %.065269.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge270.us, !llvm.loop !259

.split290.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split293.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split296.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.preheader197.split:                              ; preds = %.preheader197.split.preheader, %.critedge.loopexit196
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit196 ], [ 1.000000e+00, %.preheader197.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.pf, %.critedge.loopexit196 ], [ 0.000000e+00, %.preheader197.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.pe, %.critedge.loopexit196 ], [ 0.000000e+00, %.preheader197.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader197.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us285, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader197.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062250 = phi i32 [ %i.no, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4249 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3172248 = phi double [ %.4173.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3187247 = phi double [ %.4188.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 4 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond374 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond374, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit196, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted237 = load i64, ptr %i.ag, align 8
  %.promoted236 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load i32, ptr %i.am, align 8            ; 2 uses
  %i.kd = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.ke = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4188.lcssa = phi double [ %.3187247, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4173.lcssa = phi double [ %.3172248, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4249, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.kf = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kf, ptr %i.ak, align 4, !tbaa !176
  %i.kg = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kh = icmp slt i32 %i.kf, %i.kg
  br i1 %i.kh, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.ki = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre320 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kk = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.km = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kn = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %i.km
  store ptr %i.ko, ptr %i.aq, align 8, !tbaa !189
  %i.kp = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kf, %i.kp
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.av:                                            ; preds = %bb.as
  %i.kq = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ks = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kt = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.ks
  store ptr %i.ku, ptr %i.aq, align 8, !tbaa !189
  %i.kv = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kw = icmp slt i32 %i.kf, %i.kv               ; 3 uses
  %i.kx = load i32, ptr %i.bb, align 4
  %i.ky = icmp sge i32 %i.kf, %i.kx
  %not..i.i112 = xor i1 %i.kw, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.ky, !prof !191
  %i.kz = load ptr, ptr %i.bc, align 8
  %i.la = icmp eq ptr %i.kz, null
  %i.lb = select i1 %or.cond.i.i113, i1 true, i1 %i.la, !prof !191
  br i1 %i.lb, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lc = load ptr, ptr %8, align 8, !tbaa !182
  %i.ld = load i32, ptr %i.am, align 8, !tbaa !178
  %i.le = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lf = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i32 noundef %i.kf, i32 noundef %i.ld, i32 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kw, i32 noundef %i.lf)
          to label %.noexc116 unwind label %bb.bx

.noexc116:                                        ; preds = %bb.ax
  %i.lh = zext i1 %i.kw to i8
  store ptr %i.lg, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lh, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.li = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.li, ptr %i.ak, align 4, !tbaa !176
  %i.lj = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lk = add nsw i32 %i.lj, 1                    ; 3 uses
  store i32 %i.lk, ptr %i.am, align 8, !tbaa !178
  %i.ll = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lk, %i.ll
  %.pre321 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.lm, ptr %i.am, align 8, !tbaa !178
  %i.ln = add nsw i32 %.pre321, 1                 ; 3 uses
  store i32 %i.ln, ptr %i.ao, align 4, !tbaa !180
  %i.lo = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.ln, %i.lo
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lp = phi i32 [ %.pre321, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre320, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lk, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.li, %bb.ay ], [ %i.li, %bb.az ], [ %i.kf, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.lp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.ke, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 7 uses
  %.0163242 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.0164241 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.5240 = phi float [ %.4249, %.lr.ph ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.4173239 = phi double [ %.3172248, %.lr.ph ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4188238 = phi double [ %.3187247, %.lr.ph ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.ls = phi double [ %.promoted, %.lr.ph ], [ %i.nn, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lt = phi i64 [ %.promoted236, %.lr.ph ], [ %i.nm, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lu = phi i64 [ %.promoted237, %.lr.ph ], [ %i.nl, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lv = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lw = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %indvars.iv
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !223
  %i.ly = uitofp i16 %i.lx to float
  %i.lz = fmul nnan float %i.ly, f0x37800080
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ma = phi float [ %i.lz, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 4 uses
  %i.mb = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.mb, label %bb.bf, label %.thread

bb.bf:                                            ; preds = %bb.be
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %indvars.iv
  %i.md = load float, ptr %i.mc, align 4, !tbaa !7 ; 2 uses
  %i.me = call float @llvm.fabs.f32(float %i.md)  ; 2 uses
  %i.mf = fcmp one float %i.me, +inf
  %i.mg = call double @llvm.fabs.f64(double %i.ls)
  %i.mh = fcmp ueq double %i.mg, +inf
  %or.cond = select i1 %i.mf, i1 true, i1 %i.mh
  br i1 %or.cond, label %.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  store i32 %.pre.pre, ptr %i.ac, align 8, !tbaa !202
  store i32 %i.kc, ptr %i.ad, align 4, !tbaa !203
  store i32 %i.kd, ptr %i.ae, align 8, !tbaa !196
  %i.mi = trunc nsw i64 %indvars.iv to i32
  store i32 %i.mi, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128

.thread:                                          ; preds = %bb.be, %bb.bf
  %i.mj = phi float [ %i.me, %bb.bf ], [ 0.000000e+00, %bb.be ] ; 3 uses
  %i.mk = phi float [ %i.md, %bb.bf ], [ 0.000000e+00, %bb.be ]
  %i.ml = fpext float %i.ma to double
  %i.mm = fpext float %i.mj to double
  %i.mn = fmul double %i.mm, 5.000000e-01
  %i.mo = call double @llvm.fmuladd.f64(double %i.ml, double 5.000000e-01, double %i.mn) ; 2 uses
  %i.mp = fptrunc double %i.mo to float
  %i.mq = fcmp olt float %i.ma, %i.mj
  %.sroa.speculated65.i120 = select i1 %i.mq, float %i.mj, float %i.ma ; 2 uses
  %i.mr = fcmp olt float %.5240, %.sroa.speculated65.i120
  %.sroa.speculated.i121 = select i1 %i.mr, float %.sroa.speculated65.i120, float %.5240 ; 2 uses
  %i.ms = fsub float %i.ma, %i.mk
  %i.mt = call noundef float @llvm.fabs.f32(float %i.ms) ; 3 uses
  %i.mu = fpext float %i.mt to double             ; 7 uses
  %i.mv = fpext float %i.mp to double
  %i.mw = fcmp ogt double %i.mo, f0x3690000000000000
end_hunk_12
begin_hunk_13_@_ZN11OpenImageIO4v3_1L8compare_IthEEbRKNS0_8ImageBufES4_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1176247.us.us = phi i1 [ %.0175260.us.us, %.preheader.us.us ], [ %.2177.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1179246.us.us = phi i1 [ %.0178259.us.us, %.preheader.us.us ], [ %.3181.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2184245.us.us = phi double [ %.1183258.us.us, %.preheader.us.us ], [ %.6188.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065263.us.us, i32 noundef %.064250.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065263.us.us, i32 noundef %.064250.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre321 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065263.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre321, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3249.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3249.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2170248.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2184245.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065263.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1179246.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2180.us.us = phi i1 [ true, %bb.aj ], [ %.1179246.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1176247.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6188.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2184245.us.us, %bb.af ], [ %.2184245.us.us, %bb.ad ] ; 3 uses
  %.3181.us.us = phi i1 [ %.2180.us.us, %bb.al ], [ %.2180.us.us, %bb.ak ], [ %.1179246.us.us, %bb.af ], [ %.1179246.us.us, %bb.ad ] ; 2 uses
  %.2177.us.us = phi i1 [ true, %bb.al ], [ %.1176247.us.us, %bb.ak ], [ %.1176247.us.us, %bb.af ], [ %.1176247.us.us, %bb.ad ] ; 2 uses
  %.6174.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2170248.us.us, %bb.af ], [ %.2170248.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3249.us.us, %bb.af ], [ %.3249.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064250.us.us, 1       ; 2 uses
  %exitcond312.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond312.not, label %._crit_edge252.us.us, label %bb.ab, !llvm.loop !262

._crit_edge252.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.it = add nsw i32 %.065263.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge264.us, !llvm.loop !263

.split284.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split287.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split290.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.preheader192.split:                              ; preds = %.preheader192.split.preheader, %.critedge.loopexit191
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit191 ], [ 1.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.oy, %.critedge.loopexit191 ], [ 0.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.ox, %.critedge.loopexit191 ], [ 0.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader192.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us279, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader192.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062244 = phi i32 [ %i.nh, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4243 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3171242 = phi double [ %.4172.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3185241 = phi double [ %.4186.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 3 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond368 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond368, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit191, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted232 = load i64, ptr %i.ag, align 8
  %.promoted231 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load <2 x i32>, ptr %i.am, align 8
  %i.kd = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4186.lcssa = phi double [ %.3185241, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172.lcssa = phi double [ %.3171242, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4243, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.ke = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.ke, ptr %i.ak, align 4, !tbaa !176
  %i.kf = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kg = icmp slt i32 %i.ke, %i.kf
  br i1 %i.kg, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.kh = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre314 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kj = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.kl = load i64, ptr %i.az, align 8, !tbaa !188
  %i.km = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 %i.kl
  store ptr %i.kn, ptr %i.aq, align 8, !tbaa !189
  %i.ko = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.ke, %i.ko
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.av:                                            ; preds = %bb.as
  %i.kp = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kr = load i64, ptr %i.az, align 8, !tbaa !188
  %i.ks = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 %i.kr
  store ptr %i.kt, ptr %i.aq, align 8, !tbaa !189
  %i.ku = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kv = icmp slt i32 %i.ke, %i.ku               ; 3 uses
  %i.kw = load i32, ptr %i.bb, align 4
  %i.kx = icmp sge i32 %i.ke, %i.kw
  %not..i.i112 = xor i1 %i.kv, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.kx, !prof !191
  %i.ky = load ptr, ptr %i.bc, align 8
  %i.kz = icmp eq ptr %i.ky, null
  %i.la = select i1 %or.cond.i.i113, i1 true, i1 %i.kz, !prof !191
  br i1 %i.la, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lb = load ptr, ptr %8, align 8, !tbaa !182
  %i.lc = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ld = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.le = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lf = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, i32 noundef %i.ke, i32 noundef %i.lc, i32 noundef %i.ld, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kv, i32 noundef %i.le)
          to label %.noexc116 unwind label %bb.bx

.noexc116:                                        ; preds = %bb.ax
  %i.lg = zext i1 %i.kv to i8
  store ptr %i.lf, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lg, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.lh = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.lh, ptr %i.ak, align 4, !tbaa !176
  %i.li = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lj = add nsw i32 %i.li, 1                    ; 3 uses
  store i32 %i.lj, ptr %i.am, align 8, !tbaa !178
  %i.lk = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lj, %i.lk
  %.pre315 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ll = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.ll, ptr %i.am, align 8, !tbaa !178
  %i.lm = add nsw i32 %.pre315, 1                 ; 3 uses
  store i32 %i.lm, ptr %i.ao, align 4, !tbaa !180
  %i.ln = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.lm, %i.ln
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lo = phi i32 [ %.pre315, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre314, %._crit_edge.i109 ]
  %i.lp = phi i32 [ %i.lj, %bb.ay ], [ %i.ll, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lh, %bb.ay ], [ %i.lh, %bb.az ], [ %i.ke, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lq, i32 noundef %i.lp, i32 noundef %i.lo)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.kd, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 6 uses
  %.0163237 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.0164236 = phi i1 [ false, %.lr.ph ], [ %.1165, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5235 = phi float [ %.4243, %.lr.ph ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172234 = phi double [ %.3171242, %.lr.ph ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %.4186233 = phi double [ %.3185241, %.lr.ph ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %i.lr = phi double [ %.promoted, %.lr.ph ], [ %i.my, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.ls = phi i64 [ %.promoted231, %.lr.ph ], [ %i.nc, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.lt = phi i64 [ %.promoted232, %.lr.ph ], [ %i.ng, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.lu = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lv = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %indvars.iv
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !223
  %i.lx = uitofp i16 %i.lw to float
  %i.ly = fmul nnan float %i.lx, f0x37800080
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.lz = phi float [ %i.ly, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 4 uses
  %i.ma = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.ma, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mb = getelementptr inbounds i8, ptr %i.kb, i64 %indvars.iv
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !136
  %i.md = uitofp i8 %i.mc to float
  %i.me = fmul nnan float %i.md, f0x3B808081
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.mf = phi float [ %i.me, %bb.bf ], [ 0.000000e+00, %bb.be ] ; 4 uses
  %i.mg = fpext float %i.lz to double
  %i.mh = fpext nnan ninf float %i.mf to double
  %i.mi = fmul nnan double %i.mh, 5.000000e-01
  %i.mj = call double @llvm.fmuladd.f64(double %i.mg, double 5.000000e-01, double %i.mi) ; 2 uses
  %i.mk = fptrunc double %i.mj to float
  %i.ml = fcmp olt float %i.lz, %i.mf
  %.sroa.speculated65.i120 = select i1 %i.ml, float %i.mf, float %i.lz ; 2 uses
  %i.mm = fcmp olt float %.5235, %.sroa.speculated65.i120
  %.sroa.speculated.i121 = select i1 %i.mm, float %.sroa.speculated65.i120, float %.5235 ; 2 uses
  %i.mn = fsub float %i.lz, %i.mf
  %i.mo = call noundef float @llvm.fabs.f32(float %i.mn) ; 3 uses
  %i.mp = fpext float %i.mo to double             ; 7 uses
  %i.mq = fpext float %i.mk to double
  %i.mr = fcmp ogt double %i.mj, f0x3690000000000000
  %i.ms = fdiv double %i.mp, %i.mq
  %i.mt = select i1 %i.mr, double %i.ms, double 0.000000e+00 ; 2 uses
  %i.mu = fadd double %.4172234, %i.mp            ; 2 uses
  %i.mv = call double @llvm.fmuladd.f64(double %i.mp, double %i.mp, double %.4186233) ; 2 uses
  %i.mw = fcmp ult double %i.lr, %i.mp
  br i1 %i.mw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store double %i.mp, ptr %i.ab, align 8, !tbaa !195
  store i32 %.pre.pre, ptr %i.ac, align 8, !tbaa !202
  store <2 x i32> %i.kc, ptr %i.ad, align 4, !tbaa !3
  %i.mx = trunc nsw i64 %indvars.iv to i32
  store i32 %i.mx, ptr %i.af, align 4, !tbaa !197
  br label %bb.bi
end_hunk_13
begin_hunk_14_@_ZN11OpenImageIO4v3_1L8compare_ItN9Imath_3_14halfEEEbRKNS0_8ImageBufES6_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1178253.us.us = phi i1 [ %.0177266.us.us, %.preheader.us.us ], [ %.2179.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1181252.us.us = phi i1 [ %.0180265.us.us, %.preheader.us.us ], [ %.3183.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2186251.us.us = phi double [ %.1185264.us.us, %.preheader.us.us ], [ %.6190.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065269.us.us, i32 noundef %.064256.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065269.us.us, i32 noundef %.064256.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre327 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065269.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre327, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3255.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3255.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2171254.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2186251.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065269.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1181252.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2182.us.us = phi i1 [ true, %bb.aj ], [ %.1181252.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1178253.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6190.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2186251.us.us, %bb.af ], [ %.2186251.us.us, %bb.ad ] ; 3 uses
  %.3183.us.us = phi i1 [ %.2182.us.us, %bb.al ], [ %.2182.us.us, %bb.ak ], [ %.1181252.us.us, %bb.af ], [ %.1181252.us.us, %bb.ad ] ; 2 uses
  %.2179.us.us = phi i1 [ true, %bb.al ], [ %.1178253.us.us, %bb.ak ], [ %.1178253.us.us, %bb.af ], [ %.1178253.us.us, %bb.ad ] ; 2 uses
  %.6175.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2171254.us.us, %bb.af ], [ %.2171254.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3255.us.us, %bb.af ], [ %.3255.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064256.us.us, 1       ; 2 uses
  %exitcond318.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond318.not, label %._crit_edge258.us.us, label %bb.ab, !llvm.loop !266

._crit_edge258.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.it = add nsw i32 %.065269.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge270.us, !llvm.loop !267

.split290.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.split293.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.split296.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.preheader197.split:                              ; preds = %.preheader197.split.preheader, %.critedge.loopexit196
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit196 ], [ 1.000000e+00, %.preheader197.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.pw, %.critedge.loopexit196 ], [ 0.000000e+00, %.preheader197.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.pv, %.critedge.loopexit196 ], [ 0.000000e+00, %.preheader197.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader197.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us285, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader197.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062250 = phi i32 [ %i.of, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4249 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3172248 = phi double [ %.4173.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3187247 = phi double [ %.4188.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 4 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond376 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond376, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit196, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted237 = load i64, ptr %i.ag, align 8
  %.promoted236 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load i32, ptr %i.am, align 8            ; 2 uses
  %i.kd = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.ke = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4188.lcssa = phi double [ %.3187247, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4173.lcssa = phi double [ %.3172248, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4249, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.kf = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kf, ptr %i.ak, align 4, !tbaa !176
  %i.kg = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kh = icmp slt i32 %i.kf, %i.kg
  br i1 %i.kh, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.ki = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre320 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kk = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.km = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kn = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %i.km
  store ptr %i.ko, ptr %i.aq, align 8, !tbaa !189
  %i.kp = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kf, %i.kp
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.cd

bb.av:                                            ; preds = %bb.as
  %i.kq = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ks = load i64, ptr %i.az, align 8, !tbaa !188
  %i.kt = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.ks
  store ptr %i.ku, ptr %i.aq, align 8, !tbaa !189
  %i.kv = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kw = icmp slt i32 %i.kf, %i.kv               ; 3 uses
  %i.kx = load i32, ptr %i.bb, align 4
  %i.ky = icmp sge i32 %i.kf, %i.kx
  %not..i.i112 = xor i1 %i.kw, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.ky, !prof !191
  %i.kz = load ptr, ptr %i.bc, align 8
  %i.la = icmp eq ptr %i.kz, null
  %i.lb = select i1 %or.cond.i.i113, i1 true, i1 %i.la, !prof !191
  br i1 %i.lb, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lc = load ptr, ptr %8, align 8, !tbaa !182
  %i.ld = load i32, ptr %i.am, align 8, !tbaa !178
  %i.le = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lf = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lg = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, i32 noundef %i.kf, i32 noundef %i.ld, i32 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kw, i32 noundef %i.lf)
          to label %.noexc116 unwind label %bb.cd

.noexc116:                                        ; preds = %bb.ax
  %i.lh = zext i1 %i.kw to i8
  store ptr %i.lg, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lh, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.li = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.li, ptr %i.ak, align 4, !tbaa !176
  %i.lj = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lk = add nsw i32 %i.lj, 1                    ; 3 uses
  store i32 %i.lk, ptr %i.am, align 8, !tbaa !178
  %i.ll = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lk, %i.ll
  %.pre321 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lm = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.lm, ptr %i.am, align 8, !tbaa !178
  %i.ln = add nsw i32 %.pre321, 1                 ; 3 uses
  store i32 %i.ln, ptr %i.ao, align 4, !tbaa !180
  %i.lo = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.ln, %i.lo
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lp = phi i32 [ %.pre321, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre320, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lk, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.li, %bb.ay ], [ %i.li, %bb.az ], [ %i.kf, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lr, i32 noundef %i.lq, i32 noundef %i.lp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.cd

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.ke, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 7 uses
  %.0163242 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.0164241 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.5240 = phi float [ %.4249, %.lr.ph ], [ %.8, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %.4173239 = phi double [ %.3172248, %.lr.ph ], [ %.7176, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4188238 = phi double [ %.3187247, %.lr.ph ], [ %.7191, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.ls = phi double [ %.promoted, %.lr.ph ], [ %i.oe, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lt = phi i64 [ %.promoted236, %.lr.ph ], [ %i.od, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lu = phi i64 [ %.promoted237, %.lr.ph ], [ %i.oc, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 3 uses
  %i.lv = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lw = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %indvars.iv
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !223
  %i.ly = uitofp i16 %i.lx to float
  %i.lz = fmul nnan float %i.ly, f0x37800080
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ma = phi float [ %i.lz, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 4 uses
  %i.mb = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.mb, label %bb.bf, label %.thread

bb.bf:                                            ; preds = %bb.be
  %i.mc = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %indvars.iv
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !216 ; 2 uses
  %i.me = zext i16 %i.md to i32
  %i.mf = shl nuw nsw i32 %i.me, 13
  %i.mg = and i32 %i.mf, 268427264                ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.md to i32
  %i.mh = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.mi = icmp samesign ugt i32 %i.mg, 8388607
  br i1 %i.mi, label %bb.bg, label %bb.bj, !prof !164

bb.bg:                                            ; preds = %bb.bf
  %i.mj = or disjoint i32 %i.mg, %i.mh            ; 2 uses
  %i.mk = icmp samesign ult i32 %i.mg, 260046848
  br i1 %i.mk, label %bb.bh, label %bb.bi, !prof !164

bb.bh:                                            ; preds = %bb.bg
  %i.ml = add nuw nsw i32 %i.mj, 939524096
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.mm = or i32 %i.mj, 2139095040
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bf
  %.not.i.i.i.i.i = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mn = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.mg, i1 true)
  %i.mo = add nsw i32 %i.mn, -8                   ; 2 uses
  %i.mp = shl i32 %i.mg, %i.mo
  %i.mq = or i32 %i.mh, %i.mp
  %i.mr = or i32 %i.mq, 947912704
  %i.ms = shl nuw nsw i32 %i.mo, 23
  %i.mt = sub nuw i32 %i.mr, %i.ms
end_hunk_14
begin_hunk_15_@_ZN11OpenImageIO4v3_1L8compare_IttEEbRKNS0_8ImageBufES4_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %.1176247.us.us = phi i1 [ %.0175260.us.us, %.preheader.us.us ], [ %.2177.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1179246.us.us = phi i1 [ %.0178259.us.us, %.preheader.us.us ], [ %.3181.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2184245.us.us = phi double [ %.1183258.us.us, %.preheader.us.us ], [ %.6188.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !182
  %i.gs = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gu = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gv = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, i32 noundef %i.gu, i32 noundef %.065263.us.us, i32 noundef %.064250.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gw = load ptr, ptr %9, align 8, !tbaa !182
  %i.gx = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.gy = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.ha = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef %.065263.us.us, i32 noundef %.064250.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hb = call float @llvm.fabs.f32(float %i.gv)  ; 5 uses
  %i.hc = fcmp one float %i.hb, +inf
  %i.hd = call float @llvm.fabs.f32(float %i.ha)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %or.cond70.i.us.us = and i1 %i.hc, %i.he
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre321 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hf = fcmp uno float %i.gv, 0.000000e+00
  %i.hg = fcmp uno float %i.ha, 0.000000e+00
  %i.hh = xor i1 %i.hf, %i.hg
  br i1 %i.hh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = fcmp oeq float %i.hb, +inf
  %i.hj = fcmp oeq float %i.hd, +inf
  %i.hk = xor i1 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hl = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ueq double %i.hm, +inf
  br i1 %i.hn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.ho = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ho, ptr %i.ac, align 8, !tbaa !3
  %i.hp = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hp, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065263.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hq = phi double [ %.pre321, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hl, %bb.ae ]
  %i.hr = fpext float %i.hb to double
  %i.hs = fpext float %i.hd to double
  %i.ht = fmul double %i.hs, 5.000000e-01
  %i.hu = call double @llvm.fmuladd.f64(double %i.hr, double 5.000000e-01, double %i.ht) ; 2 uses
  %i.hv = fptrunc double %i.hu to float
  %i.hw = fcmp olt float %i.hb, %i.hd
  %.sroa.speculated65.i.us.us = select i1 %i.hw, float %i.hd, float %i.hb ; 2 uses
  %i.hx = fcmp olt float %.3249.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hx, float %.sroa.speculated65.i.us.us, float %.3249.us.us ; 2 uses
  %i.hy = fsub float %i.gv, %i.ha
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hy) ; 3 uses
  %i.ia = fpext float %i.hz to double             ; 6 uses
  %i.ib = fpext float %i.hv to double
  %i.ic = fcmp ogt double %i.hu, f0x3690000000000000
  %i.id = fdiv double %i.ia, %i.ib
  %i.ie = select i1 %i.ic, double %i.id, double 0.000000e+00 ; 2 uses
  %i.if = fadd double %.2170248.us.us, %i.ia      ; 2 uses
  %i.ig = call double @llvm.fmuladd.f64(double %i.ia, double %i.ia, double %.2184245.us.us) ; 2 uses
  %i.ih = fcmp ult double %i.hq, %i.ia
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ia, ptr %i.ab, align 8, !tbaa !195
  %i.ii = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ii, ptr %i.ac, align 8, !tbaa !3
  %i.ij = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.ij, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065263.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1179246.us.us, true
  %i.ik = fcmp ugt float %i.hz, %3
  %or.cond.i.us.us = and i1 %i.ik, %.not.i93.us.us
  %i.il = fcmp ugt double %i.ie, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.il
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2180.us.us = phi i1 [ true, %bb.aj ], [ %.1179246.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1176247.us.us, true
  %i.io = fcmp ugt float %i.hz, %2
  %or.cond58.i.us.us = and i1 %i.io, %.not57.i.us.us
  %i.ip = fcmp ugt double %i.ie, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ip
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6188.us.us = phi double [ %i.ig, %bb.al ], [ %i.ig, %bb.ak ], [ %.2184245.us.us, %bb.af ], [ %.2184245.us.us, %bb.ad ] ; 3 uses
  %.3181.us.us = phi i1 [ %.2180.us.us, %bb.al ], [ %.2180.us.us, %bb.ak ], [ %.1179246.us.us, %bb.af ], [ %.1179246.us.us, %bb.ad ] ; 2 uses
  %.2177.us.us = phi i1 [ true, %bb.al ], [ %.1176247.us.us, %bb.ak ], [ %.1176247.us.us, %bb.af ], [ %.1176247.us.us, %bb.ad ] ; 2 uses
  %.6174.us.us = phi double [ %i.if, %bb.al ], [ %i.if, %bb.ak ], [ %.2170248.us.us, %bb.af ], [ %.2170248.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3249.us.us, %bb.af ], [ %.3249.us.us, %bb.ad ] ; 3 uses
  %i.is = add nuw nsw i32 %.064250.us.us, 1       ; 2 uses
  %exitcond312.not = icmp eq i32 %i.is, %.sroa.speculated.us
  br i1 %exitcond312.not, label %._crit_edge252.us.us, label %bb.ab, !llvm.loop !270

._crit_edge252.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.it = add nsw i32 %.065263.us.us, 1           ; 2 uses
  %i.iu = load i32, ptr %i.u, align 4, !tbaa !80
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.preheader.us.us, label %._crit_edge264.us, !llvm.loop !271

.split284.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split287.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split290.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.preheader192.split:                              ; preds = %.preheader192.split.preheader, %.critedge.loopexit191
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit191 ], [ 1.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %.066 = phi double [ %i.oy, %.critedge.loopexit191 ], [ 0.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %.063 = phi double [ %i.ox, %.critedge.loopexit191 ], [ 0.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %i.ja = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader192.split
  %i.jc = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jd = load i32, ptr %i.al, align 4, !tbaa !177
  %i.je = icmp eq i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.am, align 8, !tbaa !178
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jh = icmp eq i32 %i.jf, %i.jg
  br i1 %i.jh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.ji = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jj = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jk = icmp eq i32 %i.ji, %i.jj
  br i1 %i.jk, label %.split.us279, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader192.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062244 = phi i32 [ %i.nh, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4243 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3171242 = phi double [ %.4172.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3185241 = phi double [ %.4186.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jn = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jo = icmp eq i8 %i.jn, 0
  %.pre.pre = load i32, ptr %i.ak, align 4, !tbaa !176 ; 3 uses
  %i.jp = load i32, ptr %i.al, align 4
  %i.jq = icmp eq i32 %.pre.pre, %i.jp
  %or.cond368 = select i1 %i.jo, i1 %i.jq, i1 false
  br i1 %or.cond368, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jr = load i32, ptr %i.am, align 8, !tbaa !178
  %i.js = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jt = icmp eq i32 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.ju = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jv = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %.critedge.loopexit191, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.jy = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.promoted232 = load i64, ptr %i.ag, align 8
  %.promoted231 = load i64, ptr %i.ah, align 8
  %.promoted = load double, ptr %i.ab, align 8
  %i.ka = load ptr, ptr %i.aq, align 8
  %i.kb = load ptr, ptr %i.ar, align 8
  %i.kc = load <2 x i32>, ptr %i.am, align 8
  %i.kd = sext i32 %i.jx to i64
  %wide.trip.count = sext i32 %i.jy to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4186.lcssa = phi double [ %.3185241, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172.lcssa = phi double [ %.3171242, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4243, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.ke = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.ke, ptr %i.ak, align 4, !tbaa !176
  %i.kf = load i32, ptr %i.au, align 8, !tbaa !183
  %i.kg = icmp slt i32 %i.ke, %i.kf
  br i1 %i.kg, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.kh = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre314 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kj = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.kl = load i64, ptr %i.az, align 8, !tbaa !188
  %i.km = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 %i.kl
  store ptr %i.kn, ptr %i.aq, align 8, !tbaa !189
  %i.ko = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.ke, %i.ko
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.av:                                            ; preds = %bb.as
  %i.kp = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kr = load i64, ptr %i.az, align 8, !tbaa !188
  %i.ks = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 %i.kr
  store ptr %i.kt, ptr %i.aq, align 8, !tbaa !189
  %i.ku = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kv = icmp slt i32 %i.ke, %i.ku               ; 3 uses
  %i.kw = load i32, ptr %i.bb, align 4
  %i.kx = icmp sge i32 %i.ke, %i.kw
  %not..i.i112 = xor i1 %i.kv, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.kx, !prof !191
  %i.ky = load ptr, ptr %i.bc, align 8
  %i.kz = icmp eq ptr %i.ky, null
  %i.la = select i1 %or.cond.i.i113, i1 true, i1 %i.kz, !prof !191
  br i1 %i.la, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.lb = load ptr, ptr %8, align 8, !tbaa !182
  %i.lc = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ld = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.le = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lf = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, i32 noundef %i.ke, i32 noundef %i.lc, i32 noundef %i.ld, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kv, i32 noundef %i.le)
          to label %.noexc116 unwind label %bb.bx

.noexc116:                                        ; preds = %bb.ax
  %i.lg = zext i1 %i.kv to i8
  store ptr %i.lf, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.lg, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.lh = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.lh, ptr %i.ak, align 4, !tbaa !176
  %i.li = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lj = add nsw i32 %i.li, 1                    ; 3 uses
  store i32 %i.lj, ptr %i.am, align 8, !tbaa !178
  %i.lk = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.lj, %i.lk
  %.pre315 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ll = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.ll, ptr %i.am, align 8, !tbaa !178
  %i.lm = add nsw i32 %.pre315, 1                 ; 3 uses
  store i32 %i.lm, ptr %i.ao, align 4, !tbaa !180
  %i.ln = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.lm, %i.ln
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lo = phi i32 [ %.pre315, %bb.ay ], [ %i.lm, %bb.az ], [ %.pre314, %._crit_edge.i109 ]
  %i.lp = phi i32 [ %i.lj, %bb.ay ], [ %i.ll, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.lq = phi i32 [ %i.lh, %bb.ay ], [ %i.lh, %bb.az ], [ %i.ke, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.lq, i32 noundef %i.lp, i32 noundef %i.lo)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.kd, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 6 uses
  %.0163237 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.0164236 = phi i1 [ false, %.lr.ph ], [ %.1165, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5235 = phi float [ %.4243, %.lr.ph ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172234 = phi double [ %.3171242, %.lr.ph ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %.4186233 = phi double [ %.3185241, %.lr.ph ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %i.lr = phi double [ %.promoted, %.lr.ph ], [ %i.my, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.ls = phi i64 [ %.promoted231, %.lr.ph ], [ %i.nc, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.lt = phi i64 [ %.promoted232, %.lr.ph ], [ %i.ng, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.lu = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lv = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %indvars.iv
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !223
  %i.lx = uitofp i16 %i.lw to float
  %i.ly = fmul nnan float %i.lx, f0x37800080
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.lz = phi float [ %i.ly, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 4 uses
  %i.ma = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.ma, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mb = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %indvars.iv
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !223
  %i.md = uitofp i16 %i.mc to float
  %i.me = fmul nnan float %i.md, f0x37800080
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.mf = phi float [ %i.me, %bb.bf ], [ 0.000000e+00, %bb.be ] ; 4 uses
  %i.mg = fpext float %i.lz to double
  %i.mh = fpext nnan ninf float %i.mf to double
  %i.mi = fmul nnan double %i.mh, 5.000000e-01
  %i.mj = call double @llvm.fmuladd.f64(double %i.mg, double 5.000000e-01, double %i.mi) ; 2 uses
  %i.mk = fptrunc double %i.mj to float
  %i.ml = fcmp olt float %i.lz, %i.mf
  %.sroa.speculated65.i120 = select i1 %i.ml, float %i.mf, float %i.lz ; 2 uses
  %i.mm = fcmp olt float %.5235, %.sroa.speculated65.i120
  %.sroa.speculated.i121 = select i1 %i.mm, float %.sroa.speculated65.i120, float %.5235 ; 2 uses
  %i.mn = fsub float %i.lz, %i.mf
  %i.mo = call noundef float @llvm.fabs.f32(float %i.mn) ; 3 uses
  %i.mp = fpext float %i.mo to double             ; 7 uses
  %i.mq = fpext float %i.mk to double
  %i.mr = fcmp ogt double %i.mj, f0x3690000000000000
  %i.ms = fdiv double %i.mp, %i.mq
  %i.mt = select i1 %i.mr, double %i.ms, double 0.000000e+00 ; 2 uses
  %i.mu = fadd double %.4172234, %i.mp            ; 2 uses
  %i.mv = call double @llvm.fmuladd.f64(double %i.mp, double %i.mp, double %.4186233) ; 2 uses
  %i.mw = fcmp ult double %i.lr, %i.mp
  br i1 %i.mw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store double %i.mp, ptr %i.ab, align 8, !tbaa !195
  store i32 %.pre.pre, ptr %i.ac, align 8, !tbaa !202
  store <2 x i32> %i.kc, ptr %i.ad, align 4, !tbaa !3
  %i.mx = trunc nsw i64 %indvars.iv to i32
  store i32 %i.mx, ptr %i.af, align 4, !tbaa !197
  br label %bb.bi
end_hunk_15
