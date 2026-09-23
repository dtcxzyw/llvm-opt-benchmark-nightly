Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.012?download=true
inline.NumInlined: 6425
inline.NumDeleted: 3672
begin_hunk_0_@_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB2Y_6future10try_future11into_future10IntoFutureINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB1Z_6result6ResultINtB8_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB6K_6common15operation_error14OperationErrorEEEEQNCINvNtNtB1X_8adapters3map8map_foldBX_B4Z_B2R_NCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB9g_10LocalShard25internal_scroll_by_id_raw0s_0NCIB8q_B4Z_B44_B2R_NvYB4Z_NtB49_12TryFutureExt11into_futureNCINvXs8_B2U_B2R_INtNtB1V_7collect12FromIteratorB44_E9from_iterINtB8s_3MapIBcW_INtNtB8u_5chain5ChainBI_BI_EB97_EBbg_EE0E0E0ECsl8OoimOLbh_6qdrant:bb.a
  %.not.not = icmp eq ptr %i.n, %i.f
  br i1 %.not.not, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %._crit_edge
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBI_6future10try_future11into_future10IntoFutureINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4P_6common15operation_error14OperationErrorEEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(64) %2) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEECsl8OoimOLbh_6qdrant.exit: ; preds = %.critedge, %bb.d
  %i.u = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.v, %.critedge ]
  resume { ptr, i32 } %i.u

