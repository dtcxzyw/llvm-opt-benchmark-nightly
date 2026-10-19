Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/shard-e9748184afb3508d.shard.440a2ef7731995d0-cgu.005?download=true
inline.NumInlined: 1472
inline.NumDeleted: 852
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterRNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops23PointStructRawPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2g_8adapters3map8map_foldBX_TNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdBX_EuNCINvNtNtNtB14_6update6points6upsert18upsert_points_implBY_INtB8_3VecBX_EE0NCINvNvB2a_8for_each4callB3N_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6w_7HashMapB3O_BX_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB2e_7collect6ExtendB3N_E6extendINtB3g_3MapBI_B4G_EE0E0E0EB14_:bb.a
  store ptr %.val4, ptr %i.r, align 8, !noalias !1168
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops23PointStructRawPersistedENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterRNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops23PointStructRawPersistedEEB1w_.exit unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterRNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops23PointStructRawPersistedEEB1w_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1168
  resume { ptr, i32 } %i.p

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTINtNtCskKLDkoKarTP_4core6option6OptionINtNtBa_4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtB13_6marker4SendNtB37_4SyncEL_EEINtB8_3VecjEEENtNtNtNtB13_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropTB1A_B3F_EENCINvNtNtB3Z_8adapters7inspect16inspect_try_foldBX_B4I_INtNtB13_6result6ResultB4I_zENCNvB1U_18plan_optimizations0NCINvNtB5A_10filter_map19filter_map_try_foldBX_B5i_B4I_B6m_NCB6R_s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB5i_E0E0E0B6m_EB1Y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.not15 = icmp eq ptr %i.f, %i.e
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect16inspect_try_foldTINtNtBa_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtBa_6marker4SendNtB3i_4SyncEL_EEINtNtB1z_3vec3VecjEEINtNtB3S_13in_place_drop11InPlaceDropTB1u_B3P_EEINtNtBa_6result6ResultB49_zENCNvB25_18plan_optimizations0NCINvNtB6_10filter_map19filter_map_try_foldB17_B4K_B49_B4V_NCB5p_s_0NCINvNtB3S_16in_place_collect24write_in_place_with_dropB4K_E0E0E0B29_.exit
  %i.h = phi ptr [ %i.e, %.lr.ph ], [ %i.q, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect16inspect_try_foldTINtNtBa_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtBa_6marker4SendNtB3i_4SyncEL_EEINtNtB1z_3vec3VecjEEINtNtB3S_13in_place_drop11InPlaceDropTB1u_B3P_EEINtNtBa_6result6ResultB49_zENCNvB25_18plan_optimizations0NCINvNtB6_10filter_map19filter_map_try_foldB17_B4K_B49_B4V_NCB5p_s_0NCINvNtB3S_16in_place_collect24write_in_place_with_dropB4K_E0E0E0B29_.exit ] ; 2 uses
  %i.i = phi ptr [ %i.f, %.lr.ph ], [ %i.p, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect16inspect_try_foldTINtNtBa_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtBa_6marker4SendNtB3i_4SyncEL_EEINtNtB1z_3vec3VecjEEINtNtB3S_13in_place_drop11InPlaceDropTB1u_B3P_EEINtNtBa_6result6ResultB49_zENCNvB25_18plan_optimizations0NCINvNtB6_10filter_map19filter_map_try_foldB17_B4K_B49_B4V_NCB5p_s_0NCINvNtB3S_16in_place_collect24write_in_place_with_dropB4K_E0E0E0B29_.exit ] ; 5 uses
  %.sroa.4.016 = phi ptr [ %2, %.lr.ph ], [ %.pn16.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect16inspect_try_foldTINtNtBa_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtBa_6marker4SendNtB3i_4SyncEL_EEINtNtB1z_3vec3VecjEEINtNtB3S_13in_place_drop11InPlaceDropTB1u_B3P_EEINtNtBa_6result6ResultB49_zENCNvB25_18plan_optimizations0NCINvNtB6_10filter_map19filter_map_try_foldB17_B4K_B49_B4V_NCB5p_s_0NCINvNtB3S_16in_place_collect24write_in_place_with_dropB4K_E0E0E0B29_.exit ] ; 8 uses
  %.sroa.010.0.copyload = load ptr, ptr %i.i, align 8 ; 2 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.411.0.copyload = load ptr, ptr %.sroa.411.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612.0..sroa_idx, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  store ptr %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1176
  store ptr %1, ptr %i.b, align 8, !noalias !1177
  store ptr %.sroa.4.016, ptr %i.g, align 8, !noalias !1177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1178
  store i64 %.sroa.5.0.copyload, ptr %i.a, align 8, !noalias !1179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.16..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  %.not.i.i.i = icmp eq ptr %.sroa.010.0.copyload, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs5QaNqjAn6vc_5shard.exit.i.i.i unwind label %bb.d, !noalias !1178

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i unwind label %bb.e, !noalias !1178

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !1178
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs5QaNqjAn6vc_5shard.exit.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread.i.i unwind label %bb.f, !noalias !1177

