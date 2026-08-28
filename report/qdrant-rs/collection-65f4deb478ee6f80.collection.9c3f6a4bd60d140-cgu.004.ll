Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.004?download=true
inline.NumInlined: 5142
inline.NumDeleted: 3641
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_5chain5ChainINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1p_ENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB3l_10LocalShard21internal_scroll_by_id0s_0ENvYINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBc_6result6ResultINtB1u_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB6N_6common15operation_error14OperationErrorEENtNtNtCsiHzErX7aQFk_12futures_util6future10try_future12TryFutureExt11into_futureENcNtINtNtB8r_14try_maybe_done12TryMaybeDoneINtNtB8p_11into_future10IntoFutureB52_EE6Future0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvBba_8for_each4callB9K_NCINvMsk_B1u_IB6z_Bcd_E14extend_trustedBN_E0E0EB3p_:bb.a
  %i.e = load <2 x ptr>, ptr %0, align 8, !alias.scope !2426, !noalias !2425
  store <2 x ptr> %i.e, ptr %i.d, align 8, !noalias !2422
  call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1O_INtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBb_6result6ResultINtB15_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB5D_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB7n_10LocalShard21internal_scroll_by_id0s_0NCIB3u_B3S_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB3S_EuNvYB3S_NtB9g_12TryFutureExt11into_futureNCIB3u_B9b_INtNtB9i_14try_maybe_done12TryMaybeDoneB9b_EuNcNtBbp_6Future0NCINvNvB2N_8for_each4callBbp_NCINvMsk_B15_IB5p_Bbp_E14extend_trustedINtB3w_3MapIBdv_IBdv_BO_B7e_EBaA_EBc8_EE0E0E0E0E0EB7r_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !2422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2422
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_5chain5ChainINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1p_ENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB3l_10LocalShard24internal_scroll_by_field0s_0ENvYINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBc_6result6ResultINtB1u_3VecTNtNtNtCs607s0NAIaWN_7segment10data_types8order_by10OrderValueNtNtB6T_5types15ExtendedPointIdEENtNtNtB6T_6common15operation_error14OperationErrorEENtNtNtCsiHzErX7aQFk_12futures_util6future10try_future12TryFutureExt11into_futureENcNtINtNtB9d_14try_maybe_done12TryMaybeDoneINtNtB9b_11into_future10IntoFutureB55_EE6Future0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvBbW_8for_each4callBaw_NCINvMsk_B1u_IB6C_BcZ_E14extend_trustedBN_E0E0EB3p_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2430)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2433
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !2436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !2437
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load <2 x ptr>, ptr %0, align 8, !alias.scope !2437, !noalias !2436
  store <2 x ptr> %i.e, ptr %i.d, align 8, !noalias !2433
  call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1O_INtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBb_6result6ResultINtB15_3VecTNtNtNtCs607s0NAIaWN_7segment10data_types8order_by10OrderValueNtNtB5G_5types15ExtendedPointIdEENtNtNtB5G_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB86_10LocalShard24internal_scroll_by_field0s_0NCIB3u_B3S_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB3S_EuNvYB3S_NtBa2_12TryFutureExt11into_futureNCIB3u_B9X_INtNtBa4_14try_maybe_done12TryMaybeDoneB9X_EuNcNtBcb_6Future0NCINvNvB2N_8for_each4callBcb_NCINvMsk_B15_IB5p_Bcb_E14extend_trustedINtB3w_3MapIBeh_IBeh_BO_B7X_EBbm_EBcU_EE0E0E0E0E0EB8a_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !2433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2433
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_5chain5ChainINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1p_ENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB3l_10LocalShard25internal_scroll_by_id_raw0s_0ENvYINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBc_6result6ResultINtB1u_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB6R_6common15operation_error14OperationErrorEENtNtNtCsiHzErX7aQFk_12futures_util6future10try_future12TryFutureExt11into_futureENcNtINtNtB8v_14try_maybe_done12TryMaybeDoneINtNtB8t_11into_future10IntoFutureB56_EE6Future0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvBbe_8for_each4callB9O_NCINvMsk_B1u_IB6D_Bch_E14extend_trustedBN_E0E0EB3p_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2444
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !2447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !2448
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load <2 x ptr>, ptr %0, align 8, !alias.scope !2448, !noalias !2447
  store <2 x ptr> %i.e, ptr %i.d, align 8, !noalias !2444
  call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB10_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1O_INtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBb_6result6ResultINtB15_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB5D_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB7n_10LocalShard25internal_scroll_by_id_raw0s_0NCIB3u_B3S_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB3S_EuNvYB3S_NtB9k_12TryFutureExt11into_futureNCIB3u_B9f_INtNtB9m_14try_maybe_done12TryMaybeDoneB9f_EuNcNtBbt_6Future0NCINvNvB2N_8for_each4callBbt_NCINvMsk_B15_IB5p_Bbt_E14extend_trustedINtB3w_3MapIBdz_IBdz_BO_B7e_EBaE_EBcc_EE0E0E0E0E0EB7r_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !2444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2444
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_6cloned6ClonedINtNtB8_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1L_EENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5facetNtB3S_10LocalShard12approx_facet0s_0ENvYINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBc_6result6ResultINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValuejENtNtNtB7V_6common15operation_error14OperationErrorEENtNtNtCsiHzErX7aQFk_12futures_util6future10try_future12TryFutureExt11into_futureENcNtINtNtB9I_14try_maybe_done12TryMaybeDoneINtNtB9G_11into_future10IntoFutureB5p_EE6Future0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvBcr_8for_each4callBb1_NCINvMsk_NtB1U_3vecINtBdH_3VecBdu_E14extend_trustedBN_E0E0EB3W_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2455
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !2458
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load <2 x ptr>, ptr %i.b, align 8, !alias.scope !2458, !noalias !2459
  store <2 x ptr> %i.d, ptr %i.c, align 8, !noalias !2455
  call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1m_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB2k_INtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBb_6result6ResultINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValuejENtNtNtB6V_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5facetNtB8O_10LocalShard12approx_facet0s_0NCIB41_B4p_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB4p_EuNvYB4p_NtBax_12TryFutureExt11into_futureNCIB41_Bas_INtNtBaz_14try_maybe_done12TryMaybeDoneBas_EuNcNtBcG_6Future0NCINvNvB3k_8for_each4callBcG_NCINvMsk_NtB1v_3vecINtBeh_3VecBcG_E14extend_trustedINtB43_3MapIBeY_IBeY_BP_B8F_EBbR_EBdp_EE0E0E0E0E0EB8S_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !2459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2455
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_6cloned6ClonedINtNtB8_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1L_EENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5facetNtB3S_10LocalShard13unique_values0s_0ENvYINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBc_6result6ResultINtNtB1Q_3set8BTreeSetNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueENtNtNtB7o_6common15operation_error14OperationErrorEENtNtNtCsiHzErX7aQFk_12futures_util6future10try_future12TryFutureExt11into_futureENcNtINtNtB9a_14try_maybe_done12TryMaybeDoneINtNtB98_11into_future10IntoFutureB5q_EE6Future0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvBbT_8for_each4callBat_NCINvMsk_NtB1U_3vecINtBd9_3VecBcW_E14extend_trustedBN_E0E0EB3W_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2466
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !2469
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load <2 x ptr>, ptr %i.b, align 8, !alias.scope !2469, !noalias !2470
  store <2 x ptr> %i.d, ptr %i.c, align 8, !noalias !2466
  call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_5chain5ChainINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEB1m_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB2k_INtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBb_6result6ResultINtNtB1r_3set8BTreeSetNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueENtNtNtB6n_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5facetNtB8f_10LocalShard13unique_values0s_0NCIB41_B4p_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB4p_EuNvYB4p_NtB9Z_12TryFutureExt11into_futureNCIB41_B9U_INtNtBa1_14try_maybe_done12TryMaybeDoneB9U_EuNcNtBc8_6Future0NCINvNvB3k_8for_each4callBc8_NCINvMsk_NtB1v_3vecINtBdJ_3VecBc8_E14extend_trustedINtB43_3MapIBeq_IBeq_BP_B86_EBbj_EBcR_EE0E0E0E0E0EB8j_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !2470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2466
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtBc_5slice4iter4IterNtNtNtCs5QaNqjAn6vc_5shard5query6scroll26QueryScrollRequestInternalENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB2K_10LocalShard18query_scroll_batch00ENvYNCNvB2H_12query_scroll0NtNtNtCsiHzErX7aQFk_12futures_util6future10try_future12TryFutureExt11into_futureENcNtINtNtB4N_14try_maybe_done12TryMaybeDoneINtNtB4L_11into_future10IntoFutureB4m_EE6Future0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7w_8for_each4callB66_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8M_3VecB8z_E14extend_trustedBN_E0E0EB2O_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2479)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2481, !noalias !2482, !nonnull !10, !noundef !10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2481, !noalias !2482, !nonnull !10, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.d, align 8, !alias.scope !2481, !noalias !2482 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2481, !noalias !2482 ; 2 uses
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !alias.scope !2481, !noalias !2482 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2481, !noalias !2482 ; 5 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !alias.scope !2482, !noalias !2481 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2482, !noalias !2481 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !2482, !noalias !2481
  %i.e = icmp eq ptr %i.a, %i.c
  br i1 %i.e, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtCs5QaNqjAn6vc_5shard5query6scroll26QueryScrollRequestInternalENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB2G_10LocalShard18query_scroll_batch00ENvYNCNvB2D_12query_scroll0NtNtNtCsiHzErX7aQFk_12futures_util6future10try_future12TryFutureExt11into_futureENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtB4H_11into_future10IntoFutureB4i_EINtNtB4J_14try_maybe_done12TryMaybeDoneB6T_EuNcNtB7w_6Future0NCINvNvB5Y_8for_each4callB7w_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB97_3VecB7w_E14extend_trustedIBO_BN_B8f_EE0E0E0EB2K_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 240
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload.i.i, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %i.n = phi i64 [ %.sroa.5.0.copyload.i.i, %bb.b ], [ %i.ac, %bb.i ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [240 x i8], ptr %i.a, i64 %.sroa.01.0.i.i.i
  %i.p = load i64, ptr %.sroa.52.0.copyload.i.i, align 8, !noalias !2483, !noundef !10
  %i.q = load i32, ptr %i.j, align 8, !range !2493, !noalias !2483, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2494)
  %i.r = load ptr, ptr %.sroa.6.0.copyload.i.i, align 8, !alias.scope !2494, !noalias !2497, !nonnull !10, !noundef !10 ; 2 uses
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8, !noalias !2499
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !alias.scope !2494, !noalias !2497, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !2499
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.l, align 8, !range !315, !alias.scope !2494, !noalias !2497, !noundef !10
  %i.y = load ptr, ptr %i.m, align 8, !alias.scope !2494, !noalias !2497, !nonnull !10, !noundef !10 ; 2 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !noalias !2499
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [1296 x i8], ptr %.sroa.7.0.copyload.i.i, i64 %i.n ; 11 uses
  store i64 0, ptr %i.ab, align 8, !noalias !2500
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.p, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2511
  %.sroa.44.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.q, ptr %.sroa.44.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !2511
  %.sroa.66.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.r, ptr %.sroa.66.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !2511
  %.sroa.77.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.u, ptr %.sroa.77.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !2511
  %.sroa.88.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr %i.y, ptr %.sroa.88.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !2511
  %.sroa.99.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i8 %i.x, ptr %.sroa.99.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !2511
  %.sroa.1111.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr %.sroa.01.0.copyload.i.i, ptr %.sroa.1111.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !2511
  %.sroa.1212.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store ptr %i.o, ptr %.sroa.1212.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !2511
  %.sroa.1313.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.1313.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !2512
  %.sroa.14.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  store i8 0, ptr %.sroa.14.0..sroa.42.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !2512
  %i.ac = add i64 %i.n, 1                         ; 2 uses
  %i.ad = add nuw i64 %.sroa.01.0.i.i.i, 1        ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.i
  br i1 %i.ae, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtCs5QaNqjAn6vc_5shard5query6scroll26QueryScrollRequestInternalENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB2G_10LocalShard18query_scroll_batch00ENvYNCNvB2D_12query_scroll0NtNtNtCsiHzErX7aQFk_12futures_util6future10try_future12TryFutureExt11into_futureENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtB4H_11into_future10IntoFutureB4i_EINtNtB4J_14try_maybe_done12TryMaybeDoneB6T_EuNcNtB7w_6Future0NCINvNvB5Y_8for_each4callB7w_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB97_3VecB7w_E14extend_trustedIBO_BN_B8f_EE0E0E0EB2K_.exit, label %bb.c

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtCs5QaNqjAn6vc_5shard5query6scroll26QueryScrollRequestInternalENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB2G_10LocalShard18query_scroll_batch00ENvYNCNvB2D_12query_scroll0NtNtNtCsiHzErX7aQFk_12futures_util6future10try_future12TryFutureExt11into_futureENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtB4H_11into_future10IntoFutureB4i_EINtNtB4J_14try_maybe_done12TryMaybeDoneB6T_EuNcNtB7w_6Future0NCINvNvB5Y_8for_each4callB7w_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB97_3VecB7w_E14extend_trustedIBO_BN_B8f_EE0E0E0EB2K_.exit: ; preds = %bb.i, %bb.a
  %storemerge.i.i = phi i64 [ %.sroa.5.0.copyload.i.i, %bb.a ], [ %i.ac, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %storemerge.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !2513
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtBc_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBc_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB2b_10collection5queryNtB4q_10Collection31batch_query_shards_concurrently0s_0ENvYINtNtNtCsiHzErX7aQFk_12futures_util6future10try_future7AndThenNCNvMNtB27_8read_opsB25_11query_batch0NCNCNCB4j_s_000NCB7r_0ENtB5O_12TryFutureExt11into_futureENcNtINtNtB5Q_14try_maybe_done12TryMaybeDoneINtNtB5O_11into_future10IntoFutureB5L_EE6Future0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB9M_8for_each4callB8m_NCINvMsk_NtB1C_3vecINtBb2_3VecBaP_E14extend_trustedBN_E0E0EB2b_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.44.i.i.i.i.i = alloca i64, align 8       ; 5 uses
  %.sroa.65.i.i.i.i.i = alloca i64, align 8       ; 4 uses
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.14.i.i.i.i = alloca [23 x i8], align 1   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !2524, !noalias !2525, !nonnull !10, !noundef !10 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2524, !noalias !2525, !noundef !10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2524, !noalias !2525 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2524, !noalias !2525
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2524, !noalias !2525
  %.sroa.62.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.62.0.copyload.i.i = load ptr, ptr %.sroa.62.0..sroa_idx.i.i, align 8, !alias.scope !2524, !noalias !2525
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !2524, !noalias !2525 ; 2 uses
  %.sroa.83.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.83.0.copyload.i.i = load ptr, ptr %.sroa.83.0..sroa_idx.i.i, align 8, !alias.scope !2524, !noalias !2525 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !alias.scope !2525, !noalias !2524 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2525, !noalias !2524 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !2525, !noalias !2524
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.f = icmp eq ptr %i.b, %i.d
  br i1 %i.f, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBc_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB27_10collection5queryNtB4m_10Collection31batch_query_shards_concurrently0s_0ENvYINtNtNtCsiHzErX7aQFk_12futures_util6future10try_future7AndThenNCNvMNtB23_8read_opsB21_11query_batch0NCNCNCB4f_s_000NCB7n_0ENtB5K_12TryFutureExt11into_futureENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtB5K_11into_future10IntoFutureB5H_EINtNtB5M_14try_maybe_done12TryMaybeDoneB99_EuNcNtB9M_6Future0NCINvNvB8e_8for_each4callB9M_NCINvMsk_NtB1y_3vecINtBbn_3VecB9M_E14extend_trustedIBO_BN_Bav_EE0E0E0EB27_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.83.0.copyload.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.83.0.copyload.i.i, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.83.0.copyload.i.i, i64 16
  %.sroa.14.88..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.14.i.i.i.i, i64 7
  br label %bb.c

bb.c:                                             ; preds = %bb.r, %bb.b
  %.val10.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %bb.b ], [ %i.ay, %bb.r ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.az, %bb.r ] ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.01.0.i.i.i ; 2 uses
  %.val15.i.i.i = load ptr, ptr %i.o, align 8, !noalias !2526 ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val16.i.i.i = load ptr, ptr %i.p, align 8, !noalias !2526, !align !9, !noundef !10 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i.i)
  %.not.i.i.i.i.i = icmp eq ptr %.val16.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.44.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2532)
  %i.q = load i64, ptr %.val16.i.i.i, align 8, !range !19, !alias.scope !2532, !noalias !2534, !noundef !10
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %.val16.i.i.i, i64 8 ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !2532, !noalias !2534, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.val16.i.i.i, i64 23
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !2532, !noalias !2534, !noundef !10
  %.not.i.i.i.i.i.i = icmp sgt i8 %i.v, -1
  %i.w = getelementptr inbounds nuw i8, ptr %.val16.i.i.i, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !2532, !noalias !2534 ; 5 uses
  %.val21.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !2532, !noalias !2534 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i, i64 -16
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8, !noalias !2540
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i, !prof !265

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsPYQCUnoTxQ_10collection(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val21.i.i.i.i.i.i) #42
          to label %.noexc.i.i.i unwind label %bb.s, !noalias !2526