.critedge:                                        ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBX_INtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB1Z_6result6ResultINtB8_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB5f_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB6Z_10LocalShard25internal_scroll_by_id_raw0s_0NCIB2V_B3u_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB3u_EuNvYB3u_NtB8W_12TryFutureExt11into_futureNCIB2V_B8R_INtNtB8Y_14try_maybe_done12TryMaybeDoneB8R_EuNcNtBb5_6Future0NCINvNvB1R_8for_each4callBb5_NCINvMsk_B8_IB52_Bb5_E14extend_trustedINtB2X_3MapIBda_IBda_INtNtB2Z_5chain5ChainBI_BI_EB6Q_EBag_EBbO_EE0E0E0E0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not.not14 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !7242, !nonnull !17, !align !18, !noundef !17
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !7242, !nonnull !17, !align !18, !noundef !17
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted15 = load i64, ptr %i.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB3U_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB5E_10LocalShard25internal_scroll_by_id_raw0s_0NCIB2_B1N_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB1N_EuNvYB1N_NtB7A_12TryFutureExt11into_futureNCIB2_B7v_INtNtB7C_14try_maybe_done12TryMaybeDoneB7v_EuNcNtB9I_6Future0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB9I_NCINvMsk_B3m_IB3k_B9I_E14extend_trustedINtB4_3MapIBci_IBci_INtNtB6_5chain5ChainINtNtB3m_9into_iter8IntoIterBU_EBcV_EB5v_EB8U_EBar_EE0E0E0E0E0Csl8OoimOLbh_6qdrant.exit
  %.val713 = phi i64 [ %.promoted15, %.lr.ph ], [ %i.q, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB3U_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB5E_10LocalShard25internal_scroll_by_id_raw0s_0NCIB2_B1N_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB1N_EuNvYB1N_NtB7A_12TryFutureExt11into_futureNCIB2_B7v_INtNtB7C_14try_maybe_done12TryMaybeDoneB7v_EuNcNtB9I_6Future0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB9I_NCINvMsk_B3m_IB3k_B9I_E14extend_trustedINtB4_3MapIBci_IBci_INtNtB6_5chain5ChainINtNtB3m_9into_iter8IntoIterBU_EBcV_EB5v_EB8U_EBar_EE0E0E0E0E0Csl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB3U_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB5E_10LocalShard25internal_scroll_by_id_raw0s_0NCIB2_B1N_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB1N_EuNvYB1N_NtB7A_12TryFutureExt11into_futureNCIB2_B7v_INtNtB7C_14try_maybe_done12TryMaybeDoneB7v_EuNcNtB9I_6Future0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB9I_NCINvMsk_B3m_IB3k_B9I_E14extend_trustedINtB4_3MapIBci_IBci_INtNtB6_5chain5ChainINtNtB3m_9into_iter8IntoIterBU_EBcV_EB5v_EB8U_EBar_EE0E0E0E0E0Csl8OoimOLbh_6qdrant.exit ] ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !range !24, !noundef !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noundef !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7242)
  %i.o = invoke fastcc noundef nonnull ptr @_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB8_10LocalShard25internal_scroll_by_id_raw0s_0Csl8OoimOLbh_6qdrant(ptr nonnull %.val.i, ptr %.val1.i, i64 noundef range(i64 0, 2) %i.k, ptr noundef %i.m) #25
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB3U_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB5E_10LocalShard25internal_scroll_by_id_raw0s_0NCIB2_B1N_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB1N_EuNvYB1N_NtB7A_12TryFutureExt11into_futureNCIB2_B7v_INtNtB7C_14try_maybe_done12TryMaybeDoneB7v_EuNcNtB9I_6Future0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB9I_NCINvMsk_B3m_IB3k_B9I_E14extend_trustedINtB4_3MapIBci_IBci_INtNtB6_5chain5ChainINtNtB3m_9into_iter8IntoIterBU_EBcV_EB5v_EB8U_EBar_EE0E0E0E0E0Csl8OoimOLbh_6qdrant.exit unwind label %bb.f

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB3U_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB5E_10LocalShard25internal_scroll_by_id_raw0s_0NCIB2_B1N_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB1N_EuNvYB1N_NtB7A_12TryFutureExt11into_futureNCIB2_B7v_INtNtB7C_14try_maybe_done12TryMaybeDoneB7v_EuNcNtB9I_6Future0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB9I_NCINvMsk_B3m_IB3k_B9I_E14extend_trustedINtB4_3MapIBci_IBci_INtNtB6_5chain5ChainINtNtB3m_9into_iter8IntoIterBU_EBcV_EB5v_EB8U_EBar_EE0E0E0E0E0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7246)
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.h, i64 %.val713 ; 2 uses
  store i64 -9223372036854775788, ptr %i.p, align 8, !noalias !7247
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !7247
  %i.q = add i64 %.val713, 1                      ; 2 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !7247, !noalias !7248
  %.not.not = icmp eq ptr %i.n, %i.c
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB3U_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB5E_10LocalShard25internal_scroll_by_id_raw0s_0NCIB2_B1N_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB1N_EuNvYB1N_NtB7A_12TryFutureExt11into_futureNCIB2_B7v_INtNtB7C_14try_maybe_done12TryMaybeDoneB7v_EuNcNtB9I_6Future0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB9I_NCINvMsk_B3m_IB3k_B9I_E14extend_trustedINtB4_3MapIBci_IBci_INtNtB6_5chain5ChainINtNtB3m_9into_iter8IntoIterBU_EBcV_EB5v_EB8U_EBar_EE0E0E0E0E0Csl8OoimOLbh_6qdrant.exit, %bb.a
  %i.r = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.r, ptr %i.u, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !align !18, !noundef !17
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.v, align 8, !noundef !17
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.d:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %._crit_edge
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !17, !align !18, !noundef !17
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.y, align 8, !noundef !17
  store i64 %.val7, ptr %.val6, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f, %bb.e
  %.pn10 = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.x, %bb.e ]
  resume { ptr, i32 } %.pn10

