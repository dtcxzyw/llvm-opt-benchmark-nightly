inline.NumInlined: 2614
inline.NumDeleted: 870
begin_hunk_0_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEEvT_SH_SH_T0_SI_T1_:bb.a
  store ptr %i.h, ptr %1, align 8, !tbaa !170
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
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.r = lshr i64 %.016.i, 1                      ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !170
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !170
  %i.v = call noundef zeroext i1 @_ZN6google8protobuf16DynamicMapSorter25MapEntryMessageComparatorclEPKNS0_7MessageES5_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.t, ptr noundef %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = xor i64 %i.r, -1
  %i.y = add nsw i64 %.016.i, %i.x
  %.sroa.011.1.i = select i1 %i.v, ptr %i.w, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.v, i64 %i.y, i64 %i.r      ; 2 uses
  %i.z = icmp sgt i64 %.1.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit, !llvm.loop !321

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
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
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.016.i58 = phi i64 [ %.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %i.ah, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %.sroa.011.015.i59 = phi ptr [ %.sroa.011.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %i.aj = lshr i64 %.016.i58, 1                   ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i59, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !170
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !170
  %i.an = call noundef zeroext i1 @_ZN6google8protobuf16DynamicMapSorter25MapEntryMessageComparatorclEPKNS0_7MessageES5_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.al, ptr noundef %i.am) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = xor i64 %i.aj, -1
  %i.aq = add nsw i64 %.016.i58, %i.ap
  %.sroa.011.1.i62 = select i1 %i.an, ptr %.sroa.011.015.i59, ptr %i.ao ; 3 uses
  %.1.i63 = select i1 %i.an, i64 %i.aj, i64 %i.aq ; 2 uses
  %i.ar = icmp sgt i64 %.1.i63, 0
  br i1 %i.ar, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit, !llvm.loop !322

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.pre77 = ptrtoint ptr %.sroa.011.1.i62 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %.pre-phi78 = phi i64 [ %.pre77, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %i.af, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %.sroa.011.0.lcssa.i56 = phi ptr [ %.sroa.011.1.i62, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.as = sub i64 %.pre-phi78, %i.af
  %i.at = ashr exact i64 %i.as, 3
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit
  %.sroa.066.0 = phi ptr [ %i.l, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i56, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ], [ %i.ad, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ] ; 2 uses
  %.049 = phi i64 [ %i.ab, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.k, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ], [ %i.at, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ] ; 2 uses
  %i.au = call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %.sroa.066.0, ptr %1, ptr %.sroa.0.0) ; 2 uses
  %.sroa.05.0.copyload = load ptr, ptr %8, align 8, !tbaa !135
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEEvT_SH_SH_T0_SI_T1_(ptr %0, ptr %.sroa.066.0, ptr %i.au, i64 noundef %.0, i64 noundef %.049, ptr %.sroa.05.0.copyload)
  %i.av = sub nsw i64 %3, %.0
  %i.aw = sub nsw i64 %4, %.049
  %.sroa.0.0.copyload = load ptr, ptr %8, align 8, !tbaa !135
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEEvT_SH_SH_T0_SI_T1_(ptr %i.au, ptr %.sroa.0.0, ptr %2, i64 noundef %i.av, i64 noundef %i.aw, ptr %.sroa.0.0.copyload)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
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
  %wide.load180 = load <2 x ptr>, ptr %next.gep179, align 8, !tbaa !170, !alias.scope !323, !noalias !326
  %wide.load181 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !170, !alias.scope !323, !noalias !326
  %i.y = getelementptr i8, ptr %next.gep178, i64 16 ; 2 uses
  %wide.load182 = load <2 x ptr>, ptr %next.gep178, align 8, !tbaa !170, !alias.scope !326
  %wide.load183 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !170, !alias.scope !326
  store <2 x ptr> %wide.load182, ptr %next.gep179, align 8, !tbaa !170, !alias.scope !323, !noalias !326
  store <2 x ptr> %wide.load183, ptr %i.x, align 8, !tbaa !170, !alias.scope !323, !noalias !326
  store <2 x ptr> %wide.load180, ptr %next.gep178, align 8, !tbaa !170, !alias.scope !326
  store <2 x ptr> %wide.load181, ptr %i.y, align 8, !tbaa !170, !alias.scope !326
  %index.next184 = add nuw i64 %index177, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next184, %n.vec175
  br i1 %i.z, label %middle.block185, label %vector.body176, !llvm.loop !328

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
  %i.aa = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !170
  %i.ab = load ptr, ptr %.sroa.0.08.i, align 8, !tbaa !170
  store ptr %i.ab, ptr %.sroa.04.07.i, align 8, !tbaa !170
  store ptr %i.aa, ptr %.sroa.0.08.i, align 8, !tbaa !170
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i, !llvm.loop !331

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
  %i.aj = load ptr, ptr %.sroa.041.0, align 8, !tbaa !170
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !170
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
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !170, !alias.scope !332, !noalias !335
  %wide.load129 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !170, !alias.scope !332, !noalias !335
  %i.ax = getelementptr i8, ptr %next.gep128, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !170, !alias.scope !335
  %wide.load131 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !170, !alias.scope !335
  store <2 x ptr> %wide.load130, ptr %next.gep, align 8, !tbaa !170, !alias.scope !332, !noalias !335
  store <2 x ptr> %wide.load131, ptr %i.aw, align 8, !tbaa !170, !alias.scope !332, !noalias !335
  store <2 x ptr> %wide.load, ptr %next.gep128, align 8, !tbaa !170, !alias.scope !335
  store <2 x ptr> %wide.load129, ptr %i.ax, align 8, !tbaa !170, !alias.scope !335
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !337

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
  %i.ba = load ptr, ptr %.sroa.041.196.prol, align 8, !tbaa !170
  %i.bb = load ptr, ptr %.sroa.038.095.prol, align 8, !tbaa !170
  store ptr %i.bb, ptr %.sroa.041.196.prol, align 8, !tbaa !170
  store ptr %i.ba, ptr %.sroa.038.095.prol, align 8, !tbaa !170
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.041.196.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.038.095.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter200.next = add i64 %prol.iter200, 1   ; 2 uses
  %prol.iter200.cmp.not = icmp eq i64 %prol.iter200.next, %xtraiter198
  br i1 %prol.iter200.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !338

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
  %i.bj = load ptr, ptr %.sroa.041.196, align 8, !tbaa !170
  %i.bk = load ptr, ptr %.sroa.038.095, align 8, !tbaa !170
  store ptr %i.bk, ptr %.sroa.041.196, align 8, !tbaa !170
  store ptr %i.bj, ptr %.sroa.038.095, align 8, !tbaa !170
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !170
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !170
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !170
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !170
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !170
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !170
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !170
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !170
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !170
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !170
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !170
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !170
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 32
  %i.bz = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !340

bb.h:                                             ; preds = %._crit_edge100
  %i.ca = sub nsw i64 %.084, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr inbounds [8 x i8], ptr %.sroa.041.0, i64 %.0 ; 5 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !170
  %.idx = shl nsw i64 %.0, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.sroa.041.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %.sroa.041.0, align 8, !tbaa !170
  store ptr %i.cl, ptr %i.cd, align 8, !tbaa !170
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.ce, ptr %.sroa.041.0, align 8, !tbaa !170
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
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !170
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !170
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !170
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !170
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %._crit_edge, label %.lr.ph.prol, !llvm.loop !341

._crit_edge:                                      ; preds = %middle.block160, %.lr.ph.prol, %bb.n
  %.sroa.041.2.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.sroa.041.0, %.lr.ph.prol ], [ %.sroa.041.0, %middle.block160 ]
  %i.ct = srem i64 %.0, %i.ag                     ; 2 uses
  %.not = icmp eq i64 %i.ct, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.041.0.be = phi ptr [ %.sroa.041.1.lcssa, %bb.h ], [ %.sroa.041.2.lcssa, %._crit_edge ]
  %.084.be = phi i64 [ %i.ca, %bb.h ], [ %i.ct, %._crit_edge ]
  %.0.be = phi i64 [ %.084, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !342

.lr.ph:                                           ; preds = %.lr.ph, %vector.ph141
  %.sroa.0.093 = phi ptr [ %i.cc, %vector.ph141 ], [ %i.dh, %.lr.ph ] ; 4 uses
  %.sroa.0.093.a = phi ptr [ %i.cn, %vector.ph141 ], [ %i.dg, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %vector.ph141 ], [ %i.dk, %.lr.ph ]
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.093.a, i64 -8 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -8 ; 2 uses
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !170
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !170
  store ptr %i.cx, ptr %i.cu, align 8, !tbaa !170
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !170
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.093.a, i64 -16 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -16 ; 2 uses
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !170
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !170
  store ptr %i.db, ptr %i.cy, align 8, !tbaa !170
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !170
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.093.a, i64 -24 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -24 ; 2 uses
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !170
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !170
  store ptr %i.df, ptr %i.dc, align 8, !tbaa !170
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !170
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.093.a, i64 -32 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -32 ; 4 uses
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !170
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !170
  store ptr %i.dj, ptr %i.dg, align 8, !tbaa !170
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !170
  %i.dk = add i64 %niter, 4                       ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dk, %n.vec143
  br i1 %exitcond.not.3, label %middle.block160, label %.lr.ph, !llvm.loop !343

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %._crit_edge, %._crit_edge100, %.lr.ph.i, %middle.block185, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ], [ %1, %middle.block185 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge100 ], [ %i.af, %._crit_edge ]
  ret ptr %.sroa.024.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEEvT_SH_SH_T0_SI_T1_SI_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.108", align 8 ; 4 uses
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.109", align 8 ; 4 uses
  %i.a = inttoptr i64 %7 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %6
  %.not64 = icmp sgt i64 %4, %6
  %or.cond = and i1 %.not, %.not64
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEEvT_SH_SH_T0_SI_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %7)
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
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.j = lshr i64 %.016.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !170
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.n = call noundef zeroext i1 @_ZN6google8protobuf16DynamicMapSorter25MapEntryMessageComparatorclEPKNS0_7MessageES5_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.l, ptr noundef %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = xor i64 %i.j, -1
  %i.q = add nsw i64 %.016.i, %i.p
  %.sroa.011.1.i = select i1 %i.n, ptr %i.o, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.n, i64 %i.q, i64 %i.j      ; 2 uses
  %i.r = icmp sgt i64 %.1.i, 0
  br i1 %i.r, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit, !llvm.loop !321

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %i.f, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
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
  br i1 %i.aa, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70
  %.016.i71 = phi i64 [ %.1.i76, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70 ], [ %i.z, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68 ] ; 2 uses
  %.sroa.011.015.i72 = phi ptr [ %.sroa.011.1.i75, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70 ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68 ] ; 2 uses
  %i.ab = lshr i64 %.016.i71, 1                   ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i72, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !170
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !170
  %i.af = call noundef zeroext i1 @_ZN6google8protobuf16DynamicMapSorter25MapEntryMessageComparatorclEPKNS0_7MessageES5_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.ad, ptr noundef %i.ae) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = xor i64 %i.ab, -1
  %i.ai = add nsw i64 %.016.i71, %i.ah
  %.sroa.011.1.i75 = select i1 %i.af, ptr %.sroa.011.015.i72, ptr %i.ag ; 3 uses
  %.1.i76 = select i1 %i.af, i64 %i.ab, i64 %i.ai ; 2 uses
  %i.aj = icmp sgt i64 %.1.i76, 0
  br i1 %i.aj, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit, !llvm.loop !322

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70
  %.pre90 = ptrtoint ptr %.sroa.011.1.i75 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68
  %.pre-phi91 = phi i64 [ %.pre90, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %i.x, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68 ]
  %.sroa.011.0.lcssa.i69 = phi ptr [ %.sroa.011.1.i75, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ak = sub i64 %.pre-phi91, %i.x
  %i.al = ashr exact i64 %i.ak, 3
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit
  %.sroa.079.0 = phi ptr [ %i.d, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i69, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ], [ %i.v, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ] ; 2 uses
  %.060 = phi i64 [ %i.t, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ], [ %i.u, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.c, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ], [ %i.al, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEET_SH_SH_RKT0_T1_.exit ] ; 2 uses
  %i.am = sub nsw i64 %3, %.0                     ; 2 uses
  %i.an = call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_lET_SC_SC_SC_T1_SD_T0_SD_(ptr %.sroa.079.0, ptr %1, ptr %.sroa.0.0, i64 noundef %i.am, i64 noundef %.060, ptr noundef %5, i64 noundef %6) ; 2 uses
  call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEEvT_SH_SH_T0_SI_T1_SI_T2_(ptr %0, ptr %.sroa.079.0, ptr %i.an, i64 noundef %.0, i64 noundef %.060, ptr noundef %5, i64 noundef %6, i64 %7)
  %i.ao = sub nsw i64 %4, %.060
  call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEEvT_SH_SH_T0_SI_T1_SI_T2_(ptr %i.an, ptr %.sroa.0.0, ptr %2, i64 noundef %i.am, i64 noundef %i.ao, ptr noundef %5, i64 noundef %6, i64 %7)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_lET_SC_SC_SC_T1_SD_T0_SD_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
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
  br i1 %i.e, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 8
  br i1 %i.f, label %bb.f, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !170
  store ptr %i.g, ptr %5, align 8, !tbaa !170
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !20

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
  %i.p = load ptr, ptr %0, align 8, !tbaa !170
  store ptr %i.p, ptr %i.o, align 8, !tbaa !170
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !20

bb.j:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit
  %i.q = icmp eq i64 %i.d, 8
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %5, align 8, !tbaa !170
  store ptr %i.r, ptr %0, align 8, !tbaa !170
  br label %_ZSt4moveIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

_ZSt4moveIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not34 = icmp sgt i64 %3, %6
  br i1 %.not34, label %bb.y, label %bb.n

end_hunk_0
begin_hunk_1_@_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES7_lET_SC_SC_SC_T1_SD_T0_SD_:bb.a
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

bb.w:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit
  %i.ai = icmp eq i64 %i.v, 8
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPPKN6google8protobuf7MessageEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -8
  %i.ak = load ptr, ptr %5, align 8, !tbaa !170
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !170
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

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteCordOutlineERKN4absl12lts_202505124CordEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf15MapIteratorBaseILb0EEC2EPKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare { ptr, i32 } @_ZN6google8protobuf8internal17VarintParseSlow32EPKcj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream18WriteStringOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, i64, ptr, ptr noundef) local_unnamed_addr #1

