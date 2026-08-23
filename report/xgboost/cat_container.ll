Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cat_container?download=true
inline.NumInlined: 7297
inline.NumDeleted: 3143
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZSt21__inplace_stable_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlRKSM_E_clES19_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1E_E_EEEvSI_SI_S1C_:bb.a
  tail call void @_ZSt22__merge_without_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlRKSM_E_clES19_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1E_E_EEEvSI_SI_SI_S1C_S1C_S1D_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.e, ptr %2, i64 %3, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6)
  br label %common.ret55
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %reass.sub = sub i64 %3, %1
  %i.b = add i64 %reass.sub, 1
  %i.c = sdiv i64 %i.b, 2                         ; 4 uses
  %i.d = add i64 %i.c, %1                         ; 8 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.c:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %i.f = icmp sgt i64 %i.c, %5
  %i.g = sub i64 %3, %i.d                         ; 2 uses
  br i1 %i.f, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, label %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_SJ_S1D_S1E_.exit

common.ret53:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_SJ_S1D_S1E_.exit
  ret void

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_T2_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6)
  tail call void @_ZSt23__merge_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_SJ_S1D_S1D_S1E_S1D_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6)
  br label %common.ret53

_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_SJ_S1D_S1E_.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6)
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6)
  tail call void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_SJ_S1D_S1D_S1E_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6)
  br label %common.ret53
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %i.b = sub i64 %3, %1                           ; 5 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %4, i64 %i.b ; 2 uses
  %.sroa.028.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !247 ; 2 uses
  %.sroa.028.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.028.sroa.2.0.copyload = load ptr, ptr %.sroa.028.sroa.2.0..sroa_idx, align 8, !tbaa !407 ; 2 uses
  %i.d = sub i64 %3, %1
  %.not.i126 = icmp slt i64 %i.d, 7
  br i1 %.not.i126, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlRKSM_E_clES19_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1E_E_EEEvSI_SI_S1C_S1D_.exit, label %.lr.ph128

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  %i.e = sub i64 %3, %i.f
  %.not.i = icmp slt i64 %i.e, 7
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlRKSM_E_clES19_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1E_E_EEEvSI_SI_S1C_S1D_.exit, label %.lr.ph128, !llvm.loop !444

.lr.ph128:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i
  %.sroa.6.0.i127 = phi i64 [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ], [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ] ; 2 uses
  %i.f = add i64 %.sroa.6.0.i127, 7               ; 6 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i, !prof !55

bb.c:                                             ; preds = %.lr.ph128
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i: ; preds = %.lr.ph128
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlRKSM_E_clES19_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1E_E_EEEvSI_SI_S1C_(ptr nonnull %0, i64 %.sroa.6.0.i127, ptr nonnull %0, i64 %i.f, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.h = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i.i, label %bb.d, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, !prof !55, !llvm.loop !444

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlRKSM_E_clES19_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1E_E_EEEvSI_SI_S1C_S1D_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %.sroa.6.0.i.lcssa = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ], [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ]
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlRKSM_E_clES19_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1E_E_EEEvSI_SI_S1C_(ptr %0, i64 %.sroa.6.0.i.lcssa, ptr %2, i64 %3, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.i = icmp sgt i64 %i.b, 7
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlRKSM_E_clES19_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1E_E_EEEvSI_SI_S1C_S1D_.exit
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_T2_.exit
  %.051 = phi i64 [ 7, %.lr.ph ], [ %i.m, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_T2_.exit ] ; 5 uses
  tail call void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %.051, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  %i.l = shl nuw nsw i64 %.051, 1                 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = shl nsw i64 %.051, 2                     ; 5 uses
  %.not28.i = icmp slt i64 %i.b, %i.m
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_T2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %.idx = shl i64 %.051, 3                        ; 4 uses
  %.idx36 = shl nsw i64 %.051, 4                  ; 2 uses
  %.not = icmp eq i64 %.idx, %.idx36
  br i1 %.not, label %.lr.ph.i.us.preheader, label %.lr.ph.i

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %i.n = load i64, ptr %0, align 8, !tbaa !416
  %i.o = ashr exact i64 %.idx, 2                  ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit.us, %.lr.ph.i.us.preheader
  %.sroa.420.031.i.us = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit.us ], [ %1, %.lr.ph.i.us.preheader ] ; 2 uses
  %.029.i.us = phi ptr [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit.us ], [ %4, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.029.i.us, i64 %.idx ; 4 uses
  %umax.i.i.i.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.420.031.i.us)
  br label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.us ], [ %i.w, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.0511.i.i.i.i.i.i.us = phi ptr [ %.029.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.u, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i.us = phi i64 [ %.sroa.420.031.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i.us, %umax.i.i.i.i.i.i.us
  br i1 %exitcond.not.i.i.i.i.i.i.us, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us: ; preds = %bb.f
  %i.r = load i32, ptr %.0511.i.i.i.i.i.i.us, align 4, !tbaa !39
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !418
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.4.010.i.i.i.i.i.i.us
  store i32 %i.r, ptr %i.t, align 4, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i.us, i64 4
  %i.v = add i64 %.sroa.4.010.i.i.i.i.i.i.us, 1   ; 4 uses
  %i.w = add nsw i64 %.012.i.i.i.i.i.i.us, -1
  %i.x = icmp sgt i64 %.012.i.i.i.i.i.i.us, 1
  br i1 %i.x, label %bb.f, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us, !llvm.loop !445

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us
  %i.y = ptrtoint ptr %i.q to i64
  br i1 %i.p, label %.lr.ph.i.i.i.i.i24.i.us, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit.us

.lr.ph.i.i.i.i.i24.i.us:                          ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %i.z = load i64, ptr %0, align 8, !tbaa !416
  %umax.i.i.i.i.i25.i.us = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.v) ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %.lr.ph.i.i.i.i.i24.i.us
  %.012.i.i.i.i.i26.i.us = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %.0511.i.i.i.i.i27.i.us = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 3 uses
  %.sroa.4.010.i.i.i.i.i28.i.us = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 4 uses
  %exitcond.not.i.i.i.i.i29.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i.us, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us, label %.split48.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us: ; preds = %bb.g
  %i.aa = load i32, ptr %.0511.i.i.i.i.i27.i.us, align 4, !tbaa !39
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.4.010.i.i.i.i.i28.i.us
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !39
  %i.ad = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i29.i.us.1 = icmp eq i64 %i.ad, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us.1, label %.split48.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 8
  %i.ai = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 2 ; 2 uses
  %i.aj = add nsw i64 %.012.i.i.i.i.i26.i.us, -2
  %i.ak = icmp sgt i64 %.012.i.i.i.i.i26.i.us, 2
  br i1 %i.ak, label %bb.g, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit.us, !llvm.loop !445

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %.sroa.4.0.lcssa.i.i.i.i.i21.i.us = phi i64 [ %i.v, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %i.al = sub i64 %i.j, %i.y
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %.not.i25.us = icmp slt i64 %i.am, %i.m
  br i1 %.not.i25.us, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_T2_.exit, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !446

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit
  %.sroa.420.031.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.029.i = phi ptr [ %i.ao, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit ], [ %4, %.lr.ph.i.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.029.i, i64 %.idx ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %.029.i, i64 %.idx36 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.049.i = phi ptr [ %.1.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.029.i, %.lr.ph.i ] ; 4 uses
  %.01848.i = phi ptr [ %.119.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %i.an, %.lr.ph.i ] ; 4 uses
  %.sroa.5.047.i = phi i64 [ %i.bh, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.sroa.420.031.i, %.lr.ph.i ] ; 4 uses
  %i.ap = load i32, ptr %.01848.i, align 4, !tbaa !39
  %i.aq = sext i32 %i.ap to i64
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload, align 8, !tbaa !45 ; 2 uses
  %i.ar = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.aq
  %i.as = load i32, ptr %.049.i, align 4, !tbaa !39
  %i.at = sext i32 %i.as to i64
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.at
  %i.av = tail call noundef zeroext i1 @_ZZZN3enc8cpu_impl9SortNamesINS_6PolicyIJN7xgboost14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS_15CatStrArrayViewENS3_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEENSC_IiLm18446744073709551615EEEENKUlRKSA_E_clESY_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload, i64 noundef %i.ar, i64 noundef %i.au)
  %i.aw = load i64, ptr %0, align 8, !tbaa !416   ; 3 uses
  %i.ax = icmp ult i64 %.sroa.5.047.i, %i.aw      ; 2 uses
  br i1 %i.av, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %i.ax, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.j, !prof !41

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.i
  %i.ay = load i32, ptr %.01848.i, align 4, !tbaa !39
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.sroa.5.047.i
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %.01848.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

bb.k:                                             ; preds = %bb.h
  br i1 %i.ax, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i: ; preds = %bb.k
  %i.bc = load i32, ptr %.049.i, align 4, !tbaa !39
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.sroa.5.047.i
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !39
  %i.bf = getelementptr inbounds nuw i8, ptr %.049.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.bg = phi ptr [ %i.az, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bd, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 5 uses
  %.119.i = phi ptr [ %i.bb, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %.01848.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %.1.i = phi ptr [ %.049.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bf, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %i.bh = add i64 %.sroa.5.047.i, 1               ; 8 uses
  %i.bi = icmp ne ptr %.1.i, %i.an
  %i.bj = icmp ne ptr %.119.i, %i.ao
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bk, label %bb.h, label %._crit_edge.i.loopexit, !llvm.loop !447

._crit_edge.i.loopexit:                           ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i
  %.1.i134.le = ptrtoaddr ptr %.1.i to i64
  %i.bl = ptrtoaddr ptr %i.bg to i64              ; 2 uses
  %.119.i129.le = ptrtoaddr ptr %.119.i to i64
  %i.bm = ptrtoint ptr %i.an to i64
  %i.bn = ptrtoint ptr %.1.i to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 5 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i.loopexit
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.bh) ; 2 uses
  %i.br = xor i64 %.sroa.420.031.i, -1
  %i.bs = sub i64 %i.br, %indvar
  %i.bt = add i64 %umax.i.i.i.i.i.i, %i.bs
  %i.bu = add nsw i64 %i.bp, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bu)
  %i.bv = add i64 %umin, 1                        ; 3 uses
  %min.iters.check137 = icmp ult i64 %i.bv, 9
  br i1 %min.iters.check137, label %scalar.ph136.preheader, label %vector.memcheck133

vector.memcheck133:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bw = shl i64 %i.bh, 2
  %i.bx = add i64 %i.bw, %i.bl
  %i.by = sub i64 %.1.i134.le, %i.bx
  %diff.check135 = icmp ugt i64 %i.by, -32
  br i1 %diff.check135, label %scalar.ph136.preheader, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck133
  %i.bz = and i64 %i.bv, 7                        ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = select i1 %i.ca, i64 8, i64 %i.bz
  %n.vec139 = sub i64 %i.bv, %i.cb                ; 4 uses
  %i.cc = sub i64 %i.bp, %n.vec139
  %i.cd = shl i64 %n.vec139, 2
  %i.ce = getelementptr i8, ptr %.1.i, i64 %i.cd
  %i.cf = add i64 %i.bh, %n.vec139
  %i.cg = getelementptr [4 x i8], ptr %i.bg, i64 %i.bh
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next145, %vector.body140 ] ; 3 uses
  %i.ch = shl i64 %index141, 2
  %next.gep142 = getelementptr i8, ptr %.1.i, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load143 = load <4 x i32>, ptr %next.gep142, align 4, !tbaa !39
  %wide.load144 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !39
  %i.cj = getelementptr [4 x i8], ptr %i.cg, i64 %index141 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <4 x i32> %wide.load143, ptr %i.cj, align 4, !tbaa !39
  store <4 x i32> %wide.load144, ptr %i.ck, align 4, !tbaa !39
  %index.next145 = add nuw i64 %index141, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next145, %n.vec139
  br i1 %i.cl, label %scalar.ph136.preheader, label %vector.body140, !llvm.loop !448

scalar.ph136.preheader:                           ; preds = %vector.body140, %vector.memcheck133, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.bp, %vector.memcheck133 ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %i.cc, %vector.body140 ]
  %.0511.i.i.i.i.i.i.ph = phi ptr [ %.1.i, %vector.memcheck133 ], [ %.1.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ce, %vector.body140 ]
  %.sroa.4.010.i.i.i.i.i.i.ph = phi i64 [ %i.bh, %vector.memcheck133 ], [ %i.bh, %.lr.ph.i.i.i.i.i.i ], [ %i.cf, %vector.body140 ]
  br label %scalar.ph136

scalar.ph136:                                     ; preds = %scalar.ph136.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.cq, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %scalar.ph136.preheader ] ; 2 uses
  %.0511.i.i.i.i.i.i = phi ptr [ %i.co, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.0511.i.i.i.i.i.i.ph, %scalar.ph136.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i = phi i64 [ %i.cp, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.ph, %scalar.ph136.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, !prof !55

.split.us:                                        ; preds = %scalar.ph136, %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i: ; preds = %scalar.ph136
  %i.cm = load i32, ptr %.0511.i.i.i.i.i.i, align 4, !tbaa !39
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.sroa.4.010.i.i.i.i.i.i
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !39
  %i.co = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i, i64 4
  %i.cp = add i64 %.sroa.4.010.i.i.i.i.i.i, 1     ; 2 uses
  %i.cq = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.cr = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.cr, label %scalar.ph136, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i, !llvm.loop !449

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, %._crit_edge.i.loopexit
  %.sroa.4.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bh, %._crit_edge.i.loopexit ], [ %i.cp, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ] ; 8 uses
  %i.cs = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ct = ptrtoint ptr %.119.i to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 2                 ; 5 uses
  %i.cw = icmp sgt i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i24.i, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit

.lr.ph.i.i.i.i.i24.i:                             ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %umax.i.i.i.i.i25.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i) ; 2 uses
  %i.cx = sub i64 %umax.i.i.i.i.i25.i, %.sroa.4.0.lcssa.i.i.i.i.i.i
  %i.cy = add nsw i64 %i.cv, -1
  %i.cz = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 %i.cy)
  %i.da = add i64 %i.cz, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.da, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i24.i
  %i.db = shl i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, 2
  %i.dc = add i64 %i.db, %i.bl
  %i.dd = sub i64 %.119.i129.le, %i.dc
  %diff.check = icmp ugt i64 %i.dd, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.de = and i64 %i.da, 7                        ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  %i.dg = select i1 %i.df, i64 8, i64 %i.de
  %n.vec = sub i64 %i.da, %i.dg                   ; 4 uses
  %i.dh = sub i64 %i.cv, %n.vec
  %i.di = shl i64 %n.vec, 2
  %i.dj = getelementptr i8, ptr %.119.i, i64 %i.di
  %i.dk = add i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, %n.vec
  %i.dl = getelementptr [4 x i8], ptr %i.bg, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.119.i, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !39
  %wide.load130 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !39
  %i.do = getelementptr [4 x i8], ptr %i.dl, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x i32> %wide.load, ptr %i.do, align 4, !tbaa !39
  store <4 x i32> %wide.load130, ptr %i.dp, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %scalar.ph.preheader, label %vector.body, !llvm.loop !450

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.i.i.i24.i
  %.012.i.i.i.i.i26.i.ph = phi i64 [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph.i.i.i.i.i24.i ], [ %i.dh, %vector.body ]
  %.0511.i.i.i.i.i27.i.ph = phi ptr [ %.119.i, %vector.memcheck ], [ %.119.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.dj, %vector.body ]
  %.sroa.4.010.i.i.i.i.i28.i.ph = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %vector.memcheck ], [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.dk, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i
  %.012.i.i.i.i.i26.i = phi i64 [ %i.dv, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.012.i.i.i.i.i26.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0511.i.i.i.i.i27.i = phi ptr [ %i.dt, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.0511.i.i.i.i.i27.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i28.i = phi i64 [ %i.du, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.sroa.4.010.i.i.i.i.i28.i.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i29.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i, %umax.i.i.i.i.i25.i
  br i1 %exitcond.not.i.i.i.i.i29.i, label %.split48.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, !prof !55

.split48.us:                                      ; preds = %scalar.ph, %bb.g, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i: ; preds = %scalar.ph
  %i.dr = load i32, ptr %.0511.i.i.i.i.i27.i, align 4, !tbaa !39
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.sroa.4.010.i.i.i.i.i28.i
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !39
  %i.dt = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i, i64 4
  %i.du = add i64 %.sroa.4.010.i.i.i.i.i28.i, 1   ; 2 uses
  %i.dv = add nsw i64 %.012.i.i.i.i.i26.i, -1
  %i.dw = icmp sgt i64 %.012.i.i.i.i.i26.i, 1
  br i1 %i.dw, label %scalar.ph, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit, !llvm.loop !451

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %.sroa.4.0.lcssa.i.i.i.i.i21.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i ], [ %i.du, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ] ; 2 uses
  %i.dx = sub i64 %i.j, %i.cs
  %i.dy = ashr exact i64 %i.dx, 2                 ; 2 uses
  %.not.i25 = icmp slt i64 %i.dy, %i.m
  br i1 %.not.i25, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_T2_.exit, label %.lr.ph.i, !llvm.loop !446

_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_T2_.exit: ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit.us, %bb.e
  %.0.lcssa.i = phi ptr [ %4, %bb.e ], [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit.us ], [ %i.ao, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit ] ; 2 uses
  %.sroa.420.0.lcssa.i = phi i64 [ %1, %bb.e ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit.us ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit ]
  %.lcssa.i = phi i64 [ %i.b, %bb.e ], [ %i.am, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit.us ], [ %i.dy, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %.lcssa.i)
  %i.dz = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.ea = tail call { ptr, i64 } @_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_(ptr noundef %.0.lcssa.i, ptr noundef %i.dz, ptr noundef %i.dz, ptr noundef nonnull %i.c, ptr %0, i64 %.sroa.420.0.lcssa.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5) ; 0 uses
  %i.eb = icmp slt i64 %i.m, %i.b
  br i1 %i.eb, label %bb.e, label %._crit_edge, !llvm.loop !452

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_T2_.exit, %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlRKSM_E_clES19_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1E_E_EEEvSI_SI_S1C_S1D_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_SJ_S1D_S1D_S1E_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %11 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %.not = icmp sgt i64 %6, %7
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.b = sub i64 %3, %1
  %i.c = freeze i64 %i.b                          ; 5 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %umax.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %1) ; 2 uses
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.prol.not = icmp ult i64 %1, %i.e
  br i1 %exitcond.not.i.i.i.i.i.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol, label %.loopexit, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol: ; preds = %.prol.preheader
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !418
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  store i32 %i.i, ptr %8, align 4, !tbaa !39
  %i.j = add i64 %1, 1
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.l = add nsw i64 %i.c, -1
end_hunk_0
begin_hunk_1_@_ZSt21__inplace_stable_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSO_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %reass.sub = sub i64 %3, %1
  %i.b = add i64 %reass.sub, 1
  %i.c = sdiv i64 %i.b, 2                         ; 4 uses
  %i.d = add i64 %i.c, %1                         ; 8 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.c:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %i.f = icmp sgt i64 %i.c, %5
  %i.g = sub i64 %3, %i.d                         ; 2 uses
  br i1 %i.f, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, label %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit

common.ret53:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit
  ret void

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %6)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %6)
  tail call void @_ZSt23__merge_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_S1F_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %6)
  br label %common.ret53