bb.f:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val612 = load ptr, ptr %1, align 8, !nonnull !17, !align !18, !noundef !17
  store i64 %.val713, ptr %.val612, align 8
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduQNCINvNtNtB1X_8adapters3map8map_foldBX_INtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB1Z_6result6ResultINtB8_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB5g_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB70_10LocalShard25internal_scroll_by_id_raw0s_0NCIB2W_B3v_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB3v_EuNvYB3v_NtB8X_12TryFutureExt11into_futureNCIB2W_B8S_INtNtB8Z_14try_maybe_done12TryMaybeDoneB8S_EuNcNtBb6_6Future0NCINvNvB1R_8for_each4callBb6_NCINvMsk_B8_IB53_Bb6_E14extend_trustedINtB2Y_3MapIBdb_IBdb_INtNtB30_5chain5ChainBI_BI_EB6R_EBah_EBbP_EE0E0E0E0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !17, !noundef !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = phi ptr [ %i.j, %bb.c ], [ %.promoted, %bb.a ] ; 4 uses
  %.not.not = icmp eq ptr %i.f, %i.d
  br i1 %.not.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEECsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !range !24, !noundef !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noundef !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.e, align 8
  invoke void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBb_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4t_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB6d_10LocalShard25internal_scroll_by_id_raw0s_0NCIBR_B2m_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB2m_EuNvYB2m_NtB89_12TryFutureExt11into_futureNCIBR_B84_INtNtB8b_14try_maybe_done12TryMaybeDoneB84_EuNcNtBah_6Future0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callBah_NCINvMsk_B3V_IB3T_Bah_E14extend_trustedINtBT_3MapIBcR_IBcR_INtNtBV_5chain5ChainINtNtB3V_9into_iter8IntoIterB1t_EBdu_EB64_EB9t_EBb0_EE0E0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.g, ptr noundef %i.i)
          to label %bb.b unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.n, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNCINvNtNtB1X_8adapters3map12map_try_foldBX_INtNtB1Z_6result6ResultB2V_NtNtNtB31_6common15operation_error14OperationErrorEB2V_IB4L_B2V_B2V_ENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB6r_10LocalShard20estimate_cardinality00s_0NCINvXs_NtCs9XvERIT2X68_9itertools20process_results_implINtB85_14ProcessResultsINtB48_3MapBI_B6i_EB5b_EB1R_4foldB2V_NCNvYB8R_NtB2X_15EstimationMerge17merge_independent0E0E0B64_ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 12 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 11 uses
  %i.e = alloca [144 x i8], align 8               ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.h, align 8        ; 2 uses
  %.not85 = icmp eq ptr %.promoted, %i.g
  br i1 %.not85, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !7279, !noalias !7280, !nonnull !17, !align !18, !noundef !17 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ab
  %i.t = phi ptr [ %.promoted, %.lr.ph ], [ %i.x, %bb.ab ] ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !range !24, !noundef !17 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noundef !17 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !7279)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7281
  call void @llvm.experimental.noalias.scope.decl(metadata !7282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7281
  store i64 %i.u, ptr %i.b, align 8, !noalias !7283
  store ptr %i.w, ptr %i.k, align 8, !noalias !7283
  %i.y = trunc nuw i64 %i.u to i1
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 7 uses
  %i.z = load atomic i64, ptr %.sroa.0.0.i.i monotonic, align 8, !noalias !7283 ; 4 uses
  %i.aa = and i64 %i.z, 8
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = icmp ugt i64 %i.z, -17
  %or.cond.i.i.i.i = or i1 %i.ac, %i.ab
  br i1 %or.cond.i.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, !prof !7284

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i: ; preds = %bb.b
  %i.ad = add nuw i64 %i.z, 16
  %i.ae = cmpxchg weak ptr %.sroa.0.0.i.i, i64 %i.z, i64 %i.ad acquire monotonic, align 8, !noalias !7283
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %.noexc.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, !prof !7285

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, %bb.b
  %i.ag = invoke noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %.sroa.0.0.i.i, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %.noexc.i.i unwind label %bb.d, !noalias !7283 ; 0 uses

.noexc.i.i:                                       ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i
  %i.ah = ptrtoint ptr %.sroa.0.0.i.i to i64      ; 3 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.ah)
          to label %.noexc9.i.i unwind label %bb.d, !noalias !7283

.noexc9.i.i:                                      ; preds = %.noexc.i.i
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.ai)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i unwind label %bb.d, !noalias !7283

bb.c:                                             ; preds = %bb.e, %bb.d
  %.pn5.i.i = phi { ptr, i32 } [ %i.aj, %bb.d ], [ %i.ap, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #21
          to label %.body.thread.i unwind label %bb.l, !noalias !7283

bb.d:                                             ; preds = %bb.g, %.noexc11.i.i, %bb.f, %.noexc9.i.i, %.noexc.i.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i: ; preds = %.noexc9.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.al = load ptr, ptr %i.j, align 8, !alias.scope !7282, !noalias !7286, !nonnull !17, !align !18, !noundef !17 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !range !26, !noalias !7283, !noundef !17
  %.not.i.i = icmp eq i64 %i.am, -2
  %.7.i.i = select i1 %.not.i.i, ptr null, ptr %i.al
  %i.an = load ptr, ptr %i.l, align 8, !alias.scope !7282, !noalias !7286, !nonnull !17, !align !18, !noundef !17
  %i.ao = select i1 %i.y, ptr @_RNvXs_NtNtCs5QaNqjAn6vc_5shard13proxy_segment13segment_entryNtB6_12ProxySegmentNtNtNtCs607s0NAIaWN_7segment5entry11entry_point16ReadSegmentEntry20estimate_point_count, ptr @_RNvXNtNtCs607s0NAIaWN_7segment7segment5entryNtB4_7SegmentNtNtNtB6_5entry11entry_point16ReadSegmentEntry20estimate_point_count
  invoke void %i.ao(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.c, ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) %.7.i.i, ptr noundef nonnull align 8 %i.an)
          to label %bb.f unwind label %bb.e, !noalias !7287

