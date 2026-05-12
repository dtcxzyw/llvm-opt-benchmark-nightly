inline.NumInlined: 25585
inline.NumDeleted: 11329
begin_hunk_0_@_ZN6duckdb11Deliminator8OptimizeENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
  %i.r = ashr exact i64 %i.q, 4
  %i.s = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %6 = sub nuw nsw i64 126, %i.t
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb16JoinWithDelimGetESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11Deliminator8OptimizeENS2_10unique_ptrINS2_15LogicalOperatorESt14default_deleteISD_ELb1EEEE3$_0EEEvT_SJ_T0_T1_"(ptr %i.l, ptr %i.n, i64 noundef %6)
  %i.u = icmp sgt i64 %i.q, 256
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %.preheader.i23.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE:bb.a
  %i.ac = ashr exact i64 %i.ab, 4                 ; 2 uses
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %3 = sub nuw nsw i64 126, %i.ae
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics18ReorderExpressionsERNS2_6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEE15ExpressionCostsSt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_less_iterEEvT_SL_T0_T1_(ptr %i.cf, ptr nonnull %i.ch, i64 noundef %3)
  %i.af = icmp sgt i64 %i.ab, 256
  br i1 %i.af, label %bb.g, label %bb.h
end_hunk_1
begin_hunk_2_@_ZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS_14TableFilterSetE:bb.a
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %4 = sub nuw nsw i64 126, %i.j
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %.sroa.043.1, ptr nonnull %.sroa.11.1, i64 noundef %4)
  %i.k = icmp sgt i64 %i.g, 256
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %.preheader.i20.i.i.i
end_hunk_2
begin_hunk_3_@_ZN6duckdb14FilterCombiner12IsDenseRangeERNS_6vectorINS_5ValueELb1ESaIS2_EEE:bb.a
  %i.o = ashr exact i64 %i.n, 6
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = shl nuw nsw i64 %i.p, 1
  %4 = sub nuw nsw i64 126, %i.q
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb5ValueESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.j, ptr %i.k, i64 noundef %4)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb5ValueESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.j, ptr %i.k)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb5ValueESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
end_hunk_3
begin_hunk_4_@_ZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNS_16LogicalAggregateE:bb.a
  %i.dx = ashr exact i64 %i.dw, 4
  %i.dy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dx, i1 true)
  %i.dz = shl nuw nsw i64 %i.dy, 1
  %7 = sub nuw nsw i64 126, %i.dz
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb21RemoveDuplicateGroups14VisitAggregateERNSB_16LogicalAggregateEE3$_0EEEvT_SH_T0_T1_"(ptr %.pre, ptr %.pre396, i64 noundef %7)
  %i.ea = icmp sgt i64 %i.dw, 256
  br i1 %i.ea, label %.lr.ph.i.i.i.i, label %.preheader.i21.i.i.i
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3828
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = sub nuw nsw i64 1152921504606846975, %i.g
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ugt i64 %1, 1152921504606846975
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_7
begin_hunk_8_@_ZN6duckdb14UnnestRewriter14FindCandidatesERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEES6_RNS_6vectorISt17reference_wrapperIS5_ELb1ESaIS9_EEE:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 256
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !212, !range !60, !noundef !61
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %23 = sub nuw nsw i64 1, %i.aj                  ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 6 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %i.aj)
  %i.am = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
end_hunk_8
begin_hunk_9_@_ZN6duckdb14UnnestRewriter16RewriteCandidateERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.h = load i8, ptr %i.g, align 8, !tbaa !212, !range !60, !noundef !61
  %i.i = zext nneg i8 %i.h to i64                 ; 2 uses
  %3 = sub nuw nsw i64 1, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.i)
  %i.l = tail call noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
end_hunk_9
begin_hunk_10_@_ZN6duckdb19CommonSubplanFinder17GetSortedSubplansEv:bb.a
  %i.g = ashr exact i64 %i.f, 3
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %2 = sub nuw nsw i64 126, %i.i
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperISt4pairIKS2_IN6duckdb13PlanSignatureEENS4_11SubplanInfoEEESt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19CommonSubplanFinder17GetSortedSubplansEvEUlSA_SA_E_EEEvT_SL_T0_T1_(ptr %i.av, ptr nonnull %i.au, i64 noundef %2)
          to label %.noexc unwind label %bb.h

end_hunk_10
