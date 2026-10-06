Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaRrr?download=true
inline.NumInlined: 27716
inline.NumDeleted: 6990
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE1_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_:bb.a

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %3, align 4, !tbaa !220
  store i32 %i.af, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %3, align 4, !tbaa !220
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %2, align 4, !tbaa !220
  store i32 %i.ag, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %2, align 4, !tbaa !220
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.352", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.352", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit
  %i.h = icmp eq i64 %i.l, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph40, !llvm.loop !2030

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.j, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_RT0_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_RT0_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2039 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02138 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.bm, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.02138, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %storemerge2039, i64 -4 ; 3 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !220  ; 3 uses
  %i.q = load i32, ptr %i.n, align 4, !tbaa !220  ; 3 uses
  %i.r = ashr i32 %i.p, 1
  %i.s = ashr i32 %i.q, 1
  %i.t = load ptr, ptr %3, align 8, !tbaa !971
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !852
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.w = sext i32 %i.r to i64
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !224  ; 6 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w
  %i.z = load i32, ptr %i.y, align 4, !tbaa !220  ; 3 uses
  %i.aa = sext i32 %i.s to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !220 ; 3 uses
  %i.ad = icmp slt i32 %i.z, %i.ac
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !220 ; 3 uses
  %i.af = ashr i32 %i.ae, 1
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !220 ; 4 uses
  br i1 %i.ad, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph40
  %i.aj = icmp slt i32 %i.ac, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.q, ptr %0, align 4, !tbaa !220
  store i32 %i.ak, ptr %i.n, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.al = icmp slt i32 %i.z, %i.ai
  %i.am = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ae, ptr %0, align 4, !tbaa !220
  store i32 %i.am, ptr %i.o, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 4, !tbaa !220
  store i32 %i.am, ptr %i.f, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph40
  %i.an = icmp slt i32 %i.z, %i.ai
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.p, ptr %0, align 4, !tbaa !220
  store i32 %i.ao, ptr %i.f, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ap = icmp slt i32 %i.ac, %i.ai
  %i.aq = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.ae, ptr %0, align 4, !tbaa !220
  store i32 %i.aq, ptr %i.o, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 4, !tbaa !220
  store i32 %i.aq, ptr %i.n, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader, %bb.o
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.o ], [ %storemerge2039, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.bc, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %i.ar = load i32, ptr %0, align 4, !tbaa !220
  %i.as = ashr i32 %i.ar, 1
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !220 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i ], [ %i.bc, %bb.m ] ; 8 uses
  %i.aw = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !220 ; 2 uses
  %i.ax = ashr i32 %i.aw, 1
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !220
  %i.bb = icmp slt i32 %i.ba, %i.av
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.bb, label %bb.m, label %.preheader.i.i, !llvm.loop !2031

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.m ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.bd = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !220 ; 2 uses
  %i.be = ashr i32 %i.bd, 1
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !220
  %i.bi = icmp slt i32 %i.av, %i.bh
  br i1 %i.bi, label %.preheader.i.i, label %bb.n, !llvm.loop !2032

