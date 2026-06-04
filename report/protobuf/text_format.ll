inline.NumInlined: 5150
inline.NumDeleted: 1899
begin_hunk_0_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_25MapEntryMessageComparatorEEEEvT_SG_SG_T0_SH_T1_:bb.a
  store ptr %i.h, ptr %1, align 8, !tbaa !506
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.j = icmp sgt i64 %3, %4
  br i1 %i.j, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.k = sdiv i64 %3, 2                           ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %5, ptr %7, align 8
  %i.m = ptrtoint ptr %2 to i64
  %i.n = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.r = lshr i64 %.016.i, 1                      ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !506
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !506
  %i.v = call noundef zeroext i1 @_ZN6google8protobuf25MapEntryMessageComparatorclEPKNS0_7MessageES4_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.t, ptr noundef %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = xor i64 %i.r, -1
  %i.y = add nsw i64 %.016.i, %i.x
  %.sroa.011.1.i = select i1 %i.v, ptr %i.w, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.v, i64 %i.y, i64 %i.r      ; 2 uses
  %i.z = icmp sgt i64 %.1.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit, !llvm.loop !944

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.aa = sub i64 %.pre-phi, %i.n
  %i.ab = ashr exact i64 %i.aa, 3
  br label %bb.f

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55: ; preds = %bb.e
  %i.ac = sdiv i64 %4, 2                          ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %5, ptr %6, align 8
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.016.i58 = phi i64 [ %.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %i.ah, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %.sroa.011.015.i59 = phi ptr [ %.sroa.011.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %i.aj = lshr i64 %.016.i58, 1                   ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i59, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !506
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !506
  %i.an = call noundef zeroext i1 @_ZN6google8protobuf25MapEntryMessageComparatorclEPKNS0_7MessageES4_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.al, ptr noundef %i.am) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = xor i64 %i.aj, -1
  %i.aq = add nsw i64 %.016.i58, %i.ap
  %.sroa.011.1.i62 = select i1 %i.an, ptr %.sroa.011.015.i59, ptr %i.ao ; 3 uses
  %.1.i63 = select i1 %i.an, i64 %i.aj, i64 %i.aq ; 2 uses
  %i.ar = icmp sgt i64 %.1.i63, 0
  br i1 %i.ar, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit, !llvm.loop !945

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.pre77 = ptrtoint ptr %.sroa.011.1.i62 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %.pre-phi78 = phi i64 [ %.pre77, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.af, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %.sroa.011.0.lcssa.i56 = phi ptr [ %.sroa.011.1.i62, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.as = sub i64 %.pre-phi78, %i.af
  %i.at = ashr exact i64 %i.as, 3
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit
  %.sroa.066.0 = phi ptr [ %i.l, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i56, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ], [ %i.ad, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.049 = phi i64 [ %i.ab, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.k, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ], [ %i.at, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %i.au = call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %.sroa.066.0, ptr %1, ptr %.sroa.0.0) ; 2 uses
  %.sroa.05.0.copyload = load ptr, ptr %8, align 8, !tbaa !65
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_25MapEntryMessageComparatorEEEEvT_SG_SG_T0_SH_T1_(ptr %0, ptr %.sroa.066.0, ptr %i.au, i64 noundef %.0, i64 noundef %.049, ptr %.sroa.05.0.copyload)
  %i.av = sub nsw i64 %3, %.0
  %i.aw = sub nsw i64 %4, %.049
  %.sroa.0.0.copyload = load ptr, ptr %8, align 8, !tbaa !65
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_25MapEntryMessageComparatorEEEEvT_SG_SG_T0_SH_T1_(ptr %i.au, ptr %.sroa.0.0, ptr %2, i64 noundef %i.av, i64 noundef %i.aw, ptr %.sroa.0.0.copyload)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check172 = icmp ult i64 %i.m, 120
  br i1 %min.iters.check172, label %.lr.ph.i.preheader189, label %vector.memcheck165

vector.memcheck165:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep166 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep167 = getelementptr i8, ptr %1, i64 %i.s
  %bound0168 = icmp ult ptr %0, %scevgep167
  %bound1169 = icmp ult ptr %1, %scevgep166
  %found.conflict170 = and i1 %bound0168, %bound1169
  br i1 %found.conflict170, label %.lr.ph.i.preheader189, label %vector.ph173

vector.ph173:                                     ; preds = %vector.memcheck165
  %n.vec175 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec175, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next184, %vector.body176 ] ; 2 uses
  %i.w = shl i64 %index177, 3                     ; 2 uses
  %next.gep178 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep179 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep179, i64 16 ; 2 uses
  %wide.load180 = load <2 x ptr>, ptr %next.gep179, align 8, !tbaa !506, !alias.scope !946, !noalias !949
  %wide.load181 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !506, !alias.scope !946, !noalias !949
  %i.y = getelementptr i8, ptr %next.gep178, i64 16 ; 2 uses
  %wide.load182 = load <2 x ptr>, ptr %next.gep178, align 8, !tbaa !506, !alias.scope !949
  %wide.load183 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !506, !alias.scope !949
  store <2 x ptr> %wide.load182, ptr %next.gep179, align 8, !tbaa !506, !alias.scope !946, !noalias !949
  store <2 x ptr> %wide.load183, ptr %i.x, align 8, !tbaa !506, !alias.scope !946, !noalias !949
  store <2 x ptr> %wide.load180, ptr %next.gep178, align 8, !tbaa !506, !alias.scope !949
  store <2 x ptr> %wide.load181, ptr %i.y, align 8, !tbaa !506, !alias.scope !949
  %index.next184 = add nuw i64 %index177, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next184, %n.vec175
  br i1 %i.z, label %middle.block185, label %vector.body176, !llvm.loop !951

middle.block185:                                  ; preds = %vector.body176
  %cmp.n186 = icmp eq i64 %i.o, %n.vec175
  br i1 %cmp.n186, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i.preheader189

.lr.ph.i.preheader189:                            ; preds = %vector.memcheck165, %.lr.ph.i.preheader, %middle.block185
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck165 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block185 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck165 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block185 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader189, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader189 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader189 ] ; 3 uses
  %i.aa = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !506
  %i.ab = load ptr, ptr %.sroa.0.08.i, align 8, !tbaa !506
  store ptr %i.ab, ptr %.sroa.04.07.i, align 8, !tbaa !506
  store ptr %i.aa, ptr %.sroa.0.08.i, align 8, !tbaa !506
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i, !llvm.loop !952

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.041.0 = phi ptr [ %0, %bb.d ], [ %.sroa.041.0.be, %.backedge ] ; 19 uses
  %.084 = phi i64 [ %i.i, %bb.d ], [ %.084.be, %.backedge ] ; 14 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 10 uses
  %i.ag = sub nsw i64 %.0, %.084                  ; 10 uses
  %i.ah = icmp slt i64 %.084, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.084, 1
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.f
  %i.aj = load ptr, ptr %.sroa.041.0, align 8, !tbaa !506
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !506
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.084 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 6
  br i1 %min.iters.check, label %.lr.ph99.preheader190, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph99.preheader
  %i.ap = shl i64 %.0, 3
  %i.aq = sub i64 %.0, %.084
  %i.ar = shl i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %.sroa.041.0, i64 %i.ar
  %scevgep127 = getelementptr i8, ptr %.sroa.041.0, i64 %i.ap
  %bound0 = icmp ult ptr %.sroa.041.0, %scevgep127
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader190, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %.sroa.041.0, i64 %i.as ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.041.0, i64 %i.av ; 3 uses
  %next.gep128 = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !506, !alias.scope !953, !noalias !956
  %wide.load129 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !506, !alias.scope !953, !noalias !956
  %i.ax = getelementptr i8, ptr %next.gep128, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !506, !alias.scope !956
  %wide.load131 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !506, !alias.scope !956
  store <2 x ptr> %wide.load130, ptr %next.gep, align 8, !tbaa !506, !alias.scope !953, !noalias !956
  store <2 x ptr> %wide.load131, ptr %i.aw, align 8, !tbaa !506, !alias.scope !953, !noalias !956
  store <2 x ptr> %wide.load, ptr %next.gep128, align 8, !tbaa !506, !alias.scope !956
  store <2 x ptr> %wide.load129, ptr %i.ax, align 8, !tbaa !506, !alias.scope !956
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !958

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge100, label %.lr.ph99.preheader190

.lr.ph99.preheader190:                            ; preds = %vector.memcheck, %.lr.ph99.preheader, %middle.block
  %.02897.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.041.196.ph = phi ptr [ %.sroa.041.0, %vector.memcheck ], [ %.sroa.041.0, %.lr.ph99.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.sroa.038.095.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph99.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.0, %.084
  %xtraiter198 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader190, %.lr.ph99.prol
  %.02897.prol = phi i64 [ %i.be, %.lr.ph99.prol ], [ %.02897.ph, %.lr.ph99.preheader190 ]
  %.sroa.041.196.prol = phi ptr [ %i.bc, %.lr.ph99.prol ], [ %.sroa.041.196.ph, %.lr.ph99.preheader190 ] ; 3 uses
  %.sroa.038.095.prol = phi ptr [ %i.bd, %.lr.ph99.prol ], [ %.sroa.038.095.ph, %.lr.ph99.preheader190 ] ; 3 uses
  %prol.iter200 = phi i64 [ %prol.iter200.next, %.lr.ph99.prol ], [ 0, %.lr.ph99.preheader190 ]
  %i.ba = load ptr, ptr %.sroa.041.196.prol, align 8, !tbaa !506
  %i.bb = load ptr, ptr %.sroa.038.095.prol, align 8, !tbaa !506
  store ptr %i.bb, ptr %.sroa.041.196.prol, align 8, !tbaa !506
  store ptr %i.ba, ptr %.sroa.038.095.prol, align 8, !tbaa !506
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.041.196.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.038.095.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter200.next = add i64 %prol.iter200, 1   ; 2 uses
  %prol.iter200.cmp.not = icmp eq i64 %prol.iter200.next, %xtraiter198
  br i1 %prol.iter200.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !959

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader190
  %.lcssa.unr = phi ptr [ poison, %.lr.ph99.preheader190 ], [ %i.bc, %.lr.ph99.prol ]
  %.02897.unr = phi i64 [ %.02897.ph, %.lr.ph99.preheader190 ], [ %i.be, %.lr.ph99.prol ]
  %.sroa.041.196.unr = phi ptr [ %.sroa.041.196.ph, %.lr.ph99.preheader190 ], [ %i.bc, %.lr.ph99.prol ]
  %.sroa.038.095.unr = phi ptr [ %.sroa.038.095.ph, %.lr.ph99.preheader190 ], [ %i.bd, %.lr.ph99.prol ]
  %i.bf = sub i64 %.02897.ph, %.0
  %i.bg = add i64 %i.bf, %.084
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block, %bb.g
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.0, %bb.g ], [ %i.at, %middle.block ], [ %.lcssa.unr, %.lr.ph99.prol.loopexit ], [ %i.bx, %.lr.ph99 ]
  %i.bi = srem i64 %.0, %.084                     ; 2 uses
  %.not31 = icmp eq i64 %i.bi, 0
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.bz, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.041.196 = phi ptr [ %i.bx, %.lr.ph99 ], [ %.sroa.041.196.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.038.095 = phi ptr [ %i.by, %.lr.ph99 ], [ %.sroa.038.095.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bj = load ptr, ptr %.sroa.041.196, align 8, !tbaa !506
  %i.bk = load ptr, ptr %.sroa.038.095, align 8, !tbaa !506
  store ptr %i.bk, ptr %.sroa.041.196, align 8, !tbaa !506
  store ptr %i.bj, ptr %.sroa.038.095, align 8, !tbaa !506
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !506
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !506
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !506
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !506
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !506
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !506
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !506
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !506
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !506
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !506
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !506
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !506
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 32
  %i.bz = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !960

bb.h:                                             ; preds = %._crit_edge100
  %i.ca = sub nsw i64 %.084, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr inbounds [8 x i8], ptr %.sroa.041.0, i64 %.0 ; 5 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !506
  %.idx = shl nsw i64 %.0, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !135

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.sroa.041.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %.sroa.041.0, align 8, !tbaa !506
  store ptr %i.cl, ptr %i.cd, align 8, !tbaa !506
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.ce, ptr %.sroa.041.0, align 8, !tbaa !506
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cm ; 3 uses
  %i.co = icmp sgt i64 %.084, 0
  br i1 %i.co, label %vector.memcheck134, label %._crit_edge

vector.memcheck134:                               ; preds = %bb.n
  %xtraiter = and i64 %.084, 3                    ; 3 uses
  %bound1137 = icmp ult i64 %.084, 4
  br i1 %bound1137, label %.lr.ph.preheader191, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck134
  %n.vec143 = and i64 %.084, 9223372036854775804
  br label %.lr.ph

middle.block160:                                  ; preds = %.lr.ph
  %cmp.n161 = icmp eq i64 %xtraiter, 0
  br i1 %cmp.n161, label %._crit_edge, label %.lr.ph.preheader191

.lr.ph.preheader191:                              ; preds = %middle.block160, %vector.memcheck134
  %.sroa.0.093.epil.init = phi ptr [ %i.cc, %vector.memcheck134 ], [ %i.dh, %middle.block160 ]
  %.sroa.041.292.epil.init = phi ptr [ %i.cn, %vector.memcheck134 ], [ %i.dg, %middle.block160 ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.preheader191
  %.sroa.0.093.prol = phi ptr [ %i.cq, %.lr.ph.prol ], [ %.sroa.0.093.epil.init, %.lr.ph.preheader191 ]
  %.sroa.041.292.prol = phi ptr [ %i.cp, %.lr.ph.prol ], [ %.sroa.041.292.epil.init, %.lr.ph.preheader191 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader191 ]
  %i.cp = getelementptr inbounds i8, ptr %.sroa.041.292.prol, i64 -8 ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.093.prol, i64 -8 ; 3 uses
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !506
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !506
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !506
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !506
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %._crit_edge, label %.lr.ph.prol, !llvm.loop !961

._crit_edge:                                      ; preds = %middle.block160, %.lr.ph.prol, %bb.n
  %.sroa.041.2.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.sroa.041.0, %.lr.ph.prol ], [ %.sroa.041.0, %middle.block160 ]
  %i.ct = srem i64 %.0, %i.ag                     ; 2 uses
  %.not = icmp eq i64 %i.ct, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.041.0.be = phi ptr [ %.sroa.041.1.lcssa, %bb.h ], [ %.sroa.041.2.lcssa, %._crit_edge ]
  %.084.be = phi i64 [ %i.ca, %bb.h ], [ %i.ct, %._crit_edge ]
  %.0.be = phi i64 [ %.084, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !962

.lr.ph:                                           ; preds = %.lr.ph, %vector.ph141
  %.sroa.0.093 = phi ptr [ %i.cc, %vector.ph141 ], [ %i.dh, %.lr.ph ] ; 4 uses
  %.sroa.0.093.a = phi ptr [ %i.cn, %vector.ph141 ], [ %i.dg, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %vector.ph141 ], [ %i.dk, %.lr.ph ]
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.093.a, i64 -8 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -8 ; 2 uses
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !506
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !506
  store ptr %i.cx, ptr %i.cu, align 8, !tbaa !506
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !506
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.093.a, i64 -16 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -16 ; 2 uses
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !506
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !506
  store ptr %i.db, ptr %i.cy, align 8, !tbaa !506
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !506
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.093.a, i64 -24 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -24 ; 2 uses
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !506
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !506
  store ptr %i.df, ptr %i.dc, align 8, !tbaa !506
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !506
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.093.a, i64 -32 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -32 ; 4 uses
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !506
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !506
  store ptr %i.dj, ptr %i.dg, align 8, !tbaa !506
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !506
  %i.dk = add i64 %niter, 4                       ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dk, %n.vec143
  br i1 %exitcond.not.3, label %middle.block160, label %.lr.ph, !llvm.loop !963

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %._crit_edge, %._crit_edge100, %.lr.ph.i, %middle.block185, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ], [ %1, %middle.block185 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge100 ], [ %i.af, %._crit_edge ]
  ret ptr %.sroa.024.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterINS3_25MapEntryMessageComparatorEEEEvT_SG_SG_T0_SH_T1_SH_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 %7) local_unnamed_addr #1 comdat {
bb.a:
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.393", align 8 ; 4 uses
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.394", align 8 ; 4 uses
  %i.a = inttoptr i64 %7 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %6
  %.not64 = icmp sgt i64 %4, %6
  %or.cond = and i1 %.not, %.not64
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterINS3_25MapEntryMessageComparatorEEEEvT_SG_SG_T0_SH_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %7)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %3, %4
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.c = sdiv i64 %3, 2                           ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %0, i64 %i.c ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %9, align 8
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.j = lshr i64 %.016.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !506
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !506
  %i.n = call noundef zeroext i1 @_ZN6google8protobuf25MapEntryMessageComparatorclEPKNS0_7MessageES4_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.l, ptr noundef %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = xor i64 %i.j, -1
  %i.q = add nsw i64 %.016.i, %i.p
  %.sroa.011.1.i = select i1 %i.n, ptr %i.o, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.n, i64 %i.q, i64 %i.j      ; 2 uses
  %i.r = icmp sgt i64 %.1.i, 0
  br i1 %i.r, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit, !llvm.loop !944

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.f, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.s = sub i64 %.pre-phi, %i.f
  %i.t = ashr exact i64 %i.s, 3
  br label %bb.d

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68: ; preds = %bb.c
  %i.u = sdiv i64 %4, 2                           ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.a, ptr %8, align 8
  %i.w = ptrtoint ptr %1 to i64
  %i.x = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70
  %.016.i71 = phi i64 [ %.1.i76, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70 ], [ %i.z, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68 ] ; 2 uses
  %.sroa.011.015.i72 = phi ptr [ %.sroa.011.1.i75, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70 ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68 ] ; 2 uses
  %i.ab = lshr i64 %.016.i71, 1                   ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i72, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !506
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !506
  %i.af = call noundef zeroext i1 @_ZN6google8protobuf25MapEntryMessageComparatorclEPKNS0_7MessageES4_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.ad, ptr noundef %i.ae) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = xor i64 %i.ab, -1
  %i.ai = add nsw i64 %.016.i71, %i.ah
  %.sroa.011.1.i75 = select i1 %i.af, ptr %.sroa.011.015.i72, ptr %i.ag ; 3 uses
  %.1.i76 = select i1 %i.af, i64 %i.ab, i64 %i.ai ; 2 uses
  %i.aj = icmp sgt i64 %.1.i76, 0
  br i1 %i.aj, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit, !llvm.loop !945

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70
  %.pre90 = ptrtoint ptr %.sroa.011.1.i75 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68
  %.pre-phi91 = phi i64 [ %.pre90, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.x, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68 ]
  %.sroa.011.0.lcssa.i69 = phi ptr [ %.sroa.011.1.i75, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ak = sub i64 %.pre-phi91, %i.x
  %i.al = ashr exact i64 %i.ak, 3
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit
  %.sroa.079.0 = phi ptr [ %i.d, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i69, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ], [ %i.v, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.060 = phi i64 [ %i.t, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ], [ %i.u, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.c, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ], [ %i.al, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %i.am = sub nsw i64 %3, %.0                     ; 2 uses
  %i.an = call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_lET_SC_SC_SC_T1_SD_T0_SD_(ptr %.sroa.079.0, ptr %1, ptr %.sroa.0.0, i64 noundef %i.am, i64 noundef %.060, ptr noundef %5, i64 noundef %6) ; 2 uses
  call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterINS3_25MapEntryMessageComparatorEEEEvT_SG_SG_T0_SH_T1_SH_T2_(ptr %0, ptr %.sroa.079.0, ptr %i.an, i64 noundef %.0, i64 noundef %.060, ptr noundef %5, i64 noundef %6, i64 %7)
  %i.ao = sub nsw i64 %4, %.060
  call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterINS3_25MapEntryMessageComparatorEEEEvT_SG_SG_T0_SH_T1_SH_T2_(ptr %i.an, ptr %.sroa.0.0, ptr %2, i64 noundef %i.am, i64 noundef %i.ao, ptr noundef %5, i64 noundef %6, i64 %7)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_lET_SC_SC_SC_T1_SD_T0_SD_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i64 %4, 0
  br i1 %.not36, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 8                     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !135

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 8
  br i1 %i.f, label %bb.f, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !506
  store ptr %i.g, ptr %5, align 8, !tbaa !506
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !135

bb.g:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit
  %i.n = icmp eq i64 %i.i, 8
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -8
  %i.p = load ptr, ptr %0, align 8, !tbaa !506
  store ptr %i.p, ptr %i.o, align 8, !tbaa !506
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !135

bb.j:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit
  %i.q = icmp eq i64 %i.d, 8
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %5, align 8, !tbaa !506
  store ptr %i.r, ptr %0, align 8, !tbaa !506
  br label %_ZSt4moveIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

_ZSt4moveIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not34 = icmp sgt i64 %3, %6
  br i1 %.not34, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 8
  br i1 %i.w, label %bb.p, label %bb.q, !prof !135

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 8
  br i1 %i.x, label %bb.r, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load ptr, ptr %0, align 8, !tbaa !506
  store ptr %i.y, ptr %5, align 8, !tbaa !506
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit37

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 8
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !135

bb.s:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit37
  %i.ac = icmp eq i64 %i.aa, 8
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.u:                                             ; preds = %bb.t
  %i.ad = load ptr, ptr %1, align 8, !tbaa !506
  store ptr %i.ad, ptr %0, align 8, !tbaa !506
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 3                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !135

bb.v:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

bb.w:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit
  %i.ai = icmp eq i64 %i.v, 8
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -8
  %i.ak = load ptr, ptr %5, align 8, !tbaa !506
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !506
  br label %_ZSt13move_backwardIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

_ZSt13move_backwardIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  br label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.an = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.b, %bb.y, %_ZSt13move_backwardIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, %_ZSt4moveIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit
  %.sroa.032.0 = phi ptr [ %i.s, %_ZSt4moveIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit ], [ %i.an, %bb.y ], [ %i.am, %_ZSt13move_backwardIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit ], [ %0, %bb.b ], [ %2, %bb.n ]
  ret ptr %.sroa.032.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051213AbslStringifyINS0_16strings_internal13StringifySinkEEEvRT_NS0_3HexE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, i64 %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = lshr i64 %1, 55
  %i.e = and i64 %i.d, 510
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2
  store i16 %i.g, ptr %i.c, align 16
  %i.h = lshr i64 %1, 47
  %i.i = and i64 %i.h, 510
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.l = load i16, ptr %i.j, align 2
  store i16 %i.l, ptr %i.k, align 2
  %i.m = lshr i64 %1, 39
  %i.n = and i64 %i.m, 510
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.q = load i16, ptr %i.o, align 2
  store i16 %i.q, ptr %i.p, align 4
  %i.r = lshr i64 %1, 31
  %i.s = and i64 %i.r, 510
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.v = load i16, ptr %i.t, align 2
  store i16 %i.v, ptr %i.u, align 2
  %i.w = lshr i64 %1, 23
  %i.x = and i64 %i.w, 510
  %i.y = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aa = load i16, ptr %i.y, align 2
  store i16 %i.aa, ptr %i.z, align 8
  %i.ab = lshr i64 %1, 15
  %i.ac = and i64 %i.ab, 510
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.af = load i16, ptr %i.ad, align 2
  store i16 %i.af, ptr %i.ae, align 2
  %i.ag = lshr i64 %1, 7
  %i.ah = and i64 %i.ag, 510
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ak = load i16, ptr %i.ai, align 2
  store i16 %i.ak, ptr %i.aj, align 4
  %i.al = shl i64 %1, 1
  %i.am = and i64 %i.al, 510
  %i.an = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051216numbers_internal9kHexTableE, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.ap = load i16, ptr %i.an, align 2
  store i16 %i.ap, ptr %i.ao, align 2
  %i.aq = or i64 %1, 1
  %i.ar = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %.neg8.lhs.trunc.i = trunc nuw nsw i64 %i.ar to i32
  %.neg8910.i = lshr i32 %.neg8.lhs.trunc.i, 2
  %narrow.i = sub nuw nsw i32 16, %.neg8910.i
  %i.as = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.at = and i64 %2, 255                         ; 2 uses
  %.not = icmp samesign ugt i64 %i.at, %i.as
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.6.8.extract.shift = lshr i64 %2, 8
  %.sroa.6.8.extract.trunc = trunc i64 %.sroa.6.8.extract.shift to i8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 %.sroa.6.8.extract.trunc, i64 16, i1 false)
  %i.au = sub nsw i64 0, %i.as
  %i.av = getelementptr inbounds i8, ptr %i.b, i64 %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aw, i8 %.sroa.6.8.extract.trunc, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink19 = phi i64 [ %i.at, %bb.b ], [ %i.as, %bb.a ] ; 2 uses
  %i.ax = sub nsw i64 0, %.sink19
  %i.ay = getelementptr inbounds i8, ptr %i.b, i64 %i.ax
  call void @_ZN4absl12lts_2025051216strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sink19, ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

declare void @_ZN4absl12lts_2025051216strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2496 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !634  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 311
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !243
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !243 ; 4 uses
  %i.g = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.h = and <2 x i64> %i.g, splat (i64 -2147483648)
  %i.i = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.j = or disjoint <2 x i64> %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1248
  %wide.load9 = load <2 x i64>, ptr %i.k, align 8, !tbaa !243
  %i.l = lshr exact <2 x i64> %i.j, splat (i64 1)
  %i.m = xor <2 x i64> %i.l, %wide.load9
  %i.n = and <2 x i64> %wide.load, splat (i64 1)
  %i.o = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.p = select <2 x i1> %i.o, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.q = xor <2 x i64> %i.m, %i.p
  store <2 x i64> %i.q, ptr %i.d, align 8, !tbaa !243
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, 156
  br i1 %i.r, label %vector.ph10, label %vector.body, !llvm.loop !964

vector.ph10:                                      ; preds = %vector.body
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !243
  %vector.recur.init13 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body11

vector.body11:                                    ; preds = %vector.body11, %vector.ph10
  %index12 = phi i64 [ 0, %vector.ph10 ], [ %index.next17, %vector.body11 ] ; 3 uses
  %vector.recur14 = phi <2 x i64> [ %vector.recur.init13, %vector.ph10 ], [ %wide.load15, %vector.body11 ]
  %i.s = getelementptr [8 x i8], ptr %0, i64 %index12 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 1248
  %i.u = getelementptr [8 x i8], ptr %0, i64 %index12
  %i.v = getelementptr i8, ptr %i.u, i64 1256
  %wide.load15 = load <2 x i64>, ptr %i.v, align 8, !tbaa !243 ; 5 uses
  %i.w = shufflevector <2 x i64> %vector.recur14, <2 x i64> %wide.load15, <2 x i32> <i32 1, i32 2>
  %i.x = and <2 x i64> %i.w, splat (i64 -2147483648)
  %i.y = and <2 x i64> %wide.load15, splat (i64 2147483646)
  %i.z = or disjoint <2 x i64> %i.y, %i.x
  %wide.load16 = load <2 x i64>, ptr %i.s, align 8, !tbaa !243
  %i.aa = lshr exact <2 x i64> %i.z, splat (i64 1)
  %i.ab = xor <2 x i64> %i.aa, %wide.load16
  %i.ac = and <2 x i64> %wide.load15, splat (i64 1)
  %i.ad = icmp eq <2 x i64> %i.ac, zeroinitializer
  %i.ae = select <2 x i1> %i.ad, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.af = xor <2 x i64> %i.ab, %i.ae
  store <2 x i64> %i.af, ptr %i.t, align 8, !tbaa !243
  %index.next17 = add nuw i64 %index12, 2         ; 2 uses
  %i.ag = icmp eq i64 %index.next17, 154
  br i1 %i.ag, label %.preheader.i, label %vector.body11, !llvm.loop !965

.preheader.i:                                     ; preds = %vector.body11
  %vector.recur.extract = extractelement <2 x i64> %wide.load15, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.ai = and i64 %vector.recur.extract, -2147483648
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !243 ; 2 uses
  %i.al = and i64 %i.ak, 2147483646
  %i.am = or disjoint i64 %i.al, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !243
  %i.ap = lshr exact i64 %i.am, 1
  %i.aq = xor i64 %i.ap, %i.ao
  %i.ar = and i64 %i.ak, 1
  %.not19.i = icmp eq i64 %i.ar, 0
  %i.as = select i1 %.not19.i, i64 0, i64 -5403634167711393303
  %i.at = xor i64 %i.aq, %i.as
  store i64 %i.at, ptr %i.ah, align 8, !tbaa !243
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2488 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !243
  %i.aw = and i64 %i.av, -2147483648
  %i.ax = load i64, ptr %0, align 8, !tbaa !243   ; 2 uses
  %i.ay = and i64 %i.ax, 2147483646
  %i.az = or disjoint i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !243
  %i.bc = lshr exact i64 %i.az, 1
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = and i64 %i.ax, 1
  %.not.i = icmp eq i64 %i.be, 0
  %i.bf = select i1 %.not.i, i64 0, i64 -5403634167711393303
  %i.bg = xor i64 %i.bd, %i.bf
  store i64 %i.bg, ptr %i.au, align 8, !tbaa !243
  br label %bb.b

bb.b:                                             ; preds = %.preheader.i, %bb.a
  %i.bh = phi i64 [ 0, %.preheader.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !634
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !243 ; 2 uses
  %i.bl = lshr i64 %i.bk, 29
  %i.bm = and i64 %i.bl, 22906492245
  %i.bn = xor i64 %i.bm, %i.bk                    ; 2 uses
  %i.bo = shl i64 %i.bn, 17
  %i.bp = and i64 %i.bo, 8202884508482404352
  %i.bq = xor i64 %i.bp, %i.bn                    ; 2 uses
  %i.br = shl i64 %i.bq, 37
  %i.bs = and i64 %i.br, -2270628950310912
  %i.bt = xor i64 %i.bs, %i.bq                    ; 2 uses
  %i.bu = lshr i64 %i.bt, 43
  %i.bv = xor i64 %i.bu, %i.bt
  ret i64 %i.bv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #36

attributes #0 = { mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold nofree noreturn }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #32 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #37 = { nounwind }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { noreturn nounwind }
attributes #40 = { builtin nounwind }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { cold nounwind }
attributes #44 = { nounwind willreturn memory(none) }
attributes #45 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"_ZTSN6google8protobuf8internal14ReflectionModeE", !5, i64 0}
!9 = !{!10, !11, i64 4}
!10 = !{!"_ZTSN6google8protobuf10TextFormat7PrinterE", !4, i64 0, !11, i64 4, !11, i64 5, !11, i64 6, !11, i64 7, !11, i64 8, !11, i64 9, !12, i64 12, !11, i64 16, !11, i64 17, !11, i64 18, !13, i64 24, !14, i64 32, !22, i64 40, !30, i64 72, !35, i64 104}
!11 = !{!"bool", !5, i64 0}
!12 = !{!"_ZTSN6google8protobuf8internal18FieldReporterLevelE", !5, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTSSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EE", !15, i64 0}
!15 = !{!"_ZTSSt15__uniq_ptr_dataIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_ELb1ELb1EE", !16, i64 0}
!16 = !{!"_ZTSSt15__uniq_ptr_implIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EE", !17, i64 0}
!17 = !{!"_ZTSSt5tupleIJPKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EEE", !18, i64 0}
!18 = !{!"_ZTSSt11_Tuple_implILm0EJPKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EEE", !19, i64 0}
!19 = !{!"_ZTSSt10_Head_baseILm0EPKN6google8protobuf10TextFormat21FastFieldValuePrinterELb0EE", !20, i64 0}
!20 = !{!"p1 _ZTSN6google8protobuf10TextFormat21FastFieldValuePrinterE", !21, i64 0}
!21 = !{!"any pointer", !5, i64 0}
!22 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS3_10TextFormat21FastFieldValuePrinterESt14default_deleteISA_EENS0_18container_internal6HashEqIS6_vE4HashENSG_2EqESaISt4pairIKS6_SD_EEEE", !23, i64 0}
!23 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEEE", !24, i64 0}
!24 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEEE", !25, i64 0}
!25 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_6HashEqIPKN6google8protobuf15FieldDescriptorEvE4HashENSA_2EqESaIcEEEE", !26, i64 0}
!26 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_6HashEqIPKN6google8protobuf15FieldDescriptorEvE4HashENSC_2EqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !27, i64 0}
!27 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !28, i64 0}
!28 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !13, i64 0, !29, i64 8, !5, i64 16}
!29 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !13, i64 0}
!30 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS3_10TextFormat14MessagePrinterESt14default_deleteISA_EENS0_18container_internal6HashEqIS6_vE4HashENSG_2EqESaISt4pairIKS6_SD_EEEE", !31, i64 0}
!31 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEEE", !32, i64 0}
!32 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEEE", !33, i64 0}
!33 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_6HashEqIPKN6google8protobuf10DescriptorEvE4HashENSA_2EqESaIcEEEE", !34, i64 0}
!34 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_6HashEqIPKN6google8protobuf10DescriptorEvE4HashENSC_2EqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !27, i64 0}
!35 = !{!"p1 _ZTSN6google8protobuf10TextFormat6FinderE", !21, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !6, i64 0}
!38 = !{!20, !20, i64 0}
!39 = distinct !{ptr @_ZN6google8protobuf10TextFormat7Printer24SetUseUtf8StringEscapingEb, ptr @_ZN6google8protobuf10TextFormat7Printer27SetDefaultFieldValuePrinterEPKNS1_21FastFieldValuePrinterE, null, null, null}
!40 = !{!10, !11, i64 18}
!41 = !{!10, !11, i64 8}
!42 = !{!10, !11, i64 9}
!43 = !{!10, !12, i64 12}
!44 = !{!45, !46, i64 0}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !46, i64 0}
!46 = !{!"p1 omnipotent char", !21, i64 0}
!47 = !{!48, !13, i64 8}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !13, i64 8, !5, i64 16}
!49 = !{!48, !46, i64 0}
!50 = !{!5, !5, i64 0}
!51 = distinct !{ptr @_ZN6google8protobuf10TextFormat7Printer27SetDefaultFieldValuePrinterEPKNS1_21FastFieldValuePrinterE, null, null, null}
!52 = !{!28, !13, i64 0}
!53 = !{!29, !13, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 _ZTSN6google8protobuf10TextFormat14MessagePrinterE", !21, i64 0}
!56 = distinct !{ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev, null, null, null, null, null, null, null, null, null, null}
!57 = !{!58, !59, i64 0}
!58 = !{!"_ZTSZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE13destroy_slotsEvEUlPKNS1_6ctrl_tEPvE_", !59, i64 0}
!59 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEEE", !21, i64 0}
!60 = distinct !{ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev, null, null, null, null, null, null, null, null, null, null}
!61 = !{!62, !63, i64 0}
!62 = !{!"_ZTSZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE13destroy_slotsEvEUlPKNS1_6ctrl_tEPvE_", !63, i64 0}
!63 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEEE", !21, i64 0}
!64 = distinct !{null, null}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !21, i64 0}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE11try_emplaceIS8_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISE_SH_SI_SM_E14const_iteratorEEE5valueEiE4typeELi0EEESJ_INSS_8iteratorEbERKSQ_DpOT1_: argument 0"}
!69 = distinct !{!69, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE11try_emplaceIS8_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISE_SH_SI_SM_E14const_iteratorEEE5valueEiE4typeELi0EEESJ_INSS_8iteratorEbERKSQ_DpOT1_"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE16try_emplace_implIRSK_JEEESJ_INS1_12raw_hash_setISE_SH_SI_SM_E8iteratorEbEOT_DpOT0_: argument 0"}
!72 = distinct !{!72, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE16try_emplace_implIRSK_JEEESJ_INS1_12raw_hash_setISE_SH_SI_SM_E8iteratorEbEOT_DpOT0_"}
!73 = !{!74, !11, i64 16}
!74 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS6_10TextFormat18ParseLocationRangeESaISC_EEEENS2_6HashEqIS9_vE4HashENSH_2EqESaIS_IKS9_SE_EEE8iteratorEbE", !75, i64 0, !11, i64 16}
!75 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE8iteratorE", !21, i64 0, !5, i64 8}
end_hunk_0
begin_hunk_1_@bcmp
!761 = distinct !{!761, !762, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS5_15FieldDescriptorEEE5applyINS1_12raw_hash_setISD_NS0_13hash_internal4HashISC_EESt8equal_toISC_ESaISC_EE19EmplaceDecomposableEJSC_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_: argument 0"}
!762 = distinct !{!762, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS5_15FieldDescriptorEEE5applyINS1_12raw_hash_setISD_NS0_13hash_internal4HashISC_EESt8equal_toISC_ESaISC_EE19EmplaceDecomposableEJSC_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_"}
!763 = distinct !{!763, !764, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEEvE5applyINS1_12raw_hash_setISE_NS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableEJSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_: argument 0"}
!764 = distinct !{!764, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEEvE5applyINS1_12raw_hash_setISE_NS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableEJSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_"}
!765 = distinct !{!765, !766, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE7emplaceIJSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES4_INSL_8iteratorEbEDpOSO_: argument 0"}
!766 = distinct !{!766, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE7emplaceIJSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES4_INSL_8iteratorEbEDpOSO_"}
!767 = distinct !{!767, !768, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE6insertEOSD_: argument 0"}
!768 = distinct !{!768, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE6insertEOSD_"}
!769 = !{!770, !772, !774, !776, !778, !780}
!770 = distinct !{!770, !771, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableclISD_JSD_EEES4_INSL_8iteratorEbERKT_DpOT0_: argument 0"}
!771 = distinct !{!771, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableclISD_JSD_EEES4_INSL_8iteratorEbERKT_DpOT0_"}
!772 = distinct !{!772, !773, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS7_15FieldDescriptorEEEENS0_13hash_internal4HashISE_EESt8equal_toISE_ESaISE_EE19EmplaceDecomposableESE_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISP_EEEEOSO_OSP_: argument 0"}
!773 = distinct !{!773, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS7_15FieldDescriptorEEEENS0_13hash_internal4HashISE_EESt8equal_toISE_ESaISE_EE19EmplaceDecomposableESE_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISP_EEEEOSO_OSP_"}
!774 = distinct !{!774, !775, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS5_15FieldDescriptorEEE5applyINS1_12raw_hash_setISD_NS0_13hash_internal4HashISC_EESt8equal_toISC_ESaISC_EE19EmplaceDecomposableEJSC_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_: argument 0"}
!775 = distinct !{!775, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS5_15FieldDescriptorEEE5applyINS1_12raw_hash_setISD_NS0_13hash_internal4HashISC_EESt8equal_toISC_ESaISC_EE19EmplaceDecomposableEJSC_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_"}
!776 = distinct !{!776, !777, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEEvE5applyINS1_12raw_hash_setISE_NS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableEJSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_: argument 0"}
!777 = distinct !{!777, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEEvE5applyINS1_12raw_hash_setISE_NS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableEJSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_"}
!778 = distinct !{!778, !779, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE7emplaceIJSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES4_INSL_8iteratorEbEDpOSO_: argument 0"}
!779 = distinct !{!779, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE7emplaceIJSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES4_INSL_8iteratorEbEDpOSO_"}
!780 = distinct !{!780, !781, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE6insertEOSD_: argument 0"}
!781 = distinct !{!781, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE6insertEOSD_"}
!782 = !{!783, !785, !787, !789, !791, !793}
!783 = distinct !{!783, !784, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableclISD_JSD_EEES4_INSL_8iteratorEbERKT_DpOT0_: argument 0"}
!784 = distinct !{!784, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableclISD_JSD_EEES4_INSL_8iteratorEbERKT_DpOT0_"}
!785 = distinct !{!785, !786, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS7_15FieldDescriptorEEEENS0_13hash_internal4HashISE_EESt8equal_toISE_ESaISE_EE19EmplaceDecomposableESE_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISP_EEEEOSO_OSP_: argument 0"}
!786 = distinct !{!786, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS7_15FieldDescriptorEEEENS0_13hash_internal4HashISE_EESt8equal_toISE_ESaISE_EE19EmplaceDecomposableESE_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISP_EEEEOSO_OSP_"}
!787 = distinct !{!787, !788, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS5_15FieldDescriptorEEE5applyINS1_12raw_hash_setISD_NS0_13hash_internal4HashISC_EESt8equal_toISC_ESaISC_EE19EmplaceDecomposableEJSC_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_: argument 0"}
!788 = distinct !{!788, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS5_15FieldDescriptorEEE5applyINS1_12raw_hash_setISD_NS0_13hash_internal4HashISC_EESt8equal_toISC_ESaISC_EE19EmplaceDecomposableEJSC_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_"}
!789 = distinct !{!789, !790, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEEvE5applyINS1_12raw_hash_setISE_NS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableEJSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_: argument 0"}
!790 = distinct !{!790, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEEvE5applyINS1_12raw_hash_setISE_NS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableEJSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_"}
!791 = distinct !{!791, !792, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE7emplaceIJSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES4_INSL_8iteratorEbEDpOSO_: argument 0"}
!792 = distinct !{!792, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE7emplaceIJSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES4_INSL_8iteratorEbEDpOSO_"}
!793 = distinct !{!793, !794, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE6insertEOSD_: argument 0"}
!794 = distinct !{!794, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE6insertEOSD_"}
!795 = !{!796, !798, !800, !802, !804, !806}
!796 = distinct !{!796, !797, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableclISD_JSD_EEES4_INSL_8iteratorEbERKT_DpOT0_: argument 0"}
!797 = distinct !{!797, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableclISD_JSD_EEES4_INSL_8iteratorEbERKT_DpOT0_"}
!798 = distinct !{!798, !799, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS7_15FieldDescriptorEEEENS0_13hash_internal4HashISE_EESt8equal_toISE_ESaISE_EE19EmplaceDecomposableESE_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISP_EEEEOSO_OSP_: argument 0"}
!799 = distinct !{!799, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS7_15FieldDescriptorEEEENS0_13hash_internal4HashISE_EESt8equal_toISE_ESaISE_EE19EmplaceDecomposableESE_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISP_EEEEOSO_OSP_"}
!800 = distinct !{!800, !801, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS5_15FieldDescriptorEEE5applyINS1_12raw_hash_setISD_NS0_13hash_internal4HashISC_EESt8equal_toISC_ESaISC_EE19EmplaceDecomposableEJSC_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_: argument 0"}
!801 = distinct !{!801, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS5_15FieldDescriptorEEE5applyINS1_12raw_hash_setISD_NS0_13hash_internal4HashISC_EESt8equal_toISC_ESaISC_EE19EmplaceDecomposableEJSC_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_"}
!802 = distinct !{!802, !803, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEEvE5applyINS1_12raw_hash_setISE_NS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableEJSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_: argument 0"}
!803 = distinct !{!803, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEEvE5applyINS1_12raw_hash_setISE_NS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableEJSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_"}
!804 = distinct !{!804, !805, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE7emplaceIJSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES4_INSL_8iteratorEbEDpOSO_: argument 0"}
!805 = distinct !{!805, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE7emplaceIJSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES4_INSL_8iteratorEbEDpOSO_"}
!806 = distinct !{!806, !807, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE6insertEOSD_: argument 0"}
!807 = distinct !{!807, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE6insertEOSD_"}
!808 = !{!809, !811, !813, !815, !817, !819}
!809 = distinct !{!809, !810, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableclISD_JSD_EEES4_INSL_8iteratorEbERKT_DpOT0_: argument 0"}
!810 = distinct !{!810, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableclISD_JSD_EEES4_INSL_8iteratorEbERKT_DpOT0_"}
!811 = distinct !{!811, !812, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS7_15FieldDescriptorEEEENS0_13hash_internal4HashISE_EESt8equal_toISE_ESaISE_EE19EmplaceDecomposableESE_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISP_EEEEOSO_OSP_: argument 0"}
!812 = distinct !{!812, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS7_15FieldDescriptorEEEENS0_13hash_internal4HashISE_EESt8equal_toISE_ESaISE_EE19EmplaceDecomposableESE_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISP_EEEEOSO_OSP_"}
!813 = distinct !{!813, !814, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS5_15FieldDescriptorEEE5applyINS1_12raw_hash_setISD_NS0_13hash_internal4HashISC_EESt8equal_toISC_ESaISC_EE19EmplaceDecomposableEJSC_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_: argument 0"}
!814 = distinct !{!814, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS5_15FieldDescriptorEEE5applyINS1_12raw_hash_setISD_NS0_13hash_internal4HashISC_EESt8equal_toISC_ESaISC_EE19EmplaceDecomposableEJSC_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_"}
!815 = distinct !{!815, !816, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEEvE5applyINS1_12raw_hash_setISE_NS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableEJSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_: argument 0"}
!816 = distinct !{!816, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEEvE5applyINS1_12raw_hash_setISE_NS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableEJSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_"}
!817 = distinct !{!817, !818, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE7emplaceIJSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES4_INSL_8iteratorEbEDpOSO_: argument 0"}
!818 = distinct !{!818, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE7emplaceIJSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES4_INSL_8iteratorEbEDpOSO_"}
!819 = distinct !{!819, !820, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE6insertEOSD_: argument 0"}
!820 = distinct !{!820, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE6insertEOSD_"}
!821 = !{!822}
!822 = distinct !{!822, !823, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_: argument 0"}
!823 = distinct !{!823, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_"}
!824 = !{!825, !827, !829, !831, !833, !835}
!825 = distinct !{!825, !826, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableclISD_JSD_EEES4_INSL_8iteratorEbERKT_DpOT0_: argument 0"}
!826 = distinct !{!826, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableclISD_JSD_EEES4_INSL_8iteratorEbERKT_DpOT0_"}
!827 = distinct !{!827, !828, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS7_15FieldDescriptorEEEENS0_13hash_internal4HashISE_EESt8equal_toISE_ESaISE_EE19EmplaceDecomposableESE_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISP_EEEEOSO_OSP_: argument 0"}
!828 = distinct !{!828, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS7_15FieldDescriptorEEEENS0_13hash_internal4HashISE_EESt8equal_toISE_ESaISE_EE19EmplaceDecomposableESE_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISP_EEEEOSO_OSP_"}
!829 = distinct !{!829, !830, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS5_15FieldDescriptorEEE5applyINS1_12raw_hash_setISD_NS0_13hash_internal4HashISC_EESt8equal_toISC_ESaISC_EE19EmplaceDecomposableEJSC_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_: argument 0"}
!830 = distinct !{!830, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS5_15FieldDescriptorEEE5applyINS1_12raw_hash_setISD_NS0_13hash_internal4HashISC_EESt8equal_toISC_ESaISC_EE19EmplaceDecomposableEJSC_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_"}
!831 = distinct !{!831, !832, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEEvE5applyINS1_12raw_hash_setISE_NS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableEJSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_: argument 0"}
!832 = distinct !{!832, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEEvE5applyINS1_12raw_hash_setISE_NS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableEJSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_"}
!833 = distinct !{!833, !834, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE7emplaceIJSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES4_INSL_8iteratorEbEDpOSO_: argument 0"}
!834 = distinct !{!834, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE7emplaceIJSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES4_INSL_8iteratorEbEDpOSO_"}
!835 = distinct !{!835, !836, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE6insertEOSD_: argument 0"}
!836 = distinct !{!836, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE6insertEOSD_"}
!837 = !{!187, !11, i64 247}
!838 = !{!839}
!839 = distinct !{!839, !840, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_: argument 0"}
!840 = distinct !{!840, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_"}
!841 = !{!842}
!842 = distinct !{!842, !843, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_: argument 0"}
!843 = distinct !{!843, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_"}
!844 = !{!845, !847, !849, !851, !853, !855}
!845 = distinct !{!845, !846, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableclISD_JSD_EEES4_INSL_8iteratorEbERKT_DpOT0_: argument 0"}
!846 = distinct !{!846, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableclISD_JSD_EEES4_INSL_8iteratorEbERKT_DpOT0_"}
!847 = distinct !{!847, !848, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS7_15FieldDescriptorEEEENS0_13hash_internal4HashISE_EESt8equal_toISE_ESaISE_EE19EmplaceDecomposableESE_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISP_EEEEOSO_OSP_: argument 0"}
!848 = distinct !{!848, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS7_15FieldDescriptorEEEENS0_13hash_internal4HashISE_EESt8equal_toISE_ESaISE_EE19EmplaceDecomposableESE_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISP_EEEEOSO_OSP_"}
!849 = distinct !{!849, !850, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS5_15FieldDescriptorEEE5applyINS1_12raw_hash_setISD_NS0_13hash_internal4HashISC_EESt8equal_toISC_ESaISC_EE19EmplaceDecomposableEJSC_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_: argument 0"}
!850 = distinct !{!850, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS5_15FieldDescriptorEEE5applyINS1_12raw_hash_setISD_NS0_13hash_internal4HashISC_EESt8equal_toISC_ESaISC_EE19EmplaceDecomposableEJSC_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_"}
!851 = distinct !{!851, !852, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEEvE5applyINS1_12raw_hash_setISE_NS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableEJSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_: argument 0"}
!852 = distinct !{!852, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEEvE5applyINS1_12raw_hash_setISE_NS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19EmplaceDecomposableEJSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_"}
!853 = distinct !{!853, !854, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE7emplaceIJSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES4_INSL_8iteratorEbEDpOSO_: argument 0"}
!854 = distinct !{!854, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE7emplaceIJSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES4_INSL_8iteratorEbEDpOSO_"}
!855 = distinct !{!855, !856, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE6insertEOSD_: argument 0"}
!856 = distinct !{!856, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE6insertEOSD_"}
!857 = !{!858}
!858 = distinct !{!858, !859, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_: argument 0"}
!859 = distinct !{!859, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_"}
!860 = distinct !{!860, !95}
!861 = distinct !{!861, !95}
!862 = !{!863}
!863 = distinct !{!863, !864, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE26find_or_prepare_insert_sooISD_EES4_INSL_8iteratorEbERKT_: argument 0"}
!864 = distinct !{!864, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE26find_or_prepare_insert_sooISD_EES4_INSL_8iteratorEbERKT_"}
!865 = !{!866, !507, i64 0}
!866 = !{!"_ZTSSt4pairIPKN6google8protobuf7MessageEPKNS1_15FieldDescriptorEE", !507, i64 0, !66, i64 8}
!867 = !{!868}
!868 = distinct !{!868, !869, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!869 = distinct !{!869, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!870 = distinct !{!870, !871}
!871 = !{!"llvm.loop.unroll.disable"}
!872 = distinct !{!872, !95}
!873 = distinct !{!873, !95}
!874 = !{!875, !875, i64 0}
!875 = !{!"_ZTSN4absl12lts_2025051218container_internal6ctrl_tE", !5, i64 0}
!876 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null}
!877 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null}
!878 = distinct !{!878, !95}
!879 = distinct !{null}
!880 = distinct !{null}
!881 = distinct !{!881, !95}
!882 = !{!883, !259, i64 16}
!883 = !{!"_ZTSN6google8protobuf6MapKeyE", !5, i64 0, !259, i64 16}
!884 = !{!885}
!885 = distinct !{!885, !886, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!886 = distinct !{!886, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!887 = distinct !{!887, !95}
!888 = !{!889}
!889 = distinct !{!889, !890, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!890 = distinct !{!890, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!891 = distinct !{!891, !95}
!892 = distinct !{!892, !95}
!893 = !{!894}
!894 = distinct !{!894, !895, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!895 = distinct !{!895, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!896 = !{!85, !85, i64 0}
!897 = distinct !{!897, !871}
!898 = distinct !{!898, !95}
!899 = distinct !{!899, !95}
!900 = !{!901}
!901 = distinct !{!901, !902, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!902 = distinct !{!902, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!903 = !{!112, !112, i64 0}
!904 = distinct !{!904, !871}
!905 = distinct !{!905, !95}
!906 = distinct !{!906, !95}
!907 = distinct !{null, null}
!908 = distinct !{ptr @_ZN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperD2Ev, null, null}
!909 = !{!910}
!910 = distinct !{!910, !911, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!911 = distinct !{!911, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!912 = distinct !{!912, !871}
!913 = distinct !{!913, !95}
!914 = distinct !{!914, !95}
!915 = !{!916}
!916 = distinct !{!916, !917, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!917 = distinct !{!917, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!918 = distinct !{!918, !871}
!919 = distinct !{!919, !95}
!920 = distinct !{!920, !95}
!921 = distinct !{!921, !95}
!922 = distinct !{!922, !95}
!923 = distinct !{!923, !95}
!924 = distinct !{!924, !95}
!925 = distinct !{!925, !95}
!926 = distinct !{!926, !95}
!927 = distinct !{!927, !95}
!928 = distinct !{!928, !95}
!929 = distinct !{!929, !95}
!930 = distinct !{!930, !95}
!931 = distinct !{!931, !95}
!932 = distinct !{!932, !95}
!933 = distinct !{!933, !95}
!934 = distinct !{!934, !95}
!935 = distinct !{!935, !95}
!936 = distinct !{!936, !95}
!937 = distinct !{!937, !95}
!938 = !{!"branch_weights", !"expected", i32 2146946911, i32 536737}
!939 = distinct !{!939, !95}
!940 = distinct !{!940, !95}
!941 = distinct !{!941, !95}
!942 = !{!943, !66, i64 0}
!943 = !{!"_ZTSN6google8protobuf25MapEntryMessageComparatorE", !66, i64 0}
!944 = distinct !{!944, !95}
!945 = distinct !{!945, !95}
!946 = !{!947}
!947 = distinct !{!947, !948}
!948 = distinct !{!948, !"LVerDomain"}
!949 = !{!950}
!950 = distinct !{!950, !948}
!951 = distinct !{!951, !95, !129, !130}
!952 = distinct !{!952, !95, !129}
!953 = !{!954}
!954 = distinct !{!954, !955}
!955 = distinct !{!955, !"LVerDomain"}
!956 = !{!957}
!957 = distinct !{!957, !955}
!958 = distinct !{!958, !95, !129, !130}
!959 = distinct !{!959, !871}
!960 = distinct !{!960, !95, !129}
!961 = distinct !{!961, !871}
!962 = distinct !{!962, !95}
!963 = distinct !{!963, !95}
!964 = distinct !{!964, !95, !129, !130}
!965 = distinct !{!965, !95, !129, !130}
end_hunk_1
