inline.NumInlined: 8492
inline.NumDeleted: 2879
loop-unroll.NumCompletelyUnrolled: 139
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_:bb.a
  %.sroa.05.011.i.i = phi ptr [ %.sroa.0.012.i.i, %.lr.ph.i.i8 ], [ %.sroa.0.021.i.ptr, %bb.h ]
  %i.aa = load i32, ptr %.sroa.0.012.i.i, align 4, !tbaa !3
  store i32 %i.aa, ptr %.sroa.05.011.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i, i64 -4 ; 2 uses
  %i.ab = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %3, align 4
  %i.ac = load ptr, ptr %2, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.q, i32 noundef %i.ab, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1392
  %i.ag = and i64 %i.af, 6442450944
  %.not.i.i = icmp eq i64 %i.ag, 4294967296
  br i1 %.not.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, label %.lr.ph.i.i8, !llvm.loop !1393

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i8, %bb.h, %bb.g, %bb.f
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.f ], [ %.sroa.0.021.i.ptr, %bb.h ], [ %.sroa.0.012.i.i, %.lr.ph.i.i8 ]
  store i32 %i.q, ptr %.sink.i, align 4, !tbaa !3
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %i.ah, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, label %bb.d, !llvm.loop !1394

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
  %i.am = load ptr, ptr %2, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.ak, i32 noundef %i.al, i64 %.sroa.01.0.copyload.i.i9.i.i.i), !inline_history !1395
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
  %i.at = load ptr, ptr %2, align 8, !tbaa !45
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call i64 %i.av(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.ak, i32 noundef %i.as, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !1395
  %i.ax = and i64 %i.aw, 6442450944
  %.not.i.i.i = icmp eq i64 %i.ax, 4294967296
  br i1 %.not.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1393

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i
  %.sroa.05.0.lcssa.i.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.012.i.i.i, %.lr.ph.i.i.i ]
  store i32 %i.ak, ptr %.sroa.05.0.lcssa.i.i.i, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 4 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %1
  br i1 %i.az, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, label %.lr.ph.i.i, !llvm.loop !1396

bb.i:                                             ; preds = %bb.b
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3)
  br label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit

_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i, %bb.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph27, !llvm.loop !1397

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
  %i.q = load ptr, ptr %3, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i64 %i.s(ptr noundef nonnull align 8 dereferenceable(94) %3, ptr noundef nonnull %3, i32 noundef %i.o, i32 noundef %i.p, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1398
  %i.u = and i64 %i.t, 6442450944
  %.not.i.i = icmp eq i64 %i.u, 4294967296
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 4 ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !1399

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.013.0.pn.i.i = phi ptr [ %.sroa.013.1.i.i, %.preheader.i.i ], [ %.sroa.013.0.i.i, %bb.d ]
  %.sroa.013.1.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -4 ; 6 uses
  %i.w = load i32, ptr %0, align 4, !tbaa !3
  %i.x = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i10.i.i = load i64, ptr %4, align 4
  %i.y = load ptr, ptr %3, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(94) %3, ptr noundef nonnull %3, i32 noundef %i.w, i32 noundef %i.x, i64 %.sroa.01.0.copyload.i.i10.i.i), !inline_history !1398
  %i.ac = and i64 %i.ab, 6442450944
  %.not19.i.i = icmp eq i64 %i.ac, 4294967296
  br i1 %.not19.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !1400

