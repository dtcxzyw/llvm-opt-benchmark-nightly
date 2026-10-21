Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.026?download=true
inline.NumInlined: 2288
inline.NumDeleted: 1097
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapyINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTyBQ_EE6extendINtNtNtB47_8adapters3map3MapINtNtNtBV_3vec9into_iter8IntoIterB2l_ENCNvMs1_B1r_INtB1r_11DynamicPoolB2l_E3new0EECsl8OoimOLbh_6qdrant:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  %i.g = ptrtoint ptr %.val3 to i64
  %i.h = ptrtoint ptr %.val to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 48                  ; 2 uses
  %i.k = lshr i64 %i.j, 1
  %.sroa.0.0 = select i1 %i.d, i64 0, i64 %i.k
  %.sroa.0.1 = sub nsw i64 %i.j, %.sroa.0.0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
          to label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelENCNvMs1_NtNtCshMzyYDJGtjv_3api4grpc12dynamic_poolINtB2E_11DynamicPoolB1F_E3new0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB4F_7HashMapyINtNtBY_4sync3ArcINtB2E_13ItemWithStatsB1F_EENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3S_7collect6ExtendTyB5p_EE6extendB3_E0ECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelENCNvMs1_NtNtCshMzyYDJGtjv_3api4grpc12dynamic_poolINtB2E_11DynamicPoolB1F_E3new0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB4F_7HashMapyINtNtBY_4sync3ArcINtB2E_13ItemWithStatsB1F_EENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3S_7collect6ExtendTyB5p_EE6extendB3_E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a
  tail call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelENCNvMs1_NtNtCshMzyYDJGtjv_3api4grpc12dynamic_poolINtB2K_11DynamicPoolB1L_E3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callTyINtNtB14_4sync3ArcINtB2K_13ItemWithStatsB1L_EEENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5U_7HashMapyB4Z_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB3Y_7collect6ExtendB4X_E6extendBN_E0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelENCNvMs1_NtNtCshMzyYDJGtjv_3api4grpc12dynamic_poolINtB2W_11DynamicPoolB1X_E3new0EECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.m

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelENCNvMs1_NtNtCshMzyYDJGtjv_3api4grpc12dynamic_poolINtB2W_11DynamicPoolB1X_E3new0EECsl8OoimOLbh_6qdrant.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapyNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTyBQ_EE6extendINtNtNtB2p_8adapters3map3MapINtNtNtNtB1B_11collections4hash3map4IteryBQ_ENCINvNtNtCs607s0NAIaWN_7segment6common9anonymize27anonymize_collection_valuesINtB3U_7HashMapyBQ_EyBQ_E0EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.4.0.copyload4 = load i64, ptr %.sroa.4.0..sroa_idx3, align 8, !alias.scope !1795 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = icmp eq i64 %i.c, 0
  %i.e = lshr i64 %.sroa.4.0.copyload4, 1
  %i.f = and i64 %.sroa.4.0.copyload4, 1
  %.sroa.0.0 = add nuw i64 %i.e, %i.f
  %.sroa.0.1 = select i1 %i.d, i64 %.sroa.4.0.copyload4, i64 %.sroa.0.0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.4.0.copyload4, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENCINvNtNtCs607s0NAIaWN_7segment6common9anonymize27anonymize_collection_valuesINtB10_7HashMapyB1P_EyB1P_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4d_8for_each4callTyB1P_ENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5x_7HashMapyB1P_NtNtNtB16_4hash6random11RandomStateEINtNtB4h_7collect6ExtendB5g_E6extendBN_E0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapyNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTyBQ_EE6extendINtNtNtB2p_8adapters3map3MapINtNtNtNtB1B_11collections4hash3map8IntoIteryNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8PeerInfoENCNvXs2_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops11conversionsNtNtB5u_17cluster_telemetry16ClusterTelemetryINtNtB2r_7convert7TryFromNtB4C_16ClusterTelemetryE8try_from0EEB5y_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !1799
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.val = load i64, ptr %i.e, align 8             ; 2 uses
  %i.f = lshr i64 %.val, 1
  %.sroa.0.0 = select i1 %i.d, i64 0, i64 %i.f
  %.sroa.0.1 = sub i64 %.val, %.sroa.0.0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8PeerInfoENCNvXs2_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops11conversionsNtNtB2H_17cluster_telemetry16ClusterTelemetryINtNtBc_7convert7TryFromNtB1P_16ClusterTelemetryE8try_from0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6c_7HashMapyNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoNtNtNtB10_4hash6random11RandomStateEINtNtB5p_7collect6ExtendTyB6W_EE6extendB3_E0EB2L_.exit unwind label %bb.b

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8PeerInfoENCNvXs2_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops11conversionsNtNtB2H_17cluster_telemetry16ClusterTelemetryINtNtBc_7convert7TryFromNtB1P_16ClusterTelemetryE8try_from0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6c_7HashMapyNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoNtNtNtB10_4hash6random11RandomStateEINtNtB5p_7collect6ExtendTyB6W_EE6extendB3_E0EB2L_.exit: ; preds = %bb.a
  tail call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8PeerInfoENCNvXs2_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops11conversionsNtNtB2N_17cluster_telemetry16ClusterTelemetryINtNtBc_7convert7TryFromNtB1V_16ClusterTelemetryE8try_from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5r_8for_each4callTyNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7m_7HashMapyB6w_NtNtNtB16_4hash6random11RandomStateEINtNtB5v_7collect6ExtendB6u_E6extendBN_E0E0EB2R_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8PeerInfoENCNvXs2_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops11conversionsNtNtB2Z_17cluster_telemetry16ClusterTelemetryINtNtB4_7convert7TryFromNtB27_16ClusterTelemetryE8try_from0EEB33_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8PeerInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8PeerInfoENCNvXs2_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops11conversionsNtNtB2Z_17cluster_telemetry16ClusterTelemetryINtNtB4_7convert7TryFromNtB27_16ClusterTelemetryE8try_from0EEB33_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapyNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8PeerInfoNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTyBQ_EE6extendINtNtNtB2t_8adapters3map3MapINtNtNtNtB1F_11collections4hash3map8IntoIteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENCNvXs3_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops11conversionsNtBS_16ClusterTelemetryINtNtB2v_7convert4FromNtNtB5u_17cluster_telemetry16ClusterTelemetryE4from0EEB5y_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !1803
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.val = load i64, ptr %i.e, align 8             ; 2 uses
  %i.f = lshr i64 %.val, 1
  %.sroa.0.0 = select i1 %i.d, i64 0, i64 %i.f
  %.sroa.0.1 = sub i64 %.val, %.sroa.0.0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant8PeerInfoEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENCNvXs3_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops11conversionsNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ClusterTelemetryINtNtBc_7convert4FromNtNtB2D_17cluster_telemetry16ClusterTelemetryE4from0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6v_7HashMapyNtB3C_8PeerInfoNtNtNtB10_4hash6random11RandomStateEINtNtB5I_7collect6ExtendTyB7f_EE6extendB3_E0EB2H_.exit unwind label %bb.b

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENCNvXs3_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops11conversionsNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ClusterTelemetryINtNtBc_7convert4FromNtNtB2D_17cluster_telemetry16ClusterTelemetryE4from0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6v_7HashMapyNtB3C_8PeerInfoNtNtNtB10_4hash6random11RandomStateEINtNtB5I_7collect6ExtendTyB7f_EE6extendB3_E0EB2H_.exit: ; preds = %bb.a
  tail call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENCNvXs3_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops11conversionsNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ClusterTelemetryINtNtBc_7convert4FromNtNtB2J_17cluster_telemetry16ClusterTelemetryE4from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5K_8for_each4callTyNtB3I_8PeerInfoENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7f_7HashMapyB6P_NtNtNtB16_4hash6random11RandomStateEINtNtB5O_7collect6ExtendB6N_E6extendBN_E0E0EB2N_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENCNvXs3_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops11conversionsNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ClusterTelemetryINtNtB4_7convert4FromNtNtB2V_17cluster_telemetry16ClusterTelemetryE4from0EEB2Z_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENCNvXs3_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops11conversionsNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ClusterTelemetryINtNtB4_7convert4FromNtNtB2V_17cluster_telemetry16ClusterTelemetryE4from0EEB2Z_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry19DistributedPeerInfoNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTyBQ_EE6extendINtNtNtB3g_8adapters3map3MapINtNtNtNtB2s_11collections4hash3map4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENCNvBS_20aggregate_peers_info0EEBY_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.4.0.copyload4 = load i64, ptr %.sroa.4.0..sroa_idx3, align 8, !alias.scope !1807 ; 4 uses
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx5, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = icmp eq i64 %i.c, 0
  %i.e = lshr i64 %.sroa.4.0.copyload4, 1
  %i.f = and i64 %.sroa.4.0.copyload4, 1
  %.sroa.0.0 = add nuw i64 %i.e, %i.f
  %.sroa.0.1 = select i1 %i.d, i64 %.sroa.4.0.copyload4, i64 %.sroa.0.0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry19DistributedPeerInfoEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.4.0.copyload4, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB46_8for_each4callTyNtB2z_19DistributedPeerInfoENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5N_7HashMapyB5b_NtNtNtB16_4hash6random11RandomStateEINtNtB4a_7collect6ExtendB59_E6extendBN_E0E0EB2F_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTyBQ_EE6extendINtNtNtB2H_8adapters10filter_map9FilterMapINtNtNtB2J_5slice4iter4IterBR_ENCNvMNtNtBV_13telemetry_ops21distributed_telemetryNtB4X_24DistributedTelemetryData19resolve_telemetriess_0EEBX_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1837)
  %i.c = icmp eq ptr %1, %2
  br i1 %i.c, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCNvMNtNtB1z_13telemetry_ops21distributed_telemetryNtB2x_24DistributedTelemetryData19resolve_telemetriess_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB53_7HashMapyRB1v_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4g_7collect6ExtendTyB5N_EE6extendB3_E0EB1B_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 1048
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataTyB1a_EuNCNvMNtNtB1f_13telemetry_ops21distributed_telemetryNtB2k_24DistributedTelemetryData19resolve_telemetriess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB27_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB55_7HashMapyB1a_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB49_7collect6ExtendB27_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2f_EE0E0E0B1h_.exit.i.i.i, %bb.b
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.bw, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataTyB1a_EuNCNvMNtNtB1f_13telemetry_ops21distributed_telemetryNtB2k_24DistributedTelemetryData19resolve_telemetriess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB27_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB55_7HashMapyB1a_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB49_7collect6ExtendB27_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2f_EE0E0E0B1h_.exit.i.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [1048 x i8], ptr %1, i64 %.sroa.01.0.i.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 456
  %i.l = load i64, ptr %i.k, align 8, !range !19, !alias.scope !1839, !noalias !1840, !noundef !11
  %.not.i.i.i.i.i = icmp eq i64 %i.l, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 504
  %i.n = load i64, ptr %i.m, align 8, !range !19, !alias.scope !1839, !noalias !1840
  %i.o = icmp ne i64 %i.n, 1
  %or.cond.i.not.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 512
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1839, !noalias !1840 ; 2 uses
  br i1 %or.cond.i.not.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataTyB1a_EuNCNvMNtNtB1f_13telemetry_ops21distributed_telemetryNtB2k_24DistributedTelemetryData19resolve_telemetriess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB27_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB55_7HashMapyB1a_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB49_7collect6ExtendB27_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2f_EE0E0E0B1h_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1842
  store i64 %i.q, ptr %i.a, align 8, !noalias !1843
  %i.r = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !1844 ; 2 uses
  call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !1845
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1846, !noalias !1847, !nonnull !11, !noundef !11 ; 3 uses
  %.val5.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1846, !noalias !1847, !noundef !11 ; 3 uses
  %i.s = lshr i64 %i.r, 57
  %i.t = trunc nuw nsw i64 %i.s to i8             ; 3 uses
  %i.u = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.pn.i.i.i.i.i.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.av, %bb.h ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %bb.d ], [ %.sroa.4.120.i.i.i.i.i.i.i.i.i, %bb.h ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.sroa.04.122.i.i.i.i.i.i.i.i.i, %bb.h ]
  %i.w = phi i64 [ 0, %bb.d ], [ %i.au, %bb.h ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.x, align 1, !noalias !1848 ; 3 uses
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i, %i.v
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not28.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not28.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.e, %bb.f
  %.sroa.01.029.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ak, %bb.f ], [ %i.z, %bb.e ] ; 3 uses
  %i.aa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i, %i.ab
  %i.ad = and i64 %i.ac, %.val5.i.i.i.i.i.i.i.i
  %i.ae = load ptr, ptr %0, align 8, !alias.scope !1846, !noalias !1849, !nonnull !11, !noundef !11
  %i.af = sub nsw i64 0, %i.ad                    ; 2 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16
  %i.ai = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah), !noalias !1850
  br i1 %i.ai, label %bb.l, label %bb.f, !prof !12

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.f, %bb.e
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i, label %bb.g, !prof !13

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.aj = add i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i, -1
  %i.ak = and i16 %i.aj, %.sroa.01.029.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.al = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %.thread24.i.i.i.i.i.i.i.i.i, !prof !13

