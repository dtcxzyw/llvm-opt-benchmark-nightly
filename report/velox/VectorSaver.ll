inline.NumInlined: 32602
inline.NumDeleted: 6515
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 85
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_T0_T1_":bb.a
  %i.be = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bd
  br i1 %i.be, label %.thread.i.i27.i, label %bb.h

.thread.i.i27.i:                                  ; preds = %bb.g
  %i.bf = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bg = or disjoint i64 %i.bf, 1                ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %.fr27, i64 %i.bg
  %i.bi = getelementptr inbounds [24 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !tbaa.struct !98
  br label %.lr.ph.i.i.i.i18.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_RT0_.exit.i23.i", label %.lr.ph.i.i.i.i18.i.preheader

.lr.ph.i.i.i.i18.i.preheader:                     ; preds = %bb.h, %.thread.i.i27.i
  %.06.i.i.i.i19.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bg, %.thread.i.i27.i ]
  br label %.lr.ph.i.i.i.i18.i

.lr.ph.i.i.i.i18.i:                               ; preds = %.lr.ph.i.i.i.i18.i.preheader, %bb.i
  %.06.i.i.i.i19.i = phi i64 [ %.097.i.i78.i.i21.i, %bb.i ], [ %.06.i.i.i.i19.i.ph, %.lr.ph.i.i.i.i18.i.preheader ] ; 3 uses
  %.097.in.i.i.i.i20.i = add nsw i64 %.06.i.i.i.i19.i, -1
  %.097.i.i78.i.i21.i = lshr i64 %.097.in.i.i.i.i20.i, 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %.fr27, i64 %.097.i.i78.i.i21.i ; 2 uses
  %.val2.i.i.i.i.i22.i = load ptr, ptr %i.bj, align 8, !tbaa !96
  %i.bk = icmp ult ptr %.val2.i.i.i.i.i22.i, %.sroa.05.0.copyload.i.i11.i
  br i1 %i.bk, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_RT0_.exit.i23.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i18.i
  %i.bl = getelementptr inbounds [24 x i8], ptr %.fr27, i64 %.06.i.i.i.i19.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !tbaa.struct !98
  %.not9.i.i26.i = icmp eq i64 %.097.i.i78.i.i21.i, 0
  br i1 %.not9.i.i26.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_RT0_.exit.i23.i", label %.lr.ph.i.i.i.i18.i, !llvm.loop !1992

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_RT0_.exit.i23.i": ; preds = %bb.i, %.lr.ph.i.i.i.i18.i, %bb.h
  %.0.lcssa.i.i.i.i24.i = phi i64 [ 0, %bb.h ], [ %.06.i.i.i.i19.i, %.lr.ph.i.i.i.i18.i ], [ 0, %bb.i ]
  %i.bm = getelementptr inbounds [24 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i24.i ; 2 uses
  store ptr %.sroa.05.0.copyload.i.i11.i, ptr %i.bm, align 8, !tbaa !99
  %.sroa.5.0..sroa_idx.i.i.i25.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i25.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i9.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i9.i)
  %i.bn = icmp sgt i64 %i.am, 24
  br i1 %i.bn, label %.lr.ph.i10.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_T0_.exit", !llvm.loop !1994

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2442 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02541 = phi i64 [ %i.bo, %bb.b ], [ %2, %.lr.ph ]
  %.fr50.i2640 = phi i64 [ %i.cb, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bo = add nsw i64 %.02541, -1                 ; 3 uses
  %i.bp = udiv i64 %.fr50.i2640, 48
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %.fr27, i64 %i.bp ; 5 uses
  %i.br = getelementptr inbounds i8, ptr %storemerge2442, i64 -24 ; 5 uses
  %.val2.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !96 ; 3 uses
  %.val3.i.i.i = load ptr, ptr %i.bq, align 8, !tbaa !96 ; 3 uses
  %i.bs = icmp ult ptr %.val2.i.i.i, %.val3.i.i.i
  %.val3.i27.i.i = load ptr, ptr %i.br, align 8, !tbaa !96 ; 4 uses
  br i1 %i.bs, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph43
  %i.bt = icmp ult ptr %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %.fr27, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.fr27, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.bu = icmp ult ptr %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.fr27, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.fr27, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.fr27, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.fr27, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph43
  %i.bv = icmp ult ptr %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.fr27, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.fr27, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.bw = icmp ult ptr %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.fr27, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.fr27, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.fr27, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.fr27, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader", %bb.v
  %.sroa.014.0.i.i = phi ptr [ %i.by, %bb.v ], [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2442, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i.preheader" ]
  %.val3.i.i18.i = load ptr, ptr %.fr27, align 8, !tbaa !96 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i" ], [ %i.by, %bb.t ] ; 9 uses
  %.val2.i.i19.i = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !96
  %i.bx = icmp ult ptr %.val2.i.i19.i, %.val3.i.i18.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 24 ; 2 uses
  br i1 %i.bx, label %bb.t, label %.preheader.i.i, !llvm.loop !1995

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %.val3.i12.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !96
  %i.bz = icmp ult ptr %.val3.i.i18.i, %.val3.i12.i.i
  br i1 %i.bz, label %.preheader.i.i, label %bb.u, !llvm.loop !1996

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEET_SQ_SQ_T0_.exit"

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.1.i.i, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i", !llvm.loop !1997

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEET_SQ_SQ_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2442, i64 noundef %i.bo)
  %i.ca = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.cb = sub i64 %i.ca, %i.a                     ; 3 uses
  %i.cc = icmp sgt i64 %i.cb, 384
  br i1 %i.cc, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_T0_.exit", !llvm.loop !1990

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEET_SQ_SQ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_SQ_RT0_.exit.i23.i", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorImEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOmRKNS0_17SimpleVectorStatsImEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !21
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !82
  %not. = xor i1 %3, true
  %.sroa.031.0.insert.ext = zext i1 %not. to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.031.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorImEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsImEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !82    ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !270

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !42  ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !45
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorImEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i64, ptr %5, align 8, !tbaa !95
  store i64 %i.at, ptr %i.as, align 8, !tbaa !1264
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 %i.l, ptr %i.au, align 8, !tbaa !1998
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.av, align 1, !tbaa !1999
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.aw, align 8, !tbaa !2000
  invoke void @_ZN8facebook5velox14ConstantVectorImE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !251
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 8, !tbaa !1998, !range !25, !noundef !26
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !27

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorImEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOmRKNS0_17SimpleVectorStatsImEESt8optionalIiESG_E18veloxCheckFailArgs) #41
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !2001
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !132, !noalias !2004
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !2001
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !132
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !45
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox14ConstantVectorImEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsImEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.ag

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i32 2, ptr %i.c, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 2, ptr %i.d, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !2116
  store ptr %i.c, ptr %6, align 16, !tbaa !23, !noalias !2116
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.cf, align 8, !tbaa !23, !noalias !2116
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %i.cg, align 16, !tbaa !23, !noalias !2116
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.ch, align 8, !tbaa !23, !noalias !2116
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.163, i64 57, i64 255, ptr nonnull %6)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !2116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorImEC1EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsImEEE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.163) #41
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.ac:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %11, align 8, !tbaa !22   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.ac
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !23
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.ci, %bb.ab ], [ %i.cj, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.ag

bb.ad:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  invoke void @_ZN8facebook5velox14ConstantVectorImE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  ret void

bb.af:                                            ; preds = %bb.ad
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.cp, %bb.af ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bo) #31
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bc) #31
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.v
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ag ], [ %i.bx, %bb.v ]
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorImE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorImE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.167) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !2025
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 8, !tbaa !1998
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %not. to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.010.0.insert.ext, 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorImEE, i64 0) #31 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !2025
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 8, !tbaa !1998
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !2025
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef i64 %i.br(ptr noundef nonnull align 8 dereferenceable(136) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !1264
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !449
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !42  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !42
  %.not.i.i.i.i4 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bv, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !45
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %bb.t ], [ %i.ci, %bb.u ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorImE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.ck, align 1, !tbaa !1999
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.79", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !877
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN8facebook5velox14VectorEncoding15mapSimpleToNameB5cxx11ERKNS1_6SimpleE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.a = load ptr, ptr %4, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16
  store ptr %i.a, ptr %3, align 16, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !23
  invoke void @_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, ptr nonnull @.str.164, i64 2, i64 13, ptr nonnull %3, ptr null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.e = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNK3fmt3v119formatterIN8facebook5velox14VectorEncoding6SimpleEcvE6formatINS0_7contextEEEDaRKS5_RT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNK3fmt3v119formatterIN8facebook5velox14VectorEncoding6SimpleEcvE6formatINS0_7contextEEEDaRKS5_RT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !23
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %i.j

_ZNK3fmt3v119formatterIN8facebook5velox14VectorEncoding6SimpleEcvE6formatINS0_7contextEEEDaRKS5_RT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

declare void @_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorImEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEmRKNS1_17SimpleVectorStatsImEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !258
  %i.e = load i32, ptr %2, align 4, !tbaa !21
  %i.f = load i8, ptr %3, align 1, !tbaa !138, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12SimpleVectorINS0_12UnknownValueEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !270

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorINS0_12UnknownValueEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i16 %9, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.aj, align 8, !tbaa !2210
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load i32, ptr %6, align 1
  store i32 %i.al, ptr %i.ak, align 8
  ret void

bb.k:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #31
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_12UnknownValueEE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_12UnknownValueEE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.167) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !2140
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !2125
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %not. to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.010.0.insert.ext, 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_12UnknownValueEEE, i64 0) #31 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !2140
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 1, !tbaa !2125
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !2140
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(108) %i.bh, i32 noundef %i.bo)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !449
  %i.bs = load ptr, ptr %i.j, align 8, !tbaa !42  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !42
  %.not.i.i.i.i4 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bt, align 8, !tbaa !43
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !45
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #31, !inline_history !2007
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.t ], [ %i.cg, %bb.u ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ch, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorINS0_12UnknownValueEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.ci, align 2, !tbaa !2298
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_12UnknownValueEED0Ev(ptr noundef nonnull align 8 dereferenceable(108) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #43
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_12UnknownValueEE6resizeEib(ptr noundef nonnull align 8 dereferenceable(108) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorINS0_12UnknownValueEE6resizeEibE18veloxCheckFailArgs, ptr noundef nonnull @.str.30) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox12SimpleVectorINS0_12UnknownValueEE8toStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.292", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not = icmp slt i32 %2, %i.b
  br i1 %.not, label %bb.e, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !2305
  store i32 %2, ptr %3, align 16, !tbaa !23, !alias.scope !2308, !noalias !2305
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.b, ptr %i.c, align 16, !tbaa !23, !alias.scope !2308, !noalias !2305
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.122, i64 52, i64 17, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !2305
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox12SimpleVectorINS0_12UnknownValueEE8toStringB5cxx11EiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.122) #41
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.j = load ptr, ptr %1, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.123, i64 noundef 4)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.q = load ptr, ptr %1, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !31, !alias.scope !2311
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !16, !alias.scope !2311
  store i8 0, ptr %i.u, align 8, !tbaa !23, !alias.scope !2311
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.u, i64 noundef 0)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.j
  %i.x = load ptr, ptr %6, align 8, !tbaa !22     ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox14ConstantVectorINS0_12UnknownValueEE15makeNullsBufferEv:bb.a
  br i1 %.not.i1, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !271
  %.not.i.i2 = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i2, i64 8, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %..i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !270

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 1)
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !647
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !282
  %i.bt = and i8 %i.bs, 2
  %.not.i3 = icmp eq i8 %i.bt, 0
  br i1 %.not.i3, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.l, !prof !27

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #41
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store i64 0, ptr %i.bp, align 8, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_12UnknownValueEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEES3_RKNS1_17SimpleVectorStatsIS3_EERKSt8optionalIiESV_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_12UnknownValueEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !258
  %i.e = load i32, ptr %2, align 4, !tbaa !21
  %i.f = load i8, ptr %3, align 1, !tbaa !138, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_12UnknownValueEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !2334

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !2335
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !2335
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !2334
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31, !inline_history !2334
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_12UnknownValueEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !21
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !82
  %not. = xor i1 %3, true
  %.sroa.030.0.insert.ext = zext i1 %not. to i64
  %.sroa.030.0.insert.insert = or disjoint i64 %.sroa.030.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.027.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorINS0_12UnknownValueEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.030.0.insert.insert, i64 %.sroa.027.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !82    ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !270

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !42  ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i17, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !45
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i18 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorINS0_12UnknownValueEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  store i8 %i.l, ptr %i.as, align 1, !tbaa !2125
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.at, align 2, !tbaa !2298
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.au, align 8, !tbaa !2000
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_12UnknownValueEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.av = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = load ptr, ptr %4, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !251
  %i.bd = icmp eq i8 %i.bc, 32
  br i1 %i.bd, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.be = load i8, ptr %i.as, align 1, !tbaa !2125, !range !25, !noundef !26
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.w, label %bb.r, !prof !27

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_12UnknownValueEEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_E18veloxCheckFailArgs) #41
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !2336
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bk = load <2 x ptr>, ptr %9, align 16, !tbaa !132, !noalias !2339
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !2336
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.bk, ptr %i.aq, align 8, !tbaa !132
  %.not.i.i.i.i19 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i19, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bm, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !45
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #31, !inline_history !2007
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