_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %6)
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %6)
  tail call void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %6)
  br label %common.ret53
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %i.b = sub i64 %3, %1                           ; 5 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %4, i64 %i.b ; 2 uses
  %.sroa.028.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !247 ; 2 uses
  %.sroa.028.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.028.sroa.2.0.copyload = load ptr, ptr %.sroa.028.sroa.2.0..sroa_idx, align 8, !tbaa !407 ; 2 uses
  %i.d = sub i64 %3, %1
  %.not.i135 = icmp slt i64 %i.d, 7
  br i1 %.not.i135, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSO_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  %i.e = sub i64 %3, %i.f
  %.not.i = icmp slt i64 %i.e, 7
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSO_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137, !llvm.loop !484

.lr.ph137:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i
  %.sroa.6.0.i136 = phi i64 [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ], [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ] ; 2 uses
  %i.f = add i64 %.sroa.6.0.i136, 7               ; 6 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i, !prof !55

bb.c:                                             ; preds = %.lr.ph137
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i: ; preds = %.lr.ph137
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSO_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr nonnull %0, i64 %.sroa.6.0.i136, ptr nonnull %0, i64 %i.f, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.h = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i.i, label %bb.d, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, !prof !55, !llvm.loop !484

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSO_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %.sroa.6.0.i.lcssa = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ], [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ]
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSO_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %.sroa.6.0.i.lcssa, ptr %2, i64 %3, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.i = icmp sgt i64 %i.b, 7
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSO_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit
  %.053 = phi i64 [ 7, %.lr.ph ], [ %i.m, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit ] ; 5 uses
  tail call void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %.053, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %5)
  %i.l = shl nuw nsw i64 %.053, 1                 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = shl nsw i64 %.053, 2                     ; 5 uses
  %.not28.i = icmp slt i64 %i.b, %i.m
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %.idx = shl i64 %.053, 3                        ; 4 uses
  %.idx36 = shl nsw i64 %.053, 4                  ; 2 uses
  %.not = icmp eq i64 %.idx, %.idx36
  br i1 %.not, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader.split

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %i.n = load i64, ptr %0, align 8, !tbaa !416
  %i.o = ashr exact i64 %.idx, 2                  ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %.lr.ph.i.us.preheader
  %.sroa.420.031.i.us = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %1, %.lr.ph.i.us.preheader ] ; 2 uses
  %.029.i.us = phi ptr [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %4, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.029.i.us, i64 %.idx ; 4 uses
  %umax.i.i.i.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.420.031.i.us)
  br label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.us ], [ %i.w, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.0511.i.i.i.i.i.i.us = phi ptr [ %.029.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.u, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i.us = phi i64 [ %.sroa.420.031.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i.us, %umax.i.i.i.i.i.i.us
  br i1 %exitcond.not.i.i.i.i.i.i.us, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us: ; preds = %bb.f
  %i.r = load i32, ptr %.0511.i.i.i.i.i.i.us, align 4, !tbaa !39
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !418
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.4.010.i.i.i.i.i.i.us
  store i32 %i.r, ptr %i.t, align 4, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i.us, i64 4
  %i.v = add i64 %.sroa.4.010.i.i.i.i.i.i.us, 1   ; 4 uses
  %i.w = add nsw i64 %.012.i.i.i.i.i.i.us, -1
  %i.x = icmp sgt i64 %.012.i.i.i.i.i.i.us, 1
  br i1 %i.x, label %bb.f, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us, !llvm.loop !445

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us
  %i.y = ptrtoint ptr %i.q to i64
  br i1 %i.p, label %.lr.ph.i.i.i.i.i24.i.us, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us

.lr.ph.i.i.i.i.i24.i.us:                          ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %i.z = load i64, ptr %0, align 8, !tbaa !416
  %umax.i.i.i.i.i25.i.us = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.v) ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %.lr.ph.i.i.i.i.i24.i.us
  %.012.i.i.i.i.i26.i.us = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %.0511.i.i.i.i.i27.i.us = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 3 uses
  %.sroa.4.010.i.i.i.i.i28.i.us = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 4 uses
  %exitcond.not.i.i.i.i.i29.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i.us, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us: ; preds = %bb.g
  %i.aa = load i32, ptr %.0511.i.i.i.i.i27.i.us, align 4, !tbaa !39
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.4.010.i.i.i.i.i28.i.us
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !39
  %i.ad = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i29.i.us.1 = icmp eq i64 %i.ad, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us.1, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 8
  %i.ai = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 2 ; 2 uses
  %i.aj = add nsw i64 %.012.i.i.i.i.i26.i.us, -2
  %i.ak = icmp sgt i64 %.012.i.i.i.i.i26.i.us, 2
  br i1 %i.ak, label %bb.g, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, !llvm.loop !445

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %.sroa.4.0.lcssa.i.i.i.i.i21.i.us = phi i64 [ %i.v, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %i.al = sub i64 %i.j, %i.y
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %.not.i25.us = icmp slt i64 %i.am, %i.m
  br i1 %.not.i25.us, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !485

.lr.ph.i.preheader.split:                         ; preds = %.lr.ph.i.preheader
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload, align 8, !tbaa !45 ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !486, !nonnull !413, !align !414 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !67 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.split, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit
  %.sroa.420.031.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %1, %.lr.ph.i.preheader.split ] ; 2 uses
  %.029.i = phi ptr [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %4, %.lr.ph.i.preheader.split ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.i, i64 %.idx ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.029.i, i64 %.idx36 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.055.i = phi ptr [ %.1.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.029.i, %.lr.ph.i ] ; 3 uses
  %.01854.i = phi ptr [ %.119.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %i.aq, %.lr.ph.i ] ; 3 uses
  %.sroa.5.053.i = phi i64 [ %i.bp, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.sroa.420.031.i, %.lr.ph.i ] ; 4 uses
  %i.as = load i32, ptr %.01854.i, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.at ; 2 uses
  %i.av = load i32, ptr %.055.i, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.au, %i.ao
  br i1 %i.ay, label %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i.i, label %bb.i, !prof !41

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i.i: ; preds = %bb.h
  %i.az = icmp ult i64 %i.ax, %i.ao
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i, label %bb.j, !prof !41

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i.i
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !69 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.au
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !66
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !66
  %i.bf = icmp ult i8 %i.bc, %i.be
  %i.bg = load i64, ptr %0, align 8, !tbaa !416   ; 3 uses
  %i.bh = icmp ult i64 %.sroa.5.053.i, %i.bg      ; 2 uses
  br i1 %i.bf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.k
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.5.053.i
  store i32 %i.as, ptr %i.bj, align 4, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %.01854.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, label %bb.n, !prof !41

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i: ; preds = %bb.m
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.sroa.5.053.i
  store i32 %i.av, ptr %i.bm, align 4, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %.055.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.bo = phi ptr [ %i.bi, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bl, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 5 uses
  %.119.i = phi ptr [ %i.bk, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %.01854.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %.1.i = phi ptr [ %.055.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bn, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %i.bp = add i64 %.sroa.5.053.i, 1               ; 8 uses
  %i.bq = icmp ne ptr %.1.i, %i.aq
  %i.br = icmp ne ptr %.119.i, %i.ar
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bs, label %bb.h, label %._crit_edge.i.loopexit, !llvm.loop !489

._crit_edge.i.loopexit:                           ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i
  %.1.i143.le = ptrtoaddr ptr %.1.i to i64
  %i.bt = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %.119.i138.le = ptrtoaddr ptr %.119.i to i64
  %i.bu = ptrtoint ptr %i.aq to i64
  %i.bv = ptrtoint ptr %.1.i to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2                 ; 5 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i.loopexit
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bp) ; 2 uses
  %i.bz = xor i64 %.sroa.420.031.i, -1
  %i.ca = sub i64 %i.bz, %indvar
  %i.cb = add i64 %umax.i.i.i.i.i.i, %i.ca
  %i.cc = add nsw i64 %i.bx, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cc)
  %i.cd = add i64 %umin, 1                        ; 3 uses
  %min.iters.check146 = icmp ult i64 %i.cd, 9
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ce = shl i64 %i.bp, 2
  %i.cf = add i64 %i.ce, %i.bt
  %i.cg = sub i64 %.1.i143.le, %i.cf
  %diff.check144 = icmp ugt i64 %i.cg, -32
  br i1 %diff.check144, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck142
  %i.ch = and i64 %i.cd, 7                        ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 8, i64 %i.ch
  %n.vec148 = sub i64 %i.cd, %i.cj                ; 4 uses
  %i.ck = sub i64 %i.bx, %n.vec148
  %i.cl = shl i64 %n.vec148, 2
  %i.cm = getelementptr i8, ptr %.1.i, i64 %i.cl
  %i.cn = add i64 %i.bp, %n.vec148
  %i.co = getelementptr [4 x i8], ptr %i.bo, i64 %i.bp
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next154, %vector.body149 ] ; 3 uses
  %i.cp = shl i64 %index150, 2
  %next.gep151 = getelementptr i8, ptr %.1.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load152 = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !39
  %wide.load153 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !39
  %i.cr = getelementptr [4 x i8], ptr %i.co, i64 %index150 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %wide.load152, ptr %i.cr, align 4, !tbaa !39
  store <4 x i32> %wide.load153, ptr %i.cs, align 4, !tbaa !39
  %index.next154 = add nuw i64 %index150, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.ct, label %scalar.ph145.preheader, label %vector.body149, !llvm.loop !490

scalar.ph145.preheader:                           ; preds = %vector.body149, %vector.memcheck142, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.bx, %vector.memcheck142 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.ck, %vector.body149 ]
  %.0511.i.i.i.i.i.i.ph = phi ptr [ %.1.i, %vector.memcheck142 ], [ %.1.i, %.lr.ph.i.i.i.i.i.i ], [ %i.cm, %vector.body149 ]
  %.sroa.4.010.i.i.i.i.i.i.ph = phi i64 [ %i.bp, %vector.memcheck142 ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %i.cn, %vector.body149 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.cy, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.0511.i.i.i.i.i.i = phi ptr [ %i.cw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.0511.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i = phi i64 [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, !prof !55

.split.us:                                        ; preds = %scalar.ph145, %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i: ; preds = %scalar.ph145
  %i.cu = load i32, ptr %.0511.i.i.i.i.i.i, align 4, !tbaa !39
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i.i
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !39
  %i.cw = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i, i64 4
  %i.cx = add i64 %.sroa.4.010.i.i.i.i.i.i, 1     ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.cz = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.cz, label %scalar.ph145, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i, !llvm.loop !491

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, %._crit_edge.i.loopexit
  %.sroa.4.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bp, %._crit_edge.i.loopexit ], [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ] ; 8 uses
  %i.da = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.db = ptrtoint ptr %.119.i to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 2                 ; 5 uses
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i.i.i.i24.i, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit

.lr.ph.i.i.i.i.i24.i:                             ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %umax.i.i.i.i.i25.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i) ; 2 uses
  %i.df = sub i64 %umax.i.i.i.i.i25.i, %.sroa.4.0.lcssa.i.i.i.i.i.i
  %i.dg = add nsw i64 %i.dd, -1
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dg)
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.di, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i24.i
  %i.dj = shl i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, 2
  %i.dk = add i64 %i.dj, %i.bt
  %i.dl = sub i64 %.119.i138.le, %i.dk
  %diff.check = icmp ugt i64 %i.dl, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dm = and i64 %i.di, 7                        ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  %i.do = select i1 %i.dn, i64 8, i64 %i.dm
  %n.vec = sub i64 %i.di, %i.do                   ; 4 uses
  %i.dp = sub i64 %i.dd, %n.vec
  %i.dq = shl i64 %n.vec, 2
  %i.dr = getelementptr i8, ptr %.119.i, i64 %i.dq
  %i.ds = add i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, %n.vec
  %i.dt = getelementptr [4 x i8], ptr %i.bo, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.du = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.119.i, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !39
  %wide.load139 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !39
  %i.dw = getelementptr [4 x i8], ptr %i.dt, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x i32> %wide.load, ptr %i.dw, align 4, !tbaa !39
  store <4 x i32> %wide.load139, ptr %i.dx, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %scalar.ph.preheader, label %vector.body, !llvm.loop !492

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.i.i.i24.i
  %.012.i.i.i.i.i26.i.ph = phi i64 [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i.i.i.i.i24.i ], [ %i.dp, %vector.body ]
  %.0511.i.i.i.i.i27.i.ph = phi ptr [ %.119.i, %vector.memcheck ], [ %.119.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.dr, %vector.body ]
  %.sroa.4.010.i.i.i.i.i28.i.ph = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %vector.memcheck ], [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.ds, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i
  %.012.i.i.i.i.i26.i = phi i64 [ %i.ed, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.012.i.i.i.i.i26.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0511.i.i.i.i.i27.i = phi ptr [ %i.eb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.0511.i.i.i.i.i27.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i28.i = phi i64 [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.sroa.4.010.i.i.i.i.i28.i.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i29.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i, %umax.i.i.i.i.i25.i
  br i1 %exitcond.not.i.i.i.i.i29.i, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, !prof !55

.split50.us:                                      ; preds = %scalar.ph, %bb.g, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i: ; preds = %scalar.ph
  %i.dz = load i32, ptr %.0511.i.i.i.i.i27.i, align 4, !tbaa !39
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i28.i
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !39
  %i.eb = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i, i64 4
  %i.ec = add i64 %.sroa.4.010.i.i.i.i.i28.i, 1   ; 2 uses
  %i.ed = add nsw i64 %.012.i.i.i.i.i26.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i26.i, 1
  br i1 %i.ee, label %scalar.ph, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, !llvm.loop !493

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %.sroa.4.0.lcssa.i.i.i.i.i21.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i ], [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ] ; 2 uses
  %i.ef = sub i64 %i.j, %i.da
  %i.eg = ashr exact i64 %i.ef, 2                 ; 2 uses
  %.not.i25 = icmp slt i64 %i.eg, %i.m
  br i1 %.not.i25, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i, !llvm.loop !485

_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit: ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %bb.e
  %.0.lcssa.i = phi ptr [ %4, %bb.e ], [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ] ; 2 uses
  %.sroa.420.0.lcssa.i = phi i64 [ %1, %bb.e ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.lcssa.i = phi i64 [ %i.b, %bb.e ], [ %i.am, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.eg, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %.lcssa.i)
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.ei = tail call { ptr, i64 } @_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr noundef %.0.lcssa.i, ptr noundef %i.eh, ptr noundef %i.eh, ptr noundef nonnull %i.c, ptr %0, i64 %.sroa.420.0.lcssa.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %5) ; 0 uses
  %i.ej = icmp slt i64 %i.m, %i.b
  br i1 %i.ej, label %bb.e, label %._crit_edge, !llvm.loop !494

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSO_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %11 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %.not = icmp sgt i64 %6, %7
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.b = sub i64 %3, %1
  %i.c = freeze i64 %i.b                          ; 5 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %umax.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %1) ; 2 uses
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.prol.not = icmp ult i64 %1, %i.e
  br i1 %exitcond.not.i.i.i.i.i.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol, label %.loopexit, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol: ; preds = %.prol.preheader
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !418
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  store i32 %i.i, ptr %8, align 4, !tbaa !39
  %i.j = add i64 %1, 1
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.l = add nsw i64 %i.c, -1
end_hunk_1
begin_hunk_2_@_ZSt21__inplace_stable_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSQ_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %reass.sub = sub i64 %3, %1
  %i.b = add i64 %reass.sub, 1
  %i.c = sdiv i64 %i.b, 2                         ; 4 uses
  %i.d = add i64 %i.c, %1                         ; 8 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.c:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %i.f = icmp sgt i64 %i.c, %5
  %i.g = sub i64 %3, %i.d                         ; 2 uses
  br i1 %i.f, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, label %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit

common.ret53:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit
  ret void

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %6)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %6)
  tail call void @_ZSt23__merge_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_S1F_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %6)
  br label %common.ret53

_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %6)
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %6)
  tail call void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %6)
  br label %common.ret53
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %i.b = sub i64 %3, %1                           ; 5 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %4, i64 %i.b ; 2 uses
  %.sroa.028.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !247 ; 2 uses
  %.sroa.028.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.028.sroa.2.0.copyload = load ptr, ptr %.sroa.028.sroa.2.0..sroa_idx, align 8, !tbaa !407 ; 2 uses
  %i.d = sub i64 %3, %1
  %.not.i135 = icmp slt i64 %i.d, 7
  br i1 %.not.i135, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSQ_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  %i.e = sub i64 %3, %i.f
  %.not.i = icmp slt i64 %i.e, 7
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSQ_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137, !llvm.loop !507

.lr.ph137:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i
  %.sroa.6.0.i136 = phi i64 [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ], [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ] ; 2 uses
  %i.f = add i64 %.sroa.6.0.i136, 7               ; 6 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i, !prof !55

