Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/URLFunctionsRegistration?download=true
inline.NumInlined: 16522
inline.NumDeleted: 4259
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_T1_:bb.a
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
  %i.o = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !129
  %i.p = load i32, ptr %0, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %4, align 4
  %i.q = load ptr, ptr %3, align 8, !tbaa !138
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i64 %i.s(ptr noundef nonnull align 8 dereferenceable(94) %3, ptr noundef nonnull %3, i32 noundef %i.o, i32 noundef %i.p, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !2272
  %i.u = and i64 %i.t, 6442450944
  %.not.i.i = icmp eq i64 %i.u, 4294967296
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 4 ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !2273

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.013.0.pn.i.i = phi ptr [ %.sroa.013.1.i.i, %.preheader.i.i ], [ %.sroa.013.0.i.i, %bb.d ]
  %.sroa.013.1.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -4 ; 6 uses
  %i.w = load i32, ptr %0, align 4, !tbaa !129
  %i.x = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i10.i.i = load i64, ptr %4, align 4
  %i.y = load ptr, ptr %3, align 8, !tbaa !138
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(94) %3, ptr noundef nonnull %3, i32 noundef %i.w, i32 noundef %i.x, i64 %.sroa.01.0.copyload.i.i10.i.i), !inline_history !2272
  %i.ac = and i64 %i.ab, 6442450944
  %.not19.i.i = icmp eq i64 %i.ac, 4294967296
  br i1 %.not19.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !2274

bb.e:                                             ; preds = %.preheader.i.i
  %.not20.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.013.1.i.i
  br i1 %.not20.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !129
  %i.ae = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !129
  store i32 %i.ae, ptr %.sroa.016.1.i.i, align 4, !tbaa !129
  store i32 %i.ad, ptr %.sroa.013.1.i.i, align 4, !tbaa !129
  br label %bb.c, !llvm.loop !2275

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit: ; preds = %bb.e
  %i.af = add nsw i64 %.02025, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_T1_(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge1926, i64 noundef %i.af, ptr nonnull %3, ptr nonnull %4)
  %i.ag = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.ah = sub i64 %i.ag, %i.a
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 16
  br i1 %i.aj, label %bb.b, label %.loopexit, !llvm.loop !2271

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
  %i.f = load i32, ptr %i.e, align 4, !tbaa !129  ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !129
  store i32 %i.g, ptr %i.e, align 4, !tbaa !129
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !421 ; 6 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !663 ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = lshr i64 %i.k, 1
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.037.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = shl i64 %.037.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 4, !tbaa !129
  %i.t = load i32, ptr %i.r, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0.copyload.i, align 4
  %i.u = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !138
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call i64 %i.w(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i32 noundef %i.s, i32 noundef %i.t, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !2276
  %i.y = and i64 %i.x, 6442450944
  %.not.i.i = icmp eq i64 %i.y, 4294967296
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.o, i64 %i.q ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !129
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !129
  %i.ac = icmp slt i64 %spec.select.i.i, %i.l
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !44

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ad = and i64 %i.i, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.af = add nsw i64 %i.j, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i, %i.ag
  br i1 %i.ah, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !129
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !129
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.019.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.aj, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.e ], [ %.019.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0.copyload.i, align 4
  %i.ap = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !138
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i32 noundef %i.ao, i32 noundef %i.f, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !2277
  %i.at = and i64 %i.as, 6442450944
  %.not.i.i.i = icmp eq i64 %i.at, 4294967296
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.au = load i32, ptr %i.an, align 4, !tbaa !129
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.au, ptr %i.av, align 4, !tbaa !129
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !45

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.aw, align 4, !tbaa !129
  %i.ax = icmp sgt i64 %i.i, 4
  br i1 %i.ax, label %bb.b, label %._crit_edge, !llvm.loop !2278

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit ] ; 8 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %.09
  %i.p = load i32, ptr %i.o, align 4, !tbaa !129  ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !421 ; 6 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !663 ; 2 uses
  %i.q = icmp slt i64 %.09, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.037.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %bb.c ] ; 2 uses
  %i.r = shl i64 %.037.i, 1                       ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !129
  %i.x = load i32, ptr %i.v, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %.sroa.2.0.copyload, align 4
  %i.y = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.w, i32 noundef %i.x, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !2279
  %i.ac = and i64 %i.ab, 6442450944
  %.not.i = icmp eq i64 %i.ac, 4294967296
  %spec.select.i = select i1 %.not.i, i64 %i.s, i64 %i.u ; 4 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !129
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !129
  %i.ag = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !44

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !129
  store i32 %i.ai, ptr %i.n, align 4, !tbaa !129
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i, %.09
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0.copyload, align 4
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.al, i32 noundef %i.p, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !2280
  %i.aq = and i64 %i.ap, 6442450944
  %.not.i.i = icmp eq i64 %i.aq, 4294967296
  br i1 %.not.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ar = load i32, ptr %i.ak, align 4, !tbaa !129
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !129
  %i.at = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, !llvm.loop !45

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.p, ptr %i.au, align 4, !tbaa !129
  %.not = icmp eq i64 %.09, 0
  %i.av = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2281

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !129
  %i.b = load i32, ptr %2, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i = load i64, ptr %5, align 4
  %i.c = load ptr, ptr %4, align 8, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 %i.e(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.a, i32 noundef %i.b, i64 %.sroa.01.0.copyload.i.i), !inline_history !46
  %i.g = and i64 %i.f, 6442450944
  %.not = icmp eq i64 %i.g, 4294967296
  %i.h = load i32, ptr %3, align 4, !tbaa !129    ; 2 uses
  %.sroa.01.0.copyload.i.i28 = load i64, ptr %5, align 4 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %2, align 4, !tbaa !129
  %i.m = tail call i64 %i.k(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.l, i32 noundef %i.h, i64 %.sroa.01.0.copyload.i.i28), !inline_history !46
  %i.n = and i64 %i.m, 6442450944
  %.not40 = icmp eq i64 %i.n, 4294967296
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %0, align 4, !tbaa !129
  %i.p = load i32, ptr %2, align 4, !tbaa !129
  store i32 %i.p, ptr %0, align 4, !tbaa !129
  store i32 %i.o, ptr %2, align 4, !tbaa !129
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.q = load i32, ptr %1, align 4, !tbaa !129
  %i.r = load i32, ptr %3, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i27 = load i64, ptr %5, align 4
  %i.s = load ptr, ptr %4, align 8, !tbaa !138
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i64 %i.u(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.q, i32 noundef %i.r, i64 %.sroa.01.0.copyload.i.i27), !inline_history !46
  %i.w = and i64 %i.v, 6442450944
  %.not41 = icmp eq i64 %i.w, 4294967296
  %i.x = load i32, ptr %0, align 4, !tbaa !129    ; 2 uses
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %3, align 4, !tbaa !129
  store i32 %i.y, ptr %0, align 4, !tbaa !129
  store i32 %i.x, ptr %3, align 4, !tbaa !129
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.z = load i32, ptr %1, align 4, !tbaa !129
  store i32 %i.z, ptr %0, align 4, !tbaa !129
  store i32 %i.x, ptr %1, align 4, !tbaa !129
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.aa = load i32, ptr %1, align 4, !tbaa !129
  %i.ab = tail call i64 %i.k(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.aa, i32 noundef %i.h, i64 %.sroa.01.0.copyload.i.i28), !inline_history !46
  %i.ac = and i64 %i.ab, 6442450944
  %.not38 = icmp eq i64 %i.ac, 4294967296
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %0, align 4, !tbaa !129
  %i.ae = load i32, ptr %1, align 4, !tbaa !129
  store i32 %i.ae, ptr %0, align 4, !tbaa !129
  store i32 %i.ad, ptr %1, align 4, !tbaa !129
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.af = load i32, ptr %2, align 4, !tbaa !129
  %i.ag = load i32, ptr %3, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i29 = load i64, ptr %5, align 4
  %i.ah = load ptr, ptr %4, align 8, !tbaa !138
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.af, i32 noundef %i.ag, i64 %.sroa.01.0.copyload.i.i29), !inline_history !46
  %i.al = and i64 %i.ak, 6442450944
  %.not39 = icmp eq i64 %i.al, 4294967296
  %i.am = load i32, ptr %0, align 4, !tbaa !129   ; 2 uses
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %3, align 4, !tbaa !129
  store i32 %i.an, ptr %0, align 4, !tbaa !129
  store i32 %i.am, ptr %3, align 4, !tbaa !129
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ao = load i32, ptr %2, align 4, !tbaa !129
  store i32 %i.ao, ptr %0, align 4, !tbaa !129
  store i32 %i.am, ptr %2, align 4, !tbaa !129
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.019 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.019, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_:bb.a
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !663 ; 2 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i
  %.sroa.03.08.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %.sroa.03.08.i, align 4, !tbaa !129 ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.03.08.i, i64 -4 ; 2 uses
  %i.i = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !129
  %i.j = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !538 ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.h
  %i.l = load i32, ptr %i.k, align 4, !tbaa !129
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i8.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.p = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !138
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i64 %i.r(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.l, i32 noundef %i.o, i64 %.sroa.01.0.copyload.i.i8.i.i), !inline_history !2288
  %i.t = and i64 %i.s, 6442450944
  %.not9.i.i = icmp eq i64 %i.t, 4294967296
  br i1 %.not9.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %.lr.ph.i ] ; 4 uses
  %.sroa.04.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.03.08.i, %.lr.ph.i ]
  %i.u = load i32, ptr %.sroa.0.011.i.i, align 4, !tbaa !129
  store i32 %i.u, ptr %.sroa.04.010.i.i, align 4, !tbaa !129
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -4 ; 2 uses
  %i.v = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !129
  %i.w = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !538 ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.h
  %i.y = load i32, ptr %i.x, align 4, !tbaa !129
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.ac = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !138
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.y, i32 noundef %i.ab, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !2288
  %i.ag = and i64 %i.af, 6442450944
  %.not.i.i = icmp eq i64 %i.ag, 4294967296
  br i1 %.not.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !47

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.03.08.i, %.lr.ph.i ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !129
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 4 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %1
  br i1 %i.ai, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i, !llvm.loop !2289

bb.c:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.621") align 8 %2)
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
  %i.f = load i32, ptr %i.e, align 4, !tbaa !129  ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !129
  store i32 %i.g, ptr %i.e, align 4, !tbaa !129
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !421 ; 6 uses
  %.sroa.0.sroa.2.0.copyload.i = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !tbaa !665 ; 2 uses
  %.sroa.0.sroa.3.0.copyload.i = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !tbaa !663 ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = lshr i64 %i.k, 1
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = shl i64 %.036.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 4, !tbaa !129
  %i.t = load i32, ptr %i.r, align 4, !tbaa !129
  %i.u = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i, align 8, !tbaa !538 ; 2 uses
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !129
  %i.y = sext i32 %i.t to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload.i, align 4
  %i.ab = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !tbaa !138
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, i32 noundef %i.x, i32 noundef %i.aa, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !2290
  %i.af = and i64 %i.ae, 6442450944
  %.not.i.i = icmp eq i64 %i.af, 4294967296
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.o, i64 %i.q ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !129
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.i
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !129
  %i.aj = icmp slt i64 %spec.select.i.i, %i.l
  br i1 %i.aj, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !48

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ak = and i64 %i.i, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.am = add nsw i64 %i.j, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i, %i.an
  br i1 %i.ao, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !129
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !129
  br label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.thread.i
  %.1.i8.i = phi i64 [ %i.aq, %.thread.i ], [ %.0.lcssa.i.i, %bb.d ]
  %i.au = sext i32 %i.f to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %.1.i8.i, %.lr.ph.i.i.i ], [ %.0920.i.i910.i, %bb.f ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i910.i = lshr i64 %.0920.in.i.i.i, 1   ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i910.i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !129
  %i.ax = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i, align 8, !tbaa !538 ; 2 uses
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !129
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.au
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload.i, align 4
  %i.bd = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !tbaa !138
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call i64 %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, i32 noundef %i.ba, i32 noundef %i.bc, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !2291
  %i.bh = and i64 %i.bg, 6442450944
  %.not.i.i.i = icmp eq i64 %i.bh, 4294967296
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load i32, ptr %i.av, align 4, !tbaa !129
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !129
  %.not11.i = icmp eq i64 %.0920.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %bb.e, !llvm.loop !49

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit: ; preds = %bb.e, %bb.f, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %bb.e ], [ 0, %bb.f ]
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.bk, align 4, !tbaa !129
  %i.bl = icmp sgt i64 %i.i, 4
  br i1 %i.bl, label %bb.b, label %._crit_edge, !llvm.loop !2292

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.bj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit ] ; 8 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.p = load i32, ptr %i.o, align 4, !tbaa !129  ; 2 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !421 ; 6 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !665 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !663 ; 2 uses
  %i.q = icmp slt i64 %.08, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.036.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %bb.c ] ; 2 uses
  %i.r = shl i64 %.036.i, 1                       ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !129
  %i.x = load i32, ptr %i.v, align 4, !tbaa !129
  %i.y = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !538 ; 2 uses
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !129
  %i.ac = sext i32 %i.x to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.af = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !138
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.ab, i32 noundef %i.ae, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !2293
  %i.aj = and i64 %i.ai, 6442450944
  %.not.i = icmp eq i64 %i.aj, 4294967296
  %spec.select.i = select i1 %.not.i, i64 %i.s, i64 %i.u ; 4 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !129
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !129
  %i.an = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !48

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ao = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !129
  store i32 %i.ap, ptr %i.n, align 4, !tbaa !129
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.aq = icmp sgt i64 %.1.i, %.08
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ar = sext i32 %i.p to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.0920.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !129
  %i.au = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !538 ; 2 uses
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !129
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ar
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.ba = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !138
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.ax, i32 noundef %i.az, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !2294
  %i.be = and i64 %i.bd, 6442450944
  %.not.i.i = icmp eq i64 %i.be, 4294967296
  br i1 %.not.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = load i32, ptr %i.as, align 4, !tbaa !129
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !129
  %i.bh = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, !llvm.loop !49

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.g ], [ %.019.i.i, %bb.f ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.p, ptr %i.bi, align 4, !tbaa !129
  %.not = icmp eq i64 %.08, 0
  %i.bj = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2295

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_SI_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.621") align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !129
  %i.b = load i32, ptr %2, align 4, !tbaa !129
  %i.c = load ptr, ptr %4, align 8, !tbaa !667    ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !668, !nonnull !140, !align !223 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !538  ; 2 uses
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !129
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !129
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !669, !nonnull !140, !align !494 ; 4 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.n, align 4
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i64 %i.q(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.i, i32 noundef %i.l, i64 %.sroa.01.0.copyload.i.i), !inline_history !50
  %i.s = and i64 %i.r, 6442450944
  %.not = icmp eq i64 %i.s, 4294967296
  %i.t = load i32, ptr %3, align 4, !tbaa !129
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !538  ; 3 uses
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !129  ; 2 uses
  %.sroa.01.0.copyload.i.i28 = load i64, ptr %i.n, align 4 ; 2 uses
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = load i32, ptr %2, align 4, !tbaa !129
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !129
  %i.af = tail call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.ae, i32 noundef %i.x, i64 %.sroa.01.0.copyload.i.i28), !inline_history !50
  %i.ag = and i64 %i.af, 6442450944
  %.not32 = icmp eq i64 %i.ag, 4294967296
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = load i32, ptr %0, align 4, !tbaa !129
  %i.ai = load i32, ptr %2, align 4, !tbaa !129
  store i32 %i.ai, ptr %0, align 4, !tbaa !129
  store i32 %i.ah, ptr %2, align 4, !tbaa !129
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %1, align 4, !tbaa !129
  %i.ak = load i32, ptr %3, align 4, !tbaa !129
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !538 ; 2 uses
  %i.am = sext i32 %i.aj to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !129
  %i.ap = sext i32 %i.ak to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !129
  %.sroa.01.0.copyload.i.i27 = load i64, ptr %i.n, align 4
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call i64 %i.au(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.ao, i32 noundef %i.ar, i64 %.sroa.01.0.copyload.i.i27), !inline_history !50
  %i.aw = and i64 %i.av, 6442450944
  %.not33 = icmp eq i64 %i.aw, 4294967296
  %i.ax = load i32, ptr %0, align 4, !tbaa !129   ; 2 uses
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = load i32, ptr %3, align 4, !tbaa !129
  store i32 %i.ay, ptr %0, align 4, !tbaa !129
  store i32 %i.ax, ptr %3, align 4, !tbaa !129
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.az = load i32, ptr %1, align 4, !tbaa !129
  store i32 %i.az, ptr %0, align 4, !tbaa !129
  store i32 %i.ax, ptr %1, align 4, !tbaa !129
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ba = load i32, ptr %1, align 4, !tbaa !129
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !129
  %i.be = tail call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.bd, i32 noundef %i.x, i64 %.sroa.01.0.copyload.i.i28), !inline_history !50
  %i.bf = and i64 %i.be, 6442450944
  %.not30 = icmp eq i64 %i.bf, 4294967296
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_1
begin_hunk_2_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_RSJ_:bb.a

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22: ; preds = %bb.g
  %i.bt = trunc i64 %.sroa.0.0.copyload.i15 to i1
  %i.bu = xor i1 %i.ax, %i.bt
  %.fr44 = freeze i1 %i.bu
  br i1 %.fr44, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22.thread, label %bb.i