end_hunk_3
begin_hunk_4_@_ZN8facebook5velox12SimpleVectorISt10shared_ptrIvEEC2EPNS0_6memory10MemoryPoolES2_IKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS3_EESt8optionalIiESM_SL_IbESM_SM_:bb.a
  br i1 %i.an, label %bb.k, label %_ZNSt8optionalISt10shared_ptrIvEEC2ERKS2_.exit.i

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %6, align 8, !tbaa !132
  store <2 x ptr> %i.ar, ptr %i.ao, align 8, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseISt10shared_ptrIvEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i32, ptr %i.as, align 4, !tbaa !21
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.as, align 4, !tbaa !21
  br label %_ZNSt22_Optional_payload_baseISt10shared_ptrIvEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aw = atomicrmw volatile add ptr %i.as, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt22_Optional_payload_baseISt10shared_ptrIvEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseISt10shared_ptrIvEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.k
  store i8 1, ptr %i.al, align 8, !tbaa !2405
  br label %_ZNSt8optionalISt10shared_ptrIvEEC2ERKS2_.exit.i

_ZNSt8optionalISt10shared_ptrIvEEC2ERKS2_.exit.i: ; preds = %_ZNSt22_Optional_payload_baseISt10shared_ptrIvEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !2405
  %i.az = load i8, ptr %i.ax, align 8, !tbaa !2405, !range !25, !noundef !26
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.o, label %_ZN8facebook5velox17SimpleVectorStatsISt10shared_ptrIvEEC2ERKS4_.exit

bb.o:                                             ; preds = %_ZNSt8optionalISt10shared_ptrIvEEC2ERKS2_.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 2 uses
  %i.bf = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !132
  store <2 x ptr> %i.bf, ptr %i.bb, align 8, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i.i4.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i4.i, label %_ZNSt22_Optional_payload_baseISt10shared_ptrIvEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i6.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i5.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i5.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !21
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !21
  br label %_ZNSt22_Optional_payload_baseISt10shared_ptrIvEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i6.i

bb.r:                                             ; preds = %bb.p
  %i.bk = atomicrmw volatile add ptr %i.bg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt22_Optional_payload_baseISt10shared_ptrIvEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i6.i

_ZNSt22_Optional_payload_baseISt10shared_ptrIvEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i6.i: ; preds = %bb.r, %bb.q, %bb.o
  store i8 1, ptr %i.ay, align 8, !tbaa !2405
  br label %_ZN8facebook5velox17SimpleVectorStatsISt10shared_ptrIvEEC2ERKS4_.exit

_ZN8facebook5velox17SimpleVectorStatsISt10shared_ptrIvEEC2ERKS4_.exit: ; preds = %_ZNSt22_Optional_payload_baseISt10shared_ptrIvEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i6.i, %_ZNSt8optionalISt10shared_ptrIvEEC2ERKS2_.exit.i
  ret void

bb.s:                                             ; preds = %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #31
  resume { ptr, i32 } %i.bl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.af

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorISt10shared_ptrIvEE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.167) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !2365
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 8, !tbaa !2348
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.020.0.insert.ext = zext i1 %not. to i64
  %.sroa.020.0.insert.insert = or disjoint i64 %.sroa.020.0.insert.ext, 4294967296
  store i64 %.sroa.020.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.017.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.017.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorISt10shared_ptrIvEEE, i64 0) #31 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !2365
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 8, !tbaa !2348
  br i1 %i.bm, label %_ZNSt10shared_ptrIvEaSERKS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !2365
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.br(ptr noundef nonnull align 8 dereferenceable(152) %i.bh, i32 noundef %i.bo) ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !2361
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !2361
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !42 ; 4 uses
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i.i.i4, label %_ZNSt10shared_ptrIvEaSERKS0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not7.i.i.i5 = icmp eq ptr %i.bx, null
  br i1 %.not7.i.i.i5, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i6 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i6, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !21
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7