bb.c:                                             ; preds = %.lr.ph137
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i: ; preds = %.lr.ph137
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSQ_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr nonnull %0, i64 %.sroa.6.0.i136, ptr nonnull %0, i64 %i.f, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.h = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i.i, label %bb.d, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, !prof !55, !llvm.loop !507

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSQ_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %.sroa.6.0.i.lcssa = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ], [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ]
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSQ_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %.sroa.6.0.i.lcssa, ptr %2, i64 %3, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.i = icmp sgt i64 %i.b, 7
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSQ_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit
  %.053 = phi i64 [ 7, %.lr.ph ], [ %i.m, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit ] ; 5 uses
  tail call void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %.053, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %5)
  %i.l = shl nuw nsw i64 %.053, 1                 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = shl nsw i64 %.053, 2                     ; 5 uses
  %.not28.i = icmp slt i64 %i.b, %i.m
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %.idx = shl i64 %.053, 3                        ; 4 uses
  %.idx36 = shl nsw i64 %.053, 4                  ; 2 uses
  %.not = icmp eq i64 %.idx, %.idx36
  br i1 %.not, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader.split

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %i.n = load i64, ptr %0, align 8, !tbaa !416
  %i.o = ashr exact i64 %.idx, 2                  ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %.lr.ph.i.us.preheader
  %.sroa.420.031.i.us = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %1, %.lr.ph.i.us.preheader ] ; 2 uses
  %.029.i.us = phi ptr [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %4, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.029.i.us, i64 %.idx ; 4 uses
  %umax.i.i.i.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.420.031.i.us)
  br label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.us ], [ %i.w, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.0511.i.i.i.i.i.i.us = phi ptr [ %.029.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.u, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i.us = phi i64 [ %.sroa.420.031.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i.us, %umax.i.i.i.i.i.i.us
  br i1 %exitcond.not.i.i.i.i.i.i.us, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us: ; preds = %bb.f
  %i.r = load i32, ptr %.0511.i.i.i.i.i.i.us, align 4, !tbaa !39
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !418
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.4.010.i.i.i.i.i.i.us
  store i32 %i.r, ptr %i.t, align 4, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i.us, i64 4
  %i.v = add i64 %.sroa.4.010.i.i.i.i.i.i.us, 1   ; 4 uses
  %i.w = add nsw i64 %.012.i.i.i.i.i.i.us, -1
  %i.x = icmp sgt i64 %.012.i.i.i.i.i.i.us, 1
  br i1 %i.x, label %bb.f, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us, !llvm.loop !445

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us
  %i.y = ptrtoint ptr %i.q to i64
  br i1 %i.p, label %.lr.ph.i.i.i.i.i24.i.us, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us

.lr.ph.i.i.i.i.i24.i.us:                          ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %i.z = load i64, ptr %0, align 8, !tbaa !416
  %umax.i.i.i.i.i25.i.us = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.v) ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %.lr.ph.i.i.i.i.i24.i.us
  %.012.i.i.i.i.i26.i.us = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %.0511.i.i.i.i.i27.i.us = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 3 uses
  %.sroa.4.010.i.i.i.i.i28.i.us = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 4 uses
  %exitcond.not.i.i.i.i.i29.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i.us, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us: ; preds = %bb.g
  %i.aa = load i32, ptr %.0511.i.i.i.i.i27.i.us, align 4, !tbaa !39
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.4.010.i.i.i.i.i28.i.us
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !39
  %i.ad = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i29.i.us.1 = icmp eq i64 %i.ad, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us.1, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 8
  %i.ai = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 2 ; 2 uses
  %i.aj = add nsw i64 %.012.i.i.i.i.i26.i.us, -2
  %i.ak = icmp sgt i64 %.012.i.i.i.i.i26.i.us, 2
  br i1 %i.ak, label %bb.g, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, !llvm.loop !445

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %.sroa.4.0.lcssa.i.i.i.i.i21.i.us = phi i64 [ %i.v, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %i.al = sub i64 %i.j, %i.y
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %.not.i25.us = icmp slt i64 %i.am, %i.m
  br i1 %.not.i25.us, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !508

.lr.ph.i.preheader.split:                         ; preds = %.lr.ph.i.preheader
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload, align 8, !tbaa !45 ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !509, !nonnull !413, !align !414 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !72 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.split, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit
  %.sroa.420.031.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %1, %.lr.ph.i.preheader.split ] ; 2 uses
  %.029.i = phi ptr [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %4, %.lr.ph.i.preheader.split ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.i, i64 %.idx ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.029.i, i64 %.idx36 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.055.i = phi ptr [ %.1.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.029.i, %.lr.ph.i ] ; 3 uses
  %.01854.i = phi ptr [ %.119.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %i.aq, %.lr.ph.i ] ; 3 uses
  %.sroa.5.053.i = phi i64 [ %i.bp, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.sroa.420.031.i, %.lr.ph.i ] ; 4 uses
  %i.as = load i32, ptr %.01854.i, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.at ; 2 uses
  %i.av = load i32, ptr %.055.i, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.au, %i.ao
  br i1 %i.ay, label %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i.i, label %bb.i, !prof !41

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i.i: ; preds = %bb.h
  %i.az = icmp ult i64 %i.ax, %i.ao
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i, label %bb.j, !prof !41

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i.i
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !74 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.au
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !66
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !66
  %i.bf = icmp slt i8 %i.bc, %i.be
  %i.bg = load i64, ptr %0, align 8, !tbaa !416   ; 3 uses
  %i.bh = icmp ult i64 %.sroa.5.053.i, %i.bg      ; 2 uses
  br i1 %i.bf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.k
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.5.053.i
  store i32 %i.as, ptr %i.bj, align 4, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %.01854.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, label %bb.n, !prof !41

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i: ; preds = %bb.m
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.sroa.5.053.i
  store i32 %i.av, ptr %i.bm, align 4, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %.055.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.bo = phi ptr [ %i.bi, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bl, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 5 uses
  %.119.i = phi ptr [ %i.bk, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %.01854.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %.1.i = phi ptr [ %.055.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bn, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %i.bp = add i64 %.sroa.5.053.i, 1               ; 8 uses
  %i.bq = icmp ne ptr %.1.i, %i.aq
  %i.br = icmp ne ptr %.119.i, %i.ar
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bs, label %bb.h, label %._crit_edge.i.loopexit, !llvm.loop !511

._crit_edge.i.loopexit:                           ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i
  %.1.i143.le = ptrtoaddr ptr %.1.i to i64
  %i.bt = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %.119.i138.le = ptrtoaddr ptr %.119.i to i64
  %i.bu = ptrtoint ptr %i.aq to i64
  %i.bv = ptrtoint ptr %.1.i to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2                 ; 5 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i.loopexit
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bp) ; 2 uses
  %i.bz = xor i64 %.sroa.420.031.i, -1
  %i.ca = sub i64 %i.bz, %indvar
  %i.cb = add i64 %umax.i.i.i.i.i.i, %i.ca
  %i.cc = add nsw i64 %i.bx, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cc)
  %i.cd = add i64 %umin, 1                        ; 3 uses
  %min.iters.check146 = icmp ult i64 %i.cd, 9
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ce = shl i64 %i.bp, 2
  %i.cf = add i64 %i.ce, %i.bt
  %i.cg = sub i64 %.1.i143.le, %i.cf
  %diff.check144 = icmp ugt i64 %i.cg, -32
  br i1 %diff.check144, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck142
  %i.ch = and i64 %i.cd, 7                        ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 8, i64 %i.ch
  %n.vec148 = sub i64 %i.cd, %i.cj                ; 4 uses
  %i.ck = sub i64 %i.bx, %n.vec148
  %i.cl = shl i64 %n.vec148, 2
  %i.cm = getelementptr i8, ptr %.1.i, i64 %i.cl
  %i.cn = add i64 %i.bp, %n.vec148
  %i.co = getelementptr [4 x i8], ptr %i.bo, i64 %i.bp
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next154, %vector.body149 ] ; 3 uses
  %i.cp = shl i64 %index150, 2
  %next.gep151 = getelementptr i8, ptr %.1.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load152 = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !39
  %wide.load153 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !39
  %i.cr = getelementptr [4 x i8], ptr %i.co, i64 %index150 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %wide.load152, ptr %i.cr, align 4, !tbaa !39
  store <4 x i32> %wide.load153, ptr %i.cs, align 4, !tbaa !39
  %index.next154 = add nuw i64 %index150, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.ct, label %scalar.ph145.preheader, label %vector.body149, !llvm.loop !512

scalar.ph145.preheader:                           ; preds = %vector.body149, %vector.memcheck142, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.bx, %vector.memcheck142 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.ck, %vector.body149 ]
  %.0511.i.i.i.i.i.i.ph = phi ptr [ %.1.i, %vector.memcheck142 ], [ %.1.i, %.lr.ph.i.i.i.i.i.i ], [ %i.cm, %vector.body149 ]
  %.sroa.4.010.i.i.i.i.i.i.ph = phi i64 [ %i.bp, %vector.memcheck142 ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %i.cn, %vector.body149 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.cy, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.0511.i.i.i.i.i.i = phi ptr [ %i.cw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.0511.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i = phi i64 [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, !prof !55

.split.us:                                        ; preds = %scalar.ph145, %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i: ; preds = %scalar.ph145
  %i.cu = load i32, ptr %.0511.i.i.i.i.i.i, align 4, !tbaa !39
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i.i
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !39
  %i.cw = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i, i64 4
  %i.cx = add i64 %.sroa.4.010.i.i.i.i.i.i, 1     ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.cz = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.cz, label %scalar.ph145, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i, !llvm.loop !513

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, %._crit_edge.i.loopexit
  %.sroa.4.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bp, %._crit_edge.i.loopexit ], [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ] ; 8 uses
  %i.da = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.db = ptrtoint ptr %.119.i to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 2                 ; 5 uses
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i.i.i.i24.i, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit

.lr.ph.i.i.i.i.i24.i:                             ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %umax.i.i.i.i.i25.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i) ; 2 uses
  %i.df = sub i64 %umax.i.i.i.i.i25.i, %.sroa.4.0.lcssa.i.i.i.i.i.i
  %i.dg = add nsw i64 %i.dd, -1
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dg)
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.di, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i24.i
  %i.dj = shl i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, 2
  %i.dk = add i64 %i.dj, %i.bt
  %i.dl = sub i64 %.119.i138.le, %i.dk
  %diff.check = icmp ugt i64 %i.dl, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dm = and i64 %i.di, 7                        ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  %i.do = select i1 %i.dn, i64 8, i64 %i.dm
  %n.vec = sub i64 %i.di, %i.do                   ; 4 uses
  %i.dp = sub i64 %i.dd, %n.vec
  %i.dq = shl i64 %n.vec, 2
  %i.dr = getelementptr i8, ptr %.119.i, i64 %i.dq
  %i.ds = add i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, %n.vec
  %i.dt = getelementptr [4 x i8], ptr %i.bo, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.du = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.119.i, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !39
  %wide.load139 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !39
  %i.dw = getelementptr [4 x i8], ptr %i.dt, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x i32> %wide.load, ptr %i.dw, align 4, !tbaa !39
  store <4 x i32> %wide.load139, ptr %i.dx, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %scalar.ph.preheader, label %vector.body, !llvm.loop !514

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.i.i.i24.i
  %.012.i.i.i.i.i26.i.ph = phi i64 [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i.i.i.i.i24.i ], [ %i.dp, %vector.body ]
  %.0511.i.i.i.i.i27.i.ph = phi ptr [ %.119.i, %vector.memcheck ], [ %.119.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.dr, %vector.body ]
  %.sroa.4.010.i.i.i.i.i28.i.ph = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %vector.memcheck ], [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.ds, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i
  %.012.i.i.i.i.i26.i = phi i64 [ %i.ed, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.012.i.i.i.i.i26.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0511.i.i.i.i.i27.i = phi ptr [ %i.eb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.0511.i.i.i.i.i27.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i28.i = phi i64 [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.sroa.4.010.i.i.i.i.i28.i.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i29.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i, %umax.i.i.i.i.i25.i
  br i1 %exitcond.not.i.i.i.i.i29.i, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, !prof !55

.split50.us:                                      ; preds = %scalar.ph, %bb.g, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i: ; preds = %scalar.ph
  %i.dz = load i32, ptr %.0511.i.i.i.i.i27.i, align 4, !tbaa !39
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i28.i
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !39
  %i.eb = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i, i64 4
  %i.ec = add i64 %.sroa.4.010.i.i.i.i.i28.i, 1   ; 2 uses
  %i.ed = add nsw i64 %.012.i.i.i.i.i26.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i26.i, 1
  br i1 %i.ee, label %scalar.ph, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, !llvm.loop !515

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %.sroa.4.0.lcssa.i.i.i.i.i21.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i ], [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ] ; 2 uses
  %i.ef = sub i64 %i.j, %i.da
  %i.eg = ashr exact i64 %i.ef, 2                 ; 2 uses
  %.not.i25 = icmp slt i64 %i.eg, %i.m
  br i1 %.not.i25, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i, !llvm.loop !508

_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit: ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %bb.e
  %.0.lcssa.i = phi ptr [ %4, %bb.e ], [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ] ; 2 uses
  %.sroa.420.0.lcssa.i = phi i64 [ %1, %bb.e ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.lcssa.i = phi i64 [ %i.b, %bb.e ], [ %i.am, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.eg, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %.lcssa.i)
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.ei = tail call { ptr, i64 } @_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr noundef %.0.lcssa.i, ptr noundef %i.eh, ptr noundef %i.eh, ptr noundef nonnull %i.c, ptr %0, i64 %.sroa.420.0.lcssa.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %5) ; 0 uses
  %i.ej = icmp slt i64 %i.m, %i.b
  br i1 %i.ej, label %bb.e, label %._crit_edge, !llvm.loop !516

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSQ_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %11 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %.not = icmp sgt i64 %6, %7
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.b = sub i64 %3, %1
  %i.c = freeze i64 %i.b                          ; 5 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %umax.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %1) ; 2 uses
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.prol.not = icmp ult i64 %1, %i.e
  br i1 %exitcond.not.i.i.i.i.i.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol, label %.loopexit, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol: ; preds = %.prol.preheader
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !418
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  store i32 %i.i, ptr %8, align 4, !tbaa !39
  %i.j = add i64 %1, 1
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.l = add nsw i64 %i.c, -1
end_hunk_2
begin_hunk_3_@_ZSt21__inplace_stable_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSS_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %reass.sub = sub i64 %3, %1
  %i.b = add i64 %reass.sub, 1
  %i.c = sdiv i64 %i.b, 2                         ; 4 uses
  %i.d = add i64 %i.c, %1                         ; 8 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.c:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %i.f = icmp sgt i64 %i.c, %5
  %i.g = sub i64 %3, %i.d                         ; 2 uses
  br i1 %i.f, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, label %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit

common.ret53:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit
  ret void

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %6)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %6)
  tail call void @_ZSt23__merge_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_S1F_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %6)
  br label %common.ret53

_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %6)
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %6)
  tail call void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %6)
  br label %common.ret53
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %i.b = sub i64 %3, %1                           ; 5 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %4, i64 %i.b ; 2 uses
  %.sroa.028.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !247 ; 2 uses
  %.sroa.028.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.028.sroa.2.0.copyload = load ptr, ptr %.sroa.028.sroa.2.0..sroa_idx, align 8, !tbaa !407 ; 2 uses
  %i.d = sub i64 %3, %1
  %.not.i135 = icmp slt i64 %i.d, 7
  br i1 %.not.i135, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSS_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  %i.e = sub i64 %3, %i.f
  %.not.i = icmp slt i64 %i.e, 7
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSS_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137, !llvm.loop !528

.lr.ph137:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i
  %.sroa.6.0.i136 = phi i64 [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ], [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ] ; 2 uses
  %i.f = add i64 %.sroa.6.0.i136, 7               ; 6 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i, !prof !55

