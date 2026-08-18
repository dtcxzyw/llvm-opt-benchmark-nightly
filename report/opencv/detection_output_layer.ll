inline.NumInlined: 2314
inline.NumDeleted: 910
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv3dnn24DetectionOutputLayerImpl18processDetections_ERKSt3mapIiSt6vectorINS0_4util14NormalizedBBoxESaIS5_EESt4lessIiESaISt4pairIKiS7_EEERNS_3MatERS3_IS2_IiS3_IiSaIiEES9_SaISA_ISB_SK_EEESaISN_EE:bb.a
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit344, %.loopexit.split-lp345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %.pn58 = phi { ptr, i32 } [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %lpad.loopexit346, %.loopexit344 ], [ %lpad.loopexit.split-lp347, %.loopexit.split-lp345 ]
  %i.hh = load ptr, ptr %26, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i132 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIfSaIfEED2Ev.exit133, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hi = load ptr, ptr %i.eg, align 8, !tbaa !96
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hh to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hl) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit133

_ZNSt6vectorIfSaIfEED2Ev.exit133:                 ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %bb.dh

bb.bl:                                            ; preds = %._crit_edge430
  %.not.i.i134 = icmp eq ptr %.sroa.0257.1.lcssa, %.sroa.18.1.lcssa
  br i1 %.not.i.i134, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.em, i1 true)
  %i.hn = shl nuw nsw i64 %i.hm, 1
  %i.ho = xor i64 %i.hn, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_(ptr %.sroa.0257.1.lcssa, ptr %.sroa.18.1.lcssa, i64 noundef %i.ho, ptr nonnull @_ZN2cv3dnn4utilL20SortScorePairDescendISt4pairIiiEEEbRKS3_IfT_ES8_)
          to label %.noexc135 unwind label %bb.bu

.noexc135:                                        ; preds = %bb.bm
  %i.hp = icmp sgt i64 %i.el, 192
  br i1 %i.hp, label %.lr.ph.i.i, label %.preheader.i18.i