.noexc.i.i.i:                                     ; preds = %bb.i
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.h, %bb.g
  %.sroa.06.0.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i, %bb.h ], [ inttoptr (i64 16 to ptr), %bb.g ], [ %.val.i.i.i.i.i.i, %bb.f ]
  %2 = ptrtoint ptr %.sroa.06.0.i.i.i.i.i.i to i64
  store i64 %2, ptr %.sroa.44.i.i.i.i.i, align 8, !alias.scope !2529, !noalias !2541
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i, %bb.e
  %.sink.i.sroa.phi.i.i.i.i.i = phi ptr [ %.sroa.65.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i ], [ %.sroa.44.i.i.i.i.i, %bb.e ]
  %.sroa.58.0.sink.i.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i ], [ %i.t, %bb.e ]
  %storemerge.i.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i ], [ 1, %bb.e ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i.i, align 8, !alias.scope !2529, !noalias !2541
  %.sroa.44.i.i.i.i.i.0..sroa.44.i.i.i.i.i.0..sroa.44.i.i.i.i.i.0..sroa.44.i.i.i.i.0..sroa.44.i.i.i.i.0..sroa.44.i.i.i.0..sroa.44.i.i.i.0..sroa.44.i.i.0..sroa.44.i.i.0..sroa.44.i.0..sroa.44.i.0..sroa.44.0..sroa.44.0..sroa.44.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.44.i.i.i.i.i, align 8, !noalias !2542
  %.sroa.65.i.i.i.i.i.0..sroa.65.i.i.i.i.i.0..sroa.65.i.i.i.i.i.0..sroa.65.i.i.i.i.0..sroa.65.i.i.i.i.0..sroa.65.i.i.i.0..sroa.65.i.i.i.0..sroa.65.i.i.0..sroa.65.i.i.0..sroa.65.i.0..sroa.65.i.0..sroa.65.0..sroa.65.0..sroa.65.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.65.i.i.i.i.i, align 8, !noalias !2542
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.44.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65.i.i.i.i.i)
  br label %bb.j