bb.e:                                             ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant(ptr nonnull %.sroa.0.0.i.i) #21
          to label %bb.c unwind label %bb.l, !noalias !7283

bb.f:                                             ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ah)
          to label %.noexc11.i.i unwind label %bb.d, !noalias !7283

.noexc11.i.i:                                     ; preds = %bb.f
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ai)
          to label %.noexc12.i.i unwind label %bb.d, !noalias !7283

.noexc12.i.i:                                     ; preds = %.noexc11.i.i
  %i.aq = atomicrmw sub ptr %.sroa.0.0.i.i, i64 16 release, align 8, !noalias !7283
  %i.ar = and i64 %i.aq, -14
  %i.as = icmp eq i64 %i.ar, 18
  br i1 %i.as, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i.i, !prof !42

bb.g:                                             ; preds = %.noexc12.i.i
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %.sroa.0.0.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.d, !noalias !7283

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.g, %.noexc12.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7288)
  %i.at = load i64, ptr %i.b, align 8, !range !24, !alias.scope !7288, !noalias !7283, !noundef !17
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7289)
  call void @llvm.experimental.noalias.scope.decl(metadata !7290)
  %i.av = load ptr, ptr %i.k, align 8, !alias.scope !7291, !noalias !7283, !nonnull !17, !noundef !17
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !7292
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEE9drop_slowCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #23
          to label %bb.m unwind label %.body.thread14.i, !noalias !7281

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7293)
  call void @llvm.experimental.noalias.scope.decl(metadata !7294)
  %i.ay = load ptr, ptr %i.k, align 8, !alias.scope !7295, !noalias !7283, !nonnull !17, !noundef !17
  %i.az = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !7296
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard13proxy_segment12ProxySegmentEE9drop_slowB2h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #23
          to label %bb.m unwind label %.body.thread14.i, !noalias !7281

bb.l:                                             ; preds = %bb.e, %bb.c
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !7283
  unreachable

.body.thread14.i:                                 ; preds = %bb.k, %bb.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !7281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !7281
  call void @llvm.experimental.noalias.scope.decl(metadata !7297)
  %i.bc = load i64, ptr %i.m, align 8, !range !41, !alias.scope !7297, !noalias !7298, !noundef !17
  %.not.not.i.i = icmp eq i64 %i.bc, -1
  br i1 %.not.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val.i.le = load ptr, ptr %i.bd, align 8, !alias.scope !7279, !noalias !7280, !nonnull !17, !noundef !17 ; 3 uses
  %i.be = load ptr, ptr %.val.i.le, align 8, !noalias !7299, !nonnull !17, !align !18, !noundef !17 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !range !41, !alias.scope !7300, !noalias !7299, !noundef !17
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.be)
          to label %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit_crit_edge.i.i unwind label %bb.w, !noalias !7299