bb.e:                                             ; preds = %.preheader.i.i
  %.not20.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.013.1.i.i
  br i1 %.not20.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !3
  %i.ae = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  store i32 %i.ae, ptr %.sroa.016.1.i.i, align 4, !tbaa !3
  store i32 %i.ad, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  br label %bb.c, !llvm.loop !1401

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit: ; preds = %bb.e
  %i.af = add nsw i64 %.02025, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_T1_(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge1926, i64 noundef %i.af, ptr nonnull %3, ptr nonnull %4)
  %i.ag = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.ah = sub i64 %i.ag, %i.a
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 16
  br i1 %i.aj, label %bb.b, label %.loopexit, !llvm.loop !1397

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !302 ; 6 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1402 ; 2 uses
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
  %i.t = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i64 %i.v(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i32 noundef %i.r, i32 noundef %i.s, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1404
  %i.x = and i64 %i.w, 6442450944
  %.not.i.i = icmp eq i64 %i.x, 4294967296
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.n, i64 %i.p ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !3
  %i.ab = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1405

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
  %i.ao = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i32 noundef %i.an, i32 noundef %i.f, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !1406
  %i.as = and i64 %i.ar, 6442450944
  %.not.i.i.i = icmp eq i64 %i.as, 4294967296
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.at = load i32, ptr %i.am, align 4, !tbaa !3
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1407

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.av, align 4, !tbaa !3
  %i.aw = icmp sgt i64 %i.i, 4
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !1408

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !302 ; 6 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !1402 ; 2 uses
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
  %i.z = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.x, i32 noundef %i.y, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !1409
  %i.ad = and i64 %i.ac, 6442450944
  %.not.i = icmp eq i64 %i.ad, 4294967296
  %spec.select.i = select i1 %.not.i, i64 %i.t, i64 %i.v ; 4 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !3
  %i.ah = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1405

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
  %i.an = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.am, i32 noundef %i.q, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1410
  %i.ar = and i64 %i.aq, 6442450944
  %.not.i.i = icmp eq i64 %i.ar, 4294967296
  br i1 %.not.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = load i32, ptr %i.al, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, !llvm.loop !1407

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.q, ptr %i.av, align 4, !tbaa !3
  %.not = icmp eq i64 %.09, 0
  %i.aw = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1411

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i = load i64, ptr %5, align 4
  %i.c = load ptr, ptr %4, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 %i.e(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.a, i32 noundef %i.b, i64 %.sroa.01.0.copyload.i.i), !inline_history !1412
  %i.g = and i64 %i.f, 6442450944
  %.not = icmp eq i64 %i.g, 4294967296
  %i.h = load i32, ptr %3, align 4, !tbaa !3      ; 2 uses
  %.sroa.01.0.copyload.i.i28 = load i64, ptr %5, align 4 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %2, align 4, !tbaa !3
  %i.m = tail call i64 %i.k(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.l, i32 noundef %i.h, i64 %.sroa.01.0.copyload.i.i28), !inline_history !1412
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
  %i.s = load ptr, ptr %4, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i64 %i.u(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.q, i32 noundef %i.r, i64 %.sroa.01.0.copyload.i.i27), !inline_history !1412
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
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_SI_T0_(ptr %0, ptr nonnull %i.f, ptr %i.k, ptr nonnull %i.l, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.243") align 8 %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph23
  %.sroa.013.0.i.i = phi ptr [ %i.f, %.lr.ph23 ], [ %i.aa, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1522, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.0.i.i, %bb.c ], [ %i.aa, %bb.d ] ; 9 uses
  %i.m = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %i.n = load i32, ptr %0, align 4, !tbaa !3
  %i.o = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !1197 ; 2 uses
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = sext i32 %i.n to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0.copyload, align 4
  %i.v = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i64 %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.r, i32 noundef %i.u, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1415
  %i.z = and i64 %i.y, 6442450944
  %.not.i.i = icmp eq i64 %i.z, 4294967296
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 4 ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !1416

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.d ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 6 uses
  %i.ab = load i32, ptr %0, align 4, !tbaa !3
  %i.ac = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  %i.ad = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !1197 ; 2 uses
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = sext i32 %i.ac to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i10.i.i = load i64, ptr %.sroa.5.0.copyload, align 4
  %i.ak = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i64 %i.am(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.ag, i32 noundef %i.aj, i64 %.sroa.01.0.copyload.i.i10.i.i), !inline_history !1415
  %i.ao = and i64 %i.an, 6442450944
  %.not16.i.i = icmp eq i64 %i.ao, 4294967296
  br i1 %.not16.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !1417

bb.e:                                             ; preds = %.preheader.i.i
  %.not17.i.i = icmp ult ptr %.sroa.013.1.i.i, %.sroa.0.1.i.i
  br i1 %.not17.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %i.aq = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  store i32 %i.aq, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  store i32 %i.ap, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  br label %bb.c, !llvm.loop !1418

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit: ; preds = %bb.e
  %i.ar = add nsw i64 %.01621, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_T1_(ptr nonnull %.sroa.013.1.i.i, ptr %storemerge1522, i64 noundef %i.ar, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.243") align 8 %3)
  %i.as = ptrtoint ptr %.sroa.013.1.i.i to i64
  %i.at = sub i64 %i.as, %i.a
  %i.au = ashr exact i64 %i.at, 2                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 16
  br i1 %i.av, label %bb.b, label %.loopexit, !llvm.loop !1414

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.243") align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr nonnull %i.e, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.243") align 8 %2)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !302 ; 6 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !1419 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !1402 ; 2 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i
  %.sroa.03.08.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %.sroa.03.08.i, align 4, !tbaa !3 ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.03.08.i, i64 -4 ; 2 uses
  %i.i = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !3
  %i.j = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !1197 ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.h
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i8.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.p = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i64 %i.r(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.l, i32 noundef %i.o, i64 %.sroa.01.0.copyload.i.i8.i.i), !inline_history !1421
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
  %i.w = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !1197 ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.h
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.ac = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.y, i32 noundef %i.ab, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1421
  %i.ag = and i64 %i.af, 6442450944
  %.not.i.i = icmp eq i64 %i.ag, 4294967296
  br i1 %.not.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !1422

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.03.08.i, %.lr.ph.i ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 4 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %1
  br i1 %i.ai, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i, !llvm.loop !1423

bb.c:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.243") align 8 %2)
  br label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !302 ; 6 uses
  %.sroa.0.sroa.2.0.copyload.i = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !tbaa !1419 ; 2 uses
  %.sroa.0.sroa.3.0.copyload.i = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !tbaa !1402 ; 2 uses
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
  %i.t = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i, align 8, !tbaa !1197 ; 2 uses
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = sext i32 %i.s to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload.i, align 4
  %i.aa = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, i32 noundef %i.w, i32 noundef %i.z, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1424
  %i.ae = and i64 %i.ad, 6442450944
  %.not.i.i = icmp eq i64 %i.ae, 4294967296
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.n, i64 %i.p ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.i
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !3
  %i.ai = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ai, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1425

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
  %i.aw = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i, align 8, !tbaa !1197 ; 2 uses
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.at
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload.i, align 4
  %i.bc = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !tbaa !45
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call i64 %i.be(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, i32 noundef %i.az, i32 noundef %i.bb, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !1426
  %i.bg = and i64 %i.bf, 6442450944
  %.not.i.i.i = icmp eq i64 %i.bg, 4294967296
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load i32, ptr %i.au, align 4, !tbaa !3
  %i.bi = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !3
  %.not11.i = icmp eq i64 %.0920.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %bb.e, !llvm.loop !1427

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit: ; preds = %bb.e, %bb.f, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %bb.e ], [ 0, %bb.f ]
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.bj, align 4, !tbaa !3
  %i.bk = icmp sgt i64 %i.i, 4
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !1428

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !302 ; 6 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !1419 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !1402 ; 2 uses
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
  %i.z = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !1197 ; 2 uses
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = sext i32 %i.y to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.ag = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.ac, i32 noundef %i.af, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !1429
  %i.ak = and i64 %i.aj, 6442450944
  %.not.i = icmp eq i64 %i.ak, 4294967296
  %spec.select.i = select i1 %.not.i, i64 %i.t, i64 %i.v ; 4 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %i.ao = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1425

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
  %i.av = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !1197 ; 2 uses
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.as
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.bb = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call i64 %i.bd(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.ay, i32 noundef %i.ba, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !1430
  %i.bf = and i64 %i.be, 6442450944
  %.not.i.i = icmp eq i64 %i.bf, 4294967296
  br i1 %.not.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load i32, ptr %i.at, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  %i.bi = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, !llvm.loop !1427

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.g ], [ %.019.i.i, %bb.f ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.q, ptr %i.bj, align 4, !tbaa !3
  %.not = icmp eq i64 %.08, 0
  %i.bk = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1431

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_SI_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.243") align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %i.c = load ptr, ptr %4, align 8, !tbaa !1432   ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1434, !nonnull !161, !align !478 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1197 ; 2 uses
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1435, !nonnull !161, !align !480 ; 4 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.n, align 4
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i64 %i.q(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.i, i32 noundef %i.l, i64 %.sroa.01.0.copyload.i.i), !inline_history !1436
  %i.s = and i64 %i.r, 6442450944
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUliE_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim:bb.a
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.sink.split

bb.i:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !154
  %.not.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

bb.k:                                             ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.au = load ptr, ptr %4, align 8, !tbaa !154
  %.not.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.sink.split

bb.n:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !154
  %.not.i15 = icmp eq ptr %i.aw, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.av, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16 ], [ %i.at, %bb.k ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

.loopexit18:                                      ; preds = %bb.e, %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %.merged.i = phi { ptr, i32 } [ %i.ar, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12 ], [ %.pn.i, %bb.p ], [ %i.t, %bb.e ]
  resume { ptr, i32 } %.merged.i

bb.q:                                             ; preds = %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #44
  unreachable

bb.r:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.sink.split: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.sink.split, %bb.b
  %i.az = add i64 %.024, -1
  %i.ba = and i64 %i.az, %.024                    ; 2 uses
  %.not10 = icmp eq i64 %i.ba, 0
  br i1 %.not10, label %.loopexit17, label %bb.b, !llvm.loop !2155

.loopexit17:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit, %bb.a
  ret void
}

declare void @_ZN8facebook5velox6common19createHugeintValuesERKSt6vectorInSaInEEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %.fr26 = freeze ptr %1                          ; 3 uses
  %.fr25 = freeze ptr %0                          ; 34 uses
  %i.a = ptrtoint ptr %.fr25 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr26 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr25, i64 16 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph57

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.cd, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph57, !llvm.loop !2156

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i24.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.da, %bb.b ] ; 3 uses
  %storemerge22.lcssa = phi ptr [ %.fr26, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i24.lcssa, 4               ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i24.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEElnNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.aq, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEElnNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %.08.i.i
  %i.t = load i128, ptr %i.s, align 16, !tbaa !324 ; 2 uses
  %i.u = icmp slt i64 %.08.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.035.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.08.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.035.i.i.i, 1                   ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %i.y
  %i.aa = load i128, ptr %i.x, align 16, !tbaa !324
  %i.ab = load i128, ptr %i.z, align 16, !tbaa !324
  %i.ac = icmp slt i128 %i.aa, %i.ab
  %spec.select.i.i.i = select i1 %i.ac, i64 %i.y, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %spec.select.i.i.i
  %i.ae = load i128, ptr %i.ad, align 16, !tbaa !324
  %i.af = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %.035.i.i.i
  store i128 %i.ae, ptr %i.af, align 16, !tbaa !324
  %i.ag = icmp slt i64 %spec.select.i.i.i, %i.m
  br i1 %i.ag, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !2157

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.08.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i, %i.k
  %or.cond.i.i = select i1 %i.o, i1 %i.ah, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i128, ptr %i.q, align 16, !tbaa !324
  store i128 %i.ai, ptr %i.r, align 16, !tbaa !324
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i, %.08.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i12, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEElnNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.i.i

.lr.ph.i.i.i.i12:                                 ; preds = %bb.e, %bb.f
  %.019.i.i.i.i = phi i64 [ %.0920.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i.i.i = sdiv i64 %.0920.in.i.i.i.i, 2  ; 4 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %.0920.i.i.i.i
  %i.al = load i128, ptr %i.ak, align 16, !tbaa !324 ; 2 uses
  %i.am = icmp slt i128 %i.al, %i.t
  br i1 %i.am, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEElnNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i12
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %.019.i.i.i.i
  store i128 %i.al, ptr %i.an, align 16, !tbaa !324
  %i.ao = icmp sgt i64 %.0920.i.i.i.i, %.08.i.i
  br i1 %i.ao, label %.lr.ph.i.i.i.i12, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEElnNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.i.i, !llvm.loop !2158

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEElnNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i12, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0920.i.i.i.i, %bb.f ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i12 ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %.0.lcssa.i.i.i.i10
  store i128 %i.t, ptr %i.ap, align 16, !tbaa !324
  %.not.i.i11 = icmp eq i64 %.08.i.i, 0
  %i.aq = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i11, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, label %bb.c, !llvm.loop !2159

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEElnNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.i.i
  %i.ar = icmp sgt i64 %.fr.i24.lcssa, 16
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.as, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge22.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit ]
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %i.at = load i128, ptr %i.as, align 16, !tbaa !324 ; 2 uses
  %i.au = load i128, ptr %.fr25, align 16, !tbaa !324
  store i128 %i.au, ptr %i.as, align 16, !tbaa !324
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 4                 ; 3 uses
  %i.ay = add nsw i64 %i.ax, -1
  %3 = sdiv i64 %i.ay, 2
  %i.az = icmp sgt i64 %i.ax, 2
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ba = shl i64 %.035.i.i.i.i, 1                ; 2 uses
  %i.bb = add i64 %i.ba, 2                        ; 2 uses
  %i.bc = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %i.bb
  %i.bd = or disjoint i64 %i.ba, 1                ; 2 uses
  %i.be = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %i.bd
  %i.bf = load i128, ptr %i.bc, align 16, !tbaa !324
  %i.bg = load i128, ptr %i.be, align 16, !tbaa !324
  %i.bh = icmp slt i128 %i.bf, %i.bg
  %spec.select.i.i.i.i = select i1 %i.bh, i64 %i.bd, i64 %i.bb ; 4 uses
  %i.bi = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %spec.select.i.i.i.i
  %i.bj = load i128, ptr %i.bi, align 16, !tbaa !324
  %i.bk = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %.035.i.i.i.i
  store i128 %i.bj, ptr %i.bk, align 16, !tbaa !324
  %i.bl = icmp slt i64 %spec.select.i.i.i.i, %3
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2157

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bm = and i64 %i.aw, 16
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bo = add nsw i64 %i.ax, -2
  %i.bp = ashr exact i64 %i.bo, 1
  %i.bq = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bp
  br i1 %i.bq, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.br = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bs = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %i.bs
  %i.bu = load i128, ptr %i.bt, align 16, !tbaa !324
  %i.bv = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %.0.lcssa.i.i.i.i
  store i128 %i.bu, ptr %i.bv, align 16, !tbaa !324
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bs, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.i ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %.0920.i.i56.i.i.i
  %i.bx = load i128, ptr %i.bw, align 16, !tbaa !324 ; 2 uses
  %i.by = icmp slt i128 %i.bx, %i.at
  br i1 %i.by, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bz = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %.019.i.i.i.i.i
  store i128 %i.bx, ptr %i.bz, align 16, !tbaa !324
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2158

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.ca = getelementptr inbounds [16 x i8], ptr %.fr25, i64 %.0.lcssa.i.i.i.i.i
  store i128 %i.at, ptr %i.ca, align 16, !tbaa !324
  %i.cb = icmp sgt i64 %i.aw, 16
  br i1 %i.cb, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !2160

.lr.ph57:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2256 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr26, %.lr.ph ] ; 3 uses
  %.02355 = phi i64 [ %i.cd, %bb.b ], [ %2, %.lr.ph ]
  %i.cc = phi i64 [ %i.db, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cd = add nsw i64 %.02355, -1                 ; 3 uses
  %i.ce = lshr i64 %i.cc, 1
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %.fr25, i64 %i.ce ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %storemerge2256, i64 -16 ; 3 uses
  %i.ch = load i128, ptr %i.f, align 16, !tbaa !324 ; 5 uses
  %i.ci = load i128, ptr %i.cf, align 16, !tbaa !324 ; 5 uses
  %i.cj = icmp slt i128 %i.ch, %i.ci
  %i.ck = load i128, ptr %i.cg, align 16, !tbaa !324 ; 6 uses
  br i1 %i.cj, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph57
  %i.cl = icmp slt i128 %i.ci, %i.ck
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cm = load i128, ptr %.fr25, align 16, !tbaa !324
  store i128 %i.ci, ptr %.fr25, align 16, !tbaa !324
  store i128 %i.cm, ptr %i.cf, align 16, !tbaa !324
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cn = icmp slt i128 %i.ch, %i.ck
  %i.co = load i128, ptr %.fr25, align 16, !tbaa !324 ; 2 uses
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i128 %i.ck, ptr %.fr25, align 16, !tbaa !324
  store i128 %i.co, ptr %i.cg, align 16, !tbaa !324
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  store i128 %i.ch, ptr %.fr25, align 16, !tbaa !324
  store i128 %i.co, ptr %i.f, align 16, !tbaa !324
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph57
  %i.cp = icmp slt i128 %i.ch, %i.ck
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cq = load i128, ptr %.fr25, align 16, !tbaa !324
  store i128 %i.ch, ptr %.fr25, align 16, !tbaa !324
  store i128 %i.cq, ptr %i.f, align 16, !tbaa !324
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cr = icmp slt i128 %i.ci, %i.ck
  %i.cs = load i128, ptr %.fr25, align 16, !tbaa !324 ; 2 uses
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i128 %i.ck, ptr %.fr25, align 16, !tbaa !324
  store i128 %i.cs, ptr %i.cg, align 16, !tbaa !324
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  store i128 %i.ci, ptr %.fr25, align 16, !tbaa !324
  store i128 %i.cs, ptr %i.cf, align 16, !tbaa !324
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cw, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2256, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.ct = load i128, ptr %.fr25, align 16, !tbaa !324 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.cw, %bb.t ] ; 8 uses
  %i.cu = load i128, ptr %.sroa.012.1.i.i, align 16, !tbaa !324 ; 2 uses
  %i.cv = icmp slt i128 %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.cv, label %bb.t, label %.preheader.i.i, !llvm.loop !2161

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.cx = load i128, ptr %.sroa.0.1.i.i, align 16, !tbaa !324 ; 2 uses
  %i.cy = icmp slt i128 %i.ct, %i.cx
  br i1 %i.cy, label %.preheader.i.i, label %bb.u, !llvm.loop !2162

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.v:                                             ; preds = %bb.u
  store i128 %i.cx, ptr %.sroa.012.1.i.i, align 16, !tbaa !324
  store i128 %i.cu, ptr %.sroa.0.1.i.i, align 16, !tbaa !324
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !2163

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2256, i64 noundef %i.cd)
  %i.cz = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.da = sub i64 %i.cz, %i.a                     ; 2 uses
  %i.db = ashr exact i64 %i.da, 4                 ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 16
  br i1 %i.dc, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !2156

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.017.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.017.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn16.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.017.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.017.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017.i.idx ; 4 uses
  %i.e = load i128, ptr %.sroa.0.017.i.ptr, align 16, !tbaa !324 ; 4 uses
  %i.f = load i128, ptr %0, align 16, !tbaa !324  ; 2 uses
  %i.g = icmp slt i128 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.017.i.idx, 16
  br i1 %i.h, label %bb.d, label %bb.e, !prof !66

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %0, i64 %.sroa.0.017.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 16
  store i128 %i.f, ptr %i.i, align 16, !tbaa !324
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i128, ptr %.pn16.i, align 16, !tbaa !324 ; 2 uses
  %i.k = icmp slt i128 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i128 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn16.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.017.i.ptr, %bb.f ]
  store i128 %i.l, ptr %.sroa.04.08.i.i, align 16, !tbaa !324
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -16 ; 2 uses
  %i.m = load i128, ptr %.sroa.0.0.i.i, align 16, !tbaa !324 ; 2 uses
  %i.n = icmp slt i128 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !2164

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.017.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i128 %i.e, ptr %.sink.i, align 16, !tbaa !324
  %.sroa.0.017.i.add = add nuw nsw i64 %.sroa.0.017.i.idx, 16 ; 2 uses
  %i.o = icmp eq i64 %.sroa.0.017.i.add, 256
  br i1 %i.o, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !2165

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.0.04.i = phi ptr [ %i.x, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.p, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit ] ; 5 uses
  %i.r = load i128, ptr %.sroa.0.04.i, align 16, !tbaa !324 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.04.i, i64 -16 ; 2 uses
  %i.s = load i128, ptr %.sroa.0.07.i.i, align 16, !tbaa !324 ; 2 uses
  %i.t = icmp slt i128 %i.r, %i.s
  br i1 %i.t, label %.lr.ph.i.i7, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i7:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i7
  %i.u = phi i128 [ %i.v, %.lr.ph.i.i7 ], [ %i.s, %.lr.ph.i6 ]
  %.sroa.0.09.i.i8 = phi ptr [ %.sroa.0.0.i.i10, %.lr.ph.i.i7 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i9 = phi ptr [ %.sroa.0.09.i.i8, %.lr.ph.i.i7 ], [ %.sroa.0.04.i, %.lr.ph.i6 ]
  store i128 %i.u, ptr %.sroa.04.08.i.i9, align 16, !tbaa !324
  %.sroa.0.0.i.i10 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i8, i64 -16 ; 2 uses
  %i.v = load i128, ptr %.sroa.0.0.i.i10, align 16, !tbaa !324 ; 2 uses
  %i.w = icmp slt i128 %i.r, %i.v
  br i1 %i.w, label %.lr.ph.i.i7, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !2164

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i7, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.04.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i8, %.lr.ph.i.i7 ]
  store i128 %i.r, ptr %.sroa.04.0.lcssa.i.i, align 16, !tbaa !324
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.x, %1
  br i1 %i.y, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !2166