.thread.i.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs5QaNqjAn6vc_5shard.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1178
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect16inspect_try_foldTINtNtBa_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtBa_6marker4SendNtB3i_4SyncEL_EEINtNtB1z_3vec3VecjEEINtNtB3S_13in_place_drop11InPlaceDropTB1u_B3P_EEINtNtBa_6result6ResultB49_zENCNvB25_18plan_optimizations0NCINvNtB6_10filter_map19filter_map_try_foldB17_B4K_B49_B4V_NCB5p_s_0NCINvNtB3S_16in_place_collect24write_in_place_with_dropB4K_E0E0E0B29_.exit

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs5QaNqjAn6vc_5shard.exit.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.g:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.411.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1178
  %.not.i.i = icmp eq i64 %.sroa.5.0.copyload, -1
  br i1 %.not.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect16inspect_try_foldTINtNtBa_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtBa_6marker4SendNtB3i_4SyncEL_EEINtNtB1z_3vec3VecjEEINtNtB3S_13in_place_drop11InPlaceDropTB1u_B3P_EEINtNtBa_6result6ResultB49_zENCNvB25_18plan_optimizations0NCINvNtB6_10filter_map19filter_map_try_foldB17_B4K_B49_B4V_NCB5p_s_0NCINvNtB3S_16in_place_collect24write_in_place_with_dropB4K_E0E0E0B29_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.811.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.811.16..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  store ptr %.sroa.010.0.copyload, ptr %.sroa.4.016, align 8, !noalias !1177
  %.sroa.69.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016, i64 8
  store ptr %.sroa.411.0.copyload, ptr %.sroa.69.16..sroa_idx.i.i, align 8, !noalias !1177
  %.sroa.710.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.710.16..sroa_idx.i.i, align 8, !noalias !1177
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.4.016, i64 40
  %.pre = load ptr, ptr %i.c, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect16inspect_try_foldTINtNtBa_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtBa_6marker4SendNtB3i_4SyncEL_EEINtNtB1z_3vec3VecjEEINtNtB3S_13in_place_drop11InPlaceDropTB1u_B3P_EEINtNtBa_6result6ResultB49_zENCNvB25_18plan_optimizations0NCINvNtB6_10filter_map19filter_map_try_foldB17_B4K_B49_B4V_NCB5p_s_0NCINvNtB3S_16in_place_collect24write_in_place_with_dropB4K_E0E0E0B29_.exit

.body.i.i:                                        ; preds = %bb.f, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.k, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropTINtNtBI_4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtB4_6marker4SendNtB36_4SyncEL_EINtBG_3VecjEEEEB1X_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #19
          to label %.critedge.i unwind label %bb.i, !noalias !1177

bb.i:                                             ; preds = %.body.i.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !1177
  unreachable

