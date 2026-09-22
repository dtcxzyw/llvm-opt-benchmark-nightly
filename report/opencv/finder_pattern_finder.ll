Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/finder_pattern_finder?download=true
inline.NumInlined: 2769
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5zxing6qrcode19FinderPatternFinder18selectBestPatternsERNS_12ErrorHandlerE:bb.a
          to label %bb.ek unwind label %bb.em

bb.ek:                                            ; preds = %bb.ej
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing18ReaderErrorHandlerE, i64 16), ptr %9, align 8, !tbaa !63
  %i.sc = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 3, ptr %i.sc, align 8, !tbaa !97
  %i.sd = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.el unwind label %bb.en     ; 0 uses

bb.el:                                            ; preds = %bb.ek
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %9, align 8, !tbaa !63
  %i.se = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !98 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.sh = icmp eq ptr %i.sf, %i.sg
  br i1 %i.sh, label %_ZN5zxing12ErrorHandlerD2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238: ; preds = %bb.el
  %i.si = load i64, ptr %i.sg, align 8, !tbaa !99
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.sj) #22
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit240

_ZN5zxing12ErrorHandlerD2Ev.exit240:              ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.ep

bb.em:                                            ; preds = %bb.ej
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit243

bb.en:                                            ; preds = %bb.ek
  %i.sl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %9, align 8, !tbaa !63
  %i.sm = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !98 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.sp = icmp eq ptr %i.sn, %i.so
  br i1 %i.sp, label %_ZN5zxing12ErrorHandlerD2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241: ; preds = %bb.en
  %i.sq = load i64, ptr %i.so, align 8, !tbaa !99
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.sr) #22
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit243

_ZN5zxing12ErrorHandlerD2Ev.exit243:              ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241, %bb.em
  %.pn141 = phi { ptr, i32 } [ %i.sk, %bb.em ], [ %i.sl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241 ], [ %i.sl, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.et

bb.eo:                                            ; preds = %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit220
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %.0120.lcssa
  %i.st = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.su = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.st, ptr noundef nonnull align 8 dereferenceable(8) %i.ss) ; 0 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !85
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.sv, align 8, !tbaa !84
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aa, ptr %i.sw, align 8, !tbaa !92
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %_ZN5zxing12ErrorHandlerD2Ev.exit240
  %i.sx = phi ptr [ null, %bb.eo ], [ %i.aa, %_ZN5zxing12ErrorHandlerD2Ev.exit240 ] ; 3 uses
  %i.sy = phi ptr [ null, %bb.eo ], [ %i.z, %_ZN5zxing12ErrorHandlerD2Ev.exit240 ] ; 5 uses
  %i.sz = load ptr, ptr %5, align 8, !tbaa !85    ; 3 uses
  %i.ta = load ptr, ptr %i.nf, align 8, !tbaa !84 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.sz, %i.ta
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode13FinderPatternEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ep, %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode13FinderPatternEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.tj, %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode13FinderPatternEEEEvPT_.exit.i.i.i ], [ %i.sz, %bb.ep ] ; 2 uses
  %i.tb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !58 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.tb, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode13FinderPatternEEEEvPT_.exit.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %.lr.ph.i.i.i
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8 ; 3 uses
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !77
  %i.te = add i32 %i.td, -1                       ; 2 uses
  store i32 %i.te, ptr %i.tc, align 8, !tbaa !77
  %i.tf = icmp eq i32 %i.te, 0
  br i1 %i.tf, label %bb.er, label %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode13FinderPatternEEEEvPT_.exit.i.i.i

bb.er:                                            ; preds = %bb.eq
  store i32 -559026175, ptr %i.tc, align 8, !tbaa !77
  %i.tg = load ptr, ptr %i.tb, align 8, !tbaa !63
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = load ptr, ptr %i.th, align 8
  call void %i.ti(ptr noundef nonnull align 8 dereferenceable(12) %i.tb) #23, !inline_history !6
  br label %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode13FinderPatternEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5zxing3RefINS0_6qrcode13FinderPatternEEEEvPT_.exit.i.i.i: ; preds = %bb.er, %bb.eq, %.lr.ph.i.i.i
  %i.tj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i244 = icmp eq ptr %i.tj, %i.ta
  br i1 %.not.i.i.i244, label %_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode13FinderPatternEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode13FinderPatternEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode13FinderPatternEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !85
  br label %_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode13FinderPatternEEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode13FinderPatternEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode13FinderPatternEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.ep
  %i.tk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode13FinderPatternEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.sz, %bb.ep ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.tk, null
  br i1 %.not.i.i1.i, label %bb.hq, label %bb.es