bb.j:                                             ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i, %bb.c
  %.sroa.6.0.i.i.i.i.i = phi i64 [ %.sroa.65.i.i.i.i.i.0..sroa.65.i.i.i.i.i.0..sroa.65.i.i.i.i.i.0..sroa.65.i.i.i.i.0..sroa.65.i.i.i.i.0..sroa.65.i.i.i.0..sroa.65.i.i.i.0..sroa.65.i.i.0..sroa.65.i.i.0..sroa.65.i.0..sroa.65.i.0..sroa.65.0..sroa.65.0..sroa.65.0.copyload.i.i.i.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ undef, %bb.c ]
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %.sroa.44.i.i.i.i.i.0..sroa.44.i.i.i.i.i.0..sroa.44.i.i.i.i.i.0..sroa.44.i.i.i.i.0..sroa.44.i.i.i.i.0..sroa.44.i.i.i.0..sroa.44.i.i.i.0..sroa.44.i.i.0..sroa.44.i.i.0..sroa.44.i.0..sroa.44.i.0..sroa.44.0..sroa.44.0..sroa.44.0.copyload.i.i.i.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ undef, %bb.c ]
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ 2, %bb.c ]
  %i.aa = load ptr, ptr %.sroa.01.0.copyload.i.i, align 8, !noalias !2542, !nonnull !10, !noundef !10
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !2542
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %.sroa.01.0.copyload.i.i, align 8, !noalias !2542, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i.i.i) ]
  %i.ae = load ptr, ptr %.val15.i.i.i, align 8, !noalias !2542, !nonnull !10, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0.copyload.i.i, i64 16, i1 false), !noalias !2542
  %i.af = load <2 x i64>, ptr %.sroa.5.0.copyload.i.i, align 8, !noalias !2542
  %i.ag = load i64, ptr %.sroa.62.0.copyload.i.i, align 8, !range !2543, !noalias !2542, !noundef !10 ; 2 uses
  %i.ah = icmp ne i64 %i.ag, 6
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i64, ptr %.sroa.7.0.copyload.i.i, align 8, !noalias !2542
  %i.aj = load i32, ptr %i.k, align 8, !range !2544, !noalias !2542, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2545)
  %i.ak = load ptr, ptr %.sroa.83.0.copyload.i.i, align 8, !alias.scope !2545, !noalias !2548, !nonnull !10, !noundef !10 ; 2 uses
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8, !noalias !2550
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.l, align 8, !alias.scope !2545, !noalias !2548, !nonnull !10, !noundef !10 ; 2 uses
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 8, !noalias !2550
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aq = load i8, ptr %i.m, align 8, !range !315, !alias.scope !2545, !noalias !2548, !noundef !10
  %i.ar = load ptr, ptr %i.n, align 8, !alias.scope !2545, !noalias !2548, !nonnull !10, !noundef !10 ; 2 uses
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8, !noalias !2550
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.p, label %bb.r

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.au = icmp eq i64 %i.ag, 7
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.14.88..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !2551
  %i.aw = zext i1 %i.au to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ax = getelementptr inbounds nuw [1576 x i8], ptr %.sroa.8.0.copyload.i.i, i64 %.val10.i.i.i ; 15 uses
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.ax, align 8, !noalias !2552
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.sroa.5.0.i.i.i.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !2552
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %.sroa.6.0.i.i.i.i.i, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !noalias !2552
  %.sroa.66.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store <2 x i64> %i.af, ptr %.sroa.66.0..sroa_idx.i.i.i.i, align 8, !noalias !2552
  %.sroa.88.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i64 %i.ai, ptr %.sroa.88.0..sroa_idx.i.i.i.i, align 8, !noalias !2552
  %.sroa.99.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store i32 %i.aj, ptr %.sroa.99.0..sroa_idx.i.i.i.i, align 8, !noalias !2552
  %.sroa.1111.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store ptr %i.ak, ptr %.sroa.1111.0..sroa_idx.i.i.i.i, align 8, !noalias !2552
  %.sroa.1212.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store ptr %i.an, ptr %.sroa.1212.0..sroa_idx.i.i.i.i, align 8, !noalias !2552
  %.sroa.1313.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store ptr %i.ar, ptr %.sroa.1313.0..sroa_idx.i.i.i.i, align 8, !noalias !2552
  %.sroa.1414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store i8 %i.aq, ptr %.sroa.1414.0..sroa_idx.i.i.i.i, align 8, !noalias !2552
  %.sroa.1515.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.1515.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.14.i.i.i.i, i64 23, i1 false), !noalias !2551
  %.sroa.1616.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store ptr %i.av, ptr %.sroa.1616.0..sroa_idx.i.i.i.i, align 8, !noalias !2552
  %.sroa.1717.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  store ptr %i.ad, ptr %.sroa.1717.0..sroa_idx.i.i.i.i, align 8, !noalias !2552
  %.sroa.1919.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 1568
  store i8 %i.aw, ptr %.sroa.1919.0..sroa_idx.i.i.i.i, align 8, !noalias !2552
  %.sroa.20.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 1569
  store i8 0, ptr %.sroa.20.0..sroa_idx.i.i.i.i, align 1, !noalias !2552
  %i.ay = add i64 %.val10.i.i.i, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i.i)
  %i.az = add nuw i64 %.sroa.01.0.i.i.i, 1        ; 2 uses
  %i.ba = icmp eq i64 %i.az, %i.j
  br i1 %i.ba, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBc_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB27_10collection5queryNtB4m_10Collection31batch_query_shards_concurrently0s_0ENvYINtNtNtCsiHzErX7aQFk_12futures_util6future10try_future7AndThenNCNvMNtB23_8read_opsB21_11query_batch0NCNCNCB4f_s_000NCB7n_0ENtB5K_12TryFutureExt11into_futureENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtB5K_11into_future10IntoFutureB5H_EINtNtB5M_14try_maybe_done12TryMaybeDoneB99_EuNcNtB9M_6Future0NCINvNvB8e_8for_each4callB9M_NCINvMsk_NtB1y_3vecINtBbn_3VecB9M_E14extend_trustedIBO_BN_Bav_EE0E0E0EB27_.exit, label %bb.c