bb.n:                                             ; preds = %.preheader.i.i
  %i.bj = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.bj, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.bd, ptr %.sroa.012.1.i.i, align 4, !tbaa !220
  store i32 %i.aw, ptr %.sroa.09.1.i.i, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i, !llvm.loop !2033

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2039, i64 noundef %i.l, ptr nonnull %3, ptr %4)
  %i.bk = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bl = sub i64 %i.bk, %i.a
  %i.bm = ashr exact i64 %i.bl, 2                 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 16
  br i1 %i.bn, label %bb.b, label %.loopexit, !llvm.loop !2030

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !971 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %4 = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %5, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %i.e = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %i.aj, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.sroa.0.022.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.022.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn21.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.022.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.022.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.022.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.022.i.ptr, align 4, !tbaa !220 ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220    ; 2 uses
  %i.h = ashr i32 %i.f, 1
  %i.i = ashr i32 %i.g, 1
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !852
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.l = sext i32 %i.h to i64
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !224  ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !220  ; 2 uses
  %i.p = sext i32 %i.i to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !220
  %i.s = icmp slt i32 %i.o, %i.r
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = icmp samesign ugt i64 %.sroa.0.022.i.idx, 4
  br i1 %i.t, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.022.i.idx, i1 false)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !971 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 4
  store i32 %i.g, ptr %i.u, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.v = load i32, ptr %.pn21.i, align 4, !tbaa !220 ; 2 uses
  %i.w = ashr i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !220
  %i.aa = icmp slt i32 %i.o, %i.z
  br i1 %i.aa, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.ab = phi i32 [ %i.ac, %.lr.ph.i.i ], [ %i.v, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn21.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.022.i.ptr, %bb.f ]
  store i32 %i.ab, ptr %.sroa.05.09.i.i, align 4, !tbaa !220
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.ac = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !220 ; 2 uses
  %i.ad = ashr i32 %i.ac, 1
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !220
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !220
  %i.ai = icmp slt i32 %i.ae, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !2034

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %5 = phi ptr [ %4, %bb.e ], [ %.pre.i, %bb.d ], [ %4, %bb.f ], [ %4, %.lr.ph.i.i ] ; 2 uses
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.022.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  %i.aj = phi ptr [ %i.e, %bb.e ], [ %.pre.i, %bb.d ], [ %i.e, %bb.f ], [ %i.e, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !220
  %.sroa.0.022.i.add = add nuw nsw i64 %.sroa.0.022.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.022.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.b, !llvm.loop !2035

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not9.i = icmp eq ptr %i.ak, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit
  %i.al = load ptr, ptr %5, align 8, !tbaa !852
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !224 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, %.lr.ph.i12
  %.sroa.0.010.i = phi ptr [ %i.ak, %.lr.ph.i12 ], [ %i.bh, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_T0_.exit.i ] ; 5 uses
  %i.ao = load i32, ptr %.sroa.0.010.i, align 4, !tbaa !220 ; 2 uses
  %i.ap = ashr i32 %i.ao, 1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aq ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -4 ; 2 uses
  %i.as = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !220 ; 2 uses
  %i.at = ashr i32 %i.as, 1
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !220
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !220
  %i.ay = icmp slt i32 %i.au, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_T0_.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.g, %.lr.ph.i.i14
  %i.az = phi i32 [ %i.ba, %.lr.ph.i.i14 ], [ %i.as, %bb.g ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %bb.g ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.010.i, %bb.g ]
  store i32 %i.az, ptr %.sroa.05.09.i.i16, align 4, !tbaa !220
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.ba = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !220 ; 2 uses
  %i.bb = ashr i32 %i.ba, 1
  %i.bc = load i32, ptr %i.ar, align 4, !tbaa !220
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !220
  %i.bg = icmp slt i32 %i.bc, %i.bf
  br i1 %i.bg, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, !llvm.loop !2034

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_T0_.exit.i: ; preds = %.lr.ph.i.i14, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.010.i, %bb.g ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ao, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !220
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.bh, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.g, !llvm.loop !2036

bb.h:                                             ; preds = %bb.a
  %i.bi = icmp eq ptr %0, %1
  br i1 %i.bi, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.019.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not20.i20 = icmp eq ptr %.sroa.0.019.i19, %1
  br i1 %.not20.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre24.i22 = load ptr, ptr %2, align 8, !tbaa !971
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, %.lr.ph.i21
  %i.bj = phi ptr [ %.pre24.i22, %.lr.ph.i21 ], [ %i.cv, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 5 uses
  %.sroa.0.022.i23 = phi ptr [ %.sroa.0.019.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i27, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 6 uses
  %.pn21.i24 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.022.i23, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 4 uses
  %i.bk = load i32, ptr %.sroa.0.022.i23, align 4, !tbaa !220 ; 2 uses
  %i.bl = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  %i.bm = ashr i32 %i.bk, 1
  %i.bn = ashr i32 %i.bl, 1
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !852
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 152
  %i.bq = sext i32 %i.bm to i64
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !224 ; 4 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bq ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !220 ; 2 uses
  %i.bu = sext i32 %i.bn to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !220
  %i.bx = icmp slt i32 %i.bt, %i.bw
  br i1 %i.bx, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.by = ptrtoint ptr %.sroa.0.022.i23 to i64
  %i.bz = sub i64 %i.by, %i.b                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 2                 ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, 1
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !291

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 8
  %i.cd = sub nsw i64 0, %i.ca
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ce, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bz, i1 false)
  %.pre.i33 = load ptr, ptr %2, align 8, !tbaa !971
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.l:                                             ; preds = %bb.j
  %i.cf = icmp eq i64 %i.bz, 4
  br i1 %i.cf, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 4
  store i32 %i.bl, ptr %i.cg, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.n:                                             ; preds = %bb.i
  %i.ch = load i32, ptr %.pn21.i24, align 4, !tbaa !220 ; 2 uses
  %i.ci = ashr i32 %i.ch, 1
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !220
  %i.cm = icmp slt i32 %i.bt, %i.cl
  br i1 %i.cm, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

.lr.ph.i.i29:                                     ; preds = %bb.n, %.lr.ph.i.i29
  %i.cn = phi i32 [ %i.co, %.lr.ph.i.i29 ], [ %i.ch, %bb.n ]
  %.sroa.0.010.i.i30 = phi ptr [ %.sroa.0.0.i.i32, %.lr.ph.i.i29 ], [ %.pn21.i24, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i31 = phi ptr [ %.sroa.0.010.i.i30, %.lr.ph.i.i29 ], [ %.sroa.0.022.i23, %bb.n ]
  store i32 %i.cn, ptr %.sroa.05.09.i.i31, align 4, !tbaa !220
  %.sroa.0.0.i.i32 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i30, i64 -4 ; 2 uses
  %i.co = load i32, ptr %.sroa.0.0.i.i32, align 4, !tbaa !220 ; 2 uses
  %i.cp = ashr i32 %i.co, 1
  %i.cq = load i32, ptr %i.bs, align 4, !tbaa !220
  %i.cr = sext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !220
  %i.cu = icmp slt i32 %i.cq, %i.ct
  br i1 %i.cu, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, !llvm.loop !2034

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25: ; preds = %.lr.ph.i.i29, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i26 = phi ptr [ %0, %bb.m ], [ %0, %bb.k ], [ %0, %bb.l ], [ %.sroa.0.022.i23, %bb.n ], [ %.sroa.0.010.i.i30, %.lr.ph.i.i29 ]
  %i.cv = phi ptr [ %i.bj, %bb.m ], [ %.pre.i33, %bb.k ], [ %i.bj, %bb.l ], [ %i.bj, %bb.n ], [ %i.bj, %.lr.ph.i.i29 ]
  store i32 %i.bk, ptr %.sink.i26, align 4, !tbaa !220
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i23, i64 4 ; 2 uses
  %.not.i28 = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %.not.i28, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.i, !llvm.loop !2035

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !303 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !220  ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.g, ptr %i.e, align 4, !tbaa !220
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = lshr i64 %i.k, 1
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.n = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !971
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !852
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !224  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.037.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.r = shl i64 %.037.i.i, 1                     ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !220
  %i.x = load i32, ptr %i.v, align 4, !tbaa !220
  %i.y = ashr i32 %i.w, 1
  %i.z = ashr i32 %i.x, 1
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !220
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !220
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.i = select i1 %i.ag, i64 %i.u, i64 %i.s ; 4 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !220
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i.i
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !220
  %i.ak = icmp slt i64 %spec.select.i.i, %i.l
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.i, !llvm.loop !63

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 5 uses
  %i.al = and i64 %i.i, 4
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e
end_hunk_0
begin_hunk_1_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE11_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_:bb.a
  %i.af = load i32, ptr %3, align 4, !tbaa !220
  store i32 %i.af, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %3, align 4, !tbaa !220
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %2, align 4, !tbaa !220
  store i32 %i.ag, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %2, align 4, !tbaa !220
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.393", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.393", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit
  %i.h = icmp eq i64 %i.l, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph40, !llvm.loop !2120

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.j, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_RT0_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_RT0_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2039 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02138 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.bl, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.02138, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %storemerge2039, i64 -4 ; 3 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !220  ; 3 uses
  %i.q = load i32, ptr %i.n, align 4, !tbaa !220  ; 3 uses
  %i.r = ashr i32 %i.p, 1
  %i.s = ashr i32 %i.q, 1
  %i.t = load ptr, ptr %3, align 8, !tbaa !991
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5520
  %i.v = sext i32 %i.r to i64
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !891  ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load double, ptr %i.x, align 8, !tbaa !533 ; 3 uses
  %i.z = sext i32 %i.s to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !533 ; 3 uses
  %i.ac = fcmp ogt double %i.y, %i.ab
  %i.ad = load i32, ptr %i.o, align 4, !tbaa !220 ; 3 uses
  %i.ae = ashr i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !533 ; 4 uses
  br i1 %i.ac, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph40
  %i.ai = fcmp ogt double %i.ab, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.q, ptr %0, align 4, !tbaa !220
  store i32 %i.aj, ptr %i.n, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.ak = fcmp ogt double %i.y, %i.ah
  %i.al = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ad, ptr %0, align 4, !tbaa !220
  store i32 %i.al, ptr %i.o, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 4, !tbaa !220
  store i32 %i.al, ptr %i.f, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph40
  %i.am = fcmp ogt double %i.y, %i.ah
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.p, ptr %0, align 4, !tbaa !220
  store i32 %i.an, ptr %i.f, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ao = fcmp ogt double %i.ab, %i.ah
  %i.ap = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.ad, ptr %0, align 4, !tbaa !220
  store i32 %i.ap, ptr %i.o, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 4, !tbaa !220
  store i32 %i.ap, ptr %i.n, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader, %bb.o
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.o ], [ %storemerge2039, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.bb, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %i.aq = load i32, ptr %0, align 4, !tbaa !220
  %i.ar = ashr i32 %i.aq, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !533 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i ], [ %i.bb, %bb.m ] ; 8 uses
  %i.av = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !220 ; 2 uses
  %i.aw = ashr i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !533
  %i.ba = fcmp ogt double %i.az, %i.au
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.ba, label %bb.m, label %.preheader.i.i, !llvm.loop !2121

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.m ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.bc = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !220 ; 2 uses
  %i.bd = ashr i32 %i.bc, 1
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !533
  %i.bh = fcmp ogt double %i.au, %i.bg
  br i1 %i.bh, label %.preheader.i.i, label %bb.n, !llvm.loop !2122

bb.n:                                             ; preds = %.preheader.i.i
  %i.bi = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.bi, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.bc, ptr %.sroa.012.1.i.i, align 4, !tbaa !220
  store i32 %i.av, ptr %.sroa.09.1.i.i, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i, !llvm.loop !2123

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2039, i64 noundef %i.l, ptr nonnull %3, ptr %4)
  %i.bj = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bk = sub i64 %i.bj, %i.a
  %i.bl = ashr exact i64 %i.bk, 2                 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 16
  br i1 %i.bm, label %bb.b, label %.loopexit, !llvm.loop !2120

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !991 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %4 = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %5, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %i.e = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %i.ah, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.sroa.0.022.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.022.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn21.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.022.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.022.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.022.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.022.i.ptr, align 4, !tbaa !220 ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220    ; 2 uses
  %i.h = ashr i32 %i.f, 1
  %i.i = ashr i32 %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 5520
  %i.k = sext i32 %i.h to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !891  ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load double, ptr %i.m, align 8, !tbaa !533 ; 3 uses
  %i.o = sext i32 %i.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.o
  %i.q = load double, ptr %i.p, align 8, !tbaa !533
  %i.r = fcmp ogt double %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ugt i64 %.sroa.0.022.i.idx, 4
  br i1 %i.s, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.022.i.idx, i1 false)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !991 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 4
  store i32 %i.g, ptr %i.t, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.u = load i32, ptr %.pn21.i, align 4, !tbaa !220 ; 2 uses
  %i.v = ashr i32 %i.u, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !533
  %i.z = fcmp ogt double %i.n, %i.y
  br i1 %i.z, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.aa = phi i32 [ %i.ab, %.lr.ph.i.i ], [ %i.u, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn21.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.022.i.ptr, %bb.f ]
  store i32 %i.aa, ptr %.sroa.05.09.i.i, align 4, !tbaa !220
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.ab = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !220 ; 2 uses
  %i.ac = ashr i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !533
  %i.ag = fcmp ogt double %i.n, %i.af
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !2124

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %5 = phi ptr [ %4, %bb.e ], [ %.pre.i, %bb.d ], [ %4, %bb.f ], [ %4, %.lr.ph.i.i ] ; 2 uses
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.022.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  %i.ah = phi ptr [ %i.e, %bb.e ], [ %.pre.i, %bb.d ], [ %i.e, %bb.f ], [ %i.e, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !220
  %.sroa.0.022.i.add = add nuw nsw i64 %.sroa.0.022.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.022.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.b, !llvm.loop !2125

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not9.i = icmp eq ptr %i.ai, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 5520
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !891 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, %.lr.ph.i12
  %.sroa.0.010.i = phi ptr [ %i.ai, %.lr.ph.i12 ], [ %i.bd, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_T0_.exit.i ] ; 5 uses
  %i.al = load i32, ptr %.sroa.0.010.i, align 4, !tbaa !220 ; 2 uses
  %i.am = ashr i32 %i.al, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !533 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !220 ; 2 uses
  %i.ar = ashr i32 %i.aq, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !533
  %i.av = fcmp ogt double %i.ap, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_T0_.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.g, %.lr.ph.i.i14
  %i.aw = phi i32 [ %i.ax, %.lr.ph.i.i14 ], [ %i.aq, %bb.g ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %bb.g ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.010.i, %bb.g ]
  store i32 %i.aw, ptr %.sroa.05.09.i.i16, align 4, !tbaa !220
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !220 ; 2 uses
  %i.ay = ashr i32 %i.ax, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !533
  %i.bc = fcmp ogt double %i.ap, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, !llvm.loop !2124

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_T0_.exit.i: ; preds = %.lr.ph.i.i14, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.010.i, %bb.g ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.al, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !220
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.bd, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.g, !llvm.loop !2126

bb.h:                                             ; preds = %bb.a
  %i.be = icmp eq ptr %0, %1
  br i1 %i.be, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.019.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not20.i20 = icmp eq ptr %.sroa.0.019.i19, %1
  br i1 %.not20.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre24.i22 = load ptr, ptr %2, align 8, !tbaa !991
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, %.lr.ph.i21
  %i.bf = phi ptr [ %.pre24.i22, %.lr.ph.i21 ], [ %i.cp, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 5 uses
  %.sroa.0.022.i23 = phi ptr [ %.sroa.0.019.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i27, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 6 uses
  %.pn21.i24 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.022.i23, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 4 uses
  %i.bg = load i32, ptr %.sroa.0.022.i23, align 4, !tbaa !220 ; 2 uses
  %i.bh = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  %i.bi = ashr i32 %i.bg, 1
  %i.bj = ashr i32 %i.bh, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 5520
  %i.bl = sext i32 %i.bi to i64
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !891 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !533 ; 3 uses
  %i.bp = sext i32 %i.bj to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !533
  %i.bs = fcmp ogt double %i.bo, %i.br
  br i1 %i.bs, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bt = ptrtoint ptr %.sroa.0.022.i23 to i64
  %i.bu = sub i64 %i.bt, %i.b                     ; 3 uses
  %i.bv = ashr exact i64 %i.bu, 2                 ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 1
  br i1 %i.bw, label %bb.k, label %bb.l, !prof !291

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 8
  %i.by = sub nsw i64 0, %i.bv
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.by
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bz, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bu, i1 false)
  %.pre.i33 = load ptr, ptr %2, align 8, !tbaa !991
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.l:                                             ; preds = %bb.j
  %i.ca = icmp eq i64 %i.bu, 4
  br i1 %i.ca, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 4
  store i32 %i.bh, ptr %i.cb, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.n:                                             ; preds = %bb.i
  %i.cc = load i32, ptr %.pn21.i24, align 4, !tbaa !220 ; 2 uses
  %i.cd = ashr i32 %i.cc, 1
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !533
  %i.ch = fcmp ogt double %i.bo, %i.cg
  br i1 %i.ch, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

.lr.ph.i.i29:                                     ; preds = %bb.n, %.lr.ph.i.i29
  %i.ci = phi i32 [ %i.cj, %.lr.ph.i.i29 ], [ %i.cc, %bb.n ]
  %.sroa.0.010.i.i30 = phi ptr [ %.sroa.0.0.i.i32, %.lr.ph.i.i29 ], [ %.pn21.i24, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i31 = phi ptr [ %.sroa.0.010.i.i30, %.lr.ph.i.i29 ], [ %.sroa.0.022.i23, %bb.n ]
  store i32 %i.ci, ptr %.sroa.05.09.i.i31, align 4, !tbaa !220
  %.sroa.0.0.i.i32 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i30, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %.sroa.0.0.i.i32, align 4, !tbaa !220 ; 2 uses
  %i.ck = ashr i32 %i.cj, 1
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !533
  %i.co = fcmp ogt double %i.bo, %i.cn
  br i1 %i.co, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, !llvm.loop !2124

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25: ; preds = %.lr.ph.i.i29, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i26 = phi ptr [ %0, %bb.m ], [ %0, %bb.k ], [ %0, %bb.l ], [ %.sroa.0.022.i23, %bb.n ], [ %.sroa.0.010.i.i30, %.lr.ph.i.i29 ]
  %i.cp = phi ptr [ %i.bf, %bb.m ], [ %.pre.i33, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.n ], [ %i.bf, %.lr.ph.i.i29 ]
  store i32 %i.bg, ptr %.sink.i26, align 4, !tbaa !220
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i23, i64 4 ; 2 uses
  %.not.i28 = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %.not.i28, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.i, !llvm.loop !2125

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !303 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !220  ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.g, ptr %i.e, align 4, !tbaa !220
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = lshr i64 %i.k, 1
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.n = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !991
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5520
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !891  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.037.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.q = shl i64 %.037.i.i, 1                     ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = load i32, ptr %i.s, align 4, !tbaa !220
  %i.w = load i32, ptr %i.u, align 4, !tbaa !220
  %i.x = ashr i32 %i.v, 1
  %i.y = ashr i32 %i.w, 1
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !533
  %i.ac = sext i32 %i.y to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !533
  %i.af = fcmp ogt double %i.ab, %i.ae
  %spec.select.i.i = select i1 %i.af, i64 %i.t, i64 %i.r ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !220
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i.i
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !220
  %i.aj = icmp slt i64 %spec.select.i.i, %i.l
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i, !llvm.loop !84

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.i, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.am = add nsw i64 %i.j, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i, %i.an
end_hunk_1
begin_hunk_2_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE13_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_:bb.a
  %i.ad = tail call noundef zeroext i1 @_ZZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE10SortFaninsEiENKUliiE13_clEii(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.ab, i32 noundef %i.ac)
  %i.ae = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %3, align 4, !tbaa !220
  store i32 %i.af, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %3, align 4, !tbaa !220
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %2, align 4, !tbaa !220
  store i32 %i.ag, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %2, align 4, !tbaa !220
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_SH_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit
  %i.h = icmp eq i64 %i.cd, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph41, !llvm.loop !2138

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.cg, %bb.b ] ; 2 uses
  %storemerge22.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.lcssa.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !220
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_SM_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa, i32 noundef %i.l, ptr %3, ptr %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !2139

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.05.i.i = phi ptr [ %i.n, %.lr.ph.i9.i ], [ %storemerge22.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !220
  %i.p = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.p, ptr %i.n, align 4, !tbaa !220
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_SM_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i32 noundef %i.o, ptr %3, ptr %4)
  %i.t = icmp sgt i64 %i.r, 4
  br i1 %i.t, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_SH_T0_.exit, !llvm.loop !2140

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2240 = phi ptr [ %.sroa.014.1.lcssa.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02339 = phi i64 [ %i.cd, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cg, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = lshr i64 %i.u, 1
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %storemerge2240, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_(ptr %0, ptr nonnull %i.f, ptr %i.w, ptr nonnull %i.x, ptr %3, ptr %4)
  %i.y = load ptr, ptr %3, align 8, !tbaa !995    ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !852
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !224 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 5520 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph41
  %.sroa.011.0.i.i = phi ptr [ %storemerge2240, %.lr.ph41 ], [ %.sroa.011.1.lcssa.i.i, %bb.e ]
  %.sroa.014.0.i.i = phi ptr [ %i.f, %.lr.ph41 ], [ %i.cc, %bb.e ] ; 3 uses
  %i.ad = load i32, ptr %0, align 4, !tbaa !220
  %i.ae = ashr i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !220 ; 6 uses
  %i.ai = load i32, ptr %.sroa.014.0.i.i, align 4, !tbaa !220 ; 3 uses
  %i.aj = ashr i32 %i.ai, 1
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !220 ; 2 uses
  %i.an = icmp sgt i32 %i.am, %i.ah
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i
  %i.ao = phi i32 [ %i.bd, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i ], [ %i.am, %bb.d ]
  %i.ap = phi i64 [ %i.bb, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i ], [ %i.ak, %bb.d ]
  %i.aq = phi i32 [ %i.az, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i ], [ %i.ai, %bb.d ]
  %.sroa.014.128.i.i = phi ptr [ %i.ay, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i ], [ %.sroa.014.0.i.i, %bb.d ] ; 2 uses
  %i.ar = icmp slt i32 %i.ao, %i.ah
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !891 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ap
  %i.au = load double, ptr %i.at, align 8, !tbaa !533
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.af
  %i.aw = load double, ptr %i.av, align 8, !tbaa !533
  %i.ax = fcmp ogt double %i.au, %i.aw
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i.i, %.lr.ph.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.014.128.i.i, i64 4 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !220 ; 3 uses
  %i.ba = ashr i32 %i.az, 1
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !220 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, %i.ah
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i, label %.lr.ph.i.i, !llvm.loop !2141

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i.i, %bb.d
  %.sroa.014.1.lcssa.i.i = phi ptr [ %.sroa.014.0.i.i, %bb.d ], [ %i.ay, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i ], [ %.sroa.014.128.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i.i ] ; 7 uses
  %.lcssa26.i.i = phi i32 [ %i.ai, %bb.d ], [ %i.az, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i ], [ %i.aq, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i.i ]
  %.sroa.011.140.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.i.i, i64 -4 ; 3 uses
  %i.bf = load i32, ptr %.sroa.011.140.i.i, align 4, !tbaa !220 ; 3 uses
  %i.bg = ashr i32 %i.bf, 1
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !220 ; 2 uses
  %i.bk = icmp sgt i32 %i.ah, %i.bj
  br i1 %i.bk, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread21.i.i, label %.lr.ph42.i.i

.lr.ph42.i.i:                                     ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i
  %i.bl = phi i32 [ %i.bz, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i ], [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i ]
  %i.bm = phi i64 [ %i.bx, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i ], [ %i.bh, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i ]
  %i.bn = phi i32 [ %i.bv, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i ], [ %i.bf, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i ]
  %.sroa.011.141.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i ], [ %.sroa.011.140.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i ] ; 2 uses
  %i.bo = icmp slt i32 %i.ah, %i.bl
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.i.i: ; preds = %.lr.ph42.i.i
  %i.bp = load ptr, ptr %i.ac, align 8, !tbaa !891 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.af
  %i.br = load double, ptr %i.bq, align 8, !tbaa !533
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bm
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !533
  %i.bu = fcmp ogt double %i.br, %i.bt
  br i1 %i.bu, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread21.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.i.i, %.lr.ph42.i.i
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.141.i.i, i64 -4 ; 3 uses
  %i.bv = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !220 ; 3 uses
  %i.bw = ashr i32 %i.bv, 1
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !220 ; 2 uses
  %i.ca = icmp sgt i32 %i.ah, %i.bz
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread21.i.i, label %.lr.ph42.i.i, !llvm.loop !2142

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread21.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i
  %.sroa.011.1.lcssa.i.i = phi ptr [ %.sroa.011.140.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i ], [ %.sroa.011.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i ], [ %.sroa.011.141.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.i.i ] ; 3 uses
  %.lcssa27.i.i = phi i32 [ %i.bf, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i ], [ %i.bv, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i ], [ %i.bn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.i.i ]
  %i.cb = icmp ult ptr %.sroa.014.1.lcssa.i.i, %.sroa.011.1.lcssa.i.i
  br i1 %i.cb, label %bb.e, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread21.i.i
  store i32 %.lcssa27.i.i, ptr %.sroa.014.1.lcssa.i.i, align 4, !tbaa !220
  store i32 %.lcssa26.i.i, ptr %.sroa.011.1.lcssa.i.i, align 4, !tbaa !220
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.014.1.lcssa.i.i, i64 4
  br label %bb.d, !llvm.loop !2143

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread21.i.i
  %i.cd = add nsw i64 %.02339, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_T1_(ptr %.sroa.014.1.lcssa.i.i, ptr %storemerge2240, i64 noundef %i.cd, ptr nonnull %3, ptr %4)
  %i.ce = ptrtoint ptr %.sroa.014.1.lcssa.i.i to i64
  %i.cf = sub i64 %i.ce, %i.a
  %i.cg = ashr exact i64 %i.cf, 2                 ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, 16
  br i1 %i.ch, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_SH_T0_.exit, !llvm.loop !2138

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre26.i = load ptr, ptr %2, align 8, !tbaa !995 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %4 = phi ptr [ %.pre26.i, %.lr.ph.i ], [ %5, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %i.e = phi ptr [ %.pre26.i, %.lr.ph.i ], [ %i.bc, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 7 uses
  %.sroa.0.025.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.025.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.025.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.025.i.ptr, align 4, !tbaa !220 ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220    ; 2 uses
  %i.h = ashr i32 %i.f, 1
  %i.i = ashr i32 %i.g, 1
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !852
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.l = sext i32 %i.h to i64                     ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !224  ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !220  ; 4 uses
  %i.p = sext i32 %i.i to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !220  ; 2 uses
  %i.s = icmp sgt i32 %i.o, %i.r
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = icmp slt i32 %i.o, %i.r
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 5520
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !891  ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.l
  %i.x = load double, ptr %i.w, align 8, !tbaa !533
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.p
  %i.z = load double, ptr %i.y, align 8, !tbaa !533
  %i.aa = fcmp ogt double %i.x, %i.z
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i, %bb.c
  %i.ab = icmp samesign ugt i64 %.sroa.0.025.i.idx, 4
  br i1 %i.ab, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.025.i.idx, i1 false)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !995 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 4
  store i32 %i.g, ptr %i.ac, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i, %bb.b
  %i.ad = load i32, ptr %.pn24.i, align 4, !tbaa !220 ; 2 uses
  %i.ae = ashr i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !220 ; 2 uses
  %i.ai = icmp sgt i32 %i.o, %i.ah
  br i1 %i.ai, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 5520
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i, %.lr.ph.i.i
  %i.ak = phi i32 [ %i.ah, %.lr.ph.i.i ], [ %i.ba, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ]
  %i.al = phi i64 [ %i.af, %.lr.ph.i.i ], [ %i.ay, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ]
  %i.am = phi i32 [ %i.o, %.lr.ph.i.i ], [ %i.ax, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ]
  %i.an = phi i32 [ %i.ad, %.lr.ph.i.i ], [ %i.av, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ]
  %.sroa.0.013.i.i = phi ptr [ %.pn24.i, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ] ; 3 uses
  %.sroa.05.012.i.i = phi ptr [ %.sroa.0.025.i.ptr, %.lr.ph.i.i ], [ %.sroa.0.013.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ] ; 2 uses
  %i.ao = icmp slt i32 %i.am, %i.ak
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i: ; preds = %bb.f
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !891 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.l
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !533
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.al
  %i.at = load double, ptr %i.as, align 8, !tbaa !533
  %i.au = fcmp ogt double %i.ar, %i.at
  br i1 %i.au, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i, %bb.f
  store i32 %i.an, ptr %.sroa.05.012.i.i, align 4, !tbaa !220
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -4 ; 2 uses
  %i.av = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !220 ; 2 uses
  %i.aw = ashr i32 %i.av, 1
  %i.ax = load i32, ptr %i.n, align 4, !tbaa !220 ; 2 uses
  %i.ay = sext i32 %i.aw to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !220 ; 2 uses
  %i.bb = icmp sgt i32 %i.ax, %i.ba
  br i1 %i.bb, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, label %bb.f, !llvm.loop !2144

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i, %bb.e, %bb.d
  %5 = phi ptr [ %4, %bb.e ], [ %.pre.i, %bb.d ], [ %4, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i ], [ %4, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i ], [ %4, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ] ; 3 uses
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.025.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i ], [ %.sroa.0.013.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ], [ %.sroa.05.012.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i ]
  %i.bc = phi ptr [ %i.e, %bb.e ], [ %.pre.i, %bb.d ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i ], [ %i.e, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i ], [ %i.e, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !220
  %.sroa.0.025.i.add = add nuw nsw i64 %.sroa.0.025.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.025.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.b, !llvm.loop !2145

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not9.i = icmp eq ptr %i.bd, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit
  %i.be = load ptr, ptr %5, align 8, !tbaa !852
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !224 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 5520
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, %.lr.ph.i12
  %.sroa.0.010.i = phi ptr [ %i.bd, %.lr.ph.i12 ], [ %i.cl, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_.exit.i ] ; 5 uses
  %i.bi = load i32, ptr %.sroa.0.010.i, align 4, !tbaa !220 ; 2 uses
  %i.bj = ashr i32 %i.bi, 1
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  %.sroa.0.011.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -4 ; 2 uses
  %i.bm = load i32, ptr %.sroa.0.011.i.i, align 4, !tbaa !220 ; 2 uses
  %i.bn = ashr i32 %i.bm, 1
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !220 ; 2 uses
  %i.bp = sext i32 %i.bn to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !220 ; 2 uses
  %i.bs = icmp sgt i32 %i.bo, %i.br
  br i1 %i.bs, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %bb.g, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18
  %i.bt = phi i32 [ %i.cj, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18 ], [ %i.br, %bb.g ]
  %i.bu = phi i64 [ %i.ch, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18 ], [ %i.bp, %bb.g ]
  %i.bv = phi i32 [ %i.cg, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18 ], [ %i.bo, %bb.g ]
  %i.bw = phi i32 [ %i.ce, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18 ], [ %i.bm, %bb.g ]
  %.sroa.0.013.i.i14 = phi ptr [ %.sroa.0.0.i.i19, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18 ], [ %.sroa.0.011.i.i, %bb.g ] ; 3 uses
  %.sroa.05.012.i.i15 = phi ptr [ %.sroa.0.013.i.i14, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18 ], [ %.sroa.0.010.i, %bb.g ] ; 2 uses
  %i.bx = icmp slt i32 %i.bv, %i.bt
  br i1 %i.bx, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i16

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i16: ; preds = %.lr.ph.i.i13
  %i.by = load ptr, ptr %i.bh, align 8, !tbaa !891 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bk
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !533
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bu
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !533
  %i.cd = fcmp ogt double %i.ca, %i.cc
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i16, %.lr.ph.i.i13
  store i32 %i.bw, ptr %.sroa.05.012.i.i15, align 4, !tbaa !220
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.013.i.i14, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %.sroa.0.0.i.i19, align 4, !tbaa !220 ; 2 uses
  %i.cf = ashr i32 %i.ce, 1
  %i.cg = load i32, ptr %i.bl, align 4, !tbaa !220 ; 2 uses
  %i.ch = sext i32 %i.cf to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !220 ; 2 uses
  %i.ck = icmp sgt i32 %i.cg, %i.cj
  br i1 %i.ck, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, label %.lr.ph.i.i13, !llvm.loop !2144

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i16, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.010.i, %bb.g ], [ %.sroa.0.013.i.i14, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18 ], [ %.sroa.05.012.i.i15, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i16 ]
  store i32 %i.bi, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !220
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 4 ; 2 uses
  %.not.i17 = icmp eq ptr %i.cl, %1
  br i1 %.not.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.g, !llvm.loop !2146

bb.h:                                             ; preds = %bb.a
  %i.cm = icmp eq ptr %0, %1
  br i1 %i.cm, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.h
  %.sroa.0.022.i21 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not23.i22 = icmp eq ptr %.sroa.0.022.i21, %1
  br i1 %.not23.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %.pre26.i24 = load ptr, ptr %2, align 8, !tbaa !995
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33, %.lr.ph.i23
  %i.cn = phi ptr [ %.pre26.i24, %.lr.ph.i23 ], [ %i.es, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33 ] ; 8 uses
  %.sroa.0.025.i25 = phi ptr [ %.sroa.0.022.i21, %.lr.ph.i23 ], [ %.sroa.0.0.i35, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33 ] ; 6 uses
  %.pn24.i26 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.0.025.i25, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33 ] ; 4 uses
  %i.co = load i32, ptr %.sroa.0.025.i25, align 4, !tbaa !220 ; 2 uses
  %i.cp = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  %i.cq = ashr i32 %i.co, 1
  %i.cr = ashr i32 %i.cp, 1
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !852
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 152
  %i.cu = sext i32 %i.cq to i64                   ; 3 uses
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !224 ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !220 ; 4 uses
  %i.cy = sext i32 %i.cr to i64                   ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !220 ; 2 uses
  %i.db = icmp sgt i32 %i.cx, %i.da
  br i1 %i.db, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i28, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = icmp slt i32 %i.cx, %i.da
  br i1 %i.dc, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i39, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i27

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i27: ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 5520
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !891 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.cu
  %i.dg = load double, ptr %i.df, align 8, !tbaa !533
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.cy
  %i.di = load double, ptr %i.dh, align 8, !tbaa !533
  %i.dj = fcmp ogt double %i.dg, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i39, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i28

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i39: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i27, %bb.j
  %i.dk = ptrtoint ptr %.sroa.0.025.i25 to i64
  %i.dl = sub i64 %i.dk, %i.b                     ; 3 uses
  %i.dm = ashr exact i64 %i.dl, 2                 ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, 1
  br i1 %i.dn, label %bb.k, label %bb.l, !prof !291

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i39
  %i.do = getelementptr inbounds nuw i8, ptr %.pn24.i26, i64 8
  %i.dp = sub nsw i64 0, %i.dm
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dp
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dq, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.dl, i1 false)
  %.pre.i40 = load ptr, ptr %2, align 8, !tbaa !995
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i39
  %i.dr = icmp eq i64 %i.dl, 4
  br i1 %i.dr, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33

bb.m:                                             ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %.pn24.i26, i64 4
  store i32 %i.cp, ptr %i.ds, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i28: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i27, %bb.i
  %i.dt = load i32, ptr %.pn24.i26, align 4, !tbaa !220 ; 2 uses
  %i.du = ashr i32 %i.dt, 1
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !220 ; 2 uses
  %i.dy = icmp sgt i32 %i.cx, %i.dx
  br i1 %i.dy, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i28
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cn, i64 5520
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37, %.lr.ph.i.i29
  %i.ea = phi i32 [ %i.dx, %.lr.ph.i.i29 ], [ %i.eq, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ]
  %i.eb = phi i64 [ %i.dv, %.lr.ph.i.i29 ], [ %i.eo, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ]
  %i.ec = phi i32 [ %i.cx, %.lr.ph.i.i29 ], [ %i.en, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ]
  %i.ed = phi i32 [ %i.dt, %.lr.ph.i.i29 ], [ %i.el, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ]
  %.sroa.0.013.i.i30 = phi ptr [ %.pn24.i26, %.lr.ph.i.i29 ], [ %.sroa.0.0.i.i38, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ] ; 3 uses
  %.sroa.05.012.i.i31 = phi ptr [ %.sroa.0.025.i25, %.lr.ph.i.i29 ], [ %.sroa.0.013.i.i30, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ] ; 2 uses
  %i.ee = icmp slt i32 %i.ec, %i.ea
  br i1 %i.ee, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i32

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i32: ; preds = %bb.n
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !891 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.cu
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !533
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eb
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !533
  %i.ek = fcmp ogt double %i.eh, %i.ej
  br i1 %i.ek, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i32, %bb.n
  store i32 %i.ed, ptr %.sroa.05.012.i.i31, align 4, !tbaa !220
  %.sroa.0.0.i.i38 = getelementptr inbounds i8, ptr %.sroa.0.013.i.i30, i64 -4 ; 2 uses
  %i.el = load i32, ptr %.sroa.0.0.i.i38, align 4, !tbaa !220 ; 2 uses
  %i.em = ashr i32 %i.el, 1
  %i.en = load i32, ptr %i.cw, align 4, !tbaa !220 ; 2 uses
  %i.eo = sext i32 %i.em to i64                   ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !220 ; 2 uses
  %i.er = icmp sgt i32 %i.en, %i.eq
  br i1 %i.er, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33, label %bb.n, !llvm.loop !2144

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i32, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i28, %bb.m, %bb.l, %bb.k
  %.sink.i34 = phi ptr [ %0, %bb.m ], [ %0, %bb.k ], [ %0, %bb.l ], [ %.sroa.0.025.i25, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i28 ], [ %.sroa.0.013.i.i30, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ], [ %.sroa.05.012.i.i31, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i32 ]
  %i.es = phi ptr [ %i.cn, %bb.m ], [ %.pre.i40, %bb.k ], [ %i.cn, %bb.l ], [ %i.cn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i28 ], [ %i.cn, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i32 ], [ %i.cn, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ]
  store i32 %i.co, ptr %.sink.i34, align 4, !tbaa !220
  %.sroa.0.0.i35 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i25, i64 4 ; 2 uses
  %.not.i36 = icmp eq ptr %.sroa.0.0.i35, %1
  br i1 %.not.i36, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.i, !llvm.loop !2145

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, %.preheader.i20, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_11BddAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_SM_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !995    ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !852
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !224  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 5520
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_11BddAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread39
end_hunk_2
begin_hunk_3_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE1_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_:bb.a

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %3, align 4, !tbaa !220
  store i32 %i.af, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %3, align 4, !tbaa !220
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %2, align 4, !tbaa !220
  store i32 %i.ag, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %2, align 4, !tbaa !220
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.634", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.634", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit
  %i.h = icmp eq i64 %i.l, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph40, !llvm.loop !2854

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.j, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_RT0_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_RT0_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2039 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02138 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.bm, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.02138, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %storemerge2039, i64 -4 ; 3 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !220  ; 3 uses
  %i.q = load i32, ptr %i.n, align 4, !tbaa !220  ; 3 uses
  %i.r = ashr i32 %i.p, 1
  %i.s = ashr i32 %i.q, 1
  %i.t = load ptr, ptr %3, align 8, !tbaa !1095
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1054
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.w = sext i32 %i.r to i64
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !224  ; 6 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w
  %i.z = load i32, ptr %i.y, align 4, !tbaa !220  ; 3 uses
  %i.aa = sext i32 %i.s to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !220 ; 3 uses
  %i.ad = icmp slt i32 %i.z, %i.ac
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !220 ; 3 uses
  %i.af = ashr i32 %i.ae, 1
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !220 ; 4 uses
  br i1 %i.ad, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph40
  %i.aj = icmp slt i32 %i.ac, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.q, ptr %0, align 4, !tbaa !220
  store i32 %i.ak, ptr %i.n, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.al = icmp slt i32 %i.z, %i.ai
  %i.am = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ae, ptr %0, align 4, !tbaa !220
  store i32 %i.am, ptr %i.o, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 4, !tbaa !220
  store i32 %i.am, ptr %i.f, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph40
  %i.an = icmp slt i32 %i.z, %i.ai
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.p, ptr %0, align 4, !tbaa !220
  store i32 %i.ao, ptr %i.f, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ap = icmp slt i32 %i.ac, %i.ai
  %i.aq = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.ae, ptr %0, align 4, !tbaa !220
  store i32 %i.aq, ptr %i.o, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 4, !tbaa !220
  store i32 %i.aq, ptr %i.n, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader, %bb.o
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.o ], [ %storemerge2039, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.bc, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %i.ar = load i32, ptr %0, align 4, !tbaa !220
  %i.as = ashr i32 %i.ar, 1
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !220 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i ], [ %i.bc, %bb.m ] ; 8 uses
  %i.aw = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !220 ; 2 uses
  %i.ax = ashr i32 %i.aw, 1
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !220
  %i.bb = icmp slt i32 %i.ba, %i.av
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.bb, label %bb.m, label %.preheader.i.i, !llvm.loop !2855

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.m ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.bd = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !220 ; 2 uses
  %i.be = ashr i32 %i.bd, 1
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !220
  %i.bi = icmp slt i32 %i.av, %i.bh
  br i1 %i.bi, label %.preheader.i.i, label %bb.n, !llvm.loop !2856