._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit_crit_edge.i.i: ; preds = %bb.o
  %.pre.i.i = load ptr, ptr %.val.i.le, align 8, !noalias !7299
  br label %bb.aa

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !7281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !7281
  call void @llvm.experimental.noalias.scope.decl(metadata !7301)
  call void @llvm.experimental.noalias.scope.decl(metadata !7302)
  %4 = load i64, ptr %i.p, align 8, !alias.scope !7301, !noalias !7303, !noundef !17
  %5 = load i64, ptr %i.q, align 8, !alias.scope !7302, !noalias !7304, !noundef !17
  %i.bh = load <2 x i64>, ptr %i.r, align 8, !alias.scope !7301, !noalias !7303
  %i.bi = load <2 x i64>, ptr %i.s, align 8, !alias.scope !7302, !noalias !7304
  %6 = insertelement <4 x i64> <i64 0, i64 poison, i64 poison, i64 poison>, i64 %5, i64 1
  %7 = shufflevector <2 x i64> %i.bi, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %8 = shufflevector <4 x i64> %6, <4 x i64> %7, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %9 = insertelement <4 x i64> <i64 0, i64 poison, i64 poison, i64 poison>, i64 %4, i64 1
  %10 = shufflevector <2 x i64> %i.bh, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %11 = shufflevector <4 x i64> %9, <4 x i64> %10, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %12 = add <4 x i64> %8, %11
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.q, !noalias !7304

bb.q:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %.body.i.i.i unwind label %bb.r, !noalias !7304