bb.s:                                             ; preds = %bb.q
  %i.cd = atomicrmw volatile add ptr %i.bz, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i13 = load ptr, ptr %i.bv, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7: ; preds = %bb.s, %bb.r, %bb.p
  %i.ce = phi ptr [ %i.by, %bb.p ], [ %i.by, %bb.r ], [ %.pr.pre.i.i.i13, %bb.s ] ; 8 uses
  %.not8.i.i.i8 = icmp eq ptr %i.ce, null
  br i1 %.not8.i.i.i8, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.cf, align 8, !tbaa !43
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !45
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #31, !inline_history !2526
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !14
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #31, !inline_history !2526
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12

bb.v:                                             ; preds = %bb.t
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i9 = icmp eq i8 %i.cq, 0
  br i1 %.not.i9.i.i.i9, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10

bb.x:                                             ; preds = %bb.v
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i11 = phi i32 [ %i.ci, %bb.w ], [ %i.cs, %bb.x ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i11, 1
  br i1 %i.ct, label %bb.y, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12, !prof !47

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i10, %bb.u, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i7
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !42
  br label %_ZNSt10shared_ptrIvEaSERKS0_.exit

_ZNSt10shared_ptrIvEaSERKS0_.exit:                ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i12, %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !449
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !42  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !42
  %.not.i.i.i.i14 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i14, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt10shared_ptrIvEaSERKS0_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cv, align 8, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !45
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !14
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #31, !inline_history !2007
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !14
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i = phi i32 [ %i.cy, %bb.ac ], [ %i.di, %bb.ad ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dj, label %bb.ae, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIvEaSERKS0_.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ae, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 1, ptr %i.dk, align 1, !tbaa !2527
  br label %bb.af

bb.af:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.197", align 16 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i8, ptr %i.a, align 8, !tbaa !2348, !range !25, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !658  ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14, !noalias !2528
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEE15makeNullsBufferEv:bb.a
  br i1 %.not.i1, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !271
  %.not.i.i2 = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i2, i64 8, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %..i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !270

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 1)
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !647
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !282
  %i.bt = and i8 %i.bs, 2
  %.not.i3 = icmp eq i8 %i.bt, 0
  br i1 %.not.i3, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.l, !prof !27

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #41
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store i64 0, ptr %i.bp, align 8, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorISt10shared_ptrIvEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKS3_IKNS1_4TypeEES4_RKNS1_17SimpleVectorStatsIS4_EERKSt8optionalIiESV_EEES6_DpOT_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorISt10shared_ptrIvEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !258
  %i.e = load i32, ptr %2, align 4, !tbaa !21
  %i.f = load i8, ptr %3, align 1, !tbaa !138, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEEC2EPNS0_6memory10MemoryPoolEibS2_IKNS0_4TypeEEOS3_RKNS0_17SimpleVectorStatsIS3_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !2537

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !2538
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !2538
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !2537
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31, !inline_history !2537
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEEC2EPNS0_6memory10MemoryPoolEibS2_IKNS0_4TypeEEOS3_RKNS0_17SimpleVectorStatsIS3_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !21
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !82
  %not. = xor i1 %3, true
  %.sroa.031.0.insert.ext = zext i1 %not. to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.031.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorISt10shared_ptrIvEEC2EPNS0_6memory10MemoryPoolES2_IKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS3_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !82    ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !270

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !42  ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !45
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorISt10shared_ptrIvEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.at, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = load <2 x ptr>, ptr %5, align 8, !tbaa !132
  store ptr null, ptr %i.au, align 8, !tbaa !42
  store <2 x ptr> %i.av, ptr %i.as, align 8, !tbaa !132
  store ptr null, ptr %5, align 8, !tbaa !2361
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i8 %i.l, ptr %i.aw, align 8, !tbaa !2348
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 1, ptr %i.ax, align 1, !tbaa !2527
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.ay, align 8, !tbaa !2000
  invoke void @_ZN8facebook5velox14ConstantVectorISt10shared_ptrIvEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.az = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %4, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !251
  %i.bh = icmp eq i8 %i.bg, 32
  br i1 %i.bh, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bi = load i8, ptr %i.aw, align 8, !tbaa !2348, !range !25, !noundef !26
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.w, label %bb.r, !prof !27

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorISt10shared_ptrIvEEC1EPNS0_6memory10MemoryPoolEibS2_IKNS0_4TypeEEOS3_RKNS0_17SimpleVectorStatsIS3_EESt8optionalIiESH_E18veloxCheckFailArgs) #41
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !2539
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bo = load <2 x ptr>, ptr %9, align 16, !tbaa !132, !noalias !2542
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !2539
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.bo, ptr %i.aq, align 8, !tbaa !132
  %.not.i.i.i.i20 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bq, align 8, !tbaa !43
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !45
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #31, !inline_history !2007
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox12SimpleVectorIbEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIbEESt8optionalIiESL_SK_IbESL_SL_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !270

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorIbEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i16 %9, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.aj, align 8, !tbaa !2617
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load i32, ptr %6, align 1
  store i32 %i.al, ptr %i.ak, align 8
  ret void

bb.k:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #31
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIbE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIbE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.167) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !2555
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !2550
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %not. to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.010.0.insert.ext, 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIbEE, i64 0) #31 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !2555
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 1, !tbaa !2550
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !2555
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(108) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bu = zext i1 %i.bs to i8
  store i8 %i.bu, ptr %i.bt, align 8, !tbaa !134
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !449
  %i.bv = load ptr, ptr %i.j, align 8, !tbaa !42  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !42
  %.not.i.i.i.i4 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bw, align 8, !tbaa !43
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !45
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #31, !inline_history !2007
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.t ], [ %i.cj, %bb.u ]
  %i.ck = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ck, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIbE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.cl, align 2, !tbaa !2704
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIbED0Ev(ptr noundef nonnull align 8 dereferenceable(108) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #43
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIbE6resizeEib(ptr noundef nonnull align 8 dereferenceable(108) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIbE6resizeEibE18veloxCheckFailArgs, ptr noundef nonnull @.str.30) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox12SimpleVectorIbE8toStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.292", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not = icmp slt i32 %2, %i.b
  br i1 %.not, label %bb.e, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !2711
  store i32 %2, ptr %3, align 16, !tbaa !23, !alias.scope !2714, !noalias !2711
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.b, ptr %i.c, align 16, !tbaa !23, !alias.scope !2714, !noalias !2711
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.122, i64 52, i64 17, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !2711
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox12SimpleVectorIbE8toStringB5cxx11EiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.122) #41
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.j = load ptr, ptr %1, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.123, i64 noundef 4)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.q = load ptr, ptr %1, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
          to label %bb.j unwind label %bb.k       ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = select i1 %i.t, ptr @.str.187, ptr @.str.29
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !31, !alias.scope !2717
  %i.x = select i1 %i.t, i64 4, i64 5             ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.w, ptr noundef nonnull align 1 dereferenceable(4) %i.v, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !16, !alias.scope !2717
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox14ConstantVectorIbE15makeNullsBufferEv:bb.a
  br i1 %.not.i1, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !271
  %.not.i.i2 = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i2, i64 8, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %..i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !270

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 1)
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !647
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !282
  %i.bt = and i8 %i.bs, 2
  %.not.i3 = icmp eq i8 %i.bt, 0
  br i1 %.not.i3, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.l, !prof !27

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #41
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store i64 0, ptr %i.bp, align 8, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEbRKNS1_17SimpleVectorStatsIbEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIbEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !258
  %i.e = load i32, ptr %2, align 4, !tbaa !21
  %i.f = load i8, ptr %3, align 1, !tbaa !138, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIbEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEObRKNS0_17SimpleVectorStatsIbEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !2736

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !2737
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !2737
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !2736
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31, !inline_history !2736
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIbEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEObRKNS0_17SimpleVectorStatsIbEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !21
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !82
  %not. = xor i1 %3, true
  %.sroa.031.0.insert.ext = zext i1 %not. to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.031.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIbEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIbEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !82    ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !270

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !42  ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !45
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIbEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i8, ptr %5, align 1, !tbaa !138, !range !25, !noundef !26
  store i8 %i.at, ptr %i.as, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  store i8 %i.l, ptr %i.au, align 1, !tbaa !2550
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.av, align 2, !tbaa !2704
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.aw, align 8, !tbaa !2000
  invoke void @_ZN8facebook5velox14ConstantVectorIbE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !251
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 1, !tbaa !2550, !range !25, !noundef !26
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !27

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIbEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEObRKNS0_17SimpleVectorStatsIbEESt8optionalIiESG_E18veloxCheckFailArgs) #41
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !2738
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !132, !noalias !2741
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !2738
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !132
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !45
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox12SimpleVectorIiEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIiEESt8optionalIiESL_SK_IbESL_SL_:bb.a
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !270

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorIiEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i16 %9, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 4, ptr %i.aj, align 8, !tbaa !2809
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false)
  ret void

