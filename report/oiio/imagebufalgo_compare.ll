inline.NumInlined: 8095
inline.NumDeleted: 2632
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN11OpenImageIO4v3_1L8compare_IhhEEbRKNS0_8ImageBufES4_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %i.gl = zext i1 %i.ga to i8
  store ptr %i.gk, ptr %i.ar, align 8, !tbaa !189
  store i8 %i.gl, ptr %i.br, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us

bb.z:                                             ; preds = %bb.v
  %i.gm = load i64, ptr %i.bu, align 8, !tbaa !188
  %i.gn = load ptr, ptr %i.ar, align 8, !tbaa !189
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %i.gm
  store ptr %i.go, ptr %i.ar, align 8, !tbaa !189
  %i.gp = load i32, ptr %i.bv, align 8, !tbaa !190
  %.not.i.i101.us = icmp slt i32 %i.fd, %i.gp
  br i1 %.not.i.i101.us, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us, label %bb.aa, !prof !164

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us unwind label %.split287.us

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us: ; preds = %bb.aa, %bb.z, %.noexc103.us, %bb.x, %bb.w, %bb.u, %bb.s
  %exitcond310.not = icmp eq i32 %i.fb, 4096
  br i1 %exitcond310.not, label %.critedge.loopexit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

.critedge.loopexit.us:                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us
  %.0182.lcssa.us = phi double [ %.1183.lcssa.us, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us ], [ %.0182269.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us ]
  %.0168.lcssa.us = phi double [ %.1169.lcssa.us, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us ], [ %.0168270.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us ]
  %.1167.lcssa.us = phi float [ %.2.lcssa.us, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us ], [ %.1167271.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us ]
  %i.gq = insertelement <2 x double> poison, double %.0168.lcssa.us, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %.0182.lcssa.us, i64 1
  %i.gs = fadd <2 x double> %i.cf, %i.gr
  br label %.preheader192.split.us, !llvm.loop !229