.critedge.i:                                      ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect16inspect_try_foldTINtNtBa_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtBa_6marker4SendNtB3i_4SyncEL_EEINtNtB1z_3vec3VecjEEINtNtB3S_13in_place_drop11InPlaceDropTB1u_B3P_EEINtNtBa_6result6ResultB49_zENCNvB25_18plan_optimizations0NCINvNtB6_10filter_map19filter_map_try_foldB17_B4K_B49_B4V_NCB5p_s_0NCINvNtB3S_16in_place_collect24write_in_place_with_dropB4K_E0E0E0B29_.exit: ; preds = %.thread.i.i, %bb.g, %bb.h
  %i.p = phi ptr [ %.pre17, %bb.h ], [ %i.j, %.thread.i.i ], [ %i.j, %bb.g ] ; 2 uses
  %i.q = phi ptr [ %.pre, %bb.h ], [ %i.h, %.thread.i.i ], [ %i.h, %bb.g ] ; 2 uses
  %.pn16.i.i = phi ptr [ %i.n, %bb.h ], [ %.sroa.4.016, %.thread.i.i ], [ %.sroa.4.016, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1176
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %.not = icmp eq ptr %i.p, %i.q
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect16inspect_try_foldTINtNtBa_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtBa_6marker4SendNtB3i_4SyncEL_EEINtNtB1z_3vec3VecjEEINtNtB3S_13in_place_drop11InPlaceDropTB1u_B3P_EEINtNtBa_6result6ResultB49_zENCNvB25_18plan_optimizations0NCINvNtB6_10filter_map19filter_map_try_foldB17_B4K_B49_B4V_NCB5p_s_0NCINvNtB3S_16in_place_collect24write_in_place_with_dropB4K_E0E0E0B29_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %.pn16.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7inspect16inspect_try_foldTINtNtBa_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtBa_6marker4SendNtB3i_4SyncEL_EEINtNtB1z_3vec3VecjEEINtNtB3S_13in_place_drop11InPlaceDropTB1u_B3P_EEINtNtBa_6result6ResultB49_zENCNvB25_18plan_optimizations0NCINvNtB6_10filter_map19filter_map_try_foldB17_B4K_B49_B4V_NCB5p_s_0NCINvNtB3S_16in_place_collect24write_in_place_with_dropB4K_E0E0E0B29_.exit ]
  %i.r = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.s = insertvalue { ptr, ptr } %i.r, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldjNtNtCs607s0NAIaWN_7segment5types11ScoredPointuNCNvNtNtCs5QaNqjAn6vc_5shard5query3mmr26maximal_marginal_relevances1_0NCINvNvBZ_8for_each4callB2A_NCINvMsk_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3k_EE0E0E0EB3s_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.4.i.i.i = alloca i64, align 8            ; 5 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.86.i = alloca [56 x i8], align 8         ; 4 uses
  %.sroa.97.i = alloca [72 x i8], align 8         ; 4 uses
  %.sroa.108.i = alloca [24 x i8], align 8        ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.i, align 8        ; 2 uses
  %.not.not34 = icmp eq ptr %.promoted, %i.h
  br i1 %.not.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !1199, !nonnull !9, !align !10, !noundef !9 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted35 = load i64, ptr %i.p, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCs607s0NAIaWN_7segment5types11ScoredPointuNCNvNtNtCs5QaNqjAn6vc_5shard5query3mmr26maximal_marginal_relevances1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3S_3VecBV_E14extend_trustedINtB4_3MapINtNtB3S_9into_iter8IntoIterjEB1F_EE0E0E0B1N_.exit
  %.val719 = phi i64 [ %.promoted35, %.lr.ph ], [ %i.ba, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCs607s0NAIaWN_7segment5types11ScoredPointuNCNvNtNtCs5QaNqjAn6vc_5shard5query3mmr26maximal_marginal_relevances1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3S_3VecBV_E14extend_trustedINtB4_3MapINtNtB3S_9into_iter8IntoIterjEB1F_EE0E0E0B1N_.exit ] ; 3 uses
  %i.q = phi ptr [ %.promoted, %.lr.ph ], [ %i.s, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCs607s0NAIaWN_7segment5types11ScoredPointuNCNvNtNtCs5QaNqjAn6vc_5shard5query3mmr26maximal_marginal_relevances1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3S_3VecBV_E14extend_trustedINtB4_3MapINtNtB3S_9into_iter8IntoIterjEB1F_EE0E0E0B1N_.exit ] ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !9 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.86.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.97.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.108.i)
  %i.t = load i64, ptr %i.k, align 8, !noalias !1200, !noundef !9 ; 2 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.l, align 8, !noalias !1200, !nonnull !9, !noundef !9
  %i.w = getelementptr inbounds nuw [208 x i8], ptr %i.v, i64 %i.r ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !1202
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1201, !noalias !1200, !noundef !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.ab = load float, ptr %i.aa, align 8, !alias.scope !1201, !noalias !1200, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1203
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 96 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !11, !alias.scope !1201, !noalias !1200, !noundef !9
  %.not.i.i.i = icmp eq i64 %i.ad, -1
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXNtCshqfBqtY9aGF_8indexmap3mapINtB2_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac)
          to label %.noexc unwind label %.thread21.loopexit.split-lp