.thread24.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g
  %i.an = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i, %i.ao
  %i.aq = and i64 %i.ap, %.val5.i.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %.thread24.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.sroa.4.121.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aq, %.thread24.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ar = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.04.122.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.4.120.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i ], [ undef, %bb.g ]
  %i.au = add i64 %i.w, 16                        ; 2 uses
  %i.av = add i64 %i.au, %.sroa.0.017.i.i.i.i.i.i.i.i.i
  br label %bb.e

bb.i:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.4.121.i.i.i.i.i.i.i.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !1844, !noundef !11
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %.val62.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i, align 16, !noalias !1844
  %i.az = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %.not.i23.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.ba, 0
  %i.bb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ba, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  call void @llvm.assume(i1 %.not.i23.i.i.i.i.i.i.i.i.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i = phi i64 [ %i.bc, %bb.j ], [ %.sroa.4.121.i.i.i.i.i.i.i.i.i, %bb.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  %i.bd = load ptr, ptr %0, align 8, !alias.scope !1852, !noalias !1847, !nonnull !11, !noundef !11 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !noalias !1853, !noundef !11
  %i.bg = and i8 %i.bf, 1
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i, -16
  %i.bj = load i64, ptr %i.h, align 8, !alias.scope !1852, !noalias !1847, !noundef !11
  %i.bk = and i64 %i.bj, %i.bi
  store i8 %i.t, ptr %i.be, align 1, !noalias !1853
  %i.bl = getelementptr i8, ptr %i.bd, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  store i8 %i.t, ptr %i.bm, align 1, !noalias !1853
  %i.bn = load <2 x i64>, ptr %i.i, align 8, !alias.scope !1852, !noalias !1847
  %i.bo = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bh, i64 0
  %i.bp = sub <2 x i64> %i.bn, %i.bo
  store <2 x i64> %i.bp, ptr %i.i, align 8, !alias.scope !1852, !noalias !1847
  %i.bq = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -16
  store i64 %i.q, ptr %i.bs, align 8, !noalias !1853
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB2p_7HashMapyB1h_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterB1i_ENCNvMNtNtB1m_13telemetry_ops21distributed_telemetryNtB5O_24DistributedTelemetryData19resolve_telemetriess_0EE0E0B1o_.exit.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bt = load ptr, ptr %0, align 8, !alias.scope !1846, !noalias !1847, !nonnull !11
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.af
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB2p_7HashMapyB1h_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterB1i_ENCNvMNtNtB1m_13telemetry_ops21distributed_telemetryNtB5O_24DistributedTelemetryData19resolve_telemetriess_0EE0E0B1o_.exit.i.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB2p_7HashMapyB1h_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterB1i_ENCNvMNtNtB1m_13telemetry_ops21distributed_telemetryNtB5O_24DistributedTelemetryData19resolve_telemetriess_0EE0E0B1o_.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.sink6.i.i.i.i.i.i = phi ptr [ %i.br, %bb.k ], [ %i.bu, %bb.l ]
  %i.bv = getelementptr inbounds i8, ptr %.sink6.i.i.i.i.i.i, i64 -8
  store ptr %i.j, ptr %i.bv, align 8, !noalias !1844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1842
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataTyB1a_EuNCNvMNtNtB1f_13telemetry_ops21distributed_telemetryNtB2k_24DistributedTelemetryData19resolve_telemetriess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB27_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB55_7HashMapyB1a_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB49_7collect6ExtendB27_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2f_EE0E0E0B1h_.exit.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataTyB1a_EuNCNvMNtNtB1f_13telemetry_ops21distributed_telemetryNtB2k_24DistributedTelemetryData19resolve_telemetriess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB27_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB55_7HashMapyB1a_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB49_7collect6ExtendB27_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2f_EE0E0E0B1h_.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB2p_7HashMapyB1h_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterB1i_ENCNvMNtNtB1m_13telemetry_ops21distributed_telemetryNtB5O_24DistributedTelemetryData19resolve_telemetriess_0EE0E0B1o_.exit.i.i.i.i, %bb.c
  %i.bw = add nuw i64 %.sroa.01.0.i.i.i, 1        ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %i.g
  br i1 %i.bx, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCNvMNtNtB1z_13telemetry_ops21distributed_telemetryNtB2x_24DistributedTelemetryData19resolve_telemetriess_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB53_7HashMapyRB1v_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4g_7collect6ExtendTyB5N_EE6extendB3_E0EB1B_.exit, label %bb.c

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataENCNvMNtNtB1z_13telemetry_ops21distributed_telemetryNtB2x_24DistributedTelemetryData19resolve_telemetriess_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB53_7HashMapyRB1v_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB4g_7collect6ExtendTyB5N_EE6extendB3_E0EB1B_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataTyB1a_EuNCNvMNtNtB1f_13telemetry_ops21distributed_telemetryNtB2k_24DistributedTelemetryData19resolve_telemetriess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB27_NCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB55_7HashMapyB1a_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB49_7collect6ExtendB27_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2f_EE0E0E0B1h_.exit.i.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapyuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTyuEE6extendINtNtNtB1L_8adapters3map3MapINtNtB2O_6cloned6ClonedINtNtNtNtBX_11collections4hash3map4KeysyNtNtCs577yCKf7gy3_4http3uri3UriEENCINvXs8_NtB9_3setINtB4S_7HashSetyBR_EIB1F_yE6extendB3b_E0EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !1857
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !11
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysyNtNtCs577yCKf7gy3_4http3uri3UriEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
  %i.g = load i64, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.h = lshr i64 %i.g, 1
  %.sroa.0.0 = sub nuw i64 %i.g, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysyNtNtCs577yCKf7gy3_4http3uri3UriEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
  %i.i = load i64, ptr %i.b, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi i64 [ %i.i, %bb.c ], [ %.sroa.0.0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE7reserveNCINvNtB8_3map11make_hasheryuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysyNtNtCs577yCKf7gy3_4http3uri3UriEENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB2R_7HashSetyNtNtNtB1s_4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendyE6extendBX_E0ENtNtB4g_8iterator8Iterator4folduNCINvNvB4W_8for_each4callTyuENCINvXs1i_NtB2T_3mapINtB65_7HashMapyuB3B_EIB4c_B5R_E6extendBN_E0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapyuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTyuEE6extendINtNtNtB1L_8adapters3map3MapINtNtB2O_6copied6CopiedINtNtB2O_5chain5ChainIB3z_IB3z_INtNtNtB1N_5slice4iter4IteryEB43_EB43_EB43_EENCINvXs8_NtB9_3setINtB4V_7HashSetyBR_EIB1F_yE6extendB3b_E0EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 72, i1 false), !alias.scope !1861
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !11
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainIB12_IB12_INtNtNtBa_5slice4iter4IteryEB1v_EB1v_EB1v_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c)
  %i.g = load i64, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.h = lshr i64 %i.g, 1
  %.sroa.0.0 = sub nuw i64 %i.g, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_5chain5ChainIB12_IB12_INtNtNtBa_5slice4iter4IteryEB1v_EB1v_EB1v_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c)
  %i.i = load i64, ptr %i.b, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi i64 [ %i.i, %bb.c ], [ %.sroa.0.0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE7reserveNCINvNtB8_3map11make_hasheryuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtB8_5chain5ChainIB1k_IB1k_INtNtNtBc_5slice4iter4IteryEB1N_EB1N_EB1N_EENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB2E_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendyE6extendBX_E0ENtNtB4g_8iterator8Iterator4folduNCINvNvB4W_8for_each4callTyuENCINvXs1i_NtB2G_3mapINtB65_7HashMapyuB3o_EIB4c_B5R_E6extendBN_E0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapyuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTyuEE6extendINtNtNtB1L_8adapters3map3MapINtNtB2O_6filter6FilterINtNtB2O_6copied6CopiedINtNtNtB1N_5slice4iter4IteryEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection13sharding_keysNtB4y_10Collection18create_replica_set00ENCINvXs8_NtB9_3setINtB6e_7HashSetyBR_EIB1F_yE6extendB3b_E0EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !1877
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !11
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1878
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c), !noalias !1879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1878
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1880
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c), !noalias !1881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1880
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE7reserveNCINvNtB8_3map11make_hasheryuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IteryEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection13sharding_keysNtB2h_10Collection18create_replica_set00ENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3X_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendyE6extendBX_E0ENtNtB5z_8iterator8Iterator4folduNCINvNvB6f_8for_each4callTyuENCINvXs1i_NtB3Z_3mapINtB7o_7HashMapyuB4H_EIB5v_B7a_E6extendBN_E0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapyuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTyuEE6extendINtNtNtB1L_8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIteryENCINvXs8_NtB9_3setINtB4a_7HashSetyBR_EIB1F_yE6extendB3b_E0EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !1885
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  %i.g = ptrtoint ptr %.val3 to i64
  %i.h = ptrtoint ptr %.val to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 3 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.i, 4
  %i.k = lshr i64 %i.i, 3
  %i.l = and i64 %i.k, 1
  %.sroa.0.0 = add nuw nsw i64 %i.l, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.1 = phi i64 [ %i.n, %bb.d ], [ %.sroa.0.0, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE7reserveNCINvNtB8_3map11make_hasheryuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIteryENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB1Q_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendyE6extendBR_E0ENtNtB3s_8iterator8Iterator8for_eachNCINvXs1i_NtB1S_3mapINtB4R_7HashMapyuB2A_EIB3o_TyuEE6extendB3_E0ECsl8OoimOLbh_6qdrant.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.n = lshr exact i64 %i.i, 3
  br label %bb.c

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIteryENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB1Q_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendyE6extendBR_E0ENtNtB3s_8iterator8Iterator8for_eachNCINvXs1i_NtB1S_3mapINtB4R_7HashMapyuB2A_EIB3o_TyuEE6extendB3_E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  tail call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIteryENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB1W_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendyE6extendBX_E0ENtNtB3y_8iterator8Iterator4folduNCINvNvB4e_8for_each4callTyuENCINvXs1i_NtB1Y_3mapINtB5n_7HashMapyuB2G_EIB3u_B59_E6extendBN_E0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIteryENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB28_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtBI_6traits7collect6ExtendyE6extendB19_E0EECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIteryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIteryENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB28_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtBI_6traits7collect6ExtendyE6extendB19_E0EECsl8OoimOLbh_6qdrant.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_RINvXs3_NtCsyIGusAaLFh_5ahash12random_stateNtB6_11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRINtNtB11_6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(address_is_null) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1915, !noundef !11
  %i.c = load i64, ptr %0, align 8, !alias.scope !1915, !noundef !11 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1915, !noundef !11 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1915, !noundef !11 ; 3 uses
  %i.h = icmp ne ptr %.0.val, null                ; 2 uses
  %i.i = zext i1 %i.h to i64
  %i.j = xor i64 %i.b, %i.i
  %i.k = zext i64 %i.j to i128
  %i.l = mul nuw nsw i128 %i.k, 6364136223846793005 ; 2 uses
  %i.m = lshr i128 %i.l, 64
  %i.n = xor i128 %i.m, %i.l
  %i.o = trunc i128 %i.n to i64                   ; 2 uses
  br i1 %i.h, label %bb.b, label %_RINvMs1_NtCsyIGusAaLFh_5ahash12random_stateNtB6_11RandomState8hash_oneRINtNtCskKLDkoKarTP_4core6option6OptionRNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
end_hunk_0