bb.c:                                             ; preds = %.lr.ph137
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i: ; preds = %.lr.ph137
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSS_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr nonnull %0, i64 %.sroa.6.0.i136, ptr nonnull %0, i64 %i.f, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.h = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i.i, label %bb.d, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, !prof !55, !llvm.loop !528

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSS_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %.sroa.6.0.i.lcssa = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ], [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ]
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSS_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %.sroa.6.0.i.lcssa, ptr %2, i64 %3, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.i = icmp sgt i64 %i.b, 7
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSS_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit
  %.053 = phi i64 [ 7, %.lr.ph ], [ %i.m, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit ] ; 5 uses
  tail call void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %.053, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %5)
  %i.l = shl nuw nsw i64 %.053, 1                 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = shl nsw i64 %.053, 2                     ; 5 uses
  %.not28.i = icmp slt i64 %i.b, %i.m
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %.idx = shl i64 %.053, 3                        ; 4 uses
  %.idx36 = shl nsw i64 %.053, 4                  ; 2 uses
  %.not = icmp eq i64 %.idx, %.idx36
  br i1 %.not, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader.split

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %i.n = load i64, ptr %0, align 8, !tbaa !416
  %i.o = ashr exact i64 %.idx, 2                  ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %.lr.ph.i.us.preheader
  %.sroa.420.031.i.us = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %1, %.lr.ph.i.us.preheader ] ; 2 uses
  %.029.i.us = phi ptr [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %4, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.029.i.us, i64 %.idx ; 4 uses
  %umax.i.i.i.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.420.031.i.us)
  br label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.us ], [ %i.w, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.0511.i.i.i.i.i.i.us = phi ptr [ %.029.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.u, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i.us = phi i64 [ %.sroa.420.031.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i.us, %umax.i.i.i.i.i.i.us
  br i1 %exitcond.not.i.i.i.i.i.i.us, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us: ; preds = %bb.f
  %i.r = load i32, ptr %.0511.i.i.i.i.i.i.us, align 4, !tbaa !39
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !418
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.4.010.i.i.i.i.i.i.us
  store i32 %i.r, ptr %i.t, align 4, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i.us, i64 4
  %i.v = add i64 %.sroa.4.010.i.i.i.i.i.i.us, 1   ; 4 uses
  %i.w = add nsw i64 %.012.i.i.i.i.i.i.us, -1
  %i.x = icmp sgt i64 %.012.i.i.i.i.i.i.us, 1
  br i1 %i.x, label %bb.f, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us, !llvm.loop !445

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us
  %i.y = ptrtoint ptr %i.q to i64
  br i1 %i.p, label %.lr.ph.i.i.i.i.i24.i.us, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us

.lr.ph.i.i.i.i.i24.i.us:                          ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %i.z = load i64, ptr %0, align 8, !tbaa !416
  %umax.i.i.i.i.i25.i.us = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.v) ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %.lr.ph.i.i.i.i.i24.i.us
  %.012.i.i.i.i.i26.i.us = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %.0511.i.i.i.i.i27.i.us = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 3 uses
  %.sroa.4.010.i.i.i.i.i28.i.us = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 4 uses
  %exitcond.not.i.i.i.i.i29.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i.us, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us: ; preds = %bb.g
  %i.aa = load i32, ptr %.0511.i.i.i.i.i27.i.us, align 4, !tbaa !39
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.4.010.i.i.i.i.i28.i.us
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !39
  %i.ad = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i29.i.us.1 = icmp eq i64 %i.ad, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us.1, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 8
  %i.ai = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 2 ; 2 uses
  %i.aj = add nsw i64 %.012.i.i.i.i.i26.i.us, -2
  %i.ak = icmp sgt i64 %.012.i.i.i.i.i26.i.us, 2
  br i1 %i.ak, label %bb.g, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, !llvm.loop !445

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %.sroa.4.0.lcssa.i.i.i.i.i21.i.us = phi i64 [ %i.v, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %i.al = sub i64 %i.j, %i.y
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %.not.i25.us = icmp slt i64 %i.am, %i.m
  br i1 %.not.i25.us, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !529

.lr.ph.i.preheader.split:                         ; preds = %.lr.ph.i.preheader
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload, align 8, !tbaa !45 ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !530, !nonnull !413, !align !414 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !75 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.split, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit
  %.sroa.420.031.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %1, %.lr.ph.i.preheader.split ] ; 2 uses
  %.029.i = phi ptr [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %4, %.lr.ph.i.preheader.split ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.i, i64 %.idx ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.029.i, i64 %.idx36 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.055.i = phi ptr [ %.1.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.029.i, %.lr.ph.i ] ; 3 uses
  %.01854.i = phi ptr [ %.119.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %i.aq, %.lr.ph.i ] ; 3 uses
  %.sroa.5.053.i = phi i64 [ %i.bp, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.sroa.420.031.i, %.lr.ph.i ] ; 4 uses
  %i.as = load i32, ptr %.01854.i, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.at ; 2 uses
  %i.av = load i32, ptr %.055.i, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.au, %i.ao
  br i1 %i.ay, label %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i.i, label %bb.i, !prof !41

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i.i: ; preds = %bb.h
  %i.az = icmp ult i64 %i.ax, %i.ao
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i, label %bb.j, !prof !41

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i.i
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !81 ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.au
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !82
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.ax
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !82
  %i.bf = icmp ult i16 %i.bc, %i.be
  %i.bg = load i64, ptr %0, align 8, !tbaa !416   ; 3 uses
  %i.bh = icmp ult i64 %.sroa.5.053.i, %i.bg      ; 2 uses
  br i1 %i.bf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.k
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.5.053.i
  store i32 %i.as, ptr %i.bj, align 4, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %.01854.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, label %bb.n, !prof !41

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i: ; preds = %bb.m
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.sroa.5.053.i
  store i32 %i.av, ptr %i.bm, align 4, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %.055.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.bo = phi ptr [ %i.bi, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bl, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 5 uses
  %.119.i = phi ptr [ %i.bk, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %.01854.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %.1.i = phi ptr [ %.055.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bn, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %i.bp = add i64 %.sroa.5.053.i, 1               ; 8 uses
  %i.bq = icmp ne ptr %.1.i, %i.aq
  %i.br = icmp ne ptr %.119.i, %i.ar
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bs, label %bb.h, label %._crit_edge.i.loopexit, !llvm.loop !533

._crit_edge.i.loopexit:                           ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i
  %.1.i143.le = ptrtoaddr ptr %.1.i to i64
  %i.bt = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %.119.i138.le = ptrtoaddr ptr %.119.i to i64
  %i.bu = ptrtoint ptr %i.aq to i64
  %i.bv = ptrtoint ptr %.1.i to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2                 ; 5 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i.loopexit
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bp) ; 2 uses
  %i.bz = xor i64 %.sroa.420.031.i, -1
  %i.ca = sub i64 %i.bz, %indvar
  %i.cb = add i64 %umax.i.i.i.i.i.i, %i.ca
  %i.cc = add nsw i64 %i.bx, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cc)
  %i.cd = add i64 %umin, 1                        ; 3 uses
  %min.iters.check146 = icmp ult i64 %i.cd, 9
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ce = shl i64 %i.bp, 2
  %i.cf = add i64 %i.ce, %i.bt
  %i.cg = sub i64 %.1.i143.le, %i.cf
  %diff.check144 = icmp ugt i64 %i.cg, -32
  br i1 %diff.check144, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck142
  %i.ch = and i64 %i.cd, 7                        ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 8, i64 %i.ch
  %n.vec148 = sub i64 %i.cd, %i.cj                ; 4 uses
  %i.ck = sub i64 %i.bx, %n.vec148
  %i.cl = shl i64 %n.vec148, 2
  %i.cm = getelementptr i8, ptr %.1.i, i64 %i.cl
  %i.cn = add i64 %i.bp, %n.vec148
  %i.co = getelementptr [4 x i8], ptr %i.bo, i64 %i.bp
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next154, %vector.body149 ] ; 3 uses
  %i.cp = shl i64 %index150, 2
  %next.gep151 = getelementptr i8, ptr %.1.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load152 = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !39
  %wide.load153 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !39
  %i.cr = getelementptr [4 x i8], ptr %i.co, i64 %index150 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %wide.load152, ptr %i.cr, align 4, !tbaa !39
  store <4 x i32> %wide.load153, ptr %i.cs, align 4, !tbaa !39
  %index.next154 = add nuw i64 %index150, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.ct, label %scalar.ph145.preheader, label %vector.body149, !llvm.loop !534

scalar.ph145.preheader:                           ; preds = %vector.body149, %vector.memcheck142, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.bx, %vector.memcheck142 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.ck, %vector.body149 ]
  %.0511.i.i.i.i.i.i.ph = phi ptr [ %.1.i, %vector.memcheck142 ], [ %.1.i, %.lr.ph.i.i.i.i.i.i ], [ %i.cm, %vector.body149 ]
  %.sroa.4.010.i.i.i.i.i.i.ph = phi i64 [ %i.bp, %vector.memcheck142 ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %i.cn, %vector.body149 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.cy, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.0511.i.i.i.i.i.i = phi ptr [ %i.cw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.0511.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i = phi i64 [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, !prof !55

.split.us:                                        ; preds = %scalar.ph145, %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i: ; preds = %scalar.ph145
  %i.cu = load i32, ptr %.0511.i.i.i.i.i.i, align 4, !tbaa !39
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i.i
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !39
  %i.cw = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i, i64 4
  %i.cx = add i64 %.sroa.4.010.i.i.i.i.i.i, 1     ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.cz = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.cz, label %scalar.ph145, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i, !llvm.loop !535

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, %._crit_edge.i.loopexit
  %.sroa.4.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bp, %._crit_edge.i.loopexit ], [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ] ; 8 uses
  %i.da = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.db = ptrtoint ptr %.119.i to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 2                 ; 5 uses
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i.i.i.i24.i, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit

.lr.ph.i.i.i.i.i24.i:                             ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %umax.i.i.i.i.i25.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i) ; 2 uses
  %i.df = sub i64 %umax.i.i.i.i.i25.i, %.sroa.4.0.lcssa.i.i.i.i.i.i
  %i.dg = add nsw i64 %i.dd, -1
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dg)
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.di, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i24.i
  %i.dj = shl i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, 2
  %i.dk = add i64 %i.dj, %i.bt
  %i.dl = sub i64 %.119.i138.le, %i.dk
  %diff.check = icmp ugt i64 %i.dl, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dm = and i64 %i.di, 7                        ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  %i.do = select i1 %i.dn, i64 8, i64 %i.dm
  %n.vec = sub i64 %i.di, %i.do                   ; 4 uses
  %i.dp = sub i64 %i.dd, %n.vec
  %i.dq = shl i64 %n.vec, 2
  %i.dr = getelementptr i8, ptr %.119.i, i64 %i.dq
  %i.ds = add i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, %n.vec
  %i.dt = getelementptr [4 x i8], ptr %i.bo, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.du = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.119.i, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !39
  %wide.load139 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !39
  %i.dw = getelementptr [4 x i8], ptr %i.dt, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x i32> %wide.load, ptr %i.dw, align 4, !tbaa !39
  store <4 x i32> %wide.load139, ptr %i.dx, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %scalar.ph.preheader, label %vector.body, !llvm.loop !536

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.i.i.i24.i
  %.012.i.i.i.i.i26.i.ph = phi i64 [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i.i.i.i.i24.i ], [ %i.dp, %vector.body ]
  %.0511.i.i.i.i.i27.i.ph = phi ptr [ %.119.i, %vector.memcheck ], [ %.119.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.dr, %vector.body ]
  %.sroa.4.010.i.i.i.i.i28.i.ph = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %vector.memcheck ], [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.ds, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i
  %.012.i.i.i.i.i26.i = phi i64 [ %i.ed, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.012.i.i.i.i.i26.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0511.i.i.i.i.i27.i = phi ptr [ %i.eb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.0511.i.i.i.i.i27.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i28.i = phi i64 [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.sroa.4.010.i.i.i.i.i28.i.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i29.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i, %umax.i.i.i.i.i25.i
  br i1 %exitcond.not.i.i.i.i.i29.i, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, !prof !55

.split50.us:                                      ; preds = %scalar.ph, %bb.g, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i: ; preds = %scalar.ph
  %i.dz = load i32, ptr %.0511.i.i.i.i.i27.i, align 4, !tbaa !39
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i28.i
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !39
  %i.eb = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i, i64 4
  %i.ec = add i64 %.sroa.4.010.i.i.i.i.i28.i, 1   ; 2 uses
  %i.ed = add nsw i64 %.012.i.i.i.i.i26.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i26.i, 1
  br i1 %i.ee, label %scalar.ph, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, !llvm.loop !537

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %.sroa.4.0.lcssa.i.i.i.i.i21.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i ], [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ] ; 2 uses
  %i.ef = sub i64 %i.j, %i.da
  %i.eg = ashr exact i64 %i.ef, 2                 ; 2 uses
  %.not.i25 = icmp slt i64 %i.eg, %i.m
  br i1 %.not.i25, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i, !llvm.loop !529

_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit: ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %bb.e
  %.0.lcssa.i = phi ptr [ %4, %bb.e ], [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ] ; 2 uses
  %.sroa.420.0.lcssa.i = phi i64 [ %1, %bb.e ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.lcssa.i = phi i64 [ %i.b, %bb.e ], [ %i.am, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.eg, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %.lcssa.i)
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.ei = tail call { ptr, i64 } @_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr noundef %.0.lcssa.i, ptr noundef %i.eh, ptr noundef %i.eh, ptr noundef nonnull %i.c, ptr %0, i64 %.sroa.420.0.lcssa.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %5) ; 0 uses
  %i.ej = icmp slt i64 %i.m, %i.b
  br i1 %i.ej, label %bb.e, label %._crit_edge, !llvm.loop !538

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSS_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %11 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %.not = icmp sgt i64 %6, %7
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.b = sub i64 %3, %1
  %i.c = freeze i64 %i.b                          ; 5 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %umax.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %1) ; 2 uses
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.prol.not = icmp ult i64 %1, %i.e
  br i1 %exitcond.not.i.i.i.i.i.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol, label %.loopexit, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol: ; preds = %.prol.preheader
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !418
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  store i32 %i.i, ptr %8, align 4, !tbaa !39
  %i.j = add i64 %1, 1
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.l = add nsw i64 %i.c, -1
end_hunk_3
begin_hunk_4_@_ZSt21__inplace_stable_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSU_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %reass.sub = sub i64 %3, %1
  %i.b = add i64 %reass.sub, 1
  %i.c = sdiv i64 %i.b, 2                         ; 4 uses
  %i.d = add i64 %i.c, %1                         ; 8 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.c:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %i.f = icmp sgt i64 %i.c, %5
  %i.g = sub i64 %3, %i.d                         ; 2 uses
  br i1 %i.f, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, label %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit

common.ret53:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit
  ret void

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %6)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %6)
  tail call void @_ZSt23__merge_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_S1F_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %6)
  br label %common.ret53

_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %6)
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %6)
  tail call void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %6)
  br label %common.ret53
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %i.b = sub i64 %3, %1                           ; 5 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %4, i64 %i.b ; 2 uses
  %.sroa.028.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !247 ; 2 uses
  %.sroa.028.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.028.sroa.2.0.copyload = load ptr, ptr %.sroa.028.sroa.2.0..sroa_idx, align 8, !tbaa !407 ; 2 uses
  %i.d = sub i64 %3, %1
  %.not.i135 = icmp slt i64 %i.d, 7
  br i1 %.not.i135, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSU_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  %i.e = sub i64 %3, %i.f
  %.not.i = icmp slt i64 %i.e, 7
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSU_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137, !llvm.loop !550

.lr.ph137:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i
  %.sroa.6.0.i136 = phi i64 [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ], [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ] ; 2 uses
  %i.f = add i64 %.sroa.6.0.i136, 7               ; 6 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i, !prof !55

