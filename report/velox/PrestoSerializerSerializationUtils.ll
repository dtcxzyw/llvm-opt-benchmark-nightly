inline.NumInlined: 33059
inline.NumDeleted: 6234
begin_hunk_0_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SJ_:bb.a
  %i.u = select i1 %i.s, i32 %i.o, i32 %i.t
  %i.v = icmp slt i32 %i.u, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.w = load i32, ptr %.sroa.08.021, align 4, !tbaa !3
  br i1 %i.v, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = ptrtoint ptr %.sroa.08.021 to i64
  %i.y = sub i64 %i.x, %i.k                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.ac = sub nsw i64 0, %i.z
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ac
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ad, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = icmp eq i64 %i.y, 4
  br i1 %i.ae, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.ag = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !939
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.a, ptr %3, align 8, !tbaa !940
  store ptr %4, ptr %i.i, align 8, !tbaa !730
  store ptr %5, ptr %i.j, align 8, !tbaa !730
  %i.ai = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_12UnknownValueEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = load i8, ptr %i.q, align 1, !tbaa !1001, !range !8, !noundef !9
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = sub nsw i32 0, %i.ai
  %i.am = select i1 %i.ak, i32 %i.ai, i32 %i.al
  %i.an = icmp slt i32 %i.am, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br i1 %i.an, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.sroa.03.06.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.08.021, %bb.g ] ; 2 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.03.06.i, i64 -4 ; 3 uses
  %i.ao = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.ao, ptr %.sroa.03.06.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !939
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.a, ptr %3, align 8, !tbaa !940
  store ptr %4, ptr %i.i, align 8, !tbaa !730
  store ptr %5, ptr %i.j, align 8, !tbaa !730
  %i.aq = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_12UnknownValueEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = load i8, ptr %i.q, align 1, !tbaa !1001, !range !8, !noundef !9
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = sub nsw i32 0, %i.aq
  %i.au = select i1 %i.as, i32 %i.aq, i32 %i.at
  %i.av = icmp slt i32 %i.au, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br i1 %i.av, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, !llvm.loop !1025

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %.lr.ph.i ]
  store i32 %i.w, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.aw = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.aw, label %.loopexit, label %bb.b, !llvm.loop !1029

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SJ_SK_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.157", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph28

bb.b:                                             ; preds = %.lr.ph28
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph28, !llvm.loop !1030

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.ac, %bb.b ] ; 2 uses
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.z, %bb.b ]
  %i.i = add nsw i64 %.lcssa, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.08.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %.08.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_T2_(ptr %0, i64 noundef %.08.i.i, i64 noundef %.lcssa, i32 noundef %i.l, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %3)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.m = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !1031

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %storemerge17.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %i.p = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.p, ptr %i.n, align 4, !tbaa !3
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i32 noundef %i.o, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %3)
  %i.t = icmp sgt i64 %i.r, 4
  br i1 %i.t, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !1032