bb.s:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val10.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !2526
  resume { ptr, i32 } %i.bb

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBc_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB27_10collection5queryNtB4m_10Collection31batch_query_shards_concurrently0s_0ENvYINtNtNtCsiHzErX7aQFk_12futures_util6future10try_future7AndThenNCNvMNtB23_8read_opsB21_11query_batch0NCNCNCB4f_s_000NCB7n_0ENtB5K_12TryFutureExt11into_futureENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtB5K_11into_future10IntoFutureB5H_EINtNtB5M_14try_maybe_done12TryMaybeDoneB99_EuNcNtB9M_6Future0NCINvNvB8e_8for_each4callB9M_NCINvMsk_NtB1y_3vecINtBbn_3VecB9M_E14extend_trustedIBO_BN_Bav_EE0E0E0EB27_.exit: ; preds = %bb.r, %bb.a
  %storemerge.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %bb.a ], [ %i.ay, %bb.r ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %storemerge.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !2526
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard5query13planned_query8RootPlanENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB2Z_10LocalShard16do_planned_query00ENvYNCNvB2U_12resolve_plan0NtNtNtCsiHzErX7aQFk_12futures_util6future10try_future12TryFutureExt11into_futureENcNtINtNtB4Z_14try_maybe_done12TryMaybeDoneINtNtB4X_11into_future10IntoFutureB4y_EE6Future0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7I_8for_each4callB6i_NCINvMsk_B1a_INtB1a_3VecB8L_E14extend_trustedBN_E0E0EB33_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 32, i1 false), !noalias !2568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2561
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !2568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !2569
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard5query13planned_query8RootPlanENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1Y_8adapters3map8map_foldBX_NCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3E_10LocalShard12resolve_plan0uNCNCNvB3z_16do_planned_query00NCIB2W_B3v_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB3v_EuNvYB3v_NtB5P_12TryFutureExt11into_futureNCIB2W_B5K_INtNtB5R_14try_maybe_done12TryMaybeDoneB5K_EuNcNtB7Y_6Future0NCINvNvB1S_8for_each4callB7Y_NCINvMsk_B8_INtB8_3VecB7Y_E14extend_trustedINtB2Y_3MapIBa8_IBa8_BI_B55_EB79_EB8H_EE0E0E0E0E0EB3I_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !2561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2561
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5facetNtB3b_10LocalShard11exact_facet00ENvYNCNCB34_00NtNtNtCsiHzErX7aQFk_12futures_util6future10try_future12TryFutureExt11into_futureENcNtINtNtB4T_14try_maybe_done12TryMaybeDoneINtNtB4R_11into_future10IntoFutureB4F_EE6Future0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7C_8for_each4callB6c_NCINvMsk_NtB1e_3vecINtB8S_3VecB8F_E14extend_trustedBN_E0E0EB3f_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [400 x i8], align 16              ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(120) %0, i64 72, i1 false), !noalias !2577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2570
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !2577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !2578
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2579)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2579, !noalias !2582
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !2579, !noalias !2582
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.val5.i.i.i = phi i64 [ %i.n, %bb.f ], [ %.promoted.i.i.i, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2584
  invoke void @_RNvXsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3setINtB5_8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.d unwind label %bb.c, !noalias !2585

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !2579, !noalias !2582, !nonnull !10, !align !9, !noundef !10
  store i64 %.val5.i.i.i, ptr %.val.i.i.i, align 8, !noalias !2585
  invoke void @_RNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueNtNtB7_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueEECsPYQCUnoTxQ_10collection.exit.i.i.i unwind label %bb.g, !noalias !2585

bb.d:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.c, align 16, !range !80, !noalias !2584, !noundef !10
  %.not.i.i.i = icmp eq i64 %i.l, -1
  br i1 %.not.i.i.i, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5facetNtB37_10LocalShard11exact_facet00ENvYNCNCB30_00NtNtNtCsiHzErX7aQFk_12futures_util6future10try_future12TryFutureExt11into_futureENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtB4N_11into_future10IntoFutureB4B_EINtNtB4P_14try_maybe_done12TryMaybeDoneB6Z_EuNcNtB7C_6Future0NCINvNvB64_8for_each4callB7C_NCINvMsk_NtB1a_3vecINtB9d_3VecB7C_E14extend_trustedIBO_BN_B8l_EE0E0E0EB3b_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !2584
  call void @llvm.experimental.noalias.scope.decl(metadata !2590)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2586
  invoke fastcc void @_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5facetNtB8_10LocalShard11exact_facet00Bc_(ptr noalias nofree noundef align 16 captures(none) dereferenceable(400) %i.b, ptr noalias nofree noundef align 8 dereferenceable(48) %i.g, ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.a) #41
          to label %bb.f unwind label %bb.c, !noalias !2570

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2586
  call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  call void @llvm.experimental.noalias.scope.decl(metadata !2594)
  call void @llvm.experimental.noalias.scope.decl(metadata !2597)
  call void @llvm.experimental.noalias.scope.decl(metadata !2600)
  %i.m = getelementptr inbounds nuw [416 x i8], ptr %i.i, i64 %.val5.i.i.i ; 2 uses
  store i128 0, ptr %i.m, align 16, !noalias !2603
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_3ops5range5RangejENCINvNtNtCsPYQCUnoTxQ_10collection6common18transpose_iterator15transposed_iterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEs_0ENCNvXs2_NtNtB1C_6shards7resolveIB2K_B2J_ENtB4d_7Resolve7resolve0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB58_8for_each4callB2J_NCINvMsk_B2M_B4A_14extend_trustedBN_E0E0EB1C_:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtCs5QaNqjAn6vc_5shard5query6scroll26QueryScrollRequestInternalENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB2G_10LocalShard18query_scroll_batch00ENvYNCNvB2D_12query_scroll0NtNtNtCsiHzErX7aQFk_12futures_util6future10try_future12TryFutureExt11into_futureENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtB4L_6stream15futures_ordered14FuturesOrderedINtNtB4H_11into_future10IntoFutureB4i_EENCINvXs8_B6E_B6B_INtNtB62_7collect12FromIteratorB7q_E9from_iterBN_E0EB2K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1296 x i8], align 8              ; 14 uses
  %i.b = alloca [1352 x i8], align 8              ; 17 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2914)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !2912, !noalias !2916, !nonnull !10, !noundef !10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2912, !noalias !2916, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.01.0.copyload.i = load ptr, ptr %i.g, align 8, !alias.scope !2912, !noalias !2916 ; 3 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.42.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !2912, !noalias !2916 ; 3 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.53.0.copyload.i = load ptr, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !2912, !noalias !2916 ; 3 uses
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.64.0.copyload.i = load ptr, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !2912, !noalias !2916 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2920)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = icmp eq ptr %i.d, %i.f
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !2922
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = udiv exact i64 %i.k, 240
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.42.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload.i) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.53.0.copyload.i, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.64.0.copyload.i) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.64.0.copyload.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.64.0.copyload.i, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.64.0.copyload.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.77.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.913.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.1016.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.1119.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.1222.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.14.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.15.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.16.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.sroa.17.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.sroa.77.64..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.913.64..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.1016.64..sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.1119.64..sroa_idx20.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.1222.64..sroa_idx23.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.14.64..sroa_idx27.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.15.64..sroa_idx29.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.16.64..sroa_idx31.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.17.64..sroa_idx33.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1288
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull readonly align 8 dereferenceable(64) %2, i64 64, i1 false), !alias.scope !2924, !noalias !2925
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs5QaNqjAn6vc_5shard5query6scroll26QueryScrollRequestInternalENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB2C_10LocalShard18query_scroll_batch00ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB4V_6future10try_future11into_future10IntoFutureNCNvB2z_12query_scroll0EENCINvB6_8map_foldB6W_B61_B4O_NvYB6W_NtB66_12TryFutureExt11into_futureNCINvXs8_B4R_B4O_INtNtB4f_7collect12FromIteratorB61_E9from_iterIBO_BN_B7O_EE0E0EB2G_.exit