bb.n:                                             ; preds = %.preheader.i.i
  %i.bj = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.bj, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.bd, ptr %.sroa.012.1.i.i, align 4, !tbaa !220
  store i32 %i.aw, ptr %.sroa.09.1.i.i, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i, !llvm.loop !2857

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2039, i64 noundef %i.l, ptr nonnull %3, ptr %4)
  %i.bk = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bl = sub i64 %i.bk, %i.a
  %i.bm = ashr exact i64 %i.bl, 2                 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 16
  br i1 %i.bn, label %bb.b, label %.loopexit, !llvm.loop !2854

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !1095 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %4 = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %5, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %i.e = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %i.aj, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.sroa.0.022.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.022.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn21.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.022.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.022.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.022.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.022.i.ptr, align 4, !tbaa !220 ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220    ; 2 uses
  %i.h = ashr i32 %i.f, 1
  %i.i = ashr i32 %i.g, 1
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !1054
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.l = sext i32 %i.h to i64
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !224  ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !220  ; 2 uses
  %i.p = sext i32 %i.i to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !220
  %i.s = icmp slt i32 %i.o, %i.r
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = icmp samesign ugt i64 %.sroa.0.022.i.idx, 4
  br i1 %i.t, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.022.i.idx, i1 false)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !1095 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 4
  store i32 %i.g, ptr %i.u, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.v = load i32, ptr %.pn21.i, align 4, !tbaa !220 ; 2 uses
  %i.w = ashr i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !220
  %i.aa = icmp slt i32 %i.o, %i.z
  br i1 %i.aa, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.ab = phi i32 [ %i.ac, %.lr.ph.i.i ], [ %i.v, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn21.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.022.i.ptr, %bb.f ]
  store i32 %i.ab, ptr %.sroa.05.09.i.i, align 4, !tbaa !220
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.ac = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !220 ; 2 uses
  %i.ad = ashr i32 %i.ac, 1
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !220
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !220
  %i.ai = icmp slt i32 %i.ae, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !2858

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %5 = phi ptr [ %4, %bb.e ], [ %.pre.i, %bb.d ], [ %4, %bb.f ], [ %4, %.lr.ph.i.i ] ; 2 uses
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.022.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  %i.aj = phi ptr [ %i.e, %bb.e ], [ %.pre.i, %bb.d ], [ %i.e, %bb.f ], [ %i.e, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !220
  %.sroa.0.022.i.add = add nuw nsw i64 %.sroa.0.022.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.022.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.b, !llvm.loop !2859

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not9.i = icmp eq ptr %i.ak, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit
  %i.al = load ptr, ptr %5, align 8, !tbaa !1054
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !224 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, %.lr.ph.i12
  %.sroa.0.010.i = phi ptr [ %i.ak, %.lr.ph.i12 ], [ %i.bh, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_T0_.exit.i ] ; 5 uses
  %i.ao = load i32, ptr %.sroa.0.010.i, align 4, !tbaa !220 ; 2 uses
  %i.ap = ashr i32 %i.ao, 1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aq ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -4 ; 2 uses
  %i.as = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !220 ; 2 uses
  %i.at = ashr i32 %i.as, 1
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !220
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !220
  %i.ay = icmp slt i32 %i.au, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_T0_.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.g, %.lr.ph.i.i14
  %i.az = phi i32 [ %i.ba, %.lr.ph.i.i14 ], [ %i.as, %bb.g ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %bb.g ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.010.i, %bb.g ]
  store i32 %i.az, ptr %.sroa.05.09.i.i16, align 4, !tbaa !220
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.ba = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !220 ; 2 uses
  %i.bb = ashr i32 %i.ba, 1
  %i.bc = load i32, ptr %i.ar, align 4, !tbaa !220
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !220
  %i.bg = icmp slt i32 %i.bc, %i.bf
  br i1 %i.bg, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, !llvm.loop !2858

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_T0_.exit.i: ; preds = %.lr.ph.i.i14, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.010.i, %bb.g ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ao, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !220
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.bh, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.g, !llvm.loop !2860

bb.h:                                             ; preds = %bb.a
  %i.bi = icmp eq ptr %0, %1
  br i1 %i.bi, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.019.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not20.i20 = icmp eq ptr %.sroa.0.019.i19, %1
  br i1 %.not20.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre24.i22 = load ptr, ptr %2, align 8, !tbaa !1095
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, %.lr.ph.i21
  %i.bj = phi ptr [ %.pre24.i22, %.lr.ph.i21 ], [ %i.cv, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 5 uses
  %.sroa.0.022.i23 = phi ptr [ %.sroa.0.019.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i27, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 6 uses
  %.pn21.i24 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.022.i23, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 4 uses
  %i.bk = load i32, ptr %.sroa.0.022.i23, align 4, !tbaa !220 ; 2 uses
  %i.bl = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  %i.bm = ashr i32 %i.bk, 1
  %i.bn = ashr i32 %i.bl, 1
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !1054
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 152
  %i.bq = sext i32 %i.bm to i64
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !224 ; 4 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bq ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !220 ; 2 uses
  %i.bu = sext i32 %i.bn to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !220
  %i.bx = icmp slt i32 %i.bt, %i.bw
  br i1 %i.bx, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.by = ptrtoint ptr %.sroa.0.022.i23 to i64
  %i.bz = sub i64 %i.by, %i.b                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 2                 ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, 1
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !291

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 8
  %i.cd = sub nsw i64 0, %i.ca
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ce, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bz, i1 false)
  %.pre.i33 = load ptr, ptr %2, align 8, !tbaa !1095
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.l:                                             ; preds = %bb.j
  %i.cf = icmp eq i64 %i.bz, 4
  br i1 %i.cf, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 4
  store i32 %i.bl, ptr %i.cg, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.n:                                             ; preds = %bb.i
  %i.ch = load i32, ptr %.pn21.i24, align 4, !tbaa !220 ; 2 uses
  %i.ci = ashr i32 %i.ch, 1
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !220
  %i.cm = icmp slt i32 %i.bt, %i.cl
  br i1 %i.cm, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

.lr.ph.i.i29:                                     ; preds = %bb.n, %.lr.ph.i.i29
  %i.cn = phi i32 [ %i.co, %.lr.ph.i.i29 ], [ %i.ch, %bb.n ]
  %.sroa.0.010.i.i30 = phi ptr [ %.sroa.0.0.i.i32, %.lr.ph.i.i29 ], [ %.pn21.i24, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i31 = phi ptr [ %.sroa.0.010.i.i30, %.lr.ph.i.i29 ], [ %.sroa.0.022.i23, %bb.n ]
  store i32 %i.cn, ptr %.sroa.05.09.i.i31, align 4, !tbaa !220
  %.sroa.0.0.i.i32 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i30, i64 -4 ; 2 uses
  %i.co = load i32, ptr %.sroa.0.0.i.i32, align 4, !tbaa !220 ; 2 uses
  %i.cp = ashr i32 %i.co, 1
  %i.cq = load i32, ptr %i.bs, align 4, !tbaa !220
  %i.cr = sext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !220
  %i.cu = icmp slt i32 %i.cq, %i.ct
  br i1 %i.cu, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, !llvm.loop !2858

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25: ; preds = %.lr.ph.i.i29, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i26 = phi ptr [ %0, %bb.m ], [ %0, %bb.k ], [ %0, %bb.l ], [ %.sroa.0.022.i23, %bb.n ], [ %.sroa.0.010.i.i30, %.lr.ph.i.i29 ]
  %i.cv = phi ptr [ %i.bj, %bb.m ], [ %.pre.i33, %bb.k ], [ %i.bj, %bb.l ], [ %i.bj, %bb.n ], [ %i.bj, %.lr.ph.i.i29 ]
  store i32 %i.bk, ptr %.sink.i26, align 4, !tbaa !220
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i23, i64 4 ; 2 uses
  %.not.i28 = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %.not.i28, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.i, !llvm.loop !2859

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !303 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSH_SH_SH_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !220  ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.g, ptr %i.e, align 4, !tbaa !220
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = lshr i64 %i.k, 1
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.n = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !1095
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1054
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !224  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.037.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.r = shl i64 %.037.i.i, 1                     ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !220
  %i.x = load i32, ptr %i.v, align 4, !tbaa !220
  %i.y = ashr i32 %i.w, 1
  %i.z = ashr i32 %i.x, 1
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !220
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !220
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.i = select i1 %i.ag, i64 %i.u, i64 %i.s ; 4 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !220
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i.i
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !220
  %i.ak = icmp slt i64 %spec.select.i.i, %i.l
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.i, !llvm.loop !121

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 5 uses
  %i.al = and i64 %i.i, 4
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e
end_hunk_3
begin_hunk_4_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE11_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_:bb.a
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %3, align 4, !tbaa !220
  store i32 %i.af, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %3, align 4, !tbaa !220
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %2, align 4, !tbaa !220
  store i32 %i.ag, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %2, align 4, !tbaa !220
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.674", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.674", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit
  %i.h = icmp eq i64 %i.l, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph40, !llvm.loop !2944

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.j, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_RT0_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_RT0_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2039 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02138 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.bl, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.02138, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %storemerge2039, i64 -4 ; 3 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !220  ; 3 uses
  %i.q = load i32, ptr %i.n, align 4, !tbaa !220  ; 3 uses
  %i.r = ashr i32 %i.p, 1
  %i.s = ashr i32 %i.q, 1
  %i.t = load ptr, ptr %3, align 8, !tbaa !1115
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5552
  %i.v = sext i32 %i.r to i64
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !891  ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load double, ptr %i.x, align 8, !tbaa !533 ; 3 uses
  %i.z = sext i32 %i.s to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !533 ; 3 uses
  %i.ac = fcmp ogt double %i.y, %i.ab
  %i.ad = load i32, ptr %i.o, align 4, !tbaa !220 ; 3 uses
  %i.ae = ashr i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !533 ; 4 uses
  br i1 %i.ac, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph40
  %i.ai = fcmp ogt double %i.ab, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.q, ptr %0, align 4, !tbaa !220
  store i32 %i.aj, ptr %i.n, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.ak = fcmp ogt double %i.y, %i.ah
  %i.al = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ad, ptr %0, align 4, !tbaa !220
  store i32 %i.al, ptr %i.o, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 4, !tbaa !220
  store i32 %i.al, ptr %i.f, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph40
  %i.am = fcmp ogt double %i.y, %i.ah
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.p, ptr %0, align 4, !tbaa !220
  store i32 %i.an, ptr %i.f, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ao = fcmp ogt double %i.ab, %i.ah
  %i.ap = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.ad, ptr %0, align 4, !tbaa !220
  store i32 %i.ap, ptr %i.o, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 4, !tbaa !220
  store i32 %i.ap, ptr %i.n, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader, %bb.o
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.o ], [ %storemerge2039, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.bb, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %i.aq = load i32, ptr %0, align 4, !tbaa !220
  %i.ar = ashr i32 %i.aq, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !533 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i ], [ %i.bb, %bb.m ] ; 8 uses
  %i.av = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !220 ; 2 uses
  %i.aw = ashr i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !533
  %i.ba = fcmp ogt double %i.az, %i.au
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.ba, label %bb.m, label %.preheader.i.i, !llvm.loop !2945

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.m ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.bc = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !220 ; 2 uses
  %i.bd = ashr i32 %i.bc, 1
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !533
  %i.bh = fcmp ogt double %i.au, %i.bg
  br i1 %i.bh, label %.preheader.i.i, label %bb.n, !llvm.loop !2946

bb.n:                                             ; preds = %.preheader.i.i
  %i.bi = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.bi, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.bc, ptr %.sroa.012.1.i.i, align 4, !tbaa !220
  store i32 %i.av, ptr %.sroa.09.1.i.i, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_.exit.i, !llvm.loop !2947

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2039, i64 noundef %i.l, ptr nonnull %3, ptr %4)
  %i.bj = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bk = sub i64 %i.bj, %i.a
  %i.bl = ashr exact i64 %i.bk, 2                 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 16
  br i1 %i.bm, label %bb.b, label %.loopexit, !llvm.loop !2944

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !1115 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %4 = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %5, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %i.e = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %i.ah, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.sroa.0.022.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.022.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn21.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.022.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.022.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.022.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.022.i.ptr, align 4, !tbaa !220 ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220    ; 2 uses
  %i.h = ashr i32 %i.f, 1
  %i.i = ashr i32 %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 5552
  %i.k = sext i32 %i.h to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !891  ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load double, ptr %i.m, align 8, !tbaa !533 ; 3 uses
  %i.o = sext i32 %i.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.o
  %i.q = load double, ptr %i.p, align 8, !tbaa !533
  %i.r = fcmp ogt double %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ugt i64 %.sroa.0.022.i.idx, 4
  br i1 %i.s, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.022.i.idx, i1 false)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !1115 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 4
  store i32 %i.g, ptr %i.t, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.u = load i32, ptr %.pn21.i, align 4, !tbaa !220 ; 2 uses
  %i.v = ashr i32 %i.u, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !533
  %i.z = fcmp ogt double %i.n, %i.y
  br i1 %i.z, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.aa = phi i32 [ %i.ab, %.lr.ph.i.i ], [ %i.u, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn21.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.022.i.ptr, %bb.f ]
  store i32 %i.aa, ptr %.sroa.05.09.i.i, align 4, !tbaa !220
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.ab = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !220 ; 2 uses
  %i.ac = ashr i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !533
  %i.ag = fcmp ogt double %i.n, %i.af
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !2948

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %5 = phi ptr [ %4, %bb.e ], [ %.pre.i, %bb.d ], [ %4, %bb.f ], [ %4, %.lr.ph.i.i ] ; 2 uses
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.022.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  %i.ah = phi ptr [ %i.e, %bb.e ], [ %.pre.i, %bb.d ], [ %i.e, %bb.f ], [ %i.e, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !220
  %.sroa.0.022.i.add = add nuw nsw i64 %.sroa.0.022.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.022.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.b, !llvm.loop !2949

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not9.i = icmp eq ptr %i.ai, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 5552
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !891 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, %.lr.ph.i12
  %.sroa.0.010.i = phi ptr [ %i.ai, %.lr.ph.i12 ], [ %i.bd, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_T0_.exit.i ] ; 5 uses
  %i.al = load i32, ptr %.sroa.0.010.i, align 4, !tbaa !220 ; 2 uses
  %i.am = ashr i32 %i.al, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !533 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !220 ; 2 uses
  %i.ar = ashr i32 %i.aq, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !533
  %i.av = fcmp ogt double %i.ap, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_T0_.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.g, %.lr.ph.i.i14
  %i.aw = phi i32 [ %i.ax, %.lr.ph.i.i14 ], [ %i.aq, %bb.g ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %bb.g ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.010.i, %bb.g ]
  store i32 %i.aw, ptr %.sroa.05.09.i.i16, align 4, !tbaa !220
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !220 ; 2 uses
  %i.ay = ashr i32 %i.ax, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !533
  %i.bc = fcmp ogt double %i.ap, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, !llvm.loop !2948

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_T0_.exit.i: ; preds = %.lr.ph.i.i14, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.010.i, %bb.g ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.al, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !220
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.bd, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.g, !llvm.loop !2950

bb.h:                                             ; preds = %bb.a
  %i.be = icmp eq ptr %0, %1
  br i1 %i.be, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.019.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not20.i20 = icmp eq ptr %.sroa.0.019.i19, %1
  br i1 %.not20.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre24.i22 = load ptr, ptr %2, align 8, !tbaa !1115
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, %.lr.ph.i21
  %i.bf = phi ptr [ %.pre24.i22, %.lr.ph.i21 ], [ %i.cp, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 5 uses
  %.sroa.0.022.i23 = phi ptr [ %.sroa.0.019.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i27, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 6 uses
  %.pn21.i24 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.022.i23, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 4 uses
  %i.bg = load i32, ptr %.sroa.0.022.i23, align 4, !tbaa !220 ; 2 uses
  %i.bh = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  %i.bi = ashr i32 %i.bg, 1
  %i.bj = ashr i32 %i.bh, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 5552
  %i.bl = sext i32 %i.bi to i64
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !891 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !533 ; 3 uses
  %i.bp = sext i32 %i.bj to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !533
  %i.bs = fcmp ogt double %i.bo, %i.br
  br i1 %i.bs, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bt = ptrtoint ptr %.sroa.0.022.i23 to i64
  %i.bu = sub i64 %i.bt, %i.b                     ; 3 uses
  %i.bv = ashr exact i64 %i.bu, 2                 ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 1
  br i1 %i.bw, label %bb.k, label %bb.l, !prof !291

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 8
  %i.by = sub nsw i64 0, %i.bv
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.by
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bz, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bu, i1 false)
  %.pre.i33 = load ptr, ptr %2, align 8, !tbaa !1115
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.l:                                             ; preds = %bb.j
  %i.ca = icmp eq i64 %i.bu, 4
  br i1 %i.ca, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 4
  store i32 %i.bh, ptr %i.cb, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.n:                                             ; preds = %bb.i
  %i.cc = load i32, ptr %.pn21.i24, align 4, !tbaa !220 ; 2 uses
  %i.cd = ashr i32 %i.cc, 1
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !533
  %i.ch = fcmp ogt double %i.bo, %i.cg
  br i1 %i.ch, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

.lr.ph.i.i29:                                     ; preds = %bb.n, %.lr.ph.i.i29
  %i.ci = phi i32 [ %i.cj, %.lr.ph.i.i29 ], [ %i.cc, %bb.n ]
  %.sroa.0.010.i.i30 = phi ptr [ %.sroa.0.0.i.i32, %.lr.ph.i.i29 ], [ %.pn21.i24, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i31 = phi ptr [ %.sroa.0.010.i.i30, %.lr.ph.i.i29 ], [ %.sroa.0.022.i23, %bb.n ]
  store i32 %i.ci, ptr %.sroa.05.09.i.i31, align 4, !tbaa !220
  %.sroa.0.0.i.i32 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i30, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %.sroa.0.0.i.i32, align 4, !tbaa !220 ; 2 uses
  %i.ck = ashr i32 %i.cj, 1
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !533
  %i.co = fcmp ogt double %i.bo, %i.cn
  br i1 %i.co, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, !llvm.loop !2948

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25: ; preds = %.lr.ph.i.i29, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i26 = phi ptr [ %0, %bb.m ], [ %0, %bb.k ], [ %0, %bb.l ], [ %.sroa.0.022.i23, %bb.n ], [ %.sroa.0.010.i.i30, %.lr.ph.i.i29 ]
  %i.cp = phi ptr [ %i.bf, %bb.m ], [ %.pre.i33, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.n ], [ %i.bf, %.lr.ph.i.i29 ]
  store i32 %i.bg, ptr %.sink.i26, align 4, !tbaa !220
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i23, i64 4 ; 2 uses
  %.not.i28 = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %.not.i28, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.i, !llvm.loop !2949

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !303 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSH_SH_SH_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !220  ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.g, ptr %i.e, align 4, !tbaa !220
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = lshr i64 %i.k, 1
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.n = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !1115
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5552
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !891  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.037.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.q = shl i64 %.037.i.i, 1                     ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = load i32, ptr %i.s, align 4, !tbaa !220
  %i.w = load i32, ptr %i.u, align 4, !tbaa !220
  %i.x = ashr i32 %i.v, 1
  %i.y = ashr i32 %i.w, 1
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !533
  %i.ac = sext i32 %i.y to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !533
  %i.af = fcmp ogt double %i.ab, %i.ae
  %spec.select.i.i = select i1 %i.af, i64 %i.t, i64 %i.r ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !220
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i.i
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !220
  %i.aj = icmp slt i64 %spec.select.i.i, %i.l
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i, !llvm.loop !141

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.i, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.am = add nsw i64 %i.j, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i, %i.an
end_hunk_4
begin_hunk_5_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE13_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_:bb.a
  %i.ad = tail call noundef zeroext i1 @_ZZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE10SortFaninsEiENKUliiE13_clEii(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.ab, i32 noundef %i.ac)
  %i.ae = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %3, align 4, !tbaa !220
  store i32 %i.af, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %3, align 4, !tbaa !220
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %2, align 4, !tbaa !220
  store i32 %i.ag, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %2, align 4, !tbaa !220
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_SH_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit
  %i.h = icmp eq i64 %i.cd, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph41, !llvm.loop !2962

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.cg, %bb.b ] ; 2 uses
  %storemerge22.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.lcssa.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !220
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_SM_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa, i32 noundef %i.l, ptr %3, ptr %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !2963

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.05.i.i = phi ptr [ %i.n, %.lr.ph.i9.i ], [ %storemerge22.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !220
  %i.p = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.p, ptr %i.n, align 4, !tbaa !220
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_SM_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i32 noundef %i.o, ptr %3, ptr %4)
  %i.t = icmp sgt i64 %i.r, 4
  br i1 %i.t, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_SH_T0_.exit, !llvm.loop !2964

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2240 = phi ptr [ %.sroa.014.1.lcssa.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02339 = phi i64 [ %i.cd, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cg, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = lshr i64 %i.u, 1
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %storemerge2240, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_SH_SH_T0_(ptr %0, ptr nonnull %i.f, ptr %i.w, ptr nonnull %i.x, ptr %3, ptr %4)
  %i.y = load ptr, ptr %3, align 8, !tbaa !1119   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1054
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !224 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 5552 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph41
  %.sroa.011.0.i.i = phi ptr [ %storemerge2240, %.lr.ph41 ], [ %.sroa.011.1.lcssa.i.i, %bb.e ]
  %.sroa.014.0.i.i = phi ptr [ %i.f, %.lr.ph41 ], [ %i.cc, %bb.e ] ; 3 uses
  %i.ad = load i32, ptr %0, align 4, !tbaa !220
  %i.ae = ashr i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !220 ; 6 uses
  %i.ai = load i32, ptr %.sroa.014.0.i.i, align 4, !tbaa !220 ; 3 uses
  %i.aj = ashr i32 %i.ai, 1
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !220 ; 2 uses
  %i.an = icmp sgt i32 %i.am, %i.ah
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i
  %i.ao = phi i32 [ %i.bd, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i ], [ %i.am, %bb.d ]
  %i.ap = phi i64 [ %i.bb, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i ], [ %i.ak, %bb.d ]
  %i.aq = phi i32 [ %i.az, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i ], [ %i.ai, %bb.d ]
  %.sroa.014.128.i.i = phi ptr [ %i.ay, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i ], [ %.sroa.014.0.i.i, %bb.d ] ; 2 uses
  %i.ar = icmp slt i32 %i.ao, %i.ah
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !891 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ap
  %i.au = load double, ptr %i.at, align 8, !tbaa !533
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.af
  %i.aw = load double, ptr %i.av, align 8, !tbaa !533
  %i.ax = fcmp ogt double %i.au, %i.aw
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i.i, %.lr.ph.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.014.128.i.i, i64 4 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !220 ; 3 uses
  %i.ba = ashr i32 %i.az, 1
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !220 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, %i.ah
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i, label %.lr.ph.i.i, !llvm.loop !2965

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i.i, %bb.d
  %.sroa.014.1.lcssa.i.i = phi ptr [ %.sroa.014.0.i.i, %bb.d ], [ %i.ay, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i ], [ %.sroa.014.128.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i.i ] ; 7 uses
  %.lcssa26.i.i = phi i32 [ %i.ai, %bb.d ], [ %i.az, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i.i ], [ %i.aq, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i.i ]
  %.sroa.011.140.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.i.i, i64 -4 ; 3 uses
  %i.bf = load i32, ptr %.sroa.011.140.i.i, align 4, !tbaa !220 ; 3 uses
  %i.bg = ashr i32 %i.bf, 1
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !220 ; 2 uses
  %i.bk = icmp sgt i32 %i.ah, %i.bj
  br i1 %i.bk, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread21.i.i, label %.lr.ph42.i.i

.lr.ph42.i.i:                                     ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i
  %i.bl = phi i32 [ %i.bz, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i ], [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i ]
  %i.bm = phi i64 [ %i.bx, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i ], [ %i.bh, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i ]
  %i.bn = phi i32 [ %i.bv, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i ], [ %i.bf, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i ]
  %.sroa.011.141.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i ], [ %.sroa.011.140.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i ] ; 2 uses
  %i.bo = icmp slt i32 %i.ah, %i.bl
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.i.i: ; preds = %.lr.ph42.i.i
  %i.bp = load ptr, ptr %i.ac, align 8, !tbaa !891 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.af
  %i.br = load double, ptr %i.bq, align 8, !tbaa !533
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bm
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !533
  %i.bu = fcmp ogt double %i.br, %i.bt
  br i1 %i.bu, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread21.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.i.i, %.lr.ph42.i.i
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.141.i.i, i64 -4 ; 3 uses
  %i.bv = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !220 ; 3 uses
  %i.bw = ashr i32 %i.bv, 1
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !220 ; 2 uses
  %i.ca = icmp sgt i32 %i.ah, %i.bz
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread21.i.i, label %.lr.ph42.i.i, !llvm.loop !2966

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread21.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i
  %.sroa.011.1.lcssa.i.i = phi ptr [ %.sroa.011.140.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i ], [ %.sroa.011.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i ], [ %.sroa.011.141.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.i.i ] ; 3 uses
  %.lcssa27.i.i = phi i32 [ %i.bf, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread18.i.i ], [ %i.bv, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread.i.i ], [ %i.bn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.i.i ]
  %i.cb = icmp ult ptr %.sroa.014.1.lcssa.i.i, %.sroa.011.1.lcssa.i.i
  br i1 %i.cb, label %bb.e, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread21.i.i
  store i32 %.lcssa27.i.i, ptr %.sroa.014.1.lcssa.i.i, align 4, !tbaa !220
  store i32 %.lcssa26.i.i, ptr %.sroa.011.1.lcssa.i.i, align 4, !tbaa !220
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.014.1.lcssa.i.i, i64 4
  br label %bb.d, !llvm.loop !2967

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit9.thread21.i.i
  %i.cd = add nsw i64 %.02339, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_T1_(ptr %.sroa.014.1.lcssa.i.i, ptr %storemerge2240, i64 noundef %i.cd, ptr nonnull %3, ptr %4)
  %i.ce = ptrtoint ptr %.sroa.014.1.lcssa.i.i to i64
  %i.cf = sub i64 %i.ce, %i.a
  %i.cg = ashr exact i64 %i.cf, 2                 ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, 16
  br i1 %i.ch, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_SH_T0_.exit, !llvm.loop !2962

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEESH_SH_SH_T0_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre26.i = load ptr, ptr %2, align 8, !tbaa !1119 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %4 = phi ptr [ %.pre26.i, %.lr.ph.i ], [ %5, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %i.e = phi ptr [ %.pre26.i, %.lr.ph.i ], [ %i.bc, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 7 uses
  %.sroa.0.025.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.025.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.025.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.025.i.ptr, align 4, !tbaa !220 ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220    ; 2 uses
  %i.h = ashr i32 %i.f, 1
  %i.i = ashr i32 %i.g, 1
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !1054
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.l = sext i32 %i.h to i64                     ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !224  ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !220  ; 4 uses
  %i.p = sext i32 %i.i to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !220  ; 2 uses
  %i.s = icmp sgt i32 %i.o, %i.r
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = icmp slt i32 %i.o, %i.r
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 5552
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !891  ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.l
  %i.x = load double, ptr %i.w, align 8, !tbaa !533
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.p
  %i.z = load double, ptr %i.y, align 8, !tbaa !533
  %i.aa = fcmp ogt double %i.x, %i.z
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i, %bb.c
  %i.ab = icmp samesign ugt i64 %.sroa.0.025.i.idx, 4
  br i1 %i.ab, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.025.i.idx, i1 false)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !1119 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 4
  store i32 %i.g, ptr %i.ac, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i, %bb.b
  %i.ad = load i32, ptr %.pn24.i, align 4, !tbaa !220 ; 2 uses
  %i.ae = ashr i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !220 ; 2 uses
  %i.ai = icmp sgt i32 %i.o, %i.ah
  br i1 %i.ai, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 5552
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i, %.lr.ph.i.i
  %i.ak = phi i32 [ %i.ah, %.lr.ph.i.i ], [ %i.ba, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ]
  %i.al = phi i64 [ %i.af, %.lr.ph.i.i ], [ %i.ay, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ]
  %i.am = phi i32 [ %i.o, %.lr.ph.i.i ], [ %i.ax, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ]
  %i.an = phi i32 [ %i.ad, %.lr.ph.i.i ], [ %i.av, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ]
  %.sroa.0.013.i.i = phi ptr [ %.pn24.i, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ] ; 3 uses
  %.sroa.05.012.i.i = phi ptr [ %.sroa.0.025.i.ptr, %.lr.ph.i.i ], [ %.sroa.0.013.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ] ; 2 uses
  %i.ao = icmp slt i32 %i.am, %i.ak
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i: ; preds = %bb.f
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !891 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.l
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !533
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.al
  %i.at = load double, ptr %i.as, align 8, !tbaa !533
  %i.au = fcmp ogt double %i.ar, %i.at
  br i1 %i.au, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i, %bb.f
  store i32 %i.an, ptr %.sroa.05.012.i.i, align 4, !tbaa !220
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -4 ; 2 uses
  %i.av = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !220 ; 2 uses
  %i.aw = ashr i32 %i.av, 1
  %i.ax = load i32, ptr %i.n, align 4, !tbaa !220 ; 2 uses
  %i.ay = sext i32 %i.aw to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !220 ; 2 uses
  %i.bb = icmp sgt i32 %i.ax, %i.ba
  br i1 %i.bb, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, label %bb.f, !llvm.loop !2968

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i, %bb.e, %bb.d
  %5 = phi ptr [ %4, %bb.e ], [ %.pre.i, %bb.d ], [ %4, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i ], [ %4, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i ], [ %4, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ] ; 3 uses
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.025.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i ], [ %.sroa.0.013.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ], [ %.sroa.05.012.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i ]
  %i.bc = phi ptr [ %i.e, %bb.e ], [ %.pre.i, %bb.d ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i ], [ %i.e, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i ], [ %i.e, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !220
  %.sroa.0.025.i.add = add nuw nsw i64 %.sroa.0.025.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.025.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.b, !llvm.loop !2969

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not9.i = icmp eq ptr %i.bd, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit
  %i.be = load ptr, ptr %5, align 8, !tbaa !1054
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !224 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 5552
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, %.lr.ph.i12
  %.sroa.0.010.i = phi ptr [ %i.bd, %.lr.ph.i12 ], [ %i.cl, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_.exit.i ] ; 5 uses
  %i.bi = load i32, ptr %.sroa.0.010.i, align 4, !tbaa !220 ; 2 uses
  %i.bj = ashr i32 %i.bi, 1
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  %.sroa.0.011.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -4 ; 2 uses
  %i.bm = load i32, ptr %.sroa.0.011.i.i, align 4, !tbaa !220 ; 2 uses
  %i.bn = ashr i32 %i.bm, 1
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !220 ; 2 uses
  %i.bp = sext i32 %i.bn to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !220 ; 2 uses
  %i.bs = icmp sgt i32 %i.bo, %i.br
  br i1 %i.bs, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %bb.g, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18
  %i.bt = phi i32 [ %i.cj, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18 ], [ %i.br, %bb.g ]
  %i.bu = phi i64 [ %i.ch, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18 ], [ %i.bp, %bb.g ]
  %i.bv = phi i32 [ %i.cg, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18 ], [ %i.bo, %bb.g ]
  %i.bw = phi i32 [ %i.ce, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18 ], [ %i.bm, %bb.g ]
  %.sroa.0.013.i.i14 = phi ptr [ %.sroa.0.0.i.i19, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18 ], [ %.sroa.0.011.i.i, %bb.g ] ; 3 uses
  %.sroa.05.012.i.i15 = phi ptr [ %.sroa.0.013.i.i14, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18 ], [ %.sroa.0.010.i, %bb.g ] ; 2 uses
  %i.bx = icmp slt i32 %i.bv, %i.bt
  br i1 %i.bx, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i16

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i16: ; preds = %.lr.ph.i.i13
  %i.by = load ptr, ptr %i.bh, align 8, !tbaa !891 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bk
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !533
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bu
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !533
  %i.cd = fcmp ogt double %i.ca, %i.cc
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i16, %.lr.ph.i.i13
  store i32 %i.bw, ptr %.sroa.05.012.i.i15, align 4, !tbaa !220
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.013.i.i14, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %.sroa.0.0.i.i19, align 4, !tbaa !220 ; 2 uses
  %i.cf = ashr i32 %i.ce, 1
  %i.cg = load i32, ptr %i.bl, align 4, !tbaa !220 ; 2 uses
  %i.ch = sext i32 %i.cf to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !220 ; 2 uses
  %i.ck = icmp sgt i32 %i.cg, %i.cj
  br i1 %i.ck, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, label %.lr.ph.i.i13, !llvm.loop !2968

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i16, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.010.i, %bb.g ], [ %.sroa.0.013.i.i14, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i18 ], [ %.sroa.05.012.i.i15, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i16 ]
  store i32 %i.bi, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !220
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 4 ; 2 uses
  %.not.i17 = icmp eq ptr %i.cl, %1
  br i1 %.not.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.g, !llvm.loop !2970

bb.h:                                             ; preds = %bb.a
  %i.cm = icmp eq ptr %0, %1
  br i1 %i.cm, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.h
  %.sroa.0.022.i21 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not23.i22 = icmp eq ptr %.sroa.0.022.i21, %1
  br i1 %.not23.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %.pre26.i24 = load ptr, ptr %2, align 8, !tbaa !1119
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33, %.lr.ph.i23
  %i.cn = phi ptr [ %.pre26.i24, %.lr.ph.i23 ], [ %i.es, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33 ] ; 8 uses
  %.sroa.0.025.i25 = phi ptr [ %.sroa.0.022.i21, %.lr.ph.i23 ], [ %.sroa.0.0.i35, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33 ] ; 6 uses
  %.pn24.i26 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.0.025.i25, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33 ] ; 4 uses
  %i.co = load i32, ptr %.sroa.0.025.i25, align 4, !tbaa !220 ; 2 uses
  %i.cp = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  %i.cq = ashr i32 %i.co, 1
  %i.cr = ashr i32 %i.cp, 1
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !1054
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 152
  %i.cu = sext i32 %i.cq to i64                   ; 3 uses
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !224 ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !220 ; 4 uses
  %i.cy = sext i32 %i.cr to i64                   ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !220 ; 2 uses
  %i.db = icmp sgt i32 %i.cx, %i.da
  br i1 %i.db, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i28, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = icmp slt i32 %i.cx, %i.da
  br i1 %i.dc, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i39, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i27

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i27: ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 5552
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !891 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.cu
  %i.dg = load double, ptr %i.df, align 8, !tbaa !533
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.cy
  %i.di = load double, ptr %i.dh, align 8, !tbaa !533
  %i.dj = fcmp ogt double %i.dg, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i39, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i28

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i39: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i27, %bb.j
  %i.dk = ptrtoint ptr %.sroa.0.025.i25 to i64
  %i.dl = sub i64 %i.dk, %i.b                     ; 3 uses
  %i.dm = ashr exact i64 %i.dl, 2                 ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, 1
  br i1 %i.dn, label %bb.k, label %bb.l, !prof !291

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i39
  %i.do = getelementptr inbounds nuw i8, ptr %.pn24.i26, i64 8
  %i.dp = sub nsw i64 0, %i.dm
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dp
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dq, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.dl, i1 false)
  %.pre.i40 = load ptr, ptr %2, align 8, !tbaa !1119
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread.i39
  %i.dr = icmp eq i64 %i.dl, 4
  br i1 %i.dr, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33

bb.m:                                             ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %.pn24.i26, i64 4
  store i32 %i.cp, ptr %i.ds, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i28: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.i27, %bb.i
  %i.dt = load i32, ptr %.pn24.i26, align 4, !tbaa !220 ; 2 uses
  %i.du = ashr i32 %i.dt, 1
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !220 ; 2 uses
  %i.dy = icmp sgt i32 %i.cx, %i.dx
  br i1 %i.dy, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i28
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cn, i64 5552
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37, %.lr.ph.i.i29
  %i.ea = phi i32 [ %i.dx, %.lr.ph.i.i29 ], [ %i.eq, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ]
  %i.eb = phi i64 [ %i.dv, %.lr.ph.i.i29 ], [ %i.eo, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ]
  %i.ec = phi i32 [ %i.cx, %.lr.ph.i.i29 ], [ %i.en, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ]
  %i.ed = phi i32 [ %i.dt, %.lr.ph.i.i29 ], [ %i.el, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ]
  %.sroa.0.013.i.i30 = phi ptr [ %.pn24.i26, %.lr.ph.i.i29 ], [ %.sroa.0.0.i.i38, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ] ; 3 uses
  %.sroa.05.012.i.i31 = phi ptr [ %.sroa.0.025.i25, %.lr.ph.i.i29 ], [ %.sroa.0.013.i.i30, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ] ; 2 uses
  %i.ee = icmp slt i32 %i.ec, %i.ea
  br i1 %i.ee, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i32

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i32: ; preds = %bb.n
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !891 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.cu
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !533
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eb
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !533
  %i.ek = fcmp ogt double %i.eh, %i.ej
  br i1 %i.ek, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i32, %bb.n
  store i32 %i.ed, ptr %.sroa.05.012.i.i31, align 4, !tbaa !220
  %.sroa.0.0.i.i38 = getelementptr inbounds i8, ptr %.sroa.0.013.i.i30, i64 -4 ; 2 uses
  %i.el = load i32, ptr %.sroa.0.0.i.i38, align 4, !tbaa !220 ; 2 uses
  %i.em = ashr i32 %i.el, 1
  %i.en = load i32, ptr %i.cw, align 4, !tbaa !220 ; 2 uses
  %i.eo = sext i32 %i.em to i64                   ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !220 ; 2 uses
  %i.er = icmp sgt i32 %i.en, %i.eq
  br i1 %i.er, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33, label %bb.n, !llvm.loop !2968

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i32, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i28, %bb.m, %bb.l, %bb.k
  %.sink.i34 = phi ptr [ %0, %bb.m ], [ %0, %bb.k ], [ %0, %bb.l ], [ %.sroa.0.025.i25, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i28 ], [ %.sroa.0.013.i.i30, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ], [ %.sroa.05.012.i.i31, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i32 ]
  %i.es = phi ptr [ %i.cn, %bb.m ], [ %.pre.i40, %bb.k ], [ %i.cn, %bb.l ], [ %i.cn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread20.i28 ], [ %i.cn, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.i.i32 ], [ %i.cn, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSA_T0_.exit.thread.i.i37 ]
  store i32 %i.co, ptr %.sink.i34, align 4, !tbaa !220
  %.sroa.0.0.i35 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i25, i64 4 ; 2 uses
  %.not.i36 = icmp eq ptr %.sroa.0.0.i35, %1
  br i1 %.not.i36, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit, label %bb.i, !llvm.loop !2969

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_.exit.i, %.preheader.i20, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_15BddMspfAnalyzerISA_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSH_T0_SM_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !1119   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1054
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !224  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 5552
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_15BddMspfAnalyzerIS3_EEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESL_EEbSA_T0_.exit.thread39
end_hunk_5
begin_hunk_6_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE1_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_:bb.a

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %3, align 4, !tbaa !220
  store i32 %i.af, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %3, align 4, !tbaa !220
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %2, align 4, !tbaa !220
  store i32 %i.ag, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %2, align 4, !tbaa !220
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.841", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.841", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEESL_SL_SL_T0_.exit
  %i.h = icmp eq i64 %i.l, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph40, !llvm.loop !3507

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.j, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_RT0_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_RT0_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2039 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02138 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.bm, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.02138, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %storemerge2039, i64 -4 ; 3 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !220  ; 3 uses
  %i.q = load i32, ptr %i.n, align 4, !tbaa !220  ; 3 uses
  %i.r = ashr i32 %i.p, 1
  %i.s = ashr i32 %i.q, 1
  %i.t = load ptr, ptr %3, align 8, !tbaa !1242
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1164
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.w = sext i32 %i.r to i64
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !224  ; 6 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w
  %i.z = load i32, ptr %i.y, align 4, !tbaa !220  ; 3 uses
  %i.aa = sext i32 %i.s to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !220 ; 3 uses
  %i.ad = icmp slt i32 %i.z, %i.ac
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !220 ; 3 uses
  %i.af = ashr i32 %i.ae, 1
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !220 ; 4 uses
  br i1 %i.ad, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph40
  %i.aj = icmp slt i32 %i.ac, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.q, ptr %0, align 4, !tbaa !220
  store i32 %i.ak, ptr %i.n, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.al = icmp slt i32 %i.z, %i.ai
  %i.am = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ae, ptr %0, align 4, !tbaa !220
  store i32 %i.am, ptr %i.o, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 4, !tbaa !220
  store i32 %i.am, ptr %i.f, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph40
  %i.an = icmp slt i32 %i.z, %i.ai
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.p, ptr %0, align 4, !tbaa !220
  store i32 %i.ao, ptr %i.f, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ap = icmp slt i32 %i.ac, %i.ai
  %i.aq = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.ae, ptr %0, align 4, !tbaa !220
  store i32 %i.aq, ptr %i.o, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 4, !tbaa !220
  store i32 %i.aq, ptr %i.n, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader, %bb.o
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.o ], [ %storemerge2039, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.bc, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader ]
  %i.ar = load i32, ptr %0, align 4, !tbaa !220
  %i.as = ashr i32 %i.ar, 1
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !220 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i ], [ %i.bc, %bb.m ] ; 8 uses
  %i.aw = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !220 ; 2 uses
  %i.ax = ashr i32 %i.aw, 1
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !220
  %i.bb = icmp slt i32 %i.ba, %i.av
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.bb, label %bb.m, label %.preheader.i.i, !llvm.loop !3508

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.m ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.bd = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !220 ; 2 uses
  %i.be = ashr i32 %i.bd, 1
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !220
  %i.bi = icmp slt i32 %i.av, %i.bh
  br i1 %i.bi, label %.preheader.i.i, label %bb.n, !llvm.loop !3509