bb.k:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #31
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIiE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIiE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.167) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !2753
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 4, !tbaa !2748
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %not. to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.010.0.insert.ext, 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIiEE, i64 0) #31 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !2753
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 4, !tbaa !2748
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !2753
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef i32 %i.br(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !139
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !449
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !42  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !42
  %.not.i.i.i.i4 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bv, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !45
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %bb.t ], [ %i.ci, %bb.u ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIiE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 1, ptr %i.ck, align 1, !tbaa !2896
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIiED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #43
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIiE6resizeEib(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIiE6resizeEibE18veloxCheckFailArgs, ptr noundef nonnull @.str.30) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox12SimpleVectorIiE8toStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.292", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not = icmp slt i32 %2, %i.b
  br i1 %.not, label %bb.e, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !2903
  store i32 %2, ptr %3, align 16, !tbaa !23, !alias.scope !2906, !noalias !2903
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.b, ptr %i.c, align 16, !tbaa !23, !alias.scope !2906, !noalias !2903
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.122, i64 52, i64 17, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !2903
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox12SimpleVectorIiE8toStringB5cxx11EiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.122) #41
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.j = load ptr, ptr %1, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.123, i64 noundef 4)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.s = load ptr, ptr %1, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 384
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %2)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK8facebook5velox4Type13valueToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(18) %i.r, i32 noundef %i.v)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %6, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox14ConstantVectorIiE15makeNullsBufferEv:bb.a
  br i1 %.not.i1, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !271
  %.not.i.i2 = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i2, i64 8, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %..i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !270

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 1)
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !647
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !282
  %i.bt = and i8 %i.bs, 2
  %.not.i3 = icmp eq i8 %i.bt, 0
  br i1 %.not.i3, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.l, !prof !27

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #41
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store i64 0, ptr %i.bp, align 8, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIiEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEiRKNS1_17SimpleVectorStatsIiEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !258
  %i.e = load i32, ptr %2, align 4, !tbaa !21
  %i.f = load i8, ptr %3, align 1, !tbaa !138, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIiEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOiRKNS0_17SimpleVectorStatsIiEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !2947

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !2948
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !2948
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !2947
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31, !inline_history !2947
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIiEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOiRKNS0_17SimpleVectorStatsIiEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !21
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !82
  %not. = xor i1 %3, true
  %.sroa.031.0.insert.ext = zext i1 %not. to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.031.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIiEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIiEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !82    ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !270

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !42  ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !45
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIiEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i32, ptr %5, align 4, !tbaa !21
  store i32 %i.at, ptr %i.as, align 8, !tbaa !139
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  store i8 %i.l, ptr %i.au, align 4, !tbaa !2748
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 1, ptr %i.av, align 1, !tbaa !2896
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.aw, align 8, !tbaa !2000
  invoke void @_ZN8facebook5velox14ConstantVectorIiE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !251
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 4, !tbaa !2748, !range !25, !noundef !26
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !27

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIiEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOiRKNS0_17SimpleVectorStatsIiEESt8optionalIiESG_E18veloxCheckFailArgs) #41
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !2949
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !132, !noalias !2952
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !2949
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !132
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !45
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox12SimpleVectorIaEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIaEESt8optionalIiESL_SK_IbESL_SL_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !270

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorIaEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i16 %9, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.aj, align 8, !tbaa !3013
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load i32, ptr %6, align 1
  store i32 %i.al, ptr %i.ak, align 8
  ret void

bb.k:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #31
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIaE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIaE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.167) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !2964
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !2959
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %not. to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.010.0.insert.ext, 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIaEE, i64 0) #31 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !2964
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 1, !tbaa !2959
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !2964
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef signext i8 %i.br(ptr noundef nonnull align 8 dereferenceable(108) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.bs, ptr %i.bt, align 8, !tbaa !143
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !449
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !42  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !42
  %.not.i.i.i.i4 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bv, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !45
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %bb.t ], [ %i.ci, %bb.u ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIaE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.ck, align 2, !tbaa !3100
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIaED0Ev(ptr noundef nonnull align 8 dereferenceable(108) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #43
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIaE6resizeEib(ptr noundef nonnull align 8 dereferenceable(108) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIaE6resizeEibE18veloxCheckFailArgs, ptr noundef nonnull @.str.30) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox12SimpleVectorIaE8toStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.292", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not = icmp slt i32 %2, %i.b
  br i1 %.not, label %bb.e, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !3107
  store i32 %2, ptr %3, align 16, !tbaa !23, !alias.scope !3110, !noalias !3107
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.b, ptr %i.c, align 16, !tbaa !23, !alias.scope !3110, !noalias !3107
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.122, i64 52, i64 17, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !3107
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox12SimpleVectorIaE8toStringB5cxx11EiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.122) #41
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.j = load ptr, ptr %1, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.123, i64 noundef 4)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.q = load ptr, ptr %1, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef signext i8 %i.s(ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !31, !alias.scope !3113
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.v, align 8, !tbaa !16, !alias.scope !3113
  store i8 0, ptr %i.u, align 8, !tbaa !23, !alias.scope !3113
  %i.w = sext i8 %i.t to i64                      ; 3 uses
  %i.x = call i64 @llvm.abs.i64(i64 %i.w, i1 true)
  %i.y = invoke noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.x)
          to label %.noexc.i.i.i unwind label %bb.q
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox14ConstantVectorIaE15makeNullsBufferEv:bb.a
  br i1 %.not.i1, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !271
  %.not.i.i2 = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i2, i64 8, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %..i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !270

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 1)
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !647
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !282
  %i.bt = and i8 %i.bs, 2
  %.not.i3 = icmp eq i8 %i.bt, 0
  br i1 %.not.i3, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.l, !prof !27

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #41
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store i64 0, ptr %i.bp, align 8, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIaEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEaRKNS1_17SimpleVectorStatsIaEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIaEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !258
  %i.e = load i32, ptr %2, align 4, !tbaa !21
  %i.f = load i8, ptr %3, align 1, !tbaa !138, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIaEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOaRKNS0_17SimpleVectorStatsIaEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !3136

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !3137
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !3137
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !3136
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31, !inline_history !3136
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIaEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOaRKNS0_17SimpleVectorStatsIaEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !21
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !82
  %not. = xor i1 %3, true
  %.sroa.031.0.insert.ext = zext i1 %not. to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.031.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIaEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIaEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !82    ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !270

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !42  ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !45
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIaEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i8, ptr %5, align 1, !tbaa !23
  store i8 %i.at, ptr %i.as, align 8, !tbaa !143
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  store i8 %i.l, ptr %i.au, align 1, !tbaa !2959
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 1, ptr %i.av, align 2, !tbaa !3100
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.aw, align 8, !tbaa !2000
  invoke void @_ZN8facebook5velox14ConstantVectorIaE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !251
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 1, !tbaa !2959, !range !25, !noundef !26
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !27

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIaEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOaRKNS0_17SimpleVectorStatsIaEESt8optionalIiESG_E18veloxCheckFailArgs) #41
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !3138
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !132, !noalias !3141
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !3138
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !132
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !45
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox12SimpleVectorIsEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIsEESt8optionalIiESL_SK_IbESL_SL_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !270

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorIsEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i16 %9, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 2, ptr %i.aj, align 8, !tbaa !3212
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load i64, ptr %6, align 2
  store i64 %i.al, ptr %i.ak, align 8
  ret void