declare i64 @_ZN6google8protobuf2io16CodedInputStream35IncrementRecursionDepthAndPushLimitEi(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6google8protobuf11MessageLite27MergePartialFromCodedStreamEPNS0_2io16CodedInputStreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream34DecrementRecursionDepthAndPopLimitEi(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6google8protobuf2io16CodedInputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #19

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @"_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEE3$_0EES8_S8_S8_T_"(ptr noundef %0, ptr noundef readnone captures(address) %1, ptr noundef readonly byval(%class.anon) align 8 captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %.lr.ph, label %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit.thread"

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit"
  %.0714 = phi ptr [ %0, %.lr.ph ], [ %.0.i11, %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit" ] ; 3 uses
  %i.f = load i8, ptr %.0714, align 1, !tbaa !21  ; 3 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread: ; preds = %bb.b
  %i.h = zext nneg i8 %i.f to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.0714, i64 1
  br label %bb.c

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit: ; preds = %bb.b
  %i.j = zext i8 %i.f to i32
  %i.k = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714, i32 noundef %i.j) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit.thread", label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit
  %.0.i11 = phi ptr [ %i.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread ], [ %i.l, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit ] ; 3 uses
  %.sink.i10 = phi i64 [ %i.h, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread ], [ %i.m, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit ] ; 2 uses
  %i.o = trunc i64 %.sink.i10 to i32              ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !126  ; 2 uses
  %i.q = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.p)
  %i.r = tail call noundef ptr @_ZNK6google8protobuf14EnumDescriptor17FindValueByNumberEi(ptr noundef nonnull align 8 dereferenceable(88) %i.q, i32 noundef %i.o)
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %2, align 8, !tbaa !123    ; 7 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.u = load i32, ptr %i.s, align 4, !tbaa !31
  %i.v = and i32 %i.u, 1
  %i.w = icmp eq i32 %i.v, 0                      ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !162  ; 4 uses
  br i1 %i.w, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !21
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.v.i.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.s, %bb.d ]
  %i.ac = phi i32 [ %i.ab, %bb.e ], [ 2, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ae = icmp eq i32 %i.y, %i.ac
  %i.af = add nsw i32 %i.y, 1                     ; 3 uses
  br i1 %i.ae, label %bb.f, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i, !prof !47

bb.f:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %i.t, i1 noundef zeroext %i.w, i32 noundef %i.y, i32 noundef %i.af)
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !21
  %.pre38.i.i = load i32, ptr %i.x, align 4, !tbaa !162
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i: ; preds = %bb.f, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i
  %i.ah = phi i32 [ %.pre38.i.i, %bb.f ], [ %i.y, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ]
  %.pn.i.i = phi ptr [ %i.ag, %bb.f ], [ %.0.v.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ] ; 2 uses
  %.0.i.i = phi i1 [ false, %bb.f ], [ %i.w, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ]
  %.029.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  store i32 %i.af, ptr %i.x, align 4, !tbaa !162
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %.029.i.i, i64 %i.ai
  store i32 %i.o, ptr %i.aj, align 4, !tbaa !3
  %i.ak = load i32, ptr %i.x, align 4, !tbaa !162
  %i.al = icmp eq i32 %i.af, %i.ak
  tail call void @llvm.assume(i1 %i.al)
  br i1 %.0.i.i, label %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i
  %i.am = load ptr, ptr %i.ad, align 8
  br label %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit.i

_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit.i: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i, %bb.g
  %.sink23 = phi ptr [ %i.am, %bb.g ], [ %i.s, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i ]
  %i.an = icmp eq ptr %.pn.i.i, %.sink23
  tail call void @llvm.assume(i1 %i.an)
  br label %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit"

bb.h:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !131
  %sext = shl i64 %.sink.i10, 32
  %i.aq = ashr exact i64 %sext, 32
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !127
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !128
  %i.at = tail call noundef ptr @_ZNK6google8protobuf10Reflection20MutableUnknownFieldsEPNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %i.ar, ptr noundef %i.as)
  tail call void @_ZN6google8protobuf15UnknownFieldSet9AddVarintEim(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i32 noundef %i.ap, i64 noundef %i.aq)
  br label %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit"