bb.e:                                             ; preds = %bb.c
  store i64 -1, ptr %i.d, align 8, !noalias !1203
  br label %.noexc

.noexc:                                           ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1203
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !range !16, !alias.scope !1201, !noalias !1200, !noundef !9 ; 3 uses
  %.not10.i.i.i = icmp eq i64 %i.af, -1
  br i1 %.not10.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1203
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 3 uses
  switch i64 %i.af, label %default.unreachable [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %_RNvXs1b_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB6_20VectorStructInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.m, !noalias !1202

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %.noexc14.i.i.i unwind label %bb.m, !noalias !1202

.noexc14.i.i.i:                                   ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !1206, !noalias !1200, !noundef !9
  store i64 %i.ai, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1204, !noalias !1203
  br label %_RNvXs1b_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB6_20VectorStructInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.i:                                             ; preds = %bb.f
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag)
          to label %_RNvXs1b_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB6_20VectorStructInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.m, !noalias !1202

bb.j:                                             ; preds = %.noexc
  store i64 -1, ptr %i.c, align 8, !noalias !1203
  br label %bb.k

bb.k:                                             ; preds = %_RNvXs1b_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB6_20VectorStructInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %bb.j
  %i.aj = load i64, ptr %i.w, align 8, !range !22, !alias.scope !1201, !noalias !1200, !noundef !9 ; 2 uses
  %.not11.i.i.i = icmp eq i64 %i.aj, 2
  br i1 %.not11.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCs607s0NAIaWN_7segment5types11ScoredPointuNCNvNtNtCs5QaNqjAn6vc_5shard5query3mmr26maximal_marginal_relevances1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3S_3VecBV_E14extend_trustedINtB4_3MapINtNtB3S_9into_iter8IntoIterjEB1F_EE0E0E0B1N_.exit, label %bb.n

bb.l:                                             ; preds = %bb.t, %bb.m
  %.pn.i.i.i = phi { ptr, i32 } [ %i.av, %bb.t ], [ %i.ak, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(72) %i.d) #19
          to label %.thread16 unwind label %bb.v, !noalias !1202

bb.m:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_RNvXs1b_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB6_20VectorStructInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.i, %.noexc14.i.i.i, %bb.g
  store i64 %i.af, ptr %i.b, align 8, !alias.scope !1204, !noalias !1203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1203
  br label %bb.k

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %i.al = trunc nuw i64 %i.aj to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !1209, !noalias !1200, !noundef !9
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 23
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !1209, !noalias !1200, !noundef !9
  %.not.i.i.i.i = icmp sgt i8 %i.ap, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !1209, !noalias !1200 ; 5 uses
  %.val21.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !1209, !noalias !1200 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.q, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8, !noalias !1210
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.s, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i, !prof !18

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECs5QaNqjAn6vc_5shard(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val21.i.i.i.i) #22
          to label %.noexc16.i.i.i unwind label %bb.t, !noalias !1202

.noexc16.i.i.i:                                   ; preds = %bb.s
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i: ; preds = %bb.p, %bb.r, %bb.q
  %.sroa.06.0.i.i.i.i = phi ptr [ %.val.i.i.i.i, %bb.r ], [ inttoptr (i64 16 to ptr), %bb.q ], [ %.val.i.i.i.i, %bb.p ]
  %i.au = ptrtoint ptr %.sroa.06.0.i.i.i.i to i64
  store i64 %i.au, ptr %.sroa.4.i.i.i, align 8, !alias.scope !1207, !noalias !1203
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types7vectors20VectorStructInternalEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #19
          to label %bb.l unwind label %bb.v, !noalias !1202