bb.es:                                            ; preds = %_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode13FinderPatternEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.tl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !92
  %i.tn = ptrtoint ptr %i.tm to i64
  %i.to = ptrtoint ptr %i.tk to i64
  %i.tp = sub i64 %i.tn, %i.to
  call void @_ZdlPvm(ptr noundef nonnull %i.tk, i64 noundef %i.tp) #22
  br label %bb.hq

bb.et:                                            ; preds = %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit236, %_ZN5zxing12ErrorHandlerD2Ev.exit243, %bb.dd, %bb.cw
  %.pn148 = phi { ptr, i32 } [ %i.oa, %bb.dd ], [ %i.ni, %bb.cw ], [ %i.qy, %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit236 ], [ %.pn141, %_ZN5zxing12ErrorHandlerD2Ev.exit243 ]
  call void @_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.loopexit.split-lp

bb.eu:                                            ; preds = %bb.ez
  %i.tq = uitofp i64 %i.i to float                ; 2 uses
  %i.tr = fdiv float %i.um, %i.tq                 ; 8 uses
  %i.ts = fdiv float %i.un, %i.tq
  %i.tt = fneg float %i.tr
  %i.tu = tail call float @llvm.fmuladd.f32(float %i.tt, float %i.tr, float %i.ts)
  %i.tv = tail call noundef float @sqrtf(float noundef %i.tu) #23 ; 2 uses
  %i.tw = load ptr, ptr %i.b, align 8, !tbaa !55  ; 6 uses
  %i.tx = load ptr, ptr %i.c, align 8, !tbaa !55  ; 6 uses
  %.not.i.i245 = icmp eq ptr %i.tw, %i.tx
  br i1 %.not.i.i245, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_129FurthestFromAverageComparatorEEvT_SE_T0_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ty = ptrtoint ptr %i.tx to i64
  %i.tz = ptrtoint ptr %i.tw to i64
  %i.ua = sub i64 %i.ty, %i.tz                    ; 2 uses
  %i.ub = ashr exact i64 %i.ua, 3
  %i.uc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ub, i1 true)
  %i.ud = shl nuw nsw i64 %i.uc, 1
  %i.ue = xor i64 %i.ud, 126
  invoke fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS4_12_GLOBAL__N_129FurthestFromAverageComparatorEEEEvT_SH_T0_T1_(ptr %i.tw, ptr %i.tx, i64 noundef %i.ue, float %i.tr)
          to label %.noexc248 unwind label %.loopexit.split-lp436

.noexc248:                                        ; preds = %bb.ev
  %i.uf = icmp sgt i64 %i.ua, 128
  br i1 %i.uf, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %.noexc248
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tw, i64 128 ; 3 uses
  invoke fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS4_12_GLOBAL__N_129FurthestFromAverageComparatorEEEEvT_SH_T0_(ptr %i.tw, ptr nonnull %i.ug, float %i.tr)
          to label %.noexc249 unwind label %.loopexit.split-lp436

.noexc249:                                        ; preds = %bb.ew
  %.not7.i.i.i.i = icmp eq ptr %i.ug, %i.tx
  br i1 %.not7.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_129FurthestFromAverageComparatorEEvT_SE_T0_.exit, label %.lr.ph.i.i.i.i246

.lr.ph.i.i.i.i246:                                ; preds = %.noexc249, %.noexc250
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.uh, %.noexc250 ], [ %i.ug, %.noexc249 ] ; 2 uses
  invoke fastcc void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS4_12_GLOBAL__N_129FurthestFromAverageComparatorEEEEvT_T0_(ptr nonnull %.sroa.0.08.i.i.i.i, float %i.tr)
          to label %.noexc250 unwind label %.loopexit435

.noexc250:                                        ; preds = %.lr.ph.i.i.i.i246
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i247 = icmp eq ptr %i.uh, %i.tx
  br i1 %.not.i.i.i.i247, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_129FurthestFromAverageComparatorEEvT_SE_T0_.exit, label %.lr.ph.i.i.i.i246, !llvm.loop !183

