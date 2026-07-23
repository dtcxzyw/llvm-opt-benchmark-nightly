inline.NumInlined: 11089
inline.NumDeleted: 4035
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_:bb.a
  %.sroa.05.011.i.i = phi ptr [ %.sroa.0.012.i.i, %.lr.ph.i.i8 ], [ %.sroa.0.021.i.ptr, %bb.h ]
  %i.aa = load i32, ptr %.sroa.0.012.i.i, align 4, !tbaa !3
  store i32 %i.aa, ptr %.sroa.05.011.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i, i64 -4 ; 2 uses
  %i.ab = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %3, align 4
  %i.ac = load ptr, ptr %2, align 8, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.q, i32 noundef %i.ab, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1672
  %i.ag = and i64 %i.af, 6442450944
  %.not.i.i = icmp eq i64 %i.ag, 4294967296
  br i1 %.not.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, label %.lr.ph.i.i8, !llvm.loop !1673

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i8, %bb.h, %bb.g, %bb.f
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.f ], [ %.sroa.0.021.i.ptr, %bb.h ], [ %.sroa.0.012.i.i, %.lr.ph.i.i8 ]
  store i32 %i.q, ptr %.sink.i, align 4, !tbaa !3
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %i.ah, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, label %bb.d, !llvm.loop !1674

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %1
  br i1 %i.aj, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i
  %.sroa.0.09.i.i = phi ptr [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i ], [ %i.ai, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit ] ; 5 uses
  %i.ak = load i32, ptr %.sroa.0.09.i.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.al = load i32, ptr %.sroa.0.08.i.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i9.i.i.i = load i64, ptr %3, align 4
  %i.am = load ptr, ptr %2, align 8, !tbaa !78
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.ak, i32 noundef %i.al, i64 %.sroa.01.0.copyload.i.i9.i.i.i), !inline_history !1675
  %i.aq = and i64 %i.ap, 6442450944
  %.not10.i.i.i = icmp eq i64 %i.aq, 4294967296
  br i1 %.not10.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i
  %.sroa.0.012.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i, %.lr.ph.i.i ] ; 4 uses
  %.sroa.05.011.i.i.i = phi ptr [ %.sroa.0.012.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  %i.ar = load i32, ptr %.sroa.0.012.i.i.i, align 4, !tbaa !3
  store i32 %i.ar, ptr %.sroa.05.011.i.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i, i64 -4 ; 2 uses
  %i.as = load i32, ptr %.sroa.0.0.i.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %3, align 4
  %i.at = load ptr, ptr %2, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call i64 %i.av(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.ak, i32 noundef %i.as, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !1675
  %i.ax = and i64 %i.aw, 6442450944
  %.not.i.i.i = icmp eq i64 %i.ax, 4294967296
  br i1 %.not.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1673

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i
  %.sroa.05.0.lcssa.i.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.012.i.i.i, %.lr.ph.i.i.i ]
  store i32 %i.ak, ptr %.sroa.05.0.lcssa.i.i.i, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 4 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %1
  br i1 %i.az, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, label %.lr.ph.i.i, !llvm.loop !1676

bb.i:                                             ; preds = %bb.b
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3)
  br label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit

_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i, %bb.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph27

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit
  %i.h = icmp eq i64 %i.af, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph27, !llvm.loop !1677

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.j, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %storemerge19.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %storemerge19.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph27:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1926 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02025 = phi i64 [ %i.af, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.ai, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %storemerge1926, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_SG_T0_(ptr %0, ptr nonnull %i.f, ptr %i.m, ptr nonnull %i.n, ptr %3, ptr %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph27
  %.sroa.013.0.i.i = phi ptr [ %storemerge1926, %.lr.ph27 ], [ %.sroa.013.1.i.i, %bb.f ]
  %.sroa.016.0.i.i = phi ptr [ %i.f, %.lr.ph27 ], [ %i.v, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %bb.c ], [ %i.v, %bb.d ] ; 9 uses
  %i.o = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !3
  %i.p = load i32, ptr %0, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %4, align 4
  %i.q = load ptr, ptr %3, align 8, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i64 %i.s(ptr noundef nonnull align 8 dereferenceable(94) %3, ptr noundef nonnull %3, i32 noundef %i.o, i32 noundef %i.p, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1678
  %i.u = and i64 %i.t, 6442450944
  %.not.i.i = icmp eq i64 %i.u, 4294967296
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 4 ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !1679

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.013.0.pn.i.i = phi ptr [ %.sroa.013.1.i.i, %.preheader.i.i ], [ %.sroa.013.0.i.i, %bb.d ]
  %.sroa.013.1.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -4 ; 6 uses
  %i.w = load i32, ptr %0, align 4, !tbaa !3
  %i.x = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i10.i.i = load i64, ptr %4, align 4
  %i.y = load ptr, ptr %3, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(94) %3, ptr noundef nonnull %3, i32 noundef %i.w, i32 noundef %i.x, i64 %.sroa.01.0.copyload.i.i10.i.i), !inline_history !1678
  %i.ac = and i64 %i.ab, 6442450944
  %.not19.i.i = icmp eq i64 %i.ac, 4294967296
  br i1 %.not19.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !1680

bb.e:                                             ; preds = %.preheader.i.i
  %.not20.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.013.1.i.i
  br i1 %.not20.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !3
  %i.ae = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  store i32 %i.ae, ptr %.sroa.016.1.i.i, align 4, !tbaa !3
  store i32 %i.ad, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  br label %bb.c, !llvm.loop !1681

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit: ; preds = %bb.e
  %i.af = add nsw i64 %.02025, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_T1_(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge1926, i64 noundef %i.af, ptr nonnull %3, ptr nonnull %4)
  %i.ag = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.ah = sub i64 %i.ag, %i.a
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 16
  br i1 %i.aj, label %bb.b, label %.loopexit, !llvm.loop !1677

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !418 ; 6 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1682 ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.037.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = shl i64 %.037.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = load i32, ptr %i.o, align 4, !tbaa !3
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0.copyload.i, align 4
  %i.t = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i64 %i.v(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i32 noundef %i.r, i32 noundef %i.s, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1684
  %i.x = and i64 %i.w, 6442450944
  %.not.i.i = icmp eq i64 %i.x, 4294967296
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.n, i64 %i.p ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !3
  %i.ab = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1685

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ac = and i64 %i.i, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ae = add nsw i64 %i.j, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.019.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.ai, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.e ], [ %.019.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0.copyload.i, align 4
  %i.ao = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !78
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i32 noundef %i.an, i32 noundef %i.f, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !1686
  %i.as = and i64 %i.ar, 6442450944
  %.not.i.i.i = icmp eq i64 %i.as, 4294967296
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.at = load i32, ptr %i.am, align 4, !tbaa !3
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1687

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.av, align 4, !tbaa !3
  %i.aw = icmp sgt i64 %i.i, 4
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !1688

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.aw, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !418 ; 6 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !1682 ; 2 uses
  %i.r = icmp slt i64 %.09, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.037.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %bb.c ] ; 2 uses
  %i.s = shl i64 %.037.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !3
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %.sroa.2.0.copyload, align 4
  %i.z = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.x, i32 noundef %i.y, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !1689
  %i.ad = and i64 %i.ac, 6442450944
  %.not.i = icmp eq i64 %i.ad, 4294967296
  %spec.select.i = select i1 %.not.i, i64 %i.t, i64 %i.v ; 4 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !3
  %i.ah = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1685

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !3
  store i32 %i.aj, ptr %i.o, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i, %.09
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0.copyload, align 4
  %i.an = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.am, i32 noundef %i.q, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1690
  %i.ar = and i64 %i.aq, 6442450944
  %.not.i.i = icmp eq i64 %i.ar, 4294967296
  br i1 %.not.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = load i32, ptr %i.al, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, !llvm.loop !1687

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.q, ptr %i.av, align 4, !tbaa !3
  %.not = icmp eq i64 %.09, 0
  %i.aw = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1691

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i = load i64, ptr %5, align 4
  %i.c = load ptr, ptr %4, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 %i.e(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.a, i32 noundef %i.b, i64 %.sroa.01.0.copyload.i.i), !inline_history !1692
  %i.g = and i64 %i.f, 6442450944
  %.not = icmp eq i64 %i.g, 4294967296
  %i.h = load i32, ptr %3, align 4, !tbaa !3      ; 2 uses
  %.sroa.01.0.copyload.i.i28 = load i64, ptr %5, align 4 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !78
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %2, align 4, !tbaa !3
  %i.m = tail call i64 %i.k(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.l, i32 noundef %i.h, i64 %.sroa.01.0.copyload.i.i28), !inline_history !1692
  %i.n = and i64 %i.m, 6442450944
  %.not40 = icmp eq i64 %i.n, 4294967296
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %0, align 4, !tbaa !3
  %i.p = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.p, ptr %0, align 4, !tbaa !3
  store i32 %i.o, ptr %2, align 4, !tbaa !3
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.q = load i32, ptr %1, align 4, !tbaa !3
  %i.r = load i32, ptr %3, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i27 = load i64, ptr %5, align 4
  %i.s = load ptr, ptr %4, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i64 %i.u(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.q, i32 noundef %i.r, i64 %.sroa.01.0.copyload.i.i27), !inline_history !1692
  %i.w = and i64 %i.v, 6442450944
  %.not41 = icmp eq i64 %i.w, 4294967296
  %i.x = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.y, ptr %0, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_T1_:bb.a
  %storemerge15.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.013.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %storemerge15.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %storemerge15.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph23:                                         ; preds = %.lr.ph23.preheader, %bb.b
  %storemerge1522 = phi ptr [ %.sroa.013.1.i.i, %bb.b ], [ %1, %.lr.ph23.preheader ] ; 3 uses
  %.01621 = phi i64 [ %i.ar, %bb.b ], [ %2, %.lr.ph23.preheader ]
  %i.i = phi i64 [ %i.au, %bb.b ], [ %i.d, %.lr.ph23.preheader ]
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8 ; 6 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %storemerge1522, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_SI_T0_(ptr %0, ptr nonnull %i.f, ptr %i.k, ptr nonnull %i.l, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.672") align 8 %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph23
  %.sroa.013.0.i.i = phi ptr [ %i.f, %.lr.ph23 ], [ %i.aa, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1522, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.0.i.i, %bb.c ], [ %i.aa, %bb.d ] ; 9 uses
  %i.m = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %i.n = load i32, ptr %0, align 4, !tbaa !3
  %i.o = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !325 ; 2 uses
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = sext i32 %i.n to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0.copyload, align 4
  %i.v = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i64 %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.r, i32 noundef %i.u, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1695
  %i.z = and i64 %i.y, 6442450944
  %.not.i.i = icmp eq i64 %i.z, 4294967296
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 4 ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !1696

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.d ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 6 uses
  %i.ab = load i32, ptr %0, align 4, !tbaa !3
  %i.ac = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  %i.ad = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !325 ; 2 uses
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = sext i32 %i.ac to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i10.i.i = load i64, ptr %.sroa.5.0.copyload, align 4
  %i.ak = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !78
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i64 %i.am(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.ag, i32 noundef %i.aj, i64 %.sroa.01.0.copyload.i.i10.i.i), !inline_history !1695
  %i.ao = and i64 %i.an, 6442450944
  %.not16.i.i = icmp eq i64 %i.ao, 4294967296
  br i1 %.not16.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !1697

bb.e:                                             ; preds = %.preheader.i.i
  %.not17.i.i = icmp ult ptr %.sroa.013.1.i.i, %.sroa.0.1.i.i
  br i1 %.not17.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %i.aq = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  store i32 %i.aq, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  store i32 %i.ap, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  br label %bb.c, !llvm.loop !1698

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit: ; preds = %bb.e
  %i.ar = add nsw i64 %.01621, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_T1_(ptr nonnull %.sroa.013.1.i.i, ptr %storemerge1522, i64 noundef %i.ar, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.672") align 8 %3)
  %i.as = ptrtoint ptr %.sroa.013.1.i.i to i64
  %i.at = sub i64 %i.as, %i.a
  %i.au = ashr exact i64 %i.at, 2                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 16
  br i1 %i.av, label %bb.b, label %.loopexit, !llvm.loop !1694

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.672") align 8 %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr nonnull %i.e, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.672") align 8 %2)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !418 ; 6 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !1504 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !1682 ; 2 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i
  %.sroa.03.08.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %.sroa.03.08.i, align 4, !tbaa !3 ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.03.08.i, i64 -4 ; 2 uses
  %i.i = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !3
  %i.j = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !325 ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.h
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i8.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.p = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i64 %i.r(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.l, i32 noundef %i.o, i64 %.sroa.01.0.copyload.i.i8.i.i), !inline_history !1699
  %i.t = and i64 %i.s, 6442450944
  %.not9.i.i = icmp eq i64 %i.t, 4294967296
  br i1 %.not9.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %.lr.ph.i ] ; 4 uses
  %.sroa.04.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.03.08.i, %.lr.ph.i ]
  %i.u = load i32, ptr %.sroa.0.011.i.i, align 4, !tbaa !3
  store i32 %i.u, ptr %.sroa.04.010.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -4 ; 2 uses
  %i.v = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !3
  %i.w = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !325 ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.h
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.ac = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.y, i32 noundef %i.ab, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1699
  %i.ag = and i64 %i.af, 6442450944
  %.not.i.i = icmp eq i64 %i.ag, 4294967296
  br i1 %.not.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !1700

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.03.08.i, %.lr.ph.i ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 4 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %1
  br i1 %i.ai, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i, !llvm.loop !1701