bb.c:                                             ; preds = %.lr.ph137
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i: ; preds = %.lr.ph137
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSU_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr nonnull %0, i64 %.sroa.6.0.i136, ptr nonnull %0, i64 %i.f, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.h = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i.i, label %bb.d, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, !prof !55, !llvm.loop !550

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSU_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %.sroa.6.0.i.lcssa = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ], [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ]
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSU_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %.sroa.6.0.i.lcssa, ptr %2, i64 %3, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.i = icmp sgt i64 %i.b, 7
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSU_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit
  %.053 = phi i64 [ 7, %.lr.ph ], [ %i.m, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit ] ; 5 uses
  tail call void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %.053, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %5)
  %i.l = shl nuw nsw i64 %.053, 1                 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = shl nsw i64 %.053, 2                     ; 5 uses
  %.not28.i = icmp slt i64 %i.b, %i.m
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %.idx = shl i64 %.053, 3                        ; 4 uses
  %.idx36 = shl nsw i64 %.053, 4                  ; 2 uses
  %.not = icmp eq i64 %.idx, %.idx36
  br i1 %.not, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader.split

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %i.n = load i64, ptr %0, align 8, !tbaa !416
  %i.o = ashr exact i64 %.idx, 2                  ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %.lr.ph.i.us.preheader
  %.sroa.420.031.i.us = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %1, %.lr.ph.i.us.preheader ] ; 2 uses
  %.029.i.us = phi ptr [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %4, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.029.i.us, i64 %.idx ; 4 uses
  %umax.i.i.i.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.420.031.i.us)
  br label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.us ], [ %i.w, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.0511.i.i.i.i.i.i.us = phi ptr [ %.029.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.u, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i.us = phi i64 [ %.sroa.420.031.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i.us, %umax.i.i.i.i.i.i.us
  br i1 %exitcond.not.i.i.i.i.i.i.us, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us: ; preds = %bb.f
  %i.r = load i32, ptr %.0511.i.i.i.i.i.i.us, align 4, !tbaa !39
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !418
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.4.010.i.i.i.i.i.i.us
  store i32 %i.r, ptr %i.t, align 4, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i.us, i64 4
  %i.v = add i64 %.sroa.4.010.i.i.i.i.i.i.us, 1   ; 4 uses
  %i.w = add nsw i64 %.012.i.i.i.i.i.i.us, -1
  %i.x = icmp sgt i64 %.012.i.i.i.i.i.i.us, 1
  br i1 %i.x, label %bb.f, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us, !llvm.loop !445

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us
  %i.y = ptrtoint ptr %i.q to i64
  br i1 %i.p, label %.lr.ph.i.i.i.i.i24.i.us, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us

.lr.ph.i.i.i.i.i24.i.us:                          ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %i.z = load i64, ptr %0, align 8, !tbaa !416
  %umax.i.i.i.i.i25.i.us = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.v) ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %.lr.ph.i.i.i.i.i24.i.us
  %.012.i.i.i.i.i26.i.us = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %.0511.i.i.i.i.i27.i.us = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 3 uses
  %.sroa.4.010.i.i.i.i.i28.i.us = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 4 uses
  %exitcond.not.i.i.i.i.i29.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i.us, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us: ; preds = %bb.g
  %i.aa = load i32, ptr %.0511.i.i.i.i.i27.i.us, align 4, !tbaa !39
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.4.010.i.i.i.i.i28.i.us
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !39
  %i.ad = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i29.i.us.1 = icmp eq i64 %i.ad, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us.1, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 8
  %i.ai = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 2 ; 2 uses
  %i.aj = add nsw i64 %.012.i.i.i.i.i26.i.us, -2
  %i.ak = icmp sgt i64 %.012.i.i.i.i.i26.i.us, 2
  br i1 %i.ak, label %bb.g, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, !llvm.loop !445

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %.sroa.4.0.lcssa.i.i.i.i.i21.i.us = phi i64 [ %i.v, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %i.al = sub i64 %i.j, %i.y
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %.not.i25.us = icmp slt i64 %i.am, %i.m
  br i1 %.not.i25.us, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !551

.lr.ph.i.preheader.split:                         ; preds = %.lr.ph.i.preheader
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload, align 8, !tbaa !45 ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !552, !nonnull !413, !align !414 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !84 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.split, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit
  %.sroa.420.031.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %1, %.lr.ph.i.preheader.split ] ; 2 uses
  %.029.i = phi ptr [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %4, %.lr.ph.i.preheader.split ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.i, i64 %.idx ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.029.i, i64 %.idx36 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.055.i = phi ptr [ %.1.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.029.i, %.lr.ph.i ] ; 3 uses
  %.01854.i = phi ptr [ %.119.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %i.aq, %.lr.ph.i ] ; 3 uses
  %.sroa.5.053.i = phi i64 [ %i.bp, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.sroa.420.031.i, %.lr.ph.i ] ; 4 uses
  %i.as = load i32, ptr %.01854.i, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.at ; 2 uses
  %i.av = load i32, ptr %.055.i, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.au, %i.ao
  br i1 %i.ay, label %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i.i, label %bb.i, !prof !41

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i.i: ; preds = %bb.h
  %i.az = icmp ult i64 %i.ax, %i.ao
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i, label %bb.j, !prof !41

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i.i
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !89 ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.au
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !82
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.ax
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !82
  %i.bf = icmp slt i16 %i.bc, %i.be
  %i.bg = load i64, ptr %0, align 8, !tbaa !416   ; 3 uses
  %i.bh = icmp ult i64 %.sroa.5.053.i, %i.bg      ; 2 uses
  br i1 %i.bf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.k
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.5.053.i
  store i32 %i.as, ptr %i.bj, align 4, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %.01854.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, label %bb.n, !prof !41

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i: ; preds = %bb.m
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.sroa.5.053.i
  store i32 %i.av, ptr %i.bm, align 4, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %.055.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.bo = phi ptr [ %i.bi, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bl, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 5 uses
  %.119.i = phi ptr [ %i.bk, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %.01854.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %.1.i = phi ptr [ %.055.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bn, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %i.bp = add i64 %.sroa.5.053.i, 1               ; 8 uses
  %i.bq = icmp ne ptr %.1.i, %i.aq
  %i.br = icmp ne ptr %.119.i, %i.ar
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bs, label %bb.h, label %._crit_edge.i.loopexit, !llvm.loop !555

._crit_edge.i.loopexit:                           ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i
  %.1.i143.le = ptrtoaddr ptr %.1.i to i64
  %i.bt = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %.119.i138.le = ptrtoaddr ptr %.119.i to i64
  %i.bu = ptrtoint ptr %i.aq to i64
  %i.bv = ptrtoint ptr %.1.i to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2                 ; 5 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i.loopexit
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bp) ; 2 uses
  %i.bz = xor i64 %.sroa.420.031.i, -1
  %i.ca = sub i64 %i.bz, %indvar
  %i.cb = add i64 %umax.i.i.i.i.i.i, %i.ca
  %i.cc = add nsw i64 %i.bx, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cc)
  %i.cd = add i64 %umin, 1                        ; 3 uses
  %min.iters.check146 = icmp ult i64 %i.cd, 9
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ce = shl i64 %i.bp, 2
  %i.cf = add i64 %i.ce, %i.bt
  %i.cg = sub i64 %.1.i143.le, %i.cf
  %diff.check144 = icmp ugt i64 %i.cg, -32
  br i1 %diff.check144, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck142
  %i.ch = and i64 %i.cd, 7                        ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 8, i64 %i.ch
  %n.vec148 = sub i64 %i.cd, %i.cj                ; 4 uses
  %i.ck = sub i64 %i.bx, %n.vec148
  %i.cl = shl i64 %n.vec148, 2
  %i.cm = getelementptr i8, ptr %.1.i, i64 %i.cl
  %i.cn = add i64 %i.bp, %n.vec148
  %i.co = getelementptr [4 x i8], ptr %i.bo, i64 %i.bp
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next154, %vector.body149 ] ; 3 uses
  %i.cp = shl i64 %index150, 2
  %next.gep151 = getelementptr i8, ptr %.1.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load152 = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !39
  %wide.load153 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !39
  %i.cr = getelementptr [4 x i8], ptr %i.co, i64 %index150 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %wide.load152, ptr %i.cr, align 4, !tbaa !39
  store <4 x i32> %wide.load153, ptr %i.cs, align 4, !tbaa !39
  %index.next154 = add nuw i64 %index150, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.ct, label %scalar.ph145.preheader, label %vector.body149, !llvm.loop !556

scalar.ph145.preheader:                           ; preds = %vector.body149, %vector.memcheck142, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.bx, %vector.memcheck142 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.ck, %vector.body149 ]
  %.0511.i.i.i.i.i.i.ph = phi ptr [ %.1.i, %vector.memcheck142 ], [ %.1.i, %.lr.ph.i.i.i.i.i.i ], [ %i.cm, %vector.body149 ]
  %.sroa.4.010.i.i.i.i.i.i.ph = phi i64 [ %i.bp, %vector.memcheck142 ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %i.cn, %vector.body149 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.cy, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.0511.i.i.i.i.i.i = phi ptr [ %i.cw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.0511.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i = phi i64 [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, !prof !55

.split.us:                                        ; preds = %scalar.ph145, %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i: ; preds = %scalar.ph145
  %i.cu = load i32, ptr %.0511.i.i.i.i.i.i, align 4, !tbaa !39
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i.i
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !39
  %i.cw = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i, i64 4
  %i.cx = add i64 %.sroa.4.010.i.i.i.i.i.i, 1     ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.cz = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.cz, label %scalar.ph145, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i, !llvm.loop !557

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, %._crit_edge.i.loopexit
  %.sroa.4.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bp, %._crit_edge.i.loopexit ], [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ] ; 8 uses
  %i.da = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.db = ptrtoint ptr %.119.i to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 2                 ; 5 uses
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i.i.i.i24.i, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit

.lr.ph.i.i.i.i.i24.i:                             ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %umax.i.i.i.i.i25.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i) ; 2 uses
  %i.df = sub i64 %umax.i.i.i.i.i25.i, %.sroa.4.0.lcssa.i.i.i.i.i.i
  %i.dg = add nsw i64 %i.dd, -1
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dg)
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.di, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i24.i
  %i.dj = shl i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, 2
  %i.dk = add i64 %i.dj, %i.bt
  %i.dl = sub i64 %.119.i138.le, %i.dk
  %diff.check = icmp ugt i64 %i.dl, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dm = and i64 %i.di, 7                        ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  %i.do = select i1 %i.dn, i64 8, i64 %i.dm
  %n.vec = sub i64 %i.di, %i.do                   ; 4 uses
  %i.dp = sub i64 %i.dd, %n.vec
  %i.dq = shl i64 %n.vec, 2
  %i.dr = getelementptr i8, ptr %.119.i, i64 %i.dq
  %i.ds = add i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, %n.vec
  %i.dt = getelementptr [4 x i8], ptr %i.bo, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.du = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.119.i, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !39
  %wide.load139 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !39
  %i.dw = getelementptr [4 x i8], ptr %i.dt, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x i32> %wide.load, ptr %i.dw, align 4, !tbaa !39
  store <4 x i32> %wide.load139, ptr %i.dx, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %scalar.ph.preheader, label %vector.body, !llvm.loop !558

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.i.i.i24.i
  %.012.i.i.i.i.i26.i.ph = phi i64 [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i.i.i.i.i24.i ], [ %i.dp, %vector.body ]
  %.0511.i.i.i.i.i27.i.ph = phi ptr [ %.119.i, %vector.memcheck ], [ %.119.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.dr, %vector.body ]
  %.sroa.4.010.i.i.i.i.i28.i.ph = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %vector.memcheck ], [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.ds, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i
  %.012.i.i.i.i.i26.i = phi i64 [ %i.ed, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.012.i.i.i.i.i26.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0511.i.i.i.i.i27.i = phi ptr [ %i.eb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.0511.i.i.i.i.i27.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i28.i = phi i64 [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.sroa.4.010.i.i.i.i.i28.i.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i29.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i, %umax.i.i.i.i.i25.i
  br i1 %exitcond.not.i.i.i.i.i29.i, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, !prof !55

.split50.us:                                      ; preds = %scalar.ph, %bb.g, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i: ; preds = %scalar.ph
  %i.dz = load i32, ptr %.0511.i.i.i.i.i27.i, align 4, !tbaa !39
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i28.i
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !39
  %i.eb = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i, i64 4
  %i.ec = add i64 %.sroa.4.010.i.i.i.i.i28.i, 1   ; 2 uses
  %i.ed = add nsw i64 %.012.i.i.i.i.i26.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i26.i, 1
  br i1 %i.ee, label %scalar.ph, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, !llvm.loop !559

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %.sroa.4.0.lcssa.i.i.i.i.i21.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i ], [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ] ; 2 uses
  %i.ef = sub i64 %i.j, %i.da
  %i.eg = ashr exact i64 %i.ef, 2                 ; 2 uses
  %.not.i25 = icmp slt i64 %i.eg, %i.m
  br i1 %.not.i25, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i, !llvm.loop !551

_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit: ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %bb.e
  %.0.lcssa.i = phi ptr [ %4, %bb.e ], [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ] ; 2 uses
  %.sroa.420.0.lcssa.i = phi i64 [ %1, %bb.e ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.lcssa.i = phi i64 [ %i.b, %bb.e ], [ %i.am, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.eg, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %.lcssa.i)
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.ei = tail call { ptr, i64 } @_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr noundef %.0.lcssa.i, ptr noundef %i.eh, ptr noundef %i.eh, ptr noundef nonnull %i.c, ptr %0, i64 %.sroa.420.0.lcssa.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %5) ; 0 uses
  %i.ej = icmp slt i64 %i.m, %i.b
  br i1 %i.ej, label %bb.e, label %._crit_edge, !llvm.loop !560

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSU_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %11 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %.not = icmp sgt i64 %6, %7
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.b = sub i64 %3, %1
  %i.c = freeze i64 %i.b                          ; 5 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %umax.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %1) ; 2 uses
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.prol.not = icmp ult i64 %1, %i.e
  br i1 %exitcond.not.i.i.i.i.i.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol, label %.loopexit, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol: ; preds = %.prol.preheader
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !418
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  store i32 %i.i, ptr %8, align 4, !tbaa !39
  %i.j = add i64 %1, 1
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.l = add nsw i64 %i.c, -1
end_hunk_4
begin_hunk_5_@_ZSt21__inplace_stable_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSW_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %reass.sub = sub i64 %3, %1
  %i.b = add i64 %reass.sub, 1
  %i.c = sdiv i64 %i.b, 2                         ; 4 uses
  %i.d = add i64 %i.c, %1                         ; 8 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.c:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %i.f = icmp sgt i64 %i.c, %5
  %i.g = sub i64 %3, %i.d                         ; 2 uses
  br i1 %i.f, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, label %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit

common.ret53:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit
  ret void

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %6)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %6)
  tail call void @_ZSt23__merge_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_S1F_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %6)
  br label %common.ret53

_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %6)
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %6)
  tail call void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %6)
  br label %common.ret53
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %i.b = sub i64 %3, %1                           ; 5 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %4, i64 %i.b ; 2 uses
  %.sroa.028.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !247 ; 2 uses
  %.sroa.028.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.028.sroa.2.0.copyload = load ptr, ptr %.sroa.028.sroa.2.0..sroa_idx, align 8, !tbaa !407 ; 2 uses
  %i.d = sub i64 %3, %1
  %.not.i135 = icmp slt i64 %i.d, 7
  br i1 %.not.i135, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSW_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  %i.e = sub i64 %3, %i.f
  %.not.i = icmp slt i64 %i.e, 7
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSW_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137, !llvm.loop !572

.lr.ph137:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i
  %.sroa.6.0.i136 = phi i64 [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ], [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ] ; 2 uses
  %i.f = add i64 %.sroa.6.0.i136, 7               ; 6 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i, !prof !55

bb.c:                                             ; preds = %.lr.ph137
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i: ; preds = %.lr.ph137
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSW_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr nonnull %0, i64 %.sroa.6.0.i136, ptr nonnull %0, i64 %i.f, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.h = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i.i, label %bb.d, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, !prof !55, !llvm.loop !572

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSW_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %.sroa.6.0.i.lcssa = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ], [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ]
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSW_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %.sroa.6.0.i.lcssa, ptr %2, i64 %3, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.i = icmp sgt i64 %i.b, 7
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSW_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit
  %.053 = phi i64 [ 7, %.lr.ph ], [ %i.m, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit ] ; 5 uses
  tail call void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %.053, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %5)
  %i.l = shl nuw nsw i64 %.053, 1                 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = shl nsw i64 %.053, 2                     ; 5 uses
  %.not28.i = icmp slt i64 %i.b, %i.m
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %.idx = shl i64 %.053, 3                        ; 4 uses
  %.idx36 = shl nsw i64 %.053, 4                  ; 2 uses
  %.not = icmp eq i64 %.idx, %.idx36
  br i1 %.not, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader.split

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %i.n = load i64, ptr %0, align 8, !tbaa !416
  %i.o = ashr exact i64 %.idx, 2                  ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %.lr.ph.i.us.preheader
  %.sroa.420.031.i.us = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %1, %.lr.ph.i.us.preheader ] ; 2 uses
  %.029.i.us = phi ptr [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %4, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.029.i.us, i64 %.idx ; 4 uses
  %umax.i.i.i.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.420.031.i.us)
  br label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.us ], [ %i.w, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.0511.i.i.i.i.i.i.us = phi ptr [ %.029.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.u, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i.us = phi i64 [ %.sroa.420.031.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i.us, %umax.i.i.i.i.i.i.us
  br i1 %exitcond.not.i.i.i.i.i.i.us, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us: ; preds = %bb.f
  %i.r = load i32, ptr %.0511.i.i.i.i.i.i.us, align 4, !tbaa !39
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !418
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.4.010.i.i.i.i.i.i.us
  store i32 %i.r, ptr %i.t, align 4, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i.us, i64 4
  %i.v = add i64 %.sroa.4.010.i.i.i.i.i.i.us, 1   ; 4 uses
  %i.w = add nsw i64 %.012.i.i.i.i.i.i.us, -1
  %i.x = icmp sgt i64 %.012.i.i.i.i.i.i.us, 1
  br i1 %i.x, label %bb.f, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us, !llvm.loop !445

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us
  %i.y = ptrtoint ptr %i.q to i64
  br i1 %i.p, label %.lr.ph.i.i.i.i.i24.i.us, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us

.lr.ph.i.i.i.i.i24.i.us:                          ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %i.z = load i64, ptr %0, align 8, !tbaa !416
  %umax.i.i.i.i.i25.i.us = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.v) ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %.lr.ph.i.i.i.i.i24.i.us
  %.012.i.i.i.i.i26.i.us = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %.0511.i.i.i.i.i27.i.us = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 3 uses
  %.sroa.4.010.i.i.i.i.i28.i.us = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 4 uses
  %exitcond.not.i.i.i.i.i29.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i.us, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us: ; preds = %bb.g
  %i.aa = load i32, ptr %.0511.i.i.i.i.i27.i.us, align 4, !tbaa !39
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.4.010.i.i.i.i.i28.i.us
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !39
  %i.ad = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i29.i.us.1 = icmp eq i64 %i.ad, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us.1, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 8
  %i.ai = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 2 ; 2 uses
  %i.aj = add nsw i64 %.012.i.i.i.i.i26.i.us, -2
  %i.ak = icmp sgt i64 %.012.i.i.i.i.i26.i.us, 2
  br i1 %i.ak, label %bb.g, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, !llvm.loop !445

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %.sroa.4.0.lcssa.i.i.i.i.i21.i.us = phi i64 [ %i.v, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %i.al = sub i64 %i.j, %i.y
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %.not.i25.us = icmp slt i64 %i.am, %i.m
  br i1 %.not.i25.us, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !573

.lr.ph.i.preheader.split:                         ; preds = %.lr.ph.i.preheader
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload, align 8, !tbaa !45 ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !574, !nonnull !413, !align !414 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !90 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.split, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit
  %.sroa.420.031.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %1, %.lr.ph.i.preheader.split ] ; 2 uses
  %.029.i = phi ptr [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %4, %.lr.ph.i.preheader.split ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.i, i64 %.idx ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.029.i, i64 %.idx36 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.055.i = phi ptr [ %.1.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.029.i, %.lr.ph.i ] ; 3 uses
  %.01854.i = phi ptr [ %.119.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %i.aq, %.lr.ph.i ] ; 3 uses
  %.sroa.5.053.i = phi i64 [ %i.bp, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.sroa.420.031.i, %.lr.ph.i ] ; 4 uses
  %i.as = load i32, ptr %.01854.i, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.at ; 2 uses
  %i.av = load i32, ptr %.055.i, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.au, %i.ao
  br i1 %i.ay, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.i, label %bb.i, !prof !41

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.i: ; preds = %bb.h
  %i.az = icmp ult i64 %i.ax, %i.ao
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i, label %bb.j, !prof !41

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.i
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !95 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.au
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !39
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ax
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !39
  %i.bf = icmp ult i32 %i.bc, %i.be
  %i.bg = load i64, ptr %0, align 8, !tbaa !416   ; 3 uses
  %i.bh = icmp ult i64 %.sroa.5.053.i, %i.bg      ; 2 uses
  br i1 %i.bf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.k
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.5.053.i
  store i32 %i.as, ptr %i.bj, align 4, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %.01854.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, label %bb.n, !prof !41

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i: ; preds = %bb.m
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.sroa.5.053.i
  store i32 %i.av, ptr %i.bm, align 4, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %.055.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.bo = phi ptr [ %i.bi, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bl, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 5 uses
  %.119.i = phi ptr [ %i.bk, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %.01854.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %.1.i = phi ptr [ %.055.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bn, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %i.bp = add i64 %.sroa.5.053.i, 1               ; 8 uses
  %i.bq = icmp ne ptr %.1.i, %i.aq
  %i.br = icmp ne ptr %.119.i, %i.ar
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bs, label %bb.h, label %._crit_edge.i.loopexit, !llvm.loop !577

._crit_edge.i.loopexit:                           ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i
  %.1.i143.le = ptrtoaddr ptr %.1.i to i64
  %i.bt = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %.119.i138.le = ptrtoaddr ptr %.119.i to i64
  %i.bu = ptrtoint ptr %i.aq to i64
  %i.bv = ptrtoint ptr %.1.i to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2                 ; 5 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i.loopexit
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bp) ; 2 uses
  %i.bz = xor i64 %.sroa.420.031.i, -1
  %i.ca = sub i64 %i.bz, %indvar
  %i.cb = add i64 %umax.i.i.i.i.i.i, %i.ca
  %i.cc = add nsw i64 %i.bx, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cc)
  %i.cd = add i64 %umin, 1                        ; 3 uses
  %min.iters.check146 = icmp ult i64 %i.cd, 9
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ce = shl i64 %i.bp, 2
  %i.cf = add i64 %i.ce, %i.bt
  %i.cg = sub i64 %.1.i143.le, %i.cf
  %diff.check144 = icmp ugt i64 %i.cg, -32
  br i1 %diff.check144, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck142
  %i.ch = and i64 %i.cd, 7                        ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 8, i64 %i.ch
  %n.vec148 = sub i64 %i.cd, %i.cj                ; 4 uses
  %i.ck = sub i64 %i.bx, %n.vec148
  %i.cl = shl i64 %n.vec148, 2
  %i.cm = getelementptr i8, ptr %.1.i, i64 %i.cl
  %i.cn = add i64 %i.bp, %n.vec148
  %i.co = getelementptr [4 x i8], ptr %i.bo, i64 %i.bp
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next154, %vector.body149 ] ; 3 uses
  %i.cp = shl i64 %index150, 2
  %next.gep151 = getelementptr i8, ptr %.1.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load152 = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !39
  %wide.load153 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !39
  %i.cr = getelementptr [4 x i8], ptr %i.co, i64 %index150 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %wide.load152, ptr %i.cr, align 4, !tbaa !39
  store <4 x i32> %wide.load153, ptr %i.cs, align 4, !tbaa !39
  %index.next154 = add nuw i64 %index150, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.ct, label %scalar.ph145.preheader, label %vector.body149, !llvm.loop !578

scalar.ph145.preheader:                           ; preds = %vector.body149, %vector.memcheck142, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.bx, %vector.memcheck142 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.ck, %vector.body149 ]
  %.0511.i.i.i.i.i.i.ph = phi ptr [ %.1.i, %vector.memcheck142 ], [ %.1.i, %.lr.ph.i.i.i.i.i.i ], [ %i.cm, %vector.body149 ]
  %.sroa.4.010.i.i.i.i.i.i.ph = phi i64 [ %i.bp, %vector.memcheck142 ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %i.cn, %vector.body149 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.cy, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.0511.i.i.i.i.i.i = phi ptr [ %i.cw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.0511.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i = phi i64 [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, !prof !55

.split.us:                                        ; preds = %scalar.ph145, %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i: ; preds = %scalar.ph145
  %i.cu = load i32, ptr %.0511.i.i.i.i.i.i, align 4, !tbaa !39
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i.i
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !39
  %i.cw = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i, i64 4
  %i.cx = add i64 %.sroa.4.010.i.i.i.i.i.i, 1     ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.cz = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.cz, label %scalar.ph145, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i, !llvm.loop !579

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, %._crit_edge.i.loopexit
  %.sroa.4.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bp, %._crit_edge.i.loopexit ], [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ] ; 8 uses
  %i.da = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.db = ptrtoint ptr %.119.i to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 2                 ; 5 uses
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i.i.i.i24.i, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit

.lr.ph.i.i.i.i.i24.i:                             ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %umax.i.i.i.i.i25.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i) ; 2 uses
  %i.df = sub i64 %umax.i.i.i.i.i25.i, %.sroa.4.0.lcssa.i.i.i.i.i.i
  %i.dg = add nsw i64 %i.dd, -1
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dg)
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.di, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i24.i
  %i.dj = shl i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, 2
  %i.dk = add i64 %i.dj, %i.bt
  %i.dl = sub i64 %.119.i138.le, %i.dk
  %diff.check = icmp ugt i64 %i.dl, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dm = and i64 %i.di, 7                        ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  %i.do = select i1 %i.dn, i64 8, i64 %i.dm
  %n.vec = sub i64 %i.di, %i.do                   ; 4 uses
  %i.dp = sub i64 %i.dd, %n.vec
  %i.dq = shl i64 %n.vec, 2
  %i.dr = getelementptr i8, ptr %.119.i, i64 %i.dq
  %i.ds = add i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, %n.vec
  %i.dt = getelementptr [4 x i8], ptr %i.bo, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.du = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.119.i, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !39
  %wide.load139 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !39
  %i.dw = getelementptr [4 x i8], ptr %i.dt, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x i32> %wide.load, ptr %i.dw, align 4, !tbaa !39
  store <4 x i32> %wide.load139, ptr %i.dx, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %scalar.ph.preheader, label %vector.body, !llvm.loop !580

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.i.i.i24.i
  %.012.i.i.i.i.i26.i.ph = phi i64 [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i.i.i.i.i24.i ], [ %i.dp, %vector.body ]
  %.0511.i.i.i.i.i27.i.ph = phi ptr [ %.119.i, %vector.memcheck ], [ %.119.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.dr, %vector.body ]
  %.sroa.4.010.i.i.i.i.i28.i.ph = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %vector.memcheck ], [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.ds, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i
  %.012.i.i.i.i.i26.i = phi i64 [ %i.ed, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.012.i.i.i.i.i26.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0511.i.i.i.i.i27.i = phi ptr [ %i.eb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.0511.i.i.i.i.i27.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i28.i = phi i64 [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.sroa.4.010.i.i.i.i.i28.i.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i29.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i, %umax.i.i.i.i.i25.i
  br i1 %exitcond.not.i.i.i.i.i29.i, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, !prof !55

.split50.us:                                      ; preds = %scalar.ph, %bb.g, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i: ; preds = %scalar.ph
  %i.dz = load i32, ptr %.0511.i.i.i.i.i27.i, align 4, !tbaa !39
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i28.i
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !39
  %i.eb = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i, i64 4
  %i.ec = add i64 %.sroa.4.010.i.i.i.i.i28.i, 1   ; 2 uses
  %i.ed = add nsw i64 %.012.i.i.i.i.i26.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i26.i, 1
  br i1 %i.ee, label %scalar.ph, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, !llvm.loop !581

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %.sroa.4.0.lcssa.i.i.i.i.i21.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i ], [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ] ; 2 uses
  %i.ef = sub i64 %i.j, %i.da
  %i.eg = ashr exact i64 %i.ef, 2                 ; 2 uses
  %.not.i25 = icmp slt i64 %i.eg, %i.m
  br i1 %.not.i25, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i, !llvm.loop !573

_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit: ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %bb.e
  %.0.lcssa.i = phi ptr [ %4, %bb.e ], [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ] ; 2 uses
  %.sroa.420.0.lcssa.i = phi i64 [ %1, %bb.e ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.lcssa.i = phi i64 [ %i.b, %bb.e ], [ %i.am, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.eg, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %.lcssa.i)
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.ei = tail call { ptr, i64 } @_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr noundef %.0.lcssa.i, ptr noundef %i.eh, ptr noundef %i.eh, ptr noundef nonnull %i.c, ptr %0, i64 %.sroa.420.0.lcssa.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %5) ; 0 uses
  %i.ej = icmp slt i64 %i.m, %i.b
  br i1 %i.ej, label %bb.e, label %._crit_edge, !llvm.loop !582

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSW_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %11 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %.not = icmp sgt i64 %6, %7
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.b = sub i64 %3, %1
  %i.c = freeze i64 %i.b                          ; 5 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %umax.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %1) ; 2 uses
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.prol.not = icmp ult i64 %1, %i.e
  br i1 %exitcond.not.i.i.i.i.i.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol, label %.loopexit, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol: ; preds = %.prol.preheader
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !418
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  store i32 %i.i, ptr %8, align 4, !tbaa !39
  %i.j = add i64 %1, 1
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.l = add nsw i64 %i.c, -1
end_hunk_5
begin_hunk_6_@_ZSt21__inplace_stable_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSY_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %reass.sub = sub i64 %3, %1
  %i.b = add i64 %reass.sub, 1
  %i.c = sdiv i64 %i.b, 2                         ; 4 uses
  %i.d = add i64 %i.c, %1                         ; 8 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.c:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %i.f = icmp sgt i64 %i.c, %5
  %i.g = sub i64 %3, %i.d                         ; 2 uses
  br i1 %i.f, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, label %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit

common.ret53:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit
  ret void

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %6)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %6)
  tail call void @_ZSt23__merge_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_S1F_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %6)
  br label %common.ret53