bb.r:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !7304
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.s, !noalias !7304

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.s, %bb.q
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bl, %bb.s ], [ %i.bj, %bb.q ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #21
          to label %.body.thread11.i unwind label %bb.v, !noalias !7305

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.ab unwind label %bb.t, !noalias !7305

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %.body.thread11.i unwind label %bb.u, !noalias !7305

bb.u:                                             ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !7305
  unreachable

bb.v:                                             ; preds = %.body.i.i.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !7305
  unreachable

bb.w:                                             ; preds = %bb.o
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %.val.i.le, align 8, !noalias !7299, !nonnull !17, !align !18, !noundef !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bq, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !7281
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #21
          to label %.body.thread11.i unwind label %bb.x, !noalias !7306

bb.x:                                             ; preds = %bb.w
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !7306
  unreachable

.body.thread11.i:                                 ; preds = %.body.thread.i, %bb.w, %bb.t, %.body.i.i.i
  %eh.lpad-body9.i = phi { ptr, i32 } [ %eh.lpad-body10.i, %.body.thread.i ], [ %i.bm, %bb.t ], [ %i.bp, %bb.w ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %eh.lpad-body9.i

.body.thread.i:                                   ; preds = %.body.thread14.i, %bb.c
  %eh.lpad-body10.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread14.i ], [ %.pn5.i.i, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #21
          to label %.body.thread11.i unwind label %bb.y, !noalias !7281

bb.y:                                             ; preds = %.body.thread.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !7281
  unreachable

._crit_edge:                                      ; preds = %bb.ab, %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %._crit_edge
  %storemerge = phi i64 [ 1, %bb.aa ], [ 0, %._crit_edge ]
  store i64 %storemerge, ptr %0, align 8, !noalias !17
  ret void

bb.aa:                                            ; preds = %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit_crit_edge.i.i, %bb.n
  %i.bu = phi ptr [ %.pre.i.i, %._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit_crit_edge.i.i ], [ %i.be, %bb.n ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bu, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !7281
  %.sroa.4.8.copyload = load i64, ptr %i.d, align 8, !noalias !7307
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.8.8.copyload = load ptr, ptr %.sroa.8.8..sroa_idx, align 8, !noalias !7307
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7281
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load <2 x i64>, ptr %.sroa.9.8..sroa_idx, align 8, !noalias !7307
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load <2 x i64>, ptr %.sroa.11.8..sroa_idx, align 8, !noalias !7307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7281
  store i64 %.sroa.4.8.copyload, ptr %i.bv, align 8, !alias.scope !7308
  store ptr %.sroa.8.8.copyload, ptr %.sroa.434.0..sroa_idx, align 8, !alias.scope !7308
  store <2 x i64> %i.bw, ptr %.sroa.535.0..sroa_idx, align 8, !alias.scope !7308
  store <2 x i64> %i.bx, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !7308
  br label %bb.z

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationECsl8OoimOLbh_6qdrant.exit.i.i.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs607s0NAIaWN_7segment5index11field_index16PrimaryConditionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a), !noalias !7281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7281
  store i64 0, ptr %2, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx, align 8
  store <4 x i64> %12, ptr %.sroa.3.0..sroa_idx, align 8
  %.not = icmp eq ptr %i.x, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs5QaNqjAn6vc_5shard8grouping5GroupENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldBX_NtNtNtCsPYQCUnoTxQ_10collection10operations5types10PointGroupuNvYB3e_INtNtB1J_7convert4FromBX_E4fromNCINvNvB1B_8for_each4callB3e_NCINvMsk_B8_INtB8_3VecB3e_E14extend_trustedINtB2H_3MapBI_B4e_EE0E0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [240 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not.not14 = icmp eq ptr %.promoted, %i.e
  br i1 %.not.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted15 = load i64, ptr %i.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.val713 = phi i64 [ %.promoted15, %.lr.ph ], [ %i.r, %bb.d ] ; 3 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  store ptr %i.k, ptr %i.f, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7319)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7318
  invoke void @_RNvXNtNtCsPYQCUnoTxQ_10collection8grouping5typesNtNtNtB6_10operations5types10PointGroupINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs5QaNqjAn6vc_5shard8grouping5GroupE4from(ptr noalias nofree noundef nonnull sret([240 x i8]) align 8 captures(none) dereferenceable(240) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.l = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.n, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.o, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard8grouping5GroupENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !align !18, !noundef !17
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.p, align 8, !noundef !17
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7318
  call void @llvm.experimental.noalias.scope.decl(metadata !7320)
  call void @llvm.experimental.noalias.scope.decl(metadata !7321)
  %i.q = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %.val713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(240) %i.b, i64 240, i1 false), !noalias !7322
  %i.r = add i64 %.val713, 1                      ; 2 uses
  store i64 %i.r, ptr %i.i, align 8, !alias.scope !7323, !noalias !7324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7318
  %.not.not = icmp eq ptr %i.k, %i.e
  br i1 %.not.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !17, !align !18, !noundef !17
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.u, align 8, !noundef !17
  store i64 %.val7, ptr %.val6, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard8grouping5GroupEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard8grouping5GroupEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.g, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.t, %bb.f ]
  resume { ptr, i32 } %.pn10

bb.g:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.val612 = load ptr, ptr %1, align 8, !nonnull !17, !align !18, !noundef !17
  store i64 %.val713, ptr %.val612, align 8
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5QaNqjAn6vc_5shard8grouping5GroupENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard8grouping5GroupEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtBZ_15ExtendedPointIdBX_ENCINvNtNtB1N_8adapters3map8map_foldBX_BX_B2H_NCNCINvNtNtB11_6common12score_fusion12score_fusionINtB8_3VecIB5l_BX_EEEs_00QNCB4A_s0_0E0ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %2, ptr noalias nofree noundef nonnull %3, float noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [192 x i8], align 8         ; 8 uses
  %i.a = alloca [272 x i8], align 8               ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store float %4, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.h, align 8        ; 2 uses
  %.not.not6 = icmp eq ptr %.promoted, %i.g
  br i1 %.not.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.168..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 168
  %.sroa.0.96..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 96
  %.sroa.0.40..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 40
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.c ] ; 8 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 208 ; 3 uses
  store ptr %i.k, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !7330)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7331
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.val.i = load float, ptr %i.e, align 8, !alias.scope !7330, !noalias !7332, !noundef !17
  %i.l = fmul float %.sroa.5.0.copyload, %.val.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.168..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.96..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.40..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.i, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.0.i, i64 192, i1 false), !noalias !7331
  store i64 %.sroa.4.0.copyload, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !7331
  store float %i.l, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !7331
  invoke void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtCs607s0NAIaWN_7segment6common12score_fusion12score_fusionINtNtCsexYYUdYSQU6_5alloc3vec3VecIB1T_NtNtBX_5types11ScoredPointEEEs0_0INtB7_5FnMutTINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtB2w_15ExtendedPointIdB2u_EB2u_EE8call_mutCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %i.i)
          to label %bb.c unwind label %.critedge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.q = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.s, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %i.t, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECsl8OoimOLbh_6qdrant.exit unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECsl8OoimOLbh_6qdrant.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  ret void

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.not = icmp eq ptr %i.k, %i.g
  br i1 %.not.not, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %._crit_edge
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtBR_11ScoredPointEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECsl8OoimOLbh_6qdrant.exit: ; preds = %.critedge, %bb.d
  %i.w = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.x, %.critedge ]
  resume { ptr, i32 } %i.w

.critedge:                                        ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e
}

end_hunk_0