bb.d:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs5QaNqjAn6vc_5shard5query6scroll26QueryScrollRequestInternalNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB27_10LocalShard12query_scroll0INtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB3F_6future10try_future11into_future10IntoFutureB20_EENCNCNvB24_18query_scroll_batch00NCIB2_B20_B4L_B3y_NvYB20_NtB4Q_12TryFutureExt11into_futureNCINvXs8_B3B_B3y_INtNtNtB8_6traits7collect12FromIteratorB4L_E9from_iterINtB4_3MapIB8o_INtNtNtBa_5slice4iter4IterBV_EB5M_EB6A_EE0E0E0B2b_.exit.i.i, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.al, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs5QaNqjAn6vc_5shard5query6scroll26QueryScrollRequestInternalNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB27_10LocalShard12query_scroll0INtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB3F_6future10try_future11into_future10IntoFutureB20_EENCNCNvB24_18query_scroll_batch00NCIB2_B20_B4L_B3y_NvYB20_NtB4Q_12TryFutureExt11into_futureNCINvXs8_B3B_B3y_INtNtNtB8_6traits7collect12FromIteratorB4L_E9from_iterINtB4_3MapIB8o_INtNtNtBa_5slice4iter4IterBV_EB5M_EB6A_EE0E0E0B2b_.exit.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [240 x i8], ptr %i.d, i64 %.sroa.01.0.i.i ; 2 uses
  %i.v = load i64, ptr %.sroa.53.0.copyload.i, align 8, !noalias !2926, !noundef !10 ; 2 uses
  %i.w = load i32, ptr %i.m, align 8, !range !2493, !noalias !2926, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2936)
  %i.x = load ptr, ptr %.sroa.64.0.copyload.i, align 8, !alias.scope !2936, !noalias !2939, !nonnull !10, !noundef !10 ; 3 uses
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8, !noalias !2941
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.n, align 8, !alias.scope !2936, !noalias !2939, !nonnull !10, !noundef !10 ; 3 uses
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !2941
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %i.o, align 8, !range !315, !alias.scope !2936, !noalias !2939, !noundef !10 ; 2 uses
  %i.ae = load ptr, ptr %i.p, align 8, !alias.scope !2936, !noalias !2939, !nonnull !10, !noundef !10 ; 3 uses
  %i.af = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8, !noalias !2941
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.i, label %_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB8_10LocalShard18query_scroll_batch00Bc_.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB8_10LocalShard18query_scroll_batch00Bc_.exit.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !2947
  store i64 %i.v, ptr %i.q, align 8, !noalias !2948
  store i32 %i.w, ptr %.sroa.77.64..sroa_idx.i.i.i, align 8, !noalias !2948
  store ptr %i.x, ptr %.sroa.913.64..sroa_idx.i.i.i, align 8, !noalias !2948
  store ptr %i.aa, ptr %.sroa.1016.64..sroa_idx.i.i.i, align 8, !noalias !2948
  store ptr %i.ae, ptr %.sroa.1119.64..sroa_idx.i.i.i, align 8, !noalias !2948
  store i8 %i.ad, ptr %.sroa.1222.64..sroa_idx.i.i.i, align 8, !noalias !2948
  store ptr %.sroa.01.0.copyload.i, ptr %.sroa.14.64..sroa_idx.i.i.i, align 8, !noalias !2948
  store ptr %i.u, ptr %.sroa.15.64..sroa_idx.i.i.i, align 8, !noalias !2948
  store ptr %.sroa.42.0.copyload.i, ptr %.sroa.16.64..sroa_idx.i.i.i, align 8, !noalias !2948
  store i8 0, ptr %.sroa.17.64..sroa_idx.i.i.i, align 8, !noalias !2948
  call void @llvm.experimental.noalias.scope.decl(metadata !2949)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2952
  %i.ah = load i64, ptr %i.r, align 8, !alias.scope !2949, !noalias !2955, !noundef !10 ; 2 uses
  store i64 %i.v, ptr %i.a, align 8, !noalias !2948
  store i32 %i.w, ptr %.sroa.77.64..sroa_idx8.i.i.i, align 8, !noalias !2948
  store ptr %i.x, ptr %.sroa.913.64..sroa_idx14.i.i.i, align 8, !noalias !2948
  store ptr %i.aa, ptr %.sroa.1016.64..sroa_idx17.i.i.i, align 8, !noalias !2948
  store ptr %i.ae, ptr %.sroa.1119.64..sroa_idx20.i.i.i, align 8, !noalias !2948
  store i8 %i.ad, ptr %.sroa.1222.64..sroa_idx23.i.i.i, align 8, !noalias !2948
  store ptr %.sroa.01.0.copyload.i, ptr %.sroa.14.64..sroa_idx27.i.i.i, align 8, !noalias !2948
  store ptr %i.u, ptr %.sroa.15.64..sroa_idx29.i.i.i, align 8, !noalias !2948
  store ptr %.sroa.42.0.copyload.i, ptr %.sroa.16.64..sroa_idx31.i.i.i, align 8, !noalias !2948
  store i8 0, ptr %.sroa.17.64..sroa_idx33.i.i.i, align 8, !noalias !2948
  store i64 %i.ah, ptr %i.s, align 8, !noalias !2952
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.r, align 8, !alias.scope !2949, !noalias !2955
  invoke void @_RNvMs4_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB33_10LocalShard12query_scroll0EEE4pushB37_(ptr noundef nonnull align 8 %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1296) %i.a)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs5QaNqjAn6vc_5shard5query6scroll26QueryScrollRequestInternalNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB27_10LocalShard12query_scroll0INtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB3F_6future10try_future11into_future10IntoFutureB20_EENCNCNvB24_18query_scroll_batch00NCIB2_B20_B4L_B3y_NvYB20_NtB4Q_12TryFutureExt11into_futureNCINvXs8_B3B_B3y_INtNtNtB8_6traits7collect12FromIteratorB4L_E9from_iterINtB4_3MapIB8o_INtNtNtBa_5slice4iter4IterBV_EB5M_EB6A_EE0E0E0B2b_.exit.i.i unwind label %bb.j, !noalias !2956

bb.j:                                             ; preds = %_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB8_10LocalShard18query_scroll_batch00Bc_.exit.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBI_6future10try_future11into_future10IntoFutureNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB2P_10LocalShard12query_scroll0EEEB2T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b) #39
          to label %.body.i.i.i unwind label %bb.k, !noalias !2956

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !2956
  unreachable

.body.i.i.i:                                      ; preds = %bb.j
  resume { ptr, i32 } %i.aj

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs5QaNqjAn6vc_5shard5query6scroll26QueryScrollRequestInternalNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB27_10LocalShard12query_scroll0INtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB3F_6future10try_future11into_future10IntoFutureB20_EENCNCNvB24_18query_scroll_batch00NCIB2_B20_B4L_B3y_NvYB20_NtB4Q_12TryFutureExt11into_futureNCINvXs8_B3B_B3y_INtNtNtB8_6traits7collect12FromIteratorB4L_E9from_iterINtB4_3MapIB8o_INtNtNtBa_5slice4iter4IterBV_EB5M_EB6A_EE0E0E0B2b_.exit.i.i: ; preds = %_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB8_10LocalShard18query_scroll_batch00Bc_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !2947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2942
  %i.al = add nuw i64 %.sroa.01.0.i.i, 1          ; 2 uses
  %i.am = icmp eq i64 %i.al, %i.l
  br i1 %i.am, label %bb.l, label %bb.d