bb.i:                                             ; preds = %.split, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22.thread

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22.thread: ; preds = %bb.g, %.split, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22, %bb.i
  %i.bv = phi i64 [ %i.ac, %bb.i ], [ %i.aa, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22 ], [ %i.aa, %.split ], [ %i.aa, %bb.g ] ; 4 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !129
  %i.by = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !129
  %i.bz = icmp slt i64 %i.bv, %i.v
  br i1 %i.bz, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !51

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bv, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit22.thread ] ; 5 uses
  %i.ca = and i64 %i.s, 4
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.cc = add nsw i64 %i.t, -2
  %i.cd = ashr exact i64 %i.cc, 1
  %i.ce = icmp eq i64 %.0.lcssa.i.i, %i.cd
  br i1 %i.ce, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  %i.cf = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cg = or disjoint i64 %i.cf, 1                ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !129
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !129
  br label %.lr.ph.i.i.preheader.i

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.k, %.thread.i
  %.1.i11.i = phi i64 [ %i.cg, %.thread.i ], [ %.0.lcssa.i.i, %bb.k ]
  %i.ck = zext i32 %i.p to i64                    ; 2 uses
  %i.cl = lshr i64 %i.ck, 6
  %i.cm = and i64 %i.ck, 63
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.cp = sext i32 %i.p to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.r ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !129 ; 3 uses
  %i.ct = load ptr, ptr %.sroa.025.0.copyload, align 8, !tbaa !673
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.cw = zext i32 %i.cs to i64                   ; 2 uses
  %i.cx = lshr i64 %i.cw, 6
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !186
  %i.da = and i64 %i.cw, 63
  %i.db = shl nuw i64 1, %i.da
  %i.dc = and i64 %i.cz, %i.db
  %.not.i.i.i.i = icmp eq i64 %i.dc, 0
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cl
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !186
  %i.df = and i64 %i.de, %i.cn
  %.not.i.i.i11.i = icmp eq i64 %i.df, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.l, %.lr.ph.i.i.i
  %i.dg = phi i1 [ %.not.i.i.i.i, %bb.l ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.dh = phi i1 [ %.not.i.i.i11.i, %bb.l ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.dg, %i.dh
  br i1 %or.cond.i, label %bb.m, label %.split42

bb.m:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.q [
    i32 1, label %bb.n
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.di = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.di, 0
  br i1 %.not.i.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.p:                                             ; preds = %bb.m
  %or.cond.i.i = and i1 %i.dg, %i.dh
  %i.dj = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dk = xor i1 %i.dg, %i.dj
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dk
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit, label %bb.r

bb.q:                                             ; preds = %bb.m
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i:                                      ; preds = %bb.n
  call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

.split42:                                         ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.dl = load ptr, ptr %i.co, align 8, !tbaa !671
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.dm = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !674, !nonnull !140, !align !223
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !676
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 216
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !408 ; 2 uses
  %i.dq = sext i32 %i.cs to i64
  %i.dr = getelementptr inbounds [16 x i8], ptr %i.dp, i64 %i.dq ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dr, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !116
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %7, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ds = getelementptr inbounds [16 x i8], ptr %i.dp, i64 %i.cp ; 2 uses
  %.sroa.0.0.copyload.i4.i.i = load i64, ptr %i.ds, align 8
  %.sroa.2.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.2.0.copyload.i6.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i.i, align 8, !tbaa !116
  store i64 %.sroa.0.0.copyload.i4.i.i, ptr %8, align 8
  store ptr %.sroa.2.0.copyload.i6.i.i, ptr %i.l, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.du, ptr %i.b, align 8, !tbaa !658
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %i.b, ptr %6, align 8, !tbaa !660
  store ptr %7, ptr %i.m, align 8, !tbaa !623
  store ptr %8, ptr %i.n, align 8, !tbaa !623
  %i.dv = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %6) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dw = load ptr, ptr %i.cq, align 8, !tbaa !677, !nonnull !140, !align !494
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !680, !range !139, !noundef !140
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = sub nsw i32 0, %i.dv
  %i.eb = select i1 %i.dz, i32 %i.dv, i32 %i.ea
  %i.ec = icmp slt i32 %i.eb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.ec, label %.split42._crit_edge, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit

.split42._crit_edge:                              ; preds = %.split42
  %.pre = load i32, ptr %i.cr, align 4, !tbaa !129
  br label %bb.r

bb.r:                                             ; preds = %.split42._crit_edge, %bb.p
  %i.ed = phi i32 [ %.pre, %.split42._crit_edge ], [ %i.cs, %bb.p ]
  %i.ee = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !129
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit, label %.lr.ph.i.i.i, !llvm.loop !52

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit: ; preds = %bb.p, %.split42, %bb.r, %bb.k
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.k ], [ %.019.i.i.i, %.split42 ], [ %.019.i.i.i, %bb.p ], [ 0, %bb.r ]
  %i.ef = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.ef, align 4, !tbaa !129
  %i.eg = icmp sgt i64 %i.s, 4
  br i1 %i.eg, label %bb.b, label %._crit_edge, !llvm.loop !2299

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_RSJ_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.611, align 8            ; 6 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %class.anon.611, align 8            ; 6 uses
  %7 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %8 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 4 uses
  %i.g = icmp slt i64 %i.f, 2
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %i.f, -2                     ; 2 uses
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
  %9 = add nsw i64 %i.f, -1                       ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %9
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.i, %bb.b ], [ %i.ee, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_T2_.exit ] ; 8 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.z = load i32, ptr %i.y, align 4, !tbaa !129  ; 3 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !128 ; 2 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !663 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !128 ; 6 uses
  %i.aa = icmp slt i64 %.08, %i.k
  br i1 %i.aa, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit29.thread
  %.034.i = phi i64 [ %i.bz, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit29.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.ad = shl i64 %.034.i, 1                      ; 2 uses
  %i.ae = add i64 %i.ad, 2                        ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ae
  %i.ag = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ag
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !129 ; 2 uses
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !129 ; 2 uses
  %i.ak = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !673
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.an = zext i32 %i.ai to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !186
  %i.ar = and i64 %i.an, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.aq, %i.as
  %.not.i.i.i.i11 = icmp eq i64 %i.at, 0
  %i.au = zext i32 %i.aj to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 6
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !186
  %i.ay = and i64 %i.au, 63
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.ax, %i.az
  %.not.i.i.i11.i12 = icmp eq i64 %i.ba, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13: ; preds = %bb.d, %.lr.ph.i
  %i.bb = phi i1 [ %.not.i.i.i.i11, %bb.d ], [ false, %.lr.ph.i ] ; 3 uses
  %i.bc = phi i1 [ %.not.i.i.i11.i12, %bb.d ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i14 = or i1 %i.bb, %i.bc
  br i1 %or.cond.i14, label %bb.e, label %.split

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %.sroa.0.0.copyload.i22 = load i64, ptr %.sroa.0.sroa.2.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i23 = lshr i64 %.sroa.0.0.copyload.i22, 32
  %.sroa.37.0.extract.trunc.i.i24 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i23 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i24, label %bb.i [
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.bd = and i64 %.sroa.0.0.copyload.i22, 65536
  %.not.i.i27 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i27, label %bb.g, label %.critedge.i28

bb.g:                                             ; preds = %bb.f
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.h:                                             ; preds = %bb.e
  %or.cond.i.i25 = and i1 %i.bb, %i.bc
  br i1 %or.cond.i.i25, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit29.thread, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit29

bb.i:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i28:                                    ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

.split:                                           ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !671
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bf = load ptr, ptr %.sroa.0.sroa.3.0.copyload, align 8, !tbaa !674, !nonnull !140, !align !223
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !676
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 216
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !408 ; 2 uses
  %i.bj = sext i32 %i.ai to i64
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %.sroa.0.0.copyload.i.i.i15 = load i64, ptr %i.bk, align 8
  %.sroa.2.0..sroa_idx.i.i.i16 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.2.0.copyload.i.i.i17 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i16, align 8, !tbaa !116
  store i64 %.sroa.0.0.copyload.i.i.i15, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i.i.i17, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bl = sext i32 %i.aj to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.bl ; 2 uses
  %.sroa.0.0.copyload.i4.i.i18 = load i64, ptr %i.bm, align 8
  %.sroa.2.0..sroa_idx.i5.i.i19 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.2.0.copyload.i6.i.i20 = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i.i19, align 8, !tbaa !116
  store i64 %.sroa.0.0.copyload.i4.i.i18, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i6.i.i20, ptr %i.m, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !658
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.a, ptr %3, align 8, !tbaa !660
  store ptr %4, ptr %i.n, align 8, !tbaa !623
  store ptr %5, ptr %i.o, align 8, !tbaa !623
  %i.bp = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bq = load ptr, ptr %i.ac, align 8, !tbaa !677, !nonnull !140, !align !494
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !680, !range !139, !noundef !140
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = sub nsw i32 0, %i.bp
  %i.bv = select i1 %i.bt, i32 %i.bp, i32 %i.bu
  %.fr = freeze i32 %i.bv
  %i.bw = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %i.bw, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit29.thread

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit29: ; preds = %bb.h
  %i.bx = trunc i64 %.sroa.0.0.copyload.i22 to i1
  %i.by = xor i1 %i.bb, %i.bx
  %.fr49 = freeze i1 %i.by
  br i1 %.fr49, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit29.thread, label %bb.j

bb.j:                                             ; preds = %.split, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit29
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit29.thread

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit29.thread: ; preds = %bb.h, %.split, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit29, %bb.j
  %i.bz = phi i64 [ %i.ag, %bb.j ], [ %i.ae, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit29 ], [ %i.ae, %.split ], [ %i.ae, %bb.h ] ; 4 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !129
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !129
  %i.cd = icmp slt i64 %i.bz, %i.k
  br i1 %i.cd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !51

._crit_edge.i:                                    ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit29.thread, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %i.bz, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit29.thread ] ; 2 uses
  %i.ce = icmp eq i64 %.0.lcssa.i, %i.r
  %or.cond = select i1 %i.q, i1 %i.ce, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i
  %i.cf = load i32, ptr %i.w, align 4, !tbaa !129
  store i32 %i.cf, ptr %i.x, align 4, !tbaa !129
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.1.i = phi i64 [ %9, %bb.k ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.cg = icmp sgt i64 %.1.i, %.08
  br i1 %i.cg, label %.lr.ph.i.i.preheader, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_T2_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.ch = zext i32 %i.z to i64                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 6
  %i.cj = and i64 %i.ch, 63
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.cm = sext i32 %i.z to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.s
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.s ], [ %.1.i, %.lr.ph.i.i.preheader ] ; 4 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !129 ; 3 uses
  %i.cq = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !673
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.ct = zext i32 %i.cp to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !186
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i.i = icmp eq i64 %i.cz, 0
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ci
end_hunk_2
begin_hunk_3_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_RSJ_:bb.a
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !129 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = lshr i64 %i.ds, 6
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !186
  %i.dw = and i64 %i.ds, 63
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = and i64 %i.dv, %i.dx
  %.not.i.i.i.i.i = icmp eq i64 %i.dy, 0
  %i.dz = load i64, ptr %i.dl, align 8, !tbaa !186
  %i.ea = and i64 %i.dz, %i.dn
  %.not.i.i.i11.i.i = icmp eq i64 %i.ea, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.w, %.lr.ph.i.i.i
  %i.eb = phi i1 [ %.not.i.i.i.i.i, %bb.w ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.ec = phi i1 [ %.not.i.i.i11.i.i, %bb.w ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.eb, %i.ec
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
  %i.ed = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i, label %bb.z, label %.critedge.i.i

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.aa:                                            ; preds = %bb.x
  %or.cond.i.i.i = and i1 %i.eb, %i.ec
  %i.ee = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.ef = xor i1 %i.eb, %i.ee
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.ef
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit, label %bb.an

bb.ab:                                            ; preds = %bb.x
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i.i:                                    ; preds = %bb.y
  tail call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

bb.ac:                                            ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.eg = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !687, !nonnull !140, !align !223
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !689
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 216
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !408 ; 2 uses
  %i.ek = sext i32 %i.dr to i64
  %i.el = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.ek ; 2 uses
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %i.el, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i17, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.em = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.do ; 2 uses
  %.sroa.0.0.copyload.i4.i = load i64, ptr %i.em, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.2.0.copyload.i6.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i6.i, ptr %i.j, align 8
  %.not.i.i.unshifted.i = xor i64 %.sroa.0.0.copyload.i4.i, %.sroa.0.0.copyload.i.i17
  %.not.i.i.i18 = icmp ult i64 %.not.i.i.unshifted.i, 4294967296
  %i.en = trunc i64 %.sroa.0.0.copyload.i4.i to i32 ; 5 uses
  %i.eo = trunc i64 %.sroa.0.0.copyload.i.i17 to i32 ; 7 uses
  br i1 %.not.i.i.i18, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = load i32, ptr %i.l, align 1
  %i.eq = load i32, ptr %i.k, align 1
  %i.er = tail call i32 @llvm.bswap.i32(i32 %i.ep)
  %i.es = tail call i32 @llvm.bswap.i32(i32 %i.eq)
  %i.et = tail call i32 @llvm.ucmp.i32.i32(i32 %i.er, i32 %i.es)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.eu = tail call i32 @llvm.umin.i32(i32 %i.en, i32 %i.eo)
  %i.ev = add i32 %i.eu, -4                       ; 3 uses
  %i.ew = icmp slt i32 %i.ev, 1
  br i1 %i.ew, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ex = sub i32 %i.eo, %i.en
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.ey = icmp ult i32 %i.eo, 13                  ; 2 uses
  %i.ez = icmp ult i32 %i.en, 13                  ; 2 uses
  %or.cond.i.i.i20 = and i1 %i.ey, %i.ez
  br i1 %or.cond.i.i.i20, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fa = zext nneg i32 %i.ev to i64
  %i.fb = call i32 @memcmp(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i64 noundef %i.fa) #41 ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.fb, 0
  %i.fc = sub nsw i32 %i.eo, %i.en
  %spec.select.i.i.i = select i1 %.not21.i.i.i, i32 %i.fc, i32 %i.fb
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.ai:                                            ; preds = %bb.ag
  %.sroa.gep12.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %.sroa.sel13.i = select i1 %i.ey, ptr %i.i, ptr %.sroa.gep12.i
  %.sroa.gep10.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %.sroa.sel.i = select i1 %i.ez, ptr %i.j, ptr %.sroa.gep10.i
  %i.fd = zext nneg i32 %i.ev to i64
  %i.fe = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i, ptr noundef nonnull %.sroa.sel.i, i64 noundef %i.fd) #41 ; 2 uses
  %.not20.i.i.i = icmp eq i32 %i.fe, 0
  %i.ff = sub i32 %i.eo, %i.en
  %spec.select22.i.i.i = select i1 %.not20.i.i.i, i32 %i.ff, i32 %i.fe
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

_ZNK8facebook5velox10StringViewssERKS1_.exit.i:   ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ad
  %.1.i.i.i = phi i32 [ %i.et, %bb.ad ], [ %i.ex, %bb.af ], [ %spec.select.i.i.i, %bb.ah ], [ %spec.select22.i.i.i, %bb.ai ]
  %i.fg = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.fg, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i17, %.sroa.0.0.copyload.i4.i
  br i1 %.not.i.i, label %bb.ak, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.fh = icmp ult i32 %i.eo, 13
  br i1 %i.fh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fi = icmp samesign ult i32 %i.eo, 5
  %i.fj = icmp eq ptr %.sroa.2.0.copyload.i.i, %.sroa.2.0.copyload.i6.i
  %spec.select.i = select i1 %i.fi, i1 true, i1 %i.fj
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %i.fm = and i64 %.sroa.0.0.copyload.i.i17, 4294967295
  %i.fn = add nsw i64 %i.fm, -4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.fk, ptr nonnull %i.fl, i64 %i.fn)
  %i.fo = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i:   ; preds = %bb.am, %bb.al, %bb.aj
  %.0.i.i19 = phi i1 [ %i.fo, %bb.am ], [ false, %bb.aj ], [ %spec.select.i, %bb.al ]
  %not..i.i = xor i1 %.0.i.i19, true
  %i.fp = zext i1 %not..i.i to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i
  %i.fq = phi i32 [ %i.fp, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i ] ; 2 uses
  %i.fr = load ptr, ptr %i.dp, align 8, !tbaa !690, !nonnull !140, !align !494
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !680, !range !139, !noundef !140
  %i.fu = trunc nuw i8 %i.ft to i1
  %i.fv = sub nsw i32 0, %i.fq
  %i.fw = select i1 %i.fu, i32 %i.fq, i32 %i.fv
  %i.fx = icmp slt i32 %i.fw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.fx, label %bb.an, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit

bb.an:                                            ; preds = %bb.aa, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit
  %i.fy = getelementptr inbounds [4 x i8], ptr %0, i64 %.018.i.i.i
  store i32 %i.dr, ptr %i.fy, align 4, !tbaa !129
  %.not8.i = icmp eq i64 %.0919.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit, label %.lr.ph.i.i.i, !llvm.loop !56

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit: ; preds = %bb.aa, %bb.an, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit, %bb.v
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.v ], [ %.018.i.i.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit ], [ 0, %bb.an ], [ %.018.i.i.i, %bb.aa ]
  %i.fz = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.n, ptr %i.fz, align 4, !tbaa !129
  %i.ga = icmp sgt i64 %i.q, 4
  br i1 %i.ga, label %bb.b, label %._crit_edge, !llvm.loop !2318

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_RSJ_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_RSJ_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !128 ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !663 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !128 ; 3 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.o = and i64 %i.c, 4
  %i.p = icmp eq i64 %i.o, 0
  %i.q = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 4
  %7 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %7
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.fx, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_T2_.exit ] ; 8 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.y = load i32, ptr %i.x, align 4, !tbaa !129  ; 3 uses
  %i.z = icmp slt i64 %.08, %i.i
  br i1 %i.z, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.aa = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !685
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.ac, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread
  %.034.i = phi i64 [ %i.cx, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.ad = shl i64 %.034.i, 1                      ; 2 uses
  %i.ae = add i64 %i.ad, 2                        ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ae
  %i.ag = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ag
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !129 ; 5 uses
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !129 ; 3 uses
  br i1 %.not.i.i.i.i9, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ak = zext i32 %i.ai to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 6
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !186
  %i.ao = and i64 %i.ak, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = and i64 %i.an, %i.ap
  %.not.i.i.i.i.i10 = icmp eq i64 %i.aq, 0
  %i.ar = zext i32 %i.aj to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, 6
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !186
  %i.av = and i64 %i.ar, 63
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = and i64 %i.au, %i.aw
  %.not.i.i.i11.i.i11 = icmp eq i64 %i.ax, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12: ; preds = %bb.d, %.lr.ph.i
  %i.ay = phi i1 [ %.not.i.i.i.i.i10, %bb.d ], [ false, %.lr.ph.i ] ; 3 uses
  %i.az = phi i1 [ %.not.i.i.i11.i.i11, %bb.d ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i.i13 = or i1 %i.ay, %i.az
  br i1 %or.cond.i.i13, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12
  %.sroa.0.0.copyload.i.i15 = load i64, ptr %.sroa.0.sroa.2.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i16 = lshr i64 %.sroa.0.0.copyload.i.i15, 32
  %.sroa.37.0.extract.trunc.i.i.i17 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i16 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i17, label %bb.i [
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ba = and i64 %.sroa.0.0.copyload.i.i15, 65536
  %.not.i.i.i20 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i20, label %bb.g, label %.critedge.i.i21

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.h:                                             ; preds = %bb.e
  %or.cond.i.i.i18 = and i1 %i.ay, %i.az
  br i1 %or.cond.i.i.i18, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SC_EUliE2_EEvT0_T1_SB_SC_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESM_EEbT_SF_.exit

bb.i:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i.i21:                                  ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

bb.j:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bb = load ptr, ptr %.sroa.0.sroa.3.0.copyload, align 8, !tbaa !687, !nonnull !140, !align !223
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !689
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 216
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !408 ; 2 uses
  %i.bf = sext i32 %i.ai to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %.sroa.0.0.copyload.i.i27 = load i64, ptr %i.bg, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.2.0.copyload.i.i29 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i28, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i27, ptr %3, align 8
  store ptr %.sroa.2.0.copyload.i.i29, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bh = sext i32 %i.aj to i64
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.bh ; 2 uses
  %.sroa.0.0.copyload.i4.i30 = load i64, ptr %i.bi, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i5.i31 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.2.0.copyload.i6.i32 = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i31, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i30, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i6.i32, ptr %i.k, align 8
  %.not.i.i.unshifted.i33 = xor i64 %.sroa.0.0.copyload.i4.i30, %.sroa.0.0.copyload.i.i27
  %.not.i.i.i34 = icmp ult i64 %.not.i.i.unshifted.i33, 4294967296
  %i.bj = trunc i64 %.sroa.0.0.copyload.i4.i30 to i32 ; 5 uses
  %i.bk = trunc i64 %.sroa.0.0.copyload.i.i27 to i32 ; 7 uses
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = load i32, ptr %i.m, align 1
  %i.bm = load i32, ptr %i.l, align 1
  %i.bn = tail call i32 @llvm.bswap.i32(i32 %i.bl)
  %i.bo = tail call i32 @llvm.bswap.i32(i32 %i.bm)
  %i.bp = tail call i32 @llvm.ucmp.i32.i32(i32 %i.bn, i32 %i.bo)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.bq = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 %i.bk)
  %i.br = add i32 %i.bq, -4                       ; 3 uses
  %i.bs = icmp slt i32 %i.br, 1
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bt = sub i32 %i.bk, %i.bj
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i35

bb.n:                                             ; preds = %bb.l
  %i.bu = icmp ult i32 %i.bk, 13                  ; 2 uses
  %i.bv = icmp ult i32 %i.bj, 13                  ; 2 uses
  %or.cond.i.i.i43 = and i1 %i.bu, %i.bv
  br i1 %or.cond.i.i.i43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = zext nneg i32 %i.br to i64
  %i.bx = call i32 @memcmp(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i64 noundef %i.bw) #41 ; 2 uses
  %.not21.i.i.i50 = icmp eq i32 %i.bx, 0
  %i.by = sub nsw i32 %i.bk, %i.bj
  %spec.select.i.i.i51 = select i1 %.not21.i.i.i50, i32 %i.by, i32 %i.bx
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i35

bb.p:                                             ; preds = %bb.n
  %.sroa.gep12.i44 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i29, i64 4
  %.sroa.sel13.i45 = select i1 %i.bu, ptr %i.j, ptr %.sroa.gep12.i44
  %.sroa.gep10.i46 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i32, i64 4
  %.sroa.sel.i47 = select i1 %i.bv, ptr %i.k, ptr %.sroa.gep10.i46
  %i.bz = zext nneg i32 %i.br to i64
  %i.ca = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i45, ptr noundef nonnull %.sroa.sel.i47, i64 noundef %i.bz) #41 ; 2 uses
  %.not20.i.i.i48 = icmp eq i32 %i.ca, 0
  %i.cb = sub i32 %i.bk, %i.bj
  %spec.select22.i.i.i49 = select i1 %.not20.i.i.i48, i32 %i.cb, i32 %i.ca
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i35

_ZNK8facebook5velox10StringViewssERKS1_.exit.i35: ; preds = %bb.p, %bb.o, %bb.m, %bb.k
  %.1.i.i.i36 = phi i32 [ %i.bp, %bb.k ], [ %i.bt, %bb.m ], [ %spec.select.i.i.i51, %bb.o ], [ %spec.select22.i.i.i49, %bb.p ]
  %i.cc = icmp slt i32 %.1.i.i.i36, 0
  br i1 %i.cc, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit52, label %bb.q

bb.q:                                             ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i35
  %.not.i.i37 = icmp eq i64 %.sroa.0.0.copyload.i.i27, %.sroa.0.0.copyload.i4.i30
  br i1 %.not.i.i37, label %bb.r, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i38

bb.r:                                             ; preds = %bb.q
  %i.cd = icmp ult i32 %i.bk, 13
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ce = icmp samesign ult i32 %i.bk, 5
  %i.cf = icmp eq ptr %.sroa.2.0.copyload.i.i29, %.sroa.2.0.copyload.i6.i32
  %spec.select.i42 = select i1 %i.ce, i1 true, i1 %i.cf
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i38

bb.t:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i29, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i32, i64 4
  %i.ci = and i64 %.sroa.0.0.copyload.i.i27, 4294967295
  %i.cj = add nsw i64 %i.ci, -4
  %bcmp.i.i41 = tail call i32 @bcmp(ptr nonnull %i.cg, ptr nonnull %i.ch, i64 %i.cj)
  %i.ck = icmp eq i32 %bcmp.i.i41, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i38

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i38: ; preds = %bb.t, %bb.s, %bb.q
  %.0.i.i39 = phi i1 [ %i.ck, %bb.t ], [ false, %bb.q ], [ %spec.select.i42, %bb.s ]
  %not..i.i40 = xor i1 %.0.i.i39, true
  %i.cl = zext i1 %not..i.i40 to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit52

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit52: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i35, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i38
  %i.cm = phi i32 [ %i.cl, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i38 ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i35 ] ; 2 uses
  %i.cn = load ptr, ptr %i.n, align 8, !tbaa !690, !nonnull !140, !align !494
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !680, !range !139, !noundef !140
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = sub nsw i32 0, %i.cm
  %i.cs = select i1 %i.cq, i32 %i.cm, i32 %i.cr
  %.fr = freeze i32 %i.cs
  %i.ct = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
end_hunk_3
begin_hunk_4_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_RSJ_:bb.a
  %i.bn = icmp eq i32 %bcmp.i.i17, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14: ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i15 = phi i1 [ %i.bn, %bb.l ], [ false, %bb.i ], [ %spec.select.i18, %bb.k ]
  %not..i.i16 = xor i1 %.0.i.i15, true
  %i.bo = zext i1 %not..i.i16 to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit28

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit28: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14
  %i.bp = phi i32 [ %i.bo, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14 ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11 ] ; 2 uses
  %i.bq = sub nsw i32 0, %i.bp
  %i.br = select i1 %i.aa, i32 %i.bp, i32 %i.bq
  %i.bs = icmp slt i32 %i.br, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %spec.select.i.i = select i1 %i.bs, i64 %i.ae, i64 %i.ac ; 4 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !129
  %i.bv = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !129
  %i.bw = icmp slt i64 %spec.select.i.i, %i.u
  br i1 %i.bw, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !58

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit28, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit28 ] ; 5 uses
  %i.bx = and i64 %i.r, 4
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bz = add nsw i64 %i.s, -2
  %i.ca = ashr exact i64 %i.bz, 1
  %i.cb = icmp eq i64 %.0.lcssa.i.i, %i.ca
  br i1 %i.cb, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %bb.m
  %i.cc = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cd = or disjoint i64 %i.cc, 1                ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !129
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !129
  br label %.lr.ph.i.i.preheader.i

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.n, %.thread.i
  %.1.i11.i = phi i64 [ %i.cd, %.thread.i ], [ %.0.lcssa.i.i, %bb.n ]
  %i.ch = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !689
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 216
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !408 ; 2 uses
  %i.ck = sext i32 %i.o to i64
  %i.cl = getelementptr inbounds [16 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cm = load i8, ptr %i.g, align 1, !tbaa !680, !range !139, !noundef !140
  %i.cn = trunc nuw i8 %i.cm to i1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.y ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [16 x i8], ptr %i.cj, i64 %i.cq ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cr, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %.sroa.0.0.copyload.i4.i = load i64, ptr %i.cl, align 8 ; 4 uses
  %.sroa.2.0.copyload.i6.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i6.i, ptr %i.k, align 8
  %.not.i.i.unshifted.i = xor i64 %.sroa.0.0.copyload.i4.i, %.sroa.0.0.copyload.i.i
  %.not.i.i.i = icmp ult i64 %.not.i.i.unshifted.i, 4294967296
  %i.cs = trunc i64 %.sroa.0.0.copyload.i4.i to i32 ; 5 uses
  %i.ct = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 7 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.cu = load i32, ptr %i.m, align 1
  %i.cv = load i32, ptr %i.l, align 1
  %i.cw = tail call i32 @llvm.bswap.i32(i32 %i.cu)
  %i.cx = tail call i32 @llvm.bswap.i32(i32 %i.cv)
  %i.cy = tail call i32 @llvm.ucmp.i32.i32(i32 %i.cw, i32 %i.cx)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.cz = tail call i32 @llvm.umin.i32(i32 %i.cs, i32 %i.ct)
  %i.da = add i32 %i.cz, -4                       ; 3 uses
  %i.db = icmp slt i32 %i.da, 1
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dc = sub i32 %i.ct, %i.cs
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.dd = icmp ult i32 %i.ct, 13                  ; 2 uses
  %i.de = icmp ult i32 %i.cs, 13                  ; 2 uses
  %or.cond.i.i.i = and i1 %i.dd, %i.de
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.df = zext nneg i32 %i.da to i64
  %i.dg = call i32 @memcmp(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i64 noundef %i.df) #41 ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.dg, 0
  %i.dh = sub nsw i32 %i.ct, %i.cs
  %spec.select.i.i.i = select i1 %.not21.i.i.i, i32 %i.dh, i32 %i.dg
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.t:                                             ; preds = %bb.r
  %.sroa.gep12.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %.sroa.sel13.i = select i1 %i.dd, ptr %i.j, ptr %.sroa.gep12.i
  %.sroa.gep10.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %.sroa.sel.i = select i1 %i.de, ptr %i.k, ptr %.sroa.gep10.i
  %i.di = zext nneg i32 %i.da to i64
  %i.dj = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i, ptr noundef nonnull %.sroa.sel.i, i64 noundef %i.di) #41 ; 2 uses
  %.not20.i.i.i = icmp eq i32 %i.dj, 0
  %i.dk = sub i32 %i.ct, %i.cs
  %spec.select22.i.i.i = select i1 %.not20.i.i.i, i32 %i.dk, i32 %i.dj
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