bb.ex:                                            ; preds = %.noexc248
  invoke fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS4_12_GLOBAL__N_129FurthestFromAverageComparatorEEEEvT_SH_T0_(ptr %i.tw, ptr %i.tx, float %i.tr)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_129FurthestFromAverageComparatorEEvT_SE_T0_.exit unwind label %.loopexit.split-lp436

bb.ey:                                            ; preds = %.preheader, %bb.ez
  %.0123474 = phi float [ %i.um, %bb.ez ], [ 0.000000e+00, %.preheader ]
  %.0124473 = phi float [ %i.un, %bb.ez ], [ 0.000000e+00, %.preheader ]
  %.0125472 = phi i64 [ %i.uo, %bb.ez ], [ 0, %.preheader ] ; 2 uses
  %i.ui = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %.0125472
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !58
  %i.ul = invoke noundef float @_ZNK5zxing6qrcode13FinderPattern22getEstimatedModuleSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.uk)
          to label %bb.ez unwind label %bb.fa     ; 3 uses

bb.ez:                                            ; preds = %bb.ey
  %i.um = fadd float %.0123474, %i.ul             ; 2 uses
  %i.un = tail call float @llvm.fmuladd.f32(float %i.ul, float %i.ul, float %.0124473) ; 2 uses
  %i.uo = add nuw i64 %.0125472, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.uo, %i.i
  br i1 %exitcond.not, label %bb.eu, label %bb.ey, !llvm.loop !184

bb.fa:                                            ; preds = %bb.ey
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_129FurthestFromAverageComparatorEEvT_SE_T0_.exit: ; preds = %.noexc250, %.noexc249, %bb.eu, %bb.ex
  %i.uq = fmul float %i.tr, 5.000000e-01          ; 2 uses
  %i.ur = fcmp olt float %i.uq, %i.tv
  %.sroa.speculated = select i1 %i.ur, float %i.tv, float %i.uq
  %i.us = load ptr, ptr %i.c, align 8, !tbaa !84  ; 3 uses
  %i.ut = load ptr, ptr %i.b, align 8, !tbaa !85  ; 3 uses
  %.not500 = icmp ne ptr %i.us, %i.ut
  %i.uu = ptrtoint ptr %i.us to i64
  %i.uv = ptrtoint ptr %i.ut to i64
  %i.uw = sub i64 %i.uu, %i.uv
  %i.ux = icmp ugt i64 %i.uw, 24
  %or.cond = and i1 %.not500, %i.ux
  br i1 %or.cond, label %.lr.ph721, label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit

.lr.ph:                                           ; preds = %bb.fl
  %i.uy = icmp ugt i64 %i.wx, 3
  br i1 %i.uy, label %.lr.ph721, label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit, !llvm.loop !185

.critedge:                                        ; preds = %bb.fl
  %i.uz = icmp sgt i64 %i.ww, 128
  %i.va = icmp ugt i64 %i.wx, 15
  br i1 %i.va, label %bb.fm, label %bb.fs

.loopexit435:                                     ; preds = %.lr.ph.i.i.i.i246
  %lpad.loopexit437 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp436:                            ; preds = %bb.ev, %bb.ew, %bb.ex
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph721:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_129FurthestFromAverageComparatorEEvT_SE_T0_.exit, %.lr.ph
  %.0126475720 = phi i64 [ %i.wt, %.lr.ph ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_129FurthestFromAverageComparatorEEvT_SE_T0_.exit ] ; 4 uses
  %i.vb = phi ptr [ %i.wr, %.lr.ph ], [ %i.ut, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_129FurthestFromAverageComparatorEEvT_SE_T0_.exit ]
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %.0126475720
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !58
  %i.ve = invoke noundef float @_ZNK5zxing6qrcode13FinderPattern22getEstimatedModuleSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.vd)
          to label %bb.fb unwind label %bb.fk

bb.fb:                                            ; preds = %.lr.ph721
  %i.vf = fsub float %i.ve, %i.tr
  %i.vg = tail call noundef float @llvm.fabs.f32(float %i.vf)
  %i.vh = fcmp ogt float %i.vg, %.sroa.speculated
  %.pre528 = load ptr, ptr %i.c, align 8, !tbaa !55 ; 5 uses
  %.pre530 = load ptr, ptr %i.b, align 8, !tbaa !55 ; 2 uses
  br i1 %i.vh, label %bb.fc, label %bb.fl