bb.l:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs5QaNqjAn6vc_5shard5query6scroll26QueryScrollRequestInternalNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB27_10LocalShard12query_scroll0INtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB3F_6future10try_future11into_future10IntoFutureB20_EENCNCNvB24_18query_scroll_batch00NCIB2_B20_B4L_B3y_NvYB20_NtB4Q_12TryFutureExt11into_futureNCINvXs8_B3B_B3y_INtNtNtB8_6traits7collect12FromIteratorB4L_E9from_iterINtB4_3MapIB8o_INtNtNtBa_5slice4iter4IterBV_EB5M_EB6A_EE0E0E0B2b_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !2957
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs5QaNqjAn6vc_5shard5query6scroll26QueryScrollRequestInternalENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB2C_10LocalShard18query_scroll_batch00ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB4V_6future10try_future11into_future10IntoFutureNCNvB2z_12query_scroll0EENCINvB6_8map_foldB6W_B61_B4O_NvYB6W_NtB66_12TryFutureExt11into_futureNCINvXs8_B4R_B4O_INtNtB4f_7collect12FromIteratorB61_E9from_iterIBO_BN_B7O_EE0E0EB2G_.exit

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs5QaNqjAn6vc_5shard5query6scroll26QueryScrollRequestInternalENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB2C_10LocalShard18query_scroll_batch00ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB4V_6future10try_future11into_future10IntoFutureNCNvB2z_12query_scroll0EENCINvB6_8map_foldB6W_B61_B4O_NvYB6W_NtB66_12TryFutureExt11into_futureNCINvXs8_B4R_B4O_INtNtB4f_7collect12FromIteratorB61_E9from_iterIBO_BN_B7O_EE0E0EB2G_.exit: ; preds = %bb.c, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBc_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB27_10collection5queryNtB4m_10Collection31batch_query_shards_concurrently00ENCINvNtCs9XvERIT2X68_9itertools11unique_impl14count_new_keysBX_RB38_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7x_8for_each4callTB6D_uENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8R_7HashMapB6D_uB6I_EINtNtB7B_7collect6ExtendB8A_E6extendBN_E0E0EB27_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBc_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB23_10collection5queryNtB4i_10Collection31batch_query_shards_concurrently00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRB34_TB6t_uEuNCINvNtCs9XvERIT2X68_9itertools11unique_impl14count_new_keysBN_B6t_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0NCINvNvB5y_8for_each4callB6y_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9c_7HashMapB6t_uB7L_EINtNtB5C_7collect6ExtendB6y_E6extendIBO_BN_B6G_EE0E0E0EB23_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = tail call noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapRINtNtCskKLDkoKarTP_4core6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g) ; 0 uses
  %i.i = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.e
  br i1 %i.j, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBc_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB23_10collection5queryNtB4i_10Collection31batch_query_shards_concurrently00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRB34_TB6t_uEuNCINvNtCs9XvERIT2X68_9itertools11unique_impl14count_new_keysBN_B6t_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0NCINvNvB5y_8for_each4callB6y_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9c_7HashMapB6t_uB7L_EINtNtB5C_7collect6ExtendB6y_E6extendIBO_BN_B6G_EE0E0E0EB23_.exit, label %bb.c

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBc_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB23_10collection5queryNtB4i_10Collection31batch_query_shards_concurrently00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRB34_TB6t_uEuNCINvNtCs9XvERIT2X68_9itertools11unique_impl14count_new_keysBN_B6t_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0NCINvNvB5y_8for_each4callB6y_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9c_7HashMapB6t_uB7L_EINtNtB5C_7collect6ExtendB6y_E6extendIBO_BN_B6G_EE0E0E0EB23_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBc_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB27_10collection5queryNtB4m_10Collection31batch_query_shards_concurrently0s_0ENvYINtNtNtCsiHzErX7aQFk_12futures_util6future10try_future7AndThenNCNvMNtB23_8read_opsB21_11query_batch0NCNCNCB4f_s_000NCB7n_0ENtB5K_12TryFutureExt11into_futureENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtB5O_6stream15futures_ordered14FuturesOrderedINtNtB5K_11into_future10IntoFutureB5H_EENCINvXs8_B8U_B8R_INtNtB8i_7collect12FromIteratorB9G_E9from_iterBN_E0EB27_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1584 x i8], align 8              ; 20 uses
  %i.b = alloca [1640 x i8], align 8              ; 23 uses
  %.sroa.44.i.i.i.i = alloca i64, align 8         ; 5 uses
  %.sroa.65.i.i.i.i = alloca i64, align 8         ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.14.i.i.i = alloca [23 x i8], align 1     ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2963)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !2961, !noalias !2965, !nonnull !10, !noundef !10 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2961, !noalias !2965, !noundef !10 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.01.0.copyload.i = load ptr, ptr %i.i, align 8, !alias.scope !2961, !noalias !2965 ; 2 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.42.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !2961, !noalias !2965
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.53.0.copyload.i = load ptr, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !2961, !noalias !2965 ; 2 uses
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.64.0.copyload.i = load ptr, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !2961, !noalias !2965
  %.sroa.75.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.75.0.copyload.i = load ptr, ptr %.sroa.75.0..sroa_idx.i, align 8, !alias.scope !2961, !noalias !2965 ; 2 uses
  %.sroa.86.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.86.0.copyload.i = load ptr, ptr %.sroa.86.0..sroa_idx.i, align 8, !alias.scope !2961, !noalias !2965 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2969)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.j = icmp eq ptr %i.f, %i.h
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !2971
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.53.0.copyload.i, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.75.0.copyload.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.86.0.copyload.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.86.0.copyload.i, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.86.0.copyload.i, i64 16
  %.sroa.14.88..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.14.i.i.i, i64 7
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.76.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.89.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.912.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.1015.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.1118.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.1221.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.1427.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.1530.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.sroa.1633.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %.sroa.1736.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.sroa.1839.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 145
  %.sroa.1941.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %.sroa.20.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %.sroa.22.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1632
  %.sroa.23.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1633
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.sroa.76.64..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.89.64..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.912.64..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.1015.64..sroa_idx16.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.1118.64..sroa_idx19.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.1221.64..sroa_idx22.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.1427.64..sroa_idx28.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.1530.64..sroa_idx31.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.1633.64..sroa_idx34.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.1736.64..sroa_idx37.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.1839.64..sroa_idx40.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 81
  %.sroa.1941.64..sroa_idx42.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.20.64..sroa_idx44.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.22.64..sroa_idx47.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1568
  %.sroa.23.64..sroa_idx49.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1569
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1576
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull readonly align 8 dereferenceable(64) %2, i64 64, i1 false), !alias.scope !2973, !noalias !2974
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBc_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB23_10collection5queryNtB4i_10Collection31batch_query_shards_concurrently0s_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB6k_6future10try_future11into_future10IntoFutureINtB7v_7AndThenNCNvMNtB1Z_8read_opsB1X_11query_batch0NCNCNCB4b_s_000NCB9g_0EEENCINvB6_8map_foldB8l_B7q_B6d_NvYB8l_NtB7v_12TryFutureExt11into_futureNCINvXs8_B6g_B6d_INtNtB5E_7collect12FromIteratorB7q_E9from_iterIBO_BN_Ba4_EE0E0EB23_.exit

bb.d:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBa_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEINtNtNtCsiHzErX7aQFk_12futures_util6future10try_future7AndThenNCNvMNtB1x_8read_opsB1v_11query_batch0NCNCNCNCNvMNtNtB1B_10collection5queryNtB5v_10Collection31batch_query_shards_concurrently0s_000NCB5m_0EINtNtNtB3N_6stream15futures_ordered14FuturesOrderedINtNtB3J_11into_future10IntoFutureB3G_EENCB5o_s_0NCIB2_B3G_B7L_B6W_NvYB3G_NtB3J_12TryFutureExt11into_futureNCINvXs8_B6Z_B6W_INtNtNtB8_6traits7collect12FromIteratorB7L_E9from_iterINtB4_3MapIBaE_INtNtNtBa_5slice4iter4IterBV_EB8p_EB8Q_EE0E0E0B1B_.exit.i.i, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.bn, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBa_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEINtNtNtCsiHzErX7aQFk_12futures_util6future10try_future7AndThenNCNvMNtB1x_8read_opsB1v_11query_batch0NCNCNCNCNvMNtNtB1B_10collection5queryNtB5v_10Collection31batch_query_shards_concurrently0s_000NCB5m_0EINtNtNtB3N_6stream15futures_ordered14FuturesOrderedINtNtB3J_11into_future10IntoFutureB3G_EENCB5o_s_0NCIB2_B3G_B7L_B6W_NvYB3G_NtB3J_12TryFutureExt11into_futureNCINvXs8_B6Z_B6W_INtNtNtB8_6traits7collect12FromIteratorB7L_E9from_iterINtB4_3MapIBaE_INtNtNtBa_5slice4iter4IterBV_EB8p_EB8Q_EE0E0E0B1B_.exit.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.01.0.i.i ; 2 uses
  %.val.i.i = load ptr, ptr %i.x, align 8, !noalias !2975 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i.i = load ptr, ptr %i.y, align 8, !noalias !2975, !align !9, !noundef !10 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !2975
  %.not.i.i.i.i = icmp eq ptr %.val10.i.i, null
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.44.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2981)
  call void @llvm.experimental.noalias.scope.decl(metadata !2984)
  %i.z = load i64, ptr %.val10.i.i, align 8, !range !19, !alias.scope !2984, !noalias !2986, !noundef !10
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 8 ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !2984, !noalias !2986, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 23
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !2984, !noalias !2986, !noundef !10
  %.not.i.i.i.i.i = icmp sgt i8 %i.ae, -1
  %i.af = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !2984, !noalias !2986 ; 5 uses
  %.val21.i.i.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !2984, !noalias !2986 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 -16
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8, !noalias !2990
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i, !prof !265

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsPYQCUnoTxQ_10collection(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val21.i.i.i.i.i) #42
          to label %.noexc.i.i.i unwind label %bb.v, !noalias !2976