bb.c:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.672") align 8 %2)
  br label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !418 ; 6 uses
  %.sroa.0.sroa.2.0.copyload.i = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !tbaa !1504 ; 2 uses
  %.sroa.0.sroa.3.0.copyload.i = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !tbaa !1682 ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = sdiv i64 %i.k, 2
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = shl i64 %.036.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = load i32, ptr %i.o, align 4, !tbaa !3
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i, align 8, !tbaa !325 ; 2 uses
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = sext i32 %i.s to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload.i, align 4
  %i.aa = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !tbaa !78
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, i32 noundef %i.w, i32 noundef %i.z, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1702
  %i.ae = and i64 %i.ad, 6442450944
  %.not.i.i = icmp eq i64 %i.ae, 4294967296
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.n, i64 %i.p ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.i
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !3
  %i.ai = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ai, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1703

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.aj = and i64 %i.i, 4
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.al = add nsw i64 %i.j, -2
  %i.am = ashr exact i64 %i.al, 1
  %i.an = icmp eq i64 %.0.lcssa.i.i, %i.am
  br i1 %i.an, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ao = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ap = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  br label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.thread.i
  %.1.i8.i = phi i64 [ %i.ap, %.thread.i ], [ %.0.lcssa.i.i, %bb.d ]
  %i.at = sext i32 %i.f to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %.1.i8.i, %.lr.ph.i.i.i ], [ %.0920.i.i910.i, %bb.f ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i910.i = lshr i64 %.0920.in.i.i.i, 1   ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i910.i ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i, align 8, !tbaa !325 ; 2 uses
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.at
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload.i, align 4
  %i.bc = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !tbaa !78
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call i64 %i.be(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, i32 noundef %i.az, i32 noundef %i.bb, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !1704
  %i.bg = and i64 %i.bf, 6442450944
  %.not.i.i.i = icmp eq i64 %i.bg, 4294967296
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load i32, ptr %i.au, align 4, !tbaa !3
  %i.bi = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !3
  %.not11.i = icmp eq i64 %.0920.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %bb.e, !llvm.loop !1705

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit: ; preds = %bb.e, %bb.f, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %bb.e ], [ 0, %bb.f ]
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.bj, align 4, !tbaa !3
  %i.bk = icmp sgt i64 %i.i, 4
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !1706

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.bk, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !418 ; 6 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !1504 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !1682 ; 2 uses
  %i.r = icmp slt i64 %.08, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.036.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %bb.c ] ; 2 uses
  %i.s = shl i64 %.036.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !3
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !325 ; 2 uses
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = sext i32 %i.y to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.ag = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.ac, i32 noundef %i.af, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !1707
  %i.ak = and i64 %i.aj, 6442450944
  %.not.i = icmp eq i64 %i.ak, 4294967296
  %spec.select.i = select i1 %.not.i, i64 %i.t, i64 %i.v ; 4 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %i.ao = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1703

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ap = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ap, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aq = load i32, ptr %i.n, align 4, !tbaa !3
  store i32 %i.aq, ptr %i.o, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ar = icmp sgt i64 %.1.i, %.08
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.as = sext i32 %i.q to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.0920.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !325 ; 2 uses
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.as
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.bb = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !78
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call i64 %i.bd(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.ay, i32 noundef %i.ba, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1708
  %i.bf = and i64 %i.be, 6442450944
  %.not.i.i = icmp eq i64 %i.bf, 4294967296
  br i1 %.not.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load i32, ptr %i.at, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  %i.bi = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, !llvm.loop !1705

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.g ], [ %.019.i.i, %bb.f ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.q, ptr %i.bj, align 4, !tbaa !3
  %.not = icmp eq i64 %.08, 0
  %i.bk = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1709

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_SI_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.672") align 8 %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %i.c = load ptr, ptr %4, align 8, !tbaa !1710   ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1712, !nonnull !57, !align !284 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !325  ; 2 uses
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1713, !nonnull !57, !align !1427 ; 4 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.n, align 4
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i64 %i.q(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.i, i32 noundef %i.l, i64 %.sroa.01.0.copyload.i.i), !inline_history !1714
  %i.s = and i64 %i.r, 6442450944
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox14ConstantVectorINS0_10StringViewEE28testingCopyPreserveEncodingsEPNS0_6memory10MemoryPoolE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiSF_St10shared_ptrINS1_10BaseVectorEERKNS1_17SimpleVectorStatsIS3_EEEEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(288) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_ZNSt12__shared_ptrIN8facebook5velox14ConstantVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !2043, !inline_history !2046

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 288) #45, !noalias !2043, !inline_history !2046
  br label %.body

