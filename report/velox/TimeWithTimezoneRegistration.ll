inline.NumInlined: 9168
inline.NumDeleted: 2592
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_:bb.a
  %.sroa.05.011.i.i = phi ptr [ %.sroa.0.012.i.i, %.lr.ph.i.i8 ], [ %.sroa.0.021.i.ptr, %bb.h ]
  %i.aa = load i32, ptr %.sroa.0.012.i.i, align 4, !tbaa !3
  store i32 %i.aa, ptr %.sroa.05.011.i.i, align 4, !tbaa !3
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i, i64 -4 ; 2 uses
  %i.ab = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %3, align 4
  %i.ac = load ptr, ptr %2, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.q, i32 noundef %i.ab, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !664
  %i.ag = and i64 %i.af, 6442450944
  %.not.i.i = icmp eq i64 %i.ag, 4294967296
  br i1 %.not.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, label %.lr.ph.i.i8, !llvm.loop !665

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i8, %bb.h, %bb.g, %bb.f
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %bb.f ], [ %.sroa.0.021.i.ptr, %bb.h ], [ %.sroa.0.012.i.i, %.lr.ph.i.i8 ]
  store i32 %i.q, ptr %.sink.i, align 4, !tbaa !3
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %i.ah, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, label %bb.d, !llvm.loop !666

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
  %i.am = load ptr, ptr %2, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.ak, i32 noundef %i.al, i64 %.sroa.01.0.copyload.i.i9.i.i.i), !inline_history !667
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
  %i.at = load ptr, ptr %2, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call i64 %i.av(ptr noundef nonnull align 8 dereferenceable(94) %2, ptr noundef nonnull %2, i32 noundef %i.ak, i32 noundef %i.as, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !667
  %i.ax = and i64 %i.aw, 6442450944
  %.not.i.i.i = icmp eq i64 %i.ax, 4294967296
  br i1 %.not.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !665

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i
  %.sroa.05.0.lcssa.i.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.012.i.i.i, %.lr.ph.i.i.i ]
  store i32 %i.ak, ptr %.sroa.05.0.lcssa.i.i.i, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 4 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %1
  br i1 %i.az, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_.exit, label %.lr.ph.i.i, !llvm.loop !668

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
  br i1 %i.h, label %._crit_edge, label %.lr.ph27, !llvm.loop !669

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
  %i.q = load ptr, ptr %3, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i64 %i.s(ptr noundef nonnull align 8 dereferenceable(94) %3, ptr noundef nonnull %3, i32 noundef %i.o, i32 noundef %i.p, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !670
  %i.u = and i64 %i.t, 6442450944
  %.not.i.i = icmp eq i64 %i.u, 4294967296
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 4 ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !671

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.013.0.pn.i.i = phi ptr [ %.sroa.013.1.i.i, %.preheader.i.i ], [ %.sroa.013.0.i.i, %bb.d ]
  %.sroa.013.1.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -4 ; 6 uses
  %i.w = load i32, ptr %0, align 4, !tbaa !3
  %i.x = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i10.i.i = load i64, ptr %4, align 4
  %i.y = load ptr, ptr %3, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(94) %3, ptr noundef nonnull %3, i32 noundef %i.w, i32 noundef %i.x, i64 %.sroa.01.0.copyload.i.i10.i.i), !inline_history !670
  %i.ac = and i64 %i.ab, 6442450944
  %.not19.i.i = icmp eq i64 %i.ac, 4294967296
  br i1 %.not19.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !672

bb.e:                                             ; preds = %.preheader.i.i
  %.not20.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.013.1.i.i
  br i1 %.not20.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !3
  %i.ae = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  store i32 %i.ae, ptr %.sroa.016.1.i.i, align 4, !tbaa !3
  store i32 %i.ad, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  br label %bb.c, !llvm.loop !673

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit: ; preds = %bb.e
  %i.af = add nsw i64 %.02025, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_T1_(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge1926, i64 noundef %i.af, ptr nonnull %3, ptr nonnull %4)
  %i.ag = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.ah = sub i64 %i.ag, %i.a
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 16
  br i1 %i.aj, label %bb.b, label %.loopexit, !llvm.loop !669

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
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !193 ; 6 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !674 ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = lshr i64 %i.k, 1
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
  %i.t = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i64 %i.v(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i32 noundef %i.r, i32 noundef %i.s, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !676
  %i.x = and i64 %i.w, 6442450944
  %.not.i.i = icmp eq i64 %i.x, 4294967296
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.n, i64 %i.p ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !3
  %i.ab = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !677

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
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
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
  %i.ao = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i32 noundef %i.an, i32 noundef %i.f, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !678
  %i.as = and i64 %i.ar, 6442450944
  %.not.i.i.i = icmp eq i64 %i.as, 4294967296
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.at = load i32, ptr %i.am, align 4, !tbaa !3
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !679

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.av, align 4, !tbaa !3
  %i.aw = icmp sgt i64 %i.i, 4
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !680

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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !193 ; 6 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !674 ; 2 uses
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
  %i.z = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.x, i32 noundef %i.y, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !681
  %i.ad = and i64 %i.ac, 6442450944
  %.not.i = icmp eq i64 %i.ad, 4294967296
  %spec.select.i = select i1 %.not.i, i64 %i.t, i64 %i.v ; 4 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !3
  %i.ah = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !677

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
  %i.an = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.am, i32 noundef %i.q, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !682
  %i.ar = and i64 %i.aq, 6442450944
  %.not.i.i = icmp eq i64 %i.ar, 4294967296
  br i1 %.not.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = load i32, ptr %i.al, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, !llvm.loop !679

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.q, ptr %i.av, align 4, !tbaa !3
  %.not = icmp eq i64 %.09, 0
  %i.aw = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !683

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i = load i64, ptr %5, align 4
  %i.c = load ptr, ptr %4, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 %i.e(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.a, i32 noundef %i.b, i64 %.sroa.01.0.copyload.i.i), !inline_history !684
  %i.g = and i64 %i.f, 6442450944
  %.not = icmp eq i64 %i.g, 4294967296
  %i.h = load i32, ptr %3, align 4, !tbaa !3      ; 2 uses
  %.sroa.01.0.copyload.i.i28 = load i64, ptr %5, align 4 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %2, align 4, !tbaa !3
  %i.m = tail call i64 %i.k(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.l, i32 noundef %i.h, i64 %.sroa.01.0.copyload.i.i28), !inline_history !684
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
  %i.s = load ptr, ptr %4, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i64 %i.u(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.q, i32 noundef %i.r, i64 %.sroa.01.0.copyload.i.i27), !inline_history !684
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
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_SI_T0_(ptr %0, ptr nonnull %i.f, ptr %i.k, ptr nonnull %i.l, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.251") align 8 %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph23
  %.sroa.013.0.i.i = phi ptr [ %i.f, %.lr.ph23 ], [ %i.aa, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1522, %.lr.ph23 ], [ %.sroa.0.1.i.i, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.0.i.i, %bb.c ], [ %i.aa, %bb.d ] ; 9 uses
  %i.m = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %i.n = load i32, ptr %0, align 4, !tbaa !3
  %i.o = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !403 ; 2 uses
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = sext i32 %i.n to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0.copyload, align 4
  %i.v = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i64 %i.x(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.r, i32 noundef %i.u, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !687
  %i.z = and i64 %i.y, 6442450944
  %.not.i.i = icmp eq i64 %i.z, 4294967296
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 4 ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !688

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.d ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 6 uses
  %i.ab = load i32, ptr %0, align 4, !tbaa !3
  %i.ac = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  %i.ad = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !403 ; 2 uses
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = sext i32 %i.ac to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i10.i.i = load i64, ptr %.sroa.5.0.copyload, align 4
  %i.ak = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i64 %i.am(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.ag, i32 noundef %i.aj, i64 %.sroa.01.0.copyload.i.i10.i.i), !inline_history !687
  %i.ao = and i64 %i.an, 6442450944
  %.not16.i.i = icmp eq i64 %i.ao, 4294967296
  br i1 %.not16.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !689

bb.e:                                             ; preds = %.preheader.i.i
  %.not17.i.i = icmp ult ptr %.sroa.013.1.i.i, %.sroa.0.1.i.i
  br i1 %.not17.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  %i.aq = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  store i32 %i.aq, ptr %.sroa.013.1.i.i, align 4, !tbaa !3
  store i32 %i.ap, ptr %.sroa.0.1.i.i, align 4, !tbaa !3
  br label %bb.c, !llvm.loop !690

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit: ; preds = %bb.e
  %i.ar = add nsw i64 %.01621, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_T1_(ptr nonnull %.sroa.013.1.i.i, ptr %storemerge1522, i64 noundef %i.ar, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.251") align 8 %3)
  %i.as = ptrtoint ptr %.sroa.013.1.i.i to i64
  %i.at = sub i64 %i.as, %i.a
  %i.au = ashr exact i64 %i.at, 2                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 16
  br i1 %i.av, label %bb.b, label %.loopexit, !llvm.loop !686

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEET_SI_SI_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.251") align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr nonnull %i.e, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.251") align 8 %2)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !193 ; 6 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !691 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !674 ; 2 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i
  %.sroa.03.08.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %.sroa.03.08.i, align 4, !tbaa !3 ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.03.08.i, i64 -4 ; 2 uses
  %i.i = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !3
  %i.j = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !403 ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.h
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i8.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.p = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i64 %i.r(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.l, i32 noundef %i.o, i64 %.sroa.01.0.copyload.i.i8.i.i), !inline_history !693
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
  %i.w = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !403 ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.h
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.ac = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.y, i32 noundef %i.ab, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !693
  %i.ag = and i64 %i.af, 6442450944
  %.not.i.i = icmp eq i64 %i.ag, 4294967296
  br i1 %.not.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !694

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.03.08.i, %.lr.ph.i ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 4 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %1
  br i1 %i.ai, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i, !llvm.loop !695

bb.c:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.251") align 8 %2)
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
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !193 ; 6 uses
  %.sroa.0.sroa.2.0.copyload.i = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !tbaa !691 ; 2 uses
  %.sroa.0.sroa.3.0.copyload.i = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !tbaa !674 ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = lshr i64 %i.k, 1
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
  %i.t = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i, align 8, !tbaa !403 ; 2 uses
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = sext i32 %i.s to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload.i, align 4
  %i.aa = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, i32 noundef %i.w, i32 noundef %i.z, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !696
  %i.ae = and i64 %i.ad, 6442450944
  %.not.i.i = icmp eq i64 %i.ae, 4294967296
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.n, i64 %i.p ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.i
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !3
  %i.ai = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ai, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !697

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
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
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
  %i.aw = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i, align 8, !tbaa !403 ; 2 uses
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.at
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload.i, align 4
  %i.bc = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call i64 %i.be(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, i32 noundef %i.az, i32 noundef %i.bb, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !698
  %i.bg = and i64 %i.bf, 6442450944
  %.not.i.i.i = icmp eq i64 %i.bg, 4294967296
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load i32, ptr %i.au, align 4, !tbaa !3
  %i.bi = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !3
  %.not11.i = icmp eq i64 %.0920.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %bb.e, !llvm.loop !699

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit: ; preds = %bb.e, %bb.f, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %bb.e ], [ 0, %bb.f ]
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.bj, align 4, !tbaa !3
  %i.bk = icmp sgt i64 %i.i, 4
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !700

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
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !193 ; 6 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !691 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !674 ; 2 uses
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
  %i.z = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !403 ; 2 uses
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = sext i32 %i.y to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.ag = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.ac, i32 noundef %i.af, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !701
  %i.ak = and i64 %i.aj, 6442450944
  %.not.i = icmp eq i64 %i.ak, 4294967296
  %spec.select.i = select i1 %.not.i, i64 %i.t, i64 %i.v ; 4 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %i.ao = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !697

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
  %i.av = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !403 ; 2 uses
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.as
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.bb = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call i64 %i.bd(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.ay, i32 noundef %i.ba, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !702
  %i.bf = and i64 %i.be, 6442450944
  %.not.i.i = icmp eq i64 %i.bf, 4294967296
  br i1 %.not.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load i32, ptr %i.at, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  %i.bi = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, !llvm.loop !699

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.g ], [ %.019.i.i, %bb.f ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.q, ptr %i.bj, align 4, !tbaa !3
  %.not = icmp eq i64 %.08, 0
  %i.bk = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !703

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_SI_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.251") align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %i.c = load ptr, ptr %4, align 8, !tbaa !704    ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !706, !nonnull !116, !align !203 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !403  ; 2 uses
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !707, !nonnull !116, !align !520 ; 4 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.n, align 4
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i64 %i.q(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.i, i32 noundef %i.l, i64 %.sroa.01.0.copyload.i.i), !inline_history !708
  %i.s = and i64 %i.r, 6442450944
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_:bb.a
  %i.ay = sub nsw i32 0, %i.av
  %i.az = select i1 %i.ax, i32 %i.av, i32 %i.ay
  %i.ba = icmp slt i32 %i.az, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.ba, label %bb.k, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bb = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 4, !tbaa !3
  store i32 %i.bb, ptr %.sroa.04.0.i.i.i.i.i, align 4, !tbaa !3
  br label %bb.j, !llvm.loop !1217

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i: ; preds = %bb.j
  store i32 %i.aj, ptr %.sroa.04.0.i.i.i.i.i, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i, i64 4 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.j
  br i1 %i.bd, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit, label %bb.i, !llvm.loop !1218

bb.l:                                             ; preds = %bb.g
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %i.h, ptr %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.459") align 8 %10)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit: ; preds = %bb.l, %bb.h, %bb.f, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %class.anon.463, align 8            ; 9 uses
  %6 = alloca %class.anon.452, align 8            ; 4 uses
  %7 = alloca %class.anon.453, align 8            ; 2 uses
  %8 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 5 uses
  %9 = alloca %class.anon.462, align 8            ; 5 uses
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %4, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store ptr %6, ptr %9, align 8, !tbaa !179
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %8, ptr %i.a, align 8, !tbaa !674
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !776
  %.not = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %3, align 8, !tbaa !403    ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !403  ; 9 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %7, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %8, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %9, ptr %.sroa.3.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 2
  %i.l = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.d, ptr %i.f, i64 noundef %i.n, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.464") align 8 %5)
  %i.o = icmp sgt i64 %i.j, 64
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.d, ptr nonnull %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.464") align 8 %5)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr nonnull %i.p, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.464") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.d, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.464") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

bb.f:                                             ; preds = %bb.a
  %i.q = icmp eq ptr %i.d, %i.f
  br i1 %i.q, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  %i.v = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = xor i64 %i.w, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %i.d, ptr %i.f, i64 noundef %i.x, ptr nonnull %6, ptr nonnull %8)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %i.d, ptr %i.f, ptr nonnull %6, ptr nonnull %8)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.456") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.456", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.456", align 8 ; 4 uses
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1219

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_SM_SI_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.456") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.456") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.456") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1219

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.245, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.245, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 3 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.g                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.u = add nsw i64 %i.t, -1
  %5 = lshr i64 %i.u, 1
  %i.v = icmp sgt i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.bw, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3  ; 2 uses
  %i.af = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1220
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ai = zext i32 %i.ad to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.am = and i64 %i.ai, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.al, %i.an
  %.not.i.i.i.i4 = icmp eq i64 %i.ao, 0
  %i.ap = zext i32 %i.ae to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 6
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !49
  %i.at = and i64 %i.ap, 63
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.as, %i.au
  %.not.i.i.i11.i5 = icmp eq i64 %i.av, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.aw = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.ax = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.aw, %i.ax
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ay = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.aw, %i.ax
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !1210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.ba = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1222, !nonnull !116, !align !203
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1212
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !228 ; 2 uses
  %i.be = sext i32 %i.ad to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !49
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.bh = sext i32 %i.ae to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !49
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !49
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !401
  store ptr %i.b, ptr %i.k, align 8, !tbaa !195
  store ptr %i.c, ptr %i.l, align 8, !tbaa !195
  %i.bm = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !1223, !nonnull !116, !align !520
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = sub nsw i32 0, %i.bm
  %i.bs = select i1 %i.bq, i32 %i.bm, i32 %i.br
  %.fr = freeze i32 %i.bs
  %i.bt = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.bt, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.bu = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.bv = xor i1 %i.aw, %i.bu
  %.fr37 = freeze i1 %i.bv
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16, %bb.j
  %i.bw = phi i64 [ %i.ab, %bb.j ], [ %i.z, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16 ], [ %i.z, %bb.i ], [ %i.z, %bb.g ] ; 4 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !3
  %i.ca = icmp slt i64 %i.bw, %5
  br i1 %i.ca, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1224

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bw, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.cb = and i64 %i.s, 4
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cd = add nsw i64 %i.t, -2
  %i.ce = ashr exact i64 %i.cd, 1
  %i.cf = icmp eq i64 %.0.lcssa.i.i, %i.ce
  br i1 %i.cf, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cg = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ch = or disjoint i64 %i.cg, 1                ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.ch, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.cl = zext i32 %i.p to i64                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 6
  %i.cn = and i64 %i.cl, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.cq = sext i32 %i.p to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3  ; 3 uses
  %i.cu = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1220
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cx = zext i32 %i.ct to i64                   ; 2 uses
  %i.cy = lshr i64 %i.cx, 6
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !49
  %i.db = and i64 %i.cx, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.da, %i.dc
  %.not.i.i.i.i = icmp eq i64 %i.dd, 0
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cm
  %i.df = load i64, ptr %i.de, align 8, !tbaa !49
  %i.dg = and i64 %i.df, %i.co
  %.not.i.i.i11.i = icmp eq i64 %i.dg, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.dh = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.di = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.dh, %i.di
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dj = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.dh, %i.di
  %i.dk = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dl = xor i1 %i.dh, %i.dk
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dl
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i:                                      ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.dm = load ptr, ptr %i.cp, align 8, !tbaa !1210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.dn = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1222, !nonnull !116, !align !203
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1212
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 144
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !228 ; 2 uses
  %i.dr = sext i32 %i.ct to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !49
  store i64 %i.dt, ptr %i.e, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.cq
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !49
  store i64 %i.dv, ptr %i.f, align 8, !tbaa !49
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.dx, ptr %i.d, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !401
  store ptr %i.e, ptr %i.m, align 8, !tbaa !195
  store ptr %i.f, ptr %i.n, align 8, !tbaa !195
  %i.dy = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dz = load ptr, ptr %i.cr, align 8, !tbaa !1223, !nonnull !116, !align !520
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = sub nsw i32 0, %i.dy
  %i.ee = select i1 %i.ec, i32 %i.dy, i32 %i.ed
  %i.ef = icmp slt i32 %i.ee, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br i1 %i.ef, label %._crit_edge43, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit

._crit_edge43:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.cs, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge43, %bb.q
  %i.eg = phi i32 [ %.pre, %._crit_edge43 ], [ %i.ct, %bb.q ]
  %i.eh = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !1225

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.ei = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.ei, align 4, !tbaa !3
  %i.ej = icmp sgt i64 %i.s, 4
  br i1 %i.ej, label %bb.b, label %._crit_edge, !llvm.loop !1226

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.245, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.245, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.j, -2                     ; 3 uses
  %i.m = lshr i64 %i.l, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = and i64 %i.i, 4
  %i.s = icmp eq i64 %i.r, 0
  %i.t = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.m, %bb.b ], [ %i.ej, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit ] ; 8 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 3 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !179 ; 2 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !674 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !179 ; 6 uses
  %i.ab = icmp slt i64 %.08, %i.o
  br i1 %i.ab, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread
  %.034.i = phi i64 [ %i.cc, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.ae = shl i64 %.034.i, 1                      ; 2 uses
  %i.af = add i64 %i.ae, 2                        ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
end_hunk_2
begin_hunk_3_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_:bb.a
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.021, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.q = load i32, ptr %.sroa.08.021, align 4, !tbaa !3
  %i.r = load i32, ptr %0, align 4, !tbaa !3
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !1210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !1212
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !228  ; 2 uses
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !49
  store i64 %i.y, ptr %i.e, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.z = sext i32 %i.r to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !49
  store i64 %i.ab, ptr %i.f, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !401
  store ptr %i.e, ptr %i.k, align 8, !tbaa !195
  store ptr %i.f, ptr %i.l, align 8, !tbaa !195
  %i.ae = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !1223
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = sub nsw i32 0, %i.ae
  %i.ak = select i1 %i.ai, i32 %i.ae, i32 %i.aj
  %i.al = icmp slt i32 %i.ak, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.am = load i32, ptr %.sroa.08.021, align 4, !tbaa !3 ; 2 uses
  br i1 %i.al, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.an = ptrtoint ptr %.sroa.08.021 to i64
  %i.ao = sub i64 %i.an, %i.p                     ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 2                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.as = sub nsw i64 0, %i.ap
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.as
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.at, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.au = icmp eq i64 %i.ao, 4
  br i1 %i.au, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.aw = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.ax = sext i32 %i.am to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !1212
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !228 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !49
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.be = sext i32 %i.ay to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !49
  store i64 %i.bg, ptr %i.c, align 8, !tbaa !49
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !401
  store ptr %i.b, ptr %i.n, align 8, !tbaa !195
  store ptr %i.c, ptr %i.o, align 8, !tbaa !195
  %i.bi = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i8, ptr %i.ag, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = sub nsw i32 0, %i.bi
  %i.bm = select i1 %i.bk, i32 %i.bi, i32 %i.bl
  %i.bn = icmp slt i32 %i.bm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.bn, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.bo, ptr %.sroa.04.0.i, align 4, !tbaa !3
  br label %bb.h, !llvm.loop !1217

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.04.0.i, %bb.h ]
  store i32 %i.am, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.bp = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.bp, label %.loopexit, label %bb.b, !llvm.loop !1246

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.464") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.464", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.464", align 8 ; 4 uses
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1247

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_SM_SI_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.464") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.464") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.464") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1247

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit
  %.sroa.0.041 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.041, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = lshr i64 %i.k, 1
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.m = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1248
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !776  ; 3 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread
  %.034.i.i = phi i64 [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.q = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = load i32, ptr %i.s, align 4, !tbaa !3    ; 5 uses
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3    ; 3 uses
  br i1 %.not.i.i.i.i4, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = zext i32 %i.v to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 6
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !49
  %i.ab = and i64 %i.x, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.aa, %i.ac
  %.not.i.i.i.i.i5 = icmp eq i64 %i.ad, 0
  %i.ae = zext i32 %i.w to i64                    ; 2 uses
  %i.af = lshr i64 %i.ae, 6
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !49
  %i.ai = and i64 %i.ae, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = and i64 %i.ah, %i.aj
  %.not.i.i.i11.i.i6 = icmp eq i64 %i.ak, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7: ; preds = %bb.c, %.lr.ph.i.i
  %i.al = phi i1 [ %.not.i.i.i.i.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.am = phi i1 [ %.not.i.i.i11.i.i6, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i.i8 = or i1 %i.al, %i.am
  br i1 %or.cond.i.i8, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  %.sroa.0.0.copyload.i.i10 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i11 = lshr i64 %.sroa.0.0.copyload.i.i10, 32
  %.sroa.37.0.extract.trunc.i.i.i12 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i11 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i12, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.an = and i64 %.sroa.0.0.copyload.i.i10, 65536
  %.not.i.i.i15 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i15, label %bb.f, label %.critedge.i.i16

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i.i13 = and i1 %i.al, %i.am
  br i1 %or.cond.i.i.i13, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i.i16:                                  ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  %i.ao = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1250, !nonnull !116, !align !203
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1252
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !228 ; 2 uses
  %i.as = sext i32 %i.v to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !49
  %i.av = sext i32 %i.w to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !49
  %i.ay = tail call i32 @llvm.scmp.i32.i64(i64 %i.au, i64 %i.ax) ; 2 uses
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !1254, !nonnull !116, !align !520
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = sub nsw i32 0, %i.ay
  %i.be = select i1 %i.bc, i32 %i.ay, i32 %i.bd
  %.fr = freeze i32 %i.be
  %i.bf = icmp slt i32 %.fr, 0
  br i1 %i.bf, label %bb.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit: ; preds = %bb.g
  %i.bg = trunc i64 %.sroa.0.0.copyload.i.i10 to i1
  %i.bh = xor i1 %i.al, %i.bg
  %.fr38 = freeze i1 %i.bh
  br i1 %.fr38, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit, %bb.j
  %i.bi = phi i32 [ %i.w, %bb.j ], [ %i.v, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit ], [ %i.v, %bb.i ], [ %i.v, %bb.g ]
  %i.bj = phi i64 [ %i.t, %bb.j ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit ], [ %i.r, %bb.i ], [ %i.r, %bb.g ] ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !3
  %i.bl = icmp slt i64 %i.bj, %3
  br i1 %i.bl, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1255

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ] ; 5 uses
  %i.bm = and i64 %i.i, 4
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bo = add nsw i64 %i.j, -2
  %i.bp = ashr exact i64 %i.bo, 1
  %i.bq = icmp eq i64 %.0.lcssa.i.i, %i.bp
  br i1 %i.bq, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.br = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bs = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.bs, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.bw = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1248
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.by, null
  %i.bz = zext i32 %i.f to i64                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 6
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca
  %i.cc = and i64 %i.bz, 63
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = sext i32 %i.f to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.018.i.i.i = phi i64 [ %.0919.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i67.i = lshr i64 %.0919.in.i.i.i, 1    ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0919.i.i67.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = lshr i64 %i.ci, 6
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !49
  %i.cm = and i64 %i.ci, 63
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cl, %i.cn
  %.not.i.i.i.i.i = icmp eq i64 %i.co, 0
  %i.cp = load i64, ptr %i.cb, align 8, !tbaa !49
  %i.cq = and i64 %i.cp, %i.cd
  %.not.i.i.i11.i.i = icmp eq i64 %i.cq, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.cr = phi i1 [ %.not.i.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.cs = phi i1 [ %.not.i.i.i11.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.cr, %i.cs
  br i1 %or.cond.i.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ct = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i, label %bb.p, label %.critedge.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i.i = and i1 %i.cr, %i.cs
  %i.cu = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.cv = xor i1 %i.cr, %i.cu
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.cv
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i.i:                                    ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %i.cw = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1250, !nonnull !116, !align !203
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1252
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !228 ; 2 uses
  %i.da = sext i32 %i.ch to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !49
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ce
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !49
  %i.df = tail call i32 @llvm.scmp.i32.i64(i64 %i.dc, i64 %i.de) ; 2 uses
  %i.dg = load ptr, ptr %i.cf, align 8, !tbaa !1254, !nonnull !116, !align !520
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = sub nsw i32 0, %i.df
  %i.dl = select i1 %i.dj, i32 %i.df, i32 %i.dk
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.t, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.dn = getelementptr inbounds [4 x i8], ptr %0, i64 %.018.i.i.i
  store i32 %i.ch, ptr %i.dn, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0919.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !1256

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit: ; preds = %bb.q, %bb.t, %bb.s, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.018.i.i.i, %bb.s ], [ 0, %bb.t ], [ %.018.i.i.i, %bb.q ]
  %i.do = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.do, align 4, !tbaa !3
  %i.dp = icmp sgt i64 %i.i, 4
  br i1 %i.dp, label %bb.b, label %._crit_edge, !llvm.loop !1257

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
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
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !179 ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !674 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !179 ; 3 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.k = and i64 %i.c, 4
  %i.l = icmp eq i64 %i.k, 0
  %i.m = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.do, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit ] ; 8 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  %i.s = icmp slt i64 %.08, %i.i
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.t = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !1248
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !776  ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.v, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread
  %.034.i = phi i64 [ %i.bp, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = shl i64 %.034.i, 1                       ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 5 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i.i9, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ad = zext i32 %i.ab to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !49
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i.i.i.i10 = icmp eq i64 %i.aj, 0
  %i.ak = zext i32 %i.ac to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 6
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !49
  %i.ao = and i64 %i.ak, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = and i64 %i.an, %i.ap
  %.not.i.i.i11.i.i11 = icmp eq i64 %i.aq, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12: ; preds = %bb.d, %.lr.ph.i
  %i.ar = phi i1 [ %.not.i.i.i.i.i10, %bb.d ], [ false, %.lr.ph.i ] ; 3 uses
  %i.as = phi i1 [ %.not.i.i.i11.i.i11, %bb.d ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i.i13 = or i1 %i.ar, %i.as
  br i1 %or.cond.i.i13, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_:bb.a
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

bb.f:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %i.g, %i.i
  br i1 %i.t, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = ptrtoint ptr %i.i to i64
  %i.v = ptrtoint ptr %i.g to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = xor i64 %i.z, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.g, ptr %i.i, i64 noundef %i.aa, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.479") align 8 %11)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_(ptr %i.g, ptr %i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.479") align 8 %11)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %class.anon.483, align 8            ; 9 uses
  %8 = alloca %class.anon.472, align 8            ; 5 uses
  %9 = alloca %class.anon.473, align 8            ; 3 uses
  %10 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 5 uses
  %11 = alloca %class.anon.482, align 8           ; 5 uses
  store ptr %1, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.a, align 8
  store ptr %3, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %4, ptr %i.b, align 8
  store i64 %6, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  store ptr %8, ptr %11, align 8, !tbaa !179
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %10, ptr %i.c, align 8, !tbaa !674
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !776
  %.not = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr %5, align 8, !tbaa !403    ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !403  ; 9 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %9, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %10, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %11, ptr %.sroa.3.0..sroa_idx, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 2
  %i.n = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = xor i64 %i.o, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.f, ptr %i.h, i64 noundef %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.484") align 8 %7)
  %i.q = icmp sgt i64 %i.l, 64
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %i.f, ptr nonnull %i.r, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.484") align 8 %7)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr nonnull %i.r, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.484") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %i.f, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.484") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

bb.f:                                             ; preds = %bb.a
  %i.s = icmp eq ptr %i.f, %i.h
  br i1 %i.s, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.h to i64
  %i.u = ptrtoint ptr %i.f to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  %i.x = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = xor i64 %i.y, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.f, ptr %i.h, i64 noundef %i.z, ptr nonnull %8, ptr nonnull %10)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_(ptr %i.f, ptr %i.h, ptr nonnull %8, ptr nonnull %10)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.476") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.476", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.476", align 8 ; 4 uses
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1282

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.476") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.476") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.476") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1282

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.245, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.245, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.g                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.u = add nsw i64 %i.t, -1
  %5 = lshr i64 %i.u, 1
  %i.v = icmp sgt i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.co, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.z = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.aa = add i64 %i.z, 2                         ; 4 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ac = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !3  ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  %i.ag = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1283
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !1285, !nonnull !116, !align !203
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !403 ; 2 uses
  %i.al = sext i32 %i.ae to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !49
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar
  %.not.i.i.i.i4 = icmp eq i64 %i.au, 0
  %i.av = sext i32 %i.af to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 6
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !49
  %i.bc = and i64 %i.ay, 63
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.bb
  %.not.i.i.i11.i5 = icmp eq i64 %i.be, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.bf = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.bg = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.bf, %i.bg
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.bh = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.bf, %i.bg
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !1280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.bj = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1286, !nonnull !116, !align !203 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1287
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1289, !nonnull !116, !align !203
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !403 ; 2 uses
  %i.bo = sext i32 %i.ae to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !228 ; 2 uses
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !49
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.bw = sext i32 %i.af to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !49
  store i64 %i.cb, ptr %i.c, align 8, !tbaa !49
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !401
  store ptr %i.b, ptr %i.k, align 8, !tbaa !195
  store ptr %i.c, ptr %i.l, align 8, !tbaa !195
  %i.ce = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cf = load ptr, ptr %i.y, align 8, !tbaa !1290, !nonnull !116, !align !520
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = sub nsw i32 0, %i.ce
  %i.ck = select i1 %i.ci, i32 %i.ce, i32 %i.cj
  %.fr = freeze i32 %i.ck
  %i.cl = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.cl, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.cm = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.cn = xor i1 %i.bf, %i.cm
  %.fr37 = freeze i1 %i.cn
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16, %bb.j
  %i.co = phi i64 [ %i.ac, %bb.j ], [ %i.aa, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.aa, %bb.i ], [ %i.aa, %bb.g ] ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !3
  %i.cs = icmp slt i64 %i.co, %5
  br i1 %i.cs, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1291

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.co, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.ct = and i64 %i.s, 4
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cv = add nsw i64 %i.t, -2
  %i.cw = ashr exact i64 %i.cv, 1
  %i.cx = icmp eq i64 %.0.lcssa.i.i, %i.cw
  br i1 %i.cx, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cy = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cz = or disjoint i64 %i.cy, 1                ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.cz, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.de = sext i32 %i.p to i64                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3  ; 3 uses
  %i.dj = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1283
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !1285, !nonnull !116, !align !203
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !403 ; 2 uses
  %i.do = sext i32 %i.di to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = lshr i64 %i.dr, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !49
  %i.dv = and i64 %i.dr, 63
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.dw, %i.du
  %.not.i.i.i.i = icmp eq i64 %i.dx, 0
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.de
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = lshr i64 %i.ea, 6
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !49
  %i.ee = and i64 %i.ea, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = and i64 %i.ef, %i.ed
  %.not.i.i.i11.i = icmp eq i64 %i.eg, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.eh = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.ei = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.eh, %i.ei
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ej = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.eh, %i.ei
  %i.ek = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.el = xor i1 %i.eh, %i.ek
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.el
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i:                                      ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.em = load ptr, ptr %i.df, align 8, !tbaa !1280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.en = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1286, !nonnull !116, !align !203 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1287
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1289, !nonnull !116, !align !203
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !403 ; 2 uses
  %i.es = sext i32 %i.di to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !228 ; 2 uses
  %i.ex = sext i32 %i.eu to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !49
  store i64 %i.ez, ptr %i.e, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.de
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !49
  store i64 %i.fe, ptr %i.f, align 8, !tbaa !49
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.fg, ptr %i.d, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !401
  store ptr %i.e, ptr %i.m, align 8, !tbaa !195
  store ptr %i.f, ptr %i.n, align 8, !tbaa !195
  %i.fh = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fi = load ptr, ptr %i.dg, align 8, !tbaa !1290, !nonnull !116, !align !520
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = sub nsw i32 0, %i.fh
  %i.fn = select i1 %i.fl, i32 %i.fh, i32 %i.fm
  %i.fo = icmp slt i32 %i.fn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br i1 %i.fo, label %._crit_edge43, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