bb.k:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #31
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIsE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIsE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.167) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !3163
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !3156
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %not. to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.010.0.insert.ext, 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIsEE, i64 0) #31 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !3163
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 2, !tbaa !3156
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !3163
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef signext i16 %i.br(ptr noundef nonnull align 8 dereferenceable(112) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 %i.bs, ptr %i.bt, align 8, !tbaa !151
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !449
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !42  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !42
  %.not.i.i.i.i4 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bv, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !45
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %bb.t ], [ %i.ci, %bb.u ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIsE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 147
  store i8 1, ptr %i.ck, align 1, !tbaa !3300
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIsED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #43
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIsE6resizeEib(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIsE6resizeEibE18veloxCheckFailArgs, ptr noundef nonnull @.str.30) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox12SimpleVectorIsE8toStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.292", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not = icmp slt i32 %2, %i.b
  br i1 %.not, label %bb.e, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !3307
  store i32 %2, ptr %3, align 16, !tbaa !23, !alias.scope !3310, !noalias !3307
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.b, ptr %i.c, align 16, !tbaa !23, !alias.scope !3310, !noalias !3307
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.122, i64 52, i64 17, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !3307
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox12SimpleVectorIsE8toStringB5cxx11EiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.122) #41
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.j = load ptr, ptr %1, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.123, i64 noundef 4)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.q = load ptr, ptr %1, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef signext i16 %i.s(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %2)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !31, !alias.scope !3313
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.v, align 8, !tbaa !16, !alias.scope !3313
  store i8 0, ptr %i.u, align 8, !tbaa !23, !alias.scope !3313
  %i.w = sext i16 %i.t to i64                     ; 3 uses
  %i.x = call i64 @llvm.abs.i64(i64 %i.w, i1 true)
  %i.y = invoke noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.x)
          to label %.noexc.i.i.i unwind label %bb.q
end_hunk_12
begin_hunk_13_@_ZN8facebook5velox14ConstantVectorIsE15makeNullsBufferEv:bb.a
  br i1 %.not.i1, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !271
  %.not.i.i2 = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i2, i64 8, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %..i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !270

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 1)
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !647
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !282
  %i.bt = and i8 %i.bs, 2
  %.not.i3 = icmp eq i8 %i.bt, 0
  br i1 %.not.i3, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.l, !prof !27

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #41
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store i64 0, ptr %i.bp, align 8, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIsEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEsRKNS1_17SimpleVectorStatsIsEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 2 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIsEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !258
  %i.e = load i32, ptr %2, align 4, !tbaa !21
  %i.f = load i8, ptr %3, align 1, !tbaa !138, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIsEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOsRKNS0_17SimpleVectorStatsIsEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 2 dereferenceable(8) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !3336

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !3337
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !3337
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !3336
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31, !inline_history !3336
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIsEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOsRKNS0_17SimpleVectorStatsIsEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 2 dereferenceable(8) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !21
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !82
  %not. = xor i1 %3, true
  %.sroa.031.0.insert.ext = zext i1 %not. to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.031.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIsEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIsEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 2 dereferenceable(8) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !82    ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !270

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !42  ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !45
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIsEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i16, ptr %5, align 2, !tbaa !160
  store i16 %i.at, ptr %i.as, align 8, !tbaa !151
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 2 uses
  store i8 %i.l, ptr %i.au, align 2, !tbaa !3156
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 147
  store i8 1, ptr %i.av, align 1, !tbaa !3300
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.aw, align 8, !tbaa !2000
  invoke void @_ZN8facebook5velox14ConstantVectorIsE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !251
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 2, !tbaa !3156, !range !25, !noundef !26
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !27

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIsEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOsRKNS0_17SimpleVectorStatsIsEESt8optionalIiESG_E18veloxCheckFailArgs) #41
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !3338
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !132, !noalias !3341
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !3338
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !132
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !45
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_13
begin_hunk_14_@_ZN8facebook5velox12SimpleVectorIlEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIlEESt8optionalIiESL_SK_IbESL_SL_:bb.a
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !270

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorIlEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i16 %9, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 8, ptr %i.aj, align 8, !tbaa !3417
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  ret void

bb.k:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #31
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIlE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIlE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.167) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !3361
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 8, !tbaa !3356
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %not. to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.010.0.insert.ext, 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIlEE, i64 0) #31 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !3361
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 8, !tbaa !3356
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !3361
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef i64 %i.br(ptr noundef nonnull align 8 dereferenceable(136) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !161
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !449
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !42  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !42
  %.not.i.i.i.i4 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bv, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !45
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %bb.t ], [ %i.ci, %bb.u ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIlE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.ck, align 1, !tbaa !3504
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIlED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #43
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIlE6resizeEib(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIlE6resizeEibE18veloxCheckFailArgs, ptr noundef nonnull @.str.30) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox12SimpleVectorIlE8toStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.292", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not = icmp slt i32 %2, %i.b
  br i1 %.not, label %bb.e, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !3511
  store i32 %2, ptr %3, align 16, !tbaa !23, !alias.scope !3514, !noalias !3511
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.b, ptr %i.c, align 16, !tbaa !23, !alias.scope !3514, !noalias !3511
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.122, i64 52, i64 17, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !3511
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox12SimpleVectorIlE8toStringB5cxx11EiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.122) #41
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.j = load ptr, ptr %1, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.123, i64 noundef 4)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.s = load ptr, ptr %1, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 384
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef %2)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK8facebook5velox4Type13valueToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(18) %i.r, i64 noundef %i.v)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %6, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16
end_hunk_14
begin_hunk_15_@_ZN8facebook5velox14ConstantVectorIlE15makeNullsBufferEv:bb.a
  br i1 %.not.i1, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !271
  %.not.i.i2 = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i2, i64 8, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %..i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !270

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 1)
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !647
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !282
  %i.bt = and i8 %i.bs, 2
  %.not.i3 = icmp eq i8 %i.bt, 0
  br i1 %.not.i3, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.l, !prof !27

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #41
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store i64 0, ptr %i.bp, align 8, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIlEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEElRKNS1_17SimpleVectorStatsIlEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIlEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !258
  %i.e = load i32, ptr %2, align 4, !tbaa !21
  %i.f = load i8, ptr %3, align 1, !tbaa !138, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIlEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOlRKNS0_17SimpleVectorStatsIlEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !3582

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !3583
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !3583
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !3582
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31, !inline_history !3582
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIlEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOlRKNS0_17SimpleVectorStatsIlEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !21
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !82
  %not. = xor i1 %3, true
  %.sroa.031.0.insert.ext = zext i1 %not. to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.031.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIlEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIlEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !82    ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !270

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !42  ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !45
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIlEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i64, ptr %5, align 8, !tbaa !95
  store i64 %i.at, ptr %i.as, align 8, !tbaa !161
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 %i.l, ptr %i.au, align 8, !tbaa !3356
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.av, align 1, !tbaa !3504
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.aw, align 8, !tbaa !2000
  invoke void @_ZN8facebook5velox14ConstantVectorIlE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !251
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 8, !tbaa !3356, !range !25, !noundef !26
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !27

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIlEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOlRKNS0_17SimpleVectorStatsIlEESt8optionalIiESG_E18veloxCheckFailArgs) #41
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !3584
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !132, !noalias !3587
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !3584
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !132
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !45
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_15
begin_hunk_16_@_ZN8facebook5velox12SimpleVectorInEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsInEESt8optionalIiESL_SK_IbESL_SL_:bb.a
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !270

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorInEE, i64 16), ptr %0, align 16, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i16 %9, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 16, ptr %i.aj, align 16, !tbaa !3671
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ak, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 64, i1 false)
  ret void