.lr.ph.i.i:                                       ; preds = %.noexc135
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0257.1.lcssa, i64 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bp, %.lr.ph.i.i
  %indvar.a = phi i64 [ %indvar.next.a, %bb.bp ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %.sroa.010.023.i.idx.i = phi i64 [ %.sroa.010.023.i.add.i, %bb.bp ], [ 12, %.lr.ph.i.i ] ; 3 uses
  %.pn22.i.i = phi ptr [ %.sroa.010.023.i.ptr.i, %bb.bp ], [ %.sroa.0257.1.lcssa, %.lr.ph.i.i ] ; 7 uses
  %.sroa.010.023.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0257.1.lcssa, i64 %.sroa.010.023.i.idx.i ; 9 uses
  %i.hr = load float, ptr %.sroa.010.023.i.ptr.i, align 4, !tbaa !248 ; 5 uses
  %i.hs = load float, ptr %.sroa.0257.1.lcssa, align 4, !tbaa !248
  %i.ht = fcmp ogt float %i.hr, %i.hs
  br i1 %i.ht, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %bb.bo

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.bn
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn22.i.i, i64 16
  %i.hu = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i.i, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %.pn22.i.i, i64 24
  %i.hw = udiv exact i64 %.sroa.010.023.i.idx.i, 12 ; 2 uses
  %i.hx = and i64 %indvar.a, 1
  %lcmp.mod.not.not.a = icmp eq i64 %i.hx, 0
  br i1 %lcmp.mod.not.not.a, label %.lr.ph.i.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i
  %i.hy = getelementptr inbounds i8, ptr %.sroa.010.023.i.ptr.i, i64 -12 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.pn22.i.i, i64 12 ; 2 uses
  %i.ia = load float, ptr %i.hy, align 4, !tbaa !63
  store float %i.ia, ptr %i.hz, align 4, !tbaa !248
  %i.ib = getelementptr inbounds i8, ptr %.sroa.010.023.i.ptr.i, i64 -8
  %i.ic = getelementptr inbounds nuw i8, ptr %.pn22.i.i, i64 16
  %i.id = load i32, ptr %i.ib, align 4, !tbaa !25
  store i32 %i.id, ptr %i.ic, align 4, !tbaa !251
  %i.ie = getelementptr inbounds i8, ptr %.sroa.010.023.i.ptr.i, i64 -4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !25
  %i.ig = getelementptr inbounds nuw i8, ptr %.pn22.i.i, i64 20
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !252
  %i.ih = add nsw i64 %i.hw, -1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.unr = phi i64 [ %i.hw, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %i.ih, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.unr = phi ptr [ %i.hv, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %i.hz, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.010.023.i.ptr.i, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %i.hy, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ii = icmp eq i64 %indvar.a, 0
  br i1 %i.ii, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i = phi i64 [ %i.jb, %.lr.ph.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.078.i.i.i.i.i.i.i = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ij = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -12
  %i.ik = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -12
  %i.il = load float, ptr %i.ij, align 4, !tbaa !63
  store float %i.il, ptr %i.ik, align 4, !tbaa !248
  %i.im = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -8
  %i.in = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -8
  %i.io = load i32, ptr %i.im, align 4, !tbaa !25
  store i32 %i.io, ptr %i.in, align 4, !tbaa !251
  %i.ip = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -4
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !25
  %i.ir = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -4
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !252
  %i.is = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.iu = load float, ptr %i.is, align 4, !tbaa !63
  store float %i.iu, ptr %i.it, align 4, !tbaa !248
  %i.iv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -20
  %i.iw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -20
  %i.ix = load i32, ptr %i.iv, align 4, !tbaa !25
  store i32 %i.ix, ptr %i.iw, align 4, !tbaa !251
  %i.iy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -16
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !25
  %i.ja = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -16
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !252
  %i.jb = add nsw i64 %.010.i.i.i.i.i.i.i, -2
  %i.jc = icmp sgt i64 %.010.i.i.i.i.i.i.i, 2
  br i1 %i.jc, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i, !llvm.loop !253

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit
  store float %i.hr, ptr %.sroa.0257.1.lcssa, align 4, !tbaa !248
  store <2 x i32> %i.hu, ptr %i.hq, align 4, !tbaa !25
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %.sroa.6288.0..sroa.010.023.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i.ptr.i, i64 4
  %i.jd = load <2 x i32>, ptr %.sroa.6288.0..sroa.010.023.i.ptr.i.sroa_idx, align 4
  %i.je = load float, ptr %.pn22.i.i, align 4, !tbaa !248 ; 2 uses
  %i.jf = fcmp ogt float %i.hr, %i.je
  br i1 %i.jf, label %.lr.ph.i.i.i180, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i180:                                  ; preds = %bb.bo, %.lr.ph.i.i.i180
  %i.jg = phi float [ %i.jk, %.lr.ph.i.i.i180 ], [ %i.je, %bb.bo ]
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i180 ], [ %.pn22.i.i, %bb.bo ] ; 3 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i180 ], [ %.sroa.010.023.i.ptr.i, %bb.bo ] ; 3 uses
  store float %i.jg, ptr %.sroa.04.08.i.i.i, align 4, !tbaa !248
  %i.jh = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.i, i64 -8
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 4
  %i.jj = load <2 x i32>, ptr %i.jh, align 4, !tbaa !25
  store <2 x i32> %i.jj, ptr %i.ji, align 4, !tbaa !25
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -12 ; 2 uses
  %i.jk = load float, ptr %.sroa.0.0.i.i.i, align 4, !tbaa !248 ; 2 uses
  %i.jl = fcmp ogt float %i.hr, %i.jk
  br i1 %i.jl, label %.lr.ph.i.i.i180, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, !llvm.loop !254

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i180, %bb.bo
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.010.023.i.ptr.i, %bb.bo ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i180 ] ; 2 uses
  store float %i.hr, ptr %.sroa.04.0.lcssa.i.i.i, align 4, !tbaa !248
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 4
  store <2 x i32> %i.jd, ptr %i.jm, align 4, !tbaa !25
  br label %bb.bp

bb.bp:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i
  %.sroa.010.023.i.add.i = add nuw nsw i64 %.sroa.010.023.i.idx.i, 12 ; 2 uses
  %.not.i.i179 = icmp eq i64 %.sroa.010.023.i.add.i, 192
  %indvar.next.a = add i64 %indvar.a, 1
  br i1 %.not.i.i179, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, label %bb.bn, !llvm.loop !255

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i: ; preds = %bb.bp
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0257.1.lcssa, i64 192 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.jn, %.sroa.18.1.lcssa
  br i1 %.not7.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i
  %.sroa.0.08.i.i = phi ptr [ %i.jy, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i ], [ %i.jn, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i ] ; 6 uses
  %.sroa.0290.0.copyload = load float, ptr %.sroa.0.08.i.i, align 4 ; 3 uses
  %.sroa.6293.0..sroa.0.08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 4
  %i.jo = load <2 x i32>, ptr %.sroa.6293.0..sroa.0.08.i.i.sroa_idx, align 4
  %.sroa.0.07.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i, i64 -12 ; 2 uses
  %i.jp = load float, ptr %.sroa.0.07.i.i.i, align 4, !tbaa !248 ; 2 uses
  %i.jq = fcmp ogt float %.sroa.0290.0.copyload, %i.jp
  br i1 %i.jq, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i10.i, %.lr.ph.i.i14.i
  %i.jr = phi float [ %i.jv, %.lr.ph.i.i14.i ], [ %i.jp, %.lr.ph.i10.i ]
  %.sroa.0.09.i.i15.i = phi ptr [ %.sroa.0.0.i.i17.i, %.lr.ph.i.i14.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i10.i ] ; 3 uses
  %.sroa.04.08.i.i16.i = phi ptr [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ], [ %.sroa.0.08.i.i, %.lr.ph.i10.i ] ; 3 uses
  store float %i.jr, ptr %.sroa.04.08.i.i16.i, align 4, !tbaa !248
  %i.js = getelementptr inbounds i8, ptr %.sroa.04.08.i.i16.i, i64 -8
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i16.i, i64 4
  %i.ju = load <2 x i32>, ptr %i.js, align 4, !tbaa !25
  store <2 x i32> %i.ju, ptr %i.jt, align 4, !tbaa !25
  %.sroa.0.0.i.i17.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i15.i, i64 -12 ; 2 uses
  %i.jv = load float, ptr %.sroa.0.0.i.i17.i, align 4, !tbaa !248 ; 2 uses
  %i.jw = fcmp ogt float %.sroa.0290.0.copyload, %i.jv
  br i1 %i.jw, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, !llvm.loop !254

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i10.i
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.08.i.i, %.lr.ph.i10.i ], [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ] ; 2 uses
  store float %.sroa.0290.0.copyload, ptr %.sroa.04.0.lcssa.i.i12.i, align 4, !tbaa !248
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i12.i, i64 4
  store <2 x i32> %i.jo, ptr %i.jx, align 4, !tbaa !25
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 12 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.jy, %.sroa.18.1.lcssa
  br i1 %.not.i13.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !256