_ZNSt12__shared_ptrIN8facebook5velox14ConstantVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.o, ptr %0, align 8, !tbaa !305
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.p, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72   ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox14ConstantVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.s, align 8, !tbaa !75
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !77
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #30, !inline_history !307
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #30, !inline_history !307
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9
  %.not.i.i.i6 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.g:                                             ; preds = %bb.e
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i8 = phi i32 [ %i.v, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.ag, label %bb.h, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #30
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox14ConstantVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.resume:                                    ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.aq, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %i.n, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %common.resume

bb.j:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !2047
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ap = tail call noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #47, !noalias !2048, !inline_history !2053 ; 4 uses
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEES3_RKNS1_17SimpleVectorStatsIS3_EERKSt8optionalIiESV_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(288) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.ai, ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 4 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(8) %i.ao)
          to label %_ZNSt12__shared_ptrIN8facebook5velox14ConstantVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i, !noalias !2054, !inline_history !2053

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i: ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 288) #45, !noalias !2054, !inline_history !2053
  br label %common.resume

_ZNSt12__shared_ptrIN8facebook5velox14ConstantVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13: ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.ar, ptr %0, align 8, !tbaa !305
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox14ConstantVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEE16transferOrCopyToEPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.704", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.boost::intrusive_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::optional.956", align 1 ; 5 uses
  %6 = alloca %"class.boost::intrusive_ptr", align 8 ; 12 uses
  %.sroa.5 = alloca [12 x i8], align 4            ; 11 uses
  tail call void @_ZN8facebook5velox10BaseVector16transferOrCopyToEPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !305  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(94) %i.b, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1552 ; 3 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef %1)
  br i1 %i.k, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2055)
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !1552, !noalias !2055, !nonnull !57, !noundef !57
  store ptr null, ptr %6, align 8, !tbaa !1552, !alias.scope !2055
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1743, !noalias !2055
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !2055
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !2055
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 0, ptr %i.o, align 1, !tbaa !2058, !noalias !2055
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %4, i64 noundef %i.n, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %5, i1 noundef zeroext false)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i unwind label %bb.f, !noalias !2055

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i: ; preds = %bb.e
  %i.p = load ptr, ptr %4, align 8, !tbaa !1552, !noalias !2055 ; 4 uses
  store ptr %i.p, ptr %6, align 8, !tbaa !1552, !alias.scope !2055
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.pre15.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !1743, !noalias !2055
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !1552, !noalias !2055
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !2055
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !2055
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78, !noalias !2055
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2055
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef %.pre.i, i64 noundef %.pre15.i)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._crit_edge unwind label %bb.g, !noalias !2055

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._crit_edge: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !1552 ; 2 uses
  %.pre17 = load ptr, ptr %6, align 8, !tbaa !1552 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !957  ; 7 uses
  %i.v = icmp ult i32 %i.u, 13                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = select i1 %i.v, ptr %i.w, ptr %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1739
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.af = getelementptr inbounds nuw i8, ptr %.pre17, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1739
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.ae ; 3 uses
  %i.ai = zext i32 %i.u to i64
  %i.aj = icmp slt i32 %i.u, 0
  br i1 %i.aj, label %bb.i, label %bb.l, !prof !61