bb.k:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #31
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorInE16setInternalStateEv(ptr noundef nonnull align 16 dereferenceable(240) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !113
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorInE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.167) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  store ptr %i.i, ptr %i.a, align 16, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.a, align 16, !tbaa !113
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 16, !tbaa !3608
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 16, !tbaa !3594
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %not. to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.010.0.insert.ext, 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 16, !tbaa !113 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 16, !tbaa !113 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorInEE, i64 0) #31 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 16, !tbaa !3608
  %i.bj = load ptr, ptr %i.bh, align 16, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 16, !tbaa !3594
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 16, !tbaa !3608
  %i.bp = load ptr, ptr %i.bh, align 16, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef nonnull align 16 dereferenceable(16) ptr %i.br(ptr noundef nonnull align 16 dereferenceable(176) %i.bh, i32 noundef %i.bo)
  %i.bt = load i128, ptr %i.bs, align 16, !tbaa !169
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i128 %i.bt, ptr %i.bu, align 16, !tbaa !3620
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 16, !tbaa !449
  %i.bv = load ptr, ptr %i.j, align 8, !tbaa !42  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !42
  %.not.i.i.i.i4 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bw, align 8, !tbaa !43
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !45
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #31, !inline_history !2007
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.t ], [ %i.cj, %bb.u ]
  %i.ck = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ck, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorInE15makeNullsBufferEv(ptr noundef nonnull align 16 dereferenceable(240) %0)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 1, ptr %i.cl, align 1, !tbaa !3759
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorInED0Ev(ptr noundef nonnull align 16 dereferenceable(176) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #43
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorInE6resizeEib(ptr noundef nonnull align 16 dereferenceable(176) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorInE6resizeEibE18veloxCheckFailArgs, ptr noundef nonnull @.str.30) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox12SimpleVectorInE8toStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 16 dereferenceable(176) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.292", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not = icmp slt i32 %2, %i.b
  br i1 %.not, label %bb.e, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !3766
  store i32 %2, ptr %3, align 16, !tbaa !23, !alias.scope !3769, !noalias !3766
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.b, ptr %i.c, align 16, !tbaa !23, !alias.scope !3769, !noalias !3766
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.122, i64 52, i64 17, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !3766
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox12SimpleVectorInE8toStringB5cxx11EiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.122) #41
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.j = load ptr, ptr %1, align 16, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.123, i64 noundef 4)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8    ; 2 uses
  %i.s = load ptr, ptr %1, align 16, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 384
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef nonnull align 16 dereferenceable(16) ptr %i.u(ptr noundef nonnull align 16 dereferenceable(176) %1, i32 noundef %2)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.w = load i128, ptr %i.v, align 16, !tbaa !169 ; 2 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !14, !noalias !3772 ; 2 uses
  %i.y = icmp eq ptr %i.x, getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox16ShortDecimalTypeE, i64 16)
  %i.z = icmp eq ptr %i.x, getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox15LongDecimalTypeE, i64 16)
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %_ZNK8facebook5velox4Type9isDecimalEv.exit.thread.i, label %bb.k
end_hunk_16
begin_hunk_17_@_ZN8facebook5velox14ConstantVectorInE15makeNullsBufferEv:bb.a
  br i1 %.not.i1, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !271
  %.not.i.i2 = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i2, i64 8, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %..i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !270

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bj = load ptr, ptr %i.ag, align 16, !tbaa !82 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 1)
  %i.bn = load ptr, ptr %i.ag, align 16, !tbaa !82 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !647
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !282
  %i.bt = and i8 %i.bs, 2
  %.not.i3 = icmp eq i8 %i.bt, 0
  br i1 %.not.i3, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.l, !prof !27

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #41
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store i64 0, ptr %i.bp, align 8, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorInEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEnRKNS1_17SimpleVectorStatsInEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 16 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorInEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 16, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !258
  %i.e = load i32, ptr %2, align 4, !tbaa !21
  %i.f = load i8, ptr %3, align 1, !tbaa !138, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorInEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOnRKNS0_17SimpleVectorStatsInEESt8optionalIiESG_(ptr noundef nonnull align 16 dereferenceable(240) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !3791

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !3792
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !3792
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !3791
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31, !inline_history !3791
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorInEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOnRKNS0_17SimpleVectorStatsInEESt8optionalIiESG_(ptr noundef nonnull align 16 dereferenceable(240) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !21
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !82
  %not. = xor i1 %3, true
  %.sroa.031.0.insert.ext = zext i1 %not. to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.031.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorInEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsInEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 16 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !82    ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !270

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !42  ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !45
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorInEE, i64 16), ptr %0, align 16, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load i128, ptr %5, align 16, !tbaa !169
  store i128 %i.at, ptr %i.as, align 16, !tbaa !3620
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store i8 %i.l, ptr %i.au, align 16, !tbaa !3594
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 1, ptr %i.av, align 1, !tbaa !3759
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.aw, align 8, !tbaa !2000
  invoke void @_ZN8facebook5velox14ConstantVectorInE15makeNullsBufferEv(ptr noundef nonnull align 16 dereferenceable(240) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !251
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 16, !tbaa !3594, !range !25, !noundef !26
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !27

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorInEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOnRKNS0_17SimpleVectorStatsInEESt8optionalIiESG_E18veloxCheckFailArgs) #41
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !3793
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !132, !noalias !3796
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !3793
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 16, !tbaa !132
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !45
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_17
begin_hunk_18_@_ZN8facebook5velox12SimpleVectorIfEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIfEESt8optionalIiESL_SK_IbESL_SL_:bb.a
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !270

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorIfEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i16 %9, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 4, ptr %i.aj, align 8, !tbaa !3880
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false)
  ret void

bb.k:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #31
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIfE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIfE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.167) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !3810
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 4, !tbaa !3804
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %not. to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.010.0.insert.ext, 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIfEE, i64 0) #31 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !3810
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 4, !tbaa !3804
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !3810
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef float %i.br(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float %i.bs, ptr %i.bt, align 8, !tbaa !171
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !449
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !42  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !42
  %.not.i.i.i.i4 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bv, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !45
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %bb.t ], [ %i.ci, %bb.u ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIfE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 1, ptr %i.ck, align 1, !tbaa !3967
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIfED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #43
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIfE6resizeEib(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIfE6resizeEibE18veloxCheckFailArgs, ptr noundef nonnull @.str.30) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox12SimpleVectorIfE8toStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.292", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not = icmp slt i32 %2, %i.b
  br i1 %.not, label %bb.e, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !3974
  store i32 %2, ptr %3, align 16, !tbaa !23, !alias.scope !3977, !noalias !3974
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.b, ptr %i.c, align 16, !tbaa !23, !alias.scope !3977, !noalias !3974
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.122, i64 52, i64 17, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !3974
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox12SimpleVectorIfE8toStringB5cxx11EiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.122) #41
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.j = load ptr, ptr %1, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.123, i64 noundef 4)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.q = load ptr, ptr %1, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef float %i.s(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %2)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !31, !alias.scope !3980
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !16, !alias.scope !3980
  store i8 0, ptr %i.u, align 8, !tbaa !23, !alias.scope !3980
  invoke void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEENSt9enable_ifIXaasr3std17is_floating_pointIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeES8_PS9_NS_8DtoaModeEjNS_9DtoaFlagsE(float noundef %i.t, ptr noundef nonnull align 8 %6, i32 noundef 0, i32 noundef 0, i32 noundef 0)
          to label %_ZNK8facebook5velox4Type13valueToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_18
begin_hunk_19_@_ZN8facebook5velox14ConstantVectorIfE15makeNullsBufferEv:bb.a
  br i1 %.not.i1, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !271
  %.not.i.i2 = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i2, i64 8, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %..i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !270

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 1)
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !647
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !282
  %i.bt = and i8 %i.bs, 2
  %.not.i3 = icmp eq i8 %i.bt, 0
  br i1 %.not.i3, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.l, !prof !27

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #41
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store i64 0, ptr %i.bp, align 8, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIfEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEfRKNS1_17SimpleVectorStatsIfEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !258
  %i.e = load i32, ptr %2, align 4, !tbaa !21
  %i.f = load i8, ptr %3, align 1, !tbaa !138, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIfEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOfRKNS0_17SimpleVectorStatsIfEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !4014

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !4015
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !4015
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !4014
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31, !inline_history !4014
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIfEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOfRKNS0_17SimpleVectorStatsIfEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !21
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !82
  %not. = xor i1 %3, true
  %.sroa.031.0.insert.ext = zext i1 %not. to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.031.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIfEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIfEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !82    ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !270

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !42  ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !45
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIfEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load float, ptr %5, align 4, !tbaa !180
  store float %i.at, ptr %i.as, align 8, !tbaa !171
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  store i8 %i.l, ptr %i.au, align 4, !tbaa !3804
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 1, ptr %i.av, align 1, !tbaa !3967
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.aw, align 8, !tbaa !2000
  invoke void @_ZN8facebook5velox14ConstantVectorIfE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !251
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 4, !tbaa !3804, !range !25, !noundef !26
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !27

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIfEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOfRKNS0_17SimpleVectorStatsIfEESt8optionalIiESG_E18veloxCheckFailArgs) #41
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !4016
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !132, !noalias !4019
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !4016
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !132
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !45
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_19
begin_hunk_20_@_ZN8facebook5velox12SimpleVectorIdEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIdEESt8optionalIiESL_SK_IbESL_SL_:bb.a
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !270

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorIdEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i16 %9, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 8, ptr %i.aj, align 8, !tbaa !4103
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  ret void