.preheader.i18.i:                                 ; preds = %.noexc135
  %.sroa.010.020.i19.i = getelementptr inbounds nuw i8, ptr %.sroa.0257.1.lcssa, i64 12 ; 2 uses
  %.not21.i20.i = icmp eq ptr %.sroa.010.020.i19.i, %.sroa.18.1.lcssa
  br i1 %.not21.i20.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.preheader.i18.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0257.1.lcssa, i64 4
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %.lr.ph.i21.i
  %indvar = phi i64 [ %indvar.next, %bb.bt ], [ 0, %.lr.ph.i21.i ] ; 3 uses
  %.sroa.010.023.i22.i = phi ptr [ %.sroa.010.0.i26.i, %bb.bt ], [ %.sroa.010.020.i19.i, %.lr.ph.i21.i ] ; 11 uses
  %.pn22.i23.i = phi ptr [ %.sroa.010.023.i22.i, %bb.bt ], [ %.sroa.0257.1.lcssa, %.lr.ph.i21.i ] ; 7 uses
  %i.ka = load float, ptr %.sroa.010.023.i22.i, align 4, !tbaa !248 ; 5 uses
  %i.kb = load float, ptr %.sroa.0257.1.lcssa, align 4, !tbaa !248
  %i.kc = fcmp ogt float %i.ka, %i.kb
  br i1 %i.kc, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %.sroa.4.0..sroa_idx.i33.i = getelementptr inbounds nuw i8, ptr %.pn22.i23.i, i64 16
  %i.kd = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i33.i, align 4
  %i.ke = ptrtoint ptr %.sroa.010.023.i22.i to i64
  %i.kf = sub i64 %i.ke, %i.ek                    ; 2 uses
  %i.kg = icmp sgt i64 %i.kf, 0
  br i1 %i.kg, label %.lr.ph.preheader.i.i.i.i.i.i38.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i37.i