bb.u:                                             ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i, %bb.o
  %.sink.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i ], [ %.sroa.4.i.i.i, %bb.o ]
  %.sroa.58.0.sink.i.i.i.i = phi i64 [ %.val21.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i ], [ %i.an, %bb.o ]
  %storemerge.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs5QaNqjAn6vc_5shard.exit.i.i.i.i ], [ 1, %bb.o ]
  store i64 %.sroa.58.0.sink.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i, align 8, !alias.scope !1207, !noalias !1203
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i = load i64, ptr %.sroa.4.i.i.i, align 8, !noalias !1203
  %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i.i = load i64, ptr %.sroa.7.i.i.i, align 8, !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCs607s0NAIaWN_7segment5types11ScoredPointuNCNvNtNtCs5QaNqjAn6vc_5shard5query3mmr26maximal_marginal_relevances1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3S_3VecBV_E14extend_trustedINtB4_3MapINtNtB3S_9into_iter8IntoIterjEB1F_EE0E0E0B1N_.exit

bb.v:                                             ; preds = %bb.t, %bb.l
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !1202
  unreachable

bb.w:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23
          to label %.noexc10 unwind label %.thread21.loopexit.split-lp

.noexc10:                                         ; preds = %bb.w
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCs607s0NAIaWN_7segment5types11ScoredPointuNCNvNtNtCs5QaNqjAn6vc_5shard5query3mmr26maximal_marginal_relevances1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3S_3VecBV_E14extend_trustedINtB4_3MapINtNtB3S_9into_iter8IntoIterjEB1F_EE0E0E0B1N_.exit: ; preds = %bb.k, %bb.u
  %.sroa.5.sroa.4.0.i.i.i = phi i64 [ undef, %bb.k ], [ %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i.i, %bb.u ]
  %.sroa.5.sroa.0.0.i.i.i = phi i64 [ undef, %bb.k ], [ %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i, %bb.u ]
  %.sroa.0.0.i.i.i = phi i64 [ 2, %bb.k ], [ %storemerge.i.i.i.i, %bb.u ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !range !22, !alias.scope !1201, !noalias !1200, !noundef !9 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.ay, 2
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1201, !noalias !1200
  %.sroa.55.0.i.i.i = select i1 %.not13.i.i.i, i64 undef, i64 %.sroa.4.0.copyload.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.108.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.97.i, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !1199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.86.i, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !1199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  %i.az = getelementptr inbounds nuw [208 x i8], ptr %i.o, i64 %.val719 ; 10 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.az, align 8, !noalias !1213
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1213
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.sroa.5.sroa.4.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1213
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %i.ay, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !1213
  %.sroa.75.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 %.sroa.55.0.i.i.i, ptr %.sroa.75.0..sroa_idx.i, align 8, !noalias !1213
  %.sroa.86.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.86.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.86.i, i64 56, i1 false), !noalias !1213
  %.sroa.97.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.97.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.97.i, i64 72, i1 false), !noalias !1213
  %.sroa.108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.108.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.108.i, i64 24, i1 false), !noalias !1213
  %.sroa.119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 192
  store i64 %i.z, ptr %.sroa.119.0..sroa_idx.i, align 8, !noalias !1213
  %.sroa.1210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 200
  store float %i.ab, ptr %.sroa.1210.0..sroa_idx.i, align 8, !noalias !1213
  %i.ba = add i64 %.val719, 1                     ; 2 uses
  store i64 %i.ba, ptr %i.p, align 8, !alias.scope !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.86.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.97.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.108.i)
  %.not.not = icmp eq ptr %i.s, %i.h
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjNtNtCs607s0NAIaWN_7segment5types11ScoredPointuNCNvNtNtCs5QaNqjAn6vc_5shard5query3mmr26maximal_marginal_relevances1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3S_3VecBV_E14extend_trustedINtB4_3MapINtNtB3S_9into_iter8IntoIterjEB1F_EE0E0E0B1N_.exit, %bb.a
  %i.bb = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.bd, ptr %i.f, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bb, ptr %i.be, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val = load ptr, ptr %1, align 8, !nonnull !9, !align !10, !noundef !9
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.bf, align 8, !noundef !9
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.y:                                             ; preds = %.thread16
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

.thread21.loopexit.split-lp:                      ; preds = %bb.d, %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread16

bb.z:                                             ; preds = %._crit_edge
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !9, !align !10, !noundef !9
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.bh, align 8, !noundef !9
  store i64 %.val7, ptr %.val6, align 8
  br label %.thread