"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit": ; preds = %bb.h, %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit.i
  %i.au = icmp ult ptr %.0.i11, %1
  br i1 %i.au, label %bb.b, label %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit.thread"

"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit.thread": ; preds = %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit", %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit ], [ %.0.i11, %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit" ]
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

declare noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread, !prof !344

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !21
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %.0.i.i.i, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !21
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #25
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !345
  %i.ag = load i64, ptr %1, align 8, !tbaa !348
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !374 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.am = sub nuw nsw i64 59, %i.al               ; 2 uses
  %i.an = load i8, ptr %i.aj, align 8, !tbaa !375 ; 3 uses
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.am, %i.ao
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.ap = lshr i64 %i.ac, 3                       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !376 ; 2 uses
  %i.as = icmp ugt i8 %i.an, 1
  br i1 %i.as, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.at = icmp eq i8 %i.an, 1
  br i1 %i.at, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !377
  store ptr %i.au, ptr %i.y, align 8, !tbaa !377
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.ar, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !375
  %i.av = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ap, %i.av
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aw = phi i64 [ %i.av, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aw, 3      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.ay = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ax, i8 0, i64 %i.ay, i1 false), !tbaa !377
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %i.aq, align 8, !tbaa !376
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 64)
  %i.az = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.az, ptr %i.aj, align 8, !tbaa !375
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !376
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.am ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !377
  store ptr %i.bd, ptr %i.y, align 8, !tbaa !379
  store ptr %i.y, ptr %i.bc, align 8, !tbaa !377
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.be = load i32, ptr %0, align 8, !tbaa !31
  %i.bf = or i32 %i.be, 1
  store i32 %i.bf, ptr %0, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bg, align 8, !tbaa !21
  ret void
}