._crit_edge43:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge43, %bb.q
  %i.fp = phi i32 [ %.pre, %._crit_edge43 ], [ %i.di, %bb.q ]
  %i.fq = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !1292

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.fr = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.fr, align 4, !tbaa !3
  %i.fs = icmp sgt i64 %i.s, 4
  br i1 %i.fs, label %bb.b, label %._crit_edge, !llvm.loop !1293

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.245, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.245, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.j, -2                     ; 3 uses
  %i.m = lshr i64 %i.l, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = and i64 %i.i, 4
  %i.s = icmp eq i64 %i.r, 0
  %i.t = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.m, %bb.b ], [ %i.fs, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
end_hunk_4
begin_hunk_5_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_:bb.a
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.af = sext i32 %i.s to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !49
  store i64 %i.ak, ptr %i.f, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.am, ptr %i.d, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !401
  store ptr %i.e, ptr %i.l, align 8, !tbaa !195
  store ptr %i.f, ptr %i.m, align 8, !tbaa !195
  %i.an = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !1290
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = sub nsw i32 0, %i.an
  %i.at = select i1 %i.ar, i32 %i.an, i32 %i.as
  %i.au = icmp slt i32 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.av = load i32, ptr %.sroa.08.021, align 4, !tbaa !3 ; 2 uses
  br i1 %i.au, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.aw = ptrtoint ptr %.sroa.08.021 to i64
  %i.ax = sub i64 %i.aw, %i.q                     ; 3 uses
  %i.ay = ashr exact i64 %i.ax, 2                 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 1
  br i1 %i.az, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.bb = sub nsw i64 0, %i.ay
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bc, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ax, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.bd = icmp eq i64 %i.ax, 4
  br i1 %i.bd, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.bf = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.bg = sext i32 %i.av to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.bh = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1287
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !1289, !nonnull !116, !align !203
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !403 ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bg
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !228 ; 2 uses
  %i.bp = sext i32 %i.bm to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !49
  store i64 %i.br, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.bs = sext i32 %i.bh to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !49
  store i64 %i.bx, ptr %i.c, align 8, !tbaa !49
  %i.by = load ptr, ptr %i.al, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.by, ptr %i.a, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !401
  store ptr %i.b, ptr %i.o, align 8, !tbaa !195
  store ptr %i.c, ptr %i.p, align 8, !tbaa !195
  %i.bz = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ca = load i8, ptr %i.ap, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = sub nsw i32 0, %i.bz
  %i.cd = select i1 %i.cb, i32 %i.bz, i32 %i.cc
  %i.ce = icmp slt i32 %i.cd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.ce, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.cf = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.cf, ptr %.sroa.04.0.i, align 4, !tbaa !3
  br label %bb.h, !llvm.loop !1308

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.04.0.i, %bb.h ]
  store i32 %i.av, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.cg = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.cg, label %.loopexit, label %bb.b, !llvm.loop !1315

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.484") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.484", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.484", align 8 ; 4 uses
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1316

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.484") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.484") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.484") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1316

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = lshr i64 %i.k, 1
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.m = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1317
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !776  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.cb, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.r = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 4 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !3    ; 5 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3    ; 3 uses
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !1319, !nonnull !116, !align !203
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !403  ; 2 uses
  %i.aa = sext i32 %i.w to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !49
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ai, %i.ag
  %.not.i.i.i.i4 = icmp eq i64 %i.aj, 0
  %i.ak = sext i32 %i.x to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !49
  %i.ar = and i64 %i.an, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.aq
  %.not.i.i.i11.i5 = icmp eq i64 %i.at, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.au = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.av = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.au, %i.av
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.aw = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.au, %i.av
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6
  %i.ax = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1320, !nonnull !116, !align !203 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1322
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1324, !nonnull !116, !align !203
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !403 ; 2 uses
  %i.bc = sext i32 %i.w to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !228 ; 2 uses
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !49
  %i.bk = sext i32 %i.x to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !49
  %i.bq = tail call i32 @llvm.scmp.i32.i64(i64 %i.bj, i64 %i.bp) ; 2 uses
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !1325, !nonnull !116, !align !520
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = sub nsw i32 0, %i.bq
  %i.bw = select i1 %i.bu, i32 %i.bq, i32 %i.bv
  %.fr = freeze i32 %i.bw
  %i.bx = icmp slt i32 %.fr, 0
  br i1 %i.bx, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.by = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.bz = xor i1 %i.au, %i.by
  %.fr37 = freeze i1 %i.bz
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16, %bb.j
  %i.ca = phi i32 [ %i.x, %bb.j ], [ %i.w, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.w, %bb.i ], [ %i.w, %bb.g ]
  %i.cb = phi i64 [ %i.u, %bb.j ], [ %i.s, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.s, %bb.i ], [ %i.s, %bb.g ] ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !3
  %i.cd = icmp slt i64 %i.cb, %3
  br i1 %i.cd, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1326

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.cb, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.ce = and i64 %i.i, 4
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cg = add nsw i64 %i.j, -2
  %i.ch = ashr exact i64 %i.cg, 1
  %i.ci = icmp eq i64 %.0.lcssa.i.i, %i.ch
  br i1 %i.ci, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cj = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ck = or disjoint i64 %i.cj, 1                ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.ck, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.co = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1317
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.cs = sext i32 %i.f to i64                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !1319, !nonnull !116, !align !203
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !403 ; 2 uses
  %i.cy = sext i32 %i.cv to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = lshr i64 %i.db, 6
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !49
  %i.df = and i64 %i.db, 63
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = and i64 %i.dg, %i.de
  %.not.i.i.i.i = icmp eq i64 %i.dh, 0
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cs
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !49
  %i.do = and i64 %i.dk, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dp, %i.dn
  %.not.i.i.i11.i = icmp eq i64 %i.dq, 0
  br label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.dr = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.ds = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.dr, %i.ds
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dt = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.dr, %i.ds
  %i.du = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dv = xor i1 %i.dr, %i.du
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dv
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i:                                      ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.dw = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1320, !nonnull !116, !align !203 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1322
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !1324, !nonnull !116, !align !203
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !403 ; 2 uses
  %i.eb = sext i32 %i.cv to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 144
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !228 ; 2 uses
  %i.eg = sext i32 %i.ed to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !49
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.cs
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !49
  %i.eo = tail call i32 @llvm.scmp.i32.i64(i64 %i.ei, i64 %i.en) ; 2 uses
  %i.ep = load ptr, ptr %i.ct, align 8, !tbaa !1325, !nonnull !116, !align !520
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = sub nsw i32 0, %i.eo
  %i.eu = select i1 %i.es, i32 %i.eo, i32 %i.et
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %bb.t, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.ew = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.cv, ptr %i.ew, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !1327

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.ex = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.ex, align 4, !tbaa !3
  %i.ey = icmp sgt i64 %i.i, 4
  br i1 %i.ey, label %bb.b, label %._crit_edge, !llvm.loop !1328

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
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
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !179 ; 3 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !674 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !179 ; 3 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.l = and i64 %i.c, 4
  %i.m = icmp eq i64 %i.l, 0
  %i.n = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.o = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ew, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.t = icmp slt i64 %.08, %i.i
  br i1 %i.t, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.u = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !1317
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !776  ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.w, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread
  %.034.i = phi i64 [ %i.ch, %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.x = shl i64 %.034.i, 1                       ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !3   ; 5 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorIlE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !1319, !nonnull !116, !align !203
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !403 ; 2 uses
  %i.ag = sext i32 %i.ac to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_:bb.a
  %i.ay = sub nsw i32 0, %i.av
  %i.az = select i1 %i.ax, i32 %i.av, i32 %i.ay
  %i.ba = icmp slt i32 %i.az, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.ba, label %bb.k, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bb = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 4, !tbaa !3
  store i32 %i.bb, ptr %.sroa.04.0.i.i.i.i.i, align 4, !tbaa !3
  br label %bb.j, !llvm.loop !1478

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i: ; preds = %bb.j
  store i32 %i.aj, ptr %.sroa.04.0.i.i.i.i.i, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i, i64 4 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.j
  br i1 %i.bd, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit, label %bb.i, !llvm.loop !1479

bb.l:                                             ; preds = %bb.g
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %i.h, ptr %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.532") align 8 %10)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit: ; preds = %bb.l, %bb.h, %bb.f, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SI_.exit.i.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SD_EUliE0_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S8_EUliE2_EEvT0_T1_S7_S8_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %class.anon.536, align 8            ; 9 uses
  %6 = alloca %class.anon.525, align 8            ; 4 uses
  %7 = alloca %class.anon.526, align 8            ; 2 uses
  %8 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 5 uses
  %9 = alloca %class.anon.535, align 8            ; 5 uses
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %4, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store ptr %6, ptr %9, align 8, !tbaa !179
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %8, ptr %i.a, align 8, !tbaa !674
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !776
  %.not = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %3, align 8, !tbaa !403    ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !403  ; 9 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %7, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %8, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %9, ptr %.sroa.3.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 2
  %i.l = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.d, ptr %i.f, i64 noundef %i.n, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.537") align 8 %5)
  %i.o = icmp sgt i64 %i.j, 64
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.d, ptr nonnull %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.537") align 8 %5)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr nonnull %i.p, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.537") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_(ptr %i.d, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.537") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

bb.f:                                             ; preds = %bb.a
  %i.q = icmp eq ptr %i.d, %i.f
  br i1 %i.q, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  %i.v = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = xor i64 %i.w, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_SJ_(ptr %i.d, ptr %i.f, i64 noundef %i.x, ptr nonnull %6, ptr nonnull %8)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_(ptr %i.d, ptr %i.f, ptr nonnull %6, ptr nonnull %8)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE_EvT_SJ_SG_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SD_EUliE2_EEvT0_T1_SC_SD_EUliiE0_EvT_SJ_SG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.529") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.529", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.529", align 8 ; 4 uses
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1480

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_SM_SI_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.529") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.529") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.529") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1480

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.277, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.277, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 3 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.g                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.u = add nsw i64 %i.t, -1
  %5 = lshr i64 %i.u, 1
  %i.v = icmp sgt i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.bw, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3  ; 2 uses
  %i.af = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1481
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ai = zext i32 %i.ad to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.am = and i64 %i.ai, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.al, %i.an
  %.not.i.i.i.i4 = icmp eq i64 %i.ao, 0
  %i.ap = zext i32 %i.ae to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 6
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !49
  %i.at = and i64 %i.ap, 63
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.as, %i.au
  %.not.i.i.i11.i5 = icmp eq i64 %i.av, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.aw = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.ax = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.aw, %i.ax
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ay = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.aw, %i.ax
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !1474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.ba = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1483, !nonnull !116, !align !203
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1476
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1351 ; 2 uses
  %i.be = sext i32 %i.ad to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !49
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.bh = sext i32 %i.ae to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !49
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !49
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !401
  store ptr %i.b, ptr %i.k, align 8, !tbaa !195
  store ptr %i.c, ptr %i.l, align 8, !tbaa !195
  %i.bm = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !1484, !nonnull !116, !align !520
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = sub nsw i32 0, %i.bm
  %i.bs = select i1 %i.bq, i32 %i.bm, i32 %i.br
  %.fr = freeze i32 %i.bs
  %i.bt = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.bt, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.bu = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.bv = xor i1 %i.aw, %i.bu
  %.fr37 = freeze i1 %i.bv
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16, %bb.j
  %i.bw = phi i64 [ %i.ab, %bb.j ], [ %i.z, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16 ], [ %i.z, %bb.i ], [ %i.z, %bb.g ] ; 4 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !3
  %i.ca = icmp slt i64 %i.bw, %5
  br i1 %i.ca, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1485

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bw, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.cb = and i64 %i.s, 4
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cd = add nsw i64 %i.t, -2
  %i.ce = ashr exact i64 %i.cd, 1
  %i.cf = icmp eq i64 %.0.lcssa.i.i, %i.ce
  br i1 %i.cf, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cg = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ch = or disjoint i64 %i.cg, 1                ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.ch, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.cl = zext i32 %i.p to i64                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 6
  %i.cn = and i64 %i.cl, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.cq = sext i32 %i.p to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3  ; 3 uses
  %i.cu = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1481
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cx = zext i32 %i.ct to i64                   ; 2 uses
  %i.cy = lshr i64 %i.cx, 6
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !49
  %i.db = and i64 %i.cx, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.da, %i.dc
  %.not.i.i.i.i = icmp eq i64 %i.dd, 0
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cm
  %i.df = load i64, ptr %i.de, align 8, !tbaa !49
  %i.dg = and i64 %i.df, %i.co
  %.not.i.i.i11.i = icmp eq i64 %i.dg, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.dh = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.di = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.dh, %i.di
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dj = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.dh, %i.di
  %i.dk = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dl = xor i1 %i.dh, %i.dk
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dl
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i:                                      ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.dm = load ptr, ptr %i.cp, align 8, !tbaa !1474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.dn = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1483, !nonnull !116, !align !203
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1476
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 144
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1351 ; 2 uses
  %i.dr = sext i32 %i.ct to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !49
  store i64 %i.dt, ptr %i.e, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.cq
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !49
  store i64 %i.dv, ptr %i.f, align 8, !tbaa !49
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.dx, ptr %i.d, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !401
  store ptr %i.e, ptr %i.m, align 8, !tbaa !195
  store ptr %i.f, ptr %i.n, align 8, !tbaa !195
  %i.dy = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dz = load ptr, ptr %i.cr, align 8, !tbaa !1484, !nonnull !116, !align !520
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = sub nsw i32 0, %i.dy
  %i.ee = select i1 %i.ec, i32 %i.dy, i32 %i.ed
  %i.ef = icmp slt i32 %i.ee, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br i1 %i.ef, label %._crit_edge43, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit

._crit_edge43:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.cs, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge43, %bb.q
  %i.eg = phi i32 [ %.pre, %._crit_edge43 ], [ %i.ct, %bb.q ]
  %i.eh = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !1486

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.ei = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.ei, align 4, !tbaa !3
  %i.ej = icmp sgt i64 %i.s, 4
  br i1 %i.ej, label %bb.b, label %._crit_edge, !llvm.loop !1487

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.277, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.277, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.j, -2                     ; 3 uses
  %i.m = lshr i64 %i.l, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = and i64 %i.i, 4
  %i.s = icmp eq i64 %i.r, 0
  %i.t = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.m, %bb.b ], [ %i.ej, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit ] ; 8 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 3 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !179 ; 2 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !674 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !179 ; 6 uses
  %i.ab = icmp slt i64 %.08, %i.o
  br i1 %i.ab, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread
  %.034.i = phi i64 [ %i.cc, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.ae = shl i64 %.034.i, 1                      ; 2 uses
  %i.af = add i64 %i.ae, 2                        ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
end_hunk_6
begin_hunk_7_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE_EEEvT_SM_SI_:bb.a
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.021, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.q = load i32, ptr %.sroa.08.021, align 4, !tbaa !3
  %i.r = load i32, ptr %0, align 4, !tbaa !3
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !1474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !1476
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1351 ; 2 uses
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !49
  store i64 %i.y, ptr %i.e, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.z = sext i32 %i.r to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !49
  store i64 %i.ab, ptr %i.f, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !401
  store ptr %i.e, ptr %i.k, align 8, !tbaa !195
  store ptr %i.f, ptr %i.l, align 8, !tbaa !195
  %i.ae = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !1484
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = sub nsw i32 0, %i.ae
  %i.ak = select i1 %i.ai, i32 %i.ae, i32 %i.aj
  %i.al = icmp slt i32 %i.ak, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.am = load i32, ptr %.sroa.08.021, align 4, !tbaa !3 ; 2 uses
  br i1 %i.al, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.an = ptrtoint ptr %.sroa.08.021 to i64
  %i.ao = sub i64 %i.an, %i.p                     ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 2                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.as = sub nsw i64 0, %i.ap
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.as
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.at, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.au = icmp eq i64 %i.ao, 4
  br i1 %i.au, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.aw = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.ax = sext i32 %i.am to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !1476
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1351 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !49
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.be = sext i32 %i.ay to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !49
  store i64 %i.bg, ptr %i.c, align 8, !tbaa !49
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !401
  store ptr %i.b, ptr %i.n, align 8, !tbaa !195
  store ptr %i.c, ptr %i.o, align 8, !tbaa !195
  %i.bi = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i8, ptr %i.ag, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = sub nsw i32 0, %i.bi
  %i.bm = select i1 %i.bk, i32 %i.bi, i32 %i.bl
  %i.bn = icmp slt i32 %i.bm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.bn, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.bo = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.bo, ptr %.sroa.04.0.i, align 4, !tbaa !3
  br label %bb.h, !llvm.loop !1478

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.04.0.i, %bb.h ]
  store i32 %i.am, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.bp = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.bp, label %.loopexit, label %bb.b, !llvm.loop !1507

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.537") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.537", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.537", align 8 ; 4 uses
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1508

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_SM_SI_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.537") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.537") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SI_SJ_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.537") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1508

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit
  %.sroa.0.041 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.041, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = lshr i64 %i.k, 1
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.m = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1509
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !776  ; 3 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread
  %.034.i.i = phi i64 [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.q = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 4 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = load i32, ptr %i.s, align 4, !tbaa !3    ; 5 uses
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3    ; 3 uses
  br i1 %.not.i.i.i.i4, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = zext i32 %i.v to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 6
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !49
  %i.ab = and i64 %i.x, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.aa, %i.ac
  %.not.i.i.i.i.i5 = icmp eq i64 %i.ad, 0
  %i.ae = zext i32 %i.w to i64                    ; 2 uses
  %i.af = lshr i64 %i.ae, 6
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !49
  %i.ai = and i64 %i.ae, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = and i64 %i.ah, %i.aj
  %.not.i.i.i11.i.i6 = icmp eq i64 %i.ak, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7: ; preds = %bb.c, %.lr.ph.i.i
  %i.al = phi i1 [ %.not.i.i.i.i.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.am = phi i1 [ %.not.i.i.i11.i.i6, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i.i8 = or i1 %i.al, %i.am
  br i1 %or.cond.i.i8, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  %.sroa.0.0.copyload.i.i10 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i11 = lshr i64 %.sroa.0.0.copyload.i.i10, 32
  %.sroa.37.0.extract.trunc.i.i.i12 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i11 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i12, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.an = and i64 %.sroa.0.0.copyload.i.i10, 65536
  %.not.i.i.i15 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i15, label %bb.f, label %.critedge.i.i16

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i.i13 = and i1 %i.al, %i.am
  br i1 %or.cond.i.i.i13, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i.i16:                                  ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  %i.ao = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1511, !nonnull !116, !align !203
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1513
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1351 ; 2 uses
  %i.as = sext i32 %i.v to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !49
  %i.av = sext i32 %i.w to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !49
  %i.ay = tail call i32 @llvm.ucmp.i32.i64(i64 %i.au, i64 %i.ax) ; 2 uses
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !1515, !nonnull !116, !align !520
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = sub nsw i32 0, %i.ay
  %i.be = select i1 %i.bc, i32 %i.ay, i32 %i.bd
  %.fr = freeze i32 %i.be
  %i.bf = icmp slt i32 %.fr, 0
  br i1 %i.bf, label %bb.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit: ; preds = %bb.g
  %i.bg = trunc i64 %.sroa.0.0.copyload.i.i10 to i1
  %i.bh = xor i1 %i.al, %i.bg
  %.fr38 = freeze i1 %i.bh
  br i1 %.fr38, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit, %bb.j
  %i.bi = phi i32 [ %i.w, %bb.j ], [ %i.v, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit ], [ %i.v, %bb.i ], [ %i.v, %bb.g ]
  %i.bj = phi i64 [ %i.t, %bb.j ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit ], [ %i.r, %bb.i ], [ %i.r, %bb.g ] ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !3
  %i.bl = icmp slt i64 %i.bj, %3
  br i1 %i.bl, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1516

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ] ; 5 uses
  %i.bm = and i64 %i.i, 4
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bo = add nsw i64 %i.j, -2
  %i.bp = ashr exact i64 %i.bo, 1
  %i.bq = icmp eq i64 %.0.lcssa.i.i, %i.bp
  br i1 %i.bq, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.br = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bs = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.bs, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.bw = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1509
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.by, null
  %i.bz = zext i32 %i.f to i64                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 6
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca
  %i.cc = and i64 %i.bz, 63
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = sext i32 %i.f to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.018.i.i.i = phi i64 [ %.0919.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i67.i = lshr i64 %.0919.in.i.i.i, 1    ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0919.i.i67.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = lshr i64 %i.ci, 6
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !49
  %i.cm = and i64 %i.ci, 63
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cl, %i.cn
  %.not.i.i.i.i.i = icmp eq i64 %i.co, 0
  %i.cp = load i64, ptr %i.cb, align 8, !tbaa !49
  %i.cq = and i64 %i.cp, %i.cd
  %.not.i.i.i11.i.i = icmp eq i64 %i.cq, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.cr = phi i1 [ %.not.i.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.cs = phi i1 [ %.not.i.i.i11.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.cr, %i.cs
  br i1 %or.cond.i.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ct = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i, label %bb.p, label %.critedge.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i.i = and i1 %i.cr, %i.cs
  %i.cu = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.cv = xor i1 %i.cr, %i.cu
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.cv
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i.i:                                    ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %i.cw = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1511, !nonnull !116, !align !203
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1513
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1351 ; 2 uses
  %i.da = sext i32 %i.ch to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !49
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ce
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !49
  %i.df = tail call i32 @llvm.ucmp.i32.i64(i64 %i.dc, i64 %i.de) ; 2 uses
  %i.dg = load ptr, ptr %i.cf, align 8, !tbaa !1515, !nonnull !116, !align !520
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = sub nsw i32 0, %i.df
  %i.dl = select i1 %i.dj, i32 %i.df, i32 %i.dk
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.t, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.dn = getelementptr inbounds [4 x i8], ptr %0, i64 %.018.i.i.i
  store i32 %i.ch, ptr %i.dn, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0919.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !1517

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit: ; preds = %bb.q, %bb.t, %bb.s, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.018.i.i.i, %bb.s ], [ 0, %bb.t ], [ %.018.i.i.i, %bb.q ]
  %i.do = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.do, align 4, !tbaa !3
  %i.dp = icmp sgt i64 %i.i, 4
  br i1 %i.dp, label %bb.b, label %._crit_edge, !llvm.loop !1518

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
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
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !179 ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !674 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !179 ; 3 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.k = and i64 %i.c, 4
  %i.l = icmp eq i64 %i.k, 0
  %i.m = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.do, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit ] ; 8 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  %i.s = icmp slt i64 %.08, %i.i
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.t = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !1509
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !776  ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.v, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread
  %.034.i = phi i64 [ %i.bp, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = shl i64 %.034.i, 1                       ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !3   ; 5 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i.i9, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ad = zext i32 %i.ab to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !49
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i.i.i.i10 = icmp eq i64 %i.aj, 0
  %i.ak = zext i32 %i.ac to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 6
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !49
  %i.ao = and i64 %i.ak, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = and i64 %i.an, %i.ap
  %.not.i.i.i11.i.i11 = icmp eq i64 %i.aq, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12: ; preds = %bb.d, %.lr.ph.i
  %i.ar = phi i1 [ %.not.i.i.i.i.i10, %bb.d ], [ false, %.lr.ph.i ] ; 3 uses
  %i.as = phi i1 [ %.not.i.i.i11.i.i11, %bb.d ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i.i13 = or i1 %i.ar, %i.as
  br i1 %or.cond.i.i13, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_:bb.a
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

bb.f:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %i.g, %i.i
  br i1 %i.t, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = ptrtoint ptr %i.i to i64
  %i.v = ptrtoint ptr %i.g to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = xor i64 %i.z, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.g, ptr %i.i, i64 noundef %i.aa, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.552") align 8 %11)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_(ptr %i.g, ptr %i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.552") align 8 %11)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSA_11sortIndicesESC_SE_SF_EUliE0_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %class.anon.556, align 8            ; 9 uses
  %8 = alloca %class.anon.545, align 8            ; 5 uses
  %9 = alloca %class.anon.546, align 8            ; 3 uses
  %10 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 5 uses
  %11 = alloca %class.anon.555, align 8           ; 5 uses
  store ptr %1, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.a, align 8
  store ptr %3, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %4, ptr %i.b, align 8
  store i64 %6, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  store ptr %8, ptr %11, align 8, !tbaa !179
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %10, ptr %i.c, align 8, !tbaa !674
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !776
  %.not = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr %5, align 8, !tbaa !403    ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !403  ; 9 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %9, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %10, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %11, ptr %.sroa.3.0..sroa_idx, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 2
  %i.n = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = xor i64 %i.o, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.f, ptr %i.h, i64 noundef %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.557") align 8 %7)
  %i.q = icmp sgt i64 %i.l, 64
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %i.f, ptr nonnull %i.r, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.557") align 8 %7)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr nonnull %i.r, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.557") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_(ptr %i.f, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.557") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

bb.f:                                             ; preds = %bb.a
  %i.s = icmp eq ptr %i.f, %i.h
  br i1 %i.s, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.h to i64
  %i.u = ptrtoint ptr %i.f to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  %i.x = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = xor i64 %i.y, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_SL_(ptr %i.f, ptr %i.h, i64 noundef %i.z, ptr nonnull %8, ptr nonnull %10)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_(ptr %i.f, ptr %i.h, ptr nonnull %8, ptr nonnull %10)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE_EvT_SL_SI_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSA_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSA_11sortIndicesESC_SE_SF_EUliE2_EEvT0_T1_SC_SF_EUliiE0_EvT_SL_SI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.549") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.549", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.549", align 8 ; 4 uses
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1543

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.549") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.549") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.549") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1543

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.277, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.277, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.g                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.u = add nsw i64 %i.t, -1
  %5 = lshr i64 %i.u, 1
  %i.v = icmp sgt i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.co, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.z = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.aa = add i64 %i.z, 2                         ; 4 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ac = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !3  ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  %i.ag = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1544
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !1546, !nonnull !116, !align !203
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !403 ; 2 uses
  %i.al = sext i32 %i.ae to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !49
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar
  %.not.i.i.i.i4 = icmp eq i64 %i.au, 0
  %i.av = sext i32 %i.af to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 6
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !49
  %i.bc = and i64 %i.ay, 63
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.bb
  %.not.i.i.i11.i5 = icmp eq i64 %i.be, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.bf = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.bg = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.bf, %i.bg
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.bh = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.bf, %i.bg
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !1541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.bj = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1547, !nonnull !116, !align !203 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1548
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1550, !nonnull !116, !align !203
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !403 ; 2 uses
  %i.bo = sext i32 %i.ae to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1351 ; 2 uses
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !49
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.bw = sext i32 %i.af to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !49
  store i64 %i.cb, ptr %i.c, align 8, !tbaa !49
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !401
  store ptr %i.b, ptr %i.k, align 8, !tbaa !195
  store ptr %i.c, ptr %i.l, align 8, !tbaa !195
  %i.ce = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cf = load ptr, ptr %i.y, align 8, !tbaa !1551, !nonnull !116, !align !520
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = sub nsw i32 0, %i.ce
  %i.ck = select i1 %i.ci, i32 %i.ce, i32 %i.cj
  %.fr = freeze i32 %i.ck
  %i.cl = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.cl, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.cm = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.cn = xor i1 %i.bf, %i.cm
  %.fr37 = freeze i1 %i.cn
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16, %bb.j
  %i.co = phi i64 [ %i.ac, %bb.j ], [ %i.aa, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.aa, %bb.i ], [ %i.aa, %bb.g ] ; 4 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !3
  %i.cs = icmp slt i64 %i.co, %5
  br i1 %i.cs, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1552

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.co, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.ct = and i64 %i.s, 4
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cv = add nsw i64 %i.t, -2
  %i.cw = ashr exact i64 %i.cv, 1
  %i.cx = icmp eq i64 %.0.lcssa.i.i, %i.cw
  br i1 %i.cx, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cy = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cz = or disjoint i64 %i.cy, 1                ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.cz, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.de = sext i32 %i.p to i64                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3  ; 3 uses
  %i.dj = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1544
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !1546, !nonnull !116, !align !203
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !403 ; 2 uses
  %i.do = sext i32 %i.di to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = lshr i64 %i.dr, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !49
  %i.dv = and i64 %i.dr, 63
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.dw, %i.du
  %.not.i.i.i.i = icmp eq i64 %i.dx, 0
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.de
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = lshr i64 %i.ea, 6
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !49
  %i.ee = and i64 %i.ea, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = and i64 %i.ef, %i.ed
  %.not.i.i.i11.i = icmp eq i64 %i.eg, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.eh = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.ei = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.eh, %i.ei
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ej = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.eh, %i.ei
  %i.ek = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.el = xor i1 %i.eh, %i.ek
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.el
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i:                                      ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.em = load ptr, ptr %i.df, align 8, !tbaa !1541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.en = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1547, !nonnull !116, !align !203 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1548
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1550, !nonnull !116, !align !203
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !403 ; 2 uses
  %i.es = sext i32 %i.di to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1351 ; 2 uses
  %i.ex = sext i32 %i.eu to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !49
  store i64 %i.ez, ptr %i.e, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.de
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !49
  store i64 %i.fe, ptr %i.f, align 8, !tbaa !49
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.fg, ptr %i.d, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !401
  store ptr %i.e, ptr %i.m, align 8, !tbaa !195
  store ptr %i.f, ptr %i.n, align 8, !tbaa !195
  %i.fh = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fi = load ptr, ptr %i.dg, align 8, !tbaa !1551, !nonnull !116, !align !520
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = sub nsw i32 0, %i.fh
  %i.fn = select i1 %i.fl, i32 %i.fh, i32 %i.fm
  %i.fo = icmp slt i32 %i.fn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br i1 %i.fo, label %._crit_edge43, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

._crit_edge43:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge43, %bb.q
  %i.fp = phi i32 [ %.pre, %._crit_edge43 ], [ %i.di, %bb.q ]
  %i.fq = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !1553

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.fr = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.fr, align 4, !tbaa !3
  %i.fs = icmp sgt i64 %i.s, 4
  br i1 %i.fs, label %bb.b, label %._crit_edge, !llvm.loop !1554

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.277, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.277, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.j, -2                     ; 3 uses
  %i.m = lshr i64 %i.l, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = add nsw i64 %i.j, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = and i64 %i.i, 4
  %i.s = icmp eq i64 %i.r, 0
  %i.t = lshr exact i64 %i.l, 1                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.m, %bb.b ], [ %i.fs, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
end_hunk_8
begin_hunk_9_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE_EEEvT_SO_SK_:bb.a
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.af = sext i32 %i.s to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !49
  store i64 %i.ak, ptr %i.f, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.am, ptr %i.d, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.d, ptr %4, align 8, !tbaa !401
  store ptr %i.e, ptr %i.l, align 8, !tbaa !195
  store ptr %i.f, ptr %i.m, align 8, !tbaa !195
  %i.an = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !1551
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = sub nsw i32 0, %i.an
  %i.at = select i1 %i.ar, i32 %i.an, i32 %i.as
  %i.au = icmp slt i32 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.av = load i32, ptr %.sroa.08.021, align 4, !tbaa !3 ; 2 uses
  br i1 %i.au, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.aw = ptrtoint ptr %.sroa.08.021 to i64
  %i.ax = sub i64 %i.aw, %i.q                     ; 3 uses
  %i.ay = ashr exact i64 %i.ax, 2                 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 1
  br i1 %i.az, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.bb = sub nsw i64 0, %i.ay
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bc, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ax, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.bd = icmp eq i64 %i.ax, 4
  br i1 %i.bd, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.bf = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.bg = sext i32 %i.av to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.bh = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1548
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !1550, !nonnull !116, !align !203
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !403 ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bg
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1351 ; 2 uses
  %i.bp = sext i32 %i.bm to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !49
  store i64 %i.br, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.bs = sext i32 %i.bh to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !49
  store i64 %i.bx, ptr %i.c, align 8, !tbaa !49
  %i.by = load ptr, ptr %i.al, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.by, ptr %i.a, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !401
  store ptr %i.b, ptr %i.o, align 8, !tbaa !195
  store ptr %i.c, ptr %i.p, align 8, !tbaa !195
  %i.bz = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ca = load i8, ptr %i.ap, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = sub nsw i32 0, %i.bz
  %i.cd = select i1 %i.cb, i32 %i.bz, i32 %i.cc
  %i.ce = icmp slt i32 %i.cd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.ce, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.cf = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.cf, ptr %.sroa.04.0.i, align 4, !tbaa !3
  br label %bb.h, !llvm.loop !1569

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.04.0.i, %bb.h ]
  store i32 %i.av, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.cg = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.cg, label %.loopexit, label %bb.b, !llvm.loop !1576

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.557") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.557", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.557", align 8 ; 4 uses
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !1577

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_SO_SK_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.557") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.557") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SK_SL_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.557") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !1577

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.040, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.019.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = lshr i64 %i.k, 1
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.m = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1578
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !776  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread
  %.034.i.i = phi i64 [ %i.cb, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.r = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 4 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !3    ; 5 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3    ; 3 uses
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !1580, !nonnull !116, !align !203
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !403  ; 2 uses
  %i.aa = sext i32 %i.w to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !49
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ai, %i.ag
  %.not.i.i.i.i4 = icmp eq i64 %i.aj, 0
  %i.ak = sext i32 %i.x to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !49
  %i.ar = and i64 %i.an, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.aq
  %.not.i.i.i11.i5 = icmp eq i64 %i.at, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.au = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.av = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.au, %i.av
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6
  %.sroa.0.0.copyload.i9 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i10 = lshr i64 %.sroa.0.0.copyload.i9, 32
  %.sroa.37.0.extract.trunc.i.i11 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i10 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i11, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.aw = and i64 %.sroa.0.0.copyload.i9, 65536
  %.not.i.i14 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i14, label %bb.f, label %.critedge.i15

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i12 = and i1 %i.au, %i.av
  br i1 %or.cond.i.i12, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i15:                                    ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i6
  %i.ax = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1581, !nonnull !116, !align !203 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1583
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1585, !nonnull !116, !align !203
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !403 ; 2 uses
  %i.bc = sext i32 %i.w to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1351 ; 2 uses
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !49
  %i.bk = sext i32 %i.x to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !49
  %i.bq = tail call i32 @llvm.ucmp.i32.i64(i64 %i.bj, i64 %i.bp) ; 2 uses
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !1586, !nonnull !116, !align !520
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = sub nsw i32 0, %i.bq
  %i.bw = select i1 %i.bu, i32 %i.bq, i32 %i.bv
  %.fr = freeze i32 %i.bw
  %i.bx = icmp slt i32 %.fr, 0
  br i1 %i.bx, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.by = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.bz = xor i1 %i.au, %i.by
  %.fr37 = freeze i1 %i.bz
  br i1 %.fr37, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16, %bb.j
  %i.ca = phi i32 [ %i.x, %bb.j ], [ %i.w, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.w, %bb.i ], [ %i.w, %bb.g ]
  %i.cb = phi i64 [ %i.u, %bb.j ], [ %i.s, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.s, %bb.i ], [ %i.s, %bb.g ] ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !3
  %i.cd = icmp slt i64 %i.cb, %3
  br i1 %i.cd, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1587

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.cb, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.ce = and i64 %i.i, 4
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cg = add nsw i64 %i.j, -2
  %i.ch = ashr exact i64 %i.cg, 1
  %i.ci = icmp eq i64 %.0.lcssa.i.i, %i.ch
  br i1 %i.ci, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cj = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ck = or disjoint i64 %i.cj, 1                ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.ck, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.co = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !1578
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.cs = sext i32 %i.f to i64                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !1580, !nonnull !116, !align !203
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !403 ; 2 uses
  %i.cy = sext i32 %i.cv to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = lshr i64 %i.db, 6
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !49
  %i.df = and i64 %i.db, 63
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = and i64 %i.dg, %i.de
  %.not.i.i.i.i = icmp eq i64 %i.dh, 0
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cs
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !49
  %i.do = and i64 %i.dk, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dp, %i.dn
  %.not.i.i.i11.i = icmp eq i64 %i.dq, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.dr = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.ds = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.dr, %i.ds
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dt = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.dr, %i.ds
  %i.du = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dv = xor i1 %i.dr, %i.du
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dv
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i:                                      ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.dw = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !1581, !nonnull !116, !align !203 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1583
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !1585, !nonnull !116, !align !203
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !403 ; 2 uses
  %i.eb = sext i32 %i.cv to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 144
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1351 ; 2 uses
  %i.eg = sext i32 %i.ed to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !49
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.cs
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !49
  %i.eo = tail call i32 @llvm.ucmp.i32.i64(i64 %i.ei, i64 %i.en) ; 2 uses
  %i.ep = load ptr, ptr %i.ct, align 8, !tbaa !1586, !nonnull !116, !align !520
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = sub nsw i32 0, %i.eo
  %i.eu = select i1 %i.es, i32 %i.eo, i32 %i.et
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %bb.t, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.ew = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.cv, ptr %i.ew, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !1588

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.ex = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.ex, align 4, !tbaa !3
  %i.ey = icmp sgt i64 %i.i, 4
  br i1 %i.ey, label %bb.b, label %._crit_edge, !llvm.loop !1589

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
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
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !179 ; 3 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !674 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !179 ; 3 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.l = and i64 %i.c, 4
  %i.m = icmp eq i64 %i.l, 0
  %i.n = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.o = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ew, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.t = icmp slt i64 %.08, %i.i
  br i1 %i.t, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.u = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !1578
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !776  ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.w, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread
  %.034.i = phi i64 [ %i.ch, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.x = shl i64 %.034.i, 1                       ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !3   ; 5 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !1580, !nonnull !116, !align !203
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !403 ; 2 uses
  %i.ag = sext i32 %i.ac to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_:bb.a
  %i.v = ashr exact i64 %i.u, 2
  %i.w = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = xor i64 %i.x, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SJ_SK_(ptr %i.e, ptr %i.g, i64 noundef %i.y, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.699") align 8 %9)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SJ_(ptr %i.e, ptr %i.g, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.699") align 8 %9)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SE_EUliE0_EEvT0_T1_SD_SE_EUliiE_EvT_SK_SH_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SE_EUliE0_EEvT0_T1_SD_SE_EUliiE_EvT_SK_SH_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_NS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SE_EUliE0_EEvT0_T1_SD_SE_EUliiE0_EvT_SK_SH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %class.anon.703, align 8            ; 9 uses
  %6 = alloca %class.anon.692, align 8            ; 6 uses
  %7 = alloca %class.anon.693, align 8            ; 2 uses
  %8 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 7 uses
  %9 = alloca %class.anon.702, align 8            ; 5 uses
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %4, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store ptr %6, ptr %9, align 8, !tbaa !179
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %8, ptr %i.a, align 8, !tbaa !674
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !776
  %.not = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %3, align 8, !tbaa !403    ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !403  ; 10 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %7, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %8, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %9, ptr %.sroa.3.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SE_EUliE2_EEvT0_T1_SD_SE_EUliiE0_EvT_SK_SH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 2
  %i.l = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SJ_SK_(ptr %i.d, ptr %i.f, i64 noundef %i.n, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.704") align 8 %5)
  %i.o = icmp sgt i64 %i.j, 64
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SJ_(ptr %i.d, ptr nonnull %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.704") align 8 %5)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SJ_(ptr nonnull %i.p, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.704") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SE_EUliE2_EEvT0_T1_SD_SE_EUliiE0_EvT_SK_SH_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SJ_(ptr %i.d, ptr %i.f, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.704") align 8 %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SE_EUliE2_EEvT0_T1_SD_SE_EUliiE0_EvT_SK_SH_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SE_EUliE2_EEvT0_T1_SD_SE_EUliiE0_EvT_SK_SH_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SE_EUliE2_EEvT0_T1_SD_SE_EUliiE_EvT_SK_SH_.exit

bb.f:                                             ; preds = %bb.a
  %i.q = icmp eq ptr %i.d, %i.f
  br i1 %i.q, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SE_EUliE2_EEvT0_T1_SD_SE_EUliiE_EvT_SK_SH_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = ashr exact i64 %i.t, 2
  %i.v = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = xor i64 %i.w, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SJ_SK_(ptr %i.d, ptr %i.f, i64 noundef %i.x, ptr nonnull %6, ptr nonnull %8)
  %i.y = icmp sgt i64 %i.t, 64
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SJ_(ptr %i.d, ptr nonnull %i.z, ptr nonnull %6, ptr nonnull %8)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SJ_(ptr nonnull %i.z, ptr %i.f, ptr nonnull %6, ptr nonnull %8)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SE_EUliE2_EEvT0_T1_SD_SE_EUliiE_EvT_SK_SH_.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SJ_(ptr %i.d, ptr %i.f, ptr nonnull %6, ptr nonnull %8)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SE_EUliE2_EEvT0_T1_SD_SE_EUliiE_EvT_SK_SH_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SE_EUliE2_EEvT0_T1_SD_SE_EUliiE_EvT_SK_SH_.exit: ; preds = %bb.i, %bb.h, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_NS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SE_EUliE2_EEvT0_T1_SD_SE_EUliiE0_EvT_SK_SH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SJ_SK_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.696") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.696", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.696", align 8 ; 4 uses
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !2137

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_RSJ_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_RSJ_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_SN_SJ_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.696") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEET_SN_SN_SN_SJ_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.696") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SJ_SK_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.696") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !2137

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_RSJ_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.685, align 8            ; 6 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %class.anon.685, align 8            ; 6 uses
  %7 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %8 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp sgt i64 %i.e, 4
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit
  %.sroa.0.046 = phi ptr [ %1, %.lr.ph ], [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.046, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 3 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.c                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.025.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.u = add nsw i64 %i.t, -1
  %9 = lshr i64 %i.u, 1
  %i.v = icmp sgt i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22.thread
  %.034.i.i = phi i64 [ %i.bu, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3  ; 2 uses
  %i.af = load ptr, ptr %.sroa.025.0.copyload, align 8, !tbaa !2138
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ai = zext i32 %i.ad to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.am = and i64 %i.ai, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.al, %i.an
  %.not.i.i.i.i4 = icmp eq i64 %i.ao, 0
  %i.ap = zext i32 %i.ae to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 6
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !49
  %i.at = and i64 %i.ap, 63
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.as, %i.au
  %.not.i.i.i11.i5 = icmp eq i64 %i.av, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.aw = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.ax = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.aw, %i.ax
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %.sroa.0.0.copyload.i15 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i16 = lshr i64 %.sroa.0.0.copyload.i15, 32
  %.sroa.37.0.extract.trunc.i.i17 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i16 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i17, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ay = and i64 %.sroa.0.0.copyload.i15, 65536
  %.not.i.i20 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i20, label %bb.f, label %.critedge.i21

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i18 = and i1 %i.aw, %i.ax
  br i1 %or.cond.i.i18, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22.thread, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i21:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !2135
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.ba = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !2140, !nonnull !116, !align !203
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !2141
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 216
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !290 ; 2 uses
  %i.be = sext i32 %i.ad to i64
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.be ; 2 uses
  %.sroa.0.0.copyload.i.i.i8 = load i64, ptr %i.bf, align 8
  %.sroa.2.0..sroa_idx.i.i.i9 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.2.0.copyload.i.i.i10 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i9, align 8, !tbaa !13
  store i64 %.sroa.0.0.copyload.i.i.i8, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i.i.i10, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.bg = sext i32 %i.ae to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.bg ; 2 uses
  %.sroa.0.0.copyload.i4.i.i11 = load i64, ptr %i.bh, align 8
  %.sroa.2.0..sroa_idx.i5.i.i12 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.2.0.copyload.i6.i.i13 = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i.i12, align 8, !tbaa !13
  store i64 %.sroa.0.0.copyload.i4.i.i11, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i6.i.i13, ptr %i.h, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !401
  store ptr %4, ptr %i.i, align 8, !tbaa !2022
  store ptr %5, ptr %i.j, align 8, !tbaa !2022
  %i.bk = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load ptr, ptr %i.x, align 8, !tbaa !2143, !nonnull !116, !align !520
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = sub nsw i32 0, %i.bk
  %i.bq = select i1 %i.bo, i32 %i.bk, i32 %i.bp
  %.fr = freeze i32 %i.bq
  %i.br = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br i1 %i.br, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22.thread

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22: ; preds = %bb.g
  %i.bs = trunc i64 %.sroa.0.0.copyload.i15 to i1
  %i.bt = xor i1 %i.aw, %i.bs
  %.fr43 = freeze i1 %i.bt
  br i1 %.fr43, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22.thread

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22, %bb.j
  %i.bu = phi i64 [ %i.ab, %bb.j ], [ %i.z, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22 ], [ %i.z, %bb.i ], [ %i.z, %bb.g ] ; 4 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !3
  %i.by = icmp slt i64 %i.bu, %9
  br i1 %i.by, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2144

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bu, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22.thread ] ; 5 uses
  %i.bz = and i64 %i.s, 4
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cb = add nsw i64 %i.t, -2
  %i.cc = ashr exact i64 %i.cb, 1
  %i.cd = icmp eq i64 %.0.lcssa.i.i, %i.cc
  br i1 %i.cd, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.ce = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cf = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.cf, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.cj = zext i32 %i.p to i64                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 6
  %i.cl = and i64 %i.cj, 63
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.co = sext i32 %i.p to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3  ; 3 uses
  %i.cs = load ptr, ptr %.sroa.025.0.copyload, align 8, !tbaa !2138
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cv = zext i32 %i.cr to i64                   ; 2 uses
  %i.cw = lshr i64 %i.cv, 6
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !49
  %i.cz = and i64 %i.cv, 63
  %i.da = shl nuw i64 1, %i.cz
  %i.db = and i64 %i.cy, %i.da
  %.not.i.i.i.i = icmp eq i64 %i.db, 0
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ck
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !49
  %i.de = and i64 %i.dd, %i.cm
  %.not.i.i.i11.i = icmp eq i64 %i.de, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.df = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.dg = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.df, %i.dg
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dh = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.df, %i.dg
  %i.di = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dj = xor i1 %i.df, %i.di
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dj
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i:                                      ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.dk = load ptr, ptr %i.cn, align 8, !tbaa !2135
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.dl = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !2140, !nonnull !116, !align !203
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !2141
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 216
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !290 ; 2 uses
  %i.dp = sext i32 %i.cr to i64
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.do, i64 %i.dp ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dq, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !13
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %7, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.dr = getelementptr inbounds [16 x i8], ptr %i.do, i64 %i.co ; 2 uses
  %.sroa.0.0.copyload.i4.i.i = load i64, ptr %i.dr, align 8
  %.sroa.2.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.2.0.copyload.i6.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i.i, align 8, !tbaa !13
  store i64 %.sroa.0.0.copyload.i4.i.i, ptr %8, align 8
  store ptr %.sroa.2.0.copyload.i6.i.i, ptr %i.l, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.dt, ptr %i.b, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store ptr %i.b, ptr %6, align 8, !tbaa !401
  store ptr %7, ptr %i.m, align 8, !tbaa !2022
  store ptr %8, ptr %i.n, align 8, !tbaa !2022
  %i.du = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %6) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dv = load ptr, ptr %i.cp, align 8, !tbaa !2143, !nonnull !116, !align !520
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = sub nsw i32 0, %i.du
  %i.ea = select i1 %i.dy, i32 %i.du, i32 %i.dz
  %i.eb = icmp slt i32 %i.ea, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %i.eb, label %._crit_edge49, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit

._crit_edge49:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.cq, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge49, %bb.q
  %i.ec = phi i32 [ %.pre, %._crit_edge49 ], [ %i.cr, %bb.q ]
  %i.ed = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit, label %.lr.ph.i.i.i, !llvm.loop !2145

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.ee = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.ee, align 4, !tbaa !3
  %i.ef = icmp sgt i64 %i.s, 4
  br i1 %i.ef, label %bb.b, label %._crit_edge, !llvm.loop !2146

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_RSJ_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.685, align 8            ; 6 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %class.anon.685, align 8            ; 6 uses
  %7 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %8 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 3 uses
  %i.g = icmp slt i64 %i.f, 2
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %i.f, -2                     ; 3 uses
  %i.i = lshr i64 %i.h, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = add nsw i64 %i.f, -1
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = and i64 %i.e, 4
  %i.q = icmp eq i64 %i.p, 0
  %i.r = lshr exact i64 %i.h, 1                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = or disjoint i64 %i.h, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.i, %bb.b ], [ %i.ef, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_T2_.exit ] ; 8 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 3 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !179 ; 2 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !674 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !179 ; 6 uses
  %i.ab = icmp slt i64 %.08, %i.k
  br i1 %i.ab, label %.lr.ph.i.preheader, label %._crit_edge.i

end_hunk_10
begin_hunk_11_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SJ_:bb.a
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store ptr %i.b, ptr %6, align 8, !tbaa !401
  store ptr %7, ptr %i.i, align 8, !tbaa !2022
  store ptr %8, ptr %i.j, align 8, !tbaa !2022
  %i.ac = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %6) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !2143
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = sub nsw i32 0, %i.ac
  %i.ai = select i1 %i.ag, i32 %i.ac, i32 %i.ah
  %i.aj = icmp slt i32 %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ak = load i32, ptr %.sroa.08.021, align 4, !tbaa !3 ; 2 uses
  br i1 %i.aj, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.al = ptrtoint ptr %.sroa.08.021 to i64
  %i.am = sub i64 %i.al, %i.p                     ; 3 uses
  %i.an = ashr exact i64 %i.am, 2                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 1
  br i1 %i.ao, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.aq = sub nsw i64 0, %i.an
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ar, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.am, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = icmp eq i64 %i.am, 4
  br i1 %i.as, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.au = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.au, ptr %i.at, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.av = sext i32 %i.ak to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !2141
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 216
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !290 ; 2 uses
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.av ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ba, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !13
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.bb = sext i32 %i.aw to i64
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bb ; 2 uses
  %.sroa.0.0.copyload.i4.i.i.i = load i64, ptr %i.bc, align 8
  %.sroa.2.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.2.0.copyload.i6.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i.i.i, align 8, !tbaa !13
  store i64 %.sroa.0.0.copyload.i4.i.i.i, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i6.i.i.i, ptr %i.m, align 8
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !401
  store ptr %4, ptr %i.n, align 8, !tbaa !2022
  store ptr %5, ptr %i.o, align 8, !tbaa !2022
  %i.be = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = load i8, ptr %i.ae, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = sub nsw i32 0, %i.be
  %i.bi = select i1 %i.bg, i32 %i.be, i32 %i.bh
  %i.bj = icmp slt i32 %i.bi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br i1 %i.bj, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.bk = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.bk, ptr %.sroa.04.0.i, align 4, !tbaa !3
  br label %bb.h, !llvm.loop !2161

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.04.0.i, %bb.h ]
  store i32 %i.ak, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.bl = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.bl, label %.loopexit, label %bb.b, !llvm.loop !2168

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SJ_SK_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.704") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.704", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.704", align 8 ; 4 uses
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !2169

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_RSJ_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_RSJ_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_SN_SJ_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.704") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEET_SN_SN_SN_SJ_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.704") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SJ_SK_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.704") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !2169

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_RSJ_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit
  %.sroa.0.071 = phi ptr [ %1, %.lr.ph ], [ %i.m, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.071, i64 -4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3    ; 3 uses
  %i.o = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.o, ptr %i.m, align 4, !tbaa !3
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 2                   ; 3 uses
  %.sroa.049.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.s = add nsw i64 %i.r, -1
  %7 = lshr i64 %i.s, 1
  %i.t = icmp sgt i64 %i.r, 2
  br i1 %i.t, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.u = load ptr, ptr %.sroa.049.0.copyload, align 8, !tbaa !2170
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !776  ; 3 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread
  %.034.i.i = phi i64 [ %i.cs, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !3  ; 5 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i.i4, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.af = zext i32 %i.ad to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 6
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !49
  %i.aj = and i64 %i.af, 63
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = and i64 %i.ai, %i.ak
  %.not.i.i.i.i.i5 = icmp eq i64 %i.al, 0
  %i.am = zext i32 %i.ae to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 6
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !49
  %i.aq = and i64 %i.am, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = and i64 %i.ap, %i.ar
  %.not.i.i.i11.i.i6 = icmp eq i64 %i.as, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7: ; preds = %bb.c, %.lr.ph.i.i
  %i.at = phi i1 [ %.not.i.i.i.i.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.au = phi i1 [ %.not.i.i.i11.i.i6, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i.i8 = or i1 %i.at, %i.au
  br i1 %or.cond.i.i8, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  %.sroa.0.0.copyload.i.i10 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i11 = lshr i64 %.sroa.0.0.copyload.i.i10, 32
  %.sroa.37.0.extract.trunc.i.i.i12 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i11 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i12, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.av = and i64 %.sroa.0.0.copyload.i.i10, 65536
  %.not.i.i.i15 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i15, label %bb.f, label %.critedge.i.i16

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i.i13 = and i1 %i.at, %i.au
  br i1 %or.cond.i.i.i13, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i.i16:                                  ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.aw = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !2172, !nonnull !116, !align !203
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2174
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 216
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !290 ; 2 uses
  %i.ba = sext i32 %i.ad to i64
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %.sroa.0.0.copyload.i.i21 = load i64, ptr %i.bb, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.2.0.copyload.i.i23 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i22, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i21, ptr %3, align 8
  store ptr %.sroa.2.0.copyload.i.i23, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.bc = sext i32 %i.ae to i64
  %i.bd = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.bc ; 2 uses
  %.sroa.0.0.copyload.i4.i24 = load i64, ptr %i.bd, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i5.i25 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.2.0.copyload.i6.i26 = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i25, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i24, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i6.i26, ptr %i.f, align 8
  %.not.i.i.unshifted.i27 = xor i64 %.sroa.0.0.copyload.i4.i24, %.sroa.0.0.copyload.i.i21
  %.not.i.i.i28 = icmp ult i64 %.not.i.i.unshifted.i27, 4294967296
  %i.be = trunc i64 %.sroa.0.0.copyload.i4.i24 to i32 ; 5 uses
  %i.bf = trunc i64 %.sroa.0.0.copyload.i.i21 to i32 ; 7 uses
  br i1 %.not.i.i.i28, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = load i32, ptr %i.h, align 1
  %i.bh = load i32, ptr %i.g, align 1
  %i.bi = tail call i32 @llvm.bswap.i32(i32 %i.bg)
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bk = tail call i32 @llvm.ucmp.i32.i32(i32 %i.bi, i32 %i.bj)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i29

bb.k:                                             ; preds = %bb.i
  %i.bl = tail call i32 @llvm.umin.i32(i32 %i.be, i32 %i.bf)
  %i.bm = add i32 %i.bl, -4                       ; 3 uses
  %i.bn = icmp slt i32 %i.bm, 1
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = sub i32 %i.bf, %i.be
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i29

bb.m:                                             ; preds = %bb.k
  %i.bp = icmp ult i32 %i.bf, 13                  ; 2 uses
  %i.bq = icmp ult i32 %i.be, 13                  ; 2 uses
  %or.cond.i.i.i37 = and i1 %i.bp, %i.bq
  br i1 %or.cond.i.i.i37, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.br = zext nneg i32 %i.bm to i64
  %i.bs = call i32 @memcmp(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i64 noundef %i.br) #45 ; 2 uses
  %.not21.i.i.i44 = icmp eq i32 %i.bs, 0
  %i.bt = sub nsw i32 %i.bf, %i.be
  %spec.select.i.i.i45 = select i1 %.not21.i.i.i44, i32 %i.bt, i32 %i.bs
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i29

bb.o:                                             ; preds = %bb.m
  %.sroa.gep12.i38 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i23, i64 4
  %.sroa.sel13.i39 = select i1 %i.bp, ptr %i.e, ptr %.sroa.gep12.i38
  %.sroa.gep10.i40 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i26, i64 4
  %.sroa.sel.i41 = select i1 %i.bq, ptr %i.f, ptr %.sroa.gep10.i40
  %i.bu = zext nneg i32 %i.bm to i64
  %i.bv = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i39, ptr noundef nonnull %.sroa.sel.i41, i64 noundef %i.bu) #45 ; 2 uses
  %.not20.i.i.i42 = icmp eq i32 %i.bv, 0
  %i.bw = sub i32 %i.bf, %i.be
  %spec.select22.i.i.i43 = select i1 %.not20.i.i.i42, i32 %i.bw, i32 %i.bv
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i29

_ZNK8facebook5velox10StringViewssERKS1_.exit.i29: ; preds = %bb.o, %bb.n, %bb.l, %bb.j
  %.1.i.i.i30 = phi i32 [ %i.bk, %bb.j ], [ %i.bo, %bb.l ], [ %spec.select.i.i.i45, %bb.n ], [ %spec.select22.i.i.i43, %bb.o ]
  %i.bx = icmp slt i32 %.1.i.i.i30, 0
  br i1 %i.bx, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit46, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i29
  %.not.i.i31 = icmp eq i64 %.sroa.0.0.copyload.i.i21, %.sroa.0.0.copyload.i4.i24
  br i1 %.not.i.i31, label %bb.q, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i32

bb.q:                                             ; preds = %bb.p
  %i.by = icmp ult i32 %i.bf, 13
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bz = icmp samesign ult i32 %i.bf, 5
  %i.ca = icmp eq ptr %.sroa.2.0.copyload.i.i23, %.sroa.2.0.copyload.i6.i26
  %spec.select.i36 = select i1 %i.bz, i1 true, i1 %i.ca
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i32

bb.s:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i23, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i26, i64 4
  %i.cd = and i64 %.sroa.0.0.copyload.i.i21, 4294967295
  %i.ce = add nsw i64 %i.cd, -4
  %bcmp.i.i35 = tail call i32 @bcmp(ptr nonnull %i.cb, ptr nonnull %i.cc, i64 %i.ce)
  %i.cf = icmp eq i32 %bcmp.i.i35, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i32

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i32: ; preds = %bb.s, %bb.r, %bb.p
  %.0.i.i33 = phi i1 [ %i.cf, %bb.s ], [ false, %bb.p ], [ %spec.select.i36, %bb.r ]
  %not..i.i34 = xor i1 %.0.i.i33, true
  %i.cg = zext i1 %not..i.i34 to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit46

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit46: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i29, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i32
  %i.ch = phi i32 [ %i.cg, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i32 ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i29 ] ; 2 uses
  %i.ci = load ptr, ptr %i.x, align 8, !tbaa !2176, !nonnull !116, !align !520
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = sub nsw i32 0, %i.ch
  %i.cn = select i1 %i.cl, i32 %i.ch, i32 %i.cm
  %.fr = freeze i32 %i.cn
  %i.co = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %i.co, label %bb.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit: ; preds = %bb.g
  %i.cp = trunc i64 %.sroa.0.0.copyload.i.i10 to i1
  %i.cq = xor i1 %i.at, %i.cp
  %.fr68 = freeze i1 %i.cq
  br i1 %.fr68, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit46, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread: ; preds = %bb.g, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit46, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit, %bb.t
  %i.cr = phi i32 [ %i.ae, %bb.t ], [ %i.ad, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit ], [ %i.ad, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit46 ], [ %i.ad, %bb.g ]
  %i.cs = phi i64 [ %i.ab, %bb.t ], [ %i.z, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit ], [ %i.z, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit46 ], [ %i.z, %bb.g ] ; 3 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.cr, ptr %i.ct, align 4, !tbaa !3
  %i.cu = icmp slt i64 %i.cs, %7
  br i1 %i.cu, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2177

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.cs, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread ] ; 5 uses
  %i.cv = and i64 %i.q, 4
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.cx = add nsw i64 %i.r, -2
  %i.cy = ashr exact i64 %i.cx, 1
  %i.cz = icmp eq i64 %.0.lcssa.i.i, %i.cy
  br i1 %i.cz, label %.thread.i, label %bb.v

.thread.i:                                        ; preds = %bb.u
  %i.da = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.db = or disjoint i64 %i.da, 1                ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.v, %.thread.i
  %.1.i11.i = phi i64 [ %i.db, %.thread.i ], [ %.0.lcssa.i.i, %bb.v ]
  %i.df = load ptr, ptr %.sroa.049.0.copyload, align 8, !tbaa !2170
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dh, null
  %i.di = zext i32 %i.n to i64                    ; 2 uses
  %i.dj = lshr i64 %i.di, 6
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dj
  %i.dl = and i64 %i.di, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = sext i32 %i.n to i64
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.an, %.lr.ph.i.i.preheader.i
  %.018.i.i.i = phi i64 [ %.0919.i.i67.i, %bb.an ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i67.i = lshr i64 %.0919.in.i.i.i, 1    ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0919.i.i67.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = lshr i64 %i.dr, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !49
  %i.dv = and i64 %i.dr, 63
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.du, %i.dw
  %.not.i.i.i.i.i = icmp eq i64 %i.dx, 0
  %i.dy = load i64, ptr %i.dk, align 8, !tbaa !49
  %i.dz = and i64 %i.dy, %i.dm
  %.not.i.i.i11.i.i = icmp eq i64 %i.dz, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.w, %.lr.ph.i.i.i
  %i.ea = phi i1 [ %.not.i.i.i.i.i, %bb.w ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.eb = phi i1 [ %.not.i.i.i11.i.i, %bb.w ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.ea, %i.eb
  br i1 %or.cond.i.i, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %bb.ab [
    i32 1, label %bb.y
    i32 0, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.ec = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i, label %bb.z, label %.critedge.i.i

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.aa:                                            ; preds = %bb.x
  %or.cond.i.i.i = and i1 %i.ea, %i.eb
  %i.ed = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.ee = xor i1 %i.ea, %i.ed
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.ee
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit, label %bb.an

bb.ab:                                            ; preds = %bb.x
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i.i:                                    ; preds = %bb.y
  tail call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.ac:                                            ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.ef = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !2172, !nonnull !116, !align !203
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !2174
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 216
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !290 ; 2 uses
  %i.ej = sext i32 %i.dq to i64
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.ei, i64 %i.ej ; 2 uses
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %i.ek, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i17, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.el = getelementptr inbounds [16 x i8], ptr %i.ei, i64 %i.dn ; 2 uses
  %.sroa.0.0.copyload.i4.i = load i64, ptr %i.el, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.2.0.copyload.i6.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i6.i, ptr %i.j, align 8
  %.not.i.i.unshifted.i = xor i64 %.sroa.0.0.copyload.i4.i, %.sroa.0.0.copyload.i.i17
  %.not.i.i.i18 = icmp ult i64 %.not.i.i.unshifted.i, 4294967296
  %i.em = trunc i64 %.sroa.0.0.copyload.i4.i to i32 ; 5 uses
  %i.en = trunc i64 %.sroa.0.0.copyload.i.i17 to i32 ; 7 uses
  br i1 %.not.i.i.i18, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eo = load i32, ptr %i.l, align 1
  %i.ep = load i32, ptr %i.k, align 1
  %i.eq = tail call i32 @llvm.bswap.i32(i32 %i.eo)
  %i.er = tail call i32 @llvm.bswap.i32(i32 %i.ep)
  %i.es = tail call i32 @llvm.ucmp.i32.i32(i32 %i.eq, i32 %i.er)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.et = tail call i32 @llvm.umin.i32(i32 %i.em, i32 %i.en)
  %i.eu = add i32 %i.et, -4                       ; 3 uses
  %i.ev = icmp slt i32 %i.eu, 1
  br i1 %i.ev, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ew = sub i32 %i.en, %i.em
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.ex = icmp ult i32 %i.en, 13                  ; 2 uses
  %i.ey = icmp ult i32 %i.em, 13                  ; 2 uses
  %or.cond.i.i.i20 = and i1 %i.ex, %i.ey
  br i1 %or.cond.i.i.i20, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ez = zext nneg i32 %i.eu to i64
  %i.fa = call i32 @memcmp(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i64 noundef %i.ez) #45 ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.fa, 0
  %i.fb = sub nsw i32 %i.en, %i.em
  %spec.select.i.i.i = select i1 %.not21.i.i.i, i32 %i.fb, i32 %i.fa
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.ai:                                            ; preds = %bb.ag
  %.sroa.gep12.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %.sroa.sel13.i = select i1 %i.ex, ptr %i.i, ptr %.sroa.gep12.i
  %.sroa.gep10.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %.sroa.sel.i = select i1 %i.ey, ptr %i.j, ptr %.sroa.gep10.i
  %i.fc = zext nneg i32 %i.eu to i64
  %i.fd = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i, ptr noundef nonnull %.sroa.sel.i, i64 noundef %i.fc) #45 ; 2 uses
  %.not20.i.i.i = icmp eq i32 %i.fd, 0
  %i.fe = sub i32 %i.en, %i.em
  %spec.select22.i.i.i = select i1 %.not20.i.i.i, i32 %i.fe, i32 %i.fd
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

_ZNK8facebook5velox10StringViewssERKS1_.exit.i:   ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ad
  %.1.i.i.i = phi i32 [ %i.es, %bb.ad ], [ %i.ew, %bb.af ], [ %spec.select.i.i.i, %bb.ah ], [ %spec.select22.i.i.i, %bb.ai ]
  %i.ff = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.ff, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i17, %.sroa.0.0.copyload.i4.i
  br i1 %.not.i.i, label %bb.ak, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.fg = icmp ult i32 %i.en, 13
  br i1 %i.fg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fh = icmp samesign ult i32 %i.en, 5
  %i.fi = icmp eq ptr %.sroa.2.0.copyload.i.i, %.sroa.2.0.copyload.i6.i
  %spec.select.i = select i1 %i.fh, i1 true, i1 %i.fi
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %i.fl = and i64 %.sroa.0.0.copyload.i.i17, 4294967295
  %i.fm = add nsw i64 %i.fl, -4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.fj, ptr nonnull %i.fk, i64 %i.fm)
  %i.fn = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i:   ; preds = %bb.am, %bb.al, %bb.aj
  %.0.i.i19 = phi i1 [ %i.fn, %bb.am ], [ false, %bb.aj ], [ %spec.select.i, %bb.al ]
  %not..i.i = xor i1 %.0.i.i19, true
  %i.fo = zext i1 %not..i.i to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i
  %i.fp = phi i32 [ %i.fo, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i ] ; 2 uses
  %i.fq = load ptr, ptr %i.do, align 8, !tbaa !2176, !nonnull !116, !align !520
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = sub nsw i32 0, %i.fp
  %i.fv = select i1 %i.ft, i32 %i.fp, i32 %i.fu
  %i.fw = icmp slt i32 %i.fv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br i1 %i.fw, label %bb.an, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit

end_hunk_11
begin_hunk_12_@_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SJ_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %i.cf, label %.lr.ph.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_.exit

.lr.ph.i.backedge:                                ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit, %bb.g
  br label %.lr.ph.i, !llvm.loop !2188

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_.exit: ; preds = %bb.g, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit, %._ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_.exit_crit_edge
  %i.cg = phi i32 [ %.pre20, %._ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_.exit_crit_edge ], [ %i.s, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit ], [ %i.s, %bb.g ]
  %.sroa.03.0.lcssa.i = phi ptr [ %.sroa.07.016, %._ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_.exit_crit_edge ], [ %.sroa.0.08.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit ], [ %.sroa.0.08.i, %bb.g ]
  store i32 %i.cg, ptr %.sroa.03.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.07.016, i64 4 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %1
  br i1 %i.ci, label %._crit_edge, label %bb.b, !llvm.loop !2190
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclIiNS_17__normal_iteratorIPiSA_EEEEbRT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2181, !nonnull !116, !align !203
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2170
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !776  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.a to i64                     ; 2 uses
  %i.h = lshr i64 %i.g, 6
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !49
  %i.k = and i64 %i.g, 63
  %i.l = shl nuw i64 1, %i.k
  %i.m = and i64 %i.j, %i.l
  %.not.i.i.i.i = icmp eq i64 %i.m, 0
  %i.n = zext i32 %i.b to i64                     ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !49
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.q, %i.s
  %.not.i.i.i11.i = icmp eq i64 %i.t, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.b, %bb.a
  %i.u = phi i1 [ %.not.i.i.i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.v = phi i1 [ %.not.i.i.i11.i, %bb.b ], [ false, %bb.a ] ; 2 uses
  %or.cond.i = or i1 %i.u, %i.v
  br i1 %or.cond.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2183, !nonnull !116, !align !520
  %.sroa.0.0.copyload.i = load i64, ptr %i.x, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.h [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.y = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.f:                                             ; preds = %bb.c
  %or.cond.i.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.aa = xor i1 %i.u, %i.z
  %spec.select.i = xor i1 %i.aa, true
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i:                                      ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2184, !nonnull !116, !align !203
  %i.ad = tail call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i32 noundef %i.a, i32 noundef %i.b)
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit: ; preds = %bb.f, %bb.g, %bb.i
  %.0.i = phi i1 [ %i.ad, %bb.i ], [ false, %bb.f ], [ %spec.select.i, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SJ_SK_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.707", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.707", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph26

bb.b:                                             ; preds = %.lr.ph26
  %i.h = icmp eq i64 %i.l, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph26, !llvm.loop !2191

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.j, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_RSJ_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_RSJ_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph26:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1825 = phi ptr [ %i.p, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01924 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.s, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.01924, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %storemerge1825, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_SN_SJ_(ptr %0, ptr nonnull %i.f, ptr %i.n, ptr nonnull %i.o, ptr %3, ptr %4)
  %i.p = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEET_SN_SN_SN_SJ_(ptr nonnull %i.f, ptr %storemerge1825, ptr %0, ptr %3, ptr %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SJ_SK_(ptr %i.p, ptr %storemerge1825, i64 noundef %i.l, ptr %3, ptr %4)
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.a
  %i.s = ashr exact i64 %i.r, 2                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 16
  br i1 %i.t, label %bb.b, label %.loopexit, !llvm.loop !2191

.loopexit:                                        ; preds = %.lr.ph26, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_RSJ_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !179 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !674
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit
  %.sroa.0.037 = phi ptr [ %1, %.lr.ph ], [ %i.n, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.037, i64 -4 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 2 uses
  %i.p = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.p, ptr %i.n, align 4, !tbaa !3
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 2                   ; 3 uses
  %i.t = add nsw i64 %i.s, -1
  %7 = lshr i64 %i.t, 1
  %i.u = icmp sgt i64 %i.s, 2
  br i1 %i.u, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.v = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !2174
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !290  ; 2 uses
  %i.y = load i8, ptr %i.g, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.z = trunc nuw i8 %i.y to i1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit28
  %.034.i.i = phi i64 [ %spec.select.i.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit28 ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.aa = shl i64 %.034.i.i, 1                    ; 2 uses
  %i.ab = add i64 %i.aa, 2                        ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab
  %i.ad = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ad
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.ah ; 2 uses
  %.sroa.0.0.copyload.i.i3 = load i64, ptr %i.ai, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.2.0.copyload.i.i5 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i4, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i3, ptr %3, align 8
  store ptr %.sroa.2.0.copyload.i.i5, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.aj = sext i32 %i.ag to i64
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %.sroa.0.0.copyload.i4.i6 = load i64, ptr %i.ak, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i5.i7 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.2.0.copyload.i6.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i7, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i6, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i6.i8, ptr %i.f, align 8
  %.not.i.i.unshifted.i9 = xor i64 %.sroa.0.0.copyload.i4.i6, %.sroa.0.0.copyload.i.i3
  %.not.i.i.i10 = icmp ult i64 %.not.i.i.unshifted.i9, 4294967296
  %i.al = trunc i64 %.sroa.0.0.copyload.i4.i6 to i32 ; 5 uses
  %i.am = trunc i64 %.sroa.0.0.copyload.i.i3 to i32 ; 7 uses
  br i1 %.not.i.i.i10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.an = load i32, ptr %i.i, align 1
  %i.ao = load i32, ptr %i.h, align 1
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  %i.ar = tail call i32 @llvm.ucmp.i32.i32(i32 %i.ap, i32 %i.aq)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.al, i32 %i.am)
  %i.at = add i32 %i.as, -4                       ; 3 uses
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = sub i32 %i.am, %i.al
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11

bb.f:                                             ; preds = %bb.d
  %i.aw = icmp ult i32 %i.am, 13                  ; 2 uses
  %i.ax = icmp ult i32 %i.al, 13                  ; 2 uses
  %or.cond.i.i.i19 = and i1 %i.aw, %i.ax
  br i1 %or.cond.i.i.i19, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = call i32 @memcmp(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i64 noundef %i.ay) #45 ; 2 uses
  %.not21.i.i.i26 = icmp eq i32 %i.az, 0
  %i.ba = sub nsw i32 %i.am, %i.al
  %spec.select.i.i.i27 = select i1 %.not21.i.i.i26, i32 %i.ba, i32 %i.az
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11

bb.h:                                             ; preds = %bb.f
  %.sroa.gep12.i20 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i5, i64 4
  %.sroa.sel13.i21 = select i1 %i.aw, ptr %i.e, ptr %.sroa.gep12.i20
  %.sroa.gep10.i22 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i8, i64 4
  %.sroa.sel.i23 = select i1 %i.ax, ptr %i.f, ptr %.sroa.gep10.i22
  %i.bb = zext nneg i32 %i.at to i64
  %i.bc = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i21, ptr noundef nonnull %.sroa.sel.i23, i64 noundef %i.bb) #45 ; 2 uses
  %.not20.i.i.i24 = icmp eq i32 %i.bc, 0
  %i.bd = sub i32 %i.am, %i.al
  %spec.select22.i.i.i25 = select i1 %.not20.i.i.i24, i32 %i.bd, i32 %i.bc
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11

_ZNK8facebook5velox10StringViewssERKS1_.exit.i11: ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.1.i.i.i12 = phi i32 [ %i.ar, %bb.c ], [ %i.av, %bb.e ], [ %spec.select.i.i.i27, %bb.g ], [ %spec.select22.i.i.i25, %bb.h ]
  %i.be = icmp slt i32 %.1.i.i.i12, 0
  br i1 %i.be, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit28, label %bb.i

bb.i:                                             ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11
  %.not.i.i13 = icmp eq i64 %.sroa.0.0.copyload.i.i3, %.sroa.0.0.copyload.i4.i6
  br i1 %.not.i.i13, label %bb.j, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp ult i32 %i.am, 13
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp samesign ult i32 %i.am, 5
  %i.bh = icmp eq ptr %.sroa.2.0.copyload.i.i5, %.sroa.2.0.copyload.i6.i8
  %spec.select.i18 = select i1 %i.bg, i1 true, i1 %i.bh
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14

bb.l:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i5, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i8, i64 4
  %i.bk = and i64 %.sroa.0.0.copyload.i.i3, 4294967295
  %i.bl = add nsw i64 %i.bk, -4
  %bcmp.i.i17 = tail call i32 @bcmp(ptr nonnull %i.bi, ptr nonnull %i.bj, i64 %i.bl)
  %i.bm = icmp eq i32 %bcmp.i.i17, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14: ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i15 = phi i1 [ %i.bm, %bb.l ], [ false, %bb.i ], [ %spec.select.i18, %bb.k ]
  %not..i.i16 = xor i1 %.0.i.i15, true
  %i.bn = zext i1 %not..i.i16 to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit28

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit28: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14
  %i.bo = phi i32 [ %i.bn, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14 ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11 ] ; 2 uses
  %i.bp = sub nsw i32 0, %i.bo
  %i.bq = select i1 %i.z, i32 %i.bo, i32 %i.bp
  %i.br = icmp slt i32 %i.bq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %spec.select.i.i = select i1 %i.br, i64 %i.ad, i64 %i.ab ; 4 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !3
  %i.bv = icmp slt i64 %spec.select.i.i, %7
  br i1 %i.bv, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2192

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit28, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit28 ] ; 5 uses
  %i.bw = and i64 %i.r, 4
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.by = add nsw i64 %i.s, -2
  %i.bz = ashr exact i64 %i.by, 1
  %i.ca = icmp eq i64 %.0.lcssa.i.i, %i.bz
  br i1 %i.ca, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %bb.m
  %i.cb = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cc = or disjoint i64 %i.cb, 1                ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.n, %.thread.i
  %.1.i11.i = phi i64 [ %i.cc, %.thread.i ], [ %.0.lcssa.i.i, %bb.n ]
  %i.cg = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !2174
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 216
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !290 ; 2 uses
  %i.cj = sext i32 %i.o to i64
  %i.ck = getelementptr inbounds [16 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cl = load i8, ptr %i.g, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.cm = trunc nuw i8 %i.cl to i1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.y ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [16 x i8], ptr %i.ci, i64 %i.cp ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cq, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %.sroa.0.0.copyload.i4.i = load i64, ptr %i.ck, align 8 ; 4 uses
  %.sroa.2.0.copyload.i6.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i6.i, ptr %i.k, align 8
  %.not.i.i.unshifted.i = xor i64 %.sroa.0.0.copyload.i4.i, %.sroa.0.0.copyload.i.i
  %.not.i.i.i = icmp ult i64 %.not.i.i.unshifted.i, 4294967296
  %i.cr = trunc i64 %.sroa.0.0.copyload.i4.i to i32 ; 5 uses
  %i.cs = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 7 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.ct = load i32, ptr %i.m, align 1
  %i.cu = load i32, ptr %i.l, align 1
  %i.cv = tail call i32 @llvm.bswap.i32(i32 %i.ct)
  %i.cw = tail call i32 @llvm.bswap.i32(i32 %i.cu)
  %i.cx = tail call i32 @llvm.ucmp.i32.i32(i32 %i.cv, i32 %i.cw)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.cy = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 %i.cs)
  %i.cz = add i32 %i.cy, -4                       ; 3 uses
  %i.da = icmp slt i32 %i.cz, 1
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.db = sub i32 %i.cs, %i.cr
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.dc = icmp ult i32 %i.cs, 13                  ; 2 uses
  %i.dd = icmp ult i32 %i.cr, 13                  ; 2 uses
  %or.cond.i.i.i = and i1 %i.dc, %i.dd
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = zext nneg i32 %i.cz to i64
  %i.df = call i32 @memcmp(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i64 noundef %i.de) #45 ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.df, 0
  %i.dg = sub nsw i32 %i.cs, %i.cr
  %spec.select.i.i.i = select i1 %.not21.i.i.i, i32 %i.dg, i32 %i.df
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.t:                                             ; preds = %bb.r
  %.sroa.gep12.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %.sroa.sel13.i = select i1 %i.dc, ptr %i.j, ptr %.sroa.gep12.i
  %.sroa.gep10.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %.sroa.sel.i = select i1 %i.dd, ptr %i.k, ptr %.sroa.gep10.i
  %i.dh = zext nneg i32 %i.cz to i64
  %i.di = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i, ptr noundef nonnull %.sroa.sel.i, i64 noundef %i.dh) #45 ; 2 uses
  %.not20.i.i.i = icmp eq i32 %i.di, 0
  %i.dj = sub i32 %i.cs, %i.cr
  %spec.select22.i.i.i = select i1 %.not20.i.i.i, i32 %i.dj, i32 %i.di
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

_ZNK8facebook5velox10StringViewssERKS1_.exit.i:   ; preds = %bb.t, %bb.s, %bb.q, %bb.o
  %.1.i.i.i = phi i32 [ %i.cx, %bb.o ], [ %i.db, %bb.q ], [ %spec.select.i.i.i, %bb.s ], [ %spec.select22.i.i.i, %bb.t ]
  %i.dk = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.dk, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i4.i
  br i1 %.not.i.i, label %bb.v, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.dl = icmp ult i32 %i.cs, 13
  br i1 %i.dl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dm = icmp samesign ult i32 %i.cs, 5
  %i.dn = icmp eq ptr %.sroa.2.0.copyload.i.i, %.sroa.2.0.copyload.i6.i
  %spec.select.i = select i1 %i.dm, i1 true, i1 %i.dn
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.x:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %i.dq = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.dr = add nsw i64 %i.dq, -4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.do, ptr nonnull %i.dp, i64 %i.dr)
  %i.ds = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i:   ; preds = %bb.x, %bb.w, %bb.u
  %.0.i.i = phi i1 [ %i.ds, %bb.x ], [ false, %bb.u ], [ %spec.select.i, %bb.w ]
  %not..i.i = xor i1 %.0.i.i, true
  %i.dt = zext i1 %not..i.i to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i
  %i.du = phi i32 [ %i.dt, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i ] ; 2 uses
  %i.dv = sub nsw i32 0, %i.du
  %i.dw = select i1 %i.cm, i32 %i.du, i32 %i.dv
  %i.dx = icmp slt i32 %i.dw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br i1 %i.dx, label %bb.y, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit

bb.y:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit
  %i.dy = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.co, ptr %i.dy, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit, label %.lr.ph.i.i.i, !llvm.loop !2193

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit: ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit, %bb.y, %bb.n
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.n ], [ %.019.i.i.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit ], [ 0, %bb.y ]
  %i.dz = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.o, ptr %i.dz, align 4, !tbaa !3
  %i.ea = icmp sgt i64 %i.r, 4
  br i1 %i.ea, label %bb.b, label %._crit_edge, !llvm.loop !2194

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_RSJ_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !179 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !674
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.v = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SJ_SJ_SK_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.ea, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SJ_SJ_SK_T2_.exit ] ; 8 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %.09
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3    ; 2 uses
  %i.aa = icmp slt i64 %.09, %i.i
  br i1 %i.aa, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ab = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !2174
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 216
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !290 ; 2 uses
  %i.ae = load i8, ptr %i.o, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.af = trunc nuw i8 %i.ae to i1
end_hunk_12
begin_hunk_13_@_ZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_:bb.a
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_SM_(ptr %i.g, ptr %i.i, i64 noundef %i.aa, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.719") align 8 %11)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_(ptr %i.g, ptr %i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.719") align 8 %11)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SF_SG_EUliE0_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SF_SG_EUliE0_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit: ; preds = %bb.g, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb1EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE_ZNKSB_11sortIndicesESD_SF_SG_EUliE0_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %class.anon.723, align 8            ; 9 uses
  %8 = alloca %class.anon.712, align 8            ; 7 uses
  %9 = alloca %class.anon.713, align 8            ; 3 uses
  %10 = alloca %"struct.facebook::velox::CompareFlags", align 8 ; 7 uses
  %11 = alloca %class.anon.722, align 8           ; 5 uses
  store ptr %1, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.a, align 8
  store ptr %3, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %4, ptr %i.b, align 8
  store i64 %6, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  store ptr %8, ptr %11, align 8, !tbaa !179
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %10, ptr %i.c, align 8, !tbaa !674
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !776
  %.not = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr %5, align 8, !tbaa !403    ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !403  ; 10 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %9, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %10, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %11, ptr %.sroa.3.0..sroa_idx, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 2
  %i.n = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = xor i64 %i.o, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_SM_(ptr %i.f, ptr %i.h, i64 noundef %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.724") align 8 %7)
  %i.q = icmp sgt i64 %i.l, 64
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_(ptr %i.f, ptr nonnull %i.r, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.724") align 8 %7)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_(ptr nonnull %i.r, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.724") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_(ptr %i.f, ptr %i.h, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.724") align 8 %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit

bb.f:                                             ; preds = %bb.a
  %i.s = icmp eq ptr %i.f, %i.h
  br i1 %i.s, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.h to i64
  %i.u = ptrtoint ptr %i.f to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 2
  %i.x = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = xor i64 %i.y, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_SM_(ptr %i.f, ptr %i.h, i64 noundef %i.z, ptr nonnull %8, ptr nonnull %10)
  %i.aa = icmp sgt i64 %i.v, 64
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_(ptr %i.f, ptr nonnull %i.ab, ptr nonnull %8, ptr nonnull %10)
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_(ptr nonnull %i.ab, ptr %i.h, ptr nonnull %8, ptr nonnull %10)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_(ptr %i.f, ptr %i.h, ptr nonnull %8, ptr nonnull %10)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE_EvT_SM_SJ_.exit: ; preds = %bb.i, %bb.h, %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNK8facebook5velox10FlatVectorINS8_10StringViewEE11sortIndicesILb0EZNKSB_11sortIndicesERS5_PKiNS8_12CompareFlagsEEUliE1_ZNKSB_11sortIndicesESD_SF_SG_EUliE2_EEvT0_T1_SD_SG_EUliiE0_EvT_SM_SJ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_SM_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.716") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.716", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.716", align 8 ; 4 uses
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !2204

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_SP_SL_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.716") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEET_SP_SP_SP_SL_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.716") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_SM_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.716") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !2204

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.685, align 8            ; 6 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %class.anon.685, align 8            ; 6 uses
  %7 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %8 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp sgt i64 %i.e, 4
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit
  %.sroa.0.046 = phi ptr [ %1, %.lr.ph ], [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.046, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.c                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.025.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.u = add nsw i64 %i.t, -1
  %9 = lshr i64 %i.u, 1
  %i.v = icmp sgt i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.025.0.copyload, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22.thread
  %.034.i.i = phi i64 [ %i.cm, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.z = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.aa = add i64 %i.z, 2                         ; 4 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ac = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !3  ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  %i.ag = load ptr, ptr %.sroa.025.0.copyload, align 8, !tbaa !2205
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i3, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !2207, !nonnull !116, !align !203
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !403 ; 2 uses
  %i.al = sext i32 %i.ae to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !49
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar
  %.not.i.i.i.i4 = icmp eq i64 %i.au, 0
  %i.av = sext i32 %i.af to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 6
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !49
  %i.bc = and i64 %i.ay, 63
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.bb
  %.not.i.i.i11.i5 = icmp eq i64 %i.be, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6: ; preds = %bb.c, %.lr.ph.i.i
  %i.bf = phi i1 [ %.not.i.i.i.i4, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.bg = phi i1 [ %.not.i.i.i11.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i7 = or i1 %i.bf, %i.bg
  br i1 %or.cond.i7, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %.sroa.0.0.copyload.i15 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i16 = lshr i64 %.sroa.0.0.copyload.i15, 32
  %.sroa.37.0.extract.trunc.i.i17 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i16 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i17, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.bh = and i64 %.sroa.0.0.copyload.i15, 65536
  %.not.i.i20 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i20, label %bb.f, label %.critedge.i21

bb.f:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i18 = and i1 %i.bf, %i.bg
  br i1 %or.cond.i.i18, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22.thread, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22

bb.h:                                             ; preds = %bb.d
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i21:                                    ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i6
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !2202
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.bj = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !2208, !nonnull !116, !align !203 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2209
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2211, !nonnull !116, !align !203
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !403 ; 2 uses
  %i.bo = sext i32 %i.ae to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 216
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !290 ; 2 uses
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i.i.i8 = load i64, ptr %i.bu, align 8
  %.sroa.2.0..sroa_idx.i.i.i9 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.2.0.copyload.i.i.i10 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i9, align 8, !tbaa !13
  store i64 %.sroa.0.0.copyload.i.i.i8, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i.i.i10, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.bv = sext i32 %i.af to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.by ; 2 uses
  %.sroa.0.0.copyload.i4.i.i11 = load i64, ptr %i.bz, align 8
  %.sroa.2.0..sroa_idx.i5.i.i12 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.2.0.copyload.i6.i.i13 = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i.i12, align 8, !tbaa !13
  store i64 %.sroa.0.0.copyload.i4.i.i11, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i6.i.i13, ptr %i.h, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !401
  store ptr %4, ptr %i.i, align 8, !tbaa !2022
  store ptr %5, ptr %i.j, align 8, !tbaa !2022
  %i.cc = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cd = load ptr, ptr %i.y, align 8, !tbaa !2212, !nonnull !116, !align !520
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = sub nsw i32 0, %i.cc
  %i.ci = select i1 %i.cg, i32 %i.cc, i32 %i.ch
  %.fr = freeze i32 %i.ci
  %i.cj = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br i1 %i.cj, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22.thread

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22: ; preds = %bb.g
  %i.ck = trunc i64 %.sroa.0.0.copyload.i15 to i1
  %i.cl = xor i1 %i.bf, %i.ck
  %.fr43 = freeze i1 %i.cl
  br i1 %.fr43, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22.thread

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22.thread: ; preds = %bb.g, %bb.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22, %bb.j
  %i.cm = phi i64 [ %i.ac, %bb.j ], [ %i.aa, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22 ], [ %i.aa, %bb.i ], [ %i.aa, %bb.g ] ; 4 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !3
  %i.cq = icmp slt i64 %i.cm, %9
  br i1 %i.cq, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2213

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.cm, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22.thread ] ; 5 uses
  %i.cr = and i64 %i.s, 4
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ct = add nsw i64 %i.t, -2
  %i.cu = ashr exact i64 %i.ct, 1
  %i.cv = icmp eq i64 %.0.lcssa.i.i, %i.cu
  br i1 %i.cv, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.cw = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cx = or disjoint i64 %i.cw, 1                ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.l, %.thread.i
  %.1.i11.i = phi i64 [ %i.cx, %.thread.i ], [ %.0.lcssa.i.i, %bb.l ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.025.0.copyload, i64 8
  %i.dc = sext i32 %i.p to i64                    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.t ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3  ; 3 uses
  %i.dh = load ptr, ptr %.sroa.025.0.copyload, align 8, !tbaa !2205
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !2207, !nonnull !116, !align !203
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !403 ; 2 uses
  %i.dm = sext i32 %i.dg to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = lshr i64 %i.dp, 6
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !49
  %i.dt = and i64 %i.dp, 63
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = and i64 %i.du, %i.ds
  %.not.i.i.i.i = icmp eq i64 %i.dv, 0
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dc
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = lshr i64 %i.dy, 6
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !49
  %i.ec = and i64 %i.dy, 63
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = and i64 %i.ed, %i.eb
  %.not.i.i.i11.i = icmp eq i64 %i.ee, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.ef = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.eg = phi i1 [ %.not.i.i.i11.i, %bb.m ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.ef, %i.eg
  br i1 %or.cond.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.eh = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i = and i1 %i.ef, %i.eg
  %i.ei = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.ej = xor i1 %i.ef, %i.ei
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.ej
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, label %bb.t

bb.r:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i:                                      ; preds = %bb.o
  call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.s:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.ek = load ptr, ptr %i.dd, align 8, !tbaa !2202
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.el = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !2208, !nonnull !116, !align !203 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !2209
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !2211, !nonnull !116, !align !203
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !403 ; 2 uses
  %i.eq = sext i32 %i.dg to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 216
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !290 ; 2 uses
  %i.ev = sext i32 %i.es to i64
  %i.ew = getelementptr inbounds [16 x i8], ptr %i.eu, i64 %i.ev ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ew, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !13
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %7, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.dc
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [16 x i8], ptr %i.eu, i64 %i.ez ; 2 uses
  %.sroa.0.0.copyload.i4.i.i = load i64, ptr %i.fa, align 8
  %.sroa.2.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.sroa.2.0.copyload.i6.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i.i, align 8, !tbaa !13
  store i64 %.sroa.0.0.copyload.i4.i.i, ptr %8, align 8
  store ptr %.sroa.2.0.copyload.i6.i.i, ptr %i.l, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.fc, ptr %i.b, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store ptr %i.b, ptr %6, align 8, !tbaa !401
  store ptr %7, ptr %i.m, align 8, !tbaa !2022
  store ptr %8, ptr %i.n, align 8, !tbaa !2022
  %i.fd = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %6) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fe = load ptr, ptr %i.de, align 8, !tbaa !2212, !nonnull !116, !align !520
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.fh = trunc nuw i8 %i.fg to i1
  %i.fi = sub nsw i32 0, %i.fd
  %i.fj = select i1 %i.fh, i32 %i.fd, i32 %i.fi
  %i.fk = icmp slt i32 %i.fj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %i.fk, label %._crit_edge49, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit

._crit_edge49:                                    ; preds = %bb.s
  %.pre = load i32, ptr %i.df, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge49, %bb.q
  %i.fl = phi i32 [ %.pre, %._crit_edge49 ], [ %i.dg, %bb.q ]
  %i.fm = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, label %.lr.ph.i.i.i, !llvm.loop !2214

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %.019.i.i.i, %bb.s ], [ %.019.i.i.i, %bb.q ], [ 0, %bb.t ]
  %i.fn = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.fn, align 4, !tbaa !3
  %i.fo = icmp sgt i64 %i.s, 4
  br i1 %i.fo, label %bb.b, label %._crit_edge, !llvm.loop !2215

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.685, align 8            ; 6 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %class.anon.685, align 8            ; 6 uses
  %7 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %8 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 3 uses
  %i.g = icmp slt i64 %i.f, 2
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %i.f, -2                     ; 3 uses
  %i.i = lshr i64 %i.h, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = add nsw i64 %i.f, -1
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = and i64 %i.e, 4
  %i.q = icmp eq i64 %i.p, 0
  %i.r = lshr exact i64 %i.h, 1                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
end_hunk_13
begin_hunk_14_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !2212
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = sub nsw i32 0, %i.al
  %i.ar = select i1 %i.ap, i32 %i.al, i32 %i.aq
  %i.as = icmp slt i32 %i.ar, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.at = load i32, ptr %.sroa.08.021, align 4, !tbaa !3 ; 2 uses
  br i1 %i.as, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.au = ptrtoint ptr %.sroa.08.021 to i64
  %i.av = sub i64 %i.au, %i.q                     ; 3 uses
  %i.aw = ashr exact i64 %i.av, 2                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 1
  br i1 %i.ax, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.az = sub nsw i64 0, %i.aw
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.az
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.av, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.bb = icmp eq i64 %i.av, 4
  br i1 %i.bb, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  %i.bd = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.be = sext i32 %i.at to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.08.021, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -4 ; 3 uses
  %i.bf = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !2209
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !2211, !nonnull !116, !align !203
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !403 ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.be
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 216
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !290 ; 2 uses
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.bm, i64 %i.bn ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bo, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !13
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.bp = sext i32 %i.bf to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bm, i64 %i.bs ; 2 uses
  %.sroa.0.0.copyload.i4.i.i.i = load i64, ptr %i.bt, align 8
  %.sroa.2.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.2.0.copyload.i6.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i.i.i, align 8, !tbaa !13
  store i64 %.sroa.0.0.copyload.i4.i.i.i, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i6.i.i.i, ptr %i.n, align 8
  %i.bu = load ptr, ptr %i.aj, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %i.a, ptr %3, align 8, !tbaa !401
  store ptr %4, ptr %i.o, align 8, !tbaa !2022
  store ptr %5, ptr %i.p, align 8, !tbaa !2022
  %i.bv = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bw = load i8, ptr %i.an, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = sub nsw i32 0, %i.bv
  %i.bz = select i1 %i.bx, i32 %i.bv, i32 %i.by
  %i.ca = icmp slt i32 %i.bz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br i1 %i.ca, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !3
  store i32 %i.cb, ptr %.sroa.04.0.i, align 4, !tbaa !3
  br label %bb.h, !llvm.loop !2230

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.04.0.i, %bb.h ]
  store i32 %i.at, ptr %.sink, align 4, !tbaa !3
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 4 ; 2 uses
  %i.cc = icmp eq ptr %.sroa.08.0, %1
  br i1 %i.cc, label %.loopexit, label %bb.b, !llvm.loop !2237

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_SM_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.724") align 8 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.724", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.724", align 8 ; 4 uses
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
  br i1 %i.h, label %._crit_edge, label %.lr.ph22, !llvm.loop !2238

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph22:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1421 = phi ptr [ %i.n, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01520 = phi i64 [ %i.j, %bb.b ], [ %2, %.lr.ph ]
  %i.i = phi i64 [ %i.q, %bb.b ], [ %i.d, %.lr.ph ]
  %i.j = add nsw i64 %.01520, -1                  ; 3 uses
  %i.k = lshr i64 %i.i, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %storemerge1421, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_SP_SL_(ptr %0, ptr nonnull %i.f, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.724") align 8 %3)
  %i.n = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEET_SP_SP_SP_SL_(ptr nonnull %i.f, ptr %storemerge1421, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.724") align 8 %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_SM_(ptr %i.n, ptr %storemerge1421, i64 noundef %i.j, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.724") align 8 %3)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 16
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !2238

.loopexit:                                        ; preds = %.lr.ph22, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit
  %.sroa.0.071 = phi ptr [ %1, %.lr.ph ], [ %i.m, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.071, i64 -4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3    ; 2 uses
  %i.o = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.o, ptr %i.m, align 4, !tbaa !3
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 2                   ; 3 uses
  %.sroa.049.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.s = add nsw i64 %i.r, -1
  %7 = lshr i64 %i.s, 1
  %i.t = icmp sgt i64 %i.r, 2
  br i1 %i.t, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.u = load ptr, ptr %.sroa.049.0.copyload, align 8, !tbaa !2239
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !776  ; 3 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.049.0.copyload, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread
  %.034.i.i = phi i64 [ %i.dk, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.z = shl i64 %.034.i.i, 1                     ; 2 uses
  %i.aa = add i64 %i.z, 2                         ; 4 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ac = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !3  ; 5 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i.i4, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !2241, !nonnull !116, !align !203
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !403 ; 2 uses
  %i.ai = sext i32 %i.ae to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 6
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !49
  %i.ap = and i64 %i.al, 63
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = and i64 %i.aq, %i.ao
  %.not.i.i.i.i.i5 = icmp eq i64 %i.ar, 0
  %i.as = sext i32 %i.af to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = lshr i64 %i.av, 6
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !49
  %i.az = and i64 %i.av, 63
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = and i64 %i.ba, %i.ay
  %.not.i.i.i11.i.i6 = icmp eq i64 %i.bb, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7: ; preds = %bb.c, %.lr.ph.i.i
  %i.bc = phi i1 [ %.not.i.i.i.i.i5, %bb.c ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.bd = phi i1 [ %.not.i.i.i11.i.i6, %bb.c ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i.i8 = or i1 %i.bc, %i.bd
  br i1 %or.cond.i.i8, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  %.sroa.0.0.copyload.i.i10 = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i11 = lshr i64 %.sroa.0.0.copyload.i.i10, 32
  %.sroa.37.0.extract.trunc.i.i.i12 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i11 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i12, label %bb.h [
    i32 1, label %bb.e
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.be = and i64 %.sroa.0.0.copyload.i.i10, 65536
  %.not.i.i.i15 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i15, label %bb.f, label %.critedge.i.i16

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i.i13 = and i1 %i.bc, %i.bd
  br i1 %or.cond.i.i.i13, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i.i16:                                  ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.bf = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !2242, !nonnull !116, !align !203 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2244
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2246, !nonnull !116, !align !203
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !403 ; 2 uses
  %i.bk = sext i32 %i.ae to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 216
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !290 ; 2 uses
  %i.bp = sext i32 %i.bm to i64
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %.sroa.0.0.copyload.i.i21 = load i64, ptr %i.bq, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.2.0.copyload.i.i23 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i22, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i21, ptr %3, align 8
  store ptr %.sroa.2.0.copyload.i.i23, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.br = sext i32 %i.af to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bo, i64 %i.bu ; 2 uses
  %.sroa.0.0.copyload.i4.i24 = load i64, ptr %i.bv, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i5.i25 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.2.0.copyload.i6.i26 = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i25, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i24, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i6.i26, ptr %i.f, align 8
  %.not.i.i.unshifted.i27 = xor i64 %.sroa.0.0.copyload.i4.i24, %.sroa.0.0.copyload.i.i21
  %.not.i.i.i28 = icmp ult i64 %.not.i.i.unshifted.i27, 4294967296
  %i.bw = trunc i64 %.sroa.0.0.copyload.i4.i24 to i32 ; 5 uses
  %i.bx = trunc i64 %.sroa.0.0.copyload.i.i21 to i32 ; 7 uses
  br i1 %.not.i.i.i28, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = load i32, ptr %i.h, align 1
  %i.bz = load i32, ptr %i.g, align 1
  %i.ca = tail call i32 @llvm.bswap.i32(i32 %i.by)
  %i.cb = tail call i32 @llvm.bswap.i32(i32 %i.bz)
  %i.cc = tail call i32 @llvm.ucmp.i32.i32(i32 %i.ca, i32 %i.cb)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i29

bb.k:                                             ; preds = %bb.i
  %i.cd = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 %i.bx)
  %i.ce = add i32 %i.cd, -4                       ; 3 uses
  %i.cf = icmp slt i32 %i.ce, 1
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = sub i32 %i.bx, %i.bw
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i29

bb.m:                                             ; preds = %bb.k
  %i.ch = icmp ult i32 %i.bx, 13                  ; 2 uses
  %i.ci = icmp ult i32 %i.bw, 13                  ; 2 uses
  %or.cond.i.i.i37 = and i1 %i.ch, %i.ci
  br i1 %or.cond.i.i.i37, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cj = zext nneg i32 %i.ce to i64
  %i.ck = call i32 @memcmp(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i64 noundef %i.cj) #45 ; 2 uses
  %.not21.i.i.i44 = icmp eq i32 %i.ck, 0
  %i.cl = sub nsw i32 %i.bx, %i.bw
  %spec.select.i.i.i45 = select i1 %.not21.i.i.i44, i32 %i.cl, i32 %i.ck
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i29

bb.o:                                             ; preds = %bb.m
  %.sroa.gep12.i38 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i23, i64 4
  %.sroa.sel13.i39 = select i1 %i.ch, ptr %i.e, ptr %.sroa.gep12.i38
  %.sroa.gep10.i40 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i26, i64 4
  %.sroa.sel.i41 = select i1 %i.ci, ptr %i.f, ptr %.sroa.gep10.i40
  %i.cm = zext nneg i32 %i.ce to i64
  %i.cn = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i39, ptr noundef nonnull %.sroa.sel.i41, i64 noundef %i.cm) #45 ; 2 uses
  %.not20.i.i.i42 = icmp eq i32 %i.cn, 0
  %i.co = sub i32 %i.bx, %i.bw
  %spec.select22.i.i.i43 = select i1 %.not20.i.i.i42, i32 %i.co, i32 %i.cn
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i29

_ZNK8facebook5velox10StringViewssERKS1_.exit.i29: ; preds = %bb.o, %bb.n, %bb.l, %bb.j
  %.1.i.i.i30 = phi i32 [ %i.cc, %bb.j ], [ %i.cg, %bb.l ], [ %spec.select.i.i.i45, %bb.n ], [ %spec.select22.i.i.i43, %bb.o ]
  %i.cp = icmp slt i32 %.1.i.i.i30, 0
  br i1 %i.cp, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit46, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i29
  %.not.i.i31 = icmp eq i64 %.sroa.0.0.copyload.i.i21, %.sroa.0.0.copyload.i4.i24
  br i1 %.not.i.i31, label %bb.q, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i32

bb.q:                                             ; preds = %bb.p
  %i.cq = icmp ult i32 %i.bx, 13
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cr = icmp samesign ult i32 %i.bx, 5
  %i.cs = icmp eq ptr %.sroa.2.0.copyload.i.i23, %.sroa.2.0.copyload.i6.i26
  %spec.select.i36 = select i1 %i.cr, i1 true, i1 %i.cs
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i32

bb.s:                                             ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i23, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i26, i64 4
  %i.cv = and i64 %.sroa.0.0.copyload.i.i21, 4294967295
  %i.cw = add nsw i64 %i.cv, -4
  %bcmp.i.i35 = tail call i32 @bcmp(ptr nonnull %i.ct, ptr nonnull %i.cu, i64 %i.cw)
  %i.cx = icmp eq i32 %bcmp.i.i35, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i32

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i32: ; preds = %bb.s, %bb.r, %bb.p
  %.0.i.i33 = phi i1 [ %i.cx, %bb.s ], [ false, %bb.p ], [ %spec.select.i36, %bb.r ]
  %not..i.i34 = xor i1 %.0.i.i33, true
  %i.cy = zext i1 %not..i.i34 to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit46

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit46: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i29, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i32
  %i.cz = phi i32 [ %i.cy, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i32 ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i29 ] ; 2 uses
  %i.da = load ptr, ptr %i.y, align 8, !tbaa !2247, !nonnull !116, !align !520
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = sub nsw i32 0, %i.cz
  %i.df = select i1 %i.dd, i32 %i.cz, i32 %i.de
  %.fr = freeze i32 %i.df
  %i.dg = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %i.dg, label %bb.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit: ; preds = %bb.g
  %i.dh = trunc i64 %.sroa.0.0.copyload.i.i10 to i1
  %i.di = xor i1 %i.bc, %i.dh
  %.fr68 = freeze i1 %i.di
  br i1 %.fr68, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit46, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread: ; preds = %bb.g, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit46, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit, %bb.t
  %i.dj = phi i32 [ %i.af, %bb.t ], [ %i.ae, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit ], [ %i.ae, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit46 ], [ %i.ae, %bb.g ]
  %i.dk = phi i64 [ %i.ac, %bb.t ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit ], [ %i.aa, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit46 ], [ %i.aa, %bb.g ] ; 3 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.dj, ptr %i.dl, align 4, !tbaa !3
  %i.dm = icmp slt i64 %i.dk, %7
  br i1 %i.dm, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2248

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.dk, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread ] ; 5 uses
  %i.dn = and i64 %i.q, 4
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.dp = add nsw i64 %i.r, -2
  %i.dq = ashr exact i64 %i.dp, 1
  %i.dr = icmp eq i64 %.0.lcssa.i.i, %i.dq
  br i1 %i.dr, label %.thread.i, label %bb.v

.thread.i:                                        ; preds = %bb.u
  %i.ds = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.dt = or disjoint i64 %i.ds, 1                ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.v, %.thread.i
  %.1.i11.i = phi i64 [ %i.dt, %.thread.i ], [ %.0.lcssa.i.i, %bb.v ]
  %i.dx = load ptr, ptr %.sroa.049.0.copyload, align 8, !tbaa !2239
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !776 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dz, null
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.049.0.copyload, i64 8
  %i.eb = sext i32 %i.n to i64                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.an, %.lr.ph.i.i.preheader.i
  %.018.i.i.i = phi i64 [ %.0919.i.i67.i, %bb.an ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i67.i = lshr i64 %.0919.in.i.i.i, 1    ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0919.i.i67.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3  ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !2241, !nonnull !116, !align !203
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !403 ; 2 uses
  %i.eh = sext i32 %i.ee to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = lshr i64 %i.ek, 6
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !49
  %i.eo = and i64 %i.ek, 63
  %i.ep = shl nuw i64 1, %i.eo
  %i.eq = and i64 %i.ep, %i.en
  %.not.i.i.i.i.i = icmp eq i64 %i.eq, 0
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.eb
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = lshr i64 %i.et, 6
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !49
  %i.ex = and i64 %i.et, 63
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = and i64 %i.ey, %i.ew
  %.not.i.i.i11.i.i = icmp eq i64 %i.ez, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.w, %.lr.ph.i.i.i
  %i.fa = phi i1 [ %.not.i.i.i.i.i, %bb.w ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.fb = phi i1 [ %.not.i.i.i11.i.i, %bb.w ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.fa, %i.fb
  br i1 %or.cond.i.i, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %bb.ab [
    i32 1, label %bb.y
    i32 0, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.fc = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i, label %bb.z, label %.critedge.i.i

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.aa:                                            ; preds = %bb.x
  %or.cond.i.i.i = and i1 %i.fa, %i.fb
  %i.fd = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.fe = xor i1 %i.fa, %i.fd
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.fe
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, label %bb.an

bb.ab:                                            ; preds = %bb.x
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i.i:                                    ; preds = %bb.y
  tail call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.ac:                                            ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.ff = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !2242, !nonnull !116, !align !203 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !2244
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !2246, !nonnull !116, !align !203
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !403 ; 2 uses
  %i.fk = sext i32 %i.ee to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 216
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !290 ; 2 uses
  %i.fp = sext i32 %i.fm to i64
  %i.fq = getelementptr inbounds [16 x i8], ptr %i.fo, i64 %i.fp ; 2 uses
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %i.fq, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i17, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.eb
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [16 x i8], ptr %i.fo, i64 %i.ft ; 2 uses
  %.sroa.0.0.copyload.i4.i = load i64, ptr %i.fu, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %.sroa.2.0.copyload.i6.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i6.i, ptr %i.j, align 8
  %.not.i.i.unshifted.i = xor i64 %.sroa.0.0.copyload.i4.i, %.sroa.0.0.copyload.i.i17
  %.not.i.i.i18 = icmp ult i64 %.not.i.i.unshifted.i, 4294967296
  %i.fv = trunc i64 %.sroa.0.0.copyload.i4.i to i32 ; 5 uses
  %i.fw = trunc i64 %.sroa.0.0.copyload.i.i17 to i32 ; 7 uses
  br i1 %.not.i.i.i18, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fx = load i32, ptr %i.l, align 1
  %i.fy = load i32, ptr %i.k, align 1
  %i.fz = tail call i32 @llvm.bswap.i32(i32 %i.fx)
  %i.ga = tail call i32 @llvm.bswap.i32(i32 %i.fy)
  %i.gb = tail call i32 @llvm.ucmp.i32.i32(i32 %i.fz, i32 %i.ga)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.gc = tail call i32 @llvm.umin.i32(i32 %i.fv, i32 %i.fw)
  %i.gd = add i32 %i.gc, -4                       ; 3 uses
  %i.ge = icmp slt i32 %i.gd, 1
  br i1 %i.ge, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gf = sub i32 %i.fw, %i.fv
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.gg = icmp ult i32 %i.fw, 13                  ; 2 uses
  %i.gh = icmp ult i32 %i.fv, 13                  ; 2 uses
  %or.cond.i.i.i20 = and i1 %i.gg, %i.gh
  br i1 %or.cond.i.i.i20, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gi = zext nneg i32 %i.gd to i64
  %i.gj = call i32 @memcmp(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i64 noundef %i.gi) #45 ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.gj, 0
  %i.gk = sub nsw i32 %i.fw, %i.fv
  %spec.select.i.i.i = select i1 %.not21.i.i.i, i32 %i.gk, i32 %i.gj
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.ai:                                            ; preds = %bb.ag
  %.sroa.gep12.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %.sroa.sel13.i = select i1 %i.gg, ptr %i.i, ptr %.sroa.gep12.i
  %.sroa.gep10.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %.sroa.sel.i = select i1 %i.gh, ptr %i.j, ptr %.sroa.gep10.i
  %i.gl = zext nneg i32 %i.gd to i64
  %i.gm = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i, ptr noundef nonnull %.sroa.sel.i, i64 noundef %i.gl) #45 ; 2 uses
  %.not20.i.i.i = icmp eq i32 %i.gm, 0
  %i.gn = sub i32 %i.fw, %i.fv
  %spec.select22.i.i.i = select i1 %.not20.i.i.i, i32 %i.gn, i32 %i.gm
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

_ZNK8facebook5velox10StringViewssERKS1_.exit.i:   ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ad
  %.1.i.i.i = phi i32 [ %i.gb, %bb.ad ], [ %i.gf, %bb.af ], [ %spec.select.i.i.i, %bb.ah ], [ %spec.select22.i.i.i, %bb.ai ]
  %i.go = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.go, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i17, %.sroa.0.0.copyload.i4.i
  br i1 %.not.i.i, label %bb.ak, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.gp = icmp ult i32 %i.fw, 13
  br i1 %i.gp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gq = icmp samesign ult i32 %i.fw, 5
  %i.gr = icmp eq ptr %.sroa.2.0.copyload.i.i, %.sroa.2.0.copyload.i6.i
  %spec.select.i = select i1 %i.gq, i1 true, i1 %i.gr
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %i.gu = and i64 %.sroa.0.0.copyload.i.i17, 4294967295
  %i.gv = add nsw i64 %i.gu, -4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.gs, ptr nonnull %i.gt, i64 %i.gv)
  %i.gw = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i:   ; preds = %bb.am, %bb.al, %bb.aj
  %.0.i.i19 = phi i1 [ %i.gw, %bb.am ], [ false, %bb.aj ], [ %spec.select.i, %bb.al ]
end_hunk_14
begin_hunk_15_@_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SL_:bb.a
  store i32 %i.cy, ptr %.sroa.03.0.lcssa.i, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.07.016, i64 4 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %1
  br i1 %i.da, label %._crit_edge, label %bb.b, !llvm.loop !2261
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclIiNS_17__normal_iteratorIPiSA_EEEEbRT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2252, !nonnull !116, !align !203 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2239
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !776  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2241, !nonnull !116, !align !203
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !403  ; 2 uses
  %i.j = sext i32 %i.a to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = lshr i64 %i.m, 6
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  %i.q = and i64 %i.m, 63
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.r, %i.p
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  %i.t = sext i32 %i.b to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 6
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !49
  %i.aa = and i64 %i.w, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.ab, %i.z
  %.not.i.i.i11.i = icmp eq i64 %i.ac, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.b, %bb.a
  %i.ad = phi i1 [ %.not.i.i.i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.ae = phi i1 [ %.not.i.i.i11.i, %bb.b ], [ false, %bb.a ] ; 2 uses
  %or.cond.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2254, !nonnull !116, !align !520
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
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.40) #44
  unreachable

bb.f:                                             ; preds = %bb.c
  %or.cond.i.i = and i1 %i.ad, %i.ae
  br i1 %or.cond.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.aj = xor i1 %i.ad, %i.ai
  %spec.select.i = xor i1 %i.aj, true
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.41) #44
  unreachable

.critedge.i:                                      ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #44
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2255, !nonnull !116, !align !203
  %i.am = tail call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i32 noundef %i.a, i32 noundef %i.b)
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit: ; preds = %bb.f, %bb.g, %bb.i
  %.0.i = phi i1 [ %i.am, %bb.i ], [ false, %bb.f ], [ %spec.select.i, %bb.g ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_SM_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.727", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.727", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph26

bb.b:                                             ; preds = %.lr.ph26
  %i.h = icmp eq i64 %i.l, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph26, !llvm.loop !2262

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.j, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_RSL_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_RSL_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph26:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1825 = phi ptr [ %i.p, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01924 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.s, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.01924, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %storemerge1825, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_SP_SL_(ptr %0, ptr nonnull %i.f, ptr %i.n, ptr nonnull %i.o, ptr %3, ptr %4)
  %i.p = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEET_SP_SP_SP_SL_(ptr nonnull %i.f, ptr %storemerge1825, ptr %0, ptr %3, ptr %4) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SL_SM_(ptr %i.p, ptr %storemerge1825, i64 noundef %i.l, ptr %3, ptr %4)
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.a
  %i.s = ashr exact i64 %i.r, 2                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 16
  br i1 %i.t, label %bb.b, label %.loopexit, !llvm.loop !2262

.loopexit:                                        ; preds = %.lr.ph26, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_RSL_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !179 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !674
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit
  %.sroa.0.037 = phi ptr [ %1, %.lr.ph ], [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.037, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.a                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 3 uses
  %i.u = add nsw i64 %i.t, -1
  %7 = lshr i64 %i.u, 1
  %i.v = icmp sgt i64 %i.t, 2
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.w = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !2244
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !2246, !nonnull !116, !align !203
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !403  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !290 ; 2 uses
  %i.ab = load i8, ptr %i.h, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.ac = trunc nuw i8 %i.ab to i1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit28
  %.034.i.i = phi i64 [ %spec.select.i.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit28 ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ad = shl i64 %.034.i.i, 1                    ; 2 uses
  %i.ae = add i64 %i.ad, 2                        ; 2 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ae
  %i.ag = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ag
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !3
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.aa, i64 %i.an ; 2 uses
  %.sroa.0.0.copyload.i.i3 = load i64, ptr %i.ao, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i4 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.2.0.copyload.i.i5 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i4, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i3, ptr %3, align 8
  store ptr %.sroa.2.0.copyload.i.i5, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.ap = sext i32 %i.aj to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %i.aa, i64 %i.as ; 2 uses
  %.sroa.0.0.copyload.i4.i6 = load i64, ptr %i.at, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i5.i7 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.2.0.copyload.i6.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i7, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i6, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i6.i8, ptr %i.g, align 8
  %.not.i.i.unshifted.i9 = xor i64 %.sroa.0.0.copyload.i4.i6, %.sroa.0.0.copyload.i.i3
  %.not.i.i.i10 = icmp ult i64 %.not.i.i.unshifted.i9, 4294967296
  %i.au = trunc i64 %.sroa.0.0.copyload.i4.i6 to i32 ; 5 uses
  %i.av = trunc i64 %.sroa.0.0.copyload.i.i3 to i32 ; 7 uses
  br i1 %.not.i.i.i10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.aw = load i32, ptr %i.j, align 1
  %i.ax = load i32, ptr %i.i, align 1
  %i.ay = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.ba = tail call i32 @llvm.ucmp.i32.i32(i32 %i.ay, i32 %i.az)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.bb = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.av)
  %i.bc = add i32 %i.bb, -4                       ; 3 uses
  %i.bd = icmp slt i32 %i.bc, 1
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.be = sub i32 %i.av, %i.au
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11

bb.f:                                             ; preds = %bb.d
  %i.bf = icmp ult i32 %i.av, 13                  ; 2 uses
  %i.bg = icmp ult i32 %i.au, 13                  ; 2 uses
  %or.cond.i.i.i19 = and i1 %i.bf, %i.bg
  br i1 %or.cond.i.i.i19, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bh = zext nneg i32 %i.bc to i64
  %i.bi = call i32 @memcmp(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef %i.bh) #45 ; 2 uses
  %.not21.i.i.i26 = icmp eq i32 %i.bi, 0
  %i.bj = sub nsw i32 %i.av, %i.au
  %spec.select.i.i.i27 = select i1 %.not21.i.i.i26, i32 %i.bj, i32 %i.bi
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11

bb.h:                                             ; preds = %bb.f
  %.sroa.gep12.i20 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i5, i64 4
  %.sroa.sel13.i21 = select i1 %i.bf, ptr %i.f, ptr %.sroa.gep12.i20
  %.sroa.gep10.i22 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i8, i64 4
  %.sroa.sel.i23 = select i1 %i.bg, ptr %i.g, ptr %.sroa.gep10.i22
  %i.bk = zext nneg i32 %i.bc to i64
  %i.bl = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i21, ptr noundef nonnull %.sroa.sel.i23, i64 noundef %i.bk) #45 ; 2 uses
  %.not20.i.i.i24 = icmp eq i32 %i.bl, 0
  %i.bm = sub i32 %i.av, %i.au
  %spec.select22.i.i.i25 = select i1 %.not20.i.i.i24, i32 %i.bm, i32 %i.bl
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11

_ZNK8facebook5velox10StringViewssERKS1_.exit.i11: ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.1.i.i.i12 = phi i32 [ %i.ba, %bb.c ], [ %i.be, %bb.e ], [ %spec.select.i.i.i27, %bb.g ], [ %spec.select22.i.i.i25, %bb.h ]
  %i.bn = icmp slt i32 %.1.i.i.i12, 0
  br i1 %i.bn, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit28, label %bb.i

bb.i:                                             ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11
  %.not.i.i13 = icmp eq i64 %.sroa.0.0.copyload.i.i3, %.sroa.0.0.copyload.i4.i6
  br i1 %.not.i.i13, label %bb.j, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14

bb.j:                                             ; preds = %bb.i
  %i.bo = icmp ult i32 %i.av, 13
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bp = icmp samesign ult i32 %i.av, 5
  %i.bq = icmp eq ptr %.sroa.2.0.copyload.i.i5, %.sroa.2.0.copyload.i6.i8
  %spec.select.i18 = select i1 %i.bp, i1 true, i1 %i.bq
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14

bb.l:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i5, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i8, i64 4
  %i.bt = and i64 %.sroa.0.0.copyload.i.i3, 4294967295
  %i.bu = add nsw i64 %i.bt, -4
  %bcmp.i.i17 = tail call i32 @bcmp(ptr nonnull %i.br, ptr nonnull %i.bs, i64 %i.bu)
  %i.bv = icmp eq i32 %bcmp.i.i17, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14: ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i15 = phi i1 [ %i.bv, %bb.l ], [ false, %bb.i ], [ %spec.select.i18, %bb.k ]
  %not..i.i16 = xor i1 %.0.i.i15, true
  %i.bw = zext i1 %not..i.i16 to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit28

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit28: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14
  %i.bx = phi i32 [ %i.bw, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14 ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11 ] ; 2 uses
  %i.by = sub nsw i32 0, %i.bx
  %i.bz = select i1 %i.ac, i32 %i.bx, i32 %i.by
  %i.ca = icmp slt i32 %i.bz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %spec.select.i.i = select i1 %i.ca, i64 %i.ag, i64 %i.ae ; 4 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !3
  %i.ce = icmp slt i64 %spec.select.i.i, %7
  br i1 %i.ce, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2263

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit28, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit28 ] ; 5 uses
  %i.cf = and i64 %i.s, 4
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ch = add nsw i64 %i.t, -2
  %i.ci = ashr exact i64 %i.ch, 1
  %i.cj = icmp eq i64 %.0.lcssa.i.i, %i.ci
  br i1 %i.cj, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %bb.m
  %i.ck = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cl = or disjoint i64 %i.ck, 1                ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !3
  br label %.lr.ph.i.i.preheader.i

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.n, %.thread.i
  %.1.i11.i = phi i64 [ %i.cl, %.thread.i ], [ %.0.lcssa.i.i, %bb.n ]
  %i.cp = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !2244
  %i.cq = load ptr, ptr %i.e, align 8, !tbaa !2246, !nonnull !116, !align !203
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !403 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 216
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !290 ; 2 uses
  %i.cu = sext i32 %i.p to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.cu
  %i.cw = load i8, ptr %i.h, align 1, !tbaa !1214, !range !115, !noundef !116
  %i.cx = trunc nuw i8 %i.cw to i1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.y ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [16 x i8], ptr %i.ct, i64 %i.dd ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.de, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.df = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [16 x i8], ptr %i.ct, i64 %i.dg ; 2 uses
  %.sroa.0.0.copyload.i4.i = load i64, ptr %i.dh, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.2.0.copyload.i6.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !13 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i6.i, ptr %i.l, align 8
  %.not.i.i.unshifted.i = xor i64 %.sroa.0.0.copyload.i4.i, %.sroa.0.0.copyload.i.i
  %.not.i.i.i = icmp ult i64 %.not.i.i.unshifted.i, 4294967296
  %i.di = trunc i64 %.sroa.0.0.copyload.i4.i to i32 ; 5 uses
  %i.dj = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 7 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.dk = load i32, ptr %i.n, align 1
  %i.dl = load i32, ptr %i.m, align 1
  %i.dm = tail call i32 @llvm.bswap.i32(i32 %i.dk)
  %i.dn = tail call i32 @llvm.bswap.i32(i32 %i.dl)
  %i.do = tail call i32 @llvm.ucmp.i32.i32(i32 %i.dm, i32 %i.dn)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.dp = tail call i32 @llvm.umin.i32(i32 %i.di, i32 %i.dj)
  %i.dq = add i32 %i.dp, -4                       ; 3 uses
  %i.dr = icmp slt i32 %i.dq, 1
  br i1 %i.dr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ds = sub i32 %i.dj, %i.di
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.dt = icmp ult i32 %i.dj, 13                  ; 2 uses
  %i.du = icmp ult i32 %i.di, 13                  ; 2 uses
  %or.cond.i.i.i = and i1 %i.dt, %i.du
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dv = zext nneg i32 %i.dq to i64
  %i.dw = call i32 @memcmp(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i64 noundef %i.dv) #45 ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.dw, 0
  %i.dx = sub nsw i32 %i.dj, %i.di
  %spec.select.i.i.i = select i1 %.not21.i.i.i, i32 %i.dx, i32 %i.dw
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.t:                                             ; preds = %bb.r
  %.sroa.gep12.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %.sroa.sel13.i = select i1 %i.dt, ptr %i.k, ptr %.sroa.gep12.i
  %.sroa.gep10.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %.sroa.sel.i = select i1 %i.du, ptr %i.l, ptr %.sroa.gep10.i
  %i.dy = zext nneg i32 %i.dq to i64
  %i.dz = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i, ptr noundef nonnull %.sroa.sel.i, i64 noundef %i.dy) #45 ; 2 uses
  %.not20.i.i.i = icmp eq i32 %i.dz, 0
  %i.ea = sub i32 %i.dj, %i.di
  %spec.select22.i.i.i = select i1 %.not20.i.i.i, i32 %i.ea, i32 %i.dz
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

_ZNK8facebook5velox10StringViewssERKS1_.exit.i:   ; preds = %bb.t, %bb.s, %bb.q, %bb.o
  %.1.i.i.i = phi i32 [ %i.do, %bb.o ], [ %i.ds, %bb.q ], [ %spec.select.i.i.i, %bb.s ], [ %spec.select22.i.i.i, %bb.t ]
  %i.eb = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.eb, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i4.i
  br i1 %.not.i.i, label %bb.v, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ec = icmp ult i32 %i.dj, 13
  br i1 %i.ec, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ed = icmp samesign ult i32 %i.dj, 5
  %i.ee = icmp eq ptr %.sroa.2.0.copyload.i.i, %.sroa.2.0.copyload.i6.i
  %spec.select.i = select i1 %i.ed, i1 true, i1 %i.ee
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.x:                                             ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %i.eh = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.ei = add nsw i64 %i.eh, -4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ef, ptr nonnull %i.eg, i64 %i.ei)
  %i.ej = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i:   ; preds = %bb.x, %bb.w, %bb.u
  %.0.i.i = phi i1 [ %i.ej, %bb.x ], [ false, %bb.u ], [ %spec.select.i, %bb.w ]
  %not..i.i = xor i1 %.0.i.i, true
  %i.ek = zext i1 %not..i.i to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i
  %i.el = phi i32 [ %i.ek, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i ] ; 2 uses
  %i.em = sub nsw i32 0, %i.el
  %i.en = select i1 %i.cx, i32 %i.el, i32 %i.em
  %i.eo = icmp slt i32 %i.en, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br i1 %i.eo, label %bb.y, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit

bb.y:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit
  %i.ep = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.cz, ptr %i.ep, align 4, !tbaa !3
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit, label %.lr.ph.i.i.i, !llvm.loop !2264

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit: ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit, %bb.y, %bb.n
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.n ], [ %.019.i.i.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit ], [ 0, %bb.y ]
  %i.eq = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.eq, align 4, !tbaa !3
  %i.er = icmp sgt i64 %i.s, 4
  br i1 %i.er, label %bb.b, label %._crit_edge, !llvm.loop !2265

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_RSL_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !179 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !674
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.w = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SL_SL_SM_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.er, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SL_SL_SM_T2_.exit ] ; 8 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %.09
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
end_hunk_15