_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %6)
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %6)
  tail call void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %6)
  br label %common.ret53
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %i.b = sub i64 %3, %1                           ; 5 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %4, i64 %i.b ; 2 uses
  %.sroa.028.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !247 ; 2 uses
  %.sroa.028.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.028.sroa.2.0.copyload = load ptr, ptr %.sroa.028.sroa.2.0..sroa_idx, align 8, !tbaa !407 ; 2 uses
  %i.d = sub i64 %3, %1
  %.not.i135 = icmp slt i64 %i.d, 7
  br i1 %.not.i135, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSY_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  %i.e = sub i64 %3, %i.f
  %.not.i = icmp slt i64 %i.e, 7
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSY_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137, !llvm.loop !594

.lr.ph137:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i
  %.sroa.6.0.i136 = phi i64 [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ], [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ] ; 2 uses
  %i.f = add i64 %.sroa.6.0.i136, 7               ; 6 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i, !prof !55

bb.c:                                             ; preds = %.lr.ph137
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i: ; preds = %.lr.ph137
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSY_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr nonnull %0, i64 %.sroa.6.0.i136, ptr nonnull %0, i64 %i.f, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.h = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i.i, label %bb.d, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, !prof !55, !llvm.loop !594

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSY_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %.sroa.6.0.i.lcssa = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ], [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ]
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSY_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %.sroa.6.0.i.lcssa, ptr %2, i64 %3, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.i = icmp sgt i64 %i.b, 7
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSY_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit
  %.053 = phi i64 [ 7, %.lr.ph ], [ %i.m, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit ] ; 5 uses
  tail call void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %.053, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %5)
  %i.l = shl nuw nsw i64 %.053, 1                 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = shl nsw i64 %.053, 2                     ; 5 uses
  %.not28.i = icmp slt i64 %i.b, %i.m
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %.idx = shl i64 %.053, 3                        ; 4 uses
  %.idx36 = shl nsw i64 %.053, 4                  ; 2 uses
  %.not = icmp eq i64 %.idx, %.idx36
  br i1 %.not, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader.split

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %i.n = load i64, ptr %0, align 8, !tbaa !416
  %i.o = ashr exact i64 %.idx, 2                  ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %.lr.ph.i.us.preheader
  %.sroa.420.031.i.us = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %1, %.lr.ph.i.us.preheader ] ; 2 uses
  %.029.i.us = phi ptr [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %4, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.029.i.us, i64 %.idx ; 4 uses
  %umax.i.i.i.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.420.031.i.us)
  br label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.us ], [ %i.w, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.0511.i.i.i.i.i.i.us = phi ptr [ %.029.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.u, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i.us = phi i64 [ %.sroa.420.031.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i.us, %umax.i.i.i.i.i.i.us
  br i1 %exitcond.not.i.i.i.i.i.i.us, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us: ; preds = %bb.f
  %i.r = load i32, ptr %.0511.i.i.i.i.i.i.us, align 4, !tbaa !39
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !418
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.4.010.i.i.i.i.i.i.us
  store i32 %i.r, ptr %i.t, align 4, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i.us, i64 4
  %i.v = add i64 %.sroa.4.010.i.i.i.i.i.i.us, 1   ; 4 uses
  %i.w = add nsw i64 %.012.i.i.i.i.i.i.us, -1
  %i.x = icmp sgt i64 %.012.i.i.i.i.i.i.us, 1
  br i1 %i.x, label %bb.f, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us, !llvm.loop !445

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us
  %i.y = ptrtoint ptr %i.q to i64
  br i1 %i.p, label %.lr.ph.i.i.i.i.i24.i.us, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us

.lr.ph.i.i.i.i.i24.i.us:                          ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %i.z = load i64, ptr %0, align 8, !tbaa !416
  %umax.i.i.i.i.i25.i.us = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.v) ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %.lr.ph.i.i.i.i.i24.i.us
  %.012.i.i.i.i.i26.i.us = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %.0511.i.i.i.i.i27.i.us = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 3 uses
  %.sroa.4.010.i.i.i.i.i28.i.us = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 4 uses
  %exitcond.not.i.i.i.i.i29.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i.us, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us: ; preds = %bb.g
  %i.aa = load i32, ptr %.0511.i.i.i.i.i27.i.us, align 4, !tbaa !39
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.4.010.i.i.i.i.i28.i.us
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !39
  %i.ad = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i29.i.us.1 = icmp eq i64 %i.ad, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us.1, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 8
  %i.ai = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 2 ; 2 uses
  %i.aj = add nsw i64 %.012.i.i.i.i.i26.i.us, -2
  %i.ak = icmp sgt i64 %.012.i.i.i.i.i26.i.us, 2
  br i1 %i.ak, label %bb.g, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, !llvm.loop !445

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %.sroa.4.0.lcssa.i.i.i.i.i21.i.us = phi i64 [ %i.v, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %i.al = sub i64 %i.j, %i.y
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %.not.i25.us = icmp slt i64 %i.am, %i.m
  br i1 %.not.i25.us, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !595

.lr.ph.i.preheader.split:                         ; preds = %.lr.ph.i.preheader
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload, align 8, !tbaa !45 ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !596, !nonnull !413, !align !414 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !35 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.split, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit
  %.sroa.420.031.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %1, %.lr.ph.i.preheader.split ] ; 2 uses
  %.029.i = phi ptr [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %4, %.lr.ph.i.preheader.split ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.i, i64 %.idx ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.029.i, i64 %.idx36 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.055.i = phi ptr [ %.1.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.029.i, %.lr.ph.i ] ; 3 uses
  %.01854.i = phi ptr [ %.119.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %i.aq, %.lr.ph.i ] ; 3 uses
  %.sroa.5.053.i = phi i64 [ %i.bp, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.sroa.420.031.i, %.lr.ph.i ] ; 4 uses
  %i.as = load i32, ptr %.01854.i, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.at ; 2 uses
  %i.av = load i32, ptr %.055.i, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.au, %i.ao
  br i1 %i.ay, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i.i, label %bb.i, !prof !41

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i.i: ; preds = %bb.h
  %i.az = icmp ult i64 %i.ax, %i.ao
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i, label %bb.j, !prof !41

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i.i
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !36 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.au
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !39
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ax
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !39
  %i.bf = icmp slt i32 %i.bc, %i.be
  %i.bg = load i64, ptr %0, align 8, !tbaa !416   ; 3 uses
  %i.bh = icmp ult i64 %.sroa.5.053.i, %i.bg      ; 2 uses
  br i1 %i.bf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.k
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.5.053.i
  store i32 %i.as, ptr %i.bj, align 4, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %.01854.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, label %bb.n, !prof !41

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i: ; preds = %bb.m
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.sroa.5.053.i
  store i32 %i.av, ptr %i.bm, align 4, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %.055.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.bo = phi ptr [ %i.bi, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bl, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 5 uses
  %.119.i = phi ptr [ %i.bk, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %.01854.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %.1.i = phi ptr [ %.055.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bn, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %i.bp = add i64 %.sroa.5.053.i, 1               ; 8 uses
  %i.bq = icmp ne ptr %.1.i, %i.aq
  %i.br = icmp ne ptr %.119.i, %i.ar
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bs, label %bb.h, label %._crit_edge.i.loopexit, !llvm.loop !599

._crit_edge.i.loopexit:                           ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i
  %.1.i143.le = ptrtoaddr ptr %.1.i to i64
  %i.bt = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %.119.i138.le = ptrtoaddr ptr %.119.i to i64
  %i.bu = ptrtoint ptr %i.aq to i64
  %i.bv = ptrtoint ptr %.1.i to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2                 ; 5 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i.loopexit
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bp) ; 2 uses
  %i.bz = xor i64 %.sroa.420.031.i, -1
  %i.ca = sub i64 %i.bz, %indvar
  %i.cb = add i64 %umax.i.i.i.i.i.i, %i.ca
  %i.cc = add nsw i64 %i.bx, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cc)
  %i.cd = add i64 %umin, 1                        ; 3 uses
  %min.iters.check146 = icmp ult i64 %i.cd, 9
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ce = shl i64 %i.bp, 2
  %i.cf = add i64 %i.ce, %i.bt
  %i.cg = sub i64 %.1.i143.le, %i.cf
  %diff.check144 = icmp ugt i64 %i.cg, -32
  br i1 %diff.check144, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck142
  %i.ch = and i64 %i.cd, 7                        ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 8, i64 %i.ch
  %n.vec148 = sub i64 %i.cd, %i.cj                ; 4 uses
  %i.ck = sub i64 %i.bx, %n.vec148
  %i.cl = shl i64 %n.vec148, 2
  %i.cm = getelementptr i8, ptr %.1.i, i64 %i.cl
  %i.cn = add i64 %i.bp, %n.vec148
  %i.co = getelementptr [4 x i8], ptr %i.bo, i64 %i.bp
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next154, %vector.body149 ] ; 3 uses
  %i.cp = shl i64 %index150, 2
  %next.gep151 = getelementptr i8, ptr %.1.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load152 = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !39
  %wide.load153 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !39
  %i.cr = getelementptr [4 x i8], ptr %i.co, i64 %index150 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %wide.load152, ptr %i.cr, align 4, !tbaa !39
  store <4 x i32> %wide.load153, ptr %i.cs, align 4, !tbaa !39
  %index.next154 = add nuw i64 %index150, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.ct, label %scalar.ph145.preheader, label %vector.body149, !llvm.loop !600

scalar.ph145.preheader:                           ; preds = %vector.body149, %vector.memcheck142, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.bx, %vector.memcheck142 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.ck, %vector.body149 ]
  %.0511.i.i.i.i.i.i.ph = phi ptr [ %.1.i, %vector.memcheck142 ], [ %.1.i, %.lr.ph.i.i.i.i.i.i ], [ %i.cm, %vector.body149 ]
  %.sroa.4.010.i.i.i.i.i.i.ph = phi i64 [ %i.bp, %vector.memcheck142 ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %i.cn, %vector.body149 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.cy, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.0511.i.i.i.i.i.i = phi ptr [ %i.cw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.0511.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i = phi i64 [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, !prof !55

.split.us:                                        ; preds = %scalar.ph145, %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i: ; preds = %scalar.ph145
  %i.cu = load i32, ptr %.0511.i.i.i.i.i.i, align 4, !tbaa !39
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i.i
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !39
  %i.cw = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i, i64 4
  %i.cx = add i64 %.sroa.4.010.i.i.i.i.i.i, 1     ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.cz = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.cz, label %scalar.ph145, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i, !llvm.loop !601

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, %._crit_edge.i.loopexit
  %.sroa.4.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bp, %._crit_edge.i.loopexit ], [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ] ; 8 uses
  %i.da = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.db = ptrtoint ptr %.119.i to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 2                 ; 5 uses
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i.i.i.i24.i, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit

.lr.ph.i.i.i.i.i24.i:                             ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %umax.i.i.i.i.i25.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i) ; 2 uses
  %i.df = sub i64 %umax.i.i.i.i.i25.i, %.sroa.4.0.lcssa.i.i.i.i.i.i
  %i.dg = add nsw i64 %i.dd, -1
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dg)
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.di, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i24.i
  %i.dj = shl i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, 2
  %i.dk = add i64 %i.dj, %i.bt
  %i.dl = sub i64 %.119.i138.le, %i.dk
  %diff.check = icmp ugt i64 %i.dl, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dm = and i64 %i.di, 7                        ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  %i.do = select i1 %i.dn, i64 8, i64 %i.dm
  %n.vec = sub i64 %i.di, %i.do                   ; 4 uses
  %i.dp = sub i64 %i.dd, %n.vec
  %i.dq = shl i64 %n.vec, 2
  %i.dr = getelementptr i8, ptr %.119.i, i64 %i.dq
  %i.ds = add i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, %n.vec
  %i.dt = getelementptr [4 x i8], ptr %i.bo, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.du = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.119.i, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !39
  %wide.load139 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !39
  %i.dw = getelementptr [4 x i8], ptr %i.dt, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x i32> %wide.load, ptr %i.dw, align 4, !tbaa !39
  store <4 x i32> %wide.load139, ptr %i.dx, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %scalar.ph.preheader, label %vector.body, !llvm.loop !602

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.i.i.i24.i
  %.012.i.i.i.i.i26.i.ph = phi i64 [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i.i.i.i.i24.i ], [ %i.dp, %vector.body ]
  %.0511.i.i.i.i.i27.i.ph = phi ptr [ %.119.i, %vector.memcheck ], [ %.119.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.dr, %vector.body ]
  %.sroa.4.010.i.i.i.i.i28.i.ph = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %vector.memcheck ], [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.ds, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i
  %.012.i.i.i.i.i26.i = phi i64 [ %i.ed, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.012.i.i.i.i.i26.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0511.i.i.i.i.i27.i = phi ptr [ %i.eb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.0511.i.i.i.i.i27.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i28.i = phi i64 [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.sroa.4.010.i.i.i.i.i28.i.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i29.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i, %umax.i.i.i.i.i25.i
  br i1 %exitcond.not.i.i.i.i.i29.i, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, !prof !55

.split50.us:                                      ; preds = %scalar.ph, %bb.g, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i: ; preds = %scalar.ph
  %i.dz = load i32, ptr %.0511.i.i.i.i.i27.i, align 4, !tbaa !39
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i28.i
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !39
  %i.eb = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i, i64 4
  %i.ec = add i64 %.sroa.4.010.i.i.i.i.i28.i, 1   ; 2 uses
  %i.ed = add nsw i64 %.012.i.i.i.i.i26.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i26.i, 1
  br i1 %i.ee, label %scalar.ph, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, !llvm.loop !603

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %.sroa.4.0.lcssa.i.i.i.i.i21.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i ], [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ] ; 2 uses
  %i.ef = sub i64 %i.j, %i.da
  %i.eg = ashr exact i64 %i.ef, 2                 ; 2 uses
  %.not.i25 = icmp slt i64 %i.eg, %i.m
  br i1 %.not.i25, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i, !llvm.loop !595

_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit: ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %bb.e
  %.0.lcssa.i = phi ptr [ %4, %bb.e ], [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ] ; 2 uses
  %.sroa.420.0.lcssa.i = phi i64 [ %1, %bb.e ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.lcssa.i = phi i64 [ %i.b, %bb.e ], [ %i.am, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.eg, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %.lcssa.i)
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.ei = tail call { ptr, i64 } @_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr noundef %.0.lcssa.i, ptr noundef %i.eh, ptr noundef %i.eh, ptr noundef nonnull %i.c, ptr %0, i64 %.sroa.420.0.lcssa.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %5) ; 0 uses
  %i.ej = icmp slt i64 %i.m, %i.b
  br i1 %i.ej, label %bb.e, label %._crit_edge, !llvm.loop !604

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSY_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %11 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %.not = icmp sgt i64 %6, %7
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.b = sub i64 %3, %1
  %i.c = freeze i64 %i.b                          ; 5 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %umax.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %1) ; 2 uses
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.prol.not = icmp ult i64 %1, %i.e
  br i1 %exitcond.not.i.i.i.i.i.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol, label %.loopexit, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol: ; preds = %.prol.preheader
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !418
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  store i32 %i.i, ptr %8, align 4, !tbaa !39
  %i.j = add i64 %1, 1
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.l = add nsw i64 %i.c, -1
end_hunk_6
begin_hunk_7_@_ZSt21__inplace_stable_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS10_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %reass.sub = sub i64 %3, %1
  %i.b = add i64 %reass.sub, 1
  %i.c = sdiv i64 %i.b, 2                         ; 4 uses
  %i.d = add i64 %i.c, %1                         ; 8 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.c:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %i.f = icmp sgt i64 %i.c, %5
  %i.g = sub i64 %3, %i.d                         ; 2 uses
  br i1 %i.f, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, label %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit

common.ret53:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit
  ret void

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %6)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %6)
  tail call void @_ZSt23__merge_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_S1F_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %6)
  br label %common.ret53