.preheader.us.us:                                 ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us, %._crit_edge250.us.us
  %.065261.us.us = phi i32 [ %i.iv, %._crit_edge250.us.us ], [ %i.dj, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ] ; 5 uses
  %.2260.us.us = phi float [ %.7.us.us, %._crit_edge250.us.us ], [ %.1167271.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.1169259.us.us = phi double [ %.6174.us.us, %._crit_edge250.us.us ], [ %.0168270.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.0175258.us.us = phi i1 [ %.2177.us.us, %._crit_edge250.us.us ], [ false, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.0178257.us.us = phi i1 [ %.3181.us.us, %._crit_edge250.us.us ], [ false, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.1183256.us.us = phi double [ %.6188.us.us, %._crit_edge250.us.us ], [ %.0182269.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us, %.preheader.us.us
  %.064248.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.iu, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %.3247.us.us = phi float [ %.2260.us.us, %.preheader.us.us ], [ %.7.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2170246.us.us = phi double [ %.1169259.us.us, %.preheader.us.us ], [ %.6174.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %.1176245.us.us = phi i1 [ %.0175258.us.us, %.preheader.us.us ], [ %.2177.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1179244.us.us = phi i1 [ %.0178257.us.us, %.preheader.us.us ], [ %.3181.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2184243.us.us = phi double [ %.1183256.us.us, %.preheader.us.us ], [ %.6188.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gt = load ptr, ptr %8, align 8, !tbaa !182
  %i.gu = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gv = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gw = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gx = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i32 noundef %i.gu, i32 noundef %i.gv, i32 noundef %i.gw, i32 noundef %.065261.us.us, i32 noundef %.064248.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gy = load ptr, ptr %9, align 8, !tbaa !182
  %i.gz = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.ha = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.hb = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.hc = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i32 noundef %i.gz, i32 noundef %i.ha, i32 noundef %i.hb, i32 noundef %.065261.us.us, i32 noundef %.064248.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hd = call float @llvm.fabs.f32(float %i.gx)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %i.hf = call float @llvm.fabs.f32(float %i.hc)  ; 5 uses
  %i.hg = fcmp one float %i.hf, +inf
  %or.cond70.i.us.us = and i1 %i.he, %i.hg
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre318 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hh = fcmp uno float %i.gx, 0.000000e+00
  %i.hi = fcmp uno float %i.hc, 0.000000e+00
  %i.hj = xor i1 %i.hh, %i.hi
  br i1 %i.hj, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hk = fcmp oeq float %i.hd, +inf
  %i.hl = fcmp oeq float %i.hf, +inf
  %i.hm = xor i1 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hn = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.ho = call double @llvm.fabs.f64(double %i.hn)
  %i.hp = fcmp ueq double %i.ho, +inf
  br i1 %i.hp, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.hq = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.hq, ptr %i.ac, align 8, !tbaa !3
  %i.hr = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hr, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065261.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hs = phi double [ %.pre318, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hn, %bb.ae ]
  %i.ht = fpext float %i.hd to double
  %i.hu = fpext float %i.hf to double
  %i.hv = fmul double %i.hu, 5.000000e-01
  %i.hw = call double @llvm.fmuladd.f64(double %i.ht, double 5.000000e-01, double %i.hv) ; 2 uses
  %i.hx = fptrunc double %i.hw to float
  %i.hy = fcmp olt float %i.hd, %i.hf
  %.sroa.speculated65.i.us.us = select i1 %i.hy, float %i.hf, float %i.hd ; 2 uses
  %i.hz = fcmp olt float %.3247.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hz, float %.sroa.speculated65.i.us.us, float %.3247.us.us ; 2 uses
  %i.ia = fsub float %i.gx, %i.hc
  %i.ib = call noundef float @llvm.fabs.f32(float %i.ia) ; 3 uses
  %i.ic = fpext float %i.ib to double             ; 6 uses
  %i.id = fpext float %i.hx to double
  %i.ie = fcmp ogt double %i.hw, f0x3690000000000000
  %i.if = fdiv double %i.ic, %i.id
  %i.ig = select i1 %i.ie, double %i.if, double 0.000000e+00 ; 2 uses
  %i.ih = fadd double %.2170246.us.us, %i.ic      ; 2 uses
  %i.ii = call double @llvm.fmuladd.f64(double %i.ic, double %i.ic, double %.2184243.us.us) ; 2 uses
  %i.ij = fcmp ult double %i.hs, %i.ic
  br i1 %i.ij, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ic, ptr %i.ab, align 8, !tbaa !195
  %i.ik = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ik, ptr %i.ac, align 8, !tbaa !3
  %i.il = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.il, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065261.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1179244.us.us, true
  %i.im = fcmp ugt float %i.ib, %3
  %or.cond.i.us.us = and i1 %i.im, %.not.i93.us.us
  %i.in = fcmp ugt double %i.ig, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.in
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.io = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.ip = add i64 %i.io, 1
  store i64 %i.ip, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2180.us.us = phi i1 [ true, %bb.aj ], [ %.1179244.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1176245.us.us, true
  %i.iq = fcmp ugt float %i.ib, %2
  %or.cond58.i.us.us = and i1 %i.iq, %.not57.i.us.us
  %i.ir = fcmp ugt double %i.ig, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ir
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.is = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.it = add i64 %i.is, 1
  store i64 %i.it, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6188.us.us = phi double [ %i.ii, %bb.al ], [ %i.ii, %bb.ak ], [ %.2184243.us.us, %bb.af ], [ %.2184243.us.us, %bb.ad ] ; 3 uses
  %.3181.us.us = phi i1 [ %.2180.us.us, %bb.al ], [ %.2180.us.us, %bb.ak ], [ %.1179244.us.us, %bb.af ], [ %.1179244.us.us, %bb.ad ] ; 2 uses
  %.2177.us.us = phi i1 [ true, %bb.al ], [ %.1176245.us.us, %bb.ak ], [ %.1176245.us.us, %bb.af ], [ %.1176245.us.us, %bb.ad ] ; 2 uses
  %.6174.us.us = phi double [ %i.ih, %bb.al ], [ %i.ih, %bb.ak ], [ %.2170246.us.us, %bb.af ], [ %.2170246.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3247.us.us, %bb.af ], [ %.3247.us.us, %bb.ad ] ; 3 uses
  %i.iu = add nuw nsw i32 %.064248.us.us, 1       ; 2 uses
  %exitcond309.not = icmp eq i32 %i.iu, %.sroa.speculated.us
  br i1 %exitcond309.not, label %._crit_edge250.us.us, label %bb.ab, !llvm.loop !230

._crit_edge250.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.iv = add nsw i32 %.065261.us.us, 1           ; 2 uses
  %i.iw = load i32, ptr %i.u, align 4, !tbaa !80
  %i.ix = icmp slt i32 %i.iv, %i.iw
  br i1 %i.ix, label %.preheader.us.us, label %._crit_edge262.us, !llvm.loop !231

.split281.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split284.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split287.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.preheader192.split:                              ; preds = %.preheader192.split.preheader, %.critedge.loopexit191
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit191 ], [ 1.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %10 = phi <2 x double> [ %13, %.critedge.loopexit191 ], [ zeroinitializer, %.preheader192.split.preheader ] ; 2 uses
  %i.jc = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jd = icmp eq i8 %i.jc, 0
  br i1 %i.jd, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader192.split
  %i.je = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jf = load i32, ptr %i.al, align 4, !tbaa !177
  %i.jg = icmp eq i32 %i.je, %i.jf
  br i1 %i.jg, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jh = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ji = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jj = icmp eq i32 %i.jh, %i.ji
  br i1 %i.jj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.jk = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jl = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jm = icmp eq i32 %i.jk, %i.jl
  br i1 %i.jm, label %.split.us277, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader192.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062242 = phi i32 [ %i.nh, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4241 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3171240 = phi double [ %.4172.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3185239 = phi double [ %.4186.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jp = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jq = icmp eq i8 %i.jp, 0
  %.pre.pre = load i32, ptr %i.ak, align 4        ; 3 uses
  %i.jr = load i32, ptr %i.al, align 4
  %i.js = icmp eq i32 %.pre.pre, %i.jr
  %or.cond365 = select i1 %i.jq, i1 %i.js, i1 false
  br i1 %or.cond365, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ju = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jv = icmp eq i32 %i.jt, %i.ju
  br i1 %i.jv, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.jw = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jx = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jy = icmp eq i32 %i.jw, %i.jx
  br i1 %i.jy, label %.critedge.loopexit191, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jz = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.ka = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.kb = icmp slt i32 %i.jz, %i.ka
  br i1 %i.kb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %i.kc = load ptr, ptr %i.aq, align 8
  %i.kd = load ptr, ptr %i.ar, align 8
  %i.ke = load <2 x i32>, ptr %i.am, align 8
  %.promoted = load double, ptr %i.ab, align 8, !tbaa !195
  %i.kf = sext i32 %i.jz to i64
  %wide.trip.count = sext i32 %i.ka to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4186.lcssa = phi double [ %.3185239, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172.lcssa = phi double [ %.3171240, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4241, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.kg = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kg, ptr %i.ak, align 4, !tbaa !176
  %i.kh = load i32, ptr %i.au, align 8, !tbaa !183
  %i.ki = icmp slt i32 %i.kg, %i.kh
  br i1 %i.ki, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.kj = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre311 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kl = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.kn = load i64, ptr %i.az, align 8, !tbaa !188
  %i.ko = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 %i.kn
  store ptr %i.kp, ptr %i.aq, align 8, !tbaa !189
  %i.kq = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kg, %i.kq
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.av:                                            ; preds = %bb.as
  %i.kr = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kt = load i64, ptr %i.az, align 8, !tbaa !188
  %i.ku = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 %i.kt
  store ptr %i.kv, ptr %i.aq, align 8, !tbaa !189
  %i.kw = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kx = icmp slt i32 %i.kg, %i.kw               ; 3 uses
  %i.ky = load i32, ptr %i.bb, align 4
  %i.kz = icmp sge i32 %i.kg, %i.ky
  %not..i.i112 = xor i1 %i.kx, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.kz, !prof !191
  %i.la = load ptr, ptr %i.bc, align 8
  %i.lb = icmp eq ptr %i.la, null
  %i.lc = select i1 %or.cond.i.i113, i1 true, i1 %i.lb, !prof !191
  br i1 %i.lc, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.ld = load ptr, ptr %8, align 8, !tbaa !182
  %i.le = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lf = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lg = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lh = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, i32 noundef %i.kg, i32 noundef %i.le, i32 noundef %i.lf, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kx, i32 noundef %i.lg)
          to label %.noexc116 unwind label %bb.bx

.noexc116:                                        ; preds = %bb.ax
  %i.li = zext i1 %i.kx to i8
  store ptr %i.lh, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.li, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.lj = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.lj, ptr %i.ak, align 4, !tbaa !176
  %i.lk = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ll = add nsw i32 %i.lk, 1                    ; 3 uses
  store i32 %i.ll, ptr %i.am, align 8, !tbaa !178
  %i.lm = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.ll, %i.lm
  %.pre312 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ln = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.ln, ptr %i.am, align 8, !tbaa !178
  %i.lo = add nsw i32 %.pre312, 1                 ; 3 uses
  store i32 %i.lo, ptr %i.ao, align 4, !tbaa !180
  %i.lp = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.lo, %i.lp
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lq = phi i32 [ %.pre312, %bb.ay ], [ %i.lo, %bb.az ], [ %.pre311, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.ll, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.ls = phi i32 [ %i.lj, %bb.ay ], [ %i.lj, %bb.az ], [ %i.kg, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.ls, i32 noundef %i.lr, i32 noundef %i.lq)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.kf, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 6 uses
  %i.lt = phi double [ %.promoted, %.lr.ph ], [ %i.my, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.0163235 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.0164234 = phi i1 [ false, %.lr.ph ], [ %.1165, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5233 = phi float [ %.4241, %.lr.ph ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172232 = phi double [ %.3171240, %.lr.ph ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %.4186231 = phi double [ %.3185239, %.lr.ph ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %i.lu = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lv = getelementptr inbounds i8, ptr %i.kc, i64 %indvars.iv
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !136
  %i.lx = uitofp i8 %i.lw to float
  %i.ly = fmul nnan float %i.lx, f0x3B808081
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.lz = phi float [ %i.ly, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 4 uses
  %i.ma = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.ma, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mb = getelementptr inbounds i8, ptr %i.kd, i64 %indvars.iv
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
  %i.mm = fcmp olt float %.5233, %.sroa.speculated65.i120
  %.sroa.speculated.i121 = select i1 %i.mm, float %.sroa.speculated65.i120, float %.5233 ; 2 uses
  %i.mn = fsub float %i.lz, %i.mf
  %i.mo = call noundef float @llvm.fabs.f32(float %i.mn) ; 3 uses
  %i.mp = fpext float %i.mo to double             ; 7 uses
  %i.mq = fpext float %i.mk to double
  %i.mr = fcmp ogt double %i.mj, f0x3690000000000000
  %i.ms = fdiv double %i.mp, %i.mq
  %i.mt = select i1 %i.mr, double %i.ms, double 0.000000e+00 ; 2 uses
  %i.mu = fadd double %.4172232, %i.mp            ; 2 uses
  %i.mv = call double @llvm.fmuladd.f64(double %i.mp, double %i.mp, double %.4186231) ; 2 uses
  %i.mw = fcmp ult double %i.lt, %i.mp
  br i1 %i.mw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store double %i.mp, ptr %i.ab, align 8, !tbaa !195
  store i32 %.pre.pre, ptr %i.ac, align 8, !tbaa !202
  store <2 x i32> %i.ke, ptr %i.ad, align 4, !tbaa !3
  %i.mx = trunc nsw i64 %indvars.iv to i32
  store i32 %i.mx, ptr %i.af, align 4, !tbaa !197
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.my = phi double [ %i.mp, %bb.bh ], [ %i.lt, %bb.bg ]
  %.not.i122 = xor i1 %.0164234, true
  %i.mz = fcmp ugt float %i.mo, %3
  %or.cond.i123 = and i1 %i.mz, %.not.i122
  %i.na = fcmp ugt double %i.mt, %i.as
  %or.cond56.i124 = and i1 %or.cond.i123, %i.na
  br i1 %or.cond56.i124, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.nb = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.nc = add i64 %i.nb, 1
  store i64 %i.nc, ptr %i.ah, align 8, !tbaa !198
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.1165 = phi i1 [ true, %bb.bj ], [ %.0164234, %bb.bi ]
  %.not57.i125 = xor i1 %.0163235, true
  %i.nd = fcmp ugt float %i.mo, %2
  %or.cond58.i126 = and i1 %i.nd, %.not57.i125
  %i.ne = fcmp ugt double %i.mt, %i.at
  %or.cond60.i127 = and i1 %or.cond58.i126, %i.ne
  br i1 %or.cond60.i127, label %bb.bl, label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128

bb.bl:                                            ; preds = %bb.bk
  %i.nf = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ng = add i64 %i.nf, 1
  store i64 %i.ng, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128

_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128: ; preds = %bb.bk, %bb.bl
  %.1 = phi i1 [ true, %bb.bl ], [ %.0163235, %bb.bk ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bc, !llvm.loop !232

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118: ; preds = %bb.ba, %.noexc116, %bb.aw, %bb.av, %bb.at, %bb.au, %bb.bb
  %i.nh = add nuw nsw i32 %.062242, 1             ; 2 uses
  %i.ni = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.nj = add nsw i32 %i.ni, 1                    ; 7 uses
  store i32 %i.nj, ptr %i.bi, align 4, !tbaa !176
  %i.nk = load i32, ptr %i.bj, align 8, !tbaa !183
  %i.nl = icmp slt i32 %i.nj, %i.nk
  br i1 %i.nl, label %bb.bm, label %bb.bt

bb.bm:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118
  %i.nm = load i8, ptr %i.br, align 1, !tbaa !185, !range !153, !noundef !154
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %bb.bn, label %._crit_edge.i131

._crit_edge.i131:                                 ; preds = %bb.bm
  %.pre.i133 = load i32, ptr %i.bl, align 8, !tbaa !178
  %.pre313 = load i32, ptr %i.bo, align 4, !tbaa !180
  br label %bb.bw

bb.bn:                                            ; preds = %bb.bm
  %i.no = load i8, ptr %i.bs, align 1, !tbaa !186, !range !153, !noundef !154
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.nq = load i64, ptr %i.bu, align 8, !tbaa !188
  %i.nr = load ptr, ptr %i.ar, align 8, !tbaa !189
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 %i.nq
  store ptr %i.ns, ptr %i.ar, align 8, !tbaa !189
  %i.nt = load i32, ptr %i.bv, align 8, !tbaa !190
  %.not.i.i136 = icmp slt i32 %i.nj, %i.nt
  br i1 %.not.i.i136, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, label %bb.bp, !prof !164

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 unwind label %bb.bx

bb.bq:                                            ; preds = %bb.bn
  %i.nu = load i8, ptr %i.bt, align 2, !tbaa !187, !range !153, !noundef !154
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nw = load i64, ptr %i.bu, align 8, !tbaa !188
  %i.nx = load ptr, ptr %i.ar, align 8, !tbaa !189
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 %i.nw
  store ptr %i.ny, ptr %i.ar, align 8, !tbaa !189
  %i.nz = load i32, ptr %i.bv, align 8, !tbaa !190
  %i.oa = icmp slt i32 %i.nj, %i.nz               ; 3 uses
  %i.ob = load i32, ptr %i.bw, align 4
  %i.oc = icmp sge i32 %i.nj, %i.ob
  %not..i.i134 = xor i1 %i.oa, true
  %or.cond.i.i135 = select i1 %not..i.i134, i1 true, i1 %i.oc, !prof !191
  %i.od = load ptr, ptr %i.bx, align 8
  %i.oe = icmp eq ptr %i.od, null
  %i.of = select i1 %or.cond.i.i135, i1 true, i1 %i.oe, !prof !191
  br i1 %i.of, label %bb.bs, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, !prof !192

bb.bs:                                            ; preds = %bb.br
  %i.og = load ptr, ptr %9, align 8, !tbaa !182
  %i.oh = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.oi = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.oj = load i32, ptr %i.cc, align 8, !tbaa !193
  %i.ok = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.og, i32 noundef %i.nj, i32 noundef %i.oh, i32 noundef %i.oi, ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.bz, ptr noundef nonnull align 4 dereferenceable(4) %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %i.cb, i1 noundef zeroext %i.oa, i32 noundef %i.oj)
          to label %.noexc138 unwind label %bb.bx

.noexc138:                                        ; preds = %bb.bs
  %i.ol = zext i1 %i.oa to i8
  store ptr %i.ok, ptr %i.ar, align 8, !tbaa !189
  store i8 %i.ol, ptr %i.br, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140

bb.bt:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118
  %i.om = load i32, ptr %i.bk, align 4, !tbaa !177 ; 3 uses
  store i32 %i.om, ptr %i.bi, align 4, !tbaa !176
  %i.on = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.oo = add nsw i32 %i.on, 1                    ; 3 uses
  store i32 %i.oo, ptr %i.bl, align 8, !tbaa !178
  %i.op = load i32, ptr %i.bm, align 8, !tbaa !184
  %.not.i129 = icmp slt i32 %i.oo, %i.op
  %.pre314 = load i32, ptr %i.bo, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i129, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.oq = load i32, ptr %i.bn, align 4, !tbaa !179 ; 2 uses
  store i32 %i.oq, ptr %i.bl, align 8, !tbaa !178
  %i.or = add nsw i32 %.pre314, 1                 ; 3 uses
  store i32 %i.or, ptr %i.bo, align 4, !tbaa !180
  %i.os = load i32, ptr %i.bp, align 8, !tbaa !181
  %.not1.i130 = icmp slt i32 %i.or, %i.os
  br i1 %.not1.i130, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i8 0, ptr %i.bq, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i131
  %i.ot = phi i32 [ %.pre314, %bb.bt ], [ %i.or, %bb.bu ], [ %.pre313, %._crit_edge.i131 ]
  %i.ou = phi i32 [ %i.oo, %bb.bt ], [ %i.oq, %bb.bu ], [ %.pre.i133, %._crit_edge.i131 ]
  %i.ov = phi i32 [ %i.om, %bb.bt ], [ %i.om, %bb.bu ], [ %i.nj, %._crit_edge.i131 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %9, i32 noundef %i.ov, i32 noundef %i.ou, i32 noundef %i.ot)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 unwind label %bb.bx

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140: ; preds = %bb.bw, %bb.bp, %bb.bo, %bb.bq, %bb.br, %.noexc138, %bb.bv
  %exitcond308.not = icmp eq i32 %i.nh, 4096
  br i1 %exitcond308.not, label %.critedge.loopexit191, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.bx:                                            ; preds = %bb.bw, %bb.bs, %bb.bp, %bb.bb, %bb.ax, %bb.au
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.critedge.loopexit191:                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %.3185.lcssa = phi double [ %.4186.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.3185239, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106 ]
  %.3171.lcssa = phi double [ %.4172.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.3171240, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106 ]
  %.4.lcssa = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.4241, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106 ]
  %11 = insertelement <2 x double> poison, double %.3171.lcssa, i64 0
  %12 = insertelement <2 x double> %11, double %.3185.lcssa, i64 1
  %13 = fadd <2 x double> %10, %12
  br label %.preheader192.split, !llvm.loop !229

.split.us277:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %.us-phi = phi float [ %.0166.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ox = phi <2 x double> [ %i.cf, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us ], [ %10, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.oy = sext i32 %i.y to i64
  %i.oz = mul i64 %i.t, %i.oy
  %i.pa = uitofp i64 %i.oz to double
  %i.pb = insertelement <2 x double> poison, double %i.pa, i64 0
  %i.pc = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pd = fdiv <2 x double> %i.ox, %i.pc          ; 2 uses
  %i.pe = extractelement <2 x double> %i.pd, i64 0
  store double %i.pe, ptr %6, align 8, !tbaa !205
  %i.pf = extractelement <2 x double> %i.pd, i64 1
  %i.pg = call double @llvm.sqrt.f64(double %i.pf) ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.pg, ptr %i.ph, align 8, !tbaa !206
  %i.pi = fpext float %.us-phi to double
  %i.pj = fdiv double %i.pi, %i.pg
  %i.pk = call double @llvm.log10.f64(double %i.pj)
  %i.pl = fmul double %i.pk, 2.000000e+01
  %i.pm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.pl, ptr %i.pm, align 8, !tbaa !207
  %i.pn = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.po = load ptr, ptr %i.bx, align 8, !tbaa !208
  %.not.i141 = icmp eq ptr %i.po, null
  br i1 %.not.i141, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.by

bb.by:                                            ; preds = %.split.us277
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pp = landingpad { ptr, i32 }
          catch ptr null
  %i.pq = extractvalue { ptr, i32 } %i.pp, 0
  call void @__clang_call_terminate(ptr %i.pq) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us277, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.pr = load ptr, ptr %i.bc, align 8, !tbaa !208
  %.not.i142 = icmp eq ptr %i.pr, null
  br i1 %.not.i142, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit143, label %bb.ca

bb.ca:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit143 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ps = landingpad { ptr, i32 }
          catch ptr null
  %i.pt = extractvalue { ptr, i32 } %i.ps, 0
  call void @__clang_call_terminate(ptr %i.pt) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit143: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.ca
  %i.pu = icmp eq i64 %i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  ret i1 %i.pu

bb.cc:                                            ; preds = %.split287.us, %bb.bx, %.split281.us, %.split284.us, %.split.us.split.us, %bb.ap
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %i.jo, %bb.ap ], [ %i.ja, %.split287.us ], [ %i.ow, %bb.bx ], [ %i.iy, %.split281.us ], [ %i.jb, %.split.us.split.us ], [ %i.iz, %.split284.us ] ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !208
  %.not.i144 = icmp eq ptr %i.pw, null
  br i1 %.not.i144, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.px = landingpad { ptr, i32 }
          catch ptr null
  %i.py = extractvalue { ptr, i32 } %i.px, 0
  call void @__clang_call_terminate(ptr %i.py) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145: ; preds = %bb.cd, %bb.cc, %bb.ao
  %.pn79.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jn, %bb.ao ], [ %.pn79.pn.pn.pn, %bb.cc ], [ %.pn79.pn.pn.pn, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.pz = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !208
  %.not.i146 = icmp eq ptr %i.qa, null
  br i1 %.not.i146, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit147, label %bb.cf

bb.cf:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit147 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qb = landingpad { ptr, i32 }
          catch ptr null
  %i.qc = extractvalue { ptr, i32 } %i.qb, 0
  call void @__clang_call_terminate(ptr %i.qc) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit147: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  resume { ptr, i32 } %.pn79.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN11OpenImageIO4v3_1L8compare_IhN9Imath_3_14halfEEEbRKNS0_8ImageBufES6_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) initializes((24, 64)) %6, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.120", align 8 ; 37 uses
  %9 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.125", align 8 ; 37 uses
  %i.a = load i32, ptr %7, align 8, !tbaa !77     ; 2 uses
  %.not.i = icmp eq i32 %i.a, -2147483648
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !168
  %i.d = sub nsw i32 %i.c, %i.a
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !104
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.k, %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !169
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !170
  %i.q = sub nsw i32 %i.n, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = mul i64 %i.l, %i.r
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit

_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit:        ; preds = %bb.a, %bb.b
  %i.t = phi i64 [ %i.s, %bb.b ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !171
  %i.y = sub nsw i32 %i.v, %i.x
  %i.z = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.aa = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(32) %7, i32 noundef 1, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %9, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(32) %7, i32 noundef 1, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.ao

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.ai = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf4deepEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %.preheader197 unwind label %bb.ap

.preheader197:                                    ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 60 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 17 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 68 ; 17 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 11 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 11 uses
  %i.as = fpext float %5 to double                ; 2 uses
  %i.at = fpext float %4 to double                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 9 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 11 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 10 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 92 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 84 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 124 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 120 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 44 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 68 ; 10 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 9 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 11 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 92 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 84 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L8compare_IhtEEbRKNS0_8ImageBufES4_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %i.gl = zext i1 %i.ga to i8
  store ptr %i.gk, ptr %i.ar, align 8, !tbaa !189
  store i8 %i.gl, ptr %i.br, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us

bb.z:                                             ; preds = %bb.v
  %i.gm = load i64, ptr %i.bu, align 8, !tbaa !188
  %i.gn = load ptr, ptr %i.ar, align 8, !tbaa !189
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %i.gm
  store ptr %i.go, ptr %i.ar, align 8, !tbaa !189
  %i.gp = load i32, ptr %i.bv, align 8, !tbaa !190
  %.not.i.i101.us = icmp slt i32 %i.fd, %i.gp
  br i1 %.not.i.i101.us, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us, label %bb.aa, !prof !164

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us unwind label %.split287.us

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us: ; preds = %bb.aa, %bb.z, %.noexc103.us, %bb.x, %bb.w, %bb.u, %bb.s
  %exitcond310.not = icmp eq i32 %i.fb, 4096
  br i1 %exitcond310.not, label %.critedge.loopexit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

.critedge.loopexit.us:                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us
  %.0182.lcssa.us = phi double [ %.1183.lcssa.us, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us ], [ %.0182269.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us ]
  %.0168.lcssa.us = phi double [ %.1169.lcssa.us, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us ], [ %.0168270.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us ]
  %.1167.lcssa.us = phi float [ %.2.lcssa.us, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us ], [ %.1167271.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us ]
  %i.gq = insertelement <2 x double> poison, double %.0168.lcssa.us, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %.0182.lcssa.us, i64 1
  %i.gs = fadd <2 x double> %i.cf, %i.gr
  br label %.preheader192.split.us, !llvm.loop !237

.preheader.us.us:                                 ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us, %._crit_edge250.us.us
  %.065261.us.us = phi i32 [ %i.iv, %._crit_edge250.us.us ], [ %i.dj, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ] ; 5 uses
  %.2260.us.us = phi float [ %.7.us.us, %._crit_edge250.us.us ], [ %.1167271.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.1169259.us.us = phi double [ %.6174.us.us, %._crit_edge250.us.us ], [ %.0168270.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.0175258.us.us = phi i1 [ %.2177.us.us, %._crit_edge250.us.us ], [ false, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.0178257.us.us = phi i1 [ %.3181.us.us, %._crit_edge250.us.us ], [ false, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.1183256.us.us = phi double [ %.6188.us.us, %._crit_edge250.us.us ], [ %.0182269.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us, %.preheader.us.us
  %.064248.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.iu, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %.3247.us.us = phi float [ %.2260.us.us, %.preheader.us.us ], [ %.7.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2170246.us.us = phi double [ %.1169259.us.us, %.preheader.us.us ], [ %.6174.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %.1176245.us.us = phi i1 [ %.0175258.us.us, %.preheader.us.us ], [ %.2177.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1179244.us.us = phi i1 [ %.0178257.us.us, %.preheader.us.us ], [ %.3181.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2184243.us.us = phi double [ %.1183256.us.us, %.preheader.us.us ], [ %.6188.us.us, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gt = load ptr, ptr %8, align 8, !tbaa !182
  %i.gu = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gv = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gw = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gx = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i32 noundef %i.gu, i32 noundef %i.gv, i32 noundef %i.gw, i32 noundef %.065261.us.us, i32 noundef %.064248.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gy = load ptr, ptr %9, align 8, !tbaa !182
  %i.gz = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.ha = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.hb = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.hc = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i32 noundef %i.gz, i32 noundef %i.ha, i32 noundef %i.hb, i32 noundef %.065261.us.us, i32 noundef %.064248.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hd = call float @llvm.fabs.f32(float %i.gx)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %i.hf = call float @llvm.fabs.f32(float %i.hc)  ; 5 uses
  %i.hg = fcmp one float %i.hf, +inf
  %or.cond70.i.us.us = and i1 %i.he, %i.hg
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre318 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hh = fcmp uno float %i.gx, 0.000000e+00
  %i.hi = fcmp uno float %i.hc, 0.000000e+00
  %i.hj = xor i1 %i.hh, %i.hi
  br i1 %i.hj, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hk = fcmp oeq float %i.hd, +inf
  %i.hl = fcmp oeq float %i.hf, +inf
  %i.hm = xor i1 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hn = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.ho = call double @llvm.fabs.f64(double %i.hn)
  %i.hp = fcmp ueq double %i.ho, +inf
  br i1 %i.hp, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.hq = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.hq, ptr %i.ac, align 8, !tbaa !3
  %i.hr = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hr, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065261.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hs = phi double [ %.pre318, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hn, %bb.ae ]
  %i.ht = fpext float %i.hd to double
  %i.hu = fpext float %i.hf to double
  %i.hv = fmul double %i.hu, 5.000000e-01
  %i.hw = call double @llvm.fmuladd.f64(double %i.ht, double 5.000000e-01, double %i.hv) ; 2 uses
  %i.hx = fptrunc double %i.hw to float
  %i.hy = fcmp olt float %i.hd, %i.hf
  %.sroa.speculated65.i.us.us = select i1 %i.hy, float %i.hf, float %i.hd ; 2 uses
  %i.hz = fcmp olt float %.3247.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hz, float %.sroa.speculated65.i.us.us, float %.3247.us.us ; 2 uses
  %i.ia = fsub float %i.gx, %i.hc
  %i.ib = call noundef float @llvm.fabs.f32(float %i.ia) ; 3 uses
  %i.ic = fpext float %i.ib to double             ; 6 uses
  %i.id = fpext float %i.hx to double
  %i.ie = fcmp ogt double %i.hw, f0x3690000000000000
  %i.if = fdiv double %i.ic, %i.id
  %i.ig = select i1 %i.ie, double %i.if, double 0.000000e+00 ; 2 uses
  %i.ih = fadd double %.2170246.us.us, %i.ic      ; 2 uses
  %i.ii = call double @llvm.fmuladd.f64(double %i.ic, double %i.ic, double %.2184243.us.us) ; 2 uses
  %i.ij = fcmp ult double %i.hs, %i.ic
  br i1 %i.ij, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ic, ptr %i.ab, align 8, !tbaa !195
  %i.ik = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ik, ptr %i.ac, align 8, !tbaa !3
  %i.il = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.il, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065261.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1179244.us.us, true
  %i.im = fcmp ugt float %i.ib, %3
  %or.cond.i.us.us = and i1 %i.im, %.not.i93.us.us
  %i.in = fcmp ugt double %i.ig, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.in
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.io = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.ip = add i64 %i.io, 1
  store i64 %i.ip, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2180.us.us = phi i1 [ true, %bb.aj ], [ %.1179244.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1176245.us.us, true
  %i.iq = fcmp ugt float %i.ib, %2
  %or.cond58.i.us.us = and i1 %i.iq, %.not57.i.us.us
  %i.ir = fcmp ugt double %i.ig, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ir
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.is = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.it = add i64 %i.is, 1
  store i64 %i.it, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6188.us.us = phi double [ %i.ii, %bb.al ], [ %i.ii, %bb.ak ], [ %.2184243.us.us, %bb.af ], [ %.2184243.us.us, %bb.ad ] ; 3 uses
  %.3181.us.us = phi i1 [ %.2180.us.us, %bb.al ], [ %.2180.us.us, %bb.ak ], [ %.1179244.us.us, %bb.af ], [ %.1179244.us.us, %bb.ad ] ; 2 uses
  %.2177.us.us = phi i1 [ true, %bb.al ], [ %.1176245.us.us, %bb.ak ], [ %.1176245.us.us, %bb.af ], [ %.1176245.us.us, %bb.ad ] ; 2 uses
  %.6174.us.us = phi double [ %i.ih, %bb.al ], [ %i.ih, %bb.ak ], [ %.2170246.us.us, %bb.af ], [ %.2170246.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3247.us.us, %bb.af ], [ %.3247.us.us, %bb.ad ] ; 3 uses
  %i.iu = add nuw nsw i32 %.064248.us.us, 1       ; 2 uses
  %exitcond309.not = icmp eq i32 %i.iu, %.sroa.speculated.us
  br i1 %exitcond309.not, label %._crit_edge250.us.us, label %bb.ab, !llvm.loop !238

._crit_edge250.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.iv = add nsw i32 %.065261.us.us, 1           ; 2 uses
  %i.iw = load i32, ptr %i.u, align 4, !tbaa !80
  %i.ix = icmp slt i32 %i.iv, %i.iw
  br i1 %i.ix, label %.preheader.us.us, label %._crit_edge262.us, !llvm.loop !239

.split281.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split284.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split287.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.preheader192.split:                              ; preds = %.preheader192.split.preheader, %.critedge.loopexit191
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit191 ], [ 1.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %10 = phi <2 x double> [ %13, %.critedge.loopexit191 ], [ zeroinitializer, %.preheader192.split.preheader ] ; 2 uses
  %i.jc = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jd = icmp eq i8 %i.jc, 0
  br i1 %i.jd, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader192.split
  %i.je = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jf = load i32, ptr %i.al, align 4, !tbaa !177
  %i.jg = icmp eq i32 %i.je, %i.jf
  br i1 %i.jg, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jh = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ji = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jj = icmp eq i32 %i.jh, %i.ji
  br i1 %i.jj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.jk = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jl = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jm = icmp eq i32 %i.jk, %i.jl
  br i1 %i.jm, label %.split.us277, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader192.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062242 = phi i32 [ %i.nh, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4241 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3171240 = phi double [ %.4172.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3185239 = phi double [ %.4186.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jp = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jq = icmp eq i8 %i.jp, 0
  %.pre.pre = load i32, ptr %i.ak, align 4        ; 3 uses
  %i.jr = load i32, ptr %i.al, align 4
  %i.js = icmp eq i32 %.pre.pre, %i.jr
  %or.cond365 = select i1 %i.jq, i1 %i.js, i1 false
  br i1 %or.cond365, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ju = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jv = icmp eq i32 %i.jt, %i.ju
  br i1 %i.jv, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.jw = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jx = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jy = icmp eq i32 %i.jw, %i.jx
  br i1 %i.jy, label %.critedge.loopexit191, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jz = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.ka = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.kb = icmp slt i32 %i.jz, %i.ka
  br i1 %i.kb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %i.kc = load ptr, ptr %i.aq, align 8
  %i.kd = load ptr, ptr %i.ar, align 8
  %i.ke = load <2 x i32>, ptr %i.am, align 8
  %.promoted = load double, ptr %i.ab, align 8, !tbaa !195
  %i.kf = sext i32 %i.jz to i64
  %wide.trip.count = sext i32 %i.ka to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4186.lcssa = phi double [ %.3185239, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172.lcssa = phi double [ %.3171240, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4241, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.kg = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kg, ptr %i.ak, align 4, !tbaa !176
  %i.kh = load i32, ptr %i.au, align 8, !tbaa !183
  %i.ki = icmp slt i32 %i.kg, %i.kh
  br i1 %i.ki, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.kj = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre311 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kl = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.kn = load i64, ptr %i.az, align 8, !tbaa !188
  %i.ko = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 %i.kn
  store ptr %i.kp, ptr %i.aq, align 8, !tbaa !189
  %i.kq = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kg, %i.kq
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.av:                                            ; preds = %bb.as
  %i.kr = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kt = load i64, ptr %i.az, align 8, !tbaa !188
  %i.ku = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 %i.kt
  store ptr %i.kv, ptr %i.aq, align 8, !tbaa !189
  %i.kw = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kx = icmp slt i32 %i.kg, %i.kw               ; 3 uses
  %i.ky = load i32, ptr %i.bb, align 4
  %i.kz = icmp sge i32 %i.kg, %i.ky
  %not..i.i112 = xor i1 %i.kx, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.kz, !prof !191
  %i.la = load ptr, ptr %i.bc, align 8
  %i.lb = icmp eq ptr %i.la, null
  %i.lc = select i1 %or.cond.i.i113, i1 true, i1 %i.lb, !prof !191
  br i1 %i.lc, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.ld = load ptr, ptr %8, align 8, !tbaa !182
  %i.le = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lf = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lg = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lh = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, i32 noundef %i.kg, i32 noundef %i.le, i32 noundef %i.lf, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kx, i32 noundef %i.lg)
          to label %.noexc116 unwind label %bb.bx

.noexc116:                                        ; preds = %bb.ax
  %i.li = zext i1 %i.kx to i8
  store ptr %i.lh, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.li, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.lj = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.lj, ptr %i.ak, align 4, !tbaa !176
  %i.lk = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ll = add nsw i32 %i.lk, 1                    ; 3 uses
  store i32 %i.ll, ptr %i.am, align 8, !tbaa !178
  %i.lm = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.ll, %i.lm
  %.pre312 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ln = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.ln, ptr %i.am, align 8, !tbaa !178
  %i.lo = add nsw i32 %.pre312, 1                 ; 3 uses
  store i32 %i.lo, ptr %i.ao, align 4, !tbaa !180
  %i.lp = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.lo, %i.lp
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lq = phi i32 [ %.pre312, %bb.ay ], [ %i.lo, %bb.az ], [ %.pre311, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.ll, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.ls = phi i32 [ %i.lj, %bb.ay ], [ %i.lj, %bb.az ], [ %i.kg, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.ls, i32 noundef %i.lr, i32 noundef %i.lq)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.kf, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 6 uses
  %i.lt = phi double [ %.promoted, %.lr.ph ], [ %i.my, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.0163235 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.0164234 = phi i1 [ false, %.lr.ph ], [ %.1165, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5233 = phi float [ %.4241, %.lr.ph ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172232 = phi double [ %.3171240, %.lr.ph ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %.4186231 = phi double [ %.3185239, %.lr.ph ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %i.lu = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lv = getelementptr inbounds i8, ptr %i.kc, i64 %indvars.iv
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !136
  %i.lx = uitofp i8 %i.lw to float
  %i.ly = fmul nnan float %i.lx, f0x3B808081
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.lz = phi float [ %i.ly, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 4 uses
  %i.ma = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.ma, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mb = getelementptr inbounds [2 x i8], ptr %i.kd, i64 %indvars.iv
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
  %i.mm = fcmp olt float %.5233, %.sroa.speculated65.i120
  %.sroa.speculated.i121 = select i1 %i.mm, float %.sroa.speculated65.i120, float %.5233 ; 2 uses
  %i.mn = fsub float %i.lz, %i.mf
  %i.mo = call noundef float @llvm.fabs.f32(float %i.mn) ; 3 uses
  %i.mp = fpext float %i.mo to double             ; 7 uses
  %i.mq = fpext float %i.mk to double
  %i.mr = fcmp ogt double %i.mj, f0x3690000000000000
  %i.ms = fdiv double %i.mp, %i.mq
  %i.mt = select i1 %i.mr, double %i.ms, double 0.000000e+00 ; 2 uses
  %i.mu = fadd double %.4172232, %i.mp            ; 2 uses
  %i.mv = call double @llvm.fmuladd.f64(double %i.mp, double %i.mp, double %.4186231) ; 2 uses
  %i.mw = fcmp ult double %i.lt, %i.mp
  br i1 %i.mw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store double %i.mp, ptr %i.ab, align 8, !tbaa !195
  store i32 %.pre.pre, ptr %i.ac, align 8, !tbaa !202
  store <2 x i32> %i.ke, ptr %i.ad, align 4, !tbaa !3
  %i.mx = trunc nsw i64 %indvars.iv to i32
  store i32 %i.mx, ptr %i.af, align 4, !tbaa !197
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.my = phi double [ %i.mp, %bb.bh ], [ %i.lt, %bb.bg ]
  %.not.i122 = xor i1 %.0164234, true
  %i.mz = fcmp ugt float %i.mo, %3
  %or.cond.i123 = and i1 %i.mz, %.not.i122
  %i.na = fcmp ugt double %i.mt, %i.as
  %or.cond56.i124 = and i1 %or.cond.i123, %i.na
  br i1 %or.cond56.i124, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.nb = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.nc = add i64 %i.nb, 1
  store i64 %i.nc, ptr %i.ah, align 8, !tbaa !198
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.1165 = phi i1 [ true, %bb.bj ], [ %.0164234, %bb.bi ]
  %.not57.i125 = xor i1 %.0163235, true
  %i.nd = fcmp ugt float %i.mo, %2
  %or.cond58.i126 = and i1 %i.nd, %.not57.i125
  %i.ne = fcmp ugt double %i.mt, %i.at
  %or.cond60.i127 = and i1 %or.cond58.i126, %i.ne
  br i1 %or.cond60.i127, label %bb.bl, label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128

bb.bl:                                            ; preds = %bb.bk
  %i.nf = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ng = add i64 %i.nf, 1
  store i64 %i.ng, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128

_ZN11OpenImageIO4v3_113compare_valueIhfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128: ; preds = %bb.bk, %bb.bl
  %.1 = phi i1 [ true, %bb.bl ], [ %.0163235, %bb.bk ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bc, !llvm.loop !240

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118: ; preds = %bb.ba, %.noexc116, %bb.aw, %bb.av, %bb.at, %bb.au, %bb.bb
  %i.nh = add nuw nsw i32 %.062242, 1             ; 2 uses
  %i.ni = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.nj = add nsw i32 %i.ni, 1                    ; 7 uses
  store i32 %i.nj, ptr %i.bi, align 4, !tbaa !176
  %i.nk = load i32, ptr %i.bj, align 8, !tbaa !183
  %i.nl = icmp slt i32 %i.nj, %i.nk
  br i1 %i.nl, label %bb.bm, label %bb.bt

bb.bm:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118
  %i.nm = load i8, ptr %i.br, align 1, !tbaa !185, !range !153, !noundef !154
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %bb.bn, label %._crit_edge.i131

._crit_edge.i131:                                 ; preds = %bb.bm
  %.pre.i133 = load i32, ptr %i.bl, align 8, !tbaa !178
  %.pre313 = load i32, ptr %i.bo, align 4, !tbaa !180
  br label %bb.bw

bb.bn:                                            ; preds = %bb.bm
  %i.no = load i8, ptr %i.bs, align 1, !tbaa !186, !range !153, !noundef !154
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.nq = load i64, ptr %i.bu, align 8, !tbaa !188
  %i.nr = load ptr, ptr %i.ar, align 8, !tbaa !189
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 %i.nq
  store ptr %i.ns, ptr %i.ar, align 8, !tbaa !189
  %i.nt = load i32, ptr %i.bv, align 8, !tbaa !190
  %.not.i.i136 = icmp slt i32 %i.nj, %i.nt
  br i1 %.not.i.i136, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, label %bb.bp, !prof !164

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 unwind label %bb.bx

bb.bq:                                            ; preds = %bb.bn
  %i.nu = load i8, ptr %i.bt, align 2, !tbaa !187, !range !153, !noundef !154
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nw = load i64, ptr %i.bu, align 8, !tbaa !188
  %i.nx = load ptr, ptr %i.ar, align 8, !tbaa !189
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 %i.nw
  store ptr %i.ny, ptr %i.ar, align 8, !tbaa !189
  %i.nz = load i32, ptr %i.bv, align 8, !tbaa !190
  %i.oa = icmp slt i32 %i.nj, %i.nz               ; 3 uses
  %i.ob = load i32, ptr %i.bw, align 4
  %i.oc = icmp sge i32 %i.nj, %i.ob
  %not..i.i134 = xor i1 %i.oa, true
  %or.cond.i.i135 = select i1 %not..i.i134, i1 true, i1 %i.oc, !prof !191
  %i.od = load ptr, ptr %i.bx, align 8
  %i.oe = icmp eq ptr %i.od, null
  %i.of = select i1 %or.cond.i.i135, i1 true, i1 %i.oe, !prof !191
  br i1 %i.of, label %bb.bs, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, !prof !192

bb.bs:                                            ; preds = %bb.br
  %i.og = load ptr, ptr %9, align 8, !tbaa !182
  %i.oh = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.oi = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.oj = load i32, ptr %i.cc, align 8, !tbaa !193
  %i.ok = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.og, i32 noundef %i.nj, i32 noundef %i.oh, i32 noundef %i.oi, ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.bz, ptr noundef nonnull align 4 dereferenceable(4) %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %i.cb, i1 noundef zeroext %i.oa, i32 noundef %i.oj)
          to label %.noexc138 unwind label %bb.bx

.noexc138:                                        ; preds = %bb.bs
  %i.ol = zext i1 %i.oa to i8
  store ptr %i.ok, ptr %i.ar, align 8, !tbaa !189
  store i8 %i.ol, ptr %i.br, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140

bb.bt:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118
  %i.om = load i32, ptr %i.bk, align 4, !tbaa !177 ; 3 uses
  store i32 %i.om, ptr %i.bi, align 4, !tbaa !176
  %i.on = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.oo = add nsw i32 %i.on, 1                    ; 3 uses
  store i32 %i.oo, ptr %i.bl, align 8, !tbaa !178
  %i.op = load i32, ptr %i.bm, align 8, !tbaa !184
  %.not.i129 = icmp slt i32 %i.oo, %i.op
  %.pre314 = load i32, ptr %i.bo, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i129, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.oq = load i32, ptr %i.bn, align 4, !tbaa !179 ; 2 uses
  store i32 %i.oq, ptr %i.bl, align 8, !tbaa !178
  %i.or = add nsw i32 %.pre314, 1                 ; 3 uses
  store i32 %i.or, ptr %i.bo, align 4, !tbaa !180
  %i.os = load i32, ptr %i.bp, align 8, !tbaa !181
  %.not1.i130 = icmp slt i32 %i.or, %i.os
  br i1 %.not1.i130, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i8 0, ptr %i.bq, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i131
  %i.ot = phi i32 [ %.pre314, %bb.bt ], [ %i.or, %bb.bu ], [ %.pre313, %._crit_edge.i131 ]
  %i.ou = phi i32 [ %i.oo, %bb.bt ], [ %i.oq, %bb.bu ], [ %.pre.i133, %._crit_edge.i131 ]
  %i.ov = phi i32 [ %i.om, %bb.bt ], [ %i.om, %bb.bu ], [ %i.nj, %._crit_edge.i131 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %9, i32 noundef %i.ov, i32 noundef %i.ou, i32 noundef %i.ot)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 unwind label %bb.bx

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140: ; preds = %bb.bw, %bb.bp, %bb.bo, %bb.bq, %bb.br, %.noexc138, %bb.bv
  %exitcond308.not = icmp eq i32 %i.nh, 4096
  br i1 %exitcond308.not, label %.critedge.loopexit191, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.bx:                                            ; preds = %bb.bw, %bb.bs, %bb.bp, %bb.bb, %bb.ax, %bb.au
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.critedge.loopexit191:                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %.3185.lcssa = phi double [ %.4186.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.3185239, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106 ]
  %.3171.lcssa = phi double [ %.4172.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.3171240, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106 ]
  %.4.lcssa = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.4241, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106 ]
  %11 = insertelement <2 x double> poison, double %.3171.lcssa, i64 0
  %12 = insertelement <2 x double> %11, double %.3185.lcssa, i64 1
  %13 = fadd <2 x double> %10, %12
  br label %.preheader192.split, !llvm.loop !237

.split.us277:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %.us-phi = phi float [ %.0166.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ox = phi <2 x double> [ %i.cf, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us ], [ %10, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.oy = sext i32 %i.y to i64
  %i.oz = mul i64 %i.t, %i.oy
  %i.pa = uitofp i64 %i.oz to double
  %i.pb = insertelement <2 x double> poison, double %i.pa, i64 0
  %i.pc = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pd = fdiv <2 x double> %i.ox, %i.pc          ; 2 uses
  %i.pe = extractelement <2 x double> %i.pd, i64 0
  store double %i.pe, ptr %6, align 8, !tbaa !205
  %i.pf = extractelement <2 x double> %i.pd, i64 1
  %i.pg = call double @llvm.sqrt.f64(double %i.pf) ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.pg, ptr %i.ph, align 8, !tbaa !206
  %i.pi = fpext float %.us-phi to double
  %i.pj = fdiv double %i.pi, %i.pg
  %i.pk = call double @llvm.log10.f64(double %i.pj)
  %i.pl = fmul double %i.pk, 2.000000e+01
  %i.pm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.pl, ptr %i.pm, align 8, !tbaa !207
  %i.pn = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.po = load ptr, ptr %i.bx, align 8, !tbaa !208
  %.not.i141 = icmp eq ptr %i.po, null
  br i1 %.not.i141, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.by

bb.by:                                            ; preds = %.split.us277
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pp = landingpad { ptr, i32 }
          catch ptr null
  %i.pq = extractvalue { ptr, i32 } %i.pp, 0
  call void @__clang_call_terminate(ptr %i.pq) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us277, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.pr = load ptr, ptr %i.bc, align 8, !tbaa !208
  %.not.i142 = icmp eq ptr %i.pr, null
  br i1 %.not.i142, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit143, label %bb.ca

bb.ca:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit143 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ps = landingpad { ptr, i32 }
          catch ptr null
  %i.pt = extractvalue { ptr, i32 } %i.ps, 0
  call void @__clang_call_terminate(ptr %i.pt) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit143: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.ca
  %i.pu = icmp eq i64 %i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  ret i1 %i.pu

bb.cc:                                            ; preds = %.split287.us, %bb.bx, %.split281.us, %.split284.us, %.split.us.split.us, %bb.ap
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %i.jo, %bb.ap ], [ %i.ja, %.split287.us ], [ %i.ow, %bb.bx ], [ %i.iy, %.split281.us ], [ %i.jb, %.split.us.split.us ], [ %i.iz, %.split284.us ] ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !208
  %.not.i144 = icmp eq ptr %i.pw, null
  br i1 %.not.i144, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.px = landingpad { ptr, i32 }
          catch ptr null
  %i.py = extractvalue { ptr, i32 } %i.px, 0
  call void @__clang_call_terminate(ptr %i.py) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145: ; preds = %bb.cd, %bb.cc, %bb.ao
  %.pn79.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jn, %bb.ao ], [ %.pn79.pn.pn.pn, %bb.cc ], [ %.pn79.pn.pn.pn, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.pz = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !208
  %.not.i146 = icmp eq ptr %i.qa, null
  br i1 %.not.i146, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit147, label %bb.cf

bb.cf:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit147 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qb = landingpad { ptr, i32 }
          catch ptr null
  %i.qc = extractvalue { ptr, i32 } %i.qb, 0
  call void @__clang_call_terminate(ptr %i.qc) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit147: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  resume { ptr, i32 } %.pn79.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN11OpenImageIO4v3_1L8compare_IN9Imath_3_14halfEfEEbRKNS0_8ImageBufES6_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) initializes((24, 64)) %6, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.125", align 8 ; 37 uses
  %9 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 37 uses
  %i.a = load i32, ptr %7, align 8, !tbaa !77     ; 2 uses
  %.not.i = icmp eq i32 %i.a, -2147483648
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !168
  %i.d = sub nsw i32 %i.c, %i.a
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !104
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.k, %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !169
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !170
  %i.q = sub nsw i32 %i.n, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = mul i64 %i.l, %i.r
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit

_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit:        ; preds = %bb.a, %bb.b
  %i.t = phi i64 [ %i.s, %bb.b ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !171
  %i.y = sub nsw i32 %i.v, %i.x
  %i.z = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.aa = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(32) %7, i32 noundef 1, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %9, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(32) %7, i32 noundef 1, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.ao

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.ai = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf4deepEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %.preheader195 unwind label %bb.ap

.preheader195:                                    ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 60 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 17 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 68 ; 17 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 11 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 11 uses
  %i.as = fpext float %5 to double                ; 2 uses
  %i.at = fpext float %4 to double                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 9 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 11 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 10 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 92 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 84 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 124 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 120 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 44 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 68 ; 10 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 9 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 11 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 92 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 84 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L8compare_IthEEbRKNS0_8ImageBufES4_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %i.gl = zext i1 %i.ga to i8
  store ptr %i.gk, ptr %i.ar, align 8, !tbaa !189
  store i8 %i.gl, ptr %i.br, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us

bb.z:                                             ; preds = %bb.v
  %i.gm = load i64, ptr %i.bu, align 8, !tbaa !188
  %i.gn = load ptr, ptr %i.ar, align 8, !tbaa !189
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %i.gm
  store ptr %i.go, ptr %i.ar, align 8, !tbaa !189
  %i.gp = load i32, ptr %i.bv, align 8, !tbaa !190
  %.not.i.i101.us = icmp slt i32 %i.fd, %i.gp
  br i1 %.not.i.i101.us, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us, label %bb.aa, !prof !164

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us unwind label %.split287.us

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us: ; preds = %bb.aa, %bb.z, %.noexc103.us, %bb.x, %bb.w, %bb.u, %bb.s
  %exitcond310.not = icmp eq i32 %i.fb, 4096
  br i1 %exitcond310.not, label %.critedge.loopexit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

.critedge.loopexit.us:                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us
  %.0182.lcssa.us = phi double [ %.1183.lcssa.us, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us ], [ %.0182269.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us ]
  %.0168.lcssa.us = phi double [ %.1169.lcssa.us, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us ], [ %.0168270.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us ]
  %.1167.lcssa.us = phi float [ %.2.lcssa.us, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us ], [ %.1167271.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us ]
  %i.gq = insertelement <2 x double> poison, double %.0168.lcssa.us, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %.0182.lcssa.us, i64 1
  %i.gs = fadd <2 x double> %i.cf, %i.gr
  br label %.preheader192.split.us, !llvm.loop !261

.preheader.us.us:                                 ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us, %._crit_edge250.us.us
  %.065261.us.us = phi i32 [ %i.iv, %._crit_edge250.us.us ], [ %i.dj, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ] ; 5 uses
  %.2260.us.us = phi float [ %.7.us.us, %._crit_edge250.us.us ], [ %.1167271.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.1169259.us.us = phi double [ %.6174.us.us, %._crit_edge250.us.us ], [ %.0168270.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.0175258.us.us = phi i1 [ %.2177.us.us, %._crit_edge250.us.us ], [ false, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.0178257.us.us = phi i1 [ %.3181.us.us, %._crit_edge250.us.us ], [ false, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.1183256.us.us = phi double [ %.6188.us.us, %._crit_edge250.us.us ], [ %.0182269.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us, %.preheader.us.us
  %.064248.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.iu, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %.3247.us.us = phi float [ %.2260.us.us, %.preheader.us.us ], [ %.7.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2170246.us.us = phi double [ %.1169259.us.us, %.preheader.us.us ], [ %.6174.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %.1176245.us.us = phi i1 [ %.0175258.us.us, %.preheader.us.us ], [ %.2177.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1179244.us.us = phi i1 [ %.0178257.us.us, %.preheader.us.us ], [ %.3181.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2184243.us.us = phi double [ %.1183256.us.us, %.preheader.us.us ], [ %.6188.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gt = load ptr, ptr %8, align 8, !tbaa !182
  %i.gu = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gv = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gw = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gx = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i32 noundef %i.gu, i32 noundef %i.gv, i32 noundef %i.gw, i32 noundef %.065261.us.us, i32 noundef %.064248.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gy = load ptr, ptr %9, align 8, !tbaa !182
  %i.gz = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.ha = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.hb = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.hc = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i32 noundef %i.gz, i32 noundef %i.ha, i32 noundef %i.hb, i32 noundef %.065261.us.us, i32 noundef %.064248.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hd = call float @llvm.fabs.f32(float %i.gx)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %i.hf = call float @llvm.fabs.f32(float %i.hc)  ; 5 uses
  %i.hg = fcmp one float %i.hf, +inf
  %or.cond70.i.us.us = and i1 %i.he, %i.hg
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre318 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hh = fcmp uno float %i.gx, 0.000000e+00
  %i.hi = fcmp uno float %i.hc, 0.000000e+00
  %i.hj = xor i1 %i.hh, %i.hi
  br i1 %i.hj, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hk = fcmp oeq float %i.hd, +inf
  %i.hl = fcmp oeq float %i.hf, +inf
  %i.hm = xor i1 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hn = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.ho = call double @llvm.fabs.f64(double %i.hn)
  %i.hp = fcmp ueq double %i.ho, +inf
  br i1 %i.hp, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.hq = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.hq, ptr %i.ac, align 8, !tbaa !3
  %i.hr = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hr, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065261.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hs = phi double [ %.pre318, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hn, %bb.ae ]
  %i.ht = fpext float %i.hd to double
  %i.hu = fpext float %i.hf to double
  %i.hv = fmul double %i.hu, 5.000000e-01
  %i.hw = call double @llvm.fmuladd.f64(double %i.ht, double 5.000000e-01, double %i.hv) ; 2 uses
  %i.hx = fptrunc double %i.hw to float
  %i.hy = fcmp olt float %i.hd, %i.hf
  %.sroa.speculated65.i.us.us = select i1 %i.hy, float %i.hf, float %i.hd ; 2 uses
  %i.hz = fcmp olt float %.3247.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hz, float %.sroa.speculated65.i.us.us, float %.3247.us.us ; 2 uses
  %i.ia = fsub float %i.gx, %i.hc
  %i.ib = call noundef float @llvm.fabs.f32(float %i.ia) ; 3 uses
  %i.ic = fpext float %i.ib to double             ; 6 uses
  %i.id = fpext float %i.hx to double
  %i.ie = fcmp ogt double %i.hw, f0x3690000000000000
  %i.if = fdiv double %i.ic, %i.id
  %i.ig = select i1 %i.ie, double %i.if, double 0.000000e+00 ; 2 uses
  %i.ih = fadd double %.2170246.us.us, %i.ic      ; 2 uses
  %i.ii = call double @llvm.fmuladd.f64(double %i.ic, double %i.ic, double %.2184243.us.us) ; 2 uses
  %i.ij = fcmp ult double %i.hs, %i.ic
  br i1 %i.ij, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ic, ptr %i.ab, align 8, !tbaa !195
  %i.ik = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ik, ptr %i.ac, align 8, !tbaa !3
  %i.il = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.il, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065261.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1179244.us.us, true
  %i.im = fcmp ugt float %i.ib, %3
  %or.cond.i.us.us = and i1 %i.im, %.not.i93.us.us
  %i.in = fcmp ugt double %i.ig, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.in
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.io = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.ip = add i64 %i.io, 1
  store i64 %i.ip, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2180.us.us = phi i1 [ true, %bb.aj ], [ %.1179244.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1176245.us.us, true
  %i.iq = fcmp ugt float %i.ib, %2
  %or.cond58.i.us.us = and i1 %i.iq, %.not57.i.us.us
  %i.ir = fcmp ugt double %i.ig, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ir
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.is = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.it = add i64 %i.is, 1
  store i64 %i.it, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6188.us.us = phi double [ %i.ii, %bb.al ], [ %i.ii, %bb.ak ], [ %.2184243.us.us, %bb.af ], [ %.2184243.us.us, %bb.ad ] ; 3 uses
  %.3181.us.us = phi i1 [ %.2180.us.us, %bb.al ], [ %.2180.us.us, %bb.ak ], [ %.1179244.us.us, %bb.af ], [ %.1179244.us.us, %bb.ad ] ; 2 uses
  %.2177.us.us = phi i1 [ true, %bb.al ], [ %.1176245.us.us, %bb.ak ], [ %.1176245.us.us, %bb.af ], [ %.1176245.us.us, %bb.ad ] ; 2 uses
  %.6174.us.us = phi double [ %i.ih, %bb.al ], [ %i.ih, %bb.ak ], [ %.2170246.us.us, %bb.af ], [ %.2170246.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3247.us.us, %bb.af ], [ %.3247.us.us, %bb.ad ] ; 3 uses
  %i.iu = add nuw nsw i32 %.064248.us.us, 1       ; 2 uses
  %exitcond309.not = icmp eq i32 %i.iu, %.sroa.speculated.us
  br i1 %exitcond309.not, label %._crit_edge250.us.us, label %bb.ab, !llvm.loop !262

._crit_edge250.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.iv = add nsw i32 %.065261.us.us, 1           ; 2 uses
  %i.iw = load i32, ptr %i.u, align 4, !tbaa !80
  %i.ix = icmp slt i32 %i.iv, %i.iw
  br i1 %i.ix, label %.preheader.us.us, label %._crit_edge262.us, !llvm.loop !263

.split281.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split284.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split287.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.preheader192.split:                              ; preds = %.preheader192.split.preheader, %.critedge.loopexit191
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit191 ], [ 1.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %10 = phi <2 x double> [ %13, %.critedge.loopexit191 ], [ zeroinitializer, %.preheader192.split.preheader ] ; 2 uses
  %i.jc = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jd = icmp eq i8 %i.jc, 0
  br i1 %i.jd, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader192.split
  %i.je = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jf = load i32, ptr %i.al, align 4, !tbaa !177
  %i.jg = icmp eq i32 %i.je, %i.jf
  br i1 %i.jg, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jh = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ji = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jj = icmp eq i32 %i.jh, %i.ji
  br i1 %i.jj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.jk = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jl = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jm = icmp eq i32 %i.jk, %i.jl
  br i1 %i.jm, label %.split.us277, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader192.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062242 = phi i32 [ %i.nh, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4241 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3171240 = phi double [ %.4172.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3185239 = phi double [ %.4186.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jp = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jq = icmp eq i8 %i.jp, 0
  %.pre.pre = load i32, ptr %i.ak, align 4        ; 3 uses
  %i.jr = load i32, ptr %i.al, align 4
  %i.js = icmp eq i32 %.pre.pre, %i.jr
  %or.cond365 = select i1 %i.jq, i1 %i.js, i1 false
  br i1 %or.cond365, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ju = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jv = icmp eq i32 %i.jt, %i.ju
  br i1 %i.jv, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.jw = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jx = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jy = icmp eq i32 %i.jw, %i.jx
  br i1 %i.jy, label %.critedge.loopexit191, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jz = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.ka = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.kb = icmp slt i32 %i.jz, %i.ka
  br i1 %i.kb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %i.kc = load ptr, ptr %i.aq, align 8
  %i.kd = load ptr, ptr %i.ar, align 8
  %i.ke = load <2 x i32>, ptr %i.am, align 8
  %.promoted = load double, ptr %i.ab, align 8, !tbaa !195
  %i.kf = sext i32 %i.jz to i64
  %wide.trip.count = sext i32 %i.ka to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4186.lcssa = phi double [ %.3185239, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172.lcssa = phi double [ %.3171240, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4241, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.kg = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kg, ptr %i.ak, align 4, !tbaa !176
  %i.kh = load i32, ptr %i.au, align 8, !tbaa !183
  %i.ki = icmp slt i32 %i.kg, %i.kh
  br i1 %i.ki, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.kj = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre311 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kl = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.kn = load i64, ptr %i.az, align 8, !tbaa !188
  %i.ko = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 %i.kn
  store ptr %i.kp, ptr %i.aq, align 8, !tbaa !189
  %i.kq = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kg, %i.kq
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.av:                                            ; preds = %bb.as
  %i.kr = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kt = load i64, ptr %i.az, align 8, !tbaa !188
  %i.ku = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 %i.kt
  store ptr %i.kv, ptr %i.aq, align 8, !tbaa !189
  %i.kw = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kx = icmp slt i32 %i.kg, %i.kw               ; 3 uses
  %i.ky = load i32, ptr %i.bb, align 4
  %i.kz = icmp sge i32 %i.kg, %i.ky
  %not..i.i112 = xor i1 %i.kx, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.kz, !prof !191
  %i.la = load ptr, ptr %i.bc, align 8
  %i.lb = icmp eq ptr %i.la, null
  %i.lc = select i1 %or.cond.i.i113, i1 true, i1 %i.lb, !prof !191
  br i1 %i.lc, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.ld = load ptr, ptr %8, align 8, !tbaa !182
  %i.le = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lf = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lg = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lh = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, i32 noundef %i.kg, i32 noundef %i.le, i32 noundef %i.lf, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kx, i32 noundef %i.lg)
          to label %.noexc116 unwind label %bb.bx

.noexc116:                                        ; preds = %bb.ax
  %i.li = zext i1 %i.kx to i8
  store ptr %i.lh, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.li, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.lj = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.lj, ptr %i.ak, align 4, !tbaa !176
  %i.lk = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ll = add nsw i32 %i.lk, 1                    ; 3 uses
  store i32 %i.ll, ptr %i.am, align 8, !tbaa !178
  %i.lm = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.ll, %i.lm
  %.pre312 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ln = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.ln, ptr %i.am, align 8, !tbaa !178
  %i.lo = add nsw i32 %.pre312, 1                 ; 3 uses
  store i32 %i.lo, ptr %i.ao, align 4, !tbaa !180
  %i.lp = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.lo, %i.lp
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lq = phi i32 [ %.pre312, %bb.ay ], [ %i.lo, %bb.az ], [ %.pre311, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.ll, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.ls = phi i32 [ %i.lj, %bb.ay ], [ %i.lj, %bb.az ], [ %i.kg, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.ls, i32 noundef %i.lr, i32 noundef %i.lq)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.kf, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 6 uses
  %i.lt = phi double [ %.promoted, %.lr.ph ], [ %i.my, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.0163235 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.0164234 = phi i1 [ false, %.lr.ph ], [ %.1165, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5233 = phi float [ %.4241, %.lr.ph ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172232 = phi double [ %.3171240, %.lr.ph ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %.4186231 = phi double [ %.3185239, %.lr.ph ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %i.lu = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lv = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %indvars.iv
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !223
  %i.lx = uitofp i16 %i.lw to float
  %i.ly = fmul nnan float %i.lx, f0x37800080
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.lz = phi float [ %i.ly, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 4 uses
  %i.ma = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.ma, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mb = getelementptr inbounds i8, ptr %i.kd, i64 %indvars.iv
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
  %i.mm = fcmp olt float %.5233, %.sroa.speculated65.i120
  %.sroa.speculated.i121 = select i1 %i.mm, float %.sroa.speculated65.i120, float %.5233 ; 2 uses
  %i.mn = fsub float %i.lz, %i.mf
  %i.mo = call noundef float @llvm.fabs.f32(float %i.mn) ; 3 uses
  %i.mp = fpext float %i.mo to double             ; 7 uses
  %i.mq = fpext float %i.mk to double
  %i.mr = fcmp ogt double %i.mj, f0x3690000000000000
  %i.ms = fdiv double %i.mp, %i.mq
  %i.mt = select i1 %i.mr, double %i.ms, double 0.000000e+00 ; 2 uses
  %i.mu = fadd double %.4172232, %i.mp            ; 2 uses
  %i.mv = call double @llvm.fmuladd.f64(double %i.mp, double %i.mp, double %.4186231) ; 2 uses
  %i.mw = fcmp ult double %i.lt, %i.mp
  br i1 %i.mw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store double %i.mp, ptr %i.ab, align 8, !tbaa !195
  store i32 %.pre.pre, ptr %i.ac, align 8, !tbaa !202
  store <2 x i32> %i.ke, ptr %i.ad, align 4, !tbaa !3
  %i.mx = trunc nsw i64 %indvars.iv to i32
  store i32 %i.mx, ptr %i.af, align 4, !tbaa !197
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.my = phi double [ %i.mp, %bb.bh ], [ %i.lt, %bb.bg ]
  %.not.i122 = xor i1 %.0164234, true
  %i.mz = fcmp ugt float %i.mo, %3
  %or.cond.i123 = and i1 %i.mz, %.not.i122
  %i.na = fcmp ugt double %i.mt, %i.as
  %or.cond56.i124 = and i1 %or.cond.i123, %i.na
  br i1 %or.cond56.i124, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.nb = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.nc = add i64 %i.nb, 1
  store i64 %i.nc, ptr %i.ah, align 8, !tbaa !198
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.1165 = phi i1 [ true, %bb.bj ], [ %.0164234, %bb.bi ]
  %.not57.i125 = xor i1 %.0163235, true
  %i.nd = fcmp ugt float %i.mo, %2
  %or.cond58.i126 = and i1 %i.nd, %.not57.i125
  %i.ne = fcmp ugt double %i.mt, %i.at
  %or.cond60.i127 = and i1 %or.cond58.i126, %i.ne
  br i1 %or.cond60.i127, label %bb.bl, label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128

bb.bl:                                            ; preds = %bb.bk
  %i.nf = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ng = add i64 %i.nf, 1
  store i64 %i.ng, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128

_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128: ; preds = %bb.bk, %bb.bl
  %.1 = phi i1 [ true, %bb.bl ], [ %.0163235, %bb.bk ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bc, !llvm.loop !264

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118: ; preds = %bb.ba, %.noexc116, %bb.aw, %bb.av, %bb.at, %bb.au, %bb.bb
  %i.nh = add nuw nsw i32 %.062242, 1             ; 2 uses
  %i.ni = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.nj = add nsw i32 %i.ni, 1                    ; 7 uses
  store i32 %i.nj, ptr %i.bi, align 4, !tbaa !176
  %i.nk = load i32, ptr %i.bj, align 8, !tbaa !183
  %i.nl = icmp slt i32 %i.nj, %i.nk
  br i1 %i.nl, label %bb.bm, label %bb.bt

bb.bm:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118
  %i.nm = load i8, ptr %i.br, align 1, !tbaa !185, !range !153, !noundef !154
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %bb.bn, label %._crit_edge.i131

._crit_edge.i131:                                 ; preds = %bb.bm
  %.pre.i133 = load i32, ptr %i.bl, align 8, !tbaa !178
  %.pre313 = load i32, ptr %i.bo, align 4, !tbaa !180
  br label %bb.bw

bb.bn:                                            ; preds = %bb.bm
  %i.no = load i8, ptr %i.bs, align 1, !tbaa !186, !range !153, !noundef !154
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.nq = load i64, ptr %i.bu, align 8, !tbaa !188
  %i.nr = load ptr, ptr %i.ar, align 8, !tbaa !189
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 %i.nq
  store ptr %i.ns, ptr %i.ar, align 8, !tbaa !189
  %i.nt = load i32, ptr %i.bv, align 8, !tbaa !190
  %.not.i.i136 = icmp slt i32 %i.nj, %i.nt
  br i1 %.not.i.i136, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, label %bb.bp, !prof !164

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 unwind label %bb.bx

bb.bq:                                            ; preds = %bb.bn
  %i.nu = load i8, ptr %i.bt, align 2, !tbaa !187, !range !153, !noundef !154
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nw = load i64, ptr %i.bu, align 8, !tbaa !188
  %i.nx = load ptr, ptr %i.ar, align 8, !tbaa !189
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 %i.nw
  store ptr %i.ny, ptr %i.ar, align 8, !tbaa !189
  %i.nz = load i32, ptr %i.bv, align 8, !tbaa !190
  %i.oa = icmp slt i32 %i.nj, %i.nz               ; 3 uses
  %i.ob = load i32, ptr %i.bw, align 4
  %i.oc = icmp sge i32 %i.nj, %i.ob
  %not..i.i134 = xor i1 %i.oa, true
  %or.cond.i.i135 = select i1 %not..i.i134, i1 true, i1 %i.oc, !prof !191
  %i.od = load ptr, ptr %i.bx, align 8
  %i.oe = icmp eq ptr %i.od, null
  %i.of = select i1 %or.cond.i.i135, i1 true, i1 %i.oe, !prof !191
  br i1 %i.of, label %bb.bs, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, !prof !192

bb.bs:                                            ; preds = %bb.br
  %i.og = load ptr, ptr %9, align 8, !tbaa !182
  %i.oh = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.oi = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.oj = load i32, ptr %i.cc, align 8, !tbaa !193
  %i.ok = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.og, i32 noundef %i.nj, i32 noundef %i.oh, i32 noundef %i.oi, ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.bz, ptr noundef nonnull align 4 dereferenceable(4) %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %i.cb, i1 noundef zeroext %i.oa, i32 noundef %i.oj)
          to label %.noexc138 unwind label %bb.bx

.noexc138:                                        ; preds = %bb.bs
  %i.ol = zext i1 %i.oa to i8
  store ptr %i.ok, ptr %i.ar, align 8, !tbaa !189
  store i8 %i.ol, ptr %i.br, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140

bb.bt:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118
  %i.om = load i32, ptr %i.bk, align 4, !tbaa !177 ; 3 uses
  store i32 %i.om, ptr %i.bi, align 4, !tbaa !176
  %i.on = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.oo = add nsw i32 %i.on, 1                    ; 3 uses
  store i32 %i.oo, ptr %i.bl, align 8, !tbaa !178
  %i.op = load i32, ptr %i.bm, align 8, !tbaa !184
  %.not.i129 = icmp slt i32 %i.oo, %i.op
  %.pre314 = load i32, ptr %i.bo, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i129, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.oq = load i32, ptr %i.bn, align 4, !tbaa !179 ; 2 uses
  store i32 %i.oq, ptr %i.bl, align 8, !tbaa !178
  %i.or = add nsw i32 %.pre314, 1                 ; 3 uses
  store i32 %i.or, ptr %i.bo, align 4, !tbaa !180
  %i.os = load i32, ptr %i.bp, align 8, !tbaa !181
  %.not1.i130 = icmp slt i32 %i.or, %i.os
  br i1 %.not1.i130, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i8 0, ptr %i.bq, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i131
  %i.ot = phi i32 [ %.pre314, %bb.bt ], [ %i.or, %bb.bu ], [ %.pre313, %._crit_edge.i131 ]
  %i.ou = phi i32 [ %i.oo, %bb.bt ], [ %i.oq, %bb.bu ], [ %.pre.i133, %._crit_edge.i131 ]
  %i.ov = phi i32 [ %i.om, %bb.bt ], [ %i.om, %bb.bu ], [ %i.nj, %._crit_edge.i131 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %9, i32 noundef %i.ov, i32 noundef %i.ou, i32 noundef %i.ot)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 unwind label %bb.bx

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140: ; preds = %bb.bw, %bb.bp, %bb.bo, %bb.bq, %bb.br, %.noexc138, %bb.bv
  %exitcond308.not = icmp eq i32 %i.nh, 4096
  br i1 %exitcond308.not, label %.critedge.loopexit191, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.bx:                                            ; preds = %bb.bw, %bb.bs, %bb.bp, %bb.bb, %bb.ax, %bb.au
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.critedge.loopexit191:                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %.3185.lcssa = phi double [ %.4186.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.3185239, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106 ]
  %.3171.lcssa = phi double [ %.4172.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.3171240, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106 ]
  %.4.lcssa = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.4241, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106 ]
  %11 = insertelement <2 x double> poison, double %.3171.lcssa, i64 0
  %12 = insertelement <2 x double> %11, double %.3185.lcssa, i64 1
  %13 = fadd <2 x double> %10, %12
  br label %.preheader192.split, !llvm.loop !261

.split.us277:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %.us-phi = phi float [ %.0166.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ox = phi <2 x double> [ %i.cf, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us ], [ %10, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.oy = sext i32 %i.y to i64
  %i.oz = mul i64 %i.t, %i.oy
  %i.pa = uitofp i64 %i.oz to double
  %i.pb = insertelement <2 x double> poison, double %i.pa, i64 0
  %i.pc = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pd = fdiv <2 x double> %i.ox, %i.pc          ; 2 uses
  %i.pe = extractelement <2 x double> %i.pd, i64 0
  store double %i.pe, ptr %6, align 8, !tbaa !205
  %i.pf = extractelement <2 x double> %i.pd, i64 1
  %i.pg = call double @llvm.sqrt.f64(double %i.pf) ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.pg, ptr %i.ph, align 8, !tbaa !206
  %i.pi = fpext float %.us-phi to double
  %i.pj = fdiv double %i.pi, %i.pg
  %i.pk = call double @llvm.log10.f64(double %i.pj)
  %i.pl = fmul double %i.pk, 2.000000e+01
  %i.pm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.pl, ptr %i.pm, align 8, !tbaa !207
  %i.pn = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.po = load ptr, ptr %i.bx, align 8, !tbaa !208
  %.not.i141 = icmp eq ptr %i.po, null
  br i1 %.not.i141, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.by

bb.by:                                            ; preds = %.split.us277
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pp = landingpad { ptr, i32 }
          catch ptr null
  %i.pq = extractvalue { ptr, i32 } %i.pp, 0
  call void @__clang_call_terminate(ptr %i.pq) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us277, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.pr = load ptr, ptr %i.bc, align 8, !tbaa !208
  %.not.i142 = icmp eq ptr %i.pr, null
  br i1 %.not.i142, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit143, label %bb.ca

bb.ca:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit143 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ps = landingpad { ptr, i32 }
          catch ptr null
  %i.pt = extractvalue { ptr, i32 } %i.ps, 0
  call void @__clang_call_terminate(ptr %i.pt) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit143: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.ca
  %i.pu = icmp eq i64 %i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  ret i1 %i.pu

bb.cc:                                            ; preds = %.split287.us, %bb.bx, %.split281.us, %.split284.us, %.split.us.split.us, %bb.ap
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %i.jo, %bb.ap ], [ %i.ja, %.split287.us ], [ %i.ow, %bb.bx ], [ %i.iy, %.split281.us ], [ %i.jb, %.split.us.split.us ], [ %i.iz, %.split284.us ] ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !208
  %.not.i144 = icmp eq ptr %i.pw, null
  br i1 %.not.i144, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.px = landingpad { ptr, i32 }
          catch ptr null
  %i.py = extractvalue { ptr, i32 } %i.px, 0
  call void @__clang_call_terminate(ptr %i.py) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145: ; preds = %bb.cd, %bb.cc, %bb.ao
  %.pn79.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jn, %bb.ao ], [ %.pn79.pn.pn.pn, %bb.cc ], [ %.pn79.pn.pn.pn, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.pz = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !208
  %.not.i146 = icmp eq ptr %i.qa, null
  br i1 %.not.i146, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit147, label %bb.cf

bb.cf:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit147 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qb = landingpad { ptr, i32 }
          catch ptr null
  %i.qc = extractvalue { ptr, i32 } %i.qb, 0
  call void @__clang_call_terminate(ptr %i.qc) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit147: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  resume { ptr, i32 } %.pn79.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN11OpenImageIO4v3_1L8compare_ItN9Imath_3_14halfEEEbRKNS0_8ImageBufES6_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) initializes((24, 64)) %6, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.130", align 8 ; 37 uses
  %9 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.125", align 8 ; 37 uses
  %i.a = load i32, ptr %7, align 8, !tbaa !77     ; 2 uses
  %.not.i = icmp eq i32 %i.a, -2147483648
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !168
  %i.d = sub nsw i32 %i.c, %i.a
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !104
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.k, %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !169
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !170
  %i.q = sub nsw i32 %i.n, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = mul i64 %i.l, %i.r
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit

_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit:        ; preds = %bb.a, %bb.b
  %i.t = phi i64 [ %i.s, %bb.b ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !171
  %i.y = sub nsw i32 %i.v, %i.x
  %i.z = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.aa = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(32) %7, i32 noundef 1, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %9, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(32) %7, i32 noundef 1, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.ao

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.ai = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf4deepEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %.preheader197 unwind label %bb.ap

.preheader197:                                    ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 60 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 17 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 68 ; 17 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 11 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 11 uses
  %i.as = fpext float %5 to double                ; 2 uses
  %i.at = fpext float %4 to double                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 9 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 11 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 10 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 92 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 84 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 124 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 120 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 44 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 68 ; 10 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 9 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 11 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 92 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 84 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_1L8compare_IttEEbRKNS0_8ImageBufES4_ffffRNS0_12ImageBufAlgo14CompareResultsENS0_3ROIEi:bb.a
  %i.gl = zext i1 %i.ga to i8
  store ptr %i.gk, ptr %i.ar, align 8, !tbaa !189
  store i8 %i.gl, ptr %i.br, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us

bb.z:                                             ; preds = %bb.v
  %i.gm = load i64, ptr %i.bu, align 8, !tbaa !188
  %i.gn = load ptr, ptr %i.ar, align 8, !tbaa !189
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %i.gm
  store ptr %i.go, ptr %i.ar, align 8, !tbaa !189
  %i.gp = load i32, ptr %i.bv, align 8, !tbaa !190
  %.not.i.i101.us = icmp slt i32 %i.fd, %i.gp
  br i1 %.not.i.i101.us, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us, label %bb.aa, !prof !164

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us unwind label %.split287.us

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us: ; preds = %bb.aa, %bb.z, %.noexc103.us, %bb.x, %bb.w, %bb.u, %bb.s
  %exitcond310.not = icmp eq i32 %i.fb, 4096
  br i1 %exitcond310.not, label %.critedge.loopexit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

.critedge.loopexit.us:                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us
  %.0182.lcssa.us = phi double [ %.1183.lcssa.us, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us ], [ %.0182269.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us ]
  %.0168.lcssa.us = phi double [ %.1169.lcssa.us, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us ], [ %.0168270.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us ]
  %.1167.lcssa.us = phi float [ %.2.lcssa.us, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit105.us ], [ %.1167271.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.us ]
  %i.gq = insertelement <2 x double> poison, double %.0168.lcssa.us, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %.0182.lcssa.us, i64 1
  %i.gs = fadd <2 x double> %i.cf, %i.gr
  br label %.preheader192.split.us, !llvm.loop !269

.preheader.us.us:                                 ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us, %._crit_edge250.us.us
  %.065261.us.us = phi i32 [ %i.iv, %._crit_edge250.us.us ], [ %i.dj, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ] ; 5 uses
  %.2260.us.us = phi float [ %.7.us.us, %._crit_edge250.us.us ], [ %.1167271.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.1169259.us.us = phi double [ %.6174.us.us, %._crit_edge250.us.us ], [ %.0168270.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.0175258.us.us = phi i1 [ %.2177.us.us, %._crit_edge250.us.us ], [ false, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.0178257.us.us = phi i1 [ %.3181.us.us, %._crit_edge250.us.us ], [ false, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  %.1183256.us.us = phi double [ %.6188.us.us, %._crit_edge250.us.us ], [ %.0182269.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit86.us ]
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us, %.preheader.us.us
  %.064248.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.iu, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %.3247.us.us = phi float [ %.2260.us.us, %.preheader.us.us ], [ %.7.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2170246.us.us = phi double [ %.1169259.us.us, %.preheader.us.us ], [ %.6174.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %.1176245.us.us = phi i1 [ %.0175258.us.us, %.preheader.us.us ], [ %.2177.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.1179244.us.us = phi i1 [ %.0178257.us.us, %.preheader.us.us ], [ %.3181.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 4 uses
  %.2184243.us.us = phi double [ %.1183256.us.us, %.preheader.us.us ], [ %.6188.us.us, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us ] ; 3 uses
  %i.gt = load ptr, ptr %8, align 8, !tbaa !182
  %i.gu = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.gv = load i32, ptr %i.am, align 8, !tbaa !178
  %i.gw = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.gx = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i32 noundef %i.gu, i32 noundef %i.gv, i32 noundef %i.gw, i32 noundef %.065261.us.us, i32 noundef %.064248.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us: ; preds = %bb.ab
  %i.gy = load ptr, ptr %9, align 8, !tbaa !182
  %i.gz = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.ha = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.hb = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.hc = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10deep_valueEiiiii(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i32 noundef %i.gz, i32 noundef %i.ha, i32 noundef %i.hb, i32 noundef %.065261.us.us, i32 noundef %.064248.us.us)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us unwind label %.split.us.split.us ; 3 uses

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us
  %i.hd = call float @llvm.fabs.f32(float %i.gx)  ; 5 uses
  %i.he = fcmp one float %i.hd, +inf
  %i.hf = call float @llvm.fabs.f32(float %i.hc)  ; 5 uses
  %i.hg = fcmp one float %i.hf, +inf
  %or.cond70.i.us.us = and i1 %i.he, %i.hg
  br i1 %or.cond70.i.us.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, label %bb.ac

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %.pre318 = load double, ptr %i.ab, align 8, !tbaa !195
  br label %bb.ag

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us
  %i.hh = fcmp uno float %i.gx, 0.000000e+00
  %i.hi = fcmp uno float %i.hc, 0.000000e+00
  %i.hj = xor i1 %i.hh, %i.hi
  br i1 %i.hj, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hk = fcmp oeq float %i.hd, +inf
  %i.hl = fcmp oeq float %i.hf, +inf
  %i.hm = xor i1 %i.hk, %i.hl
  br i1 %i.hm, label %bb.ae, label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hn = load double, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  %i.ho = call double @llvm.fabs.f64(double %i.hn)
  %i.hp = fcmp ueq double %i.ho, +inf
  br i1 %i.hp, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double +inf, ptr %i.ab, align 8, !tbaa !195
  %i.hq = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.hq, ptr %i.ac, align 8, !tbaa !3
  %i.hr = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.hr, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065261.us.us, ptr %i.af, align 4, !tbaa !197
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.ag:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge, %bb.ae
  %i.hs = phi double [ %.pre318, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit92.us.us._crit_edge ], [ %i.hn, %bb.ae ]
  %i.ht = fpext float %i.hd to double
  %i.hu = fpext float %i.hf to double
  %i.hv = fmul double %i.hu, 5.000000e-01
  %i.hw = call double @llvm.fmuladd.f64(double %i.ht, double 5.000000e-01, double %i.hv) ; 2 uses
  %i.hx = fptrunc double %i.hw to float
  %i.hy = fcmp olt float %i.hd, %i.hf
  %.sroa.speculated65.i.us.us = select i1 %i.hy, float %i.hf, float %i.hd ; 2 uses
  %i.hz = fcmp olt float %.3247.us.us, %.sroa.speculated65.i.us.us
  %.sroa.speculated.i.us.us = select i1 %i.hz, float %.sroa.speculated65.i.us.us, float %.3247.us.us ; 2 uses
  %i.ia = fsub float %i.gx, %i.hc
  %i.ib = call noundef float @llvm.fabs.f32(float %i.ia) ; 3 uses
  %i.ic = fpext float %i.ib to double             ; 6 uses
  %i.id = fpext float %i.hx to double
  %i.ie = fcmp ogt double %i.hw, f0x3690000000000000
  %i.if = fdiv double %i.ic, %i.id
  %i.ig = select i1 %i.ie, double %i.if, double 0.000000e+00 ; 2 uses
  %i.ih = fadd double %.2170246.us.us, %i.ic      ; 2 uses
  %i.ii = call double @llvm.fmuladd.f64(double %i.ic, double %i.ic, double %.2184243.us.us) ; 2 uses
  %i.ij = fcmp ult double %i.hs, %i.ic
  br i1 %i.ij, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.ic, ptr %i.ab, align 8, !tbaa !195
  %i.ik = load <2 x i32>, ptr %i.ak, align 4, !tbaa !3
  store <2 x i32> %i.ik, ptr %i.ac, align 8, !tbaa !3
  %i.il = load i32, ptr %i.ao, align 4, !tbaa !180
  store i32 %i.il, ptr %i.ae, align 8, !tbaa !196
  store i32 %.065261.us.us, ptr %i.af, align 4, !tbaa !197
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.not.i93.us.us = xor i1 %.1179244.us.us, true
  %i.im = fcmp ugt float %i.ib, %3
  %or.cond.i.us.us = and i1 %i.im, %.not.i93.us.us
  %i.in = fcmp ugt double %i.ig, %i.as
  %or.cond56.i.us.us = and i1 %or.cond.i.us.us, %i.in
  br i1 %or.cond56.i.us.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.io = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.ip = add i64 %i.io, 1
  store i64 %i.ip, ptr %i.ah, align 8, !tbaa !198
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2180.us.us = phi i1 [ true, %bb.aj ], [ %.1179244.us.us, %bb.ai ] ; 2 uses
  %.not57.i.us.us = xor i1 %.1176245.us.us, true
  %i.iq = fcmp ugt float %i.ib, %2
  %or.cond58.i.us.us = and i1 %i.iq, %.not57.i.us.us
  %i.ir = fcmp ugt double %i.ig, %i.at
  %or.cond60.i.us.us = and i1 %or.cond58.i.us.us, %i.ir
  br i1 %or.cond60.i.us.us, label %bb.al, label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

bb.al:                                            ; preds = %bb.ak
  %i.is = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.it = add i64 %i.is, 1
  store i64 %i.it, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us

_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us: ; preds = %bb.al, %bb.ak, %bb.af, %bb.ad
  %.6188.us.us = phi double [ %i.ii, %bb.al ], [ %i.ii, %bb.ak ], [ %.2184243.us.us, %bb.af ], [ %.2184243.us.us, %bb.ad ] ; 3 uses
  %.3181.us.us = phi i1 [ %.2180.us.us, %bb.al ], [ %.2180.us.us, %bb.ak ], [ %.1179244.us.us, %bb.af ], [ %.1179244.us.us, %bb.ad ] ; 2 uses
  %.2177.us.us = phi i1 [ true, %bb.al ], [ %.1176245.us.us, %bb.ak ], [ %.1176245.us.us, %bb.af ], [ %.1176245.us.us, %bb.ad ] ; 2 uses
  %.6174.us.us = phi double [ %i.ih, %bb.al ], [ %i.ih, %bb.ak ], [ %.2170246.us.us, %bb.af ], [ %.2170246.us.us, %bb.ad ] ; 3 uses
  %.7.us.us = phi float [ %.sroa.speculated.i.us.us, %bb.al ], [ %.sroa.speculated.i.us.us, %bb.ak ], [ %.3247.us.us, %bb.af ], [ %.3247.us.us, %bb.ad ] ; 3 uses
  %i.iu = add nuw nsw i32 %.064248.us.us, 1       ; 2 uses
  %exitcond309.not = icmp eq i32 %i.iu, %.sroa.speculated.us
  br i1 %exitcond309.not, label %._crit_edge250.us.us, label %bb.ab, !llvm.loop !270

._crit_edge250.us.us:                             ; preds = %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit.us.us
  %i.iv = add nsw i32 %.065261.us.us, 1           ; 2 uses
  %i.iw = load i32, ptr %i.u, align 4, !tbaa !80
  %i.ix = icmp slt i32 %i.iv, %i.iw
  br i1 %i.ix, label %.preheader.us.us, label %._crit_edge262.us, !llvm.loop !271

.split281.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit85.thread.us
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split284.us:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase12deep_samplesEv.exit.us
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split287.us:                                     ; preds = %bb.aa, %bb.y, %bb.u, %bb.p, %bb.n, %bb.j
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.split.us.split.us:                               ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase10deep_valueEii.exit.us.us, %bb.ab
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.preheader192.split:                              ; preds = %.preheader192.split.preheader, %.critedge.loopexit191
  %.0166 = phi float [ %.4.lcssa, %.critedge.loopexit191 ], [ 1.000000e+00, %.preheader192.split.preheader ] ; 2 uses
  %10 = phi <2 x double> [ %13, %.critedge.loopexit191 ], [ zeroinitializer, %.preheader192.split.preheader ] ; 2 uses
  %i.jc = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jd = icmp eq i8 %i.jc, 0
  br i1 %i.jd, label %bb.am, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.am:                                            ; preds = %.preheader192.split
  %i.je = load i32, ptr %i.ak, align 4, !tbaa !176
  %i.jf = load i32, ptr %i.al, align 4, !tbaa !177
  %i.jg = icmp eq i32 %i.je, %i.jf
  br i1 %i.jg, label %bb.an, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

bb.an:                                            ; preds = %bb.am
  %i.jh = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ji = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jj = icmp eq i32 %i.jh, %i.ji
  br i1 %i.jj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.an
  %i.jk = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jl = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jm = icmp eq i32 %i.jk, %i.jl
  br i1 %i.jm, label %.split.us277, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader: ; preds = %.preheader192.split, %bb.am, %bb.an, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140
  %.062242 = phi i32 [ %i.nh, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ]
  %.4241 = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3171240 = phi double [ %.4172.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %.3185239 = phi double [ %.4186.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.preheader ] ; 3 uses
  %i.jp = load i8, ptr %i.aj, align 8, !tbaa !172, !range !153, !noundef !154
  %i.jq = icmp eq i8 %i.jp, 0
  %.pre.pre = load i32, ptr %i.ak, align 4        ; 3 uses
  %i.jr = load i32, ptr %i.al, align 4
  %i.js = icmp eq i32 %.pre.pre, %i.jr
  %or.cond365 = select i1 %i.jq, i1 %i.js, i1 false
  br i1 %or.cond365, label %bb.aq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.jt = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ju = load i32, ptr %i.an, align 4, !tbaa !179
  %i.jv = icmp eq i32 %i.jt, %i.ju
  br i1 %i.jv, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106: ; preds = %bb.aq
  %i.jw = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.jx = load i32, ptr %i.ap, align 8, !tbaa !181
  %i.jy = icmp eq i32 %i.jw, %i.jx
  br i1 %i.jy, label %.critedge.loopexit191, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread, %bb.aq, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %i.jz = load i32, ptr %i.w, align 8, !tbaa !171 ; 2 uses
  %i.ka = load i32, ptr %i.u, align 4, !tbaa !80  ; 2 uses
  %i.kb = icmp slt i32 %i.jz, %i.ka
  br i1 %i.kb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %i.kc = load ptr, ptr %i.aq, align 8
  %i.kd = load ptr, ptr %i.ar, align 8
  %i.ke = load <2 x i32>, ptr %i.am, align 8
  %.promoted = load double, ptr %i.ab, align 8, !tbaa !195
  %i.kf = sext i32 %i.jz to i64
  %wide.trip.count = sext i32 %i.ka to i64
  br label %bb.bc

._crit_edge:                                      ; preds = %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread
  %.4186.lcssa = phi double [ %.3185239, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172.lcssa = phi double [ %.3171240, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5.lcssa = phi float [ %.4241, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106.thread ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %i.kg = add nsw i32 %.pre.pre, 1                ; 7 uses
  store i32 %i.kg, ptr %i.ak, align 4, !tbaa !176
  %i.kh = load i32, ptr %i.au, align 8, !tbaa !183
  %i.ki = icmp slt i32 %i.kg, %i.kh
  br i1 %i.ki, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge
  %i.kj = load i8, ptr %i.aw, align 1, !tbaa !185, !range !153, !noundef !154
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.as, label %._crit_edge.i109

._crit_edge.i109:                                 ; preds = %bb.ar
  %.pre.i111 = load i32, ptr %i.am, align 8, !tbaa !178
  %.pre311 = load i32, ptr %i.ao, align 4, !tbaa !180
  br label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %i.kl = load i8, ptr %i.ax, align 1, !tbaa !186, !range !153, !noundef !154
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.kn = load i64, ptr %i.az, align 8, !tbaa !188
  %i.ko = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 %i.kn
  store ptr %i.kp, ptr %i.aq, align 8, !tbaa !189
  %i.kq = load i32, ptr %i.ba, align 8, !tbaa !190
  %.not.i.i114 = icmp slt i32 %i.kg, %i.kq
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.au, !prof !164

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.av:                                            ; preds = %bb.as
  %i.kr = load i8, ptr %i.ay, align 2, !tbaa !187, !range !153, !noundef !154
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kt = load i64, ptr %i.az, align 8, !tbaa !188
  %i.ku = load ptr, ptr %i.aq, align 8, !tbaa !189
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 %i.kt
  store ptr %i.kv, ptr %i.aq, align 8, !tbaa !189
  %i.kw = load i32, ptr %i.ba, align 8, !tbaa !190
  %i.kx = icmp slt i32 %i.kg, %i.kw               ; 3 uses
  %i.ky = load i32, ptr %i.bb, align 4
  %i.kz = icmp sge i32 %i.kg, %i.ky
  %not..i.i112 = xor i1 %i.kx, true
  %or.cond.i.i113 = select i1 %not..i.i112, i1 true, i1 %i.kz, !prof !191
  %i.la = load ptr, ptr %i.bc, align 8
  %i.lb = icmp eq ptr %i.la, null
  %i.lc = select i1 %or.cond.i.i113, i1 true, i1 %i.lb, !prof !191
  br i1 %i.lc, label %bb.ax, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118, !prof !192

bb.ax:                                            ; preds = %bb.aw
  %i.ld = load ptr, ptr %8, align 8, !tbaa !182
  %i.le = load i32, ptr %i.am, align 8, !tbaa !178
  %i.lf = load i32, ptr %i.ao, align 4, !tbaa !180
  %i.lg = load i32, ptr %i.bh, align 8, !tbaa !193
  %i.lh = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, i32 noundef %i.kg, i32 noundef %i.le, i32 noundef %i.lf, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i1 noundef zeroext %i.kx, i32 noundef %i.lg)
          to label %.noexc116 unwind label %bb.bx

.noexc116:                                        ; preds = %bb.ax
  %i.li = zext i1 %i.kx to i8
  store ptr %i.lh, ptr %i.aq, align 8, !tbaa !189
  store i8 %i.li, ptr %i.aw, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.ay:                                            ; preds = %._crit_edge
  %i.lj = load i32, ptr %i.al, align 4, !tbaa !177 ; 3 uses
  store i32 %i.lj, ptr %i.ak, align 4, !tbaa !176
  %i.lk = load i32, ptr %i.am, align 8, !tbaa !178
  %i.ll = add nsw i32 %i.lk, 1                    ; 3 uses
  store i32 %i.ll, ptr %i.am, align 8, !tbaa !178
  %i.lm = load i32, ptr %i.av, align 8, !tbaa !184
  %.not.i107 = icmp slt i32 %i.ll, %i.lm
  %.pre312 = load i32, ptr %i.ao, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i107, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ln = load i32, ptr %i.an, align 4, !tbaa !179 ; 2 uses
  store i32 %i.ln, ptr %i.am, align 8, !tbaa !178
  %i.lo = add nsw i32 %.pre312, 1                 ; 3 uses
  store i32 %i.lo, ptr %i.ao, align 4, !tbaa !180
  %i.lp = load i32, ptr %i.ap, align 8, !tbaa !181
  %.not1.i108 = icmp slt i32 %i.lo, %i.lp
  br i1 %.not1.i108, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118

bb.bb:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i109
  %i.lq = phi i32 [ %.pre312, %bb.ay ], [ %i.lo, %bb.az ], [ %.pre311, %._crit_edge.i109 ]
  %i.lr = phi i32 [ %i.ll, %bb.ay ], [ %i.ln, %bb.az ], [ %.pre.i111, %._crit_edge.i109 ]
  %i.ls = phi i32 [ %i.lj, %bb.ay ], [ %i.lj, %bb.az ], [ %i.kg, %._crit_edge.i109 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %i.ls, i32 noundef %i.lr, i32 noundef %i.lq)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118 unwind label %bb.bx

bb.bc:                                            ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128
  %indvars.iv = phi i64 [ %i.kf, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 6 uses
  %i.lt = phi double [ %.promoted, %.lr.ph ], [ %i.my, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.0163235 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.0164234 = phi i1 [ false, %.lr.ph ], [ %.1165, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.5233 = phi float [ %.4241, %.lr.ph ], [ %.sroa.speculated.i121, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ] ; 2 uses
  %.4172232 = phi double [ %.3171240, %.lr.ph ], [ %i.mu, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %.4186231 = phi double [ %.3185239, %.lr.ph ], [ %i.mv, %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128 ]
  %i.lu = icmp slt i64 %indvars.iv, %i.cd
  br i1 %i.lu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lv = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %indvars.iv
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !223
  %i.lx = uitofp i16 %i.lw to float
  %i.ly = fmul nnan float %i.lx, f0x37800080
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.lz = phi float [ %i.ly, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 4 uses
  %i.ma = icmp slt i64 %indvars.iv, %i.ce
  br i1 %i.ma, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mb = getelementptr inbounds [2 x i8], ptr %i.kd, i64 %indvars.iv
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
  %i.mm = fcmp olt float %.5233, %.sroa.speculated65.i120
  %.sroa.speculated.i121 = select i1 %i.mm, float %.sroa.speculated65.i120, float %.5233 ; 2 uses
  %i.mn = fsub float %i.lz, %i.mf
  %i.mo = call noundef float @llvm.fabs.f32(float %i.mn) ; 3 uses
  %i.mp = fpext float %i.mo to double             ; 7 uses
  %i.mq = fpext float %i.mk to double
  %i.mr = fcmp ogt double %i.mj, f0x3690000000000000
  %i.ms = fdiv double %i.mp, %i.mq
  %i.mt = select i1 %i.mr, double %i.ms, double 0.000000e+00 ; 2 uses
  %i.mu = fadd double %.4172232, %i.mp            ; 2 uses
  %i.mv = call double @llvm.fmuladd.f64(double %i.mp, double %i.mp, double %.4186231) ; 2 uses
  %i.mw = fcmp ult double %i.lt, %i.mp
  br i1 %i.mw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store double %i.mp, ptr %i.ab, align 8, !tbaa !195
  store i32 %.pre.pre, ptr %i.ac, align 8, !tbaa !202
  store <2 x i32> %i.ke, ptr %i.ad, align 4, !tbaa !3
  %i.mx = trunc nsw i64 %indvars.iv to i32
  store i32 %i.mx, ptr %i.af, align 4, !tbaa !197
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.my = phi double [ %i.mp, %bb.bh ], [ %i.lt, %bb.bg ]
  %.not.i122 = xor i1 %.0164234, true
  %i.mz = fcmp ugt float %i.mo, %3
  %or.cond.i123 = and i1 %i.mz, %.not.i122
  %i.na = fcmp ugt double %i.mt, %i.as
  %or.cond56.i124 = and i1 %or.cond.i123, %i.na
  br i1 %or.cond56.i124, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.nb = load i64, ptr %i.ah, align 8, !tbaa !198
  %i.nc = add i64 %i.nb, 1
  store i64 %i.nc, ptr %i.ah, align 8, !tbaa !198
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.1165 = phi i1 [ true, %bb.bj ], [ %.0164234, %bb.bi ]
  %.not57.i125 = xor i1 %.0163235, true
  %i.nd = fcmp ugt float %i.mo, %2
  %or.cond58.i126 = and i1 %i.nd, %.not57.i125
  %i.ne = fcmp ugt double %i.mt, %i.at
  %or.cond60.i127 = and i1 %or.cond58.i126, %i.ne
  br i1 %or.cond60.i127, label %bb.bl, label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128

bb.bl:                                            ; preds = %bb.bk
  %i.nf = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.ng = add i64 %i.nf, 1
  store i64 %i.ng, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128

_ZN11OpenImageIO4v3_113compare_valueItfEEvRNS0_8ImageBuf13ConstIteratorIT_fEEiT0_S7_RNS0_12ImageBufAlgo14CompareResultsERfRdSC_RbSD_ffff.exit128: ; preds = %bb.bk, %bb.bl
  %.1 = phi i1 [ true, %bb.bl ], [ %.0163235, %bb.bk ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bc, !llvm.loop !272

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118: ; preds = %bb.ba, %.noexc116, %bb.aw, %bb.av, %bb.at, %bb.au, %bb.bb
  %i.nh = add nuw nsw i32 %.062242, 1             ; 2 uses
  %i.ni = load i32, ptr %i.bi, align 4, !tbaa !176
  %i.nj = add nsw i32 %i.ni, 1                    ; 7 uses
  store i32 %i.nj, ptr %i.bi, align 4, !tbaa !176
  %i.nk = load i32, ptr %i.bj, align 8, !tbaa !183
  %i.nl = icmp slt i32 %i.nj, %i.nk
  br i1 %i.nl, label %bb.bm, label %bb.bt

bb.bm:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118
  %i.nm = load i8, ptr %i.br, align 1, !tbaa !185, !range !153, !noundef !154
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %bb.bn, label %._crit_edge.i131

._crit_edge.i131:                                 ; preds = %bb.bm
  %.pre.i133 = load i32, ptr %i.bl, align 8, !tbaa !178
  %.pre313 = load i32, ptr %i.bo, align 4, !tbaa !180
  br label %bb.bw

bb.bn:                                            ; preds = %bb.bm
  %i.no = load i8, ptr %i.bs, align 1, !tbaa !186, !range !153, !noundef !154
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.nq = load i64, ptr %i.bu, align 8, !tbaa !188
  %i.nr = load ptr, ptr %i.ar, align 8, !tbaa !189
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 %i.nq
  store ptr %i.ns, ptr %i.ar, align 8, !tbaa !189
  %i.nt = load i32, ptr %i.bv, align 8, !tbaa !190
  %.not.i.i136 = icmp slt i32 %i.nj, %i.nt
  br i1 %.not.i.i136, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, label %bb.bp, !prof !164

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 unwind label %bb.bx

bb.bq:                                            ; preds = %bb.bn
  %i.nu = load i8, ptr %i.bt, align 2, !tbaa !187, !range !153, !noundef !154
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nw = load i64, ptr %i.bu, align 8, !tbaa !188
  %i.nx = load ptr, ptr %i.ar, align 8, !tbaa !189
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 %i.nw
  store ptr %i.ny, ptr %i.ar, align 8, !tbaa !189
  %i.nz = load i32, ptr %i.bv, align 8, !tbaa !190
  %i.oa = icmp slt i32 %i.nj, %i.nz               ; 3 uses
  %i.ob = load i32, ptr %i.bw, align 4
  %i.oc = icmp sge i32 %i.nj, %i.ob
  %not..i.i134 = xor i1 %i.oa, true
  %or.cond.i.i135 = select i1 %not..i.i134, i1 true, i1 %i.oc, !prof !191
  %i.od = load ptr, ptr %i.bx, align 8
  %i.oe = icmp eq ptr %i.od, null
  %i.of = select i1 %or.cond.i.i135, i1 true, i1 %i.oe, !prof !191
  br i1 %i.of, label %bb.bs, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, !prof !192

bb.bs:                                            ; preds = %bb.br
  %i.og = load ptr, ptr %9, align 8, !tbaa !182
  %i.oh = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.oi = load i32, ptr %i.bo, align 4, !tbaa !180
  %i.oj = load i32, ptr %i.cc, align 8, !tbaa !193
  %i.ok = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.og, i32 noundef %i.nj, i32 noundef %i.oh, i32 noundef %i.oi, ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.bz, ptr noundef nonnull align 4 dereferenceable(4) %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %i.cb, i1 noundef zeroext %i.oa, i32 noundef %i.oj)
          to label %.noexc138 unwind label %bb.bx

.noexc138:                                        ; preds = %bb.bs
  %i.ol = zext i1 %i.oa to i8
  store ptr %i.ok, ptr %i.ar, align 8, !tbaa !189
  store i8 %i.ol, ptr %i.br, align 1, !tbaa !185
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140

bb.bt:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit118
  %i.om = load i32, ptr %i.bk, align 4, !tbaa !177 ; 3 uses
  store i32 %i.om, ptr %i.bi, align 4, !tbaa !176
  %i.on = load i32, ptr %i.bl, align 8, !tbaa !178
  %i.oo = add nsw i32 %i.on, 1                    ; 3 uses
  store i32 %i.oo, ptr %i.bl, align 8, !tbaa !178
  %i.op = load i32, ptr %i.bm, align 8, !tbaa !184
  %.not.i129 = icmp slt i32 %i.oo, %i.op
  %.pre314 = load i32, ptr %i.bo, align 4, !tbaa !180 ; 2 uses
  br i1 %.not.i129, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.oq = load i32, ptr %i.bn, align 4, !tbaa !179 ; 2 uses
  store i32 %i.oq, ptr %i.bl, align 8, !tbaa !178
  %i.or = add nsw i32 %.pre314, 1                 ; 3 uses
  store i32 %i.or, ptr %i.bo, align 4, !tbaa !180
  %i.os = load i32, ptr %i.bp, align 8, !tbaa !181
  %.not1.i130 = icmp slt i32 %i.or, %i.os
  br i1 %.not1.i130, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i8 0, ptr %i.bq, align 8, !tbaa !172
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i131
  %i.ot = phi i32 [ %.pre314, %bb.bt ], [ %i.or, %bb.bu ], [ %.pre313, %._crit_edge.i131 ]
  %i.ou = phi i32 [ %i.oo, %bb.bt ], [ %i.oq, %bb.bu ], [ %.pre.i133, %._crit_edge.i131 ]
  %i.ov = phi i32 [ %i.om, %bb.bt ], [ %i.om, %bb.bu ], [ %i.nj, %._crit_edge.i131 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %9, i32 noundef %i.ov, i32 noundef %i.ou, i32 noundef %i.ot)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 unwind label %bb.bx

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140: ; preds = %bb.bw, %bb.bp, %bb.bo, %bb.bq, %bb.br, %.noexc138, %bb.bv
  %exitcond308.not = icmp eq i32 %i.nh, 4096
  br i1 %exitcond308.not, label %.critedge.loopexit191, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.bx:                                            ; preds = %bb.bw, %bb.bs, %bb.bp, %bb.bb, %bb.ax, %bb.au
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.critedge.loopexit191:                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106
  %.3185.lcssa = phi double [ %.4186.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.3185239, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106 ]
  %.3171.lcssa = phi double [ %.4172.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.3171240, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106 ]
  %.4.lcssa = phi float [ %.5.lcssa, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit140 ], [ %.4241, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit106 ]
  %11 = insertelement <2 x double> poison, double %.3171.lcssa, i64 0
  %12 = insertelement <2 x double> %11, double %.3185.lcssa, i64 1
  %13 = fadd <2 x double> %10, %12
  br label %.preheader192.split, !llvm.loop !269

.split.us277:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %.us-phi = phi float [ %.0166.us, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us ], [ %.0166, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ox = phi <2 x double> [ %i.cf, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us ], [ %10, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.oy = sext i32 %i.y to i64
  %i.oz = mul i64 %i.t, %i.oy
  %i.pa = uitofp i64 %i.oz to double
  %i.pb = insertelement <2 x double> poison, double %i.pa, i64 0
  %i.pc = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pd = fdiv <2 x double> %i.ox, %i.pc          ; 2 uses
  %i.pe = extractelement <2 x double> %i.pd, i64 0
  store double %i.pe, ptr %6, align 8, !tbaa !205
  %i.pf = extractelement <2 x double> %i.pd, i64 1
  %i.pg = call double @llvm.sqrt.f64(double %i.pf) ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.pg, ptr %i.ph, align 8, !tbaa !206
  %i.pi = fpext float %.us-phi to double
  %i.pj = fdiv double %i.pi, %i.pg
  %i.pk = call double @llvm.log10.f64(double %i.pj)
  %i.pl = fmul double %i.pk, 2.000000e+01
  %i.pm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.pl, ptr %i.pm, align 8, !tbaa !207
  %i.pn = load i64, ptr %i.ag, align 8, !tbaa !199
  %i.po = load ptr, ptr %i.bx, align 8, !tbaa !208
  %.not.i141 = icmp eq ptr %i.po, null
  br i1 %.not.i141, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.by

bb.by:                                            ; preds = %.split.us277
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pp = landingpad { ptr, i32 }
          catch ptr null
  %i.pq = extractvalue { ptr, i32 } %i.pp, 0
  call void @__clang_call_terminate(ptr %i.pq) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us277, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.pr = load ptr, ptr %i.bc, align 8, !tbaa !208
  %.not.i142 = icmp eq ptr %i.pr, null
  br i1 %.not.i142, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit143, label %bb.ca

bb.ca:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit143 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ps = landingpad { ptr, i32 }
          catch ptr null
  %i.pt = extractvalue { ptr, i32 } %i.ps, 0
  call void @__clang_call_terminate(ptr %i.pt) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit143: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, %bb.ca
  %i.pu = icmp eq i64 %i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  ret i1 %i.pu

bb.cc:                                            ; preds = %.split287.us, %bb.bx, %.split281.us, %.split284.us, %.split.us.split.us, %bb.ap
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %i.jo, %bb.ap ], [ %i.ja, %.split287.us ], [ %i.ow, %bb.bx ], [ %i.iy, %.split281.us ], [ %i.jb, %.split.us.split.us ], [ %i.iz, %.split284.us ] ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !208
  %.not.i144 = icmp eq ptr %i.pw, null
  br i1 %.not.i144, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %9)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.px = landingpad { ptr, i32 }
          catch ptr null
  %i.py = extractvalue { ptr, i32 } %i.px, 0
  call void @__clang_call_terminate(ptr %i.py) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145: ; preds = %bb.cd, %bb.cc, %bb.ao
  %.pn79.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jn, %bb.ao ], [ %.pn79.pn.pn.pn, %bb.cc ], [ %.pn79.pn.pn.pn, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.pz = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !208
  %.not.i146 = icmp eq ptr %i.qa, null
  br i1 %.not.i146, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit147, label %bb.cf

bb.cf:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit147 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qb = landingpad { ptr, i32 }
          catch ptr null
  %i.qc = extractvalue { ptr, i32 } %i.qb, 0
  call void @__clang_call_terminate(ptr %i.qc) #32
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit147: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit145, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  resume { ptr, i32 } %.pn79.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, ptr nofree writeonly captures(none) %2, i64 %3, ptr nofree noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %6 = alloca %"class.std::vector.5", align 8     ; 15 uses
  %7 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.235", align 8 ; 10 uses
  %8 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %9 = alloca %"class.std::function.161", align 8 ; 11 uses
  %10 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %11 = alloca %"class.std::function.161", align 8 ; 11 uses
  %12 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.155", align 8 ; 8 uses
  %13 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 15 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca i8, align 1                       ; 7 uses
  %14 = alloca %"class.std::vector.225", align 8  ; 15 uses
  %15 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.230", align 8 ; 10 uses
  %16 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %17 = alloca %"class.std::function.161", align 8 ; 11 uses
  %18 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %19 = alloca %"class.std::function.161", align 8 ; 11 uses
  %20 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.150", align 8 ; 8 uses
  %21 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 15 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca i8, align 1                       ; 7 uses
  %22 = alloca %"class.std::vector.215", align 8  ; 15 uses
  %23 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.220", align 8 ; 10 uses
  %24 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %25 = alloca %"class.std::function.161", align 8 ; 11 uses
  %26 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %27 = alloca %"class.std::function.161", align 8 ; 11 uses
  %28 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.145", align 8 ; 8 uses
  %29 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 15 uses
  %i.h = alloca float, align 4                    ; 5 uses
  %i.i = alloca i8, align 1                       ; 7 uses
  %30 = alloca %"class.std::vector.205", align 8  ; 15 uses
  %31 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.210", align 8 ; 10 uses
  %32 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %33 = alloca %"class.std::function.161", align 8 ; 11 uses
  %34 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %35 = alloca %"class.std::function.161", align 8 ; 11 uses
  %36 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.140", align 8 ; 8 uses
  %37 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 15 uses
  %i.j = alloca float, align 4                    ; 5 uses
  %i.k = alloca i8, align 1                       ; 7 uses
  %38 = alloca %"class.std::vector.198", align 8  ; 15 uses
  %39 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.200", align 8 ; 10 uses
  %40 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %41 = alloca %"class.std::function.161", align 8 ; 11 uses
  %42 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %43 = alloca %"class.std::function.161", align 8 ; 11 uses
  %44 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.135", align 8 ; 8 uses
  %45 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 15 uses
  %i.l = alloca float, align 4                    ; 5 uses
  %i.m = alloca i8, align 1                       ; 7 uses
  %46 = alloca %"class.std::vector.188", align 8  ; 15 uses
  %47 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.193", align 8 ; 10 uses
  %48 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %49 = alloca %"class.std::function.161", align 8 ; 11 uses
  %50 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %51 = alloca %"class.std::function.161", align 8 ; 11 uses
  %52 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.130", align 8 ; 8 uses
  %53 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 15 uses
  %i.n = alloca float, align 4                    ; 5 uses
  %i.o = alloca i8, align 1                       ; 7 uses
  %54 = alloca %"class.std::vector.178", align 8  ; 15 uses
  %55 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.183", align 8 ; 10 uses
  %56 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %57 = alloca %"class.std::function.161", align 8 ; 11 uses
  %58 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %59 = alloca %"class.std::function.161", align 8 ; 11 uses
  %60 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.125", align 8 ; 8 uses
  %61 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 15 uses
  %i.p = alloca float, align 4                    ; 5 uses
  %i.q = alloca i8, align 1                       ; 7 uses
  %62 = alloca %"class.std::vector.168", align 8  ; 15 uses
  %63 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.173", align 8 ; 10 uses
  %64 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %65 = alloca %"class.std::function.161", align 8 ; 11 uses
  %66 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %67 = alloca %"class.std::function.161", align 8 ; 11 uses
  %68 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.120", align 8 ; 8 uses
  %69 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 15 uses
  %i.r = alloca float, align 4                    ; 5 uses
  %i.s = alloca i8, align 1                       ; 7 uses
  %70 = alloca %"class.std::vector", align 8      ; 15 uses
  %71 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 10 uses
  %72 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %73 = alloca %"class.std::function.161", align 8 ; 11 uses
  %74 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %75 = alloca %"class.std::function.161", align 8 ; 11 uses
  %76 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 8 uses
  %77 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 15 uses
  %78 = alloca %"class.OpenImageIO::v3_1::pvt::LoggedTimer", align 8 ; 6 uses
  %79 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %80 = alloca %"struct.OpenImageIO::v3_1::ROI", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #29
  store ptr @.str.9, ptr %79, align 8, !tbaa !73
end_hunk_3