bb.k:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #31
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIdE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIdE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.167) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !4033
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 8, !tbaa !4027
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %not. to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.010.0.insert.ext, 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIdEE, i64 0) #31 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !4033
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 8, !tbaa !4027
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !4033
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef double %i.br(ptr noundef nonnull align 8 dereferenceable(136) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.bs, ptr %i.bt, align 8, !tbaa !181
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !449
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !42  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !42
  %.not.i.i.i.i4 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bv, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !45
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %bb.t ], [ %i.ci, %bb.u ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorIdE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.ck, align 1, !tbaa !4190
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIdED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #43
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIdE6resizeEib(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIdE6resizeEibE18veloxCheckFailArgs, ptr noundef nonnull @.str.30) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox12SimpleVectorIdE8toStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.292", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not = icmp slt i32 %2, %i.b
  br i1 %.not, label %bb.e, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !4197
  store i32 %2, ptr %3, align 16, !tbaa !23, !alias.scope !4200, !noalias !4197
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.b, ptr %i.c, align 16, !tbaa !23, !alias.scope !4200, !noalias !4197
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.122, i64 52, i64 17, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !4197
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox12SimpleVectorIdE8toStringB5cxx11EiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.122) #41
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.j = load ptr, ptr %1, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.123, i64 noundef 4)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.q = load ptr, ptr %1, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef double %i.s(ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef %2)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !31, !alias.scope !4203
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !16, !alias.scope !4203
  store i8 0, ptr %i.u, align 8, !tbaa !23, !alias.scope !4203
  invoke void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEENSt9enable_ifIXaasr3std17is_floating_pointIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeES8_PS9_NS_8DtoaModeEjNS_9DtoaFlagsE(double noundef %i.t, ptr noundef nonnull align 8 %6, i32 noundef 0, i32 noundef 0, i32 noundef 0)
          to label %_ZNK8facebook5velox4Type13valueToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_20
begin_hunk_21_@_ZN8facebook5velox14ConstantVectorIdE15makeNullsBufferEv:bb.a
  br i1 %.not.i1, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !271
  %.not.i.i2 = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i2, i64 8, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %..i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !270

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 1)
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !647
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !282
  %i.bt = and i8 %i.bs, 2
  %.not.i3 = icmp eq i8 %i.bt, 0
  br i1 %.not.i3, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.l, !prof !27

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #41
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store i64 0, ptr %i.bp, align 8, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIdEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEEdRKNS1_17SimpleVectorStatsIdEERKSt8optionalIiESU_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !258
  %i.e = load i32, ptr %2, align 4, !tbaa !21
  %i.f = load i8, ptr %3, align 1, !tbaa !138, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorIdEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOdRKNS0_17SimpleVectorStatsIdEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !4226

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !4227
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !4227
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !4226
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31, !inline_history !4226
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorIdEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOdRKNS0_17SimpleVectorStatsIdEESt8optionalIiESG_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !21
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !82
  %not. = xor i1 %3, true
  %.sroa.031.0.insert.ext = zext i1 %not. to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.031.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorIdEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIdEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !82    ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !270

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !42  ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !45
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorIdEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  %i.at = load double, ptr %5, align 8, !tbaa !190
  store double %i.at, ptr %i.as, align 8, !tbaa !181
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 %i.l, ptr %i.au, align 8, !tbaa !4027
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.av, align 1, !tbaa !4190
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.aw, align 8, !tbaa !2000
  invoke void @_ZN8facebook5velox14ConstantVectorIdE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %4, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !251
  %i.bf = icmp eq i8 %i.be, 32
  br i1 %i.bf, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = load i8, ptr %i.au, align 8, !tbaa !4027, !range !25, !noundef !26
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.r, !prof !27

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorIdEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOdRKNS0_17SimpleVectorStatsIdEESt8optionalIiESG_E18veloxCheckFailArgs) #41
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !4228
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = load <2 x ptr>, ptr %9, align 16, !tbaa !132, !noalias !4231
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !4228
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.bm, ptr %i.aq, align 8, !tbaa !132
  %.not.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bo, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !45
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nsw i32 %i.br, -1
end_hunk_21
begin_hunk_22_@_ZN8facebook5velox14ConstantVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIS2_EE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.x
  %.pn13 = phi { ptr, i32 } [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bw, %bb.x ], [ %i.bx, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.ag

bb.z:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i32 2, ptr %i.c, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 2, ptr %i.d, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !4330
  store ptr %i.c, ptr %6, align 16, !tbaa !23, !noalias !4330
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.cd, align 8, !tbaa !23, !noalias !4330
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %i.ce, align 16, !tbaa !23, !noalias !4330
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox14VectorEncoding6SimpleENS0_9formatterIS9_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.cf, align 8, !tbaa !23, !noalias !4330
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.163, i64 57, i64 255, ptr nonnull %6)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !4330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolEiiSt10shared_ptrINS0_10BaseVectorEERKNS0_17SimpleVectorStatsIS2_EEE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.163) #41
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.ad:                                            ; preds = %bb.aa
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %11, align 8, !tbaa !22   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.ad
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !23
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.cg, %bb.ac ], [ %i.ch, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(272) %0)
          to label %bb.af unwind label %bb.w

bb.af:                                            ; preds = %bb.ae
  ret void

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.w
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.bv, %bb.w ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bm) #31
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bc) #31
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.v
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.ag ], [ %i.bu, %bb.v ]
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.ac

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_10StringViewEE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.167) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !4245
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 8, !tbaa !4239
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.026.0.insert.ext = zext i1 %not. to i64
  %.sroa.026.0.insert.insert = or disjoint i64 %.sroa.026.0.insert.ext, 4294967296
  store i64 %.sroa.026.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.022.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.022.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_10StringViewEEE, i64 0) #31 ; 5 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !4245
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 8, !tbaa !4239
  br i1 %i.bm, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !4245
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.br(ptr noundef nonnull align 8 dereferenceable(208) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !191
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !192 ; 4 uses
  %i.bv = icmp ult i32 %i.bu, 13
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = select i1 %i.bv, ptr %i.bw, ptr %i.by   ; 2 uses
  %i.ca = zext i32 %i.bu to i64                   ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.cb, ptr %1, align 8, !tbaa !31
  %i.cc = icmp eq ptr %i.bz, null
  br i1 %i.cc, label %.noexc, label %bb.p

.noexc:                                           ; preds = %bb.o
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.146) #41
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.cd = icmp ugt i32 %i.bu, 15
  br i1 %i.cd, label %.noexc12, label %._crit_edge.i.i

.noexc12:                                         ; preds = %bb.p
  %i.ce = add nuw nsw i64 %i.ca, 1
  %i.cf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #42 ; 2 uses
  store ptr %i.cf, ptr %1, align 8, !tbaa !22
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc12, %bb.p
  %i.cg = phi ptr [ %i.cf, %.noexc12 ], [ %i.cb, %bb.p ] ; 3 uses
  switch i32 %i.bu, label %bb.r [
    i32 1, label %bb.q
    i32 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.ch = load i8, ptr %i.bw, align 4, !tbaa !23
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !23
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull align 1 %i.bz, i64 %i.ca, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ca, ptr %i.ci, align 8, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ca
  store i8 0, ptr %i.cj, align 1, !tbaa !23
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEE8setValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.cb
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.cm = load i64, ptr %i.cb, align 8, !tbaa !23
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.co = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bh, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_10StringViewEEE, i64 0) #31
  %i.cp = load i32, ptr %i.aj, align 8, !tbaa !4245
  %i.cq = call i16 @_ZNK8facebook5velox12SimpleVectorINS0_10StringViewEE7isAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EESt8optionalIbEE4typeEi(ptr noundef nonnull align 8 dereferenceable(208) %i.co, i32 noundef %i.cp) ; 2 uses
  %i.cr = and i16 %i.cq, 256
  %.not = icmp eq i16 %i.cr, 0
  br i1 %.not, label %bb.v, label %_ZNRSt8optionalIbE5valueEv.exit

_ZNRSt8optionalIbE5valueEv.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cs = trunc i16 %i.cq to i1
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE13setAllIsAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext %i.cs)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cb
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.u
  %i.cw = load i64, ptr %i.cb, align 8, !tbaa !23
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %i.ct

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNRSt8optionalIbE5valueEv.exit, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !449
  %i.cy = load ptr, ptr %i.j, align 8, !tbaa !42  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !42
  %.not.i.i.i.i16 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i16, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cz, align 8, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !45
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #31, !inline_history !2007
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i = phi i32 [ %i.dc, %bb.z ], [ %i.dm, %bb.aa ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dn, label %bb.ab, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ab, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  call void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(272) %0)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 257
  store i8 1, ptr %i.do, align 1, !tbaa !4333
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

declare void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEE8setValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr i16 @_ZNK8facebook5velox12SimpleVectorINS0_10StringViewEE7isAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EESt8optionalIbEE4typeEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
end_hunk_22
begin_hunk_23_@_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE21ensureIsAsciiCapacityIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EEvE4typeEv:bb.a
  store i8 1, ptr %i.az, align 8, !tbaa !768, !alias.scope !4374
  %i.bi = load ptr, ptr %4, align 8, !tbaa !764   ; 4 uses
  %.not.i.i9 = icmp eq ptr %i.bi, null
  %.neg.i.i10 = select i1 %.not.i.i9, i64 0, i64 -40
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %.neg.i.i10 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !614
  %i.bm = load i32, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  %.not5 = icmp slt i32 %i.bl, %i.bm
  br i1 %.not5, label %bb.p, label %bb.r