.lr.ph28:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1727 = phi ptr [ %i.z, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01826 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.ac, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.01826, -1                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %storemerge1727, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_SN_SJ_(ptr %0, ptr nonnull %i.f, ptr %i.x, ptr nonnull %i.y, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %3)
  %i.z = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEET_SN_SN_SN_SJ_(ptr nonnull %i.f, ptr %storemerge1727, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %4) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SJ_SK_(ptr %i.z, ptr %storemerge1727, i64 noundef %i.v, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %3)
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.a
  %i.ac = ashr exact i64 %i.ab, 2                 ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, 16
  br i1 %i.ad, label %bb.b, label %.loopexit, !llvm.loop !1030

.loopexit:                                        ; preds = %.lr.ph28, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_T2_(ptr %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.158", align 8 ; 4 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !1033, !nonnull !9, !align !640
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1035
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !9, !align !846
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us: ; preds = %.lr.ph, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us
  %.039.us = phi i64 [ %i.k, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.j = shl i64 %.039.us, 1
  %i.k = add i64 %i.j, 2                          ; 4 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %0, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = getelementptr inbounds [4 x i8], ptr %0, i64 %.039.us
  store i32 %i.m, ptr %i.n, align 4, !tbaa !3
  %i.o = icmp slt i64 %i.k, %i.b
  br i1 %i.o, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us, label %._crit_edge, !llvm.loop !1037

_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread
  %.039 = phi i64 [ %i.ap, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.p = shl i64 %.039, 1                         ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 4 uses
  %i.r = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 6
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !121
  %i.aa = and i64 %i.w, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.ab, %i.z                     ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ac, 0          ; 2 uses
  %i.ad = zext i32 %i.u to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !121
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai                    ; 2 uses
  %.not.i.i.i11.i.i = icmp eq i64 %i.aj, 0
  %or.cond.i.i = or i1 %.not.i.i.i.i.i, %.not.i.i.i11.i.i
  br i1 %or.cond.i.i, label %bb.b, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread

bb.b:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.i, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %.split [
    i32 1, label %.split41
    i32 0, label %bb.d
  ]

.split41:                                         ; preds = %bb.b
  %i.ak = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.c, label %.critedge.i.i

bb.c:                                             ; preds = %.split41
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #48
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.al = or i64 %i.ac, %i.aj
  %or.cond.i.i.i = icmp eq i64 %i.al, 0
  br i1 %or.cond.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit

.split:                                           ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #48
  unreachable

.critedge.i.i:                                    ; preds = %.split41
  tail call void @_ZSt27__throw_bad_optional_accessv() #48
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit: ; preds = %bb.d
  %i.am = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.an = xor i1 %.not.i.i.i.i.i, %i.am
  %.fr = freeze i1 %i.an
  %spec.select = select i1 %.fr, i64 %i.q, i64 %i.r ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, %bb.d
  %i.ao = phi i32 [ %i.v, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i ], [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit ], [ %i.v, %bb.d ]
  %i.ap = phi i64 [ %i.q, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i ], [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit ], [ %i.q, %bb.d ] ; 3 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.039
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !3
  %i.ar = icmp slt i64 %i.ap, %i.b
  br i1 %i.ar, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %._crit_edge, !llvm.loop !1037

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.k, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us ], [ %i.ap, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread ] ; 5 uses
  %i.as = and i64 %2, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.au = add nsw i64 %2, -2
  %i.av = ashr exact i64 %i.au, 1
  %i.aw = icmp eq i64 %.0.lcssa, %i.av
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = shl nsw i64 %.0.lcssa, 1
  %i.ay = or disjoint i64 %i.ax, 1                ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.1 = phi i64 [ %i.ay, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1038
  call void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_RT2_(ptr %0, i64 noundef %.1, i64 noundef %1, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.09.in22 = add nsw i64 %1, -1
  %.0923 = sdiv i64 %.09.in22, 2                  ; 2 uses
  %i.a = icmp sgt i64 %1, %2
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !1033, !nonnull !9, !align !640
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1035
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !9, !align !846 ; 2 uses
  br i1 %.not.i.i.i.i, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.h = zext i32 %3 to i64                       ; 2 uses
  %i.i = and i64 %i.h, 63
  %i.j = shl nuw i64 1, %i.i
  %i.k = lshr i64 %i.h, 6
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !121
  %i.n = and i64 %i.m, %i.j
  %.fr = freeze i64 %i.n
  %.not.i.i.i11.i.i = icmp eq i64 %.fr, 0
  br i1 %.not.i.i.i11.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us34, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us34: ; preds = %.lr.ph.split, %bb.c
  %.0925.us35 = phi i64 [ %.09.us44, %bb.c ], [ %.0923, %.lr.ph.split ] ; 5 uses
  %.024.us36 = phi i64 [ %.0925.us35, %bb.c ], [ %1, %.lr.ph.split ] ; 2 uses
  %.sroa.0.0.copyload.i.i.us38 = load i64, ptr %i.g, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i.us39 = lshr i64 %.sroa.0.0.copyload.i.i.us38, 32
  %.sroa.37.0.extract.trunc.i.i.i.us40 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i.us39 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i.us40, label %.split [
    i32 1, label %.split30
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us34
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %.0925.us35
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = and i64 %i.q, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = lshr i64 %i.q, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !121
  %i.w = and i64 %i.s, %i.v
  %.not.i.i.i.i.i.us = icmp eq i64 %i.w, 0
  %i.x = trunc i64 %.sroa.0.0.copyload.i.i.us38 to i1
  %or.cond.demorgan.us42 = or i1 %.not.i.i.i.i.i.us, %i.x
  br i1 %or.cond.demorgan.us42, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %.024.us36
  store i32 %i.p, ptr %i.y, align 4, !tbaa !3
  %.09.in.us43 = add nsw i64 %.0925.us35, -1
  %.09.us44 = sdiv i64 %.09.in.us43, 2
  %i.z = icmp sgt i64 %.0925.us35, %2
  br i1 %i.z, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us34, label %.critedge, !llvm.loop !1039

_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %.lr.ph.split, %bb.g
  %.0925 = phi i64 [ %.09, %bb.g ], [ %.0923, %.lr.ph.split ] ; 5 uses
  %.024 = phi i64 [ %.0925, %bb.g ], [ %1, %.lr.ph.split ] ; 3 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.0925
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !121
  %i.ag = and i64 %i.ac, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.ah, %i.af
  %.not.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.g, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %.split [
    i32 1, label %.split30
    i32 0, label %bb.f
  ]

.split30:                                         ; preds = %bb.d, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us34
  %.us-phi46 = phi i64 [ %.sroa.0.0.copyload.i.i.us38, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us34 ], [ %.sroa.0.0.copyload.i.i, %bb.d ]
  %i.aj = and i64 %.us-phi46, 65536
  %.not.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %.split30
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #48
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ak = trunc i64 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.ak, label %bb.g, label %.critedge

.split:                                           ; preds = %bb.d, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i.us34
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #48
  unreachable

.critedge.i.i:                                    ; preds = %.split30
  tail call void @_ZSt27__throw_bad_optional_accessv() #48
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %.024
  store i32 %i.ab, ptr %i.al, align 4, !tbaa !3
  %.09.in = add nsw i64 %.0925, -1
  %.09 = sdiv i64 %.09.in, 2
  %i.am = icmp sgt i64 %.0925, %2
  br i1 %i.am, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %.critedge, !llvm.loop !1039

.critedge:                                        ; preds = %bb.g, %bb.f, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, %bb.c, %bb.b, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %.024.us36, %bb.b ], [ %1, %.lr.ph ], [ %.0925.us35, %bb.c ], [ %.0925, %bb.g ], [ %.024, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i ], [ %.024, %bb.f ]
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa
  store i32 %3, ptr %i.an, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_SN_SJ_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.157") align 8 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !1033, !nonnull !9, !align !640
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1035
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 11 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null          ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !3
  %i.f = load i32, ptr %1, align 4, !tbaa !3
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = lshr i64 %i.g, 6
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !121
  %i.k = and i64 %i.g, 63
  %i.l = shl nuw i64 1, %i.k
  %i.m = and i64 %i.l, %i.j
  %.not.i.i.i.i.i = icmp eq i64 %i.m, 0
  %i.n = zext i32 %i.e to i64                     ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !121
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not.i.i.i11.i.i = icmp eq i64 %i.t, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.b, %bb.a
  %i.u = phi i1 [ %.not.i.i.i.i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.v = phi i1 [ %.not.i.i.i11.i.i, %bb.b ], [ false, %bb.a ] ; 2 uses
  %or.cond.i.i = or i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread

bb.c:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_0
begin_hunk_1_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_:bb.a
  %i.x = ptrtoint ptr %.sroa.08.021 to i64
  %i.y = sub i64 %i.x, %i.k                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.ac = sub nsw i64 0, %i.z
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ac
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ad, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = icmp eq i64 %i.y, 4
  br i1 %i.ae, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.ag = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !939
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.a, ptr %3, align 8, !tbaa !940
  store ptr %4, ptr %i.i, align 8, !tbaa !730
  store ptr %5, ptr %i.j, align 8, !tbaa !730
  %i.ai = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_12UnknownValueEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = load i8, ptr %i.q, align 1, !tbaa !1001, !range !8, !noundef !9
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = sub nsw i32 0, %i.ai
  %i.am = select i1 %i.ak, i32 %i.ai, i32 %i.al
  %i.an = icmp slt i32 %i.am, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br i1 %i.an, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.sroa.03.06.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.08.021, %bb.g ] ; 2 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.03.06.i, i64 -4 ; 3 uses
  %i.ao = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.ao, ptr %.sroa.03.06.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !939
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.a, ptr %3, align 8, !tbaa !940
  store ptr %4, ptr %i.i, align 8, !tbaa !730
  store ptr %5, ptr %i.j, align 8, !tbaa !730
  %i.aq = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_12UnknownValueEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = load i8, ptr %i.q, align 1, !tbaa !1001, !range !8, !noundef !9
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = sub nsw i32 0, %i.aq
  %i.au = select i1 %i.as, i32 %i.aq, i32 %i.at
  %i.av = icmp slt i32 %i.au, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br i1 %i.av, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, !llvm.loop !1079

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %.lr.ph.i ]
  store i32 %i.w, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.aw = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.aw, label %.loopexit, label %bb.b, !llvm.loop !1083

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_SM_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.177") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.177", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.177", align 8 ; 4 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.177", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph22

bb.b:                                             ; preds = %.lr.ph22
  %i.h = icmp eq i64 %i.j, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1084

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_SP_SL_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.177") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEET_SP_SP_SP_SL_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.177") align 8 %5) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_SM_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.177") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1084

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.split42:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.split42
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit
  %.sroa.0.043 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.043, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = sdiv i64 %i.k, 2                         ; 2 uses
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.n = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1085
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i4, label %.lr.ph.i.i.us, label %.lr.ph.i.i.preheader.split

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.us
  %.034.i.i.us = phi i64 [ %i.r, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.q = shl i64 %.034.i.i.us, 1
  %i.r = add i64 %i.q, 2                          ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i.us
  store i32 %i.t, ptr %i.u, align 4, !tbaa !3
  %i.v = icmp slt i64 %i.r, %i.l
  br i1 %i.v, label %.lr.ph.i.i.us, label %._crit_edge.i.i, !llvm.loop !1087

.lr.ph.i.i.preheader.split:                       ; preds = %.lr.ph.i.i.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1088, !nonnull !9, !align !640
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !444  ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread
  %.034.i.i = phi i64 [ %i.bf, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread ], [ 0, %.lr.ph.i.i.preheader.split ] ; 2 uses
  %i.z = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.aa = add i64 %i.z, 2                         ; 4 uses
  %i.ab = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3  ; 3 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !121
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am                    ; 2 uses
  %.not.i.i.i.i.i5 = icmp eq i64 %i.ap, 0         ; 2 uses
  %i.aq = sext i32 %i.ae to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = lshr i64 %i.at, 6
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !121
  %i.ax = and i64 %i.at, 63
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = and i64 %i.ay, %i.aw                    ; 2 uses
  %.not.i.i.i11.i.i6 = icmp eq i64 %i.az, 0
  %or.cond.i.i8 = or i1 %.not.i.i.i.i.i5, %.not.i.i.i11.i.i6
  br i1 %or.cond.i.i8, label %bb.b, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread

bb.b:                                             ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i.i10 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i11 = lshr i64 %.sroa.0.0.copyload.i.i10, 32
  %.sroa.37.0.extract.trunc.i.i.i12 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i11 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i12, label %.split [
    i32 1, label %.split40
    i32 0, label %bb.d
  ]

.split40:                                         ; preds = %bb.b
  %i.ba = and i64 %.sroa.0.0.copyload.i.i10, 65536
  %.not.i.i.i15 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i15, label %bb.c, label %.critedge.i.i16

bb.c:                                             ; preds = %.split40
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #48
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.bb = or i64 %i.ap, %i.az
  %or.cond.i.i.i13 = icmp eq i64 %i.bb, 0
  br i1 %or.cond.i.i.i13, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit

.split:                                           ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #48
  unreachable

.critedge.i.i16:                                  ; preds = %.split40
  tail call void @_ZSt27__throw_bad_optional_accessv() #48
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit: ; preds = %bb.d
  %i.bc = trunc i64 %.sroa.0.0.copyload.i.i10 to i1
  %i.bd = xor i1 %.not.i.i.i.i.i5, %i.bc
  %.fr = freeze i1 %i.bd
  %spec.select = select i1 %.fr, i64 %i.aa, i64 %i.ab ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit, %.lr.ph.i.i, %bb.d
  %i.be = phi i32 [ %i.af, %.lr.ph.i.i ], [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit ], [ %i.af, %bb.d ]
  %i.bf = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit ], [ %i.aa, %bb.d ] ; 3 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !3
  %i.bh = icmp slt i64 %i.bf, %i.l
  br i1 %i.bh, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1087

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread, %.lr.ph.i.i.us, %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.r, %.lr.ph.i.i.us ], [ %i.bf, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread ] ; 5 uses
  %i.bi = and i64 %i.i, 4
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.bk = add nsw i64 %i.j, -2
  %i.bl = ashr exact i64 %i.bk, 1
  %i.bm = icmp eq i64 %.0.lcssa.i.i, %i.bl
  br i1 %i.bm, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.bn = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bo = or disjoint i64 %i.bn, 1                ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.f, %.thread.i
  %.1.i11.i = phi i64 [ %i.bo, %.thread.i ], [ %.0.lcssa.i.i, %bb.f ]
  %i.bs = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1085
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !83 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, null
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.bw = sext i32 %i.f to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.preheader.i
  %.018.i.i.i = phi i64 [ %.0919.i.i67.i, %bb.m ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i67.i = lshr i64 %.0919.in.i.i.i, 1    ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0919.i.i67.i ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !1088, !nonnull !9, !align !640
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !444 ; 2 uses
  %i.cb = sext i32 %i.by to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = lshr i64 %i.ce, 6
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !121
  %i.ci = and i64 %i.ce, 63
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.cj, %i.ch
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.bw
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = lshr i64 %i.cn, 6
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !121
  %i.cr = and i64 %i.cn, 63
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = and i64 %i.cs, %i.cq
  %.not.i.i.i11.i.i = icmp eq i64 %i.ct, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.cu = phi i1 [ %.not.i.i.i.i.i, %bb.g ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.cv = phi i1 [ %.not.i.i.i11.i.i, %bb.g ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.cu, %i.cv
  br i1 %or.cond.i.i, label %bb.h, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit

bb.h:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %bb.l [
    i32 1, label %bb.i
    i32 0, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.cw = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i, label %bb.j, label %.critedge.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #48
  unreachable

bb.k:                                             ; preds = %bb.h
  %or.cond.i.i.i = and i1 %i.cu, %i.cv
  %i.cx = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.cy = xor i1 %i.cu, %i.cx
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.cy
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, label %bb.m

bb.l:                                             ; preds = %bb.h
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #48
  unreachable

.critedge.i.i:                                    ; preds = %bb.i
  tail call void @_ZSt27__throw_bad_optional_accessv() #48
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cz = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.da = getelementptr inbounds [4 x i8], ptr %0, i64 %.018.i.i.i
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0919.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, label %.lr.ph.i.i.i, !llvm.loop !1089

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit: ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, %bb.k, %bb.m, %bb.f
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.f ], [ %.018.i.i.i, %bb.k ], [ 0, %bb.m ], [ %.018.i.i.i, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i ]
  %i.db = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.db, align 4, !tbaa !3
  %i.dc = icmp sgt i64 %i.i, 4
  br i1 %i.dc, label %bb.a, label %._crit_edge, !llvm.loop !1090

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, %.split42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %.split45

.split45:                                         ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !352 ; 3 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !995 ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.k = and i64 %i.c, 4
  %i.l = icmp eq i64 %i.k, 0
  %i.m = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit, %.split45
  %.08 = phi i64 [ %i.g, %.split45 ], [ %i.da, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit ] ; 9 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  %i.s = icmp slt i64 %.08, %i.i
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.t = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !1085
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i9, label %.lr.ph.i.us, label %.lr.ph.i.preheader.split

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader, %.lr.ph.i.us
  %.034.i.us = phi i64 [ %i.x, %.lr.ph.i.us ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = shl i64 %.034.i.us, 1
  %i.x = add i64 %i.w, 2                          ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.us
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !3
  %i.ab = icmp slt i64 %i.x, %i.i
  br i1 %i.ab, label %.lr.ph.i.us, label %._crit_edge.i, !llvm.loop !1087

.lr.ph.i.preheader.split:                         ; preds = %.lr.ph.i.preheader
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !1088, !nonnull !9, !align !640
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !444 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread
  %.034.i = phi i64 [ %i.bk, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread ], [ %.08, %.lr.ph.i.preheader.split ] ; 2 uses
  %i.ae = shl i64 %.034.i, 1                      ; 2 uses
  %i.af = add i64 %i.ae, 2                        ; 4 uses
  %i.ag = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3  ; 3 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !121
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar                    ; 2 uses
  %.not.i.i.i.i.i10 = icmp eq i64 %i.au, 0        ; 2 uses
  %i.av = sext i32 %i.aj to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 6
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !121
  %i.bc = and i64 %i.ay, 63
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.bb                    ; 2 uses
  %.not.i.i.i11.i.i11 = icmp eq i64 %i.be, 0
  %or.cond.i.i13 = or i1 %.not.i.i.i.i.i10, %.not.i.i.i11.i.i11
  br i1 %or.cond.i.i13, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread

bb.c:                                             ; preds = %.lr.ph.i
  %.sroa.0.0.copyload.i.i15 = load i64, ptr %.sroa.0.sroa.2.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i16 = lshr i64 %.sroa.0.0.copyload.i.i15, 32
  %.sroa.37.0.extract.trunc.i.i.i17 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i16 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i17, label %.split [
    i32 1, label %.split43
    i32 0, label %bb.e
  ]

.split43:                                         ; preds = %bb.c
  %i.bf = and i64 %.sroa.0.0.copyload.i.i15, 65536
  %.not.i.i.i20 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i20, label %bb.d, label %.critedge.i.i21

bb.d:                                             ; preds = %.split43
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #48
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bg = or i64 %i.au, %i.be
  %or.cond.i.i.i18 = icmp eq i64 %i.bg, 0
  br i1 %or.cond.i.i.i18, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit

.split:                                           ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #48
  unreachable

.critedge.i.i21:                                  ; preds = %.split43
  tail call void @_ZSt27__throw_bad_optional_accessv() #48
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit: ; preds = %bb.e
  %i.bh = trunc i64 %.sroa.0.0.copyload.i.i15 to i1
  %i.bi = xor i1 %.not.i.i.i.i.i10, %i.bh
  %.fr = freeze i1 %i.bi
  %spec.select = select i1 %.fr, i64 %i.af, i64 %i.ag ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit, %.lr.ph.i, %bb.e
  %i.bj = phi i32 [ %i.ak, %.lr.ph.i ], [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit ], [ %i.ak, %bb.e ]
  %i.bk = phi i64 [ %i.af, %.lr.ph.i ], [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit ], [ %i.af, %bb.e ] ; 3 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !3
  %i.bm = icmp slt i64 %i.bk, %i.i
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1087

._crit_edge.i:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread, %.lr.ph.i.us, %bb.b
  %.0.lcssa.i = phi i64 [ %.08, %bb.b ], [ %i.x, %.lr.ph.i.us ], [ %i.bk, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread ] ; 2 uses
  %i.bn = icmp eq i64 %.0.lcssa.i, %i.m
  %or.cond = select i1 %i.l, i1 %i.bn, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.bo = load i32, ptr %i.o, align 4, !tbaa !3
  store i32 %i.bo, ptr %i.p, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.1.i = phi i64 [ %i.n, %bb.f ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bp = icmp sgt i64 %.1.i, %.08
  br i1 %i.bp, label %.lr.ph.i.i.preheader, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.bq = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !1085
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !83 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, null
  %i.bt = sext i32 %i.r to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.n
  %.018.i.i = phi i64 [ %.0919.i.i, %bb.n ], [ %.1.i, %.lr.ph.i.i.preheader ] ; 4 uses
  %.0919.in.i.i = add nsw i64 %.018.i.i, -1
  %.0919.i.i = sdiv i64 %.0919.in.i.i, 2          ; 4 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %0, i64 %.0919.i.i ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !1088, !nonnull !9, !align !640
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !444 ; 2 uses
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !121
  %i.cf = and i64 %i.cb, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.cg, %i.ce
  %.not.i.i.i.i.i = icmp eq i64 %i.ch, 0
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bt
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = lshr i64 %i.ck, 6
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !121
  %i.co = and i64 %i.ck, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cp, %i.cn
  %.not.i.i.i11.i.i = icmp eq i64 %i.cq, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.h, %.lr.ph.i.i
  %i.cr = phi i1 [ %.not.i.i.i.i.i, %bb.h ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.cs = phi i1 [ %.not.i.i.i11.i.i, %bb.h ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.cr, %i.cs
  br i1 %or.cond.i.i, label %bb.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.0.sroa.2.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %bb.m [
    i32 1, label %bb.j
    i32 0, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ct = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i, label %bb.k, label %.critedge.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #48
  unreachable

bb.l:                                             ; preds = %bb.i
  %or.cond.i.i.i = and i1 %i.cr, %i.cs
  %i.cu = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.cv = xor i1 %i.cr, %i.cu
  %or.cond39.demorgan = or i1 %or.cond.i.i.i, %i.cv
  br i1 %or.cond39.demorgan, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit, label %bb.n

bb.m:                                             ; preds = %bb.i
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #48
  unreachable

.critedge.i.i:                                    ; preds = %bb.j
  tail call void @_ZSt27__throw_bad_optional_accessv() #48
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cw = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.cx = getelementptr inbounds [4 x i8], ptr %0, i64 %.018.i.i
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !3
  %i.cy = icmp sgt i64 %.0919.i.i, %.08
  br i1 %i.cy, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit, !llvm.loop !1089

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit: ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, %bb.l, %bb.n, %bb.g
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.g ], [ %.018.i.i, %bb.l ], [ %.0919.i.i, %bb.n ], [ %.018.i.i, %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i ]
  %i.cz = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.r, ptr %i.cz, align 4, !tbaa !3
  %.not = icmp eq i64 %.08, 0
  %i.da = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !1091

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_12UnknownValueEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_12UnknownValueEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1092, !nonnull !9, !align !640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1085
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !3
  %i.f = load i32, ptr %1, align 4, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1088, !nonnull !9, !align !640
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !444  ; 2 uses
  %i.j = sext i32 %i.f to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = lshr i64 %i.m, 6
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !121
  %i.q = and i64 %i.m, 63
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.r, %i.p
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  %i.t = sext i32 %i.e to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 6
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !121
  %i.aa = and i64 %i.w, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.ab, %i.z
  %.not.i.i.i11.i = icmp eq i64 %i.ac, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.b, %bb.a
  %i.ad = phi i1 [ %.not.i.i.i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.ae = phi i1 [ %.not.i.i.i11.i, %bb.b ], [ false, %bb.a ] ; 2 uses
  %or.cond.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i, label %bb.c, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit

bb.c:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1094, !nonnull !9, !align !846
  %.sroa.0.0.copyload.i = load i64, ptr %i.ag, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.h [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.ah = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #48
  unreachable

bb.f:                                             ; preds = %bb.c
  %or.cond.i.i = and i1 %i.ad, %i.ae
  br i1 %or.cond.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.aj = xor i1 %i.ad, %i.ai
  %spec.select.i = xor i1 %i.aj, true
  br label %_ZZNK8facebook5velox10FlatVectorINS0_12UnknownValueEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #48
end_hunk_1