_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %6)
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %6)
  tail call void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %6)
  br label %common.ret53
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %i.b = sub i64 %3, %1                           ; 5 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %4, i64 %i.b ; 2 uses
  %.sroa.028.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !247 ; 2 uses
  %.sroa.028.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.028.sroa.2.0.copyload = load ptr, ptr %.sroa.028.sroa.2.0..sroa_idx, align 8, !tbaa !407 ; 2 uses
  %i.d = sub i64 %3, %1
  %.not.i135 = icmp slt i64 %i.d, 7
  br i1 %.not.i135, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS10_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  %i.e = sub i64 %3, %i.f
  %.not.i = icmp slt i64 %i.e, 7
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS10_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137, !llvm.loop !616

.lr.ph137:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i
  %.sroa.6.0.i136 = phi i64 [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ], [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ] ; 2 uses
  %i.f = add i64 %.sroa.6.0.i136, 7               ; 6 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i, !prof !55

bb.c:                                             ; preds = %.lr.ph137
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i: ; preds = %.lr.ph137
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS10_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr nonnull %0, i64 %.sroa.6.0.i136, ptr nonnull %0, i64 %i.f, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.h = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i.i, label %bb.d, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, !prof !55, !llvm.loop !616

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS10_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %.sroa.6.0.i.lcssa = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ], [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ]
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS10_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %.sroa.6.0.i.lcssa, ptr %2, i64 %3, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.i = icmp sgt i64 %i.b, 7
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS10_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit
  %.053 = phi i64 [ 7, %.lr.ph ], [ %i.m, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit ] ; 5 uses
  tail call void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %.053, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %5)
  %i.l = shl nuw nsw i64 %.053, 1                 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = shl nsw i64 %.053, 2                     ; 5 uses
  %.not28.i = icmp slt i64 %i.b, %i.m
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %.idx = shl i64 %.053, 3                        ; 4 uses
  %.idx36 = shl nsw i64 %.053, 4                  ; 2 uses
  %.not = icmp eq i64 %.idx, %.idx36
  br i1 %.not, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader.split

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %i.n = load i64, ptr %0, align 8, !tbaa !416
  %i.o = ashr exact i64 %.idx, 2                  ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %.lr.ph.i.us.preheader
  %.sroa.420.031.i.us = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %1, %.lr.ph.i.us.preheader ] ; 2 uses
  %.029.i.us = phi ptr [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %4, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.029.i.us, i64 %.idx ; 4 uses
  %umax.i.i.i.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.420.031.i.us)
  br label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.us ], [ %i.w, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.0511.i.i.i.i.i.i.us = phi ptr [ %.029.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.u, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i.us = phi i64 [ %.sroa.420.031.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i.us, %umax.i.i.i.i.i.i.us
  br i1 %exitcond.not.i.i.i.i.i.i.us, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us: ; preds = %bb.f
  %i.r = load i32, ptr %.0511.i.i.i.i.i.i.us, align 4, !tbaa !39
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !418
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.4.010.i.i.i.i.i.i.us
  store i32 %i.r, ptr %i.t, align 4, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i.us, i64 4
  %i.v = add i64 %.sroa.4.010.i.i.i.i.i.i.us, 1   ; 4 uses
  %i.w = add nsw i64 %.012.i.i.i.i.i.i.us, -1
  %i.x = icmp sgt i64 %.012.i.i.i.i.i.i.us, 1
  br i1 %i.x, label %bb.f, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us, !llvm.loop !445

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us
  %i.y = ptrtoint ptr %i.q to i64
  br i1 %i.p, label %.lr.ph.i.i.i.i.i24.i.us, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us

.lr.ph.i.i.i.i.i24.i.us:                          ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %i.z = load i64, ptr %0, align 8, !tbaa !416
  %umax.i.i.i.i.i25.i.us = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.v) ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %.lr.ph.i.i.i.i.i24.i.us
  %.012.i.i.i.i.i26.i.us = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %.0511.i.i.i.i.i27.i.us = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 3 uses
  %.sroa.4.010.i.i.i.i.i28.i.us = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 4 uses
  %exitcond.not.i.i.i.i.i29.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i.us, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us: ; preds = %bb.g
  %i.aa = load i32, ptr %.0511.i.i.i.i.i27.i.us, align 4, !tbaa !39
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.4.010.i.i.i.i.i28.i.us
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !39
  %i.ad = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i29.i.us.1 = icmp eq i64 %i.ad, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us.1, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 8
  %i.ai = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 2 ; 2 uses
  %i.aj = add nsw i64 %.012.i.i.i.i.i26.i.us, -2
  %i.ak = icmp sgt i64 %.012.i.i.i.i.i26.i.us, 2
  br i1 %i.ak, label %bb.g, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, !llvm.loop !445

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %.sroa.4.0.lcssa.i.i.i.i.i21.i.us = phi i64 [ %i.v, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %i.al = sub i64 %i.j, %i.y
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %.not.i25.us = icmp slt i64 %i.am, %i.m
  br i1 %.not.i25.us, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !617

.lr.ph.i.preheader.split:                         ; preds = %.lr.ph.i.preheader
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload, align 8, !tbaa !45 ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !618, !nonnull !413, !align !414 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.split, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit
  %.sroa.420.031.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %1, %.lr.ph.i.preheader.split ] ; 2 uses
  %.029.i = phi ptr [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %4, %.lr.ph.i.preheader.split ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.i, i64 %.idx ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.029.i, i64 %.idx36 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.055.i = phi ptr [ %.1.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.029.i, %.lr.ph.i ] ; 3 uses
  %.01854.i = phi ptr [ %.119.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %i.aq, %.lr.ph.i ] ; 3 uses
  %.sroa.5.053.i = phi i64 [ %i.bp, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.sroa.420.031.i, %.lr.ph.i ] ; 4 uses
  %i.as = load i32, ptr %.01854.i, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.at ; 2 uses
  %i.av = load i32, ptr %.055.i, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.au, %i.ao
  br i1 %i.ay, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i.i, label %bb.i, !prof !41

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i.i: ; preds = %bb.h
  %i.az = icmp ult i64 %i.ax, %i.ao
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i, label %bb.j, !prof !41

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i.i
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !102 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.au
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !45
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ax
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !45
  %i.bf = icmp ult i64 %i.bc, %i.be
  %i.bg = load i64, ptr %0, align 8, !tbaa !416   ; 3 uses
  %i.bh = icmp ult i64 %.sroa.5.053.i, %i.bg      ; 2 uses
  br i1 %i.bf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.k
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.5.053.i
  store i32 %i.as, ptr %i.bj, align 4, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %.01854.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, label %bb.n, !prof !41

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i: ; preds = %bb.m
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.sroa.5.053.i
  store i32 %i.av, ptr %i.bm, align 4, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %.055.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.bo = phi ptr [ %i.bi, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bl, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 5 uses
  %.119.i = phi ptr [ %i.bk, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %.01854.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %.1.i = phi ptr [ %.055.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bn, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %i.bp = add i64 %.sroa.5.053.i, 1               ; 8 uses
  %i.bq = icmp ne ptr %.1.i, %i.aq
  %i.br = icmp ne ptr %.119.i, %i.ar
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bs, label %bb.h, label %._crit_edge.i.loopexit, !llvm.loop !621

._crit_edge.i.loopexit:                           ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i
  %.1.i143.le = ptrtoaddr ptr %.1.i to i64
  %i.bt = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %.119.i138.le = ptrtoaddr ptr %.119.i to i64
  %i.bu = ptrtoint ptr %i.aq to i64
  %i.bv = ptrtoint ptr %.1.i to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2                 ; 5 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i.loopexit
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bp) ; 2 uses
  %i.bz = xor i64 %.sroa.420.031.i, -1
  %i.ca = sub i64 %i.bz, %indvar
  %i.cb = add i64 %umax.i.i.i.i.i.i, %i.ca
  %i.cc = add nsw i64 %i.bx, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cc)
  %i.cd = add i64 %umin, 1                        ; 3 uses
  %min.iters.check146 = icmp ult i64 %i.cd, 9
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ce = shl i64 %i.bp, 2
  %i.cf = add i64 %i.ce, %i.bt
  %i.cg = sub i64 %.1.i143.le, %i.cf
  %diff.check144 = icmp ugt i64 %i.cg, -32
  br i1 %diff.check144, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck142
  %i.ch = and i64 %i.cd, 7                        ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 8, i64 %i.ch
  %n.vec148 = sub i64 %i.cd, %i.cj                ; 4 uses
  %i.ck = sub i64 %i.bx, %n.vec148
  %i.cl = shl i64 %n.vec148, 2
  %i.cm = getelementptr i8, ptr %.1.i, i64 %i.cl
  %i.cn = add i64 %i.bp, %n.vec148
  %i.co = getelementptr [4 x i8], ptr %i.bo, i64 %i.bp
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next154, %vector.body149 ] ; 3 uses
  %i.cp = shl i64 %index150, 2
  %next.gep151 = getelementptr i8, ptr %.1.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load152 = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !39
  %wide.load153 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !39
  %i.cr = getelementptr [4 x i8], ptr %i.co, i64 %index150 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %wide.load152, ptr %i.cr, align 4, !tbaa !39
  store <4 x i32> %wide.load153, ptr %i.cs, align 4, !tbaa !39
  %index.next154 = add nuw i64 %index150, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.ct, label %scalar.ph145.preheader, label %vector.body149, !llvm.loop !622

scalar.ph145.preheader:                           ; preds = %vector.body149, %vector.memcheck142, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.bx, %vector.memcheck142 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.ck, %vector.body149 ]
  %.0511.i.i.i.i.i.i.ph = phi ptr [ %.1.i, %vector.memcheck142 ], [ %.1.i, %.lr.ph.i.i.i.i.i.i ], [ %i.cm, %vector.body149 ]
  %.sroa.4.010.i.i.i.i.i.i.ph = phi i64 [ %i.bp, %vector.memcheck142 ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %i.cn, %vector.body149 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.cy, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.0511.i.i.i.i.i.i = phi ptr [ %i.cw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.0511.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i = phi i64 [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, !prof !55

.split.us:                                        ; preds = %scalar.ph145, %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i: ; preds = %scalar.ph145
  %i.cu = load i32, ptr %.0511.i.i.i.i.i.i, align 4, !tbaa !39
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i.i
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !39
  %i.cw = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i, i64 4
  %i.cx = add i64 %.sroa.4.010.i.i.i.i.i.i, 1     ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.cz = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.cz, label %scalar.ph145, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i, !llvm.loop !623

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, %._crit_edge.i.loopexit
  %.sroa.4.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bp, %._crit_edge.i.loopexit ], [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ] ; 8 uses
  %i.da = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.db = ptrtoint ptr %.119.i to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 2                 ; 5 uses
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i.i.i.i24.i, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit

.lr.ph.i.i.i.i.i24.i:                             ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %umax.i.i.i.i.i25.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i) ; 2 uses
  %i.df = sub i64 %umax.i.i.i.i.i25.i, %.sroa.4.0.lcssa.i.i.i.i.i.i
  %i.dg = add nsw i64 %i.dd, -1
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dg)
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.di, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i24.i
  %i.dj = shl i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, 2
  %i.dk = add i64 %i.dj, %i.bt
  %i.dl = sub i64 %.119.i138.le, %i.dk
  %diff.check = icmp ugt i64 %i.dl, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dm = and i64 %i.di, 7                        ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  %i.do = select i1 %i.dn, i64 8, i64 %i.dm
  %n.vec = sub i64 %i.di, %i.do                   ; 4 uses
  %i.dp = sub i64 %i.dd, %n.vec
  %i.dq = shl i64 %n.vec, 2
  %i.dr = getelementptr i8, ptr %.119.i, i64 %i.dq
  %i.ds = add i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, %n.vec
  %i.dt = getelementptr [4 x i8], ptr %i.bo, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.du = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.119.i, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !39
  %wide.load139 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !39
  %i.dw = getelementptr [4 x i8], ptr %i.dt, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x i32> %wide.load, ptr %i.dw, align 4, !tbaa !39
  store <4 x i32> %wide.load139, ptr %i.dx, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %scalar.ph.preheader, label %vector.body, !llvm.loop !624

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.i.i.i24.i
  %.012.i.i.i.i.i26.i.ph = phi i64 [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i.i.i.i.i24.i ], [ %i.dp, %vector.body ]
  %.0511.i.i.i.i.i27.i.ph = phi ptr [ %.119.i, %vector.memcheck ], [ %.119.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.dr, %vector.body ]
  %.sroa.4.010.i.i.i.i.i28.i.ph = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %vector.memcheck ], [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.ds, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i
  %.012.i.i.i.i.i26.i = phi i64 [ %i.ed, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.012.i.i.i.i.i26.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0511.i.i.i.i.i27.i = phi ptr [ %i.eb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.0511.i.i.i.i.i27.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i28.i = phi i64 [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.sroa.4.010.i.i.i.i.i28.i.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i29.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i, %umax.i.i.i.i.i25.i
  br i1 %exitcond.not.i.i.i.i.i29.i, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, !prof !55

.split50.us:                                      ; preds = %scalar.ph, %bb.g, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i: ; preds = %scalar.ph
  %i.dz = load i32, ptr %.0511.i.i.i.i.i27.i, align 4, !tbaa !39
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i28.i
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !39
  %i.eb = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i, i64 4
  %i.ec = add i64 %.sroa.4.010.i.i.i.i.i28.i, 1   ; 2 uses
  %i.ed = add nsw i64 %.012.i.i.i.i.i26.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i26.i, 1
  br i1 %i.ee, label %scalar.ph, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, !llvm.loop !625

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %.sroa.4.0.lcssa.i.i.i.i.i21.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i ], [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ] ; 2 uses
  %i.ef = sub i64 %i.j, %i.da
  %i.eg = ashr exact i64 %i.ef, 2                 ; 2 uses
  %.not.i25 = icmp slt i64 %i.eg, %i.m
  br i1 %.not.i25, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i, !llvm.loop !617

_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit: ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %bb.e
  %.0.lcssa.i = phi ptr [ %4, %bb.e ], [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ] ; 2 uses
  %.sroa.420.0.lcssa.i = phi i64 [ %1, %bb.e ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.lcssa.i = phi i64 [ %i.b, %bb.e ], [ %i.am, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.eg, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %.lcssa.i)
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.ei = tail call { ptr, i64 } @_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr noundef %.0.lcssa.i, ptr noundef %i.eh, ptr noundef %i.eh, ptr noundef nonnull %i.c, ptr %0, i64 %.sroa.420.0.lcssa.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %5) ; 0 uses
  %i.ej = icmp slt i64 %i.m, %i.b
  br i1 %i.ej, label %bb.e, label %._crit_edge, !llvm.loop !626

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS10_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %11 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %.not = icmp sgt i64 %6, %7
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.b = sub i64 %3, %1
  %i.c = freeze i64 %i.b                          ; 5 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %umax.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %1) ; 2 uses
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.prol.not = icmp ult i64 %1, %i.e
  br i1 %exitcond.not.i.i.i.i.i.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol, label %.loopexit, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol: ; preds = %.prol.preheader
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !418
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  store i32 %i.i, ptr %8, align 4, !tbaa !39
  %i.j = add i64 %1, 1
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.l = add nsw i64 %i.c, -1
end_hunk_7
begin_hunk_8_@_ZSt21__inplace_stable_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS12_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %reass.sub = sub i64 %3, %1
  %i.b = add i64 %reass.sub, 1
  %i.c = sdiv i64 %i.b, 2                         ; 4 uses
  %i.d = add i64 %i.c, %1                         ; 8 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.c:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %i.f = icmp sgt i64 %i.c, %5
  %i.g = sub i64 %3, %i.d                         ; 2 uses
  br i1 %i.f, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, label %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit

common.ret53:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34, %_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit
  ret void

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit34: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %6)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %6)
  tail call void @_ZSt23__merge_adaptive_resizeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_S1F_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, i64 noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %6)
  br label %common.ret53

