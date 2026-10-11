Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/feature_histogram?download=true
inline.NumInlined: 27965
inline.NumDeleted: 4134
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 130
begin_hunk_0_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_SJ_T0_SK_T1_:bb.a
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit ], [ %i.bz, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit ] ; 2 uses
  %.050 = phi i64 [ %i.bx, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit ], [ %i.by, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.ak, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit ], [ %i.dm, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit ] ; 2 uses
  %i.dn = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %.sroa.070.0, ptr %.tr8190, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_SJ_T0_SK_T1_(ptr %.tr89, ptr %.sroa.070.0, ptr %i.dn, i64 noundef %.0, i64 noundef %.050, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.116") align 8 %5)
  %i.do = sub nsw i64 %.tr8392, %.0               ; 2 uses
  %i.dp = sub nsw i64 %.tr8493, %.050             ; 2 uses
  %i.dq = icmp eq i64 %i.do, 0
  %i.dr = icmp eq i64 %i.dp, 0
  %or.cond = or i1 %i.dq, %i.dr
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_SJ_T0_SK_T1_SK_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.116") align 8 %7) local_unnamed_addr #0 comdat {
bb.a:
  %.not99 = icmp sgt i64 %3, %6
  %.not63100 = icmp sgt i64 %4, %6
  %or.cond101 = and i1 %.not99, %.not63100
  br i1 %or.cond101, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ch, %tailrecurse ]
  %.tr92.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr94.lcssa = phi i64 [ %3, %bb.a ], [ %i.cg, %tailrecurse ]
  %.tr95.lcssa = phi i64 [ %4, %bb.a ], [ %i.ci, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_SJ_T0_SK_T1_T2_(ptr %.tr.lcssa, ptr %.tr92.lcssa, ptr %2, i64 noundef %.tr94.lcssa, i64 noundef %.tr95.lcssa, ptr noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.116") align 8 %7)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr95105 = phi i64 [ %4, %.lr.ph ], [ %i.ci, %tailrecurse ] ; 3 uses
  %.tr94104 = phi i64 [ %3, %.lr.ph ], [ %i.cg, %tailrecurse ] ; 3 uses
  %.tr92103 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr102 = phi ptr [ %0, %.lr.ph ], [ %i.ch, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr94104, %.tr95105
  %i.c = ptrtoint ptr %.tr92103 to i64            ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit67

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr94104, 2                    ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %.tr102, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.221.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !587
  %.sroa.020.0.copyload = load ptr, ptr %7, align 8, !tbaa !584
  %i.i = load i32, ptr %i.e, align 4, !tbaa !617
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !608  ; 2 uses
  %i.l = load ptr, ptr %.sroa.221.0.copyload, align 8, !tbaa !615
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !535
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !542
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 512
  %i.q = load double, ptr %i.p, align 8, !tbaa !616 ; 2 uses
  %i.r = shl i32 %i.i, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.s ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !609
  %i.v = getelementptr i8, ptr %i.t, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !609
  %i.x = fadd double %i.q, %i.w
  %i.y = fdiv double %i.u, %i.x
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.tr92103, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.z = lshr i64 %.017.i, 1                      ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.012.016.i, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !617
  %i.ac = shl i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ad ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !609
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !609
  %i.ai = fadd double %i.q, %i.ah
  %i.aj = fdiv double %i.af, %i.ai
  %i.ak = fcmp olt double %i.aj, %i.y             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.am = xor i64 %i.z, -1
  %i.an = add nsw i64 %.017.i, %i.am
  %.sroa.012.1.i = select i1 %i.ak, ptr %i.al, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.ak, i64 %i.an, i64 %i.z    ; 2 uses
  %i.ao = icmp sgt i64 %.1.i, 0
  br i1 %i.ao, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit.loopexit, !llvm.loop !51

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit.loopexit ], [ %.tr92103, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ap = sub i64 %.pre-phi, %i.c
  %i.aq = ashr exact i64 %i.ap, 2
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit67: ; preds = %bb.b
  %i.ar = sdiv i64 %.tr95105, 2                   ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %.tr92103, i64 %i.ar ; 2 uses
  %i.at = ptrtoint ptr %.tr102 to i64             ; 3 uses
  %i.au = sub i64 %i.c, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i71, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i71: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit67
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !587
  %.sroa.012.0.copyload = load ptr, ptr %7, align 8, !tbaa !584
  %i.ax = load i32, ptr %i.as, align 4, !tbaa !617
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !608 ; 2 uses
  %i.ba = shl i32 %i.ax, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bb ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !609
  %i.be = getelementptr i8, ptr %i.bc, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !609
  %i.bg = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !615
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !535
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !542
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 512
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !616 ; 2 uses
  %i.bm = fadd double %i.bf, %i.bl
  %i.bn = fdiv double %i.bd, %i.bm
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i72

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i72: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i72, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i71
  %.017.i73 = phi i64 [ %i.av, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i71 ], [ %.1.i78, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i72 ] ; 2 uses
  %.sroa.012.016.i74 = phi ptr [ %.tr102, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i71 ], [ %.sroa.012.1.i77, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i72 ] ; 2 uses
  %i.bo = lshr i64 %.017.i73, 1                   ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.012.016.i74, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !617
  %i.br = shl i32 %i.bq, 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bs ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !609
  %i.bv = getelementptr i8, ptr %i.bt, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !609
  %i.bx = fadd double %i.bl, %i.bw
  %i.by = fdiv double %i.bu, %i.bx
  %i.bz = fcmp olt double %i.bn, %i.by            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.cb = xor i64 %i.bo, -1
  %i.cc = add nsw i64 %.017.i73, %i.cb
  %.sroa.012.1.i77 = select i1 %i.bz, ptr %.sroa.012.016.i74, ptr %i.ca ; 3 uses
  %.1.i78 = select i1 %i.bz, i64 %i.bo, i64 %i.cc ; 2 uses
  %i.cd = icmp sgt i64 %.1.i78, 0
  br i1 %i.cd, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i72, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit.loopexit, !llvm.loop !52

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i72
  %.pre112 = ptrtoint ptr %.sroa.012.1.i77 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit67
  %.pre-phi113 = phi i64 [ %.pre112, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit.loopexit ], [ %i.at, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit67 ]
  %.sroa.012.0.lcssa.i70 = phi ptr [ %.sroa.012.1.i77, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit.loopexit ], [ %.tr102, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit67 ]
  %i.ce = sub i64 %.pre-phi113, %i.at
  %i.cf = ashr exact i64 %i.ce, 2
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit
  %.sroa.081.0 = phi ptr [ %i.e, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit ], [ %.sroa.012.0.lcssa.i70, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit ], [ %i.as, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit ] ; 3 uses
  %.059 = phi i64 [ %i.aq, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit ], [ %i.ar, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit ], [ %i.cf, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEET_SJ_SJ_RKT0_T1_.exit ] ; 2 uses
  %i.cg = sub nsw i64 %.tr94104, %.0              ; 4 uses
  %i.ch = tail call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lET_S7_S7_S7_T1_S8_T0_S8_(ptr %.sroa.081.0, ptr %.tr92103, ptr %.sroa.0.0, i64 noundef %i.cg, i64 noundef %.059, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb1ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_SJ_T0_SK_T1_SK_T2_(ptr %.tr102, ptr %.sroa.081.0, ptr %i.ch, i64 noundef %.0, i64 noundef %.059, ptr noundef %5, i64 noundef %6, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.116") align 8 %7)
  %i.ci = sub nsw i64 %.tr95105, %.059            ; 3 uses
  %.not = icmp sgt i64 %i.cg, %6
  %.not63 = icmp sgt i64 %i.ci, %6
  %or.cond = and i1 %.not, %.not63
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvddiPKN8LightGBM17FeatureConstraintEdPNS0_9SplitInfoEESt5_BindIFMNS0_16FeatureHistogramEFvddiS3_dS5_EPS8_St12_PlaceholderILi1EESC_ILi2EESC_ILi3EESC_ILi4EESC_ILi5EESC_ILi6EEEEE9_M_invokeERKSt9_Any_dataOdSP_OiOS3_SP_OS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !594    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !584
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !585 ; 3 uses
  %.elt8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack9.i.i.i.i.i.i = load i64, ptr %.elt8.i.i.i.i.i.i, align 8, !tbaa !585
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack9.i.i.i.i.i.i ; 2 uses
  %7 = and i64 %.unpack.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %7, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !620
  %i.f = getelementptr i8, ptr %i.e, i64 %.unpack.i.i.i.i.i.i
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load ptr, ptr %i.g, align 8, !nosanitize !578
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN8LightGBM16FeatureHistogramEFvddiPKNS1_17FeatureConstraintEdPNS1_9SplitInfoEEPS2_St12_PlaceholderILi1EESB_ILi2EESB_ILi3EESB_ILi4EESB_ILi5EESB_ILi6EEEEJddiS5_dS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %.unpack.i.i.i.i.i.i to ptr
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN8LightGBM16FeatureHistogramEFvddiPKNS1_17FeatureConstraintEdPNS1_9SplitInfoEEPS2_St12_PlaceholderILi1EESB_ILi2EESB_ILi3EESB_ILi4EESB_ILi5EESB_ILi6EEEEJddiS5_dS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit

_ZSt10__invoke_rIvRSt5_BindIFMN8LightGBM16FeatureHistogramEFvddiPKNS1_17FeatureConstraintEdPNS1_9SplitInfoEEPS2_St12_PlaceholderILi1EESB_ILi2EESB_ILi3EESB_ILi4EESB_ILi5EESB_ILi6EEEEJddiS5_dS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.k = load double, ptr %1, align 8, !tbaa !609
  %i.l = load double, ptr %2, align 8, !tbaa !609
  %i.m = load i32, ptr %3, align 4, !tbaa !617
  %i.n = load ptr, ptr %4, align 8, !tbaa !645
  %i.o = load double, ptr %5, align 8, !tbaa !609
  %i.p = load ptr, ptr %6, align 8, !tbaa !647
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.d, double noundef %i.k, double noundef %i.l, i32 noundef %i.m, ptr noundef %i.n, double noundef %i.o, ptr noundef %i.p), !inline_history !1171
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvddiPKN8LightGBM17FeatureConstraintEdPNS0_9SplitInfoEESt5_BindIFMNS0_16FeatureHistogramEFvddiS3_dS5_EPS8_St12_PlaceholderILi1EESC_ILi2EESC_ILi3EESC_ILi4EESC_ILi5EESC_ILi6EEEEE10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN8LightGBM16FeatureHistogramEFvddiPKNS2_17FeatureConstraintEdPNS2_9SplitInfoEEPS3_St12_PlaceholderILi1EESC_ILi2EESC_ILi3EESC_ILi4EESC_ILi5EESC_ILi6EEEEE10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFMN8LightGBM16FeatureHistogramEFvddiPKNS0_17FeatureConstraintEdPNS0_9SplitInfoEEPS1_St12_PlaceholderILi1EESA_ILi2EESA_ILi3EESA_ILi4EESA_ILi5EESA_ILi6EEEE, ptr %0, align 8, !tbaa !642
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN8LightGBM16FeatureHistogramEFvddiPKNS2_17FeatureConstraintEdPNS2_9SplitInfoEEPS3_St12_PlaceholderILi1EESC_ILi2EESC_ILi3EESC_ILi4EESC_ILi5EESC_ILi6EEEEE10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !594
  store ptr %i.a, ptr %0, align 8, !tbaa !594
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN8LightGBM16FeatureHistogramEFvddiPKNS2_17FeatureConstraintEdPNS2_9SplitInfoEEPS3_St12_PlaceholderILi1EESC_ILi2EESC_ILi3EESC_ILi4EESC_ILi5EESC_ILi6EEEEE10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !594
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !594
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN8LightGBM16FeatureHistogramEFvddiPKNS2_17FeatureConstraintEdPNS2_9SplitInfoEEPS3_St12_PlaceholderILi1EESC_ILi2EESC_ILi3EESC_ILi4EESC_ILi5EESC_ILi6EEEEE10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !594    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN8LightGBM16FeatureHistogramEFvddiPKNS2_17FeatureConstraintEdPNS2_9SplitInfoEEPS3_St12_PlaceholderILi1EESC_ILi2EESC_ILi3EESC_ILi4EESC_ILi5EESC_ILi6EEEEE10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #23
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN8LightGBM16FeatureHistogramEFvddiPKNS2_17FeatureConstraintEdPNS2_9SplitInfoEEPS3_St12_PlaceholderILi1EESC_ILi2EESC_ILi3EESC_ILi4EESC_ILi5EESC_ILi6EEEEE10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerISt5_BindIFMN8LightGBM16FeatureHistogramEFvddiPKNS2_17FeatureConstraintEdPNS2_9SplitInfoEEPS3_St12_PlaceholderILi1EESC_ILi2EESC_ILi3EESC_ILi4EESC_ILi5EESC_ILi6EEEEE10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !651

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_SJ_T0_T1_(ptr %0, ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2, ptr %3)
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.q) #19
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.r = icmp eq ptr %.sroa.12.0, null
  br i1 %i.r, label %bb.f, label %bb.g, !prof !652

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_(ptr %0, ptr %1, ptr %2, ptr %3)
          to label %bb.h unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2, ptr %3)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %i.s = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.s) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_SJ_T0_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.141", align 8 ; 3 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_(ptr %0, ptr %1, i64 noundef 7, ptr %4, ptr %5)
  %i.f = icmp sgt i64 %i.d, 7
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.022.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.022.i, ptr %4, ptr %5)
  %i.g = shl nuw nsw i64 %.022.i, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_T2_(ptr noundef %3, ptr noundef %i.e, ptr %0, i64 noundef %i.g, ptr %4, ptr %5)
  %i.h = shl nsw i64 %.022.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_.exit, !llvm.loop !1172

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_(ptr %1, ptr %2, i64 noundef 7, ptr %4, ptr %5)
  %i.n = icmp sgt i64 %i.l, 7
  br i1 %i.n, label %.lr.ph.i13, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_.exit15

.lr.ph.i13:                                       ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_.exit, %.lr.ph.i13
  %.022.i14 = phi i64 [ %i.p, %.lr.ph.i13 ], [ 7, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.022.i14, ptr %4, ptr %5)
  %i.o = shl nuw nsw i64 %.022.i14, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_T2_(ptr noundef %3, ptr noundef %i.m, ptr %1, i64 noundef %i.o, ptr %4, ptr %5)
  %i.p = shl nsw i64 %.022.i14, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i13, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_.exit15, !llvm.loop !1172

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_.exit15: ; preds = %.lr.ph.i13, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_T1_.exit
  store ptr %4, ptr %6, align 8, !tbaa !584
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !587
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_SJ_T0_SK_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %i.d, i64 noundef %i.l, ptr noundef %3, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.141") align 8 %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8LightGBM16FeatureHistogram33FindBestThresholdCategoricalInnerILb1ELb0ELb1ELb0ELb1EEEvddiPKNS9_17FeatureConstraintEdPNS9_9SplitInfoEEUliiE_EEEvT_SJ_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.141", align 8 ; 3 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %common.ret27, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.019.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.0.019.i, %1
  br i1 %.not20.i, label %common.ret27, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
end_hunk_0