bb.g:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %0, %1
  %.sroa.0.015.i12 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %.sroa.0.015.i12, %1
  %or.cond = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i16
  %.sroa.0.017.i14 = phi ptr [ %.sroa.0.0.i18, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i16 ], [ %.sroa.0.015.i12, %bb.g ] ; 6 uses
  %.pn16.i15 = phi ptr [ %.sroa.0.017.i14, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i16 ], [ %0, %bb.g ] ; 4 uses
  %i.ab = load i128, ptr %.sroa.0.017.i14, align 16, !tbaa !324 ; 4 uses
  %i.ac = load i128, ptr %0, align 16, !tbaa !324 ; 2 uses
  %i.ad = icmp slt i128 %i.ab, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i13
  %i.ae = ptrtoint ptr %.sroa.0.017.i14 to i64
  %i.af = sub i64 %i.ae, %i.b                     ; 3 uses
  %i.ag = ashr exact i64 %i.af, 4                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %bb.j, !prof !66

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn16.i15, i64 32
  %i.aj = sub nsw i64 0, %i.ag
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ak, ptr noundef nonnull align 16 dereferenceable(1) %0, i64 %i.af, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i16

bb.j:                                             ; preds = %bb.h
  %i.al = icmp eq i64 %i.af, 16
  br i1 %i.al, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i16

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.pn16.i15, i64 16
  store i128 %i.ac, ptr %i.am, align 16, !tbaa !324
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i16