_ZNK8facebook5velox10StringViewssERKS1_.exit.i:   ; preds = %bb.t, %bb.s, %bb.q, %bb.o
  %.1.i.i.i = phi i32 [ %i.cy, %bb.o ], [ %i.dc, %bb.q ], [ %spec.select.i.i.i, %bb.s ], [ %spec.select22.i.i.i, %bb.t ]
  %i.dl = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.dl, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i4.i
  br i1 %.not.i.i, label %bb.v, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.dm = icmp ult i32 %i.ct, 13
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = icmp samesign ult i32 %i.ct, 5
  %i.do = icmp eq ptr %.sroa.2.0.copyload.i.i, %.sroa.2.0.copyload.i6.i
  %spec.select.i = select i1 %i.dn, i1 true, i1 %i.do
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %i.dr = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.ds = add nsw i64 %i.dr, -4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.dp, ptr nonnull %i.dq, i64 %i.ds)
  %i.dt = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i:   ; preds = %bb.x, %bb.w, %bb.u
  %.0.i.i = phi i1 [ %i.dt, %bb.x ], [ false, %bb.u ], [ %spec.select.i, %bb.w ]
  %not..i.i = xor i1 %.0.i.i, true
  %i.du = zext i1 %not..i.i to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i
  %i.dv = phi i32 [ %i.du, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i ] ; 2 uses
  %i.dw = sub nsw i32 0, %i.dv
  %i.dx = select i1 %i.cn, i32 %i.dv, i32 %i.dw
  %i.dy = icmp slt i32 %i.dx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.dy, label %bb.y, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit

bb.y:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit
  %i.dz = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.cp, ptr %i.dz, align 4, !tbaa !129
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit, label %.lr.ph.i.i.i, !llvm.loop !59

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SN_SN_RSJ_.exit: ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit, %bb.y, %bb.n
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.n ], [ %.019.i.i.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit ], [ 0, %bb.y ]
  %i.ea = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.o, ptr %i.ea, align 4, !tbaa !129
  %i.eb = icmp sgt i64 %i.r, 4
  br i1 %i.eb, label %bb.b, label %._crit_edge, !llvm.loop !2326

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
  %i.d = ashr exact i64 %i.c, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !128 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !663
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
  %7 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %7
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SJ_SJ_SK_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.dz, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SJ_SJ_SK_T2_.exit ] ; 8 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %.09
  %i.y = load i32, ptr %i.x, align 4, !tbaa !129  ; 2 uses
  %i.z = icmp slt i64 %.09, %i.i
  br i1 %i.z, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.aa = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !689
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 216
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !408 ; 2 uses
  %i.ad = load i8, ptr %i.o, align 1, !tbaa !680, !range !139, !noundef !140
  %i.ae = trunc nuw i8 %i.ad to i1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit36
  %.034.i = phi i64 [ %spec.select.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit36 ], [ %.09, %.lr.ph.i.preheader ] ; 2 uses
  %i.af = shl i64 %.034.i, 1                      ; 2 uses
  %i.ag = add i64 %i.af, 2                        ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ag
  %i.ai = or disjoint i64 %i.af, 1                ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !129
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i.i11 = load i64, ptr %i.an, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.2.0.copyload.i.i13 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i12, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i11, ptr %3, align 8
  store ptr %.sroa.2.0.copyload.i.i13, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.ao ; 2 uses
  %.sroa.0.0.copyload.i4.i14 = load i64, ptr %i.ap, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i5.i15 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.2.0.copyload.i6.i16 = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i15, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i14, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i6.i16, ptr %i.n, align 8
  %.not.i.i.unshifted.i17 = xor i64 %.sroa.0.0.copyload.i4.i14, %.sroa.0.0.copyload.i.i11
  %.not.i.i.i18 = icmp ult i64 %.not.i.i.unshifted.i17, 4294967296
  %i.aq = trunc i64 %.sroa.0.0.copyload.i4.i14 to i32 ; 5 uses
  %i.ar = trunc i64 %.sroa.0.0.copyload.i.i11 to i32 ; 7 uses
  br i1 %.not.i.i.i18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.as = load i32, ptr %i.q, align 1
  %i.at = load i32, ptr %i.p, align 1
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.as)
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.at)
  %i.aw = tail call i32 @llvm.ucmp.i32.i32(i32 %i.au, i32 %i.av)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i19

bb.e:                                             ; preds = %.lr.ph.i
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.ar)
  %i.ay = add i32 %i.ax, -4                       ; 3 uses
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = sub i32 %i.ar, %i.aq
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i19

bb.g:                                             ; preds = %bb.e
  %i.bb = icmp ult i32 %i.ar, 13                  ; 2 uses
  %i.bc = icmp ult i32 %i.aq, 13                  ; 2 uses
  %or.cond.i.i.i27 = and i1 %i.bb, %i.bc
  br i1 %or.cond.i.i.i27, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = zext nneg i32 %i.ay to i64
  %i.be = call i32 @memcmp(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, i64 noundef %i.bd) #41 ; 2 uses
  %.not21.i.i.i34 = icmp eq i32 %i.be, 0
  %i.bf = sub nsw i32 %i.ar, %i.aq
  %spec.select.i.i.i35 = select i1 %.not21.i.i.i34, i32 %i.bf, i32 %i.be
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i19

bb.i:                                             ; preds = %bb.g
  %.sroa.gep12.i28 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i13, i64 4
  %.sroa.sel13.i29 = select i1 %i.bb, ptr %i.m, ptr %.sroa.gep12.i28
  %.sroa.gep10.i30 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i16, i64 4
  %.sroa.sel.i31 = select i1 %i.bc, ptr %i.n, ptr %.sroa.gep10.i30
  %i.bg = zext nneg i32 %i.ay to i64
  %i.bh = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i29, ptr noundef nonnull %.sroa.sel.i31, i64 noundef %i.bg) #41 ; 2 uses
  %.not20.i.i.i32 = icmp eq i32 %i.bh, 0
  %i.bi = sub i32 %i.ar, %i.aq
  %spec.select22.i.i.i33 = select i1 %.not20.i.i.i32, i32 %i.bi, i32 %i.bh
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i19

_ZNK8facebook5velox10StringViewssERKS1_.exit.i19: ; preds = %bb.i, %bb.h, %bb.f, %bb.d
  %.1.i.i.i20 = phi i32 [ %i.aw, %bb.d ], [ %i.ba, %bb.f ], [ %spec.select.i.i.i35, %bb.h ], [ %spec.select22.i.i.i33, %bb.i ]
  %i.bj = icmp slt i32 %.1.i.i.i20, 0
  br i1 %i.bj, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit36, label %bb.j

bb.j:                                             ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i19
  %.not.i.i21 = icmp eq i64 %.sroa.0.0.copyload.i.i11, %.sroa.0.0.copyload.i4.i14
  br i1 %.not.i.i21, label %bb.k, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i22

bb.k:                                             ; preds = %bb.j
  %i.bk = icmp ult i32 %i.ar, 13
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp samesign ult i32 %i.ar, 5
  %i.bm = icmp eq ptr %.sroa.2.0.copyload.i.i13, %.sroa.2.0.copyload.i6.i16
  %spec.select.i26 = select i1 %i.bl, i1 true, i1 %i.bm
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i22

bb.m:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i13, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i16, i64 4
  %i.bp = and i64 %.sroa.0.0.copyload.i.i11, 4294967295
  %i.bq = add nsw i64 %i.bp, -4
  %bcmp.i.i25 = tail call i32 @bcmp(ptr nonnull %i.bn, ptr nonnull %i.bo, i64 %i.bq)
  %i.br = icmp eq i32 %bcmp.i.i25, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i22

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i22: ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i23 = phi i1 [ %i.br, %bb.m ], [ false, %bb.j ], [ %spec.select.i26, %bb.l ]
  %not..i.i24 = xor i1 %.0.i.i23, true
  %i.bs = zext i1 %not..i.i24 to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit36

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit36: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i19, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i22
  %i.bt = phi i32 [ %i.bs, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i22 ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i19 ] ; 2 uses
  %i.bu = sub nsw i32 0, %i.bt
  %i.bv = select i1 %i.ae, i32 %i.bt, i32 %i.bu
  %i.bw = icmp slt i32 %i.bv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %spec.select.i = select i1 %i.bw, i64 %i.ai, i64 %i.ag ; 4 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !129
  %i.bz = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !129
  %i.ca = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ca, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !58