.thread:                                          ; preds = %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEECs5QaNqjAn6vc_5shard.exit
  %.pn15 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.z ], [ %eh.lpad-body20, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEECs5QaNqjAn6vc_5shard.exit ]
  resume { ptr, i32 } %.pn15

.thread16:                                        ; preds = %.thread21.loopexit.split-lp, %bb.l
  %eh.lpad-body20 = phi { ptr, i32 } [ %.pn.i.i.i, %bb.l ], [ %lpad.loopexit.split-lp, %.thread21.loopexit.split-lp ]
  %.val623 = load ptr, ptr %1, align 8, !nonnull !9, !align !10, !noundef !9
  store i64 %.val719, ptr %.val623, align 8
  %.val8 = load ptr, ptr %0, align 8, !alias.scope !28, !nonnull !9, !noundef !9
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.bi, align 8, !alias.scope !28, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1214
  store i64 %.val9, ptr %i.a, align 8, !noalias !1214
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val8, ptr %i.bj, align 8, !noalias !1214
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEECs5QaNqjAn6vc_5shard.exit unwind label %bb.y

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEECs5QaNqjAn6vc_5shard.exit: ; preds = %.thread16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1214
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4calljNCINvMsk_B8_INtB8_3VecjE14extend_trustedINtNtNtB15_8adapters5chain5ChainBI_BI_EE0E0ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 6 uses
  %.promoted16 = ptrtoaddr ptr %.promoted to i64  ; 2 uses
  %.not.not10 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not10, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = ptrtoaddr ptr %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1221, !noundef !9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted11 = load i64, ptr %i.h, align 8, !alias.scope !1221 ; 5 uses
  %i.i = add i64 %i.e, -8
  %i.j = sub i64 %i.i, %.promoted16               ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 104
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.m = ptrtoaddr ptr %i.g to i64
  %i.n = shl i64 %.promoted11, 3
  %i.o = add i64 %i.n, %i.m
  %i.p = sub i64 %.promoted16, %i.o
  %diff.check = icmp ugt i64 %i.p, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 4611686018427387900      ; 4 uses
  %i.q = add i64 %.promoted11, %n.vec             ; 2 uses
  %i.r = shl i64 %n.vec, 3
  %i.s = getelementptr i8, ptr %.promoted, i64 %i.r
  %i.t = getelementptr [8 x i8], ptr %i.g, i64 %.promoted11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load17 = load <2 x i64>, ptr %i.v, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %wide.load, ptr %i.w, align 8, !noalias !1221
  store <2 x i64> %wide.load17, ptr %i.x, align 8, !noalias !1221
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted11, %vector.memcheck ], [ %.promoted11, %.lr.ph ], [ %i.q, %middle.block ]
  %.ph19 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.s, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.z = phi i64 [ %i.ae, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aa = phi ptr [ %i.ac, %scalar.ph ], [ %.ph19, %scalar.ph.preheader ] ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.z
  store i64 %i.ab, ptr %i.ad, align 8, !noalias !1221
  %i.ae = add i64 %i.z, 1                         ; 2 uses
  %.not.not = icmp eq ptr %i.ac, %i.c
  br i1 %.not.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1220

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.q, %middle.block ], [ %i.ae, %scalar.ph ]
  store i64 %.lcssa, ptr %i.h, align 8, !alias.scope !1221
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.af = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ah, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.af, ptr %i.ai, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %.val8 = load ptr, ptr %1, align 8, !nonnull !9, !align !10, !noundef !9
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load i64, ptr %i.ak, align 8, !noundef !9
  store i64 %.val9, ptr %.val8, align 8
  resume { ptr, i32 } %i.aj

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val6 = load ptr, ptr %1, align 8, !nonnull !9, !align !10, !noundef !9
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.al, align 8, !noundef !9
  store i64 %.val7, ptr %.val6, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB15_8adapters9enumerateINtB2a_9EnumeratepEBZ_4fold9enumeratejuNCINvNtB2c_3map8map_foldTjjEB3C_uNCINvNtCslmvYCXbQjWR_6common10sort_utils16sort_permutationjINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntryEL_ENCNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB7H_13SegmentHolder9flush_alls0_0E0NCINvNvBZ_8for_each4callB3C_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB9C_7HashMapjjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB13_7collect6ExtendB3C_E6extendINtB3j_3MapIB2C_BI_EB3L_EE0E0E0E0EB7J_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not.not5 = icmp eq ptr %.promoted, %i.d
  br i1 %.not.not5, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs5QaNqjAn6vc_5shard.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumeratejuNCINvNtBb_3map8map_foldTjjEB2q_uNCINvNtCslmvYCXbQjWR_6common10sort_utils16sort_permutationjINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntryEL_ENCNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB6v_13SegmentHolder9flush_alls0_0E0NCINvNvB1e_8for_each4callB2q_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8r_7HashMapjjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1i_7collect6ExtendB2q_E6extendINtB28_3MapIBX_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEEB2z_EE0E0E0E0B6x_.exit
  %.sroa.2.06 = phi i64 [ %i.j, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumeratejuNCINvNtBb_3map8map_foldTjjEB2q_uNCINvNtCslmvYCXbQjWR_6common10sort_utils16sort_permutationjINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntryEL_ENCNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB6v_13SegmentHolder9flush_alls0_0E0NCINvNvB1e_8for_each4callB2q_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8r_7HashMapjjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1i_7collect6ExtendB2q_E6extendINtB28_3MapIBX_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEEB2z_EE0E0E0E0B6x_.exit ], [ %2, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.i, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumeratejuNCINvNtBb_3map8map_foldTjjEB2q_uNCINvNtCslmvYCXbQjWR_6common10sort_utils16sort_permutationjINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntryEL_ENCNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB6v_13SegmentHolder9flush_alls0_0E0NCINvNvB1e_8for_each4callB2q_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8r_7HashMapjjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1i_7collect6ExtendB2q_E6extendINtB28_3MapIBX_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEEB2z_EE0E0E0E0B6x_.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !9
  %i.h = invoke { i64, i64 } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapjjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.g, i64 noundef %.sroa.2.06)
          to label %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumeratejuNCINvNtBb_3map8map_foldTjjEB2q_uNCINvNtCslmvYCXbQjWR_6common10sort_utils16sort_permutationjINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntryEL_ENCNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB6v_13SegmentHolder9flush_alls0_0E0NCINvNvB1e_8for_each4callB2q_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8r_7HashMapjjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1i_7collect6ExtendB2q_E6extendINtB28_3MapIBX_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEEB2z_EE0E0E0E0B6x_.exit unwind label %bb.b ; 0 uses