.lr.ph.preheader.i.i.i.i.i.i38.i:                 ; preds = %bb.br
  %31 = getelementptr inbounds nuw i8, ptr %.pn22.i23.i, i64 24
  %32 = udiv exact i64 %i.kf, 12                  ; 2 uses
  %33 = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %33, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.preheader.i.i.i.i.i.i38.i.a, label %.lr.ph.i.i.i.i.i.i39.i.prol.loopexit

.lr.ph.preheader.i.i.i.i.i.i38.i.a:               ; preds = %.lr.ph.preheader.i.i.i.i.i.i38.i
  %34 = getelementptr inbounds i8, ptr %.sroa.010.023.i22.i, i64 -12 ; 2 uses
  %35 = getelementptr inbounds nuw i8, ptr %.pn22.i23.i, i64 12 ; 2 uses
  %36 = load float, ptr %34, align 4, !tbaa !63
  store float %36, ptr %35, align 4, !tbaa !248
  %37 = getelementptr inbounds i8, ptr %.sroa.010.023.i22.i, i64 -8
  %38 = getelementptr inbounds nuw i8, ptr %.pn22.i23.i, i64 16
  %39 = load i32, ptr %37, align 4, !tbaa !25
  store i32 %39, ptr %38, align 4, !tbaa !251
  %40 = getelementptr inbounds i8, ptr %.sroa.010.023.i22.i, i64 -4
  %41 = load i32, ptr %40, align 4, !tbaa !25
  %i.kh = getelementptr inbounds nuw i8, ptr %.pn22.i23.i, i64 20
  store i32 %41, ptr %i.kh, align 4, !tbaa !252
  %42 = add nsw i64 %32, -1
  br label %.lr.ph.i.i.i.i.i.i39.i.prol.loopexit

.lr.ph.i.i.i.i.i.i39.i.prol.loopexit:             ; preds = %.lr.ph.preheader.i.i.i.i.i.i38.i.a, %.lr.ph.preheader.i.i.i.i.i.i38.i
  %.010.i.i.i.i.i.i40.i.unr = phi i64 [ %32, %.lr.ph.preheader.i.i.i.i.i.i38.i ], [ %42, %.lr.ph.preheader.i.i.i.i.i.i38.i.a ]
  %.069.i.i.i.i.i.i41.i.unr = phi ptr [ %31, %.lr.ph.preheader.i.i.i.i.i.i38.i ], [ %35, %.lr.ph.preheader.i.i.i.i.i.i38.i.a ]
  %.078.i.i.i.i.i.i42.i.unr = phi ptr [ %.sroa.010.023.i22.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ], [ %34, %.lr.ph.preheader.i.i.i.i.i.i38.i.a ]
  %43 = icmp eq i64 %indvar, 0
  br i1 %43, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i37.i, label %.lr.ph.i.i.i.i.i.i39.i

.lr.ph.i.i.i.i.i.i39.i:                           ; preds = %.lr.ph.i.i.i.i.i.i39.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i39.i
  %.010.i.i.i.i.i.i40.i = phi i64 [ %i.kr, %.lr.ph.i.i.i.i.i.i39.i ], [ %.010.i.i.i.i.i.i40.i.unr, %.lr.ph.i.i.i.i.i.i39.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i41.i = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i.i39.i ], [ %.069.i.i.i.i.i.i41.i.unr, %.lr.ph.i.i.i.i.i.i39.i.prol.loopexit ] ; 6 uses
  %.078.i.i.i.i.i.i42.i = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i.i39.i ], [ %.078.i.i.i.i.i.i42.i.unr, %.lr.ph.i.i.i.i.i.i39.i.prol.loopexit ] ; 6 uses
  %44 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.i, i64 -12
  %45 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.i, i64 -12
  %46 = load float, ptr %44, align 4, !tbaa !63
  store float %46, ptr %45, align 4, !tbaa !248
  %47 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.i, i64 -8
  %48 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.i, i64 -8
  %49 = load i32, ptr %47, align 4, !tbaa !25
  store i32 %49, ptr %48, align 4, !tbaa !251
  %50 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.i, i64 -4
  %51 = load i32, ptr %50, align 4, !tbaa !25
  %52 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.i, i64 -4
  store i32 %51, ptr %52, align 4, !tbaa !252
  %i.ki = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.i, i64 -24 ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.i, i64 -24 ; 2 uses
  %i.kk = load float, ptr %i.ki, align 4, !tbaa !63
  store float %i.kk, ptr %i.kj, align 4, !tbaa !248
  %i.kl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.i, i64 -20
  %i.km = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.i, i64 -20
  %i.kn = load i32, ptr %i.kl, align 4, !tbaa !25
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !251
  %i.ko = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42.i, i64 -16
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !25
  %i.kq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41.i, i64 -16
  store i32 %i.kp, ptr %i.kq, align 4, !tbaa !252
  %i.kr = add nsw i64 %.010.i.i.i.i.i.i40.i, -2
  %53 = icmp sgt i64 %.010.i.i.i.i.i.i40.i, 2
  br i1 %53, label %.lr.ph.i.i.i.i.i.i39.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i37.i, !llvm.loop !253

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i37.i: ; preds = %.lr.ph.i.i.i.i.i.i39.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i39.i, %bb.br
  store float %i.ka, ptr %.sroa.0257.1.lcssa, align 4, !tbaa !248
  store <2 x i32> %i.kd, ptr %i.jz, align 4, !tbaa !25
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %.sroa.6298.0..sroa.010.023.i22.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i22.i, i64 4
  %i.ks = load <2 x i32>, ptr %.sroa.6298.0..sroa.010.023.i22.i.sroa_idx, align 4
  %i.kt = load float, ptr %.pn22.i23.i, align 4, !tbaa !248 ; 2 uses
  %i.ku = fcmp ogt float %i.ka, %i.kt
  br i1 %i.ku, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i