bb.l:                                             ; preds = %.lr.ph.i13
  %i.an = load i128, ptr %.pn16.i15, align 16, !tbaa !324 ; 2 uses
  %i.ao = icmp slt i128 %i.ab, %i.an
  br i1 %i.ao, label %.lr.ph.i.i19, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i16

.lr.ph.i.i19:                                     ; preds = %bb.l, %.lr.ph.i.i19
  %i.ap = phi i128 [ %i.aq, %.lr.ph.i.i19 ], [ %i.an, %bb.l ]
  %.sroa.0.09.i.i20 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i19 ], [ %.pn16.i15, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i21 = phi ptr [ %.sroa.0.09.i.i20, %.lr.ph.i.i19 ], [ %.sroa.0.017.i14, %bb.l ]
  store i128 %i.ap, ptr %.sroa.04.08.i.i21, align 16, !tbaa !324
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i20, i64 -16 ; 2 uses
  %i.aq = load i128, ptr %.sroa.0.0.i.i22, align 16, !tbaa !324 ; 2 uses
  %i.ar = icmp slt i128 %i.ab, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i19, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i16, !llvm.loop !2164

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i16: ; preds = %.lr.ph.i.i19, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i17 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.017.i14, %bb.l ], [ %.sroa.0.09.i.i20, %.lr.ph.i.i19 ]
  store i128 %i.ab, ptr %.sink.i17, align 16, !tbaa !324
  %.sroa.0.0.i18 = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i14, i64 16 ; 2 uses
  %i.as = icmp eq ptr %.sroa.0.0.i18, %1
  br i1 %i.as, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i13, !llvm.loop !2165

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEES6_ET0_T_S8_S7_.exit.i16, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPnSt6vectorInSaInEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