bb.fc:                                            ; preds = %bb.fb
  %i.vi = getelementptr inbounds [8 x i8], ptr %.pre530, i64 %.0126475720 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8 ; 3 uses
  %.not.i.i252 = icmp eq ptr %i.vj, %.pre528
  br i1 %.not.i.i252, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.vk = ptrtoint ptr %.pre528 to i64
  %i.vl = ptrtoint ptr %i.vj to i64
  %i.vm = sub i64 %i.vk, %i.vl
  %i.vn = ashr exact i64 %i.vm, 3                 ; 2 uses
  %i.vo = icmp sgt i64 %i.vn, 0
  br i1 %i.vo, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.fd, %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.wd, %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit.i.i.i.i.i.i.i ], [ %i.vn, %bb.fd ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.wc, %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit.i.i.i.i.i.i.i ], [ %i.vi, %bb.fd ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.wb, %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit.i.i.i.i.i.i.i ], [ %i.vj, %bb.fd ] ; 2 uses
  %i.vp = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.vp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8 ; 2 uses
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !77
  %i.vs = add i32 %i.vr, 1
  store i32 %i.vs, ptr %i.vq, align 8, !tbaa !77
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.lr.ph.i.i.i.i.i.i.i
  %i.vt = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !58 ; 4 uses
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.vt, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit.i.i.i.i.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 8 ; 3 uses
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !77
  %i.vw = add i32 %i.vv, -1                       ; 2 uses
  store i32 %i.vw, ptr %i.vu, align 8, !tbaa !77
  %i.vx = icmp eq i32 %i.vw, 0
  br i1 %i.vx, label %bb.fh, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit.i.i.i.i.i.i.i

bb.fh:                                            ; preds = %bb.fg
  store i32 -559026175, ptr %i.vu, align 8, !tbaa !77
  %i.vy = load ptr, ptr %i.vt, align 8, !tbaa !63
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wa = load ptr, ptr %i.vz, align 8
  tail call void %i.wa(ptr noundef nonnull align 8 dereferenceable(12) %i.vt) #23, !inline_history !186
  br label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit.i.i.i.i.i.i.i

_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit.i.i.i.i.i.i.i: ; preds = %bb.fh, %bb.fg, %bb.ff
  store ptr %i.vp, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !58
  %i.wb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.wc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.wd = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.we = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.we, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i, !llvm.loop !13

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i: ; preds = %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !84
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i, %bb.fd, %bb.fc
  %i.wf = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i ], [ %.pre528, %bb.fd ], [ %.pre528, %bb.fc ]
  %i.wg = getelementptr inbounds i8, ptr %i.wf, i64 -8 ; 2 uses
  store ptr %i.wg, ptr %i.c, align 8, !tbaa !84
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !58 ; 4 uses
  %.not.i.i.i253 = icmp eq ptr %i.wh, null
  br i1 %.not.i.i.i253, label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit, label %bb.fi

bb.fi:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8 ; 3 uses
  %i.wj = load i32, ptr %i.wi, align 8, !tbaa !77
  %i.wk = add i32 %i.wj, -1                       ; 2 uses
  store i32 %i.wk, ptr %i.wi, align 8, !tbaa !77
  %i.wl = icmp eq i32 %i.wk, 0
  br i1 %i.wl, label %bb.fj, label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit

bb.fj:                                            ; preds = %bb.fi
  store i32 -559026175, ptr %i.wi, align 8, !tbaa !77
  %i.wm = load ptr, ptr %i.wh, align 8, !tbaa !63
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8
  tail call void %i.wo(ptr noundef nonnull align 8 dereferenceable(12) %i.wh) #23, !inline_history !187
  br label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit

_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit: ; preds = %bb.fj, %bb.fi, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i
  %i.wp = add i64 %.0126475720, -1
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !84
  %.pre529 = load ptr, ptr %i.b, align 8, !tbaa !85
  br label %bb.fl