bb.o:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %i.bn

bb.p:                                             ; preds = %bb.n
  invoke void @_ZN8facebook5velox17SelectivityVector6resizeEib(ptr noundef nonnull align 8 dereferenceable(38) %i.bj, i32 noundef %i.bm, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !621
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !622
  %i.bs = icmp sge i32 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.bu = zext i1 %i.bs to i8
  store atomic i8 %i.bu, ptr %i.bt seq_cst, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.bv = atomicrmw and ptr %i.bi, i32 -401 seq_cst, align 4 ; 2 uses
  %i.bw = and i32 %i.bv, -401
  store i32 %i.bw, ptr %i.c, align 4, !tbaa !21
  %i.bx = and i32 %i.bv, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.s, !prof !27

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #43
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.u

bb.u:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %_ZN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEED2Ev.exit, %_ZN5folly9LockedPtrINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSA_22SynchronizedMutexLevelE1ELNSA_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEES3_RKNS1_17SimpleVectorStatsIS3_EERKSt8optionalIiESV_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !258
  %i.e = load i32, ptr %2, align 4, !tbaa !21
  %i.f = load i8, ptr %3, align 1, !tbaa !138, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(272) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !4375

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !4376
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !4376
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !4375
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31, !inline_history !4375
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !21
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !82
  %not. = xor i1 %3, true
  %.sroa.039.0.insert.ext = zext i1 %not. to i64
  %.sroa.039.0.insert.insert = or disjoint i64 %.sroa.039.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.036.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %.sroa.039.0.insert.insert, i64 %.sroa.036.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !82    ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !270

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !42  ; 8 uses
  %.not.i.i21 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i21, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !45
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i22 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorINS0_10StringViewEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !191
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  store i8 %i.l, ptr %i.at, align 8, !tbaa !4239
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 257
  store i8 1, ptr %i.au, align 1, !tbaa !4333
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr null, ptr %i.av, align 8, !tbaa !2000
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_10StringViewEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(272) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aw = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %4, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !251
  %i.be = icmp eq i8 %i.bd, 32
  br i1 %i.be, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bf = load i8, ptr %i.at, align 8, !tbaa !4239, !range !25, !noundef !26
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.w, label %bb.r, !prof !27

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_E18veloxCheckFailArgs) #41
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.aq

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.v:                                             ; preds = %bb.r
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !4377
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bl = load <2 x ptr>, ptr %9, align 16, !tbaa !132, !noalias !4380
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !4377
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.bl, ptr %i.aq, align 8, !tbaa !132
  %.not.i.i.i.i23 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i23, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bn, align 8, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !45
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #31, !inline_history !2007
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !21
end_hunk_23
begin_hunk_24_@_ZN8facebook5velox12SimpleVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_:bb.a
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !270

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorINS0_9TimestampEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i16 %9, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 16, ptr %i.aj, align 8, !tbaa !4482
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  ret void

bb.k:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #31
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEE16setInternalStateEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = tail call noundef zeroext i1 @_ZN8facebook5velox15isLazyNotLoadedERKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(94) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.f = load atomic i8, ptr %i.e seq_cst, align 1, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit, label %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread: ; preds = %bb.b
  store atomic i8 1, ptr %i.e seq_cst, align 1
  br label %bb.w

_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit: ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_9TimestampEE16setInternalStateEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.167) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !45
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !2058
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !4407
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, i32 noundef %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 8, !tbaa !4390
  %not. = xor i1 %i.ao, true
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.010.0.insert.ext = zext i1 %not. to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.010.0.insert.ext, 4294967296
  store i64 %.sroa.010.0.insert.insert, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.av, 4294967296
  %.sroa.07.0.insert.insert = select i1 %i.ao, i64 %i.aw, i64 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.au, align 4
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(94) %i.ax)
  br i1 %i.bb, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %i.bc)
  %i.bh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.bg, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_9TimestampEEE, i64 0) #31 ; 4 uses
  %i.bi = load i32, ptr %i.aj, align 8, !tbaa !4407
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(94) %i.bh, i32 noundef %i.bi) ; 2 uses
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.ap, align 8, !tbaa !4390
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !4407
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 384
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.br(ptr noundef nonnull align 8 dereferenceable(152) %i.bh, i32 noundef %i.bo)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !194
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.a, align 8, !tbaa !449
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !42  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !42
  %.not.i.i.i.i4 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bv, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !45
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %bb.t ], [ %i.ci, %bb.u ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #31
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSERKS3_.exit
  tail call void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 1, ptr %i.ck, align 1, !tbaa !4575
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10BaseVector30markAsContainingLazyAndWrappedEv.exit.thread, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(94) dereferenceable(94) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTVN8facebook5velox10BaseVectorE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %.noexc.i unwind label %bb.c, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.j, null
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %..i.i
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.c, !inline_history !270

bb.c:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.a, %bb.b, %.noexc.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !464
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_9TimestampEED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #43
end_hunk_24
begin_hunk_25_@_ZN8facebook5velox14ConstantVectorINS0_9TimestampEE15makeNullsBufferEv:bb.a
  br i1 %.not.i1, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.ax = atomicrmw sub ptr %i.aw, i32 1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !271
  %.not.i.i2 = icmp eq ptr %i.bd, null
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i2, i64 8, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %..i.i
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !270

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 noundef 1)
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !82 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !647
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !282
  %i.bt = and i8 %i.bs, 2
  %.not.i3 = icmp eq i8 %i.bt, 0
  br i1 %.not.i3, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.l, !prof !27

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #41
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store i64 0, ptr %i.bp, align 8, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRPNS1_6memory10MemoryPoolERKiRKbRKSt10shared_ptrIKNS1_4TypeEES3_RKNS1_17SimpleVectorStatsIS3_EERKSt8optionalIiESV_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox14ConstantVectorINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.d = load ptr, ptr %1, align 8, !tbaa !258
  %i.e = load i32, ptr %2, align 4, !tbaa !21
  %i.f = load i8, ptr %3, align 1, !tbaa !138, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.k, ptr %9, align 16, !tbaa !132
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !21
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 4
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.g, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
          to label %bb.e unwind label %.body, !inline_history !4607

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !45
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !4608
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !4608
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i11.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !4607
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31, !inline_history !4607
  resume { ptr, i32 } %i.ag

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %7, i64 %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %11 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %i.d = load <2 x ptr>, ptr %4, align 8, !tbaa !132
  store <2 x ptr> %i.d, ptr %10, align 16, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !21
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !21
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr null, ptr %11, align 8, !tbaa !82
  %not. = xor i1 %3, true
  %.sroa.031.0.insert.ext = zext i1 %not. to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.031.0.insert.ext, 4294967296
  %i.j = zext i32 %2 to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  %.sroa.028.0.insert.insert = select i1 %3, i64 %i.k, i64 4294967296
  invoke void @_ZN8facebook5velox12SimpleVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef nonnull align 8 %10, i32 noundef 1, ptr noundef nonnull align 8 %11, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %.sroa.031.0.insert.insert, i64 %.sroa.028.0.insert.insert, i16 257, i64 %7, i64 %8)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.l = zext i1 %3 to i8
  %i.m = load ptr, ptr %11, align 8, !tbaa !82    ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.noexc.i unwind label %bb.g, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !270

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !42  ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !45
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31, !inline_history !464
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i19 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox14ConstantVectorINS0_9TimestampEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !194
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i8 %i.l, ptr %i.at, align 8, !tbaa !4390
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 201
  store i8 1, ptr %i.au, align 1, !tbaa !4575
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.av, align 8, !tbaa !2000
  invoke void @_ZN8facebook5velox14ConstantVectorINS0_9TimestampEE15makeNullsBufferEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aw = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %4, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !251
  %i.be = icmp eq i8 %i.bd, 32
  br i1 %i.be, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bf = load i8, ptr %i.at, align 8, !tbaa !4390, !range !25, !noundef !26
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.w, label %bb.r, !prof !27

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14ConstantVectorINS0_9TimestampEEC1EPNS0_6memory10MemoryPoolEibSt10shared_ptrIKNS0_4TypeEEOS2_RKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESH_E18veloxCheckFailArgs) #41
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.ah

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.r
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !4609
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, ptr noundef %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bl = load <2 x ptr>, ptr %9, align 16, !tbaa !132, !noalias !4612
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !4609
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.bl, ptr %i.aq, align 8, !tbaa !132
  %.not.i.i.i.i20 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bn, align 8, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !45
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #31, !inline_history !2007
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #31, !inline_history !2007
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !21
end_hunk_25