declare void @_ZN8facebook5velox6common18createBigintValuesERKSt6vectorIlSaIlEEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.at, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !2167

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !267  ; 2 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !267
  store i64 %i.k, ptr %i.i, align 8, !tbaa !267
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %4 = sdiv i64 %i.o, 2
  %i.p = icmp sgt i64 %i.n, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = load i64, ptr %i.s, align 8, !tbaa !267
  %i.w = load i64, ptr %i.u, align 8, !tbaa !267
  %i.x = icmp slt i64 %i.v, %i.w
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.t, i64 %i.r ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !267
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.035.i.i.i.i
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !267
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2168

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.m, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.n, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !267
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !267
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !267 ; 2 uses
  %i.ao = icmp slt i64 %i.an, %i.j
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !267
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2169

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.j, ptr %i.aq, align 8, !tbaa !267
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !2170

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.d, %.lr.ph ]
  %i.at = add nsw i64 %.01841, -1                 ; 3 uses
  %i.au = lshr i64 %i.as, 1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %storemerge1742, i64 -8 ; 3 uses
  %i.ax = load i64, ptr %i.f, align 8, !tbaa !267 ; 5 uses
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !267 ; 5 uses
  %i.az = icmp slt i64 %i.ax, %i.ay
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !267 ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bb = icmp slt i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i64, ptr %0, align 8, !tbaa !267
  store i64 %i.ay, ptr %0, align 8, !tbaa !267
  store i64 %i.bc, ptr %i.av, align 8, !tbaa !267
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp slt i64 %i.ax, %i.ba
  %i.be = load i64, ptr %0, align 8, !tbaa !267   ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.ba, ptr %0, align 8, !tbaa !267
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !267
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i64 %i.ax, ptr %0, align 8, !tbaa !267
  store i64 %i.be, ptr %i.f, align 8, !tbaa !267
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bf = icmp slt i64 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i64, ptr %0, align 8, !tbaa !267
  store i64 %i.ax, ptr %0, align 8, !tbaa !267
  store i64 %i.bg, ptr %i.f, align 8, !tbaa !267
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp slt i64 %i.ay, %i.ba
  %i.bi = load i64, ptr %0, align 8, !tbaa !267   ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.ba, ptr %0, align 8, !tbaa !267
  store i64 %i.bi, ptr %i.aw, align 8, !tbaa !267
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i64 %i.ay, ptr %0, align 8, !tbaa !267
  store i64 %i.bi, ptr %i.av, align 8, !tbaa !267
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.012.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bj = load i64, ptr %0, align 8, !tbaa !267   ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !267 ; 2 uses
  %i.bl = icmp slt i64 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !2171

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.bn = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !267 ; 2 uses
  %i.bo = icmp slt i64 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !2172