declare noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

declare noundef zeroext i1 @_ZNK6google8protobuf15MapIteratorBaseILb0EEeqERKS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread, !prof !344

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !21
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #25
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !345
  %i.ae = load i64, ptr %1, align 8, !tbaa !348
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !374 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ak = sub nuw nsw i64 59, %i.aj               ; 2 uses
  %i.al = load i8, ptr %i.ah, align 8, !tbaa !375 ; 3 uses
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.ak, %i.am
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.an = lshr exact i64 %i.aa, 3                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !376 ; 2 uses
  %i.aq = icmp ugt i8 %i.al, 1
  br i1 %i.aq, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp eq i8 %i.al, 1
  br i1 %i.ar, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !377
  store ptr %i.as, ptr %i.w, align 8, !tbaa !377
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.am, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.ap, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !375
  %i.at = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.at
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.au = phi i64 [ %i.at, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.au, 3      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.av, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !377
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %i.ao, align 8, !tbaa !376
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.aw = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.aw, ptr %i.ah, align 8, !tbaa !375
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !376
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ak ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !377
  store ptr %i.ba, ptr %i.w, align 8, !tbaa !379
  store ptr %i.w, ptr %i.az, align 8, !tbaa !377
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.bb = load i32, ptr %0, align 8, !tbaa !31
  %i.bc = or i32 %i.bb, 1
  store i32 %i.bc, ptr %0, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bd, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread, !prof !344

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !21
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %.0.i.i.i, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !21
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #25
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !345
  %i.ag = load i64, ptr %1, align 8, !tbaa !348
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !374 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.am = sub nuw nsw i64 59, %i.al               ; 2 uses
  %i.an = load i8, ptr %i.aj, align 8, !tbaa !375 ; 3 uses
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.am, %i.ao
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.ap = lshr i64 %i.ac, 3                       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !376 ; 2 uses
  %i.as = icmp ugt i8 %i.an, 1
  br i1 %i.as, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.at = icmp eq i8 %i.an, 1
  br i1 %i.at, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !377
  store ptr %i.au, ptr %i.y, align 8, !tbaa !377
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.ar, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !375
  %i.av = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ap, %i.av
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aw = phi i64 [ %i.av, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aw, 3      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.ay = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ax, i8 0, i64 %i.ay, i1 false), !tbaa !377
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %i.aq, align 8, !tbaa !376
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 64)
  %i.az = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.az, ptr %i.aj, align 8, !tbaa !375
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !376
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.am ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !377
  store ptr %i.bd, ptr %i.y, align 8, !tbaa !379
  store ptr %i.y, ptr %i.bc, align 8, !tbaa !377
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.be = load i32, ptr %0, align 8, !tbaa !31
  %i.bf = or i32 %i.be, 1
  store i32 %i.bf, ptr %0, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bg, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldImE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread, !prof !344

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !21
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #25
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !345
  %i.ae = load i64, ptr %1, align 8, !tbaa !348
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !374 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ak = sub nuw nsw i64 59, %i.aj               ; 2 uses
  %i.al = load i8, ptr %i.ah, align 8, !tbaa !375 ; 3 uses
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.ak, %i.am
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.an = lshr exact i64 %i.aa, 3                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !376 ; 2 uses
  %i.aq = icmp ugt i8 %i.al, 1
  br i1 %i.aq, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp eq i8 %i.al, 1
  br i1 %i.ar, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !377
  store ptr %i.as, ptr %i.w, align 8, !tbaa !377
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.am, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.ap, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !375
  %i.at = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.at
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.au = phi i64 [ %i.at, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.au, 3      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.av, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !377
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %i.ao, align 8, !tbaa !376
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.aw = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.aw, ptr %i.ah, align 8, !tbaa !375
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !376
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ak ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !377
  store ptr %i.ba, ptr %i.w, align 8, !tbaa !379
  store ptr %i.w, ptr %i.az, align 8, !tbaa !377
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.bb = load i32, ptr %0, align 8, !tbaa !31
  %i.bc = or i32 %i.bb, 1
  store i32 %i.bc, ptr %0, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bd, align 8, !tbaa !21
  ret void
}

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %.thread, !prof !344

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !21
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %.0.i.i.i, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !21
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #25
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !345
  %i.ag = load i64, ptr %1, align 8, !tbaa !348
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !374 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.am = sub nuw nsw i64 59, %i.al               ; 2 uses
  %i.an = load i8, ptr %i.aj, align 8, !tbaa !375 ; 3 uses
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.am, %i.ao
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.ap = lshr i64 %i.ac, 3                       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !376 ; 2 uses
  %i.as = icmp ugt i8 %i.an, 1
  br i1 %i.as, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.at = icmp eq i8 %i.an, 1
  br i1 %i.at, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !377
  store ptr %i.au, ptr %i.y, align 8, !tbaa !377
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.ar, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !375
  %i.av = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ap, %i.av
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aw = phi i64 [ %i.av, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aw, 3      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.ay = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ax, i8 0, i64 %i.ay, i1 false), !tbaa !377
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %i.aq, align 8, !tbaa !376
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 64)
  %i.az = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.az, ptr %i.aj, align 8, !tbaa !375
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !376
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.am ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !377
  store ptr %i.bd, ptr %i.y, align 8, !tbaa !379
  store ptr %i.y, ptr %i.bc, align 8, !tbaa !377
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.be = load i32, ptr %0, align 8, !tbaa !31
  %i.bf = or i32 %i.be, 1
  store i32 %i.bf, ptr %0, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bg, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %.thread, !prof !344

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !21
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #25
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !345
  %i.ae = load i64, ptr %1, align 8, !tbaa !348
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !374 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ak = sub nuw nsw i64 59, %i.aj               ; 2 uses
  %i.al = load i8, ptr %i.ah, align 8, !tbaa !375 ; 3 uses
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.ak, %i.am
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.an = lshr exact i64 %i.aa, 3                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !376 ; 2 uses
  %i.aq = icmp ugt i8 %i.al, 1
  br i1 %i.aq, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp eq i8 %i.al, 1
  br i1 %i.ar, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !377
  store ptr %i.as, ptr %i.w, align 8, !tbaa !377
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.am, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.ap, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !375
  %i.at = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.at
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.au = phi i64 [ %i.at, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.au, 3      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.av, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !377
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %i.ao, align 8, !tbaa !376
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.aw = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.aw, ptr %i.ah, align 8, !tbaa !375
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !376
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ak ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !377
  store ptr %i.ba, ptr %i.w, align 8, !tbaa !379
  store ptr %i.w, ptr %i.az, align 8, !tbaa !377
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.bb = load i32, ptr %0, align 8, !tbaa !31
  %i.bc = or i32 %i.bb, 1
  store i32 %i.bc, ptr %0, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bd, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 8                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread, !prof !344

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 8
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64               ; 2 uses
  %i.j = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.j, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit
  %i.k = add nuw nsw i64 %i.i, 8
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #31
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit
  %i.m = add nuw nsw i64 %i.i, 15
  %i.n = and i64 %i.m, 4294967288
  %i.o = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.o, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.l, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !21
  %i.q = icmp sgt i32 %3, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.t
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.u = zext nneg i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = sext i32 %i.x to i64
  %i.z = add nsw i64 %i.y, 8                      ; 5 uses
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #25
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !345
  %i.ad = load i64, ptr %1, align 8, !tbaa !348
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !374 ; 5 uses
  %i.ah = icmp ugt i64 %i.z, 15
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.aj = sub nuw nsw i64 59, %i.ai               ; 2 uses
  %i.ak = load i8, ptr %i.ag, align 8, !tbaa !375 ; 3 uses
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.aj, %i.al
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.am = lshr i64 %i.z, 3                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !376 ; 2 uses
  %i.ap = icmp ugt i8 %i.ak, 1
  br i1 %i.ap, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp eq i8 %i.ak, 1
  br i1 %i.aq, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !377
  store ptr %i.ar, ptr %i.w, align 8, !tbaa !377
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.al, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.ao, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ag, align 8, !tbaa !375
  %i.as = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.am, %i.as
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.at = phi i64 [ %i.as, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.at, 3      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.z, %.idx24.i.i.i.i
  %i.av = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.au, i8 0, i64 %i.av, i1 false), !tbaa !377
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %i.an, align 8, !tbaa !376
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 64)
  %i.aw = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.aw, ptr %i.ag, align 8, !tbaa !375
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !376
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aj ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !377
  store ptr %i.ba, ptr %i.w, align 8, !tbaa !379
  store ptr %i.w, ptr %i.az, align 8, !tbaa !377
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.bb = load i32, ptr %0, align 8, !tbaa !31
  %i.bc = or i32 %i.bb, 1
  store i32 %i.bc, ptr %0, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bd, align 8, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { cold }