._crit_edge.i:                                    ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit36, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %spec.select.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_S9_EUliE2_EEvT0_T1_S8_S9_ENKUliiE_clEii.exit36 ] ; 2 uses
  %i.cb = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i
  %i.cc = load i32, ptr %i.v, align 4, !tbaa !129
  store i32 %i.cc, ptr %i.w, align 4, !tbaa !129
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %.1.i = phi i64 [ %7, %bb.n ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.cd = icmp sgt i64 %.1.i, %.09
  br i1 %i.cd, label %.lr.ph.i.i.preheader, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SG_EUliE2_EEvT0_T1_SF_SG_EUliiE_EEEvT_SJ_SJ_SK_T2_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.ce = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !689
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 216
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !408 ; 2 uses
  %i.ch = sext i32 %i.y to i64
  %i.ci = getelementptr inbounds [16 x i8], ptr %i.cg, i64 %i.ch ; 2 uses
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cj = load i8, ptr %i.o, align 1, !tbaa !680, !range !139, !noundef !140
  %i.ck = trunc nuw i8 %i.cj to i1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.z
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.z ], [ %.1.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %0, i64 %.0920.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [16 x i8], ptr %i.cg, i64 %i.cn ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.co, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %.sroa.0.0.copyload.i4.i = load i64, ptr %i.ci, align 8 ; 4 uses
  %.sroa.2.0.copyload.i6.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i6.i, ptr %i.s, align 8
  %.not.i.i.unshifted.i = xor i64 %.sroa.0.0.copyload.i4.i, %.sroa.0.0.copyload.i.i
  %.not.i.i.i = icmp ult i64 %.not.i.i.unshifted.i, 4294967296
  %i.cp = trunc i64 %.sroa.0.0.copyload.i4.i to i32 ; 5 uses
  %i.cq = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 7 uses
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cr = load i32, ptr %i.u, align 1
  %i.cs = load i32, ptr %i.t, align 1
  %i.ct = tail call i32 @llvm.bswap.i32(i32 %i.cr)
  %i.cu = tail call i32 @llvm.bswap.i32(i32 %i.cs)
end_hunk_4
begin_hunk_5_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_:bb.a
  br i1 %i.cr, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !61

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.cn, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit22.thread ] ; 5 uses
  %i.cs = and i64 %i.s, 4
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.cu = add nsw i64 %i.t, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i, %i.cv
  br i1 %i.cw, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !129
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.da, ptr %i.db, align 4, !tbaa !129
  br label %.lr.ph.i.i.preheader.i

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.k, %.thread.i
  %.1.i11.i = phi i64 [ %i.cy, %.thread.i ], [ %.0.lcssa.i.i, %bb.k ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.025.0.copyload, i64 8
  %i.dd = sext i32 %i.p to i64                    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.r ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !129 ; 3 uses
  %i.di = load ptr, ptr %.sroa.025.0.copyload, align 8, !tbaa !698
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !699, !nonnull !140, !align !223
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !538 ; 2 uses
  %i.dn = sext i32 %i.dh to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !129
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = lshr i64 %i.dq, 6
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !186
  %i.du = and i64 %i.dq, 63
  %i.dv = shl nuw i64 1, %i.du
  %i.dw = and i64 %i.dv, %i.dt
  %.not.i.i.i.i = icmp eq i64 %i.dw, 0
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dd
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !129
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = lshr i64 %i.dz, 6
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !186
  %i.ed = and i64 %i.dz, 63
  %i.ee = shl nuw i64 1, %i.ed
  %i.ef = and i64 %i.ee, %i.ec
  %.not.i.i.i11.i = icmp eq i64 %i.ef, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.l, %.lr.ph.i.i.i
  %i.eg = phi i1 [ %.not.i.i.i.i, %bb.l ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.eh = phi i1 [ %.not.i.i.i11.i, %bb.l ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.eg, %i.eh
  br i1 %or.cond.i, label %bb.m, label %.split42

bb.m:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.q [
    i32 1, label %bb.n
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.ei = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.p:                                             ; preds = %bb.m
  %or.cond.i.i = and i1 %i.eg, %i.eh
  %i.ej = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.ek = xor i1 %i.eg, %i.ej
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.ek
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, label %bb.r

bb.q:                                             ; preds = %bb.m
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i:                                      ; preds = %bb.n
  call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

.split42:                                         ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.el = load ptr, ptr %i.de, align 8, !tbaa !696
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.em = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !700, !nonnull !140, !align !223 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !702
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !703, !nonnull !140, !align !223
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !538 ; 2 uses
  %i.er = sext i32 %i.dh to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !129
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 216
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !408 ; 2 uses
  %i.ew = sext i32 %i.et to i64
  %i.ex = getelementptr inbounds [16 x i8], ptr %i.ev, i64 %i.ew ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ex, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !116
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %7, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.dd
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !129
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [16 x i8], ptr %i.ev, i64 %i.fa ; 2 uses
  %.sroa.0.0.copyload.i4.i.i = load i64, ptr %i.fb, align 8
  %.sroa.2.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.sroa.2.0.copyload.i6.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i.i, align 8, !tbaa !116
  store i64 %.sroa.0.0.copyload.i4.i.i, ptr %8, align 8
  store ptr %.sroa.2.0.copyload.i6.i.i, ptr %i.l, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.fd, ptr %i.b, align 8, !tbaa !658
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %i.b, ptr %6, align 8, !tbaa !660
  store ptr %7, ptr %i.m, align 8, !tbaa !623
  store ptr %8, ptr %i.n, align 8, !tbaa !623
  %i.fe = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %6) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ff = load ptr, ptr %i.df, align 8, !tbaa !704, !nonnull !140, !align !494
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !680, !range !139, !noundef !140
  %i.fi = trunc nuw i8 %i.fh to i1
  %i.fj = sub nsw i32 0, %i.fe
  %i.fk = select i1 %i.fi, i32 %i.fe, i32 %i.fj
  %i.fl = icmp slt i32 %i.fk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.fl, label %.split42._crit_edge, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit

.split42._crit_edge:                              ; preds = %.split42
  %.pre = load i32, ptr %i.dg, align 4, !tbaa !129
  br label %bb.r

bb.r:                                             ; preds = %.split42._crit_edge, %bb.p
  %i.fm = phi i32 [ %.pre, %.split42._crit_edge ], [ %i.dh, %bb.p ]
  %i.fn = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !129
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, label %.lr.ph.i.i.i, !llvm.loop !62

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit: ; preds = %bb.p, %.split42, %bb.r, %bb.k
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.k ], [ %.019.i.i.i, %.split42 ], [ %.019.i.i.i, %bb.p ], [ 0, %bb.r ]
  %i.fo = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.fo, align 4, !tbaa !129
  %i.fp = icmp sgt i64 %i.s, 4
  br i1 %i.fp, label %bb.b, label %._crit_edge, !llvm.loop !2334

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.611, align 8            ; 6 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %class.anon.611, align 8            ; 6 uses
  %7 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %8 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 4 uses
  %i.g = icmp slt i64 %i.f, 2
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %i.f, -2                     ; 2 uses
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
  %9 = add nsw i64 %i.f, -1                       ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %9
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.i, %bb.b ], [ %i.fn, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit ] ; 8 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.z = load i32, ptr %i.y, align 4, !tbaa !129  ; 2 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !128 ; 4 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !663 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !128 ; 6 uses
  %i.aa = icmp slt i64 %.08, %i.k
  br i1 %i.aa, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit29.thread
  %.034.i = phi i64 [ %i.cr, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit29.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.ae = shl i64 %.034.i, 1                      ; 2 uses
  %i.af = add i64 %i.ae, 2                        ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
  %i.ah = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !129 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !129 ; 2 uses
  %i.al = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !698
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !699, !nonnull !140, !align !223
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !538 ; 2 uses
  %i.aq = sext i32 %i.aj to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !129
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = lshr i64 %i.at, 6
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !186
  %i.ax = and i64 %i.at, 63
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = and i64 %i.ay, %i.aw
  %.not.i.i.i.i11 = icmp eq i64 %i.az, 0
  %i.ba = sext i32 %i.ak to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !129
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 6
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !186
  %i.bh = and i64 %i.bd, 63
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bi, %i.bg
  %.not.i.i.i11.i12 = icmp eq i64 %i.bj, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13: ; preds = %bb.d, %.lr.ph.i
  %i.bk = phi i1 [ %.not.i.i.i.i11, %bb.d ], [ false, %.lr.ph.i ] ; 3 uses
  %i.bl = phi i1 [ %.not.i.i.i11.i12, %bb.d ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i14 = or i1 %i.bk, %i.bl
  br i1 %or.cond.i14, label %bb.e, label %.split

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %.sroa.0.0.copyload.i22 = load i64, ptr %.sroa.0.sroa.2.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i23 = lshr i64 %.sroa.0.0.copyload.i22, 32
  %.sroa.37.0.extract.trunc.i.i24 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i23 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i24, label %bb.i [
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.bm = and i64 %.sroa.0.0.copyload.i22, 65536
  %.not.i.i27 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i27, label %bb.g, label %.critedge.i28

bb.g:                                             ; preds = %bb.f
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.h:                                             ; preds = %bb.e
  %or.cond.i.i25 = and i1 %i.bk, %i.bl
  br i1 %or.cond.i.i25, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit29.thread, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit29

bb.i:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i28:                                    ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

.split:                                           ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %i.bn = load ptr, ptr %i.ac, align 8, !tbaa !696
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bo = load ptr, ptr %.sroa.0.sroa.3.0.copyload, align 8, !tbaa !700, !nonnull !140, !align !223 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !702
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !703, !nonnull !140, !align !223
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !538 ; 2 uses
  %i.bt = sext i32 %i.aj to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !129
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 216
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !408 ; 2 uses
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.by ; 2 uses
  %.sroa.0.0.copyload.i.i.i15 = load i64, ptr %i.bz, align 8
  %.sroa.2.0..sroa_idx.i.i.i16 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.2.0.copyload.i.i.i17 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i16, align 8, !tbaa !116
  store i64 %.sroa.0.0.copyload.i.i.i15, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i.i.i17, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ca = sext i32 %i.ak to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !129
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.cd ; 2 uses
  %.sroa.0.0.copyload.i4.i.i18 = load i64, ptr %i.ce, align 8
  %.sroa.2.0..sroa_idx.i5.i.i19 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.2.0.copyload.i6.i.i20 = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i.i19, align 8, !tbaa !116
  store i64 %.sroa.0.0.copyload.i4.i.i18, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i6.i.i20, ptr %i.m, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !658
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.a, ptr %3, align 8, !tbaa !660
  store ptr %4, ptr %i.n, align 8, !tbaa !623
  store ptr %5, ptr %i.o, align 8, !tbaa !623
  %i.ch = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ci = load ptr, ptr %i.ad, align 8, !tbaa !704, !nonnull !140, !align !494
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !680, !range !139, !noundef !140
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = sub nsw i32 0, %i.ch
  %i.cn = select i1 %i.cl, i32 %i.ch, i32 %i.cm
  %.fr = freeze i32 %i.cn
  %i.co = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %i.co, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit29.thread

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit29: ; preds = %bb.h
  %i.cp = trunc i64 %.sroa.0.0.copyload.i22 to i1
  %i.cq = xor i1 %i.bk, %i.cp
  %.fr49 = freeze i1 %i.cq
  br i1 %.fr49, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit29.thread, label %bb.j

bb.j:                                             ; preds = %.split, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit29
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit29.thread

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit29.thread: ; preds = %bb.h, %.split, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit29, %bb.j
  %i.cr = phi i64 [ %i.ah, %bb.j ], [ %i.af, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit29 ], [ %i.af, %.split ], [ %i.af, %bb.h ] ; 4 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !129
  %i.cu = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !129
  %i.cv = icmp slt i64 %i.cr, %i.k
  br i1 %i.cv, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !61

._crit_edge.i:                                    ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit29.thread, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %i.cr, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit29.thread ] ; 2 uses
  %i.cw = icmp eq i64 %.0.lcssa.i, %i.r
  %or.cond = select i1 %i.q, i1 %i.cw, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i
  %i.cx = load i32, ptr %i.w, align 4, !tbaa !129
  store i32 %i.cx, ptr %i.x, align 4, !tbaa !129
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.1.i = phi i64 [ %9, %bb.k ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.cy = icmp sgt i64 %.1.i, %.08
  br i1 %i.cy, label %.lr.ph.i.i.preheader, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8
  %i.da = sext i32 %i.z to i64                    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.s
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.s ], [ %.1.i, %.lr.ph.i.i.preheader ] ; 4 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !129 ; 3 uses
  %i.df = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !698
end_hunk_5
begin_hunk_6_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_:bb.a
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !186
  %i.ey = and i64 %i.eu, 63
  %i.ez = shl nuw i64 1, %i.ey
  %i.fa = and i64 %i.ez, %i.ex
  %.not.i.i.i11.i.i = icmp eq i64 %i.fa, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.w, %.lr.ph.i.i.i
  %i.fb = phi i1 [ %.not.i.i.i.i.i, %bb.w ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.fc = phi i1 [ %.not.i.i.i11.i.i, %bb.w ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.fb, %i.fc
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
  %i.fd = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.fd, 0
  br i1 %.not.i.i.i, label %bb.z, label %.critedge.i.i

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.aa:                                            ; preds = %bb.x
  %or.cond.i.i.i = and i1 %i.fb, %i.fc
  %i.fe = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.ff = xor i1 %i.fb, %i.fe
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.ff
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, label %bb.an

bb.ab:                                            ; preds = %bb.x
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i.i:                                    ; preds = %bb.y
  tail call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

bb.ac:                                            ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.fg = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !712, !nonnull !140, !align !223 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !714
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !715, !nonnull !140, !align !223
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !538 ; 2 uses
  %i.fl = sext i32 %i.ef to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !129
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 216
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !408 ; 2 uses
  %i.fq = sext i32 %i.fn to i64
  %i.fr = getelementptr inbounds [16 x i8], ptr %i.fp, i64 %i.fq ; 2 uses
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %i.fr, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i17, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.ec
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !129
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [16 x i8], ptr %i.fp, i64 %i.fu ; 2 uses
  %.sroa.0.0.copyload.i4.i = load i64, ptr %i.fv, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.sroa.2.0.copyload.i6.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i6.i, ptr %i.j, align 8
  %.not.i.i.unshifted.i = xor i64 %.sroa.0.0.copyload.i4.i, %.sroa.0.0.copyload.i.i17
  %.not.i.i.i18 = icmp ult i64 %.not.i.i.unshifted.i, 4294967296
  %i.fw = trunc i64 %.sroa.0.0.copyload.i4.i to i32 ; 5 uses
  %i.fx = trunc i64 %.sroa.0.0.copyload.i.i17 to i32 ; 7 uses
  br i1 %.not.i.i.i18, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fy = load i32, ptr %i.l, align 1
  %i.fz = load i32, ptr %i.k, align 1
  %i.ga = tail call i32 @llvm.bswap.i32(i32 %i.fy)
  %i.gb = tail call i32 @llvm.bswap.i32(i32 %i.fz)
  %i.gc = tail call i32 @llvm.ucmp.i32.i32(i32 %i.ga, i32 %i.gb)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.gd = tail call i32 @llvm.umin.i32(i32 %i.fw, i32 %i.fx)
  %i.ge = add i32 %i.gd, -4                       ; 3 uses
  %i.gf = icmp slt i32 %i.ge, 1
  br i1 %i.gf, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gg = sub i32 %i.fx, %i.fw
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.gh = icmp ult i32 %i.fx, 13                  ; 2 uses
  %i.gi = icmp ult i32 %i.fw, 13                  ; 2 uses
  %or.cond.i.i.i20 = and i1 %i.gh, %i.gi
  br i1 %or.cond.i.i.i20, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gj = zext nneg i32 %i.ge to i64
  %i.gk = call i32 @memcmp(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i64 noundef %i.gj) #41 ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.gk, 0
  %i.gl = sub nsw i32 %i.fx, %i.fw
  %spec.select.i.i.i = select i1 %.not21.i.i.i, i32 %i.gl, i32 %i.gk
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.ai:                                            ; preds = %bb.ag
  %.sroa.gep12.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %.sroa.sel13.i = select i1 %i.gh, ptr %i.i, ptr %.sroa.gep12.i
  %.sroa.gep10.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %.sroa.sel.i = select i1 %i.gi, ptr %i.j, ptr %.sroa.gep10.i
  %i.gm = zext nneg i32 %i.ge to i64
  %i.gn = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i, ptr noundef nonnull %.sroa.sel.i, i64 noundef %i.gm) #41 ; 2 uses
  %.not20.i.i.i = icmp eq i32 %i.gn, 0
  %i.go = sub i32 %i.fx, %i.fw
  %spec.select22.i.i.i = select i1 %.not20.i.i.i, i32 %i.go, i32 %i.gn
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

_ZNK8facebook5velox10StringViewssERKS1_.exit.i:   ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ad
  %.1.i.i.i = phi i32 [ %i.gc, %bb.ad ], [ %i.gg, %bb.af ], [ %spec.select.i.i.i, %bb.ah ], [ %spec.select22.i.i.i, %bb.ai ]
  %i.gp = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.gp, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i17, %.sroa.0.0.copyload.i4.i
  br i1 %.not.i.i, label %bb.ak, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.gq = icmp ult i32 %i.fx, 13
  br i1 %i.gq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gr = icmp samesign ult i32 %i.fx, 5
  %i.gs = icmp eq ptr %.sroa.2.0.copyload.i.i, %.sroa.2.0.copyload.i6.i
  %spec.select.i = select i1 %i.gr, i1 true, i1 %i.gs
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %i.gv = and i64 %.sroa.0.0.copyload.i.i17, 4294967295
  %i.gw = add nsw i64 %i.gv, -4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.gt, ptr nonnull %i.gu, i64 %i.gw)
  %i.gx = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i:   ; preds = %bb.am, %bb.al, %bb.aj
  %.0.i.i19 = phi i1 [ %i.gx, %bb.am ], [ false, %bb.aj ], [ %spec.select.i, %bb.al ]
  %not..i.i = xor i1 %.0.i.i19, true
  %i.gy = zext i1 %not..i.i to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i
  %i.gz = phi i32 [ %i.gy, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i ] ; 2 uses
  %i.ha = load ptr, ptr %i.ed, align 8, !tbaa !716, !nonnull !140, !align !494
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !680, !range !139, !noundef !140
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = sub nsw i32 0, %i.gz
  %i.hf = select i1 %i.hd, i32 %i.gz, i32 %i.he
  %i.hg = icmp slt i32 %i.hf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.hg, label %bb.an, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit

bb.an:                                            ; preds = %bb.aa, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit
  %i.hh = getelementptr inbounds [4 x i8], ptr %0, i64 %.018.i.i.i
  store i32 %i.ef, ptr %i.hh, align 4, !tbaa !129
  %.not8.i = icmp eq i64 %.0919.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, label %.lr.ph.i.i.i, !llvm.loop !66

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit: ; preds = %bb.aa, %bb.an, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit, %bb.v
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.v ], [ %.018.i.i.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit ], [ 0, %bb.an ], [ %.018.i.i.i, %bb.aa ]
  %i.hi = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.n, ptr %i.hi, align 4, !tbaa !129
  %i.hj = icmp sgt i64 %i.q, 4
  br i1 %i.hj, label %bb.b, label %._crit_edge, !llvm.loop !2353

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_RSL_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !128 ; 3 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !663 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !128 ; 3 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.p = and i64 %i.c, 4
  %i.q = icmp eq i64 %i.p, 0
  %i.r = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 4
  %7 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %7
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.hf, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit ] ; 8 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.z = load i32, ptr %i.y, align 4, !tbaa !129  ; 2 uses
  %i.aa = icmp slt i64 %.08, %i.i
  br i1 %i.aa, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ab = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !709
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.ad, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread
  %.034.i = phi i64 [ %i.dp, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.ae = shl i64 %.034.i, 1                      ; 2 uses
  %i.af = add i64 %i.ae, 2                        ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
  %i.ah = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !129 ; 5 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !129 ; 3 uses
  br i1 %.not.i.i.i.i9, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !710, !nonnull !140, !align !223
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !538 ; 2 uses
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !129
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !186
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.av, %i.at
  %.not.i.i.i.i.i10 = icmp eq i64 %i.aw, 0
  %i.ax = sext i32 %i.ak to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !129
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = lshr i64 %i.ba, 6
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !186
  %i.be = and i64 %i.ba, 63
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = and i64 %i.bf, %i.bd
  %.not.i.i.i11.i.i11 = icmp eq i64 %i.bg, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12: ; preds = %bb.d, %.lr.ph.i
  %i.bh = phi i1 [ %.not.i.i.i.i.i10, %bb.d ], [ false, %.lr.ph.i ] ; 3 uses
  %i.bi = phi i1 [ %.not.i.i.i11.i.i11, %bb.d ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i.i13 = or i1 %i.bh, %i.bi
  br i1 %or.cond.i.i13, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12
  %.sroa.0.0.copyload.i.i15 = load i64, ptr %.sroa.0.sroa.2.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i16 = lshr i64 %.sroa.0.0.copyload.i.i15, 32
  %.sroa.37.0.extract.trunc.i.i.i17 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i16 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i17, label %bb.i [
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.bj = and i64 %.sroa.0.0.copyload.i.i15, 65536
  %.not.i.i.i20 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i20, label %bb.g, label %.critedge.i.i21

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.h:                                             ; preds = %bb.e
  %or.cond.i.i.i18 = and i1 %i.bh, %i.bi
  br i1 %or.cond.i.i.i18, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINS3_10StringViewEE11sortIndicesILb0EZNKS6_11sortIndicesERSt6vectorIiSaIiEEPKiNS3_12CompareFlagsEEUliE1_ZNKS6_11sortIndicesESB_SD_SE_EUliE2_EEvT0_T1_SB_SE_EUliiE0_EclINS_17__normal_iteratorIPiSA_EESO_EEbT_SH_.exit

bb.i:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i.i21:                                  ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

bb.j:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bk = load ptr, ptr %.sroa.0.sroa.3.0.copyload, align 8, !tbaa !712, !nonnull !140, !align !223 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !714
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !715, !nonnull !140, !align !223
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !538 ; 2 uses
  %i.bp = sext i32 %i.aj to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !129
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 216
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !408 ; 2 uses
  %i.bu = sext i32 %i.br to i64
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bu ; 2 uses
  %.sroa.0.0.copyload.i.i27 = load i64, ptr %i.bv, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.2.0.copyload.i.i29 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i28, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i27, ptr %3, align 8
  store ptr %.sroa.2.0.copyload.i.i29, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bw = sext i32 %i.ak to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !129
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bz ; 2 uses
  %.sroa.0.0.copyload.i4.i30 = load i64, ptr %i.ca, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i5.i31 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.2.0.copyload.i6.i32 = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i31, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i30, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i6.i32, ptr %i.l, align 8
  %.not.i.i.unshifted.i33 = xor i64 %.sroa.0.0.copyload.i4.i30, %.sroa.0.0.copyload.i.i27
  %.not.i.i.i34 = icmp ult i64 %.not.i.i.unshifted.i33, 4294967296
  %i.cb = trunc i64 %.sroa.0.0.copyload.i4.i30 to i32 ; 5 uses
  %i.cc = trunc i64 %.sroa.0.0.copyload.i.i27 to i32 ; 7 uses
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = load i32, ptr %i.n, align 1
  %i.ce = load i32, ptr %i.m, align 1
  %i.cf = tail call i32 @llvm.bswap.i32(i32 %i.cd)
  %i.cg = tail call i32 @llvm.bswap.i32(i32 %i.ce)
  %i.ch = tail call i32 @llvm.ucmp.i32.i32(i32 %i.cf, i32 %i.cg)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.ci = tail call i32 @llvm.umin.i32(i32 %i.cb, i32 %i.cc)
  %i.cj = add i32 %i.ci, -4                       ; 3 uses
  %i.ck = icmp slt i32 %i.cj, 1
  br i1 %i.ck, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cl = sub i32 %i.cc, %i.cb
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i35

bb.n:                                             ; preds = %bb.l
  %i.cm = icmp ult i32 %i.cc, 13                  ; 2 uses
  %i.cn = icmp ult i32 %i.cb, 13                  ; 2 uses
  %or.cond.i.i.i43 = and i1 %i.cm, %i.cn
  br i1 %or.cond.i.i.i43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.co = zext nneg i32 %i.cj to i64
  %i.cp = call i32 @memcmp(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i64 noundef %i.co) #41 ; 2 uses
  %.not21.i.i.i50 = icmp eq i32 %i.cp, 0
  %i.cq = sub nsw i32 %i.cc, %i.cb
  %spec.select.i.i.i51 = select i1 %.not21.i.i.i50, i32 %i.cq, i32 %i.cp
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i35

bb.p:                                             ; preds = %bb.n
  %.sroa.gep12.i44 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i29, i64 4
  %.sroa.sel13.i45 = select i1 %i.cm, ptr %i.k, ptr %.sroa.gep12.i44
  %.sroa.gep10.i46 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i32, i64 4
  %.sroa.sel.i47 = select i1 %i.cn, ptr %i.l, ptr %.sroa.gep10.i46
  %i.cr = zext nneg i32 %i.cj to i64
  %i.cs = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i45, ptr noundef nonnull %.sroa.sel.i47, i64 noundef %i.cr) #41 ; 2 uses
  %.not20.i.i.i48 = icmp eq i32 %i.cs, 0
  %i.ct = sub i32 %i.cc, %i.cb
  %spec.select22.i.i.i49 = select i1 %.not20.i.i.i48, i32 %i.ct, i32 %i.cs
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i35

_ZNK8facebook5velox10StringViewssERKS1_.exit.i35: ; preds = %bb.p, %bb.o, %bb.m, %bb.k
  %.1.i.i.i36 = phi i32 [ %i.ch, %bb.k ], [ %i.cl, %bb.m ], [ %spec.select.i.i.i51, %bb.o ], [ %spec.select22.i.i.i49, %bb.p ]
  %i.cu = icmp slt i32 %.1.i.i.i36, 0
  br i1 %i.cu, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit52, label %bb.q

bb.q:                                             ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i35
  %.not.i.i37 = icmp eq i64 %.sroa.0.0.copyload.i.i27, %.sroa.0.0.copyload.i4.i30
  br i1 %.not.i.i37, label %bb.r, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i38

bb.r:                                             ; preds = %bb.q
  %i.cv = icmp ult i32 %i.cc, 13
  br i1 %i.cv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cw = icmp samesign ult i32 %i.cc, 5
  %i.cx = icmp eq ptr %.sroa.2.0.copyload.i.i29, %.sroa.2.0.copyload.i6.i32
  %spec.select.i42 = select i1 %i.cw, i1 true, i1 %i.cx
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i38

bb.t:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i29, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i32, i64 4
  %i.da = and i64 %.sroa.0.0.copyload.i.i27, 4294967295
  %i.db = add nsw i64 %i.da, -4
  %bcmp.i.i41 = tail call i32 @bcmp(ptr nonnull %i.cy, ptr nonnull %i.cz, i64 %i.db)
  %i.dc = icmp eq i32 %bcmp.i.i41, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i38

end_hunk_6
begin_hunk_7_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_RSL_:bb.a

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit28: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14
  %i.by = phi i32 [ %i.bx, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i14 ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i11 ] ; 2 uses
  %i.bz = sub nsw i32 0, %i.by
  %i.ca = select i1 %i.ad, i32 %i.by, i32 %i.bz
  %i.cb = icmp slt i32 %i.ca, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %spec.select.i.i = select i1 %i.cb, i64 %i.ah, i64 %i.af ; 4 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !129
  %i.ce = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !129
  %i.cf = icmp slt i64 %spec.select.i.i, %i.v
  br i1 %i.cf, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !68

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit28, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit28 ] ; 5 uses
  %i.cg = and i64 %i.s, 4
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ci = add nsw i64 %i.t, -2
  %i.cj = ashr exact i64 %i.ci, 1
  %i.ck = icmp eq i64 %.0.lcssa.i.i, %i.cj
  br i1 %i.ck, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %bb.m
  %i.cl = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cm = or disjoint i64 %i.cl, 1                ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !129
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !129
  br label %.lr.ph.i.i.preheader.i

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.n, %.thread.i
  %.1.i11.i = phi i64 [ %i.cm, %.thread.i ], [ %.0.lcssa.i.i, %bb.n ]
  %i.cq = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !714
  %i.cr = load ptr, ptr %i.e, align 8, !tbaa !715, !nonnull !140, !align !223
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !538 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 216
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !408 ; 2 uses
  %i.cv = sext i32 %i.p to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cv
  %i.cx = load i8, ptr %i.h, align 1, !tbaa !680, !range !139, !noundef !140
  %i.cy = trunc nuw i8 %i.cx to i1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.y ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !129
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [16 x i8], ptr %i.cu, i64 %i.de ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.df, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.dg = load i32, ptr %i.cw, align 4, !tbaa !129
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [16 x i8], ptr %i.cu, i64 %i.dh ; 2 uses
  %.sroa.0.0.copyload.i4.i = load i64, ptr %i.di, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.2.0.copyload.i6.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i6.i, ptr %i.l, align 8
  %.not.i.i.unshifted.i = xor i64 %.sroa.0.0.copyload.i4.i, %.sroa.0.0.copyload.i.i
  %.not.i.i.i = icmp ult i64 %.not.i.i.unshifted.i, 4294967296
  %i.dj = trunc i64 %.sroa.0.0.copyload.i4.i to i32 ; 5 uses
  %i.dk = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 7 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.dl = load i32, ptr %i.n, align 1
  %i.dm = load i32, ptr %i.m, align 1
  %i.dn = tail call i32 @llvm.bswap.i32(i32 %i.dl)
  %i.do = tail call i32 @llvm.bswap.i32(i32 %i.dm)
  %i.dp = tail call i32 @llvm.ucmp.i32.i32(i32 %i.dn, i32 %i.do)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.dq = tail call i32 @llvm.umin.i32(i32 %i.dj, i32 %i.dk)
  %i.dr = add i32 %i.dq, -4                       ; 3 uses
  %i.ds = icmp slt i32 %i.dr, 1
  br i1 %i.ds, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dt = sub i32 %i.dk, %i.dj
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.du = icmp ult i32 %i.dk, 13                  ; 2 uses
  %i.dv = icmp ult i32 %i.dj, 13                  ; 2 uses
  %or.cond.i.i.i = and i1 %i.du, %i.dv
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dw = zext nneg i32 %i.dr to i64
  %i.dx = call i32 @memcmp(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i64 noundef %i.dw) #41 ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.dx, 0
  %i.dy = sub nsw i32 %i.dk, %i.dj
  %spec.select.i.i.i = select i1 %.not21.i.i.i, i32 %i.dy, i32 %i.dx
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

bb.t:                                             ; preds = %bb.r
  %.sroa.gep12.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %.sroa.sel13.i = select i1 %i.du, ptr %i.k, ptr %.sroa.gep12.i
  %.sroa.gep10.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %.sroa.sel.i = select i1 %i.dv, ptr %i.l, ptr %.sroa.gep10.i
  %i.dz = zext nneg i32 %i.dr to i64
  %i.ea = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i, ptr noundef nonnull %.sroa.sel.i, i64 noundef %i.dz) #41 ; 2 uses
  %.not20.i.i.i = icmp eq i32 %i.ea, 0
  %i.eb = sub i32 %i.dk, %i.dj
  %spec.select22.i.i.i = select i1 %.not20.i.i.i, i32 %i.eb, i32 %i.ea
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i

_ZNK8facebook5velox10StringViewssERKS1_.exit.i:   ; preds = %bb.t, %bb.s, %bb.q, %bb.o
  %.1.i.i.i = phi i32 [ %i.dp, %bb.o ], [ %i.dt, %bb.q ], [ %spec.select.i.i.i, %bb.s ], [ %spec.select22.i.i.i, %bb.t ]
  %i.ec = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.ec, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i4.i
  br i1 %.not.i.i, label %bb.v, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ed = icmp ult i32 %i.dk, 13
  br i1 %i.ed, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ee = icmp samesign ult i32 %i.dk, 5
  %i.ef = icmp eq ptr %.sroa.2.0.copyload.i.i, %.sroa.2.0.copyload.i6.i
  %spec.select.i = select i1 %i.ee, i1 true, i1 %i.ef
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

bb.x:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i, i64 4
  %i.ei = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.ej = add nsw i64 %i.ei, -4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.eg, ptr nonnull %i.eh, i64 %i.ej)
  %i.ek = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i:   ; preds = %bb.x, %bb.w, %bb.u
  %.0.i.i = phi i1 [ %i.ek, %bb.x ], [ false, %bb.u ], [ %spec.select.i, %bb.w ]
  %not..i.i = xor i1 %.0.i.i, true
  %i.el = zext i1 %not..i.i to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i
  %i.em = phi i32 [ %i.el, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i ] ; 2 uses
  %i.en = sub nsw i32 0, %i.em
  %i.eo = select i1 %i.cy, i32 %i.em, i32 %i.en
  %i.ep = icmp slt i32 %i.eo, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.ep, label %bb.y, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit

bb.y:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit
  %i.eq = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.da, ptr %i.eq, align 4, !tbaa !129
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit, label %.lr.ph.i.i.i, !llvm.loop !69

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SP_SP_RSL_.exit: ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit, %bb.y, %bb.n
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.n ], [ %.019.i.i.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit ], [ 0, %bb.y ]
  %i.er = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.er, align 4, !tbaa !129
  %i.es = icmp sgt i64 %i.s, 4
  br i1 %i.es, label %bb.b, label %._crit_edge, !llvm.loop !2361

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
  %i.d = ashr exact i64 %i.c, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !128 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !663
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
  %7 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %7
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SL_SL_SM_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.eq, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SL_SL_SM_T2_.exit ] ; 8 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %.09
  %i.z = load i32, ptr %i.y, align 4, !tbaa !129  ; 2 uses
  %i.aa = icmp slt i64 %.09, %i.i
  br i1 %i.aa, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ab = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !714
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !715, !nonnull !140, !align !223
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !538 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 216
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !408 ; 2 uses
  %i.ag = load i8, ptr %i.p, align 1, !tbaa !680, !range !139, !noundef !140
  %i.ah = trunc nuw i8 %i.ag to i1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit36
  %.034.i = phi i64 [ %spec.select.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit36 ], [ %.09, %.lr.ph.i.preheader ] ; 2 uses
  %i.ai = shl i64 %.034.i, 1                      ; 2 uses
  %i.aj = add i64 %i.ai, 2                        ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aj
  %i.al = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %i.al
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !129
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !129
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.as ; 2 uses
  %.sroa.0.0.copyload.i.i11 = load i64, ptr %i.at, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.2.0.copyload.i.i13 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i12, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i11, ptr %3, align 8
  store ptr %.sroa.2.0.copyload.i.i13, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.au = sext i32 %i.ao to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !129
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.ax ; 2 uses
  %.sroa.0.0.copyload.i4.i14 = load i64, ptr %i.ay, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i5.i15 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.2.0.copyload.i6.i16 = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i15, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i4.i14, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i6.i16, ptr %i.o, align 8
  %.not.i.i.unshifted.i17 = xor i64 %.sroa.0.0.copyload.i4.i14, %.sroa.0.0.copyload.i.i11
  %.not.i.i.i18 = icmp ult i64 %.not.i.i.unshifted.i17, 4294967296
  %i.az = trunc i64 %.sroa.0.0.copyload.i4.i14 to i32 ; 5 uses
  %i.ba = trunc i64 %.sroa.0.0.copyload.i.i11 to i32 ; 7 uses
  br i1 %.not.i.i.i18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.bb = load i32, ptr %i.r, align 1
  %i.bc = load i32, ptr %i.q, align 1
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  %i.be = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  %i.bf = tail call i32 @llvm.ucmp.i32.i32(i32 %i.bd, i32 %i.be)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i19