_ZSt22__stable_sort_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %6)
  tail call void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %6)
  tail call void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr nonnull %0, i64 %1, ptr nonnull %0, i64 %i.d, ptr %2, i64 %3, i64 noundef %i.c, i64 noundef %i.g, ptr noundef %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %6)
  br label %common.ret53
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.a
  %i.b = sub i64 %3, %1                           ; 5 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %4, i64 %i.b ; 2 uses
  %.sroa.028.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !247 ; 2 uses
  %.sroa.028.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.028.sroa.2.0.copyload = load ptr, ptr %.sroa.028.sroa.2.0..sroa_idx, align 8, !tbaa !407 ; 2 uses
  %i.d = sub i64 %3, %1
  %.not.i135 = icmp slt i64 %i.d, 7
  br i1 %.not.i135, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS12_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  %i.e = sub i64 %3, %i.f
  %.not.i = icmp slt i64 %i.e, 7
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS12_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit, label %.lr.ph137, !llvm.loop !638

.lr.ph137:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i
  %.sroa.6.0.i136 = phi i64 [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ], [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ] ; 2 uses
  %i.f = add i64 %.sroa.6.0.i136, 7               ; 6 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i.i = icmp ugt i64 %i.f, %i.g
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i, !prof !55

bb.c:                                             ; preds = %.lr.ph137
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i: ; preds = %.lr.ph137
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS12_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr nonnull %0, i64 %.sroa.6.0.i136, ptr nonnull %0, i64 %i.f, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.h = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i.i, label %bb.d, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, !prof !55, !llvm.loop !638

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS12_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %.sroa.6.0.i.lcssa = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ], [ %i.f, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit.i ]
  tail call void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS12_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %.sroa.6.0.i.lcssa, ptr %2, i64 %3, ptr %.sroa.028.sroa.0.0.copyload, ptr %.sroa.028.sroa.2.0.copyload)
  %i.i = icmp sgt i64 %i.b, 7
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS12_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit
  %.053 = phi i64 [ 7, %.lr.ph ], [ %i.m, %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit ] ; 5 uses
  tail call void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %.053, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %5)
  %i.l = shl nuw nsw i64 %.053, 1                 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = shl nsw i64 %.053, 2                     ; 5 uses
  %.not28.i = icmp slt i64 %i.b, %i.m
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %.idx = shl i64 %.053, 3                        ; 4 uses
  %.idx36 = shl nsw i64 %.053, 4                  ; 2 uses
  %.not = icmp eq i64 %.idx, %.idx36
  br i1 %.not, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader.split

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %i.n = load i64, ptr %0, align 8, !tbaa !416
  %i.o = ashr exact i64 %.idx, 2                  ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %.lr.ph.i.us.preheader
  %.sroa.420.031.i.us = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %1, %.lr.ph.i.us.preheader ] ; 2 uses
  %.029.i.us = phi ptr [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %4, %.lr.ph.i.us.preheader ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.029.i.us, i64 %.idx ; 4 uses
  %umax.i.i.i.i.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %.sroa.420.031.i.us)
  br label %bb.f

bb.f:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.us ], [ %i.w, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.0511.i.i.i.i.i.i.us = phi ptr [ %.029.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.u, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i.us = phi i64 [ %.sroa.420.031.i.us, %.lr.ph.i.i.i.i.i.i.us ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i.us, %umax.i.i.i.i.i.i.us
  br i1 %exitcond.not.i.i.i.i.i.i.us, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us: ; preds = %bb.f
  %i.r = load i32, ptr %.0511.i.i.i.i.i.i.us, align 4, !tbaa !39
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !418
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.4.010.i.i.i.i.i.i.us
  store i32 %i.r, ptr %i.t, align 4, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i.us, i64 4
  %i.v = add i64 %.sroa.4.010.i.i.i.i.i.i.us, 1   ; 4 uses
  %i.w = add nsw i64 %.012.i.i.i.i.i.i.us, -1
  %i.x = icmp sgt i64 %.012.i.i.i.i.i.i.us, 1
  br i1 %i.x, label %bb.f, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us, !llvm.loop !445

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i.us
  %i.y = ptrtoint ptr %i.q to i64
  br i1 %i.p, label %.lr.ph.i.i.i.i.i24.i.us, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us

.lr.ph.i.i.i.i.i24.i.us:                          ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %i.z = load i64, ptr %0, align 8, !tbaa !416
  %umax.i.i.i.i.i25.i.us = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.v) ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %.lr.ph.i.i.i.i.i24.i.us
  %.012.i.i.i.i.i26.i.us = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %.0511.i.i.i.i.i27.i.us = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 3 uses
  %.sroa.4.010.i.i.i.i.i28.i.us = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i24.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 4 uses
  %exitcond.not.i.i.i.i.i29.i.us = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i.us, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us: ; preds = %bb.g
  %i.aa = load i32, ptr %.0511.i.i.i.i.i27.i.us, align 4, !tbaa !39
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.4.010.i.i.i.i.i28.i.us
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !39
  %i.ad = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i29.i.us.1 = icmp eq i64 %i.ad, %umax.i.i.i.i.i25.i.us
  br i1 %exitcond.not.i.i.i.i.i29.i.us.1, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i.us, i64 8
  %i.ai = add i64 %.sroa.4.010.i.i.i.i.i28.i.us, 2 ; 2 uses
  %i.aj = add nsw i64 %.012.i.i.i.i.i26.i.us, -2
  %i.ak = icmp sgt i64 %.012.i.i.i.i.i26.i.us, 2
  br i1 %i.ak, label %bb.g, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, !llvm.loop !445

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us
  %.sroa.4.0.lcssa.i.i.i.i.i21.i.us = phi i64 [ %i.v, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i.us ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us.1 ] ; 2 uses
  %i.al = sub i64 %i.j, %i.y
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %.not.i25.us = icmp slt i64 %i.am, %i.m
  br i1 %.not.i25.us, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !639

.lr.ph.i.preheader.split:                         ; preds = %.lr.ph.i.preheader
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload, align 8, !tbaa !45 ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !640, !nonnull !413, !align !414 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !103 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.split, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit
  %.sroa.420.031.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %1, %.lr.ph.i.preheader.split ] ; 2 uses
  %.029.i = phi ptr [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ], [ %4, %.lr.ph.i.preheader.split ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.i, i64 %.idx ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.029.i, i64 %.idx36 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.055.i = phi ptr [ %.1.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.029.i, %.lr.ph.i ] ; 3 uses
  %.01854.i = phi ptr [ %.119.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %i.aq, %.lr.ph.i ] ; 3 uses
  %.sroa.5.053.i = phi i64 [ %i.bp, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i ], [ %.sroa.420.031.i, %.lr.ph.i ] ; 4 uses
  %i.as = load i32, ptr %.01854.i, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.at ; 2 uses
  %i.av = load i32, ptr %.055.i, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.au, %i.ao
  br i1 %i.ay, label %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i.i, label %bb.i, !prof !41

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i.i: ; preds = %bb.h
  %i.az = icmp ult i64 %i.ax, %i.ao
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i, label %bb.j, !prof !41

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i: ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i.i
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !108 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.au
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !45
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ax
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !45
  %i.bf = icmp slt i64 %i.bc, %i.be
  %i.bg = load i64, ptr %0, align 8, !tbaa !416   ; 3 uses
  %i.bh = icmp ult i64 %.sroa.5.053.i, %i.bg      ; 2 uses
  br i1 %i.bf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.l, !prof !41

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.k
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.sroa.5.053.i
  store i32 %i.as, ptr %i.bj, align 4, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %.01854.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIPiS1J_EEbSC_S1D_.exit.i
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, label %bb.n, !prof !41

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i: ; preds = %bb.m
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !418 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.sroa.5.053.i
  store i32 %i.av, ptr %i.bm, align 4, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %.055.i, i64 4
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.bo = phi ptr [ %i.bi, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bl, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 5 uses
  %.119.i = phi ptr [ %i.bk, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %.01854.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %.1.i = phi ptr [ %.055.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i ], [ %i.bn, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit20.i ] ; 8 uses
  %i.bp = add i64 %.sroa.5.053.i, 1               ; 8 uses
  %i.bq = icmp ne ptr %.1.i, %i.aq
  %i.br = icmp ne ptr %.119.i, %i.ar
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bs, label %bb.h, label %._crit_edge.i.loopexit, !llvm.loop !643

._crit_edge.i.loopexit:                           ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i
  %.1.i143.le = ptrtoaddr ptr %.1.i to i64
  %i.bt = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %.119.i138.le = ptrtoaddr ptr %.119.i to i64
  %i.bu = ptrtoint ptr %i.aq to i64
  %i.bv = ptrtoint ptr %.1.i to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2                 ; 5 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i.loopexit
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bp) ; 2 uses
  %i.bz = xor i64 %.sroa.420.031.i, -1
  %i.ca = sub i64 %i.bz, %indvar
  %i.cb = add i64 %umax.i.i.i.i.i.i, %i.ca
  %i.cc = add nsw i64 %i.bx, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cc)
  %i.cd = add i64 %umin, 1                        ; 3 uses
  %min.iters.check146 = icmp ult i64 %i.cd, 9
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ce = shl i64 %i.bp, 2
  %i.cf = add i64 %i.ce, %i.bt
  %i.cg = sub i64 %.1.i143.le, %i.cf
  %diff.check144 = icmp ugt i64 %i.cg, -32
  br i1 %diff.check144, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck142
  %i.ch = and i64 %i.cd, 7                        ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 8, i64 %i.ch
  %n.vec148 = sub i64 %i.cd, %i.cj                ; 4 uses
  %i.ck = sub i64 %i.bx, %n.vec148
  %i.cl = shl i64 %n.vec148, 2
  %i.cm = getelementptr i8, ptr %.1.i, i64 %i.cl
  %i.cn = add i64 %i.bp, %n.vec148
  %i.co = getelementptr [4 x i8], ptr %i.bo, i64 %i.bp
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next154, %vector.body149 ] ; 3 uses
  %i.cp = shl i64 %index150, 2
  %next.gep151 = getelementptr i8, ptr %.1.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load152 = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !39
  %wide.load153 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !39
  %i.cr = getelementptr [4 x i8], ptr %i.co, i64 %index150 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> %wide.load152, ptr %i.cr, align 4, !tbaa !39
  store <4 x i32> %wide.load153, ptr %i.cs, align 4, !tbaa !39
  %index.next154 = add nuw i64 %index150, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.ct, label %scalar.ph145.preheader, label %vector.body149, !llvm.loop !644

scalar.ph145.preheader:                           ; preds = %vector.body149, %vector.memcheck142, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.bx, %vector.memcheck142 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.ck, %vector.body149 ]
  %.0511.i.i.i.i.i.i.ph = phi ptr [ %.1.i, %vector.memcheck142 ], [ %.1.i, %.lr.ph.i.i.i.i.i.i ], [ %i.cm, %vector.body149 ]
  %.sroa.4.010.i.i.i.i.i.i.ph = phi i64 [ %i.bp, %vector.memcheck142 ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %i.cn, %vector.body149 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.cy, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.0511.i.i.i.i.i.i = phi ptr [ %i.cw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.0511.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i.i = phi i64 [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ], [ %.sroa.4.010.i.i.i.i.i.i.ph, %scalar.ph145.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i.i, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.split.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, !prof !55

.split.us:                                        ; preds = %scalar.ph145, %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i: ; preds = %scalar.ph145
  %i.cu = load i32, ptr %.0511.i.i.i.i.i.i, align 4, !tbaa !39
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i.i
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !39
  %i.cw = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i.i, i64 4
  %i.cx = add i64 %.sroa.4.010.i.i.i.i.i.i, 1     ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.cz = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.cz, label %scalar.ph145, label %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i, !llvm.loop !645

_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i, %._crit_edge.i.loopexit
  %.sroa.4.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bp, %._crit_edge.i.loopexit ], [ %i.cx, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.i ] ; 8 uses
  %i.da = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.db = ptrtoint ptr %.119.i to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 2                 ; 5 uses
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i.i.i.i24.i, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit

.lr.ph.i.i.i.i.i24.i:                             ; preds = %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %umax.i.i.i.i.i25.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i) ; 2 uses
  %i.df = sub i64 %umax.i.i.i.i.i25.i, %.sroa.4.0.lcssa.i.i.i.i.i.i
  %i.dg = add nsw i64 %i.dd, -1
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dg)
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.di, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i24.i
  %i.dj = shl i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, 2
  %i.dk = add i64 %i.dj, %i.bt
  %i.dl = sub i64 %.119.i138.le, %i.dk
  %diff.check = icmp ugt i64 %i.dl, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dm = and i64 %i.di, 7                        ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  %i.do = select i1 %i.dn, i64 8, i64 %i.dm
  %n.vec = sub i64 %i.di, %i.do                   ; 4 uses
  %i.dp = sub i64 %i.dd, %n.vec
  %i.dq = shl i64 %n.vec, 2
  %i.dr = getelementptr i8, ptr %.119.i, i64 %i.dq
  %i.ds = add i64 %.sroa.4.0.lcssa.i.i.i.i.i.i, %n.vec
  %i.dt = getelementptr [4 x i8], ptr %i.bo, i64 %.sroa.4.0.lcssa.i.i.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.du = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.119.i, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !39
  %wide.load139 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !39
  %i.dw = getelementptr [4 x i8], ptr %i.dt, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x i32> %wide.load, ptr %i.dw, align 4, !tbaa !39
  store <4 x i32> %wide.load139, ptr %i.dx, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %scalar.ph.preheader, label %vector.body, !llvm.loop !646

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.i.i.i24.i
  %.012.i.i.i.i.i26.i.ph = phi i64 [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph.i.i.i.i.i24.i ], [ %i.dp, %vector.body ]
  %.0511.i.i.i.i.i27.i.ph = phi ptr [ %.119.i, %vector.memcheck ], [ %.119.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.dr, %vector.body ]
  %.sroa.4.010.i.i.i.i.i28.i.ph = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %vector.memcheck ], [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i24.i ], [ %i.ds, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i
  %.012.i.i.i.i.i26.i = phi i64 [ %i.ed, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.012.i.i.i.i.i26.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0511.i.i.i.i.i27.i = phi ptr [ %i.eb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.0511.i.i.i.i.i27.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.4.010.i.i.i.i.i28.i = phi i64 [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ], [ %.sroa.4.010.i.i.i.i.i28.i.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond.not.i.i.i.i.i29.i = icmp eq i64 %.sroa.4.010.i.i.i.i.i28.i, %umax.i.i.i.i.i25.i
  br i1 %exitcond.not.i.i.i.i.i29.i, label %.split50.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, !prof !55

.split50.us:                                      ; preds = %scalar.ph, %bb.g, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i.us
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i: ; preds = %scalar.ph
  %i.dz = load i32, ptr %.0511.i.i.i.i.i27.i, align 4, !tbaa !39
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.4.010.i.i.i.i.i28.i
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !39
  %i.eb = getelementptr inbounds nuw i8, ptr %.0511.i.i.i.i.i27.i, i64 4
  %i.ec = add i64 %.sroa.4.010.i.i.i.i.i28.i, 1   ; 2 uses
  %i.ed = add nsw i64 %.012.i.i.i.i.i26.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i26.i, 1
  br i1 %i.ee, label %scalar.ph, label %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, !llvm.loop !647

_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i
  %.sroa.4.0.lcssa.i.i.i.i.i21.i = phi i64 [ %.sroa.4.0.lcssa.i.i.i.i.i.i, %_ZSt4moveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEET0_T_S9_S8_.exit.i ], [ %i.ec, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i30.i ] ; 2 uses
  %i.ef = sub i64 %i.j, %i.da
  %i.eg = ashr exact i64 %i.ef, 2                 ; 2 uses
  %.not.i25 = icmp slt i64 %i.eg, %i.m
  br i1 %.not.i25, label %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, label %.lr.ph.i, !llvm.loop !639

_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit: ; preds = %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us, %bb.e
  %.0.lcssa.i = phi ptr [ %4, %bb.e ], [ %i.q, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.ar, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ] ; 2 uses
  %.sroa.420.0.lcssa.i = phi i64 [ %1, %bb.e ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i.us, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %.sroa.4.0.lcssa.i.i.i.i.i21.i, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.lcssa.i = phi i64 [ %i.b, %bb.e ], [ %i.am, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit.us ], [ %i.eg, %_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %.lcssa.i)
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.ei = tail call { ptr, i64 } @_ZSt12__move_mergeIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr noundef %.0.lcssa.i, ptr noundef %i.eh, ptr noundef %i.eh, ptr noundef nonnull %i.c, ptr %0, i64 %.sroa.420.0.lcssa.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %5) ; 0 uses
  %i.ej = icmp slt i64 %i.m, %i.b
  br i1 %i.ej, label %bb.e, label %._crit_edge, !llvm.loop !648

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_.exit, %_ZSt22__chunk_insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS12_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_S1F_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %11 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %.not = icmp sgt i64 %6, %7
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %0
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.b = sub i64 %3, %1
  %i.c = freeze i64 %i.b                          ; 5 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %umax.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %1) ; 2 uses
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.prol.not = icmp ult i64 %1, %i.e
  br i1 %exitcond.not.i.i.i.i.i.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol, label %.loopexit, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.prol: ; preds = %.prol.preheader
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !418
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  store i32 %i.i, ptr %8, align 4, !tbaa !39
  %i.j = add i64 %1, 1
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.l = add nsw i64 %i.c, -1
end_hunk_8