attributes #28 = { cold nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { nounwind allocsize(0) }

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
!7 = !{!8, !10, i64 8}
!8 = !{!"_ZTSN6google8protobuf8internal27UnknownFieldSetFieldSkipperE", !9, i64 0, !10, i64 8}
!9 = !{!"_ZTSN6google8protobuf8internal12FieldSkipperE"}
!10 = !{!"p1 _ZTSN6google8protobuf15UnknownFieldSetE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSN6google8protobuf2io16CodedInputStreamE", !14, i64 0, !14, i64 8, !15, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !16, i64 36, !16, i64 37, !16, i64 38, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !17, i64 64, !18, i64 72}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !11, i64 0}
!16 = !{!"bool", !5, i64 0}
!17 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !11, i64 0}
!18 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !11, i64 0}
!19 = !{!13, !14, i64 8}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!5, !5, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !5, i64 0}
!24 = !{!13, !4, i64 52}
!25 = !{ptr @_ZN6google8protobuf8internal10WireFormat11SkipMessageEPNS0_2io16CodedInputStreamEPNS0_15UnknownFieldSetE}
!26 = !{!13, !4, i64 32}
!27 = !{!13, !4, i64 56}
!28 = !{!29, !4, i64 4}
!29 = !{!"_ZTSN6google8protobuf8internal6SooRepILm16EEE", !30, i64 0, !4, i64 4, !5, i64 8}
!30 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj1EEE", !4, i64 0}
!31 = !{!30, !4, i64 0}
!32 = !{!33, !14, i64 0}
!33 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !14, i64 0, !14, i64 8, !5, i64 16, !34, i64 48, !16, i64 56, !16, i64 57, !16, i64 58, !16, i64 59}
!34 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !11, i64 0}
!35 = !{!36, !4, i64 4}
!36 = !{!"_ZTSN6google8protobuf12UnknownFieldE", !4, i64 0, !4, i64 4, !5, i64 8}
!37 = !{!36, !4, i64 0}
!38 = !{!"branch_weights", i32 1, i32 1999}
!39 = !{!"branch_weights", i32 0, i32 1}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = !{!44, !14, i64 0}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !23, i64 8, !5, i64 16}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!46 = !{!44, !23, i64 8}
!47 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!48 = distinct !{!48, !41}
!49 = distinct !{!49, !41}
!50 = distinct !{!50, !41}
!51 = distinct !{!51, !41}
!52 = !{!13, !17, i64 64}
!53 = !{!54, !60, i64 40}
!54 = !{!"_ZTSN6google8protobuf10DescriptorE", !55, i64 0, !16, i64 1, !16, i64 1, !5, i64 1, !5, i64 2, !56, i64 4, !4, i64 8, !57, i64 16, !58, i64 24, !59, i64 32, !60, i64 40, !61, i64 48, !61, i64 56, !62, i64 64, !63, i64 72, !59, i64 80, !64, i64 88, !65, i64 96, !62, i64 104, !66, i64 112, !67, i64 120, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156}
!55 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!56 = !{!"short", !5, i64 0}
!57 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !14, i64 0}
!58 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !11, i64 0}
!59 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !11, i64 0}
!60 = !{!"p1 _ZTSN6google8protobuf14MessageOptionsE", !11, i64 0}
!61 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !11, i64 0}
!62 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !11, i64 0}
!63 = !{!"p1 _ZTSN6google8protobuf15OneofDescriptorE", !11, i64 0}
!64 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !11, i64 0}
!65 = !{!"p1 _ZTSN6google8protobuf10Descriptor14ExtensionRangeE", !11, i64 0}
!66 = !{!"p1 _ZTSN6google8protobuf10Descriptor13ReservedRangeE", !11, i64 0}
!67 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !68, i64 0}
!68 = !{!"any p2 pointer", !11, i64 0}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!45, !14, i64 0}
!72 = !{!13, !15, i64 16}
!73 = !{!13, !4, i64 24}
!74 = !{!13, !4, i64 40}
!75 = !{!13, !4, i64 44}
!76 = !{!13, !4, i64 48}
!77 = !{ptr @_ZN6google8protobuf8internal10WireFormat9SkipFieldEPNS0_2io16CodedInputStreamEjPNS0_15UnknownFieldSetE}
!78 = distinct !{!78, !41}
!79 = !{!80, !5, i64 2}
!80 = !{!"_ZTSN6google8protobuf15FieldDescriptorE", !55, i64 0, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !5, i64 1, !5, i64 2, !5, i64 3, !16, i64 3, !16, i64 3, !5, i64 3, !4, i64 4, !57, i64 8, !58, i64 16, !81, i64 24, !59, i64 32, !5, i64 40, !5, i64 48, !82, i64 56, !61, i64 64, !61, i64 72, !5, i64 80}
!81 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !11, i64 0}
!82 = !{!"p1 _ZTSN6google8protobuf12FieldOptionsE", !11, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"_ZTSN6google8protobuf8internal14WireFormatLite8WireTypeE", !5, i64 0}
!85 = distinct !{!85, !41}
!86 = distinct !{!86, !41}
!87 = distinct !{!87, !41}
!88 = distinct !{!88, !41}
!89 = distinct !{!89, !41}
!90 = distinct !{!90, !41}
!91 = distinct !{!91, !41}
!92 = distinct !{!92, !41}
!93 = distinct !{!93, !41}
!94 = distinct !{!94, !41}
!95 = distinct !{!95, !41}
!96 = distinct !{!96, !41}
!97 = distinct !{!97, !41}
!98 = !{!57, !14, i64 0}
!99 = !{!13, !18, i64 72}
!100 = !{!101, !102, i64 0}
!101 = !{!"_ZTSN6google8protobuf8internal10WireFormat16MessageSetParserE", !102, i64 0, !59, i64 8, !103, i64 16}
!102 = !{!"p1 _ZTSN6google8protobuf7MessageE", !11, i64 0}
!103 = !{!"p1 _ZTSN6google8protobuf10ReflectionE", !11, i64 0}
!104 = !{!101, !59, i64 8}
!105 = !{!101, !103, i64 16}
!106 = !{!107, !4, i64 92}
!107 = !{!"_ZTSN6google8protobuf8internal12ParseContextE", !108, i64 0, !4, i64 88, !4, i64 92, !109, i64 96}
!108 = !{!"_ZTSN6google8protobuf8internal18EpsCopyInputStreamE", !14, i64 0, !14, i64 8, !14, i64 16, !4, i64 24, !4, i64 28, !15, i64 32, !5, i64 40, !23, i64 72, !4, i64 80, !4, i64 84}
!109 = !{!"_ZTSN6google8protobuf8internal12ParseContext4DataE", !17, i64 0, !18, i64 8}
!110 = !{!108, !14, i64 0}
!111 = !{!108, !14, i64 8}
!112 = !{!108, !4, i64 28}
!113 = !{!"branch_weights", !"expected", i32 7631680, i32 2139851968}
!114 = !{!108, !4, i64 80}
!115 = !{!109, !17, i64 0}
!116 = !{!107, !4, i64 88}
!117 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!118 = !{!119, !23, i64 0}
!119 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !23, i64 0}
!120 = !{!121, !122, i64 0}
!121 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !122, i64 0}
!122 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !11, i64 0}
!123 = !{!124, !125, i64 0}
!124 = !{!"_ZTSZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEE3$_0", !125, i64 0, !62, i64 8, !103, i64 16, !102, i64 24, !122, i64 32}
!125 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIiEE", !11, i64 0}
!126 = !{!124, !62, i64 8}
!127 = !{!124, !103, i64 16}
!128 = !{!124, !102, i64 24}
!129 = !{!124, !122, i64 32}
end_hunk_1
begin_hunk_2_@llvm.smin.i64
!141 = !{!140, !138, i64 16}
!142 = !{!80, !59, i64 32}
!143 = !{!144, !144, i64 0}
!144 = !{!"_ZTSN6google8protobuf8internal19FieldDescriptorLite7CppTypeE", !5, i64 0}
!145 = !{!33, !16, i64 58}
!146 = !{!147, !147, i64 0}
!147 = !{!"p1 _ZTSN6google8protobuf6MapKeyE", !11, i64 0}
!148 = !{!149, !147, i64 0}
!149 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf6MapKeyESaIS2_EE17_Vector_impl_dataE", !147, i64 0, !147, i64 8, !147, i64 16}
!150 = !{!149, !147, i64 16}
!151 = !{!152, !11, i64 0}
!152 = !{!"_ZTSN6google8protobuf16MapValueConstRefE", !11, i64 0, !144, i64 8}
!153 = !{!152, !144, i64 8}
!154 = distinct !{!154, !41}
!155 = distinct !{!155, !41}
!156 = !{!157, !158, i64 0}
!157 = !{!"_ZTSNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE17_Vector_impl_dataE", !158, i64 0, !158, i64 8, !158, i64 16}
!158 = !{!"p2 _ZTSN6google8protobuf7MessageE", !68, i64 0}
!159 = !{!157, !158, i64 8}
!160 = !{!157, !158, i64 16}
!161 = distinct !{!161, !41}
!162 = !{!163, !4, i64 4}
!163 = !{!"_ZTSN6google8protobuf8internal6SooRepILm8EEE", !30, i64 0, !4, i64 4, !5, i64 8}
!164 = distinct !{!164, !41}
!165 = distinct !{!165, !41}
!166 = distinct !{!166, !41}
!167 = distinct !{!167, !41}
!168 = distinct !{!168, !41}
!169 = distinct !{!169, !41}
!170 = !{!102, !102, i64 0}
!171 = !{!172, !4, i64 4}
!172 = !{!"_ZTSN6google8protobuf19EnumValueDescriptorE", !173, i64 0, !174, i64 1, !4, i64 4, !175, i64 8, !64, i64 16, !176, i64 24, !61, i64 32, !61, i64 40}
!173 = !{!"_ZTSN6google8protobuf8internal11SymbolBaseNILi0EEE", !55, i64 0}
!174 = !{!"_ZTSN6google8protobuf8internal11SymbolBaseNILi1EEE", !55, i64 0}
!175 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!176 = !{!"p1 _ZTSN6google8protobuf16EnumValueOptionsE", !11, i64 0}
!177 = distinct !{!177, !41}
!178 = !{!14, !14, i64 0}
!179 = !{i64 0, i64 16, !21, i64 16, i64 4, !143}
!180 = !{!149, !147, i64 8}
!181 = !{!182, !184}
!182 = distinct !{!182, !183, !"_ZSt19__relocate_object_aIN6google8protobuf6MapKeyES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!183 = distinct !{!183, !"_ZSt19__relocate_object_aIN6google8protobuf6MapKeyES2_SaIS2_EEvPT_PT0_RT1_"}
!184 = distinct !{!184, !183, !"_ZSt19__relocate_object_aIN6google8protobuf6MapKeyES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!185 = distinct !{!185, !41}
!186 = distinct !{!186, !41}
!187 = !{!188, !188, i64 0}
!188 = !{!"vtable pointer", !6, i64 0}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZNK6google8protobuf10Reflection19GetRepeatedFieldRefINS0_7MessageEEENS0_16RepeatedFieldRefIT_vEERKS3_PKNS0_15FieldDescriptorE: argument 0"}
!191 = distinct !{!191, !"_ZNK6google8protobuf10Reflection19GetRepeatedFieldRefINS0_7MessageEEENS0_16RepeatedFieldRefIT_vEERKS3_PKNS0_15FieldDescriptorE"}
!192 = distinct !{null}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE5beginEv: argument 0"}
!195 = distinct !{!195, !"_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE5beginEv"}
!196 = !{!197, !11, i64 0}
!197 = !{!"_ZTSN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEE", !11, i64 0, !198, i64 8, !11, i64 16, !199, i64 24}
!198 = !{!"p1 _ZTSN6google8protobuf8internal21RepeatedFieldAccessorE", !11, i64 0}
!199 = !{!"_ZTSSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EE", !200, i64 0}
!200 = !{!"_ZTSSt15__uniq_ptr_dataIN6google8protobuf7MessageESt14default_deleteIS2_ELb1ELb1EE", !201, i64 0}
!201 = !{!"_ZTSSt15__uniq_ptr_implIN6google8protobuf7MessageESt14default_deleteIS2_EE", !202, i64 0}
!202 = !{!"_ZTSSt5tupleIJPN6google8protobuf7MessageESt14default_deleteIS2_EEE", !203, i64 0}
!203 = !{!"_ZTSSt11_Tuple_implILm0EJPN6google8protobuf7MessageESt14default_deleteIS2_EEE", !204, i64 0}
!204 = !{!"_ZTSSt10_Head_baseILm0EPN6google8protobuf7MessageELb0EE", !102, i64 0}
!205 = !{!197, !198, i64 8}
!206 = distinct !{null}
!207 = !{!197, !11, i64 16}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE3endEv: argument 0"}
!210 = distinct !{!210, !"_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE3endEv"}
!211 = distinct !{null}
!212 = distinct !{null}
!213 = distinct !{ptr @_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev, null, null}
!214 = distinct !{null}
!215 = distinct !{null}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZN6google8protobuf13RepeatedFieldIiE18UninitializedCopyNEPKiiPi: argument 0"}
!218 = distinct !{!218, !"_ZN6google8protobuf13RepeatedFieldIiE18UninitializedCopyNEPKiiPi"}
!219 = !{!220}
!220 = distinct !{!220, !218, !"_ZN6google8protobuf13RepeatedFieldIiE18UninitializedCopyNEPKiiPi: argument 1"}
!221 = !{!"branch_weights", i32 2146409, i32 -4292818, i32 2146409}
!222 = !{!217, !220}
!223 = distinct !{!223, !41}
!224 = distinct !{!224, !41}
!225 = distinct !{!225, !41}
!226 = distinct !{!226, !41}
!227 = distinct !{!227, !41}
!228 = distinct !{!228, !41}
!229 = distinct !{!229, !41}
!230 = distinct !{null}
!231 = distinct !{!231, !41}
!232 = distinct !{null}
!233 = distinct !{!233, !41}
!234 = distinct !{!234, !41}
!235 = !{!236, !23, i64 0}
!236 = !{!"_ZTSN4absl12lts_2025051213cord_internal7CordRepE", !23, i64 0, !237, i64 8, !5, i64 12, !5, i64 13}
!237 = !{!"_ZTSN4absl12lts_2025051213cord_internal16RefcountAndFlagsE", !238, i64 0}
!238 = !{!"_ZTSSt6atomicIiE", !239, i64 0}
!239 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!240 = distinct !{!240, !41}
!241 = distinct !{!241, !41}
!242 = !{!243, !245}
!243 = distinct !{!243, !244, !"_ZN6google8protobuf13RepeatedFieldIlE18UninitializedCopyNEPKliPl: argument 0"}
!244 = distinct !{!244, !"_ZN6google8protobuf13RepeatedFieldIlE18UninitializedCopyNEPKliPl"}
!245 = distinct !{!245, !244, !"_ZN6google8protobuf13RepeatedFieldIlE18UninitializedCopyNEPKliPl: argument 1"}
!246 = !{!243}
!247 = !{!245}
!248 = !{!249}
!249 = distinct !{!249, !250, !"_ZN6google8protobuf13RepeatedFieldIjE18UninitializedCopyNEPKjiPj: argument 0"}
!250 = distinct !{!250, !"_ZN6google8protobuf13RepeatedFieldIjE18UninitializedCopyNEPKjiPj"}
!251 = !{!252}
!252 = distinct !{!252, !250, !"_ZN6google8protobuf13RepeatedFieldIjE18UninitializedCopyNEPKjiPj: argument 1"}
!253 = !{!249, !252}
!254 = !{!255, !257}
!255 = distinct !{!255, !256, !"_ZN6google8protobuf13RepeatedFieldImE18UninitializedCopyNEPKmiPm: argument 0"}
!256 = distinct !{!256, !"_ZN6google8protobuf13RepeatedFieldImE18UninitializedCopyNEPKmiPm"}
!257 = distinct !{!257, !256, !"_ZN6google8protobuf13RepeatedFieldImE18UninitializedCopyNEPKmiPm: argument 1"}
!258 = !{!255}
!259 = !{!257}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZN6google8protobuf13RepeatedFieldIfE18UninitializedCopyNEPKfiPf: argument 0"}
!262 = distinct !{!262, !"_ZN6google8protobuf13RepeatedFieldIfE18UninitializedCopyNEPKfiPf"}
!263 = !{!264}
!264 = distinct !{!264, !262, !"_ZN6google8protobuf13RepeatedFieldIfE18UninitializedCopyNEPKfiPf: argument 1"}
!265 = !{!261, !264}
!266 = !{!267, !267, i64 0}
!267 = !{!"float", !5, i64 0}
!268 = !{!269, !271}
!269 = distinct !{!269, !270, !"_ZN6google8protobuf13RepeatedFieldIdE18UninitializedCopyNEPKdiPd: argument 0"}
!270 = distinct !{!270, !"_ZN6google8protobuf13RepeatedFieldIdE18UninitializedCopyNEPKdiPd"}
!271 = distinct !{!271, !270, !"_ZN6google8protobuf13RepeatedFieldIdE18UninitializedCopyNEPKdiPd: argument 1"}
!272 = !{!269}
!273 = !{!271}
!274 = !{!275, !275, i64 0}
!275 = !{!"double", !5, i64 0}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZN6google8protobuf13RepeatedFieldIbE18UninitializedCopyNEPKbiPb: argument 0"}
!278 = distinct !{!278, !"_ZN6google8protobuf13RepeatedFieldIbE18UninitializedCopyNEPKbiPb"}
!279 = !{!280}
!280 = distinct !{!280, !278, !"_ZN6google8protobuf13RepeatedFieldIbE18UninitializedCopyNEPKbiPb: argument 1"}
!281 = !{!"branch_weights", !"expected", i32 2145337239, i32 2146409}
!282 = !{!277, !280}
!283 = !{!16, !16, i64 0}
!284 = distinct !{!284, !41}
!285 = !{ptr @_ZN6google8protobuf8internal10WireFormat22MessageSetItemByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE}
!286 = !{i64 0, i64 8, !287, i64 8, i64 8, !288}
!287 = !{!17, !17, i64 0}
!288 = !{!18, !18, i64 0}
!289 = !{!108, !4, i64 84}
!290 = !{!108, !14, i64 16}
!291 = !{!108, !23, i64 72}
!292 = distinct !{!292, !41}
!293 = !{!294, !144, i64 16}
!294 = !{!"_ZTSN6google8protobuf6MapKeyE", !5, i64 0, !144, i64 16}
!295 = distinct !{!295, !41}
!296 = distinct !{!296, !41}
!297 = distinct !{!297, !41}
!298 = distinct !{!298, !41}
!299 = distinct !{!299, !41}
!300 = distinct !{!300, !41}
!301 = distinct !{!301, !41}
!302 = distinct !{!302, !41}
!303 = distinct !{!303, !41}
!304 = distinct !{!304, !41}
!305 = distinct !{!305, !41}
!306 = distinct !{null, null}
!307 = distinct !{!307, !41}
!308 = distinct !{!308, !41}
!309 = distinct !{!309, !41}
!310 = distinct !{!310, !41}
!311 = distinct !{!311, !41}
!312 = distinct !{!312, !41}
!313 = distinct !{!313, !41}
!314 = distinct !{!314, !41}
!315 = !{!"branch_weights", !"expected", i32 2146946911, i32 536737}
!316 = distinct !{!316, !41}
!317 = distinct !{!317, !41}
!318 = distinct !{!318, !41}
!319 = !{!320, !62, i64 0}
!320 = !{!"_ZTSN6google8protobuf16DynamicMapSorter25MapEntryMessageComparatorE", !62, i64 0}
!321 = distinct !{!321, !41}
!322 = distinct !{!322, !41}
!323 = !{!324}
!324 = distinct !{!324, !325}
!325 = distinct !{!325, !"LVerDomain"}
!326 = !{!327}
!327 = distinct !{!327, !325}
!328 = distinct !{!328, !41, !329, !330}
!329 = !{!"llvm.loop.isvectorized", i32 1}
!330 = !{!"llvm.loop.unroll.runtime.disable"}
!331 = distinct !{!331, !41, !329}
!332 = !{!333}
!333 = distinct !{!333, !334}
!334 = distinct !{!334, !"LVerDomain"}
!335 = !{!336}
!336 = distinct !{!336, !334}
!337 = distinct !{!337, !41, !329, !330}
!338 = distinct !{!338, !339}
!339 = !{!"llvm.loop.unroll.disable"}
!340 = distinct !{!340, !41, !329}
!341 = distinct !{!341, !339}
!342 = distinct !{!342, !41}
!343 = distinct !{!343, !41}
!344 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!345 = !{!346, !23, i64 8}
!346 = !{!"_ZTSN6google8protobuf8internal15ThreadSafeArena11ThreadCacheE", !23, i64 0, !23, i64 8, !347, i64 16}
!347 = !{!"p1 _ZTSN6google8protobuf8internal11SerialArenaE", !11, i64 0}
!348 = !{!349, !23, i64 0}
!349 = !{!"_ZTSN6google8protobuf8internal15ThreadSafeArenaE", !23, i64 0, !350, i64 8, !351, i64 16, !354, i64 24, !355, i64 32, !358, i64 40, !11, i64 160}
!350 = !{!"_ZTSN6google8protobuf8internal25TaggedAllocationPolicyPtrE", !23, i64 0}
!351 = !{!"_ZTSSt6atomicIPN6google8protobuf8internal15ThreadSafeArena16SerialArenaChunkEE", !352, i64 0}
!352 = !{!"_ZTSSt13__atomic_baseIPN6google8protobuf8internal15ThreadSafeArena16SerialArenaChunkEE", !353, i64 0}
!353 = !{!"p1 _ZTSN6google8protobuf8internal15ThreadSafeArena16SerialArenaChunkE", !11, i64 0}
!354 = !{!"_ZTSN6google8protobuf8internal26ThreadSafeArenaStatsHandleE"}
!355 = !{!"_ZTSN4absl12lts_202505125MutexE", !356, i64 0}
!356 = !{!"_ZTSSt6atomicIlE", !357, i64 0}
!357 = !{!"_ZTSSt13__atomic_baseIlE", !23, i64 0}
!358 = !{!"_ZTSN6google8protobuf8internal11SerialArenaE", !5, i64 0, !14, i64 8, !359, i64 16, !362, i64 24, !14, i64 32, !364, i64 40, !366, i64 48, !367, i64 56, !370, i64 64, !364, i64 72, !371, i64 80, !364, i64 112}
!359 = !{!"_ZTSSt6atomicIPN6google8protobuf8internal10ArenaBlockEE", !360, i64 0}
!360 = !{!"_ZTSSt13__atomic_baseIPN6google8protobuf8internal10ArenaBlockEE", !361, i64 0}
!361 = !{!"p1 _ZTSN6google8protobuf8internal10ArenaBlockE", !11, i64 0}
!362 = !{!"_ZTSSt6atomicIPcE", !363, i64 0}
!363 = !{!"_ZTSSt13__atomic_baseIPcE", !14, i64 0}
!364 = !{!"_ZTSSt6atomicImE", !365, i64 0}
!365 = !{!"_ZTSSt13__atomic_baseImE", !23, i64 0}
!366 = !{!"p2 _ZTSN6google8protobuf8internal11SerialArena11CachedBlockE", !68, i64 0}
!367 = !{!"_ZTSSt6atomicIPN6google8protobuf8internal11StringBlockEE", !368, i64 0}
!368 = !{!"_ZTSSt13__atomic_baseIPN6google8protobuf8internal11StringBlockEE", !369, i64 0}
!369 = !{!"p1 _ZTSN6google8protobuf8internal11StringBlockE", !11, i64 0}
!370 = !{!"p1 _ZTSN6google8protobuf8internal15ThreadSafeArenaE", !11, i64 0}
!371 = !{!"_ZTSN6google8protobuf8internal7cleanup9ChunkListE", !372, i64 0, !373, i64 8, !373, i64 16, !14, i64 24}
!372 = !{!"p1 _ZTSN6google8protobuf8internal7cleanup9ChunkList5ChunkE", !11, i64 0}
!373 = !{!"p1 _ZTSN6google8protobuf8internal7cleanup11CleanupNodeE", !11, i64 0}
!374 = !{!346, !347, i64 16}
!375 = !{!358, !5, i64 0}
!376 = !{!358, !366, i64 48}
!377 = !{!378, !378, i64 0}
!378 = !{!"p1 _ZTSN6google8protobuf8internal11SerialArena11CachedBlockE", !11, i64 0}
!379 = !{!380, !378, i64 0}
!380 = !{!"_ZTSN6google8protobuf8internal11SerialArena11CachedBlockE", !378, i64 0}
end_hunk_2