bb.n:                                             ; preds = %.preheader.i.i
  %i.bj = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.bj, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEESL_SL_SL_T0_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.bd, ptr %.sroa.012.1.i.i, align 4, !tbaa !220
  store i32 %i.aw, ptr %.sroa.09.1.i.i, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i, !llvm.loop !3510

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEESL_SL_SL_T0_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2039, i64 noundef %i.l, ptr nonnull %3, ptr %4)
  %i.bk = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bl = sub i64 %i.bk, %i.a
  %i.bm = ashr exact i64 %i.bl, 2                 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 16
  br i1 %i.bn, label %bb.b, label %.loopexit, !llvm.loop !3507

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEESL_SL_SL_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !1242 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %4 = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %5, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %i.e = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %i.aj, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.sroa.0.022.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.022.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn21.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.022.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.022.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.022.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.022.i.ptr, align 4, !tbaa !220 ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220    ; 2 uses
  %i.h = ashr i32 %i.f, 1
  %i.i = ashr i32 %i.g, 1
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !1164
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.l = sext i32 %i.h to i64
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !224  ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !220  ; 2 uses
  %i.p = sext i32 %i.i to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !220
  %i.s = icmp slt i32 %i.o, %i.r
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = icmp samesign ugt i64 %.sroa.0.022.i.idx, 4
  br i1 %i.t, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.022.i.idx, i1 false)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !1242 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 4
  store i32 %i.g, ptr %i.u, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.v = load i32, ptr %.pn21.i, align 4, !tbaa !220 ; 2 uses
  %i.w = ashr i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !220
  %i.aa = icmp slt i32 %i.o, %i.z
  br i1 %i.aa, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.ab = phi i32 [ %i.ac, %.lr.ph.i.i ], [ %i.v, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn21.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.022.i.ptr, %bb.f ]
  store i32 %i.ab, ptr %.sroa.05.09.i.i, align 4, !tbaa !220
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.ac = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !220 ; 2 uses
  %i.ad = ashr i32 %i.ac, 1
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !220
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !220
  %i.ai = icmp slt i32 %i.ae, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !3511

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %5 = phi ptr [ %4, %bb.e ], [ %.pre.i, %bb.d ], [ %4, %bb.f ], [ %4, %.lr.ph.i.i ] ; 2 uses
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.022.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  %i.aj = phi ptr [ %i.e, %bb.e ], [ %.pre.i, %bb.d ], [ %i.e, %bb.f ], [ %i.e, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !220
  %.sroa.0.022.i.add = add nuw nsw i64 %.sroa.0.022.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.022.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %bb.b, !llvm.loop !3512

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not9.i = icmp eq ptr %i.ak, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit
  %i.al = load ptr, ptr %5, align 8, !tbaa !1164
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !224 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_T0_.exit.i, %.lr.ph.i12
  %.sroa.0.010.i = phi ptr [ %i.ak, %.lr.ph.i12 ], [ %i.bh, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_T0_.exit.i ] ; 5 uses
  %i.ao = load i32, ptr %.sroa.0.010.i, align 4, !tbaa !220 ; 2 uses
  %i.ap = ashr i32 %i.ao, 1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aq ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -4 ; 2 uses
  %i.as = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !220 ; 2 uses
  %i.at = ashr i32 %i.as, 1
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !220
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !220
  %i.ay = icmp slt i32 %i.au, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_T0_.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.g, %.lr.ph.i.i14
  %i.az = phi i32 [ %i.ba, %.lr.ph.i.i14 ], [ %i.as, %bb.g ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %bb.g ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.010.i, %bb.g ]
  store i32 %i.az, ptr %.sroa.05.09.i.i16, align 4, !tbaa !220
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.ba = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !220 ; 2 uses
  %i.bb = ashr i32 %i.ba, 1
  %i.bc = load i32, ptr %i.ar, align 4, !tbaa !220
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !220
  %i.bg = icmp slt i32 %i.bc, %i.bf
  br i1 %i.bg, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_T0_.exit.i, !llvm.loop !3511

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_T0_.exit.i: ; preds = %.lr.ph.i.i14, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.010.i, %bb.g ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ao, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !220
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.bh, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %bb.g, !llvm.loop !3513

bb.h:                                             ; preds = %bb.a
  %i.bi = icmp eq ptr %0, %1
  br i1 %i.bi, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.019.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not20.i20 = icmp eq ptr %.sroa.0.019.i19, %1
  br i1 %.not20.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre24.i22 = load ptr, ptr %2, align 8, !tbaa !1242
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, %.lr.ph.i21
  %i.bj = phi ptr [ %.pre24.i22, %.lr.ph.i21 ], [ %i.cv, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 5 uses
  %.sroa.0.022.i23 = phi ptr [ %.sroa.0.019.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i27, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 6 uses
  %.pn21.i24 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.022.i23, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 4 uses
  %i.bk = load i32, ptr %.sroa.0.022.i23, align 4, !tbaa !220 ; 2 uses
  %i.bl = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  %i.bm = ashr i32 %i.bk, 1
  %i.bn = ashr i32 %i.bl, 1
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !1164
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 152
  %i.bq = sext i32 %i.bm to i64
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !224 ; 4 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bq ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !220 ; 2 uses
  %i.bu = sext i32 %i.bn to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !220
  %i.bx = icmp slt i32 %i.bt, %i.bw
  br i1 %i.bx, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.by = ptrtoint ptr %.sroa.0.022.i23 to i64
  %i.bz = sub i64 %i.by, %i.b                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 2                 ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, 1
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !291

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 8
  %i.cd = sub nsw i64 0, %i.ca
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ce, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bz, i1 false)
  %.pre.i33 = load ptr, ptr %2, align 8, !tbaa !1242
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.l:                                             ; preds = %bb.j
  %i.cf = icmp eq i64 %i.bz, 4
  br i1 %i.cf, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 4
  store i32 %i.bl, ptr %i.cg, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.n:                                             ; preds = %bb.i
  %i.ch = load i32, ptr %.pn21.i24, align 4, !tbaa !220 ; 2 uses
  %i.ci = ashr i32 %i.ch, 1
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !220
  %i.cm = icmp slt i32 %i.bt, %i.cl
  br i1 %i.cm, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

.lr.ph.i.i29:                                     ; preds = %bb.n, %.lr.ph.i.i29
  %i.cn = phi i32 [ %i.co, %.lr.ph.i.i29 ], [ %i.ch, %bb.n ]
  %.sroa.0.010.i.i30 = phi ptr [ %.sroa.0.0.i.i32, %.lr.ph.i.i29 ], [ %.pn21.i24, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i31 = phi ptr [ %.sroa.0.010.i.i30, %.lr.ph.i.i29 ], [ %.sroa.0.022.i23, %bb.n ]
  store i32 %i.cn, ptr %.sroa.05.09.i.i31, align 4, !tbaa !220
  %.sroa.0.0.i.i32 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i30, i64 -4 ; 2 uses
  %i.co = load i32, ptr %.sroa.0.0.i.i32, align 4, !tbaa !220 ; 2 uses
  %i.cp = ashr i32 %i.co, 1
  %i.cq = load i32, ptr %i.bs, align 4, !tbaa !220
  %i.cr = sext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !220
  %i.cu = icmp slt i32 %i.cq, %i.ct
  br i1 %i.cu, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, !llvm.loop !3511

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25: ; preds = %.lr.ph.i.i29, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i26 = phi ptr [ %0, %bb.m ], [ %0, %bb.k ], [ %0, %bb.l ], [ %.sroa.0.022.i23, %bb.n ], [ %.sroa.0.010.i.i30, %.lr.ph.i.i29 ]
  %i.cv = phi ptr [ %i.bj, %bb.m ], [ %.pre.i33, %bb.k ], [ %i.bj, %bb.l ], [ %i.bj, %bb.n ], [ %i.bj, %.lr.ph.i.i29 ]
  store i32 %i.bk, ptr %.sink.i26, align 4, !tbaa !220
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i23, i64 4 ; 2 uses
  %.not.i28 = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %.not.i28, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %bb.i, !llvm.loop !3512

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_T0_.exit.i, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !303 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE2_EEviRKT_EUliiE_EEEvSL_SL_SL_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !220  ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.g, ptr %i.e, align 4, !tbaa !220
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = lshr i64 %i.k, 1
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.n = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !1242
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1164
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !224  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.037.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.r = shl i64 %.037.i.i, 1                     ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !220
  %i.x = load i32, ptr %i.v, align 4, !tbaa !220
  %i.y = ashr i32 %i.w, 1
  %i.z = ashr i32 %i.x, 1
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !220
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !220
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.i = select i1 %i.ag, i64 %i.u, i64 %i.s ; 4 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !220
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i.i
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !220
  %i.ak = icmp slt i64 %spec.select.i.i, %i.l
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.i, !llvm.loop !160

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 5 uses
  %i.al = and i64 %i.i, 4
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e
end_hunk_6
begin_hunk_7_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE11_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_:bb.a
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %3, align 4, !tbaa !220
  store i32 %i.af, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %3, align 4, !tbaa !220
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %2, align 4, !tbaa !220
  store i32 %i.ag, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %2, align 4, !tbaa !220
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.881", align 8 ; 5 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.881", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEESL_SL_SL_T0_.exit
  %i.h = icmp eq i64 %i.l, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph40, !llvm.loop !3597

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.j, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_RT0_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_RT0_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2039 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02138 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.bl, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.02138, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %storemerge2039, i64 -4 ; 3 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !220  ; 3 uses
  %i.q = load i32, ptr %i.n, align 4, !tbaa !220  ; 3 uses
  %i.r = ashr i32 %i.p, 1
  %i.s = ashr i32 %i.q, 1
  %i.t = load ptr, ptr %3, align 8, !tbaa !1262
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5680
  %i.v = sext i32 %i.r to i64
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !891  ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load double, ptr %i.x, align 8, !tbaa !533 ; 3 uses
  %i.z = sext i32 %i.s to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !533 ; 3 uses
  %i.ac = fcmp ogt double %i.y, %i.ab
  %i.ad = load i32, ptr %i.o, align 4, !tbaa !220 ; 3 uses
  %i.ae = ashr i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !533 ; 4 uses
  br i1 %i.ac, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph40
  %i.ai = fcmp ogt double %i.ab, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.q, ptr %0, align 4, !tbaa !220
  store i32 %i.aj, ptr %i.n, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.ak = fcmp ogt double %i.y, %i.ah
  %i.al = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ad, ptr %0, align 4, !tbaa !220
  store i32 %i.al, ptr %i.o, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 4, !tbaa !220
  store i32 %i.al, ptr %i.f, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph40
  %i.am = fcmp ogt double %i.y, %i.ah
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.p, ptr %0, align 4, !tbaa !220
  store i32 %i.an, ptr %i.f, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ao = fcmp ogt double %i.ab, %i.ah
  %i.ap = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.ad, ptr %0, align 4, !tbaa !220
  store i32 %i.ap, ptr %i.o, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 4, !tbaa !220
  store i32 %i.ap, ptr %i.n, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader, %bb.o
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.o ], [ %storemerge2039, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.bb, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i.preheader ]
  %i.aq = load i32, ptr %0, align 4, !tbaa !220
  %i.ar = ashr i32 %i.aq, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !533 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i ], [ %i.bb, %bb.m ] ; 8 uses
  %i.av = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !220 ; 2 uses
  %i.aw = ashr i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !533
  %i.ba = fcmp ogt double %i.az, %i.au
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.ba, label %bb.m, label %.preheader.i.i, !llvm.loop !3598

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.m ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.bc = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !220 ; 2 uses
  %i.bd = ashr i32 %i.bc, 1
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !533
  %i.bh = fcmp ogt double %i.au, %i.bg
  br i1 %i.bh, label %.preheader.i.i, label %bb.n, !llvm.loop !3599

bb.n:                                             ; preds = %.preheader.i.i
  %i.bi = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.bi, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEESL_SL_SL_T0_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.bc, ptr %.sroa.012.1.i.i, align 4, !tbaa !220
  store i32 %i.av, ptr %.sroa.09.1.i.i, align 4, !tbaa !220
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_.exit.i, !llvm.loop !3600

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEESL_SL_SL_T0_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2039, i64 noundef %i.l, ptr nonnull %3, ptr %4)
  %i.bj = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bk = sub i64 %i.bj, %i.a
  %i.bl = ashr exact i64 %i.bk, 2                 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 16
  br i1 %i.bm, label %bb.b, label %.loopexit, !llvm.loop !3597

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEESL_SL_SL_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !1262 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %4 = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %5, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %i.e = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %i.ah, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.sroa.0.022.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.022.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn21.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.022.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.022.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.022.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.022.i.ptr, align 4, !tbaa !220 ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220    ; 2 uses
  %i.h = ashr i32 %i.f, 1
  %i.i = ashr i32 %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 5680
  %i.k = sext i32 %i.h to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !891  ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load double, ptr %i.m, align 8, !tbaa !533 ; 3 uses
  %i.o = sext i32 %i.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.o
  %i.q = load double, ptr %i.p, align 8, !tbaa !533
  %i.r = fcmp ogt double %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ugt i64 %.sroa.0.022.i.idx, 4
  br i1 %i.s, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.022.i.idx, i1 false)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !1262 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 4
  store i32 %i.g, ptr %i.t, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.u = load i32, ptr %.pn21.i, align 4, !tbaa !220 ; 2 uses
  %i.v = ashr i32 %i.u, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !533
  %i.z = fcmp ogt double %i.n, %i.y
  br i1 %i.z, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.aa = phi i32 [ %i.ab, %.lr.ph.i.i ], [ %i.u, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn21.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.022.i.ptr, %bb.f ]
  store i32 %i.aa, ptr %.sroa.05.09.i.i, align 4, !tbaa !220
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.ab = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !220 ; 2 uses
  %i.ac = ashr i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !533
  %i.ag = fcmp ogt double %i.n, %i.af
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !3601

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %5 = phi ptr [ %4, %bb.e ], [ %.pre.i, %bb.d ], [ %4, %bb.f ], [ %4, %.lr.ph.i.i ] ; 2 uses
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.022.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  %i.ah = phi ptr [ %i.e, %bb.e ], [ %.pre.i, %bb.d ], [ %i.e, %bb.f ], [ %i.e, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !220
  %.sroa.0.022.i.add = add nuw nsw i64 %.sroa.0.022.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.022.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %bb.b, !llvm.loop !3602

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not9.i = icmp eq ptr %i.ai, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 5680
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !891 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_T0_.exit.i, %.lr.ph.i12
  %.sroa.0.010.i = phi ptr [ %i.ai, %.lr.ph.i12 ], [ %i.bd, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_T0_.exit.i ] ; 5 uses
  %i.al = load i32, ptr %.sroa.0.010.i, align 4, !tbaa !220 ; 2 uses
  %i.am = ashr i32 %i.al, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !533 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !220 ; 2 uses
  %i.ar = ashr i32 %i.aq, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !533
  %i.av = fcmp ogt double %i.ap, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_T0_.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.g, %.lr.ph.i.i14
  %i.aw = phi i32 [ %i.ax, %.lr.ph.i.i14 ], [ %i.aq, %bb.g ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %bb.g ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.010.i, %bb.g ]
  store i32 %i.aw, ptr %.sroa.05.09.i.i16, align 4, !tbaa !220
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !220 ; 2 uses
  %i.ay = ashr i32 %i.ax, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !533
  %i.bc = fcmp ogt double %i.ap, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_T0_.exit.i, !llvm.loop !3601

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_T0_.exit.i: ; preds = %.lr.ph.i.i14, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.010.i, %bb.g ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.al, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !220
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.bd, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %bb.g, !llvm.loop !3603

bb.h:                                             ; preds = %bb.a
  %i.be = icmp eq ptr %0, %1
  br i1 %i.be, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.019.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not20.i20 = icmp eq ptr %.sroa.0.019.i19, %1
  br i1 %.not20.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre24.i22 = load ptr, ptr %2, align 8, !tbaa !1262
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, %.lr.ph.i21
  %i.bf = phi ptr [ %.pre24.i22, %.lr.ph.i21 ], [ %i.cp, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 5 uses
  %.sroa.0.022.i23 = phi ptr [ %.sroa.0.019.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i27, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 6 uses
  %.pn21.i24 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.022.i23, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25 ] ; 4 uses
  %i.bg = load i32, ptr %.sroa.0.022.i23, align 4, !tbaa !220 ; 2 uses
  %i.bh = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  %i.bi = ashr i32 %i.bg, 1
  %i.bj = ashr i32 %i.bh, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 5680
  %i.bl = sext i32 %i.bi to i64
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !891 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !533 ; 3 uses
  %i.bp = sext i32 %i.bj to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !533
  %i.bs = fcmp ogt double %i.bo, %i.br
  br i1 %i.bs, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bt = ptrtoint ptr %.sroa.0.022.i23 to i64
  %i.bu = sub i64 %i.bt, %i.b                     ; 3 uses
  %i.bv = ashr exact i64 %i.bu, 2                 ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 1
  br i1 %i.bw, label %bb.k, label %bb.l, !prof !291

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 8
  %i.by = sub nsw i64 0, %i.bv
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.by
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bz, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bu, i1 false)
  %.pre.i33 = load ptr, ptr %2, align 8, !tbaa !1262
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.l:                                             ; preds = %bb.j
  %i.ca = icmp eq i64 %i.bu, 4
  br i1 %i.ca, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn21.i24, i64 4
  store i32 %i.bh, ptr %i.cb, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

bb.n:                                             ; preds = %bb.i
  %i.cc = load i32, ptr %.pn21.i24, align 4, !tbaa !220 ; 2 uses
  %i.cd = ashr i32 %i.cc, 1
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !533
  %i.ch = fcmp ogt double %i.bo, %i.cg
  br i1 %i.ch, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25

.lr.ph.i.i29:                                     ; preds = %bb.n, %.lr.ph.i.i29
  %i.ci = phi i32 [ %i.cj, %.lr.ph.i.i29 ], [ %i.cc, %bb.n ]
  %.sroa.0.010.i.i30 = phi ptr [ %.sroa.0.0.i.i32, %.lr.ph.i.i29 ], [ %.pn21.i24, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i31 = phi ptr [ %.sroa.0.010.i.i30, %.lr.ph.i.i29 ], [ %.sroa.0.022.i23, %bb.n ]
  store i32 %i.ci, ptr %.sroa.05.09.i.i31, align 4, !tbaa !220
  %.sroa.0.0.i.i32 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i30, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %.sroa.0.0.i.i32, align 4, !tbaa !220 ; 2 uses
  %i.ck = ashr i32 %i.cj, 1
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !533
  %i.co = fcmp ogt double %i.bo, %i.cn
  br i1 %i.co, label %.lr.ph.i.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, !llvm.loop !3601

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25: ; preds = %.lr.ph.i.i29, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i26 = phi ptr [ %0, %bb.m ], [ %0, %bb.k ], [ %0, %bb.l ], [ %.sroa.0.022.i23, %bb.n ], [ %.sroa.0.010.i.i30, %.lr.ph.i.i29 ]
  %i.cp = phi ptr [ %i.bf, %bb.m ], [ %.pre.i33, %bb.k ], [ %i.bf, %bb.l ], [ %i.bf, %bb.n ], [ %i.bf, %.lr.ph.i.i29 ]
  store i32 %i.bg, ptr %.sink.i26, align 4, !tbaa !220
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i23, i64 4 ; 2 uses
  %.not.i28 = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %.not.i28, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %bb.i, !llvm.loop !3602

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i25, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_T0_.exit.i, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !303 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE12_EEviRKT_EUliiE_EEEvSL_SL_SL_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !220  ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.g, ptr %i.e, align 4, !tbaa !220
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = lshr i64 %i.k, 1
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.n = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !1262
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5680
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !891  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.037.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.q = shl i64 %.037.i.i, 1                     ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = load i32, ptr %i.s, align 4, !tbaa !220
  %i.w = load i32, ptr %i.u, align 4, !tbaa !220
  %i.x = ashr i32 %i.v, 1
  %i.y = ashr i32 %i.w, 1
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !533
  %i.ac = sext i32 %i.y to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !533
  %i.af = fcmp ogt double %i.ab, %i.ae
  %spec.select.i.i = select i1 %i.af, i64 %i.t, i64 %i.r ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !220
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i.i
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !220
  %i.aj = icmp slt i64 %spec.select.i.i, %i.l
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i, !llvm.loop !180

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.i, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.am = add nsw i64 %i.j, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i, %i.an
end_hunk_7
begin_hunk_8_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE13_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_:bb.a
  %i.ad = tail call noundef zeroext i1 @_ZZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE10SortFaninsEiENKUliiE13_clEii(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.ab, i32 noundef %i.ac)
  %i.ae = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %3, align 4, !tbaa !220
  store i32 %i.af, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %3, align 4, !tbaa !220
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %2, align 4, !tbaa !220
  store i32 %i.ag, ptr %0, align 4, !tbaa !220
  store i32 %i.ae, ptr %2, align 4, !tbaa !220
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_SL_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEESL_SL_SL_T0_.exit
  %i.h = icmp eq i64 %i.cd, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph41, !llvm.loop !3615

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.cg, %bb.b ] ; 2 uses
  %storemerge22.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.lcssa.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !220
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_T0_SQ_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa, i32 noundef %i.l, ptr %3, ptr %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !3616

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.05.i.i = phi ptr [ %i.n, %.lr.ph.i9.i ], [ %storemerge22.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !220
  %i.p = load i32, ptr %0, align 4, !tbaa !220
  store i32 %i.p, ptr %i.n, align 4, !tbaa !220
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_T0_SQ_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i32 noundef %i.o, ptr %3, ptr %4)
  %i.t = icmp sgt i64 %i.r, 4
  br i1 %i.t, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_SL_T0_.exit, !llvm.loop !3617

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2240 = phi ptr [ %.sroa.014.1.lcssa.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02339 = phi i64 [ %i.cd, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cg, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = lshr i64 %i.u, 1
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %storemerge2240, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_SL_SL_T0_(ptr %0, ptr nonnull %i.f, ptr %i.w, ptr nonnull %i.x, ptr %3, ptr %4)
  %i.y = load ptr, ptr %3, align 8, !tbaa !1266   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1164
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !224 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 5680 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph41
  %.sroa.011.0.i.i = phi ptr [ %storemerge2240, %.lr.ph41 ], [ %.sroa.011.1.lcssa.i.i, %bb.e ]
  %.sroa.014.0.i.i = phi ptr [ %i.f, %.lr.ph41 ], [ %i.cc, %bb.e ] ; 3 uses
  %i.ad = load i32, ptr %0, align 4, !tbaa !220
  %i.ae = ashr i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !220 ; 6 uses
  %i.ai = load i32, ptr %.sroa.014.0.i.i, align 4, !tbaa !220 ; 3 uses
  %i.aj = ashr i32 %i.ai, 1
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !220 ; 2 uses
  %i.an = icmp sgt i32 %i.am, %i.ah
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread18.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i.i
  %i.ao = phi i32 [ %i.bd, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i.i ], [ %i.am, %bb.d ]
  %i.ap = phi i64 [ %i.bb, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i.i ], [ %i.ak, %bb.d ]
  %i.aq = phi i32 [ %i.az, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i.i ], [ %i.ai, %bb.d ]
  %.sroa.014.128.i.i = phi ptr [ %i.ay, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i.i ], [ %.sroa.014.0.i.i, %bb.d ] ; 2 uses
  %i.ar = icmp slt i32 %i.ao, %i.ah
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !891 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ap
  %i.au = load double, ptr %i.at, align 8, !tbaa !533
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.af
  %i.aw = load double, ptr %i.av, align 8, !tbaa !533
  %i.ax = fcmp ogt double %i.au, %i.aw
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread18.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.i.i, %.lr.ph.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.014.128.i.i, i64 4 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !220 ; 3 uses
  %i.ba = ashr i32 %i.az, 1
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !220 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, %i.ah
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread18.i.i, label %.lr.ph.i.i, !llvm.loop !3618

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread18.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.i.i, %bb.d
  %.sroa.014.1.lcssa.i.i = phi ptr [ %.sroa.014.0.i.i, %bb.d ], [ %i.ay, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i.i ], [ %.sroa.014.128.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.i.i ] ; 7 uses
  %.lcssa26.i.i = phi i32 [ %i.ai, %bb.d ], [ %i.az, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i.i ], [ %i.aq, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.i.i ]
  %.sroa.011.140.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.i.i, i64 -4 ; 3 uses
  %i.bf = load i32, ptr %.sroa.011.140.i.i, align 4, !tbaa !220 ; 3 uses
  %i.bg = ashr i32 %i.bf, 1
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !220 ; 2 uses
  %i.bk = icmp sgt i32 %i.ah, %i.bj
  br i1 %i.bk, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread21.i.i, label %.lr.ph42.i.i

.lr.ph42.i.i:                                     ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread18.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread.i.i
  %i.bl = phi i32 [ %i.bz, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread.i.i ], [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread18.i.i ]
  %i.bm = phi i64 [ %i.bx, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread.i.i ], [ %i.bh, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread18.i.i ]
  %i.bn = phi i32 [ %i.bv, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread.i.i ], [ %i.bf, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread18.i.i ]
  %.sroa.011.141.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread.i.i ], [ %.sroa.011.140.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread18.i.i ] ; 2 uses
  %i.bo = icmp slt i32 %i.ah, %i.bl
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.i.i: ; preds = %.lr.ph42.i.i
  %i.bp = load ptr, ptr %i.ac, align 8, !tbaa !891 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.af
  %i.br = load double, ptr %i.bq, align 8, !tbaa !533
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bm
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !533
  %i.bu = fcmp ogt double %i.br, %i.bt
  br i1 %i.bu, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread21.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.i.i, %.lr.ph42.i.i
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.141.i.i, i64 -4 ; 3 uses
  %i.bv = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !220 ; 3 uses
  %i.bw = ashr i32 %i.bv, 1
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !220 ; 2 uses
  %i.ca = icmp sgt i32 %i.ah, %i.bz
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread21.i.i, label %.lr.ph42.i.i, !llvm.loop !3619

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread21.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread18.i.i
  %.sroa.011.1.lcssa.i.i = phi ptr [ %.sroa.011.140.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread18.i.i ], [ %.sroa.011.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread.i.i ], [ %.sroa.011.141.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.i.i ] ; 3 uses
  %.lcssa27.i.i = phi i32 [ %i.bf, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread18.i.i ], [ %i.bv, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread.i.i ], [ %i.bn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.i.i ]
  %i.cb = icmp ult ptr %.sroa.014.1.lcssa.i.i, %.sroa.011.1.lcssa.i.i
  br i1 %i.cb, label %bb.e, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEESL_SL_SL_T0_.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread21.i.i
  store i32 %.lcssa27.i.i, ptr %.sroa.014.1.lcssa.i.i, align 4, !tbaa !220
  store i32 %.lcssa26.i.i, ptr %.sroa.011.1.lcssa.i.i, align 4, !tbaa !220
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.014.1.lcssa.i.i, i64 4
  br label %bb.d, !llvm.loop !3620

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEESL_SL_SL_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit9.thread21.i.i
  %i.cd = add nsw i64 %.02339, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_T0_T1_(ptr %.sroa.014.1.lcssa.i.i, ptr %storemerge2240, i64 noundef %i.cd, ptr nonnull %3, ptr %4)
  %i.ce = ptrtoint ptr %.sroa.014.1.lcssa.i.i to i64
  %i.cf = sub i64 %i.ce, %i.a
  %i.cg = ashr exact i64 %i.cf, 2                 ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, 16
  br i1 %i.ch, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_SL_T0_.exit, !llvm.loop !3615

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEESL_SL_SL_T0_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre26.i = load ptr, ptr %2, align 8, !tbaa !1266 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %4 = phi ptr [ %.pre26.i, %.lr.ph.i ], [ %5, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %i.e = phi ptr [ %.pre26.i, %.lr.ph.i ], [ %i.bc, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 7 uses
  %.sroa.0.025.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.025.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn24.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.025.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.025.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.025.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.025.i.ptr, align 4, !tbaa !220 ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !220    ; 2 uses
  %i.h = ashr i32 %i.f, 1
  %i.i = ashr i32 %i.g, 1
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !1164
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.l = sext i32 %i.h to i64                     ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !224  ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !220  ; 4 uses
  %i.p = sext i32 %i.i to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !220  ; 2 uses
  %i.s = icmp sgt i32 %i.o, %i.r
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = icmp slt i32 %i.o, %i.r
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 5680
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !891  ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.l
  %i.x = load double, ptr %i.w, align 8, !tbaa !533
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.p
  %i.z = load double, ptr %i.y, align 8, !tbaa !533
  %i.aa = fcmp ogt double %i.x, %i.z
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.i, %bb.c
  %i.ab = icmp samesign ugt i64 %.sroa.0.025.i.idx, 4
  br i1 %i.ab, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.025.i.idx, i1 false)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !1266 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn24.i, i64 4
  store i32 %i.g, ptr %i.ac, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.i, %bb.b
  %i.ad = load i32, ptr %.pn24.i, align 4, !tbaa !220 ; 2 uses
  %i.ae = ashr i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !220 ; 2 uses
  %i.ai = icmp sgt i32 %i.o, %i.ah
  br i1 %i.ai, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 5680
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i, %.lr.ph.i.i
  %i.ak = phi i32 [ %i.ah, %.lr.ph.i.i ], [ %i.ba, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i ]
  %i.al = phi i64 [ %i.af, %.lr.ph.i.i ], [ %i.ay, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i ]
  %i.am = phi i32 [ %i.o, %.lr.ph.i.i ], [ %i.ax, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i ]
  %i.an = phi i32 [ %i.ad, %.lr.ph.i.i ], [ %i.av, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i ]
  %.sroa.0.013.i.i = phi ptr [ %.pn24.i, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i ] ; 3 uses
  %.sroa.05.012.i.i = phi ptr [ %.sroa.0.025.i.ptr, %.lr.ph.i.i ], [ %.sroa.0.013.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i ] ; 2 uses
  %i.ao = icmp slt i32 %i.am, %i.ak
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i: ; preds = %bb.f
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !891 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.l
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !533
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.al
  %i.at = load double, ptr %i.as, align 8, !tbaa !533
  %i.au = fcmp ogt double %i.ar, %i.at
  br i1 %i.au, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i, %bb.f
  store i32 %i.an, ptr %.sroa.05.012.i.i, align 4, !tbaa !220
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -4 ; 2 uses
  %i.av = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !220 ; 2 uses
  %i.aw = ashr i32 %i.av, 1
  %i.ax = load i32, ptr %i.n, align 4, !tbaa !220 ; 2 uses
  %i.ay = sext i32 %i.aw to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !220 ; 2 uses
  %i.bb = icmp sgt i32 %i.ax, %i.ba
  br i1 %i.bb, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, label %bb.f, !llvm.loop !3621

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i, %bb.e, %bb.d
  %5 = phi ptr [ %4, %bb.e ], [ %.pre.i, %bb.d ], [ %4, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i ], [ %4, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i ], [ %4, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i ] ; 3 uses
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.025.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i ], [ %.sroa.0.013.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i ], [ %.sroa.05.012.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i ]
  %i.bc = phi ptr [ %i.e, %bb.e ], [ %.pre.i, %bb.d ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i ], [ %i.e, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i ], [ %i.e, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !220
  %.sroa.0.025.i.add = add nuw nsw i64 %.sroa.0.025.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.025.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %bb.b, !llvm.loop !3622

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not9.i = icmp eq ptr %i.bd, %1
  br i1 %.not9.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit
  %i.be = load ptr, ptr %5, align 8, !tbaa !1164
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !224 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 5680
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_T0_.exit.i, %.lr.ph.i12
  %.sroa.0.010.i = phi ptr [ %i.bd, %.lr.ph.i12 ], [ %i.cl, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_T0_.exit.i ] ; 5 uses
  %i.bi = load i32, ptr %.sroa.0.010.i, align 4, !tbaa !220 ; 2 uses
  %i.bj = ashr i32 %i.bi, 1
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  %.sroa.0.011.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -4 ; 2 uses
  %i.bm = load i32, ptr %.sroa.0.011.i.i, align 4, !tbaa !220 ; 2 uses
  %i.bn = ashr i32 %i.bm, 1
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !220 ; 2 uses
  %i.bp = sext i32 %i.bn to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !220 ; 2 uses
  %i.bs = icmp sgt i32 %i.bo, %i.br
  br i1 %i.bs, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_T0_.exit.i, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %bb.g, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i18
  %i.bt = phi i32 [ %i.cj, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i18 ], [ %i.br, %bb.g ]
  %i.bu = phi i64 [ %i.ch, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i18 ], [ %i.bp, %bb.g ]
  %i.bv = phi i32 [ %i.cg, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i18 ], [ %i.bo, %bb.g ]
  %i.bw = phi i32 [ %i.ce, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i18 ], [ %i.bm, %bb.g ]
  %.sroa.0.013.i.i14 = phi ptr [ %.sroa.0.0.i.i19, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i18 ], [ %.sroa.0.011.i.i, %bb.g ] ; 3 uses
  %.sroa.05.012.i.i15 = phi ptr [ %.sroa.0.013.i.i14, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i18 ], [ %.sroa.0.010.i, %bb.g ] ; 2 uses
  %i.bx = icmp slt i32 %i.bv, %i.bt
  br i1 %i.bx, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i18, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i16

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i16: ; preds = %.lr.ph.i.i13
  %i.by = load ptr, ptr %i.bh, align 8, !tbaa !891 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bk
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !533
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bu
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !533
  %i.cd = fcmp ogt double %i.ca, %i.cc
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i18: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i16, %.lr.ph.i.i13
  store i32 %i.bw, ptr %.sroa.05.012.i.i15, align 4, !tbaa !220
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.013.i.i14, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %.sroa.0.0.i.i19, align 4, !tbaa !220 ; 2 uses
  %i.cf = ashr i32 %i.ce, 1
  %i.cg = load i32, ptr %i.bl, align 4, !tbaa !220 ; 2 uses
  %i.ch = sext i32 %i.cf to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !220 ; 2 uses
  %i.ck = icmp sgt i32 %i.cg, %i.cj
  br i1 %i.ck, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_T0_.exit.i, label %.lr.ph.i.i13, !llvm.loop !3621

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i18, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i16, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.010.i, %bb.g ], [ %.sroa.0.013.i.i14, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i18 ], [ %.sroa.05.012.i.i15, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i16 ]
  store i32 %i.bi, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !220
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 4 ; 2 uses
  %.not.i17 = icmp eq ptr %i.cl, %1
  br i1 %.not.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %bb.g, !llvm.loop !3623

bb.h:                                             ; preds = %bb.a
  %i.cm = icmp eq ptr %0, %1
  br i1 %i.cm, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.h
  %.sroa.0.022.i21 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not23.i22 = icmp eq ptr %.sroa.0.022.i21, %1
  br i1 %.not23.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %.pre26.i24 = load ptr, ptr %2, align 8, !tbaa !1266
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33, %.lr.ph.i23
  %i.cn = phi ptr [ %.pre26.i24, %.lr.ph.i23 ], [ %i.es, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33 ] ; 8 uses
  %.sroa.0.025.i25 = phi ptr [ %.sroa.0.022.i21, %.lr.ph.i23 ], [ %.sroa.0.0.i35, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33 ] ; 6 uses
  %.pn24.i26 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.0.025.i25, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33 ] ; 4 uses
  %i.co = load i32, ptr %.sroa.0.025.i25, align 4, !tbaa !220 ; 2 uses
  %i.cp = load i32, ptr %0, align 4, !tbaa !220   ; 2 uses
  %i.cq = ashr i32 %i.co, 1
  %i.cr = ashr i32 %i.cp, 1
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !1164
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 152
  %i.cu = sext i32 %i.cq to i64                   ; 3 uses
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !224 ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !220 ; 4 uses
  %i.cy = sext i32 %i.cr to i64                   ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !220 ; 2 uses
  %i.db = icmp sgt i32 %i.cx, %i.da
  br i1 %i.db, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i28, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = icmp slt i32 %i.cx, %i.da
  br i1 %i.dc, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i39, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.i27

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.i27: ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 5680
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !891 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.cu
  %i.dg = load double, ptr %i.df, align 8, !tbaa !533
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.cy
  %i.di = load double, ptr %i.dh, align 8, !tbaa !533
  %i.dj = fcmp ogt double %i.dg, %i.di
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i39, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i28

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i39: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.i27, %bb.j
  %i.dk = ptrtoint ptr %.sroa.0.025.i25 to i64
  %i.dl = sub i64 %i.dk, %i.b                     ; 3 uses
  %i.dm = ashr exact i64 %i.dl, 2                 ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, 1
  br i1 %i.dn, label %bb.k, label %bb.l, !prof !291

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i39
  %i.do = getelementptr inbounds nuw i8, ptr %.pn24.i26, i64 8
  %i.dp = sub nsw i64 0, %i.dm
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dp
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dq, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.dl, i1 false)
  %.pre.i40 = load ptr, ptr %2, align 8, !tbaa !1266
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread.i39
  %i.dr = icmp eq i64 %i.dl, 4
  br i1 %i.dr, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33

