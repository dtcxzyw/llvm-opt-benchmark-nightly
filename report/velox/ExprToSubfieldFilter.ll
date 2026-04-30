inline.NumInlined: 6844
inline.NumDeleted: 2832
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_120tryMergeBigintRangesERSB_IS2_INS5_6FilterES7_ISJ_EESaISL_EEE3$_2EEEvT_SR_T0_T1_":bb.a

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_120tryMergeBigintRangesERSB_IS2_INS5_6FilterES7_ISJ_EESaISL_EEE3$_2EEEvT_SR_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_120tryMergeBigintRangesERSB_IS2_INS5_6FilterES7_ISJ_EESaISL_EEE3$_2EEEvT_SR_SR_RT0_.exit.i15.i"
  %.sroa.0.03.i.i = phi ptr [ %i.p, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_120tryMergeBigintRangesERSB_IS2_INS5_6FilterES7_ISJ_EESaISL_EEE3$_2EEEvT_SR_SR_RT0_.exit.i15.i" ], [ %storemerge25.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_120tryMergeBigintRangesERSB_IS2_INS5_6FilterES7_ISJ_EESaISL_EEE3$_2EEEvT_SR_RT0_.exit.i.i" ]
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.q = load i64, ptr %i.p, align 8, !tbaa !146
  store ptr null, ptr %i.p, align 8, !tbaa !146
  %i.r = load ptr, ptr %0, align 8, !tbaa !146
  store ptr null, ptr %0, align 8, !tbaa !146
  store ptr %i.r, ptr %i.p, align 8, !tbaa !146
  %5 = ptrtoint ptr %i.p to i64
  %6 = sub i64 %5, %i.a                           ; 2 uses
  %7 = ashr exact i64 %6, 3
  store i64 %i.q, ptr %3, align 8, !tbaa !146
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_120tryMergeBigintRangesERSB_IS2_INS5_6FilterES7_ISJ_EESaISL_EEE3$_2EEEvT_T0_SS_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %7, ptr noundef %3)
  %8 = load ptr, ptr %3, align 8, !tbaa !146      ; 2 uses
  %.not.i.i.i.i.i.i10.i = icmp eq ptr %8, null
  br i1 %.not.i.i.i.i.i.i10.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_120tryMergeBigintRangesERSB_IS2_INS5_6FilterES7_ISJ_EESaISL_EEE3$_2EEEvT_SR_SR_RT0_.exit.i15.i", label %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i14.i

_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i14.i: ; preds = %.lr.ph.i9.i
  tail call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef 48) #40
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_120tryMergeBigintRangesERSB_IS2_INS5_6FilterES7_ISJ_EESaISL_EEE3$_2EEEvT_SR_SR_RT0_.exit.i15.i"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_120tryMergeBigintRangesERSB_IS2_INS5_6FilterES7_ISJ_EESaISL_EEE3$_2EEEvT_SR_SR_RT0_.exit.i15.i": ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common11BigintRangeEEclEPS3_.exit.i.i.i14.i, %.lr.ph.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.s = icmp sgt i64 %6, 8
  br i1 %i.s, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_120tryMergeBigintRangesERSB_IS2_INS5_6FilterES7_ISJ_EESaISL_EEE3$_2EEEvT_SR_SR_T0_.exit", !llvm.loop !1304

.lr.ph51:                                         ; preds = %.lr.ph, %bb.b
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_:bb.a

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_RSU_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SR_RSU_.exit.i15.i
  %.sroa.0.03.i.i = phi ptr [ %i.p, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SR_RSU_.exit.i15.i ], [ %storemerge26.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_RSU_.exit.i.i ]
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.q = load i64, ptr %i.p, align 8, !tbaa !576
  store ptr null, ptr %i.p, align 8, !tbaa !576
  %i.r = load ptr, ptr %0, align 8, !tbaa !576
  store ptr null, ptr %0, align 8, !tbaa !576
  store ptr %i.r, ptr %i.p, align 8, !tbaa !576
  %5 = ptrtoint ptr %i.p to i64
  %6 = sub i64 %5, %i.a                           ; 2 uses
  %7 = ashr exact i64 %6, 3
  store i64 %i.q, ptr %3, align 8, !tbaa !576
  call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SU_SU_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %7, ptr noundef %3)
  %8 = load ptr, ptr %3, align 8, !tbaa !576      ; 2 uses
  %.not.i.i.i.i.i.i10.i = icmp eq ptr %8, null
  br i1 %.not.i.i.i.i.i.i10.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SR_RSU_.exit.i15.i, label %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIdEEEclEPS4_.exit.i.i.i14.i

_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIdEEEclEPS4_.exit.i.i.i14.i: ; preds = %.lr.ph.i9.i
  tail call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef 40) #40
  br label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SR_RSU_.exit.i15.i

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SR_RSU_.exit.i15.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIdEEEclEPS4_.exit.i.i.i14.i, %.lr.ph.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.s = icmp sgt i64 %6, 8
  br i1 %i.s, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SR_SU_.exit, !llvm.loop !1340

.lr.ph61:                                         ; preds = %.lr.ph, %bb.b
end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_:bb.a

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_RSU_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SR_RSU_.exit.i15.i
  %.sroa.0.03.i.i = phi ptr [ %i.p, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SR_RSU_.exit.i15.i ], [ %storemerge26.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_RSU_.exit.i.i ]
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.q = load i64, ptr %i.p, align 8, !tbaa !578
  store ptr null, ptr %i.p, align 8, !tbaa !578
  %i.r = load ptr, ptr %0, align 8, !tbaa !578
  store ptr null, ptr %0, align 8, !tbaa !578
  store ptr %i.r, ptr %i.p, align 8, !tbaa !578
  %5 = ptrtoint ptr %i.p to i64
  %6 = sub i64 %5, %i.a                           ; 2 uses
  %7 = ashr exact i64 %6, 3
  store i64 %i.q, ptr %3, align 8, !tbaa !578
  call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SU_SU_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %7, ptr noundef %3)
  %8 = load ptr, ptr %3, align 8, !tbaa !578      ; 2 uses
  %.not.i.i.i.i.i.i10.i = icmp eq ptr %8, null
  br i1 %.not.i.i.i.i.i.i10.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SR_RSU_.exit.i15.i, label %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i14.i

_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i14.i: ; preds = %.lr.ph.i9.i
  tail call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef 32) #40
  br label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SR_RSU_.exit.i15.i

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SR_RSU_.exit.i15.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i14.i, %.lr.ph.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.s = icmp sgt i64 %6, 8
  br i1 %i.s, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SR_SU_.exit, !llvm.loop !1350

.lr.ph61:                                         ; preds = %.lr.ph, %bb.b
end_hunk_2
