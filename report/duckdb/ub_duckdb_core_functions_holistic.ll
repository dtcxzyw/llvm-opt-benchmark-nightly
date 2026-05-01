inline.NumInlined: 37317
inline.NumDeleted: 10738
begin_hunk_0_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_SD_RT0_:bb.a
bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_T0_SE_T1_T2_.exit, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.ao, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_T0_SE_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %.010 ; 2 uses
  %3 = load <2 x ptr>, ptr %i.p, align 8, !tbaa !4772
  %.sroa.4.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !4772
  %i.q = icmp slt i64 %.010, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

end_hunk_0
begin_hunk_1_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_SD_RT0_:bb.a
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !4827
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !4780
  %i.aj = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !4780
  %i.ak = fcmp ogt double %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_T0_SE_T1_T2_.exit

end_hunk_1
begin_hunk_2_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_SD_RT0_:bb.a

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN14duckdb_tdigest12CentroidListESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_22CentroidListComparatorEEEEvT_T0_SE_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  store <2 x ptr> %3, ptr %i.an, align 8, !tbaa !4772
  %.not = icmp eq i64 %.010, 0
  %i.ao = add nsw i64 %.010, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !4852
end_hunk_2