bb.fk:                                            ; preds = %.lr.ph721
  %i.wq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.fl:                                            ; preds = %bb.fb, %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit
  %i.wr = phi ptr [ %.pre529, %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit ], [ %.pre530, %bb.fb ] ; 8 uses
  %i.ws = phi ptr [ %.pre, %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit ], [ %.pre528, %bb.fb ] ; 9 uses
  %.1127 = phi i64 [ %i.wp, %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit ], [ %.0126475720, %bb.fb ]
  %i.wt = add i64 %.1127, 1                       ; 2 uses
  %i.wu = ptrtoint ptr %i.ws to i64
  %i.wv = ptrtoint ptr %i.wr to i64
  %i.ww = sub i64 %i.wu, %i.wv                    ; 2 uses
  %i.wx = ashr exact i64 %i.ww, 3                 ; 5 uses
  %i.wy = icmp ult i64 %i.wt, %i.wx
  br i1 %i.wy, label %.lr.ph, label %.critedge, !llvm.loop !185

bb.fm:                                            ; preds = %.critedge
  %.not.i.i254 = icmp eq ptr %i.wr, %i.ws
  br i1 %.not.i.i254, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_115CountComparatorEEvT_SE_T0_.exit263, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.wz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.wx, i1 true)
  %i.xa = shl nuw nsw i64 %i.wz, 1
  %i.xb = xor i64 %i.xa, 126
  invoke fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS4_12_GLOBAL__N_115CountComparatorEEEEvT_SH_T0_T1_(ptr %i.wr, ptr %i.ws, i64 noundef %i.xb)
          to label %.noexc259 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc259:                                        ; preds = %bb.fn
  br i1 %i.uz, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %.noexc259
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wr, i64 128 ; 3 uses
  invoke fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS4_12_GLOBAL__N_115CountComparatorEEEEvT_SH_T0_(ptr %i.wr, ptr nonnull %i.xc)
          to label %.noexc260 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc260:                                        ; preds = %bb.fo
  %.not6.i.i.i.i255 = icmp eq ptr %i.xc, %i.ws
  br i1 %.not6.i.i.i.i255, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_115CountComparatorEEvT_SE_T0_.exit263, label %.lr.ph.i.i.i.i256

.lr.ph.i.i.i.i256:                                ; preds = %.noexc260, %.noexc261
  %.sroa.0.07.i.i.i.i257 = phi ptr [ %i.xd, %.noexc261 ], [ %i.xc, %.noexc260 ] ; 2 uses
  invoke fastcc void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS4_12_GLOBAL__N_115CountComparatorEEEEvT_T0_(ptr nonnull %.sroa.0.07.i.i.i.i257)
          to label %.noexc261 unwind label %.loopexit.split-lp.loopexit

.noexc261:                                        ; preds = %.lr.ph.i.i.i.i256
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i257, i64 8 ; 2 uses
  %.not.i.i.i.i258 = icmp eq ptr %i.xd, %i.ws
  br i1 %.not.i.i.i.i258, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_115CountComparatorEEvT_SE_T0_.exit263, label %.lr.ph.i.i.i.i256, !llvm.loop !12

bb.fp:                                            ; preds = %.noexc259
  invoke fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS4_12_GLOBAL__N_115CountComparatorEEEEvT_SH_T0_(ptr %i.wr, ptr %i.ws)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_115CountComparatorEEvT_SE_T0_.exit263 unwind label %.loopexit.split-lp.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_115CountComparatorEEvT_SE_T0_.exit263: ; preds = %.noexc261, %.noexc260, %bb.fm, %bb.fp
  %i.xe = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 120 ; 4 uses
  %i.xg = load ptr, ptr %i.c, align 8, !tbaa !55  ; 3 uses
  %.not.i.i264 = icmp eq ptr %i.xf, %i.xg
  br i1 %.not.i.i264, label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_115CountComparatorEEvT_SE_T0_.exit263, %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode13FinderPatternEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.xp, %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode13FinderPatternEEEEvPT_.exit.i.i.i.i.i ], [ %i.xf, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_115CountComparatorEEvT_SE_T0_.exit263 ] ; 2 uses
  %i.xh = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !58 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.xh, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode13FinderPatternEEEEvPT_.exit.i.i.i.i.i, label %bb.fq

bb.fq:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 8 ; 3 uses
  %i.xj = load i32, ptr %i.xi, align 8, !tbaa !77
  %i.xk = add i32 %i.xj, -1                       ; 2 uses
  store i32 %i.xk, ptr %i.xi, align 8, !tbaa !77
end_hunk_0