bb.m:                                             ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %.pn24.i26, i64 4
  store i32 %i.cp, ptr %i.ds, align 4, !tbaa !220
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i28: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.i27, %bb.i
  %i.dt = load i32, ptr %.pn24.i26, align 4, !tbaa !220 ; 2 uses
  %i.du = ashr i32 %i.dt, 1
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !220 ; 2 uses
  %i.dy = icmp sgt i32 %i.cx, %i.dx
  br i1 %i.dy, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i28
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cn, i64 5680
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i37, %.lr.ph.i.i29
  %i.ea = phi i32 [ %i.dx, %.lr.ph.i.i29 ], [ %i.eq, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i37 ]
  %i.eb = phi i64 [ %i.dv, %.lr.ph.i.i29 ], [ %i.eo, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i37 ]
  %i.ec = phi i32 [ %i.cx, %.lr.ph.i.i29 ], [ %i.en, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i37 ]
  %i.ed = phi i32 [ %i.dt, %.lr.ph.i.i29 ], [ %i.el, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i37 ]
  %.sroa.0.013.i.i30 = phi ptr [ %.pn24.i26, %.lr.ph.i.i29 ], [ %.sroa.0.0.i.i38, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i37 ] ; 3 uses
  %.sroa.05.012.i.i31 = phi ptr [ %.sroa.0.025.i25, %.lr.ph.i.i29 ], [ %.sroa.0.013.i.i30, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i37 ] ; 2 uses
  %i.ee = icmp slt i32 %i.ec, %i.ea
  br i1 %i.ee, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i37, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i32

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i32: ; preds = %bb.n
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !891 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.cu
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !533
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eb
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !533
  %i.ek = fcmp ogt double %i.eh, %i.ej
  br i1 %i.ek, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i37: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i32, %bb.n
  store i32 %i.ed, ptr %.sroa.05.012.i.i31, align 4, !tbaa !220
  %.sroa.0.0.i.i38 = getelementptr inbounds i8, ptr %.sroa.0.013.i.i30, i64 -4 ; 2 uses
  %i.el = load i32, ptr %.sroa.0.0.i.i38, align 4, !tbaa !220 ; 2 uses
  %i.em = ashr i32 %i.el, 1
  %i.en = load i32, ptr %i.cw, align 4, !tbaa !220 ; 2 uses
  %i.eo = sext i32 %i.em to i64                   ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !220 ; 2 uses
  %i.er = icmp sgt i32 %i.en, %i.eq
  br i1 %i.er, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33, label %bb.n, !llvm.loop !3621

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i37, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i32, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i28, %bb.m, %bb.l, %bb.k
  %.sink.i34 = phi ptr [ %0, %bb.m ], [ %0, %bb.k ], [ %0, %bb.l ], [ %.sroa.0.025.i25, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i28 ], [ %.sroa.0.013.i.i30, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i37 ], [ %.sroa.05.012.i.i31, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i32 ]
  %i.es = phi ptr [ %i.cn, %bb.m ], [ %.pre.i40, %bb.k ], [ %i.cn, %bb.l ], [ %i.cn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread20.i28 ], [ %i.cn, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.i.i32 ], [ %i.cn, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRSE_T0_.exit.thread.i.i37 ]
  store i32 %i.co, ptr %.sink.i34, align 4, !tbaa !220
  %.sroa.0.0.i35 = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i25, i64 4 ; 2 uses
  %.not.i36 = icmp eq ptr %.sroa.0.0.i35, %1
  br i1 %.not.i36, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit, label %bb.i, !llvm.loop !3622

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i33, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_T0_.exit.i, %.preheader.i20, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS9_9OptimizerISA_NS9_8AnalyzerISA_NS9_9SimulatorISA_EENS9_9SatSolverISA_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EEEvSL_T0_SQ_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !1266   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1164
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !224  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 5680
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3rrr10AndNetwork10SortFaninsIZNS2_9OptimizerIS3_NS2_8AnalyzerIS3_NS2_9SimulatorIS3_EENS2_9SatSolverIS3_EEEEE10SortFaninsEiEUliiE14_EEviRKT_EUliiE_EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESP_EEbSE_T0_.exit.thread39
end_hunk_8