.lr.ph.i.i28.i:                                   ; preds = %bb.bs, %.lr.ph.i.i28.i
  %i.kv = phi float [ %i.kz, %.lr.ph.i.i28.i ], [ %i.kt, %bb.bs ]
  %.sroa.0.09.i.i29.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i28.i ], [ %.pn22.i23.i, %bb.bs ] ; 3 uses
  %.sroa.04.08.i.i30.i = phi ptr [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ], [ %.sroa.010.023.i22.i, %bb.bs ] ; 3 uses
  store float %i.kv, ptr %.sroa.04.08.i.i30.i, align 4, !tbaa !248
  %i.kw = getelementptr inbounds i8, ptr %.sroa.04.08.i.i30.i, i64 -8
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i30.i, i64 4
  %i.ky = load <2 x i32>, ptr %i.kw, align 4, !tbaa !25
  store <2 x i32> %i.ky, ptr %i.kx, align 4, !tbaa !25
  %.sroa.0.0.i.i31.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i29.i, i64 -12 ; 2 uses
  %i.kz = load float, ptr %.sroa.0.0.i.i31.i, align 4, !tbaa !248 ; 2 uses
  %i.la = fcmp ogt float %i.ka, %i.kz
  br i1 %i.la, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i, !llvm.loop !254

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i: ; preds = %.lr.ph.i.i28.i, %bb.bs
  %.sroa.04.0.lcssa.i.i25.i = phi ptr [ %.sroa.010.023.i22.i, %bb.bs ], [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ] ; 2 uses
  store float %i.ka, ptr %.sroa.04.0.lcssa.i.i25.i, align 4, !tbaa !248
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i25.i, i64 4
  store <2 x i32> %i.ks, ptr %i.lb, align 4, !tbaa !25
  br label %bb.bt

bb.bt:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i37.i
  %.sroa.010.0.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i22.i, i64 12 ; 2 uses
  %.not.i27.i = icmp eq ptr %.sroa.010.0.i26.i, %.sroa.18.1.lcssa
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i27.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %bb.bq, !llvm.loop !255