bb.f:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !2055
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !2055
  br label %bb.h

bb.g:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %.pn10.i, %bb.h ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn10.i = phi { ptr, i32 } [ %i.al, %bb.g ], [ %i.ak, %bb.f ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  br label %common.resume

bb.i:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !2060
  store i32 %i.u, ptr %2, align 16, !tbaa !9, !noalias !2060
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.am, align 16, !tbaa !9, !noalias !2060
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.26, i64 11, i64 17, ptr nonnull %2)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !2060
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.26) #44
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc
  unreachable

bb.k:                                             ; preds = %.noexc
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !9
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.body

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._crit_edge
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %.sroa.5, align 4
  %i.at = icmp eq i32 %i.u, 0
  br i1 %i.at, label %_ZN8facebook5velox10StringViewC2EPKci.exit.thread, label %_ZN8facebook5velox10StringViewC2EPKci.exit

bb.n:                                             ; preds = %bb.l
  %i.au = load i32, ptr %i.ah, align 1
  store i32 %i.au, ptr %.sroa.5, align 4
  %.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4
  store ptr %i.ah, ptr %.sroa.5.4..sroa_idx, align 4, !tbaa !9
  br label %_ZN8facebook5velox10StringViewC2EPKci.exit.thread

_ZN8facebook5velox10StringViewC2EPKci.exit.thread: ; preds = %bb.n, %bb.m
  store i32 %i.u, ptr %i.t, align 8, !tbaa !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i64 12, i1 false), !tbaa.struct !2063
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr null, ptr %6, align 8, !tbaa !1552
  store ptr %.pre17, ptr %i.f, align 8, !tbaa !1552
  br label %bb.o