_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumeratejuNCINvNtBb_3map8map_foldTjjEB2q_uNCINvNtCslmvYCXbQjWR_6common10sort_utils16sort_permutationjINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntryEL_ENCNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB6v_13SegmentHolder9flush_alls0_0E0NCINvNvB1e_8for_each4callB2q_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8r_7HashMapjjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1i_7collect6ExtendB2q_E6extendINtB28_3MapIBX_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEEB2z_EE0E0E0E0B6x_.exit: ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = add i64 %.sroa.2.06, 1
  %.not.not = icmp eq ptr %i.i, %i.d
  br i1 %.not.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs5QaNqjAn6vc_5shard.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecjEECs5QaNqjAn6vc_5shard.exit: ; preds = %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumeratejuNCINvNtBb_3map8map_foldTjjEB2q_uNCINvNtCslmvYCXbQjWR_6common10sort_utils16sort_permutationjINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntryEL_ENCNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB6v_13SegmentHolder9flush_alls0_0E0NCINvNvB1e_8for_each4callB2q_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8r_7HashMapjjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1i_7collect6ExtendB2q_E6extendINtB28_3MapIBX_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEEB2z_EE0E0E0E0B6x_.exit, %bb.a
  %i.k = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.m, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.n, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %0, align 8, !alias.scope !28, !nonnull !9, !noundef !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.p, align 8, !alias.scope !28, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1228
  store i64 %.val4, ptr %i.a, align 8, !noalias !1228
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val, ptr %i.q, align 8, !noalias !1228
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEECs5QaNqjAn6vc_5shard.exit unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1228
  resume { ptr, i32 } %i.o

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4calljNCINvMsk_B8_INtB8_3VecjE14extend_trustedINtNtNtB15_8adapters5chain5ChainBI_BI_EE0E0ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