bb.q:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i64 %i.bn, ptr %.sroa.012.1.i.i, align 8, !tbaa !267
  store i64 %i.bk, ptr %.sroa.0.1.i.i, align 8, !tbaa !267
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !2173

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1742, i64 noundef %i.at)
  %i.bp = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bq = sub i64 %i.bp, %i.a
  %i.br = ashr exact i64 %i.bq, 3                 ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 16
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !2167

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.017.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.017.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn16.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.017.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.017.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017.i.idx ; 4 uses
  %i.e = load i64, ptr %.sroa.0.017.i.ptr, align 8, !tbaa !267 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !267    ; 2 uses
  %i.g = icmp slt i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.017.i.idx, 8
  br i1 %i.h, label %bb.d, label %bb.e, !prof !66

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.017.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 8
  store i64 %i.f, ptr %i.i, align 8, !tbaa !267
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i64, ptr %.pn16.i, align 8, !tbaa !267 ; 2 uses
  %i.k = icmp slt i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn16.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.017.i.ptr, %bb.f ]
  store i64 %i.l, ptr %.sroa.04.08.i.i, align 8, !tbaa !267
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -8 ; 2 uses
  %i.m = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !267 ; 2 uses
  %i.n = icmp slt i64 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !2174

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.017.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i64 %i.e, ptr %.sink.i, align 8, !tbaa !267
  %.sroa.0.017.i.add = add nuw nsw i64 %.sroa.0.017.i.idx, 8 ; 2 uses
  %i.o = icmp eq i64 %.sroa.0.017.i.add, 128
  br i1 %i.o, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !2175

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_:bb.a
  store i64 %i.ap, ptr %.sroa.04.08.i.i21, align 8, !tbaa !267
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i20, i64 -8 ; 2 uses
  %i.aq = load i64, ptr %.sroa.0.0.i.i22, align 8, !tbaa !267 ; 2 uses
  %i.ar = icmp slt i64 %i.ab, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i19, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i16, !llvm.loop !2174

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i16: ; preds = %.lr.ph.i.i19, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i17 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.017.i14, %bb.l ], [ %.sroa.0.09.i.i20, %.lr.ph.i.i19 ]
  store i64 %i.ab, ptr %.sink.i17, align 8, !tbaa !267
  %.sroa.0.0.i18 = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i14, i64 8 ; 2 uses
  %i.as = icmp eq ptr %.sroa.0.0.i18, %1
  br i1 %i.as, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i13, !llvm.loop !2175

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i16, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.08.us
  %i.q = load i64, ptr %i.p, align 8, !tbaa !267  ; 2 uses
  %i.r = icmp slt i64 %.08.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = load i64, ptr %i.u, align 8, !tbaa !267
  %i.y = load i64, ptr %i.w, align 8, !tbaa !267
  %i.z = icmp slt i64 %i.x, %i.y
  %spec.select.i.us = select i1 %i.z, i64 %i.v, i64 %i.t ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !267
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.035.i.us
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !267
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !2168

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !267 ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %i.q
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !267
  %i.aj = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !2169

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i64 %i.q, ptr %i.ak, align 8, !tbaa !267
  %.not.us = icmp eq i64 %.08.us, 0
  %i.al = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !2177

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.08 = phi i64 [ %i.bk, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.08
  %i.an = load i64, ptr %i.am, align 8, !tbaa !267 ; 2 uses
  %i.ao = icmp slt i64 %.08, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.ap = shl i64 %.035.i, 1                      ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = load i64, ptr %i.ar, align 8, !tbaa !267
  %i.av = load i64, ptr %i.at, align 8, !tbaa !267
  %i.aw = icmp slt i64 %i.au, %i.av
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !267
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.035.i
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !267
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2168

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load i64, ptr %i.n, align 8, !tbaa !267
  store i64 %i.bc, ptr %i.o, align 8, !tbaa !267
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.08
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !267 ; 2 uses
  %i.bg = icmp slt i64 %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !267
  %i.bi = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !2169

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i64 %i.an, ptr %i.bj, align 8, !tbaa !267
  %.not = icmp eq i64 %.08, 0
  %i.bk = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !2177

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.at, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !2178

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !406 ; 2 uses
  %i.k = load float, ptr %0, align 4, !tbaa !406
  store float %i.k, ptr %i.i, align 4, !tbaa !406
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %4 = sdiv i64 %i.o, 2
  %i.p = icmp sgt i64 %i.n, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.034.i.i.i.i, 1                 ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = load float, ptr %i.s, align 4, !tbaa !406
  %i.w = load float, ptr %i.u, align 4, !tbaa !406
  %i.x = fcmp olt float %i.v, %i.w
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.t, i64 %i.r ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load float, ptr %i.y, align 4, !tbaa !406
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i.i.i
  store float %i.z, ptr %i.aa, align 4, !tbaa !406
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2179

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.m, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.n, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !406
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store float %i.ak, ptr %i.al, align 4, !tbaa !406
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.an = load float, ptr %i.am, align 4, !tbaa !406 ; 2 uses
  %i.ao = fcmp olt float %i.an, %i.j
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store float %i.an, ptr %i.ap, align 4, !tbaa !406
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2180

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store float %i.j, ptr %i.aq, align 4, !tbaa !406
  %i.ar = icmp sgt i64 %i.m, 4
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !2181

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.d, %.lr.ph ]
  %i.at = add nsw i64 %.01841, -1                 ; 3 uses
  %i.au = lshr i64 %i.as, 1
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %storemerge1742, i64 -4 ; 3 uses
  %i.ax = load float, ptr %i.f, align 4, !tbaa !406 ; 5 uses
  %i.ay = load float, ptr %i.av, align 4, !tbaa !406 ; 5 uses
  %i.az = fcmp olt float %i.ax, %i.ay
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !406 ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bb = fcmp olt float %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load float, ptr %0, align 4, !tbaa !406
  store float %i.ay, ptr %0, align 4, !tbaa !406
  store float %i.bc, ptr %i.av, align 4, !tbaa !406
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = fcmp olt float %i.ax, %i.ba
  %i.be = load float, ptr %0, align 4, !tbaa !406 ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.ba, ptr %0, align 4, !tbaa !406
  store float %i.be, ptr %i.aw, align 4, !tbaa !406
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store float %i.ax, ptr %0, align 4, !tbaa !406
  store float %i.be, ptr %i.f, align 4, !tbaa !406
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bf = fcmp olt float %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load float, ptr %0, align 4, !tbaa !406
  store float %i.ax, ptr %0, align 4, !tbaa !406
  store float %i.bg, ptr %i.f, align 4, !tbaa !406
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = fcmp olt float %i.ay, %i.ba
  %i.bi = load float, ptr %0, align 4, !tbaa !406 ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float %i.ba, ptr %0, align 4, !tbaa !406
  store float %i.bi, ptr %i.aw, align 4, !tbaa !406
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store float %i.ay, ptr %0, align 4, !tbaa !406
  store float %i.bi, ptr %i.av, align 4, !tbaa !406
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.012.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bj = load float, ptr %0, align 4, !tbaa !406 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load float, ptr %.sroa.012.1.i.i, align 4, !tbaa !406 ; 2 uses
  %i.bl = fcmp olt float %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !2182

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
  %i.bn = load float, ptr %.sroa.0.1.i.i, align 4, !tbaa !406 ; 2 uses
  %i.bo = fcmp olt float %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !2183