bb.e:                                             ; preds = %.lr.ph.i
  %i.bg = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.ba)
  %i.bh = add i32 %i.bg, -4                       ; 3 uses
  %i.bi = icmp slt i32 %i.bh, 1
  br i1 %i.bi, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = sub i32 %i.ba, %i.az
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i19

bb.g:                                             ; preds = %bb.e
  %i.bk = icmp ult i32 %i.ba, 13                  ; 2 uses
  %i.bl = icmp ult i32 %i.az, 13                  ; 2 uses
  %or.cond.i.i.i27 = and i1 %i.bk, %i.bl
  br i1 %or.cond.i.i.i27, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = zext nneg i32 %i.bh to i64
  %i.bn = call i32 @memcmp(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i64 noundef %i.bm) #41 ; 2 uses
  %.not21.i.i.i34 = icmp eq i32 %i.bn, 0
  %i.bo = sub nsw i32 %i.ba, %i.az
  %spec.select.i.i.i35 = select i1 %.not21.i.i.i34, i32 %i.bo, i32 %i.bn
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i19

bb.i:                                             ; preds = %bb.g
  %.sroa.gep12.i28 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i13, i64 4
  %.sroa.sel13.i29 = select i1 %i.bk, ptr %i.n, ptr %.sroa.gep12.i28
  %.sroa.gep10.i30 = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i16, i64 4
  %.sroa.sel.i31 = select i1 %i.bl, ptr %i.o, ptr %.sroa.gep10.i30
  %i.bp = zext nneg i32 %i.bh to i64
  %i.bq = call i32 @memcmp(ptr noundef nonnull %.sroa.sel13.i29, ptr noundef nonnull %.sroa.sel.i31, i64 noundef %i.bp) #41 ; 2 uses
  %.not20.i.i.i32 = icmp eq i32 %i.bq, 0
  %i.br = sub i32 %i.ba, %i.az
  %spec.select22.i.i.i33 = select i1 %.not20.i.i.i32, i32 %i.br, i32 %i.bq
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i19

_ZNK8facebook5velox10StringViewssERKS1_.exit.i19: ; preds = %bb.i, %bb.h, %bb.f, %bb.d
  %.1.i.i.i20 = phi i32 [ %i.bf, %bb.d ], [ %i.bj, %bb.f ], [ %spec.select.i.i.i35, %bb.h ], [ %spec.select22.i.i.i33, %bb.i ]
  %i.bs = icmp slt i32 %.1.i.i.i20, 0
  br i1 %i.bs, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit36, label %bb.j

bb.j:                                             ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i19
  %.not.i.i21 = icmp eq i64 %.sroa.0.0.copyload.i.i11, %.sroa.0.0.copyload.i4.i14
  br i1 %.not.i.i21, label %bb.k, label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i22

bb.k:                                             ; preds = %bb.j
  %i.bt = icmp ult i32 %i.ba, 13
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = icmp samesign ult i32 %i.ba, 5
  %i.bv = icmp eq ptr %.sroa.2.0.copyload.i.i13, %.sroa.2.0.copyload.i6.i16
  %spec.select.i26 = select i1 %i.bu, i1 true, i1 %i.bv
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i22

bb.m:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i13, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i6.i16, i64 4
  %i.by = and i64 %.sroa.0.0.copyload.i.i11, 4294967295
  %i.bz = add nsw i64 %i.by, -4
  %bcmp.i.i25 = tail call i32 @bcmp(ptr nonnull %i.bw, ptr nonnull %i.bx, i64 %i.bz)
  %i.ca = icmp eq i32 %bcmp.i.i25, 0
  br label %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i22

_ZNK8facebook5velox10StringVieweqERKS1_.exit.i22: ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i23 = phi i1 [ %i.ca, %bb.m ], [ false, %bb.j ], [ %spec.select.i26, %bb.l ]
  %not..i.i24 = xor i1 %.0.i.i23, true
  %i.cb = zext i1 %not..i.i24 to i32
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit36

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit36: ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i19, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i22
  %i.cc = phi i32 [ %i.cb, %_ZNK8facebook5velox10StringVieweqERKS1_.exit.i22 ], [ -1, %_ZNK8facebook5velox10StringViewssERKS1_.exit.i19 ] ; 2 uses
  %i.cd = sub nsw i32 0, %i.cc
  %i.ce = select i1 %i.ah, i32 %i.cc, i32 %i.cd
  %i.cf = icmp slt i32 %i.ce, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %spec.select.i = select i1 %i.cf, i64 %i.al, i64 %i.aj ; 4 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !129
  %i.ci = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !129
  %i.cj = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.cj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !68