_ZN8facebook5velox10StringViewC2EPKci.exit:       ; preds = %bb.m
  %.sroa.5.4..sroa_idx27 = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4
  store ptr null, ptr %.sroa.5.4..sroa_idx27, align 4, !tbaa !9
  %i.av = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ai) #30, !srcloc !2064
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.5, ptr align 1 %i.ah, i64 %i.av, i1 false)
  %.pre18 = load ptr, ptr %6, align 8, !tbaa !1552
  %.pre19 = load ptr, ptr %i.f, align 8, !tbaa !1552 ; 2 uses
  store i32 %i.u, ptr %i.t, align 8, !tbaa !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i64 12, i1 false), !tbaa.struct !2063
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr null, ptr %6, align 8, !tbaa !1552
  store ptr %.pre18, ptr %i.f, align 8, !tbaa !1552
  %.not.i.i = icmp eq ptr %.pre19, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox10StringViewC2EPKci.exit.thread, %_ZN8facebook5velox10StringViewC2EPKci.exit
  %i.aw = phi ptr [ %.pre, %_ZN8facebook5velox10StringViewC2EPKci.exit.thread ], [ %.pre19, %_ZN8facebook5velox10StringViewC2EPKci.exit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = atomicrmw sub ptr %i.ax, i32 1 acq_rel, align 4
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.o
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !78
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(64) %i.aw)
          to label %.noexc.i.i unwind label %bb.p, !inline_history !1553

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1554
  %.not.i.i.i = icmp eq ptr %i.be, null
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !78
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %..i.i.i
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr noundef nonnull align 8 dereferenceable(64) %i.aw)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.p, !inline_history !1553

bb.p:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #46
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %bb.o, %.noexc.i.i
  %.pr = load ptr, ptr %6, align 8, !tbaa !1552   ; 7 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.bl = atomicrmw sub ptr %i.bk, i32 1 acq_rel, align 4
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.q
  %i.bn = load ptr, ptr %.pr, align 8, !tbaa !78
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.r, !inline_history !1553

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1554
  %.not.i.i10 = icmp eq ptr %i.br, null
  %i.bs = load ptr, ptr %.pr, align 8, !tbaa !78
  %..i.i = select i1 %.not.i.i10, i64 8, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %..i.i
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.r, !inline_history !1553

bb.r:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #46
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox10StringViewC2EPKci.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.q, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.t

bb.s:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %bb.s ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %common.resume

bb.t:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox14ConstantVectorINS0_10StringViewEE5sliceEii(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.66") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 4 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !305
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.f = tail call noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #47, !noalias !2065, !inline_history !2070 ; 4 uses
end_hunk_2