bb.q:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store float %i.bn, ptr %.sroa.012.1.i.i, align 4, !tbaa !406
  store float %i.bk, ptr %.sroa.0.1.i.i, align 4, !tbaa !406
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !2184

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1742, i64 noundef %i.at)
  %i.bp = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bq = sub i64 %i.bp, %i.a
  %i.br = ashr exact i64 %i.bq, 2                 ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 16
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !2178

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.017.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.017.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn16.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.017.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.017.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017.i.idx ; 4 uses
  %i.e = load float, ptr %.sroa.0.017.i.ptr, align 4, !tbaa !406 ; 4 uses
  %i.f = load float, ptr %0, align 4, !tbaa !406  ; 2 uses
  %i.g = fcmp olt float %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.017.i.idx, 4
  br i1 %i.h, label %bb.d, label %bb.e, !prof !66

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.017.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 4
  store float %i.f, ptr %i.i, align 4, !tbaa !406
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load float, ptr %.pn16.i, align 4, !tbaa !406 ; 2 uses
  %i.k = fcmp olt float %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi float [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn16.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.017.i.ptr, %bb.f ]
  store float %i.l, ptr %.sroa.04.08.i.i, align 4, !tbaa !406
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.m = load float, ptr %.sroa.0.0.i.i, align 4, !tbaa !406 ; 2 uses
  %i.n = fcmp olt float %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !2185

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.017.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store float %i.e, ptr %.sink.i, align 4, !tbaa !406
  %.sroa.0.017.i.add = add nuw nsw i64 %.sroa.0.017.i.idx, 4 ; 2 uses
  %i.o = icmp eq i64 %.sroa.0.017.i.add, 64
  br i1 %i.o, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !2186

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_:bb.a
  store float %i.ap, ptr %.sroa.04.08.i.i21, align 4, !tbaa !406
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i20, i64 -4 ; 2 uses
  %i.aq = load float, ptr %.sroa.0.0.i.i22, align 4, !tbaa !406 ; 2 uses
  %i.ar = fcmp olt float %i.ab, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i19, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit.i16, !llvm.loop !2185

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit.i16: ; preds = %.lr.ph.i.i19, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i17 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.017.i14, %bb.l ], [ %.sroa.0.09.i.i20, %.lr.ph.i.i19 ]
  store float %i.ab, ptr %.sink.i17, align 4, !tbaa !406
  %.sroa.0.0.i18 = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i14, i64 4 ; 2 uses
  %i.as = icmp eq ptr %.sroa.0.0.i18, %1
  br i1 %i.as, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i13, !llvm.loop !2186

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_ET0_T_S8_S7_.exit.i16, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.07.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.07.us
  %i.q = load float, ptr %i.p, align 4, !tbaa !406 ; 2 uses
  %i.r = icmp slt i64 %.07.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.034.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.07.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.034.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load float, ptr %i.u, align 4, !tbaa !406
  %i.y = load float, ptr %i.w, align 4, !tbaa !406
  %i.z = fcmp olt float %i.x, %i.y
  %spec.select.i.us = select i1 %i.z, i64 %i.v, i64 %i.t ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !406
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.us
  store float %i.ab, ptr %i.ac, align 4, !tbaa !406
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !2179

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.07.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ag = load float, ptr %i.af, align 4, !tbaa !406 ; 2 uses
  %i.ah = fcmp olt float %i.ag, %i.q
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store float %i.ag, ptr %i.ai, align 4, !tbaa !406
  %i.aj = icmp sgt i64 %.0920.i.i.us, %.07.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !2180

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.07.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store float %i.q, ptr %i.ak, align 4, !tbaa !406
  %.not.us = icmp eq i64 %.07.us, 0
  %i.al = add nsw i64 %.07.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !2188

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.07 = phi i64 [ %i.bk, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %.07
  %i.an = load float, ptr %i.am, align 4, !tbaa !406 ; 2 uses
  %i.ao = icmp slt i64 %.07, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.034.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.07, %.split ] ; 2 uses
  %i.ap = shl i64 %.034.i, 1                      ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %i.as
  %i.au = load float, ptr %i.ar, align 4, !tbaa !406
  %i.av = load float, ptr %i.at, align 4, !tbaa !406
  %i.aw = fcmp olt float %i.au, %i.av
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !406
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store float %i.ay, ptr %i.az, align 4, !tbaa !406
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2179

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.07, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load float, ptr %i.n, align 4, !tbaa !406
  store float %i.bc, ptr %i.o, align 4, !tbaa !406
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.07
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load float, ptr %i.be, align 4, !tbaa !406 ; 2 uses
  %i.bg = fcmp olt float %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store float %i.bf, ptr %i.bh, align 4, !tbaa !406
  %i.bi = icmp sgt i64 %.0920.i.i, %.07
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !2180

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store float %i.an, ptr %i.bj, align 4, !tbaa !406
  %.not = icmp eq i64 %.07, 0
  %i.bk = add nsw i64 %.07, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !2188

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElfNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.at, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !2189

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !422 ; 2 uses
  %i.k = load double, ptr %0, align 8, !tbaa !422
  store double %i.k, ptr %i.i, align 8, !tbaa !422
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %4 = sdiv i64 %i.o, 2
  %i.p = icmp sgt i64 %i.n, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.034.i.i.i.i, 1                 ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = load double, ptr %i.s, align 8, !tbaa !422
  %i.w = load double, ptr %i.u, align 8, !tbaa !422
  %i.x = fcmp olt double %i.v, %i.w
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.t, i64 %i.r ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !422
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.i.i.i
  store double %i.z, ptr %i.aa, align 8, !tbaa !422
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2190

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.m, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.n, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !422
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store double %i.ak, ptr %i.al, align 8, !tbaa !422
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.an = load double, ptr %i.am, align 8, !tbaa !422 ; 2 uses
  %i.ao = fcmp olt double %i.an, %i.j
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store double %i.an, ptr %i.ap, align 8, !tbaa !422
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2191

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store double %i.j, ptr %i.aq, align 8, !tbaa !422
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !2192

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.d, %.lr.ph ]
  %i.at = add nsw i64 %.01841, -1                 ; 3 uses
  %i.au = lshr i64 %i.as, 1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %storemerge1742, i64 -8 ; 3 uses
  %i.ax = load double, ptr %i.f, align 8, !tbaa !422 ; 5 uses
  %i.ay = load double, ptr %i.av, align 8, !tbaa !422 ; 5 uses
  %i.az = fcmp olt double %i.ax, %i.ay
  %i.ba = load double, ptr %i.aw, align 8, !tbaa !422 ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bb = fcmp olt double %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load double, ptr %0, align 8, !tbaa !422
  store double %i.ay, ptr %0, align 8, !tbaa !422
  store double %i.bc, ptr %i.av, align 8, !tbaa !422
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = fcmp olt double %i.ax, %i.ba
  %i.be = load double, ptr %0, align 8, !tbaa !422 ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.ba, ptr %0, align 8, !tbaa !422
  store double %i.be, ptr %i.aw, align 8, !tbaa !422
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store double %i.ax, ptr %0, align 8, !tbaa !422
  store double %i.be, ptr %i.f, align 8, !tbaa !422
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bf = fcmp olt double %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load double, ptr %0, align 8, !tbaa !422
  store double %i.ax, ptr %0, align 8, !tbaa !422
  store double %i.bg, ptr %i.f, align 8, !tbaa !422
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = fcmp olt double %i.ay, %i.ba
  %i.bi = load double, ptr %0, align 8, !tbaa !422 ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.ba, ptr %0, align 8, !tbaa !422
  store double %i.bi, ptr %i.aw, align 8, !tbaa !422
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store double %i.ay, ptr %0, align 8, !tbaa !422
  store double %i.bi, ptr %i.av, align 8, !tbaa !422
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.012.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bj = load double, ptr %0, align 8, !tbaa !422 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load double, ptr %.sroa.012.1.i.i, align 8, !tbaa !422 ; 2 uses
  %i.bl = fcmp olt double %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !2193

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.bn = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !422 ; 2 uses
  %i.bo = fcmp olt double %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !2194