._crit_edge.i:                                    ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit36, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %spec.select.i, %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb0EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS3_11sortIndicesES8_SA_SB_EUliE2_EEvT0_T1_S8_SB_ENKUliiE_clEii.exit36 ] ; 2 uses
  %i.ck = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ck, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i
  %i.cl = load i32, ptr %i.w, align 4, !tbaa !129
  store i32 %i.cl, ptr %i.x, align 4, !tbaa !129
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %.1.i = phi i64 [ %7, %bb.n ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.cm = icmp sgt i64 %.1.i, %.09
  br i1 %i.cm, label %.lr.ph.i.i.preheader, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb0EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSD_11sortIndicesESF_SH_SI_EUliE2_EEvT0_T1_SF_SI_EUliiE_EEEvT_SL_SL_SM_T2_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.cn = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !714
  %i.co = load ptr, ptr %i.m, align 8, !tbaa !715, !nonnull !140, !align !223
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !538 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 216
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !408 ; 2 uses
  %i.cs = sext i32 %i.z to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cs
  %i.cu = load i8, ptr %i.p, align 1, !tbaa !680, !range !139, !noundef !140
  %i.cv = trunc nuw i8 %i.cu to i1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.z
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.z ], [ %.1.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %0, i64 %.0920.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !129
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.cr, i64 %i.db ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dc, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !116 ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.dd = load i32, ptr %i.ct, align 4, !tbaa !129
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [16 x i8], ptr %i.cr, i64 %i.de ; 2 uses
end_hunk_7
begin_hunk_8_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_:bb.a
  %i.bt = select i1 %i.br, i32 %i.bn, i32 %i.bs
  %.fr = freeze i32 %i.bt
  %i.bu = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %i.bu, label %bb.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.bv = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.bw = xor i1 %i.ax, %i.bv
  %.fr38 = freeze i1 %i.bw
  br i1 %.fr38, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, label %bb.i

bb.i:                                             ; preds = %.split, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %.split, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16, %bb.i
  %i.bx = phi i64 [ %i.ac, %bb.i ], [ %i.aa, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16 ], [ %i.aa, %.split ], [ %i.aa, %bb.g ] ; 4 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !129
  %i.ca = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !129
  %i.cb = icmp slt i64 %i.bx, %i.v
  br i1 %i.cb, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !72

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bx, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.cc = and i64 %i.s, 4
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ce = add nsw i64 %i.t, -2
  %i.cf = ashr exact i64 %i.ce, 1
  %i.cg = icmp eq i64 %.0.lcssa.i.i, %i.cf
  br i1 %i.cg, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  %i.ch = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ci = or disjoint i64 %i.ch, 1                ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !129
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !129
  br label %.lr.ph.i.i.preheader.i

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.k, %.thread.i
  %.1.i11.i = phi i64 [ %i.ci, %.thread.i ], [ %.0.lcssa.i.i, %bb.k ]
  %i.cm = zext i32 %i.p to i64                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 6
  %i.co = and i64 %i.cm, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.cr = sext i32 %i.p to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.r ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !129 ; 3 uses
  %i.cv = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !746
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.cy = zext i32 %i.cu to i64                   ; 2 uses
  %i.cz = lshr i64 %i.cy, 6
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !186
  %i.dc = and i64 %i.cy, 63
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = and i64 %i.db, %i.dd
  %.not.i.i.i.i = icmp eq i64 %i.de, 0
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cn
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !186
  %i.dh = and i64 %i.dg, %i.cp
  %.not.i.i.i11.i = icmp eq i64 %i.dh, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.l, %.lr.ph.i.i.i
  %i.di = phi i1 [ %.not.i.i.i.i, %bb.l ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.dj = phi i1 [ %.not.i.i.i11.i, %bb.l ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.di, %i.dj
  br i1 %or.cond.i, label %bb.m, label %.split36

bb.m:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.q [
    i32 1, label %bb.n
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.dk = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.p:                                             ; preds = %bb.m
  %or.cond.i.i = and i1 %i.di, %i.dj
  %i.dl = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dm = xor i1 %i.di, %i.dl
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dm
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %bb.r

bb.q:                                             ; preds = %bb.m
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i:                                      ; preds = %bb.n
  call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

.split36:                                         ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.dn = load ptr, ptr %i.cq, align 8, !tbaa !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.do = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !747, !nonnull !140, !align !223
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !744
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 144
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !727 ; 2 uses
  %i.ds = sext i32 %i.cu to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !186
  store i64 %i.du, ptr %i.e, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.cr
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !186
  store i64 %i.dw, ptr %i.f, align 8, !tbaa !186
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.dy, ptr %i.d, align 8, !tbaa !658
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.d, ptr %4, align 8, !tbaa !660
  store ptr %i.e, ptr %i.m, align 8, !tbaa !495
  store ptr %i.f, ptr %i.n, align 8, !tbaa !495
  %i.dz = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ea = load ptr, ptr %i.cs, align 8, !tbaa !748, !nonnull !140, !align !494
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !680, !range !139, !noundef !140
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = sub nsw i32 0, %i.dz
  %i.ef = select i1 %i.ed, i32 %i.dz, i32 %i.ee
  %i.eg = icmp slt i32 %i.ef, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br i1 %i.eg, label %.split36._crit_edge, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit

.split36._crit_edge:                              ; preds = %.split36
  %.pre = load i32, ptr %i.ct, align 4, !tbaa !129
  br label %bb.r

bb.r:                                             ; preds = %.split36._crit_edge, %bb.p
  %i.eh = phi i32 [ %.pre, %.split36._crit_edge ], [ %i.cu, %bb.p ]
  %i.ei = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !129
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !73

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit: ; preds = %bb.p, %.split36, %bb.r, %bb.k
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.k ], [ %.019.i.i.i, %.split36 ], [ %.019.i.i.i, %bb.p ], [ 0, %bb.r ]
  %i.ej = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.ej, align 4, !tbaa !129
  %i.ek = icmp sgt i64 %i.s, 4
  br i1 %i.ek, label %bb.b, label %._crit_edge, !llvm.loop !2640

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.694, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.694, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 4 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.j, -2                     ; 2 uses
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
  %5 = add nsw i64 %i.j, -1                       ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.m, %bb.b ], [ %i.ei, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit ] ; 8 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.z = load i32, ptr %i.y, align 4, !tbaa !129  ; 3 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !128 ; 2 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !663 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !128 ; 6 uses
  %i.aa = icmp slt i64 %.08, %i.o
  br i1 %i.aa, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread
  %.034.i = phi i64 [ %i.cb, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.ad = shl i64 %.034.i, 1                      ; 2 uses
  %i.ae = add i64 %i.ad, 2                        ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ae
  %i.ag = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ag
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !129 ; 2 uses
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !129 ; 2 uses
  %i.ak = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !746
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.an = zext i32 %i.ai to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !186
  %i.ar = and i64 %i.an, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.aq, %i.as
  %.not.i.i.i.i11 = icmp eq i64 %i.at, 0
  %i.au = zext i32 %i.aj to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 6
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !186
  %i.ay = and i64 %i.au, 63
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.ax, %i.az
  %.not.i.i.i11.i12 = icmp eq i64 %i.ba, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13: ; preds = %bb.d, %.lr.ph.i
  %i.bb = phi i1 [ %.not.i.i.i.i11, %bb.d ], [ false, %.lr.ph.i ] ; 3 uses
  %i.bc = phi i1 [ %.not.i.i.i11.i12, %bb.d ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i14 = or i1 %i.bb, %i.bc
  br i1 %or.cond.i14, label %bb.e, label %.split

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %.sroa.0.0.copyload.i16 = load i64, ptr %.sroa.0.sroa.2.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i17 = lshr i64 %.sroa.0.0.copyload.i16, 32
  %.sroa.37.0.extract.trunc.i.i18 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i17 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i18, label %bb.i [
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.bd = and i64 %.sroa.0.0.copyload.i16, 65536
  %.not.i.i21 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i21, label %bb.g, label %.critedge.i22

bb.g:                                             ; preds = %bb.f
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.h:                                             ; preds = %bb.e
  %or.cond.i.i19 = and i1 %i.bb, %i.bc
  br i1 %or.cond.i.i19, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23

bb.i:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i22:                                    ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

.split:                                           ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bf = load ptr, ptr %.sroa.0.sroa.3.0.copyload, align 8, !tbaa !747, !nonnull !140, !align !223
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !744
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !727 ; 2 uses
  %i.bj = sext i32 %i.ai to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !186
  store i64 %i.bl, ptr %i.b, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.bm = sext i32 %i.aj to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !186
  store i64 %i.bo, ptr %i.c, align 8, !tbaa !186
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bq, ptr %i.a, align 8, !tbaa !658
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.a, ptr %3, align 8, !tbaa !660
  store ptr %i.b, ptr %i.p, align 8, !tbaa !495
  store ptr %i.c, ptr %i.q, align 8, !tbaa !495
  %i.br = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bs = load ptr, ptr %i.ac, align 8, !tbaa !748, !nonnull !140, !align !494
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !680, !range !139, !noundef !140
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = sub nsw i32 0, %i.br
  %i.bx = select i1 %i.bv, i32 %i.br, i32 %i.bw
  %.fr = freeze i32 %i.bx
  %i.by = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %i.by, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23: ; preds = %bb.h
  %i.bz = trunc i64 %.sroa.0.0.copyload.i16 to i1
  %i.ca = xor i1 %i.bb, %i.bz
  %.fr43 = freeze i1 %i.ca
  br i1 %.fr43, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread, label %bb.j

bb.j:                                             ; preds = %.split, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread: ; preds = %bb.h, %.split, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23, %bb.j
  %i.cb = phi i64 [ %i.ag, %bb.j ], [ %i.ae, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23 ], [ %i.ae, %.split ], [ %i.ae, %bb.h ] ; 4 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !129
  %i.ce = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !129
  %i.cf = icmp slt i64 %i.cb, %i.o
  br i1 %i.cf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !72

._crit_edge.i:                                    ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %i.cb, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit23.thread ] ; 2 uses
  %i.cg = icmp eq i64 %.0.lcssa.i, %i.t
  %or.cond = select i1 %i.s, i1 %i.cg, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i
  %i.ch = load i32, ptr %i.w, align 4, !tbaa !129
  store i32 %i.ch, ptr %i.x, align 4, !tbaa !129
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.1.i = phi i64 [ %5, %bb.k ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ci = icmp sgt i64 %.1.i, %.08
  br i1 %i.ci, label %.lr.ph.i.i.preheader, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.cj = zext i32 %i.z to i64                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 6
  %i.cl = and i64 %i.cj, 63
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.co = sext i32 %i.z to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.s
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.s ], [ %.1.i, %.lr.ph.i.i.preheader ] ; 4 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !129 ; 3 uses
  %i.cs = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !746
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.cv = zext i32 %i.cr to i64                   ; 2 uses
  %i.cw = lshr i64 %i.cv, 6
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !186
  %i.cz = and i64 %i.cv, 63
  %i.da = shl nuw i64 1, %i.cz
  %i.db = and i64 %i.cy, %i.da
  %.not.i.i.i.i = icmp eq i64 %i.db, 0
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ck
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !186
  %i.de = and i64 %i.dd, %i.cm
  %.not.i.i.i11.i = icmp eq i64 %i.de, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i
end_hunk_8
begin_hunk_9_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_:bb.a

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.g:                                             ; preds = %bb.d
  %or.cond.i.i.i13 = and i1 %i.am, %i.an
  br i1 %or.cond.i.i.i13, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit

bb.h:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i.i16:                                  ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

.split:                                           ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i7
  %i.ap = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !755, !nonnull !140, !align !223
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !757
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !727 ; 2 uses
  %i.at = sext i32 %i.w to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !186
  %i.aw = sext i32 %i.x to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !186
  %i.az = tail call i32 @llvm.ucmp.i32.i64(i64 %i.av, i64 %i.ay) ; 2 uses
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !758, !nonnull !140, !align !494
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !680, !range !139, !noundef !140
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = sub nsw i32 0, %i.az
  %i.bf = select i1 %i.bd, i32 %i.az, i32 %i.be
  %.fr = freeze i32 %i.bf
  %i.bg = icmp slt i32 %.fr, 0
  br i1 %i.bg, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit: ; preds = %bb.g
  %i.bh = trunc i64 %.sroa.0.0.copyload.i.i10 to i1
  %i.bi = xor i1 %i.am, %i.bh
  %.fr39 = freeze i1 %i.bi
  br i1 %.fr39, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, label %bb.i

bb.i:                                             ; preds = %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread: ; preds = %bb.g, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit, %bb.i
  %i.bj = phi i32 [ %i.x, %bb.i ], [ %i.w, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit ], [ %i.w, %.split ], [ %i.w, %bb.g ]
  %i.bk = phi i64 [ %i.u, %bb.i ], [ %i.s, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit ], [ %i.s, %.split ], [ %i.s, %bb.g ] ; 3 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !129
  %i.bm = icmp slt i64 %i.bk, %i.l
  br i1 %i.bm, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !75

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.bk, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ] ; 5 uses
  %i.bn = and i64 %i.i, 4
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bp = add nsw i64 %i.j, -2
  %i.bq = ashr exact i64 %i.bp, 1
  %i.br = icmp eq i64 %.0.lcssa.i.i, %i.bq
  br i1 %i.br, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  %i.bs = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bt = or disjoint i64 %i.bs, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !129
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !129
  br label %.lr.ph.i.i.preheader.i

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.k, %.thread.i
  %.1.i11.i = phi i64 [ %i.bt, %.thread.i ], [ %.0.lcssa.i.i, %bb.k ]
  %i.bx = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !753
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  %i.ca = zext i32 %i.f to i64                    ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = and i64 %i.ca, 63
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = sext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.lr.ph.i.i.preheader.i
  %.018.i.i.i = phi i64 [ %.0919.i.i67.i, %bb.r ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i67.i = lshr i64 %.0919.in.i.i.i, 1    ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0919.i.i67.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !129 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = lshr i64 %i.cj, 6
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !186
  %i.cn = and i64 %i.cj, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = and i64 %i.cm, %i.co
  %.not.i.i.i.i.i = icmp eq i64 %i.cp, 0
  %i.cq = load i64, ptr %i.cc, align 8, !tbaa !186
  %i.cr = and i64 %i.cq, %i.ce
  %.not.i.i.i11.i.i = icmp eq i64 %i.cr, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.l, %.lr.ph.i.i.i
  %i.cs = phi i1 [ %.not.i.i.i.i.i, %bb.l ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.ct = phi i1 [ %.not.i.i.i11.i.i, %bb.l ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.cs, %i.ct
  br i1 %or.cond.i.i, label %bb.m, label %.split37

bb.m:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %bb.q [
    i32 1, label %bb.n
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.cu = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i, label %bb.o, label %.critedge.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.p:                                             ; preds = %bb.m
  %or.cond.i.i.i = and i1 %i.cs, %i.ct
  %i.cv = trunc i64 %.sroa.0.0.copyload.i.i to i1
  %i.cw = xor i1 %i.cs, %i.cv
  %or.cond.demorgan = or i1 %or.cond.i.i.i, %i.cw
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %bb.r

bb.q:                                             ; preds = %bb.m
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i.i:                                    ; preds = %bb.n
  tail call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

.split37:                                         ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %i.cx = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !755, !nonnull !140, !align !223
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !757
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 144
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !727 ; 2 uses
  %i.db = sext i32 %i.ci to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !186
  %i.de = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.cf
  %i.df = load i64, ptr %i.de, align 8, !tbaa !186
  %i.dg = tail call i32 @llvm.ucmp.i32.i64(i64 %i.dd, i64 %i.df) ; 2 uses
  %i.dh = load ptr, ptr %i.cg, align 8, !tbaa !758, !nonnull !140, !align !494
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !680, !range !139, !noundef !140
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = sub nsw i32 0, %i.dg
  %i.dm = select i1 %i.dk, i32 %i.dg, i32 %i.dl
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %bb.r, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit

bb.r:                                             ; preds = %bb.p, %.split37
  %i.do = getelementptr inbounds [4 x i8], ptr %0, i64 %.018.i.i.i
  store i32 %i.ci, ptr %i.do, align 4, !tbaa !129
  %.not8.i = icmp eq i64 %.0919.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, label %.lr.ph.i.i.i, !llvm.loop !76

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit: ; preds = %bb.p, %bb.r, %.split37, %bb.k
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.k ], [ %.018.i.i.i, %.split37 ], [ 0, %bb.r ], [ %.018.i.i.i, %bb.p ]
  %i.dp = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.dp, align 4, !tbaa !129
  %i.dq = icmp sgt i64 %i.i, 4
  br i1 %i.dq, label %bb.b, label %._crit_edge, !llvm.loop !2658

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_RSI_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !128 ; 2 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !663 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !128 ; 3 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.k = and i64 %i.c, 4
  %i.l = icmp eq i64 %i.k, 0
  %i.m = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.dn, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.q = load i32, ptr %i.p, align 4, !tbaa !129  ; 3 uses
  %i.r = icmp slt i64 %.08, %i.i
  br i1 %i.r, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.s = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !753
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !589  ; 3 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.u, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread
  %.034.i = phi i64 [ %i.bo, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.v = shl i64 %.034.i, 1                       ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 4 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %i.y
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !129 ; 5 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !129 ; 3 uses
  br i1 %.not.i.i.i.i9, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ac = zext i32 %i.aa to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !186
  %i.ag = and i64 %i.ac, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.af, %i.ah
  %.not.i.i.i.i.i10 = icmp eq i64 %i.ai, 0
  %i.aj = zext i32 %i.ab to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !186
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.am, %i.ao
  %.not.i.i.i11.i.i11 = icmp eq i64 %i.ap, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12: ; preds = %bb.d, %.lr.ph.i
  %i.aq = phi i1 [ %.not.i.i.i.i.i10, %bb.d ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ar = phi i1 [ %.not.i.i.i11.i.i11, %bb.d ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i.i13 = or i1 %i.aq, %i.ar
  br i1 %or.cond.i.i13, label %bb.e, label %.split

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12
  %.sroa.0.0.copyload.i.i15 = load i64, ptr %.sroa.0.sroa.2.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i16 = lshr i64 %.sroa.0.0.copyload.i.i15, 32
  %.sroa.37.0.extract.trunc.i.i.i17 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i16 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i17, label %bb.i [
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.as = and i64 %.sroa.0.0.copyload.i.i15, 65536
  %.not.i.i.i20 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i20, label %bb.g, label %.critedge.i.i21

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.h:                                             ; preds = %bb.e
  %or.cond.i.i.i18 = and i1 %i.aq, %i.ar
  br i1 %or.cond.i.i.i18, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit

bb.i:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i.i21:                                  ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

.split:                                           ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i12
  %i.at = load ptr, ptr %.sroa.0.sroa.3.0.copyload, align 8, !tbaa !755, !nonnull !140, !align !223
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !757
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !727 ; 2 uses
  %i.ax = sext i32 %i.aa to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !186
  %i.ba = sext i32 %i.ab to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !186
  %i.bd = tail call i32 @llvm.ucmp.i32.i64(i64 %i.az, i64 %i.bc) ; 2 uses
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !758, !nonnull !140, !align !494
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !680, !range !139, !noundef !140
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = sub nsw i32 0, %i.bd
  %i.bj = select i1 %i.bh, i32 %i.bd, i32 %i.bi
  %.fr = freeze i32 %i.bj
  %i.bk = icmp slt i32 %.fr, 0
  br i1 %i.bk, label %bb.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit: ; preds = %bb.h
  %i.bl = trunc i64 %.sroa.0.0.copyload.i.i15 to i1
  %i.bm = xor i1 %i.aq, %i.bl
  %.fr42 = freeze i1 %i.bm
  br i1 %.fr42, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, label %bb.j

bb.j:                                             ; preds = %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread: ; preds = %bb.h, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit, %bb.j
  %i.bn = phi i32 [ %i.ab, %bb.j ], [ %i.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit ], [ %i.aa, %.split ], [ %i.aa, %bb.h ]
  %i.bo = phi i64 [ %i.y, %bb.j ], [ %i.w, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit ], [ %i.w, %.split ], [ %i.w, %bb.h ] ; 3 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !129
  %i.bq = icmp slt i64 %i.bo, %i.i
  br i1 %i.bq, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !75

._crit_edge.i:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %i.bo, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS5_11sortIndicesERSt6vectorIiSaIiEENS3_12CompareFlagsEEUliE1_ZNKS5_11sortIndicesESA_SB_EUliE2_EEvT0_T1_SA_SB_EUliiE0_EclINS_17__normal_iteratorIPiS9_EESL_EEbT_SE_.exit.thread ] ; 2 uses
  %i.br = icmp eq i64 %.0.lcssa.i, %i.m
  %or.cond = select i1 %i.l, i1 %i.br, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i
  %i.bs = load i32, ptr %i.n, align 4, !tbaa !129
  store i32 %i.bs, ptr %i.o, align 4, !tbaa !129
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.k ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bt = icmp sgt i64 %.1.i, %.08
  br i1 %i.bt, label %.lr.ph.i.i.preheader, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SF_EUliE2_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.bu = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !753
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bw, null
  %i.bx = zext i32 %i.q to i64                    ; 2 uses
  %i.by = lshr i64 %i.bx, 6
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.by
  %i.ca = and i64 %i.bx, 63
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = sext i32 %i.q to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.s
  %.018.i.i = phi i64 [ %.0919.i.i, %bb.s ], [ %.1.i, %.lr.ph.i.i.preheader ] ; 4 uses
  %.0919.in.i.i = add nsw i64 %.018.i.i, -1
  %.0919.i.i = sdiv i64 %.0919.in.i.i, 2          ; 4 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %0, i64 %.0919.i.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !129 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = lshr i64 %i.cf, 6
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !186
  %i.cj = and i64 %i.cf, 63
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = and i64 %i.ci, %i.ck
  %.not.i.i.i.i.i = icmp eq i64 %i.cl, 0
  %i.cm = load i64, ptr %i.bz, align 8, !tbaa !186
  %i.cn = and i64 %i.cm, %i.cb
  %.not.i.i.i11.i.i = icmp eq i64 %i.cn, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i: ; preds = %bb.m, %.lr.ph.i.i
  %i.co = phi i1 [ %.not.i.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.cp = phi i1 [ %.not.i.i.i11.i.i, %bb.m ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i.i = or i1 %i.co, %i.cp
  br i1 %or.cond.i.i, label %bb.n, label %.split38

bb.n:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE2_clEi.exit12.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.0.sroa.2.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.37.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i.i, label %bb.r [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.cq = and i64 %.sroa.0.0.copyload.i.i, 65536
  %.not.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i, label %bb.p, label %.critedge.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.q:                                             ; preds = %bb.n
  %or.cond.i.i.i = and i1 %i.co, %i.cp
end_hunk_9
begin_hunk_10_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_:bb.a
  %i.cp = phi i64 [ %i.ad, %bb.i ], [ %i.ab, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.ab, %.split ], [ %i.ab, %bb.g ] ; 4 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !129
  %i.cs = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !129
  %i.ct = icmp slt i64 %i.cp, %i.v
  br i1 %i.ct, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !78

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.cp, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.cu = and i64 %i.s, 4
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.cw = add nsw i64 %i.t, -2
  %i.cx = ashr exact i64 %i.cw, 1
  %i.cy = icmp eq i64 %.0.lcssa.i.i, %i.cx
  br i1 %i.cy, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  %i.cz = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.da = or disjoint i64 %i.cz, 1                ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !129
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !129
  br label %.lr.ph.i.i.preheader.i

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.k, %.thread.i
  %.1.i11.i = phi i64 [ %i.da, %.thread.i ], [ %.0.lcssa.i.i, %bb.k ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.df = sext i32 %i.p to i64                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.r ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !129 ; 3 uses
  %i.dk = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !766
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !767, !nonnull !140, !align !223
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !538 ; 2 uses
  %i.dp = sext i32 %i.dj to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !129
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = lshr i64 %i.ds, 6
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !186
  %i.dw = and i64 %i.ds, 63
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = and i64 %i.dx, %i.dv
  %.not.i.i.i.i = icmp eq i64 %i.dy, 0
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.df
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !129
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = lshr i64 %i.eb, 6
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !186
  %i.ef = and i64 %i.eb, 63
  %i.eg = shl nuw i64 1, %i.ef
  %i.eh = and i64 %i.eg, %i.ee
  %.not.i.i.i11.i = icmp eq i64 %i.eh, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.l, %.lr.ph.i.i.i
  %i.ei = phi i1 [ %.not.i.i.i.i, %bb.l ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.ej = phi i1 [ %.not.i.i.i11.i, %bb.l ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.ei, %i.ej
  br i1 %or.cond.i, label %bb.m, label %.split36

bb.m:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.q [
    i32 1, label %bb.n
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.ek = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.p:                                             ; preds = %bb.m
  %or.cond.i.i = and i1 %i.ei, %i.ej
  %i.el = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.em = xor i1 %i.ei, %i.el
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.em
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %bb.r

bb.q:                                             ; preds = %bb.m
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i:                                      ; preds = %bb.n
  call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

.split36:                                         ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.en = load ptr, ptr %i.dg, align 8, !tbaa !764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.eo = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !768, !nonnull !140, !align !223 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !770
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !771, !nonnull !140, !align !223
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !538 ; 2 uses
  %i.et = sext i32 %i.dj to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !129
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 144
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !727 ; 2 uses
  %i.ey = sext i32 %i.ev to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !186
  store i64 %i.fa, ptr %i.e, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.df
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !129
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !186
  store i64 %i.ff, ptr %i.f, align 8, !tbaa !186
  %i.fg = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.fh, ptr %i.d, align 8, !tbaa !658
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.d, ptr %4, align 8, !tbaa !660
  store ptr %i.e, ptr %i.m, align 8, !tbaa !495
  store ptr %i.f, ptr %i.n, align 8, !tbaa !495
  %i.fi = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fj = load ptr, ptr %i.dh, align 8, !tbaa !772, !nonnull !140, !align !494
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !680, !range !139, !noundef !140
  %i.fm = trunc nuw i8 %i.fl to i1
  %i.fn = sub nsw i32 0, %i.fi
  %i.fo = select i1 %i.fm, i32 %i.fi, i32 %i.fn
  %i.fp = icmp slt i32 %i.fo, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br i1 %i.fp, label %.split36._crit_edge, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

.split36._crit_edge:                              ; preds = %.split36
  %.pre = load i32, ptr %i.di, align 4, !tbaa !129
  br label %bb.r

bb.r:                                             ; preds = %.split36._crit_edge, %bb.p
  %i.fq = phi i32 [ %.pre, %.split36._crit_edge ], [ %i.dj, %bb.p ]
  %i.fr = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !129
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !79

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %bb.p, %.split36, %bb.r, %bb.k
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.k ], [ %.019.i.i.i, %.split36 ], [ %.019.i.i.i, %bb.p ], [ 0, %bb.r ]
  %i.fs = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.p, ptr %i.fs, align 4, !tbaa !129
  %i.ft = icmp sgt i64 %i.s, 4
  br i1 %i.ft, label %bb.b, label %._crit_edge, !llvm.loop !2677

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.694, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.694, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 4 uses
  %i.k = icmp slt i64 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i64 %i.j, -2                     ; 2 uses
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
  %5 = add nsw i64 %i.j, -1                       ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.m, %bb.b ], [ %i.fr, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.z = load i32, ptr %i.y, align 4, !tbaa !129  ; 2 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !128 ; 4 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !663 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !128 ; 6 uses
  %i.aa = icmp slt i64 %.08, %i.o
  br i1 %i.aa, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread
  %.034.i = phi i64 [ %i.ct, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.ae = shl i64 %.034.i, 1                      ; 2 uses
  %i.af = add i64 %i.ae, 2                        ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
  %i.ah = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !129 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !129 ; 2 uses
  %i.al = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !766
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !767, !nonnull !140, !align !223
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !538 ; 2 uses
  %i.aq = sext i32 %i.aj to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !129
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = lshr i64 %i.at, 6
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !186
  %i.ax = and i64 %i.at, 63
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = and i64 %i.ay, %i.aw
  %.not.i.i.i.i11 = icmp eq i64 %i.az, 0
  %i.ba = sext i32 %i.ak to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !129
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 6
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !186
  %i.bh = and i64 %i.bd, 63
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bi, %i.bg
  %.not.i.i.i11.i12 = icmp eq i64 %i.bj, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13: ; preds = %bb.d, %.lr.ph.i
  %i.bk = phi i1 [ %.not.i.i.i.i11, %bb.d ], [ false, %.lr.ph.i ] ; 3 uses
  %i.bl = phi i1 [ %.not.i.i.i11.i12, %bb.d ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i14 = or i1 %i.bk, %i.bl
  br i1 %or.cond.i14, label %bb.e, label %.split

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %.sroa.0.0.copyload.i16 = load i64, ptr %.sroa.0.sroa.2.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i17 = lshr i64 %.sroa.0.0.copyload.i16, 32
  %.sroa.37.0.extract.trunc.i.i18 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i17 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i18, label %bb.i [
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.bm = and i64 %.sroa.0.0.copyload.i16, 65536
  %.not.i.i21 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i21, label %bb.g, label %.critedge.i22

bb.g:                                             ; preds = %bb.f
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.h:                                             ; preds = %bb.e
  %or.cond.i.i19 = and i1 %i.bk, %i.bl
  br i1 %or.cond.i.i19, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23

bb.i:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i22:                                    ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

.split:                                           ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i13
  %i.bn = load ptr, ptr %i.ac, align 8, !tbaa !764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bo = load ptr, ptr %.sroa.0.sroa.3.0.copyload, align 8, !tbaa !768, !nonnull !140, !align !223 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !770
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !771, !nonnull !140, !align !223
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !538 ; 2 uses
  %i.bt = sext i32 %i.aj to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !129
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !727 ; 2 uses
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !186
  store i64 %i.ca, ptr %i.b, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.cb = sext i32 %i.ak to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !129
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !186
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !186
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !658
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.a, ptr %3, align 8, !tbaa !660
  store ptr %i.b, ptr %i.p, align 8, !tbaa !495
  store ptr %i.c, ptr %i.q, align 8, !tbaa !495
  %i.cj = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ck = load ptr, ptr %i.ad, align 8, !tbaa !772, !nonnull !140, !align !494
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !680, !range !139, !noundef !140
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = sub nsw i32 0, %i.cj
  %i.cp = select i1 %i.cn, i32 %i.cj, i32 %i.co
  %.fr = freeze i32 %i.cp
  %i.cq = icmp slt i32 %.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %i.cq, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23: ; preds = %bb.h
  %i.cr = trunc i64 %.sroa.0.0.copyload.i16 to i1
  %i.cs = xor i1 %i.bk, %i.cr
  %.fr43 = freeze i1 %i.cs
  br i1 %.fr43, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread, label %bb.j

bb.j:                                             ; preds = %.split, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread: ; preds = %bb.h, %.split, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23, %bb.j
  %i.ct = phi i64 [ %i.ah, %bb.j ], [ %i.af, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23 ], [ %i.af, %.split ], [ %i.af, %bb.h ] ; 4 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !129
  %i.cw = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !129
  %i.cx = icmp slt i64 %i.ct, %i.o
  br i1 %i.cx, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !78

._crit_edge.i:                                    ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %i.ct, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread ] ; 2 uses
  %i.cy = icmp eq i64 %.0.lcssa.i, %i.t
  %or.cond = select i1 %i.s, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i
  %i.cz = load i32, ptr %i.w, align 4, !tbaa !129
  store i32 %i.cz, ptr %i.x, align 4, !tbaa !129
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.1.i = phi i64 [ %5, %bb.k ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.da = icmp sgt i64 %.1.i, %.08
  br i1 %i.da, label %.lr.ph.i.i.preheader, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8
  %i.dc = sext i32 %i.z to i64                    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.s
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.s ], [ %.1.i, %.lr.ph.i.i.preheader ] ; 4 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !129 ; 3 uses
  %i.dh = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !766
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
end_hunk_10
begin_hunk_11_@_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !727 ; 2 uses
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !186
  %i.bl = sext i32 %i.y to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !129
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !186
  %i.br = tail call i32 @llvm.ucmp.i32.i64(i64 %i.bk, i64 %i.bq) ; 2 uses
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !784, !nonnull !140, !align !494
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !680, !range !139, !noundef !140
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = sub nsw i32 0, %i.br
  %i.bx = select i1 %i.bv, i32 %i.br, i32 %i.bw
  %.fr = freeze i32 %i.bx
  %i.by = icmp slt i32 %.fr, 0
  br i1 %i.by, label %bb.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16: ; preds = %bb.g
  %i.bz = trunc i64 %.sroa.0.0.copyload.i9 to i1
  %i.ca = xor i1 %i.av, %i.bz
  %.fr38 = freeze i1 %i.ca
  br i1 %.fr38, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, label %bb.i

bb.i:                                             ; preds = %.split, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread: ; preds = %bb.g, %.split, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16, %bb.i
  %i.cb = phi i32 [ %i.y, %bb.i ], [ %i.x, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.x, %.split ], [ %i.x, %bb.g ]
  %i.cc = phi i64 [ %i.v, %bb.i ], [ %i.t, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16 ], [ %i.t, %.split ], [ %i.t, %bb.g ] ; 3 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i.i
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !129
  %i.ce = icmp slt i64 %i.cc, %i.l
  br i1 %i.ce, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !82

._crit_edge.i.i:                                  ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.cc, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit16.thread ] ; 5 uses
  %i.cf = and i64 %i.i, 4
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ch = add nsw i64 %i.j, -2
  %i.ci = ashr exact i64 %i.ch, 1
  %i.cj = icmp eq i64 %.0.lcssa.i.i, %i.ci
  br i1 %i.cj, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  %i.ck = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cl = or disjoint i64 %i.ck, 1                ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !129
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !129
  br label %.lr.ph.i.i.preheader.i

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.k, %.thread.i
  %.1.i11.i = phi i64 [ %i.cl, %.thread.i ], [ %.0.lcssa.i.i, %bb.k ]
  %i.cp = load ptr, ptr %.sroa.019.0.copyload, align 8, !tbaa !777
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cr, null
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 8
  %i.ct = sext i32 %i.f to i64                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.lr.ph.i.i.preheader.i
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.r ], [ %.1.i11.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !129 ; 3 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !778, !nonnull !140, !align !223
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !538 ; 2 uses
  %i.cz = sext i32 %i.cw to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !129
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = lshr i64 %i.dc, 6
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !186
  %i.dg = and i64 %i.dc, 63
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = and i64 %i.dh, %i.df
  %.not.i.i.i.i = icmp eq i64 %i.di, 0
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.ct
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !129
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = lshr i64 %i.dl, 6
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !186
  %i.dp = and i64 %i.dl, 63
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = and i64 %i.dq, %i.do
  %.not.i.i.i11.i = icmp eq i64 %i.dr, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.l, %.lr.ph.i.i.i
  %i.ds = phi i1 [ %.not.i.i.i.i, %bb.l ], [ false, %.lr.ph.i.i.i ] ; 3 uses
  %i.dt = phi i1 [ %.not.i.i.i11.i, %bb.l ], [ false, %.lr.ph.i.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.ds, %i.dt
  br i1 %or.cond.i, label %bb.m, label %.split36

bb.m:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.q [
    i32 1, label %bb.n
    i32 0, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.du = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.p:                                             ; preds = %bb.m
  %or.cond.i.i = and i1 %i.ds, %i.dt
  %i.dv = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dw = xor i1 %i.ds, %i.dv
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.dw
  br i1 %or.cond.demorgan, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %bb.r

bb.q:                                             ; preds = %bb.m
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i:                                      ; preds = %bb.n
  tail call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

.split36:                                         ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.dx = load ptr, ptr %.sroa.7.0.copyload, align 8, !tbaa !780, !nonnull !140, !align !223 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !782
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !783, !nonnull !140, !align !223
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !538 ; 2 uses
  %i.ec = sext i32 %i.cw to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !129
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 144
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !727 ; 2 uses
  %i.eh = sext i32 %i.ee to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !186
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ct
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !129
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !186
  %i.ep = tail call i32 @llvm.ucmp.i32.i64(i64 %i.ej, i64 %i.eo) ; 2 uses
  %i.eq = load ptr, ptr %i.cu, align 8, !tbaa !784, !nonnull !140, !align !494
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !680, !range !139, !noundef !140
  %i.et = trunc nuw i8 %i.es to i1
  %i.eu = sub nsw i32 0, %i.ep
  %i.ev = select i1 %i.et, i32 %i.ep, i32 %i.eu
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %bb.r, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit

bb.r:                                             ; preds = %bb.p, %.split36
  %i.ex = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.cw, ptr %i.ex, align 4, !tbaa !129
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, label %.lr.ph.i.i.i, !llvm.loop !83

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit: ; preds = %bb.p, %.split36, %bb.r, %bb.k
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.k ], [ %.019.i.i.i, %.split36 ], [ %.019.i.i.i, %bb.p ], [ 0, %bb.r ]
  %i.ey = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.ey, align 4, !tbaa !129
  %i.ez = icmp sgt i64 %i.i, 4
  br i1 %i.ez, label %bb.b, label %._crit_edge, !llvm.loop !2696

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_RSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !128 ; 3 uses
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !663 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !128 ; 3 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3.0.copyload, i64 8 ; 2 uses
  %i.l = and i64 %i.c, 4
  %i.m = icmp eq i64 %i.l, 0
  %i.n = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ev, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit ] ; 8 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.r = load i32, ptr %i.q, align 4, !tbaa !129  ; 2 uses
  %i.s = icmp slt i64 %.08, %i.i
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.t = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !777
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !589  ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.v, null
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread
  %.034.i = phi i64 [ %i.cg, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread ], [ %.08, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = shl i64 %.034.i, 1                       ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !129 ; 5 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !129 ; 3 uses
  br i1 %.not.i.i.i10, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !778, !nonnull !140, !align !223
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !538 ; 2 uses
  %i.af = sext i32 %i.ab to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !129
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !186
  %i.am = and i64 %i.ai, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.an, %i.al
  %.not.i.i.i.i11 = icmp eq i64 %i.ao, 0
  %i.ap = sext i32 %i.ac to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !129
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !186
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.ax, %i.av
  %.not.i.i.i11.i12 = icmp eq i64 %i.ay, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13: ; preds = %bb.d, %.lr.ph.i
  %i.az = phi i1 [ %.not.i.i.i.i11, %bb.d ], [ false, %.lr.ph.i ] ; 3 uses
  %i.ba = phi i1 [ %.not.i.i.i11.i12, %bb.d ], [ false, %.lr.ph.i ] ; 2 uses
  %or.cond.i14 = or i1 %i.az, %i.ba
  br i1 %or.cond.i14, label %bb.e, label %.split

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13
  %.sroa.0.0.copyload.i16 = load i64, ptr %.sroa.0.sroa.2.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i17 = lshr i64 %.sroa.0.0.copyload.i16, 32
  %.sroa.37.0.extract.trunc.i.i18 = trunc nuw i64 %.sroa.37.0.extract.shift.i.i17 to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i18, label %bb.i [
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.bb = and i64 %.sroa.0.0.copyload.i16, 65536
  %.not.i.i21 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i21, label %bb.g, label %.critedge.i22

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.134) #39
  unreachable

bb.h:                                             ; preds = %bb.e
  %or.cond.i.i19 = and i1 %i.az, %i.ba
  br i1 %or.cond.i.i19, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23

bb.i:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.135) #39
  unreachable

.critedge.i22:                                    ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #39
  unreachable

.split:                                           ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i13
  %i.bc = load ptr, ptr %.sroa.0.sroa.3.0.copyload, align 8, !tbaa !780, !nonnull !140, !align !223 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !782
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !783, !nonnull !140, !align !223
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !538 ; 2 uses
  %i.bh = sext i32 %i.ab to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !129
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !727 ; 2 uses
  %i.bm = sext i32 %i.bj to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !186
  %i.bp = sext i32 %i.ac to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !129
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !186
  %i.bv = tail call i32 @llvm.ucmp.i32.i64(i64 %i.bo, i64 %i.bu) ; 2 uses
  %i.bw = load ptr, ptr %i.k, align 8, !tbaa !784, !nonnull !140, !align !494
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !680, !range !139, !noundef !140
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = sub nsw i32 0, %i.bv
  %i.cb = select i1 %i.bz, i32 %i.bv, i32 %i.ca
  %.fr = freeze i32 %i.cb
  %i.cc = icmp slt i32 %.fr, 0
  br i1 %i.cc, label %bb.j, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23: ; preds = %bb.h
  %i.cd = trunc i64 %.sroa.0.0.copyload.i16 to i1
  %i.ce = xor i1 %i.az, %i.cd
  %.fr43 = freeze i1 %i.ce
  br i1 %.fr43, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread, label %bb.j

bb.j:                                             ; preds = %.split, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread: ; preds = %bb.h, %.split, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23, %bb.j
  %i.cf = phi i32 [ %i.ac, %bb.j ], [ %i.ab, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23 ], [ %i.ab, %.split ], [ %i.ab, %bb.h ]
  %i.cg = phi i64 [ %i.z, %bb.j ], [ %i.x, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23 ], [ %i.x, %.split ], [ %i.x, %bb.h ] ; 3 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %0, i64 %.034.i
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !129
  %i.ci = icmp slt i64 %i.cg, %i.i
  br i1 %i.ci, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !82

._crit_edge.i:                                    ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %i.cg, %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit23.thread ] ; 2 uses
  %i.cj = icmp eq i64 %.0.lcssa.i, %i.n
  %or.cond = select i1 %i.m, i1 %i.cj, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i
  %i.ck = load i32, ptr %i.o, align 4, !tbaa !129
  store i32 %i.ck, ptr %i.p, align 4, !tbaa !129
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.k ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.cl = icmp sgt i64 %.1.i, %.08
  br i1 %i.cl, label %.lr.ph.i.i.preheader, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.cm = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !777
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !589 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.co, null
  %i.cp = sext i32 %i.r to i64                    ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.s
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.s ], [ %.1.i, %.lr.ph.i.i.preheader ] ; 4 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %0, i64 %.0920.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !129 ; 3 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.cs = load ptr, ptr %i.j, align 8, !tbaa !778, !nonnull !140, !align !223
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !538 ; 2 uses
  %i.cu = sext i32 %i.cr to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !129
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = lshr i64 %i.cx, 6
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !186
  %i.db = and i64 %i.cx, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.dc, %i.da
  %.not.i.i.i.i = icmp eq i64 %i.dd, 0
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cp
  %i.df = load i32, ptr %i.de, align 4, !tbaa !129
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 6
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !186
  %i.dk = and i64 %i.dg, 63
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = and i64 %i.dl, %i.dj
  %.not.i.i.i11.i = icmp eq i64 %i.dm, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.m, %.lr.ph.i.i
  %i.dn = phi i1 [ %.not.i.i.i.i, %bb.m ], [ false, %.lr.ph.i.i ] ; 3 uses
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb:bb.a
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.m = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 96) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.g, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23, !prof !120

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !2965
  store ptr @.str.52, ptr %5, align 16, !tbaa !116, !noalias !2965
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %1, ptr %i.o, align 16, !tbaa !116, !alias.scope !2966, !noalias !2965
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 96, ptr %i.p, align 16, !tbaa !116, !alias.scope !2966, !noalias !2965
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.59, i64 20, i64 1100, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !2965
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.59) #39
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !105    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !116
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23: ; preds = %bb.f
  %i.w = extractvalue { i64, i1 } %i.m, 0
  %i.x = load ptr, ptr %2, align 8, !tbaa !138
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %i.w)
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  %.0 = phi i64 [ %i.l, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit ], [ %i.aa, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23 ] ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !138
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %.0, i64 0) ; 12 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.k, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit, !prof !120

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_EbE18veloxCheckFailArgs) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit: ; preds = %bb.j
  %i.af = add i64 %.0, -96
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %2, ptr %i.ah, align 8, !tbaa !474
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !465
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %i.af, ptr %i.ak, align 8, !tbaa !468
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  store i32 0, ptr %i.al, align 8, !tbaa !475
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  store i8 1, ptr %i.am, align 4, !tbaa !464
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 -1, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %i.ae, align 8, !tbaa !138
  store i64 %1, ptr %i.aj, align 8, !tbaa !469
  store ptr %i.ae, ptr %0, align 8, !tbaa !459
  %i.ao = atomicrmw add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  invoke void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 noundef 0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  br label %common.resume

bb.m:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.424", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !468  ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.e, !prof !120

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !2971
  store i64 %2, ptr %4, align 16, !tbaa !116, !alias.scope !2972, !noalias !2971
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !116, !alias.scope !2972, !noalias !2971
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.44, i64 11, i64 68, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2971
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.44) #39
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !105    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !116
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %.not8 = icmp ugt i64 %2, %1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !139
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPccEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !464
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit, label %bb.g, !prof !225

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #39
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !465
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  %gepdiff = sub nuw nsw i64 %2, %1
  %i.s = load i8, ptr %3, align 1, !tbaa !116
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 %i.s, i64 %gepdiff, i1 false)
  br label %_ZSt4fillIPccEvT_S1_RKT0_.exit

_ZSt4fillIPccEvT_S1_RKT0_.exit:                   ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.4.i.i = alloca { ptr, i64 }, align 8     ; 4 uses
  %3 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %4 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %5 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %6 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %7 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %8 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %9 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %.sroa.4.i.i.i = alloca { ptr, i64 }, align 8   ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEET_SM_SM_T0_.exit
  %i.g = icmp eq i64 %i.bu, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50, !llvm.loop !2973

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa46 = phi i64 [ %i.c, %.lr.ph ], [ %i.cn, %bb.b ]
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.lcssa46, 24             ; 3 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1                     ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.k
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_SN_T1_T2_.exit.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_SN_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr inbounds [24 x i8], ptr %0, i64 %.08.i.i ; 2 uses
  %.sroa.016.0.copyload.i.i = load ptr, ptr %i.q, align 8, !tbaa !508 ; 2 uses
  %.sroa.417.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.417.0..sroa.0.0..sroa_idx.i.i, i64 16, i1 false)
  %i.r = icmp slt i64 %.08.i.i, %i.l
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.08.i.i, %bb.c ] ; 2 uses
  %i.s = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [24 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [24 x i8], ptr %0, i64 %i.v
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !829
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !829
  %i.z = icmp ult ptr %i.x, %i.y
  %spec.select.i.i.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !tbaa.struct !830
  %i.ac = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !2974

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.08.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !830
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ae = icmp sgt i64 %.1.i.i.i, %.08.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i18, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_SN_T1_T2_.exit.i.i

.lr.ph.i.i.i.i18:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !829
  %i.ah = icmp ult ptr %i.ag, %.sroa.016.0.copyload.i.i
  br i1 %i.ah, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_SN_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i18
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !830
  %i.aj = icmp sgt i64 %.0919.i.i.i.i, %.08.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i18, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_SN_T1_T2_.exit.i.i, !llvm.loop !2975

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_SN_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i18, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i18 ]
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  store ptr %.sroa.016.0.copyload.i.i, ptr %i.ak, align 8, !tbaa !508
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  %.not.i.i17 = icmp eq i64 %.08.i.i, 0
  %i.al = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i17, label %.lr.ph.i.i, label %bb.c, !llvm.loop !2976

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_SN_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.am, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_RT0_.exit.i.i ], [ %storemerge26.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_SN_T1_T2_.exit.i.i ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24 ; 4 uses
  %.sroa.08.0.copyload.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !508 ; 2 uses
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !830
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.a                     ; 3 uses
  %i.ap = sdiv exact i64 %i.ao, 24                ; 3 uses
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = sdiv i64 %i.aq, 2
  %i.as = icmp sgt i64 %i.ao, 48
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.at = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.au = add i64 %i.at, 2                        ; 2 uses
  %i.av = getelementptr inbounds [24 x i8], ptr %0, i64 %i.au
  %i.aw = or disjoint i64 %i.at, 1                ; 2 uses
  %i.ax = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aw
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !829
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !829
  %i.ba = icmp ult ptr %i.ay, %i.az
  %spec.select.i.i.i.i = select i1 %i.ba, i64 %i.aw, i64 %i.au ; 4 uses
  %i.bb = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bc = getelementptr inbounds [24 x i8], ptr %0, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !830
  %i.bd = icmp slt i64 %spec.select.i.i.i.i, %i.ar
  br i1 %i.bd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2974

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.be = and i64 %i.ap, 1
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bg = add nsw i64 %i.ap, -2
  %i.bh = ashr exact i64 %i.bg, 1
  %i.bi = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bh
  br i1 %i.bi, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bj = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bk = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bk
  %i.bm = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !tbaa.struct !830
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bk, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i1011.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i1011.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0919.i.i1011.i.i.i ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !829
  %i.bp = icmp ult ptr %i.bo, %.sroa.08.0.copyload.i.i.i
  br i1 %i.bp, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bq = getelementptr inbounds [24 x i8], ptr %0, i64 %.018.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !tbaa.struct !830
  %.not12.i.i.i = icmp eq i64 %.0919.i.i1011.i.i.i, 0
  br i1 %.not12.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2975

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.br = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store ptr %.sroa.08.0.copyload.i.i.i, ptr %i.br, align 8, !tbaa !508
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.bs = icmp sgt i64 %i.ao, 24
  br i1 %i.bs, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_T0_.exit, !llvm.loop !2977

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2649 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02748 = phi i64 [ %i.bu, %bb.b ], [ %2, %.lr.ph ]
  %i.bt = phi i64 [ %i.cn, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bu = add nsw i64 %.02748, -1                 ; 3 uses
  %i.bv = udiv i64 %i.bt, 48
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bv ; 5 uses
  %i.bx = getelementptr inbounds i8, ptr %storemerge2649, i64 -24 ; 5 uses
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !829 ; 3 uses
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !829 ; 3 uses
  %i.ca = icmp ult ptr %i.by, %i.bz
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !829 ; 4 uses
  br i1 %i.ca, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph50
  %i.cc = icmp ult ptr %i.bz, %i.cb
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !830
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !tbaa.struct !830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !830
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cd = icmp ult ptr %i.by, %i.cb
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !830
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !tbaa.struct !830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !830
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !830
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !830
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph50
  %i.ce = icmp ult ptr %i.by, %i.cb
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !830
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !830
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cf = icmp ult ptr %i.bz, %i.cb
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !830
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !tbaa.struct !830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !830
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !830
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !tbaa.struct !830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !830
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader, %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cj, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2649, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !829   ; 2 uses
end_hunk_12