.noexc.i.i.i:                                     ; preds = %bb.j
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i: ; preds = %bb.g, %bb.i, %bb.h
  %.sroa.06.0.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %bb.i ], [ inttoptr (i64 16 to ptr), %bb.h ], [ %.val.i.i.i.i.i, %bb.g ]
  %3 = ptrtoint ptr %.sroa.06.0.i.i.i.i.i to i64
  store i64 %3, ptr %.sroa.44.i.i.i.i, align 8, !alias.scope !2981, !noalias !2991
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i, %bb.f
  %.sink.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.65.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i ], [ %.sroa.44.i.i.i.i, %bb.f ]
  %.sroa.58.0.sink.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i ], [ %i.ac, %bb.f ]
  %storemerge.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i ], [ 1, %bb.f ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i, align 8, !alias.scope !2981, !noalias !2991
  %.sroa.44.i.i.i.i.0..sroa.44.i.i.i.i.0..sroa.44.i.i.i.i.0..sroa.44.i.i.i.0..sroa.44.i.i.i.0..sroa.44.i.i.0..sroa.44.i.i.0..sroa.44.i.0..sroa.44.i.0..sroa.44.0..sroa.44.0..sroa.44.0.copyload.i.i.i.i = load i64, ptr %.sroa.44.i.i.i.i, align 8, !noalias !2992
  %.sroa.65.i.i.i.i.0..sroa.65.i.i.i.i.0..sroa.65.i.i.i.i.0..sroa.65.i.i.i.0..sroa.65.i.i.i.0..sroa.65.i.i.0..sroa.65.i.i.0..sroa.65.i.0..sroa.65.i.0..sroa.65.0..sroa.65.0..sroa.65.0.copyload.i.i.i.i = load i64, ptr %.sroa.65.i.i.i.i, align 8, !noalias !2992
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.44.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65.i.i.i.i)
  br label %bb.k

bb.k:                                             ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.d
  %.sroa.6.0.i.i.i.i = phi i64 [ %.sroa.65.i.i.i.i.0..sroa.65.i.i.i.i.0..sroa.65.i.i.i.i.0..sroa.65.i.i.i.0..sroa.65.i.i.i.0..sroa.65.i.i.0..sroa.65.i.i.0..sroa.65.i.0..sroa.65.i.0..sroa.65.0..sroa.65.0..sroa.65.0.copyload.i.i.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.d ] ; 2 uses
  %.sroa.5.0.i.i.i.i = phi i64 [ %.sroa.44.i.i.i.i.0..sroa.44.i.i.i.i.0..sroa.44.i.i.i.i.0..sroa.44.i.i.i.0..sroa.44.i.i.i.0..sroa.44.i.i.0..sroa.44.i.i.0..sroa.44.i.0..sroa.44.i.0..sroa.44.0..sroa.44.0..sroa.44.0.copyload.i.i.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 2, %bb.d ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.01.0.copyload.i, align 8, !noalias !2992, !nonnull !10, !noundef !10
  %i.ak = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !noalias !2992
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %.sroa.01.0.copyload.i, align 8, !noalias !2992, !nonnull !10, !noundef !10 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.an = load ptr, ptr %.val.i.i, align 8, !noalias !2992, !nonnull !10, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0.copyload.i, i64 16, i1 false), !noalias !2992
  %i.ao = load i64, ptr %.sroa.53.0.copyload.i, align 8, !range !19, !noalias !2992, !noundef !10 ; 2 uses
  %i.ap = load i64, ptr %i.o, align 8, !noalias !2992 ; 2 uses
  %i.aq = load i64, ptr %.sroa.64.0.copyload.i, align 8, !range !2543, !noalias !2992, !noundef !10 ; 2 uses
  %i.ar = icmp ne i64 %i.aq, 6
  call void @llvm.assume(i1 %i.ar)
  %i.as = load i64, ptr %.sroa.75.0.copyload.i, align 8, !noalias !2992 ; 2 uses
  %i.at = load i32, ptr %i.p, align 8, !range !2544, !noalias !2992, !noundef !10 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2993)
  %i.au = load ptr, ptr %.sroa.86.0.copyload.i, align 8, !alias.scope !2993, !noalias !2996, !nonnull !10, !noundef !10 ; 3 uses
  %i.av = atomicrmw add ptr %i.au, i64 1 monotonic, align 8, !noalias !2998
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.q, align 8, !alias.scope !2993, !noalias !2996, !nonnull !10, !noundef !10 ; 3 uses
  %i.ay = atomicrmw add ptr %i.ax, i64 1 monotonic, align 8, !noalias !2998
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ba = load i8, ptr %i.r, align 8, !range !315, !alias.scope !2993, !noalias !2996, !noundef !10 ; 2 uses
  %i.bb = load ptr, ptr %i.s, align 8, !alias.scope !2993, !noalias !2996, !nonnull !10, !noundef !10 ; 3 uses
  %i.bc = atomicrmw add ptr %i.bb, i64 1 monotonic, align 8, !noalias !2998
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.q, label %bb.s

bb.p:                                             ; preds = %bb.m
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.o
  %i.be = icmp eq i64 %i.aq, 7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.14.88..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !2976
  %i.bg = zext i1 %i.be to i8                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !2975
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.t, align 8, !noalias !3004
  store i64 %.sroa.5.0.i.i.i.i, ptr %.sroa.76.64..sroa_idx.i.i.i, align 8, !noalias !3004
  store i64 %.sroa.6.0.i.i.i.i, ptr %.sroa.89.64..sroa_idx.i.i.i, align 8, !noalias !3004
  store i64 %i.ao, ptr %.sroa.912.64..sroa_idx.i.i.i, align 8, !noalias !3004
  store i64 %i.ap, ptr %.sroa.1015.64..sroa_idx.i.i.i, align 8, !noalias !3004
  store i64 %i.as, ptr %.sroa.1118.64..sroa_idx.i.i.i, align 8, !noalias !3004
  store i32 %i.at, ptr %.sroa.1221.64..sroa_idx.i.i.i, align 8, !noalias !3004
  store ptr %i.au, ptr %.sroa.1427.64..sroa_idx.i.i.i, align 8, !noalias !3004
  store ptr %i.ax, ptr %.sroa.1530.64..sroa_idx.i.i.i, align 8, !noalias !3004
  store ptr %i.bb, ptr %.sroa.1633.64..sroa_idx.i.i.i, align 8, !noalias !3004
  store i8 %i.ba, ptr %.sroa.1736.64..sroa_idx.i.i.i, align 8, !noalias !3004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.1839.64..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.14.i.i.i, i64 23, i1 false), !noalias !2976
  store ptr %i.bf, ptr %.sroa.1941.64..sroa_idx.i.i.i, align 8, !noalias !3004
  store ptr %i.am, ptr %.sroa.20.64..sroa_idx.i.i.i, align 8, !noalias !3004
  store i8 %i.bg, ptr %.sroa.22.64..sroa_idx.i.i.i, align 8, !noalias !3004
  store i8 0, ptr %.sroa.23.64..sroa_idx.i.i.i, align 1, !noalias !3004
  call void @llvm.experimental.noalias.scope.decl(metadata !3005)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3008
  %i.bh = load i64, ptr %i.u, align 8, !alias.scope !3005, !noalias !3011, !noundef !10 ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.a, align 8, !noalias !3004
  store i64 %.sroa.5.0.i.i.i.i, ptr %.sroa.76.64..sroa_idx7.i.i.i, align 8, !noalias !3004
  store i64 %.sroa.6.0.i.i.i.i, ptr %.sroa.89.64..sroa_idx10.i.i.i, align 8, !noalias !3004
  store i64 %i.ao, ptr %.sroa.912.64..sroa_idx13.i.i.i, align 8, !noalias !3004
  store i64 %i.ap, ptr %.sroa.1015.64..sroa_idx16.i.i.i, align 8, !noalias !3004
  store i64 %i.as, ptr %.sroa.1118.64..sroa_idx19.i.i.i, align 8, !noalias !3004
  store i32 %i.at, ptr %.sroa.1221.64..sroa_idx22.i.i.i, align 8, !noalias !3004
  store ptr %i.au, ptr %.sroa.1427.64..sroa_idx28.i.i.i, align 8, !noalias !3004
  store ptr %i.ax, ptr %.sroa.1530.64..sroa_idx31.i.i.i, align 8, !noalias !3004
  store ptr %i.bb, ptr %.sroa.1633.64..sroa_idx34.i.i.i, align 8, !noalias !3004
  store i8 %i.ba, ptr %.sroa.1736.64..sroa_idx37.i.i.i, align 8, !noalias !3004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.1839.64..sroa_idx40.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.14.i.i.i, i64 23, i1 false), !noalias !2976
  store ptr %i.bf, ptr %.sroa.1941.64..sroa_idx42.i.i.i, align 8, !noalias !3004
  store ptr %i.am, ptr %.sroa.20.64..sroa_idx44.i.i.i, align 8, !noalias !3004
  store i8 %i.bg, ptr %.sroa.22.64..sroa_idx47.i.i.i, align 8, !noalias !3004
  store i8 0, ptr %.sroa.23.64..sroa_idx49.i.i.i, align 1, !noalias !3004
  store i64 %i.bh, ptr %i.v, align 8, !noalias !3008
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.u, align 8, !alias.scope !3005, !noalias !3011
  invoke void @_RNvMs4_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureINtB27_7AndThenNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB3i_15ShardReplicaSet11query_batch0NCNCNCNCNvMNtNtB3m_10collection5queryNtB52_10Collection31batch_query_shards_concurrently0s_000NCB4T_0EEEE4pushB3m_(ptr noundef nonnull align 8 %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1584) %i.a)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBa_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEINtNtNtCsiHzErX7aQFk_12futures_util6future10try_future7AndThenNCNvMNtB1x_8read_opsB1v_11query_batch0NCNCNCNCNvMNtNtB1B_10collection5queryNtB5v_10Collection31batch_query_shards_concurrently0s_000NCB5m_0EINtNtNtB3N_6stream15futures_ordered14FuturesOrderedINtNtB3J_11into_future10IntoFutureB3G_EENCB5o_s_0NCIB2_B3G_B7L_B6W_NvYB3G_NtB3J_12TryFutureExt11into_futureNCINvXs8_B6Z_B6W_INtNtNtB8_6traits7collect12FromIteratorB7L_E9from_iterINtB4_3MapIBaE_INtNtNtBa_5slice4iter4IterBV_EB8p_EB8Q_EE0E0E0B1B_.exit.i.i unwind label %bb.t, !noalias !3011