bb.q:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store double %i.bn, ptr %.sroa.012.1.i.i, align 8, !tbaa !422
  store double %i.bk, ptr %.sroa.0.1.i.i, align 8, !tbaa !422
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !2195

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1742, i64 noundef %i.at)
  %i.bp = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bq = sub i64 %i.bp, %i.a
  %i.br = ashr exact i64 %i.bq, 3                 ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 16
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !2189

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.017.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.017.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn16.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.017.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.017.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017.i.idx ; 4 uses
  %i.e = load double, ptr %.sroa.0.017.i.ptr, align 8, !tbaa !422 ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !422 ; 2 uses
  %i.g = fcmp olt double %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.017.i.idx, 8
  br i1 %i.h, label %bb.d, label %bb.e, !prof !66

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.017.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 8
  store double %i.f, ptr %i.i, align 8, !tbaa !422
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load double, ptr %.pn16.i, align 8, !tbaa !422 ; 2 uses
  %i.k = fcmp olt double %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi double [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn16.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.017.i.ptr, %bb.f ]
  store double %i.l, ptr %.sroa.04.08.i.i, align 8, !tbaa !422
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -8 ; 2 uses
  %i.m = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !422 ; 2 uses
  %i.n = fcmp olt double %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !2196

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.017.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store double %i.e, ptr %.sink.i, align 8, !tbaa !422
  %.sroa.0.017.i.add = add nuw nsw i64 %.sroa.0.017.i.idx, 8 ; 2 uses
  %i.o = icmp eq i64 %.sroa.0.017.i.add, 128
  br i1 %i.o, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !2197

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
end_hunk_4