bb.bu:                                            ; preds = %_ZNKSt6vectorISt4pairIfS0_IiiEESaIS2_EE12_M_check_lenEmPKc.exit.i, %bb.cm, %bb.bm
  %.sroa.31.0.lcssa569 = phi ptr [ %.sroa.31.0.lcssa570, %_ZNKSt6vectorISt4pairIfS0_IiiEESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.31.0.lcssa570, %bb.cm ], [ %.sroa.31.1.lcssa, %bb.bm ]
  %.sroa.0257.0.lcssa562 = phi ptr [ %.sroa.0257.0.lcssa563, %_ZNKSt6vectorISt4pairIfS0_IiiEESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0257.0.lcssa563, %bb.cm ], [ %.sroa.0257.1.lcssa, %bb.bm ]
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.bv:                                            ; preds = %._crit_edge430.thread, %._crit_edge430
  %i.ld = phi i64 [ 0, %._crit_edge430.thread ], [ %i.em, %._crit_edge430 ] ; 2 uses
  %i.le = phi i64 [ 0, %._crit_edge430.thread ], [ %i.el, %._crit_edge430 ] ; 2 uses
  %i.lf = phi i64 [ 0, %._crit_edge430.thread ], [ %i.ek, %._crit_edge430 ] ; 3 uses
  %i.lg = phi i64 [ 0, %._crit_edge430.thread ], [ %i.ej, %._crit_edge430 ] ; 2 uses
  %.sroa.31.0.lcssa571 = phi ptr [ null, %._crit_edge430.thread ], [ %.sroa.31.1.lcssa, %._crit_edge430 ] ; 2 uses
  %.sroa.18.0.lcssa567 = phi ptr [ null, %._crit_edge430.thread ], [ %.sroa.18.1.lcssa, %._crit_edge430 ] ; 4 uses
  %.sroa.0257.0.lcssa564 = phi ptr [ null, %._crit_edge430.thread ], [ %.sroa.0257.1.lcssa, %._crit_edge430 ] ; 37 uses
  %i.lh = phi i32 [ %i.z, %._crit_edge430.thread ], [ %.pre484, %._crit_edge430 ] ; 7 uses
  %i.li = sext i32 %i.lh to i64                   ; 4 uses
  %i.lj = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %i.li ; 3 uses
  %i.lk = icmp slt i32 %i.lh, 2
  br i1 %i.lk, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ll = add nsw i64 %i.li, -2                   ; 3 uses
  %i.lm = lshr i64 %i.ll, 1
  %.lhs.trunc = add nsw i32 %i.lh, -1
  %i.ln = lshr i32 %.lhs.trunc, 1
  %.zext = zext nneg i32 %i.ln to i64             ; 2 uses
  %i.lo = and i32 %i.lh, 1
  %i.lp = icmp eq i32 %i.lo, 0
  %i.lq = lshr exact i64 %i.ll, 1                 ; 2 uses
  %i.lr = or disjoint i64 %i.ll, 1                ; 2 uses
  %i.ls = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %i.lr ; 3 uses
  %i.lt = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %i.lq ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  br label %bb.bx

bb.bx:                                            ; preds = %.noexc184, %bb.bw
  %.012.i.i.i181 = phi i64 [ %i.lm, %bb.bw ], [ %i.nl, %.noexc184 ] ; 8 uses
  %i.ly = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %.012.i.i.i181 ; 4 uses
  %.sroa.05.0.copyload.i.i.i312333 = load float, ptr %i.ly, align 4 ; 3 uses
  %.sroa_idx313 = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %.sroa.05.0.copyload.i.i.i314 = load i32, ptr %.sroa_idx313, align 4 ; 2 uses
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.ly, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %.sroa.4.0.copyload.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4
  %i.lz = icmp slt i64 %.012.i.i.i181, %.zext
  br i1 %i.lz, label %.lr.ph.i229, label %._crit_edge.i214

.lr.ph.i229:                                      ; preds = %bb.bx, %.lr.ph.i229
  %.043.i230 = phi i64 [ %spec.select.i231, %.lr.ph.i229 ], [ %.012.i.i.i181, %bb.bx ] ; 2 uses
  %i.ma = shl i64 %.043.i230, 1                   ; 2 uses
  %i.mb = add i64 %i.ma, 2                        ; 2 uses
  %i.mc = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %i.mb
  %i.md = or disjoint i64 %i.ma, 1                ; 2 uses
  %i.me = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %i.md
  %i.mf = load float, ptr %i.mc, align 4, !tbaa !248
  %i.mg = load float, ptr %i.me, align 4, !tbaa !248
  %i.mh = fcmp ogt float %i.mf, %i.mg
  %spec.select.i231 = select i1 %i.mh, i64 %i.md, i64 %i.mb ; 4 uses
  %i.mi = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %spec.select.i231 ; 2 uses
  %i.mj = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %.043.i230 ; 2 uses
  %i.mk = load float, ptr %i.mi, align 4, !tbaa !63
  store float %i.mk, ptr %i.mj, align 4, !tbaa !248
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.mn = load <2 x i32>, ptr %i.ml, align 4, !tbaa !25
  store <2 x i32> %i.mn, ptr %i.mm, align 4, !tbaa !25
  %i.mo = icmp slt i64 %spec.select.i231, %.zext
  br i1 %i.mo, label %.lr.ph.i229, label %._crit_edge.i214, !llvm.loop !257