bb.t:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBI_6future10try_future11into_future10IntoFutureINtB1T_7AndThenNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB34_15ShardReplicaSet11query_batch0NCNCNCNCNvMNtNtB38_10collection5queryNtB4O_10Collection31batch_query_shards_concurrently0s_000NCB4F_0EEEEB38_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b) #39
          to label %.body.i.i.i unwind label %bb.u, !noalias !3011

bb.u:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !3011
  unreachable

.body.i.i.i:                                      ; preds = %bb.v, %bb.t
  %eh.lpad-body54.i.i.i = phi { ptr, i32 } [ %i.bl, %bb.v ], [ %i.bj, %bb.t ]
  resume { ptr, i32 } %eh.lpad-body54.i.i.i

bb.v:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBI_6future10try_future11into_future10IntoFutureINtB1T_7AndThenNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtB34_15ShardReplicaSet11query_batch0NCNCNCNCNvMNtNtB38_10collection5queryNtB4O_10Collection31batch_query_shards_concurrently0s_000NCB4F_0EEEEB38_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #39
          to label %.body.i.i.i unwind label %bb.w, !noalias !2976

bb.w:                                             ; preds = %bb.v
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !2976
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBa_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEINtNtNtCsiHzErX7aQFk_12futures_util6future10try_future7AndThenNCNvMNtB1x_8read_opsB1v_11query_batch0NCNCNCNCNvMNtNtB1B_10collection5queryNtB5v_10Collection31batch_query_shards_concurrently0s_000NCB5m_0EINtNtNtB3N_6stream15futures_ordered14FuturesOrderedINtNtB3J_11into_future10IntoFutureB3G_EENCB5o_s_0NCIB2_B3G_B7L_B6W_NvYB3G_NtB3J_12TryFutureExt11into_futureNCINvXs8_B6Z_B6W_INtNtNtB8_6traits7collect12FromIteratorB7L_E9from_iterINtB4_3MapIBaE_INtNtNtBa_5slice4iter4IterBV_EB8p_EB8Q_EE0E0E0B1B_.exit.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !2975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2976
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i)
  %i.bn = add nuw i64 %.sroa.01.0.i.i, 1          ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %i.n
  br i1 %i.bo, label %bb.x, label %bb.d

bb.x:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBa_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEINtNtNtCsiHzErX7aQFk_12futures_util6future10try_future7AndThenNCNvMNtB1x_8read_opsB1v_11query_batch0NCNCNCNCNvMNtNtB1B_10collection5queryNtB5v_10Collection31batch_query_shards_concurrently0s_000NCB5m_0EINtNtNtB3N_6stream15futures_ordered14FuturesOrderedINtNtB3J_11into_future10IntoFutureB3G_EENCB5o_s_0NCIB2_B3G_B7L_B6W_NvYB3G_NtB3J_12TryFutureExt11into_futureNCINvXs8_B6Z_B6W_INtNtNtB8_6traits7collect12FromIteratorB7L_E9from_iterINtB4_3MapIBaE_INtNtNtBa_5slice4iter4IterBV_EB8p_EB8Q_EE0E0E0B1B_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !3012
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBc_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB23_10collection5queryNtB4i_10Collection31batch_query_shards_concurrently0s_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB6k_6future10try_future11into_future10IntoFutureINtB7v_7AndThenNCNvMNtB1Z_8read_opsB1X_11query_batch0NCNCNCB4b_s_000NCB9g_0EEENCINvB6_8map_foldB8l_B7q_B6d_NvYB8l_NtB7v_12TryFutureExt11into_futureNCINvXs8_B6g_B6d_INtNtB5E_7collect12FromIteratorB7q_E9from_iterIBO_BN_Ba4_EE0E0EB23_.exit

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBc_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB23_10collection5queryNtB4i_10Collection31batch_query_shards_concurrently0s_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB6k_6future10try_future11into_future10IntoFutureINtB7v_7AndThenNCNvMNtB1Z_8read_opsB1X_11query_batch0NCNCNCB4b_s_000NCB9g_0EEENCINvB6_8map_foldB8l_B7q_B6d_NvYB8l_NtB7v_12TryFutureExt11into_futureNCINvXs8_B6g_B6d_INtNtB5E_7collect12FromIteratorB7q_E9from_iterIBO_BN_Ba4_EE0E0EB23_.exit: ; preds = %bb.c, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i32, i8 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENCNvMNtNtNtB1z_6shards11replica_set6updateNtB2D_15ShardReplicaSet31merge_successful_update_results0ENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyNtB1v_12UpdateStatuslNCB2y_s_0E0EB4f_4foldINtNtBc_3cmp11KeyAndValuelB53_ENvYB5J_NtB5M_3Ord3maxEB1z_(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENCNvMNtNtNtB1v_6shards11replica_set6updateNtB2z_15ShardReplicaSet31merge_successful_update_results0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_3cmp11KeyAndValuelNtB1r_12UpdateStatusENCINvB6_8map_foldB57_B4H_B4H_NCINvNvB44_10max_by_key3keyB57_lNCB2u_s_0E0NvYB4H_NtB4K_3Ord3maxE0EB1v_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 6                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 64
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 288230376151711742
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.05.0.i.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ] ; 3 uses
  %.sroa.6.0.i.i = phi i8 [ %3, %.new ], [ %..i.i.i.i.i.i.1, %bb.c ]
  %.sroa.02.0.i.i = phi i32 [ %2, %.new ], [ %.2.i.i.i.i.i.i.1, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.05.0.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 56
  %.val.i.i = load i8, ptr %i.h, align 8, !range !283, !noundef !10 ; 2 uses
  %i.i = zext nneg i8 %.val.i.i to i32            ; 2 uses
  %i.j = icmp sgt i32 %.sroa.02.0.i.i, %i.i
  %..i.i.i.i.i.i = select i1 %i.j, i8 %.sroa.6.0.i.i, i8 %.val.i.i
  %.2.i.i.i.i.i.i = tail call i32 @llvm.smax.i32(i32 range(i32 0, 4) %i.i, i32 %.sroa.02.0.i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.05.0.i.i
  %i.l = getelementptr i8, ptr %i.k, i64 120
  %.val.i.i.1 = load i8, ptr %i.l, align 8, !range !283, !noundef !10 ; 2 uses
end_hunk_1