._crit_edge.i214:                                 ; preds = %.lr.ph.i229, %bb.bx
  %.0.lcssa.i215 = phi i64 [ %.012.i.i.i181, %bb.bx ], [ %spec.select.i231, %.lr.ph.i229 ] ; 2 uses
  %i.mp = icmp eq i64 %.0.lcssa.i215, %i.lq
  %or.cond331 = select i1 %i.lp, i1 %i.mp, i1 false
  br i1 %or.cond331, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %._crit_edge.i214
  %i.mq = load float, ptr %i.ls, align 4, !tbaa !63
  store float %i.mq, ptr %i.lt, align 4, !tbaa !248
  %i.mr = load i32, ptr %i.lu, align 4, !tbaa !25
  store i32 %i.mr, ptr %i.lv, align 4, !tbaa !251
  %i.ms = load i32, ptr %i.lw, align 4, !tbaa !25
  store i32 %i.ms, ptr %i.lx, align 4, !tbaa !252
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge.i214
  %.1.i216 = phi i64 [ %i.lr, %bb.by ], [ %.0.lcssa.i215, %._crit_edge.i214 ] ; 3 uses
  %i.mt = icmp sgt i64 %.1.i216, %.012.i.i.i181
  %i.mu = trunc i64 %.sroa.05.0.copyload.i.i.i to i32
  %i.mv = bitcast i32 %i.mu to float
  %i.mw = lshr i64 %.sroa.05.0.copyload.i.i.i, 32
  %i.mx = trunc nuw i64 %i.mw to i32
  br i1 %i.mt, label %.lr.ph.i.i219, label %.noexc184

.lr.ph.i.i219:                                    ; preds = %bb.bz, %bb.ca
  %.019.i.i220 = phi i64 [ %.01020.i.i222, %bb.ca ], [ %.1.i216, %bb.bz ] ; 3 uses
  %.01020.in.i.i221 = add nsw i64 %.019.i.i220, -1
  %.01020.i.i222 = sdiv i64 %.01020.in.i.i221, 2  ; 4 uses
  %i.my = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %.01020.i.i222 ; 2 uses
  %i.mz = load float, ptr %i.my, align 4, !tbaa !248 ; 2 uses
  %i.na = fcmp ogt float %i.mz, %.sroa.05.0.copyload.i.i.i312333
  br i1 %i.na, label %bb.ca, label %.noexc184

bb.ca:                                            ; preds = %.lr.ph.i.i219
  %i.nb = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %.019.i.i220 ; 2 uses
  store float %i.mz, ptr %i.nb, align 4, !tbaa !248
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.ne = load <2 x i32>, ptr %i.nc, align 4, !tbaa !25
  store <2 x i32> %i.ne, ptr %i.nd, align 4, !tbaa !25
  %i.nf = icmp sgt i64 %.01020.i.i222, %.012.i.i.i181
  br i1 %i.nf, label %.lr.ph.i.i219, label %.noexc184, !llvm.loop !258

.noexc184:                                        ; preds = %bb.ca, %.lr.ph.i.i219, %bb.bz
  %i.ng = phi i32 [ %i.mx, %bb.bz ], [ %.sroa.05.0.copyload.i.i.i314, %.lr.ph.i.i219 ], [ %.sroa.05.0.copyload.i.i.i314, %bb.ca ]
  %i.nh = phi float [ %i.mv, %bb.bz ], [ %.sroa.05.0.copyload.i.i.i312333, %.lr.ph.i.i219 ], [ %.sroa.05.0.copyload.i.i.i312333, %bb.ca ]
  %.0.lcssa.i.i218 = phi i64 [ %.1.i216, %bb.bz ], [ %.01020.i.i222, %bb.ca ], [ %.019.i.i220, %.lr.ph.i.i219 ]
  %i.ni = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %.0.lcssa.i.i218 ; 3 uses
  store float %i.nh, ptr %i.ni, align 4, !tbaa !248
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  store i32 %i.ng, ptr %i.nj, align 4, !tbaa !251
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  store i32 %.sroa.4.0.copyload.i.i.i, ptr %i.nk, align 4, !tbaa !252
  %.not.i.i.i182 = icmp eq i64 %.012.i.i.i181, 0
  %i.nl = add nsw i64 %.012.i.i.i181, -1
  br i1 %.not.i.i.i182, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i, label %bb.bx, !llvm.loop !259

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i: ; preds = %.noexc184, %bb.bv
  %i.nm = icmp ult ptr %i.lj, %.sroa.18.0.lcssa567
  br i1 %i.nm, label %.lr.ph.i.i183, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_SH_T0_.exit.i

.lr.ph.i.i183:                                    ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfS2_IiiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_RT0_.exit.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0257.0.lcssa564, i64 4
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.0257.0.lcssa564, i64 8
  %i.np = add nsw i64 %i.li, -1
  %i.nq = sdiv i64 %i.np, 2
  %i.nr = icmp sgt i32 %i.lh, 2
  %i.ns = and i32 %i.lh, 1
  %i.nt = icmp eq i32 %i.ns, 0
  %i.nu = add nsw i64 %i.li, -2                   ; 2 uses
  %i.nv = ashr exact i64 %i.nu, 1                 ; 2 uses
  %i.nw = or disjoint i64 %i.nu, 1                ; 2 uses
  %i.nx = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %i.nw ; 3 uses
  %i.ny = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %i.nv ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cf, %.lr.ph.i.i183
  %.sroa.0.016.i.i = phi ptr [ %i.lj, %.lr.ph.i.i183 ], [ %i.pr, %bb.cf ] ; 6 uses
  %i.od = load float, ptr %.sroa.0.016.i.i, align 4, !tbaa !248 ; 4 uses
  %i.oe = load float, ptr %.sroa.0257.0.lcssa564, align 4, !tbaa !248 ; 2 uses
  %i.of = fcmp ogt float %i.od, %i.oe
  br i1 %i.of, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %.sroa.0.016.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4 ; 2 uses
  %.sroa.05.0.copyload.i9.i.i307 = load i32, ptr %.sroa.0.016.i.i.sroa_idx, align 4 ; 2 uses
  %.sroa.05.0.copyload.i9.i.i = load i64, ptr %.sroa.0.016.i.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i10.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i11.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i10.i.i, align 4
  store float %i.oe, ptr %.sroa.0.016.i.i, align 4, !tbaa !248
  %i.og = load i32, ptr %i.nn, align 4, !tbaa !25
  store i32 %i.og, ptr %.sroa.0.016.i.i.sroa_idx, align 4, !tbaa !251
  %i.oh = load i32, ptr %i.no, align 4, !tbaa !25
  store i32 %i.oh, ptr %.sroa.4.0..sroa_idx.i10.i.i, align 4, !tbaa !252
  br i1 %i.nr, label %.lr.ph.i210, label %._crit_edge.i195

.lr.ph.i210:                                      ; preds = %bb.cc, %.lr.ph.i210
  %.043.i211 = phi i64 [ %spec.select.i212, %.lr.ph.i210 ], [ 0, %bb.cc ] ; 2 uses
  %i.oi = shl i64 %.043.i211, 1                   ; 2 uses
  %i.oj = add i64 %i.oi, 2                        ; 2 uses
  %i.ok = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %i.oj
  %i.ol = or disjoint i64 %i.oi, 1                ; 2 uses
  %i.om = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %i.ol
  %i.on = load float, ptr %i.ok, align 4, !tbaa !248
  %i.oo = load float, ptr %i.om, align 4, !tbaa !248
  %i.op = fcmp ogt float %i.on, %i.oo
  %spec.select.i212 = select i1 %i.op, i64 %i.ol, i64 %i.oj ; 4 uses
  %i.oq = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %spec.select.i212 ; 2 uses
  %i.or = getelementptr inbounds [12 x i8], ptr %.sroa.0257.0.lcssa564, i64 %.043.i211 ; 2 uses
  %i.os = load float, ptr %i.oq, align 4, !tbaa !63
  store float %i.os, ptr %i.or, align 4, !tbaa !248
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.ov = load <2 x i32>, ptr %i.ot, align 4, !tbaa !25
  store <2 x i32> %i.ov, ptr %i.ou, align 4, !tbaa !25
  %i.ow = icmp slt i64 %spec.select.i212, %i.nq
  br i1 %i.ow, label %.lr.ph.i210, label %._crit_edge.i195, !llvm.loop !257

._crit_edge.i195:                                 ; preds = %.lr.ph.i210, %bb.cc
  %.0.lcssa.i196 = phi i64 [ 0, %bb.cc ], [ %spec.select.i212, %.lr.ph.i210 ] ; 3 uses
  %i.ox = icmp eq i64 %.0.lcssa.i196, %i.nv
end_hunk_0
