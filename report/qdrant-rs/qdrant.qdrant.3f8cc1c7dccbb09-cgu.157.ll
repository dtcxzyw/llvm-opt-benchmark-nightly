Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.157?download=true
inline.NumInlined: 593
inline.NumDeleted: 196
begin_hunk_0_@_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerIBV_IB19_IB1u_IB29_IB2L_DIB3l_NtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB4C_4SyncEL_EENtNtB1y_3env9EnvFilterB40_EB40_EB40_EEB4A_B4U_EL_EEB5a_B3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber13event_enabledCsl8OoimOLbh_6qdrant:bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i: ; preds = %bb.f
  %i.t = load i64, ptr %i.a, align 8, !range !11, !noalias !599, !noundef !6
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %.sink.split.i, label %_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E13event_enabledCsl8OoimOLbh_6qdrant.exit

.sink.split.i:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i
  call void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1f_5layer5LayerINtNtB3x_7layered7LayeredINtNtB1f_6reload5LayerIB19_IB2j_IB2V_DIB3v_NtNtNtB1f_8registry7sharded8RegistryENtNtB2n_6marker4SendNtB5y_4SyncEL_EENtNtB1d_3env9EnvFilterB4V_EB4V_EB4V_EEB5w_B5Q_EL_EEB66_B3P_EENtNtNtB2n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l), !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !599
  br i1 %i.o, label %bb.p, label %bb.q

bb.h:                                             ; preds = %bb.o, %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !598
  unreachable

bb.i:                                             ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i
  %i.w = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !599
  %i.x = and i64 %i.w, 9223372036854775807
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.l unwind label %bb.g, !noalias !599

bb.k:                                             ; preds = %bb.l, %bb.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #25
          to label %bb.n unwind label %bb.g, !noalias !599

bb.l:                                             ; preds = %bb.j
  br i1 %i.z, label %bb.k, label %bb.m, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.aa = load i64, ptr %i.a, align 8, !range !11, !noalias !599, !noundef !6
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %.sink.split.i.thread, label %_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E13event_enabledCsl8OoimOLbh_6qdrant.exit.thread

_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E13event_enabledCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !599
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  unreachable

.sink.split.i.thread:                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1f_5layer5LayerINtNtB3x_7layered7LayeredINtNtB1f_6reload5LayerIB19_IB2j_IB2V_DIB3v_NtNtNtB1f_8registry7sharded8RegistryENtNtB2n_6marker4SendNtB5y_4SyncEL_EENtNtB1d_3env9EnvFilterB4V_EB4V_EB4V_EEB5w_B5Q_EL_EEB66_B3P_EENtNtNtB2n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac), !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !599
  br label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB24_5layer5LayerINtNtB46_7layered7LayeredINtNtB24_6reload5LayerIB1Y_IB38_IB3u_DIB44_NtNtNtB24_8registry7sharded8RegistryENtNtB4_6marker4SendNtB67_4SyncEL_EENtNtB22_3env9EnvFilterB5u_EB5u_EB5u_EEB65_B6o_EL_EEB6E_B4o_EEINtB12_11PoisonErrorBX_EEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit.i
  resume { ptr, i32 } %.pn.i

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1f_5layer5LayerINtNtB3x_7layered7LayeredINtNtB1f_6reload5LayerIB19_IB2j_IB2V_DIB3v_NtNtNtB1f_8registry7sharded8RegistryENtNtB2n_6marker4SendNtB5y_4SyncEL_EENtNtB1d_3env9EnvFilterB4V_EB4V_EB4V_EEB5w_B5Q_EL_EEB66_B3P_EENtNtNtB2n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB24_5layer5LayerINtNtB46_7layered7LayeredINtNtB24_6reload5LayerIB1Y_IB38_IB3u_DIB44_NtNtNtB24_8registry7sharded8RegistryENtNtB4_6marker4SendNtB67_4SyncEL_EENtNtB22_3env9EnvFilterB5u_EB5u_EB5u_EEB65_B6o_EL_EEB6E_B4o_EEINtB12_11PoisonErrorBX_EEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.h, !noalias !598

_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E13event_enabledCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !599
  br i1 %i.o, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.sink.split.i, %_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E13event_enabledCsl8OoimOLbh_6qdrant.exit
  %i.ae = call noundef zeroext i1 @_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerNtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB48_4SyncEL_EENtNtB1y_3env9EnvFilterB3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber13event_enabledCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  br label %bb.q

bb.q:                                             ; preds = %.sink.split.i.thread, %.sink.split.i, %_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E13event_enabledCsl8OoimOLbh_6qdrant.exit.thread, %_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E13event_enabledCsl8OoimOLbh_6qdrant.exit, %bb.p
  %.sroa.0.0 = phi i1 [ %i.ae, %bb.p ], [ false, %_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E13event_enabledCsl8OoimOLbh_6qdrant.exit ], [ false, %_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E13event_enabledCsl8OoimOLbh_6qdrant.exit.thread ], [ false, %.sink.split.i ], [ false, %.sink.split.i.thread ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 -2, 5) i64 @_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerIBV_IB19_IB1u_IB29_IB2L_DIB3l_NtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB4C_4SyncEL_EENtNtB1y_3env9EnvFilterB40_EB40_EB40_EEB4A_B4U_EL_EEB5a_B3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber14max_level_hintCsl8OoimOLbh_6qdrant(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !604
  %i.e = load ptr, ptr %0, align 8, !alias.scope !604, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4, !noalias !604 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.g, 1073741822
  br i1 %or.cond3.i.i, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = cmpxchg weak ptr %i.f, i32 %i.g, i32 %i.h acquire monotonic, align 4, !noalias !604
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.f), !noalias !604
  br label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i

_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i: ; preds = %bb.c, %bb.b
  call void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1f_5layer5LayerINtNtB3x_7layered7LayeredINtNtB1f_6reload5LayerIB19_IB2j_IB2V_DIB3v_NtNtNtB1f_8registry7sharded8RegistryENtNtB2n_6marker4SendNtB5y_4SyncEL_EENtNtB1d_3env9EnvFilterB4V_EB4V_EB4V_EEB5w_B5Q_EL_EEB66_B3P_EE3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.f), !noalias !604
  %i.k = load i64, ptr %i.c, align 8, !range !11, !noalias !604, !noundef !6
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !noalias !604
  %i.o = load ptr, ptr %i.m, align 8, !noalias !604, !nonnull !6, !noundef !6
  store <2 x ptr> %i.n, ptr %i.d, align 16, !noalias !604
  %i.p = invoke noundef i64 @_RNvXs4_NtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filtersINtB5_8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB9_5layer5LayerINtNtB2x_7layered7LayeredINtNtB9_6reload5LayerIB14_IB1j_IB1V_DIB2v_NtNtNtB9_8registry7sharded8RegistryENtNtB1n_6marker4SendNtB4v_4SyncEL_EENtNtB7_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B2O_EIB2v_B2O_E14max_level_hintCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.o)
          to label %bb.f unwind label %bb.e, !noalias !604 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1f_5layer5LayerINtNtB3x_7layered7LayeredINtNtB1f_6reload5LayerIB19_IB2j_IB2V_DIB3v_NtNtNtB1f_8registry7sharded8RegistryENtNtB2n_6marker4SendNtB5y_4SyncEL_EENtNtB1d_3env9EnvFilterB4V_EB4V_EB4V_EEB5w_B5Q_EL_EEB66_B3P_EENtNtNtB2n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.h, !noalias !604

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1f_5layer5LayerINtNtB3x_7layered7LayeredINtNtB1f_6reload5LayerIB19_IB2j_IB2V_DIB3v_NtNtNtB1f_8registry7sharded8RegistryENtNtB2n_6marker4SendNtB5y_4SyncEL_EENtNtB1d_3env9EnvFilterB4V_EB4V_EB4V_EEB5w_B5Q_EL_EEB66_B3P_EENtNtNtB2n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i unwind label %bb.g, !noalias !604

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.g, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.q, %bb.e ]
  %i.r = load i64, ptr %i.c, align 8, !range !11, !noalias !604, !noundef !6
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB24_5layer5LayerINtNtB46_7layered7LayeredINtNtB24_6reload5LayerIB1Y_IB38_IB3u_DIB44_NtNtNtB24_8registry7sharded8RegistryENtNtB4_6marker4SendNtB67_4SyncEL_EENtNtB22_3env9EnvFilterB5u_EB5u_EB5u_EEB65_B6o_EL_EEB6E_B4o_EEINtB12_11PoisonErrorBX_EEECsl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.g:                                             ; preds = %bb.k, %bb.j, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i: ; preds = %bb.f
  %i.u = load i64, ptr %i.c, align 8, !range !11, !noalias !604, !noundef !6
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %.sink.split.i, label %_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerNtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB48_4SyncEL_EENtNtB1y_3env9EnvFilterB3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber12downcast_rawCsl8OoimOLbh_6qdrant.exit

.sink.split.i:                                    ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i
  %.sink.i = phi ptr [ %i.ad, %bb.o ], [ %i.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i ]
  %.sroa.0.0.ph.i = phi i64 [ -2, %bb.o ], [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i ]
  call void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1f_5layer5LayerINtNtB3x_7layered7LayeredINtNtB1f_6reload5LayerIB19_IB2j_IB2V_DIB3v_NtNtNtB1f_8registry7sharded8RegistryENtNtB2n_6marker4SendNtB5y_4SyncEL_EENtNtB1d_3env9EnvFilterB4V_EB4V_EB4V_EEB5w_B5Q_EL_EEB66_B3P_EENtNtNtB2n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i), !noalias !604
  br label %_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerNtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB48_4SyncEL_EENtNtB1y_3env9EnvFilterB3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber12downcast_rawCsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.p, %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !604
  unreachable

bb.i:                                             ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i
  %i.x = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !604
  %i.y = and i64 %i.x, 9223372036854775807
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.l unwind label %bb.g, !noalias !604

bb.k:                                             ; preds = %bb.l, %bb.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #25
          to label %bb.n unwind label %bb.g, !noalias !604

bb.l:                                             ; preds = %bb.j
  br i1 %i.aa, label %bb.k, label %bb.m, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.ab = load i64, ptr %i.c, align 8, !range !11, !noalias !604, !noundef !6
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.o, label %_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerNtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB48_4SyncEL_EENtNtB1y_3env9EnvFilterB3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber12downcast_rawCsl8OoimOLbh_6qdrant.exit

bb.n:                                             ; preds = %bb.k
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %.sink.split.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB24_5layer5LayerINtNtB46_7layered7LayeredINtNtB24_6reload5LayerIB1Y_IB38_IB3u_DIB44_NtNtNtB24_8registry7sharded8RegistryENtNtB4_6marker4SendNtB67_4SyncEL_EENtNtB22_3env9EnvFilterB5u_EB5u_EB5u_EEB65_B6o_EL_EEB6E_B4o_EEINtB12_11PoisonErrorBX_EEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit.i
  resume { ptr, i32 } %.pn.i

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1f_5layer5LayerINtNtB3x_7layered7LayeredINtNtB1f_6reload5LayerIB19_IB2j_IB2V_DIB3v_NtNtNtB1f_8registry7sharded8RegistryENtNtB2n_6marker4SendNtB5y_4SyncEL_EENtNtB1d_3env9EnvFilterB4V_EB4V_EB4V_EEB5w_B5Q_EL_EEB66_B3P_EENtNtNtB2n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB24_5layer5LayerINtNtB46_7layered7LayeredINtNtB24_6reload5LayerIB1Y_IB38_IB3u_DIB44_NtNtNtB24_8registry7sharded8RegistryENtNtB4_6marker4SendNtB67_4SyncEL_EENtNtB22_3env9EnvFilterB5u_EB5u_EB5u_EEB65_B6o_EL_EEB6E_B4o_EEINtB12_11PoisonErrorBX_EEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.h, !noalias !604

_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerNtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB48_4SyncEL_EENtNtB1y_3env9EnvFilterB3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber12downcast_rawCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i, %.sink.split.i, %bb.m
  %.sroa.0.0.i = phi i64 [ -2, %bb.m ], [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i ], [ %.sroa.0.0.ph.i, %.sink.split.i ] ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !604
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = call noundef i64 @_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerNtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB48_4SyncEL_EENtNtB1y_3env9EnvFilterB3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber14max_level_hintCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.af) ; 15 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !605
  store i128 6396447331871555094409656509430856675, ptr %i.b, align 16
  %.val.i = load ptr, ptr %i.ah, align 8, !noalias !605
  %i.ai = call fastcc { i64, ptr } @_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerNtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB3I_4SyncEL_EENtNtB10_3env9EnvFilterB36_EB36_EIB2N_B36_E12downcast_rawCsl8OoimOLbh_6qdrant(ptr %.val.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.b), !noalias !605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !605
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %1 = icmp eq i64 %i.aj, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.al = load i8, ptr %i.ak, align 8, !range !12, !noundef !6
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_RNvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtB9_6reload5LayerINtNtNtB9_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB7_5LayerIBW_IB1a_IB1v_IB2a_IB2M_DIB3m_NtNtNtB9_8registry7sharded8RegistryENtNtB2e_6marker4SendNtB4D_4SyncEL_EENtNtB1z_3env9EnvFilterB41_EB41_EB41_EEB4B_B4V_EL_EEB5b_B3x_EB3x_EB3x_E15pick_level_hintCsl8OoimOLbh_6qdrant.exit, label %bb.q

bb.q:                                             ; preds = %_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerNtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB48_4SyncEL_EENtNtB1y_3env9EnvFilterB3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber12downcast_rawCsl8OoimOLbh_6qdrant.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 569
  %i.ao = load i8, ptr %i.an, align 1, !range !12, !noundef !6
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.s, label %bb.u

bb.r:                                             ; preds = %bb.s
  %.not.i = icmp eq i64 %i.ag, -2
  br i1 %.not.i, label %_RNvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtB9_6reload5LayerINtNtNtB9_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB7_5LayerIBW_IB1a_IB1v_IB2a_IB2M_DIB3m_NtNtNtB9_8registry7sharded8RegistryENtNtB2e_6marker4SendNtB4D_4SyncEL_EENtNtB1z_3env9EnvFilterB41_EB41_EB41_EEB4B_B4V_EL_EEB5b_B3x_EB3x_EB3x_E15pick_level_hintCsl8OoimOLbh_6qdrant.exit, label %.thread35.i

.thread35.i:                                      ; preds = %bb.r
  %.not1137.i = icmp eq i64 %.sroa.0.0.i, -2
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 570
  %i.ar = load i8, ptr %i.aq, align 2, !range !12, !noundef !6
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.t, label %bb.r

bb.t:                                             ; preds = %bb.s
  %.not14.i = icmp eq i64 %.sroa.0.0.i, -2
  %.not15.i = icmp eq i64 %i.ag, -2
  %or.cond19.i = or i1 %.not14.i, %.not15.i
  br i1 %or.cond19.i, label %_RNvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtB9_6reload5LayerINtNtNtB9_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB7_5LayerIBW_IB1a_IB1v_IB2a_IB2M_DIB3m_NtNtNtB9_8registry7sharded8RegistryENtNtB2e_6marker4SendNtB4D_4SyncEL_EENtNtB1z_3env9EnvFilterB41_EB41_EB41_EEB4B_B4V_EL_EEB5b_B3x_EB3x_EB3x_E15pick_level_hintCsl8OoimOLbh_6qdrant.exit, label %bb.ac

bb.u:                                             ; preds = %bb.q
  %.not30.i = icmp eq i64 %i.ag, -2
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 570
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !range !12
  %i.at = trunc nuw i8 %.pre.i to i1
  %.not11.i = icmp eq i64 %.sroa.0.0.i, -2        ; 2 uses
  %or.cond16.i = and i1 %.not11.i, %i.at
  br i1 %or.cond16.i, label %_RNvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtB9_6reload5LayerINtNtNtB9_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB7_5LayerIBW_IB1a_IB1v_IB2a_IB2M_DIB3m_NtNtNtB9_8registry7sharded8RegistryENtNtB2e_6marker4SendNtB4D_4SyncEL_EENtNtB1z_3env9EnvFilterB41_EB41_EB41_EEB4B_B4V_EL_EEB5b_B3x_EB3x_EB3x_E15pick_level_hintCsl8OoimOLbh_6qdrant.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread35.i
  %.not1140.i = phi i1 [ %.not1137.i, %.thread35.i ], [ %.not11.i, %bb.u ] ; 3 uses
  %.not3239.i = phi i1 [ false, %.thread35.i ], [ %.not30.i, %bb.u ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @22, i64 16, i1 false)
  %.val.i2 = load ptr, ptr %0, align 8
  %i.au = call fastcc { i64, ptr } @_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E12downcast_rawCsl8OoimOLbh_6qdrant(ptr %.val.i2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = extractvalue { i64, ptr } %i.au, 0
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not32.not.i = xor i1 %.not3239.i, true
  %or.cond18.not.i = and i1 %1, %.not32.not.i
  %.not.i.i = icmp eq i64 %i.ag, -1               ; 2 uses
  %or.cond33.i = and i1 %.not.i.i, %or.cond18.not.i
  br i1 %or.cond33.i, label %_RNvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtB9_6reload5LayerINtNtNtB9_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB7_5LayerIBW_IB1a_IB1v_IB2a_IB2M_DIB3m_NtNtNtB9_8registry7sharded8RegistryENtNtB2e_6marker4SendNtB4D_4SyncEL_EENtNtB1z_3env9EnvFilterB41_EB41_EB41_EEB4B_B4V_EL_EEB5b_B3x_EB3x_EB3x_E15pick_level_hintCsl8OoimOLbh_6qdrant.exit, label %bb.y

bb.x:                                             ; preds = %bb.v
  br i1 %.not3239.i, label %_RNvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtB9_6reload5LayerINtNtNtB9_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB7_5LayerIBW_IB1a_IB1v_IB2a_IB2M_DIB3m_NtNtNtB9_8registry7sharded8RegistryENtNtB2e_6marker4SendNtB4D_4SyncEL_EENtNtB1z_3env9EnvFilterB41_EB41_EB41_EEB4B_B4V_EL_EEB5b_B3x_EB3x_EB3x_E15pick_level_hintCsl8OoimOLbh_6qdrant.exit, label %bb.ab

bb.y:                                             ; preds = %bb.w
  br i1 %.not3239.i, label %_RNvYINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2QK82Vyr5sR_12tracing_core8metadata11LevelFilterENtNtB7_3cmp10PartialOrd2ltCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not1140.i, label %_RNvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtB9_6reload5LayerINtNtNtB9_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB7_5LayerIBW_IB1a_IB1v_IB2a_IB2M_DIB3m_NtNtNtB9_8registry7sharded8RegistryENtNtB2e_6marker4SendNtB4D_4SyncEL_EENtNtB1z_3env9EnvFilterB41_EB41_EB41_EEB4B_B4V_EL_EEB5b_B3x_EB3x_EB3x_E15pick_level_hintCsl8OoimOLbh_6qdrant.exit, label %.split.i.i

.split.i.i:                                       ; preds = %bb.z
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i, -1
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 5, i64 %.sroa.0.0.i
  %.sroa.01.0.i.i.i.i.i = select i1 %.not.i.i, i64 5, i64 %i.ag
  %i.ax = icmp samesign ult i64 %..i.i.i.i.i, %.sroa.01.0.i.i.i.i.i
  br i1 %i.ax, label %bb.aa, label %_RNvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtB9_6reload5LayerINtNtNtB9_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB7_5LayerIBW_IB1a_IB1v_IB2a_IB2M_DIB3m_NtNtNtB9_8registry7sharded8RegistryENtNtB2e_6marker4SendNtB4D_4SyncEL_EENtNtB1z_3env9EnvFilterB41_EB41_EB41_EEB4B_B4V_EL_EEB5b_B3x_EB3x_EB3x_E15pick_level_hintCsl8OoimOLbh_6qdrant.exit

_RNvYINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2QK82Vyr5sR_12tracing_core8metadata11LevelFilterENtNtB7_3cmp10PartialOrd2ltCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.y
  br i1 %.not1140.i, label %_RNvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtB9_6reload5LayerINtNtNtB9_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB7_5LayerIBW_IB1a_IB1v_IB2a_IB2M_DIB3m_NtNtNtB9_8registry7sharded8RegistryENtNtB2e_6marker4SendNtB4D_4SyncEL_EENtNtB1z_3env9EnvFilterB41_EB41_EB41_EEB4B_B4V_EL_EEB5b_B3x_EB3x_EB3x_E15pick_level_hintCsl8OoimOLbh_6qdrant.exit, label %bb.aa

bb.aa:                                            ; preds = %_RNvYINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2QK82Vyr5sR_12tracing_core8metadata11LevelFilterENtNtB7_3cmp10PartialOrd2ltCsl8OoimOLbh_6qdrant.exit.i.i, %.split.i.i
  br label %_RNvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtB9_6reload5LayerINtNtNtB9_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB7_5LayerIBW_IB1a_IB1v_IB2a_IB2M_DIB3m_NtNtNtB9_8registry7sharded8RegistryENtNtB2e_6marker4SendNtB4D_4SyncEL_EENtNtB1z_3env9EnvFilterB41_EB41_EB41_EEB4B_B4V_EL_EEB5b_B3x_EB3x_EB3x_E15pick_level_hintCsl8OoimOLbh_6qdrant.exit

bb.ab:                                            ; preds = %bb.x
  %i.ay = icmp ne i64 %i.ag, -2
  call void @llvm.assume(i1 %i.ay)
  br i1 %.not1140.i, label %_RNvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtB9_6reload5LayerINtNtNtB9_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB7_5LayerIBW_IB1a_IB1v_IB2a_IB2M_DIB3m_NtNtNtB9_8registry7sharded8RegistryENtNtB2e_6marker4SendNtB4D_4SyncEL_EENtNtB1z_3env9EnvFilterB41_EB41_EB41_EEB4B_B4V_EL_EEB5b_B3x_EB3x_EB3x_E15pick_level_hintCsl8OoimOLbh_6qdrant.exit, label %.split.i23.i

.split.i23.i:                                     ; preds = %bb.ab
  %.not.i.i.i.i24.i = icmp eq i64 %.sroa.0.0.i, -1
  %..i.i.i.i25.i = select i1 %.not.i.i.i.i24.i, i64 5, i64 %.sroa.0.0.i
  %.not2.i.i.i.i26.i = icmp eq i64 %i.ag, -1
  %.sroa.01.0.i.i.i.i27.i = select i1 %.not2.i.i.i.i26.i, i64 5, i64 %i.ag
  %i.az = icmp samesign ult i64 %..i.i.i.i25.i, %.sroa.01.0.i.i.i.i27.i
  %spec.select.i = select i1 %i.az, i64 %.sroa.0.0.i, i64 %i.ag
  br label %_RNvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtB9_6reload5LayerINtNtNtB9_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB7_5LayerIBW_IB1a_IB1v_IB2a_IB2M_DIB3m_NtNtNtB9_8registry7sharded8RegistryENtNtB2e_6marker4SendNtB4D_4SyncEL_EENtNtB1z_3env9EnvFilterB41_EB41_EB41_EEB4B_B4V_EL_EEB5b_B3x_EB3x_EB3x_E15pick_level_hintCsl8OoimOLbh_6qdrant.exit

bb.ac:                                            ; preds = %bb.t
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.i, -1
  %..i.i.i = select i1 %.not.i.i.i, i64 5, i64 %.sroa.0.0.i
  %.not2.i.i.i = icmp eq i64 %i.ag, -1
  %.sroa.01.0.i.i.i = select i1 %.not2.i.i.i, i64 5, i64 %i.ag
  %i.ba = icmp samesign ult i64 %..i.i.i, %.sroa.01.0.i.i.i
  %..i.i = select i1 %i.ba, i64 %.sroa.0.0.i, i64 %i.ag
  br label %_RNvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtB9_6reload5LayerINtNtNtB9_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB7_5LayerIBW_IB1a_IB1v_IB2a_IB2M_DIB3m_NtNtNtB9_8registry7sharded8RegistryENtNtB2e_6marker4SendNtB4D_4SyncEL_EENtNtB1z_3env9EnvFilterB41_EB41_EB41_EEB4B_B4V_EL_EEB5b_B3x_EB3x_EB3x_E15pick_level_hintCsl8OoimOLbh_6qdrant.exit

_RNvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtB9_6reload5LayerINtNtNtB9_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB7_5LayerIBW_IB1a_IB1v_IB2a_IB2M_DIB3m_NtNtNtB9_8registry7sharded8RegistryENtNtB2e_6marker4SendNtB4D_4SyncEL_EENtNtB1z_3env9EnvFilterB41_EB41_EB41_EEB4B_B4V_EL_EEB5b_B3x_EB3x_EB3x_E15pick_level_hintCsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerNtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB48_4SyncEL_EENtNtB1y_3env9EnvFilterB3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber12downcast_rawCsl8OoimOLbh_6qdrant.exit, %bb.r, %bb.t, %bb.u, %bb.w, %bb.x, %bb.z, %.split.i.i, %_RNvYINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2QK82Vyr5sR_12tracing_core8metadata11LevelFilterENtNtB7_3cmp10PartialOrd2ltCsl8OoimOLbh_6qdrant.exit.i.i, %bb.aa, %bb.ab, %.split.i23.i, %bb.ac
  %.sroa.07.0.i = phi i64 [ %..i.i, %bb.ac ], [ -2, %bb.x ], [ %.sroa.0.0.i, %_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerNtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB48_4SyncEL_EENtNtB1y_3env9EnvFilterB3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber12downcast_rawCsl8OoimOLbh_6qdrant.exit ], [ -2, %bb.r ], [ %.sroa.0.0.i, %bb.w ], [ -2, %bb.u ], [ %i.ag, %bb.z ], [ -2, %bb.t ], [ %.sroa.0.0.i, %bb.aa ], [ -2, %_RNvYINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2QK82Vyr5sR_12tracing_core8metadata11LevelFilterENtNtB7_3cmp10PartialOrd2ltCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.ag, %.split.i.i ], [ %spec.select.i, %.split.i23.i ], [ %i.ag, %bb.ab ]
  ret i64 %.sroa.07.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerIBV_IB19_IB1u_IB29_IB2L_DIB3l_NtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB4C_4SyncEL_EENtNtB1y_3env9EnvFilterB40_EB40_EB40_EEB4A_B4U_EL_EEB5a_B3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber17register_callsiteCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !610
  %i.c = load ptr, ptr %0, align 8, !alias.scope !609, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4, !noalias !610 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.e, 1073741822
  br i1 %or.cond3.i.i, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw nsw i32 %i.e, 1
  %i.g = cmpxchg weak ptr %i.d, i32 %i.e, i32 %i.f acquire monotonic, align 4, !noalias !610
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.d), !noalias !610
  br label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i

_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i: ; preds = %bb.c, %bb.b
  call void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1f_5layer5LayerINtNtB3x_7layered7LayeredINtNtB1f_6reload5LayerIB19_IB2j_IB2V_DIB3v_NtNtNtB1f_8registry7sharded8RegistryENtNtB2n_6marker4SendNtB5y_4SyncEL_EENtNtB1d_3env9EnvFilterB4V_EB4V_EB4V_EEB5w_B5Q_EL_EEB66_B3P_EE3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.d), !noalias !610
  %i.i = load i64, ptr %i.a, align 8, !range !11, !noalias !610, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !noalias !610
  %i.m = load ptr, ptr %i.k, align 8, !noalias !610, !nonnull !6, !noundef !6
  store <2 x ptr> %i.l, ptr %i.b, align 16, !noalias !610
  %i.n = invoke noundef i8 @_RNvXs4_NtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filtersINtB5_8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB9_5layer5LayerINtNtB2x_7layered7LayeredINtNtB9_6reload5LayerIB14_IB1j_IB1V_DIB2v_NtNtNtB9_8registry7sharded8RegistryENtNtB1n_6marker4SendNtB4v_4SyncEL_EENtNtB7_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B2O_EIB2v_B2O_E17register_callsiteCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
          to label %bb.f unwind label %bb.e, !noalias !609 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1f_5layer5LayerINtNtB3x_7layered7LayeredINtNtB1f_6reload5LayerIB19_IB2j_IB2V_DIB3v_NtNtNtB1f_8registry7sharded8RegistryENtNtB2n_6marker4SendNtB5y_4SyncEL_EENtNtB1d_3env9EnvFilterB4V_EB4V_EB4V_EEB5w_B5Q_EL_EEB66_B3P_EENtNtNtB2n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.h, !noalias !609

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1f_5layer5LayerINtNtB3x_7layered7LayeredINtNtB1f_6reload5LayerIB19_IB2j_IB2V_DIB3v_NtNtNtB1f_8registry7sharded8RegistryENtNtB2n_6marker4SendNtB5y_4SyncEL_EENtNtB1d_3env9EnvFilterB4V_EB4V_EB4V_EEB5w_B5Q_EL_EEB66_B3P_EENtNtNtB2n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i unwind label %bb.g, !noalias !609

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.g, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.o, %bb.e ]
  %i.p = load i64, ptr %i.a, align 8, !range !11, !noalias !610, !noundef !6
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB24_5layer5LayerINtNtB46_7layered7LayeredINtNtB24_6reload5LayerIB1Y_IB38_IB3u_DIB44_NtNtNtB24_8registry7sharded8RegistryENtNtB4_6marker4SendNtB67_4SyncEL_EENtNtB22_3env9EnvFilterB5u_EB5u_EB5u_EEB65_B6o_EL_EEB6E_B4o_EEINtB12_11PoisonErrorBX_EEECsl8OoimOLbh_6qdrant.exit.i, label %bb.p

bb.g:                                             ; preds = %bb.k, %bb.j, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.a, align 8, !range !11, !noalias !610, !noundef !6
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %.sink.split.i, label %_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E17register_callsiteCsl8OoimOLbh_6qdrant.exit

.sink.split.i:                                    ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i
  %.sink.i = phi ptr [ %i.ab, %bb.o ], [ %i.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i ]
  %.sroa.0.0.ph.i = phi i8 [ 1, %bb.o ], [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i ]
  call void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1f_5layer5LayerINtNtB3x_7layered7LayeredINtNtB1f_6reload5LayerIB19_IB2j_IB2V_DIB3v_NtNtNtB1f_8registry7sharded8RegistryENtNtB2n_6marker4SendNtB5y_4SyncEL_EENtNtB1d_3env9EnvFilterB4V_EB4V_EB4V_EEB5w_B5Q_EL_EEB66_B3P_EENtNtNtB2n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i), !noalias !609
  br label %_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E17register_callsiteCsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.p, %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !609
  unreachable

bb.i:                                             ; preds = %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i
  %i.v = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !610
  %i.w = and i64 %i.v, 9223372036854775807
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.l unwind label %bb.g, !noalias !610

bb.k:                                             ; preds = %bb.l, %bb.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #25
          to label %bb.n unwind label %bb.g, !noalias !610

bb.l:                                             ; preds = %bb.j
  br i1 %i.y, label %bb.k, label %bb.m, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.a, align 8, !range !11, !noalias !610, !noundef !6
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.o, label %_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E17register_callsiteCsl8OoimOLbh_6qdrant.exit.thread

bb.n:                                             ; preds = %bb.k
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.sink.split.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB24_5layer5LayerINtNtB46_7layered7LayeredINtNtB24_6reload5LayerIB1Y_IB38_IB3u_DIB44_NtNtNtB24_8registry7sharded8RegistryENtNtB4_6marker4SendNtB67_4SyncEL_EENtNtB22_3env9EnvFilterB5u_EB5u_EB5u_EEB65_B6o_EL_EEB6E_B4o_EEINtB12_11PoisonErrorBX_EEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit.i
  resume { ptr, i32 } %.pn.i

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1f_5layer5LayerINtNtB3x_7layered7LayeredINtNtB1f_6reload5LayerIB19_IB2j_IB2V_DIB3v_NtNtNtB1f_8registry7sharded8RegistryENtNtB2n_6marker4SendNtB5y_4SyncEL_EENtNtB1d_3env9EnvFilterB4V_EB4V_EB4V_EEB5w_B5Q_EL_EEB66_B3P_EENtNtNtB2n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB24_5layer5LayerINtNtB46_7layered7LayeredINtNtB24_6reload5LayerIB1Y_IB38_IB3u_DIB44_NtNtNtB24_8registry7sharded8RegistryENtNtB4_6marker4SendNtB67_4SyncEL_EENtNtB22_3env9EnvFilterB5u_EB5u_EB5u_EEB65_B6o_EL_EEB6E_B4o_EEINtB12_11PoisonErrorBX_EEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.h, !noalias !609

_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E17register_callsiteCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i, %.sink.split.i
  %.sroa.0.0.i = phi i8 [ %.sroa.0.0.ph.i, %.sink.split.i ], [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1I_5layer5LayerINtNtB3K_7layered7LayeredINtNtB1I_6reload5LayerIB1C_IB2M_IB38_DIB3I_NtNtNtB1I_8registry7sharded8RegistryENtNtB4_6marker4SendNtB5L_4SyncEL_EENtNtB1G_3env9EnvFilterB58_EB58_EB58_EEB5J_B62_EL_EEB6i_B42_EEECsl8OoimOLbh_6qdrant.exit3.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !610
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 569
  %i.ae = load i8, ptr %i.ad, align 1, !range !12, !noundef !6
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.r, label %bb.q

_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E17register_callsiteCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !610
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 569
  %i.ah = load i8, ptr %i.ag, align 1, !range !12, !noundef !6
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.r, label %.thread8

.thread8:                                         ; preds = %_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E17register_callsiteCsl8OoimOLbh_6qdrant.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = call noundef range(i8 0, 3) i8 @_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerNtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB48_4SyncEL_EENtNtB1y_3env9EnvFilterB3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber17register_callsiteCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) ; 0 uses
  br label %_RINvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB6_7LayeredINtNtBa_6reload5LayerINtNtNtBa_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB8_5LayerIBX_IB1b_IB1w_IB2b_IB2N_DIB3n_NtNtNtBa_8registry7sharded8RegistryENtNtB2f_6marker4SendNtB4E_4SyncEL_EENtNtB1A_3env9EnvFilterB42_EB42_EB42_EEB4C_B4W_EL_EEB5c_B3y_EB3y_EB3y_E13pick_interestNCNvXs_B6_BW_NtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber17register_callsite0ECsl8OoimOLbh_6qdrant.exit

bb.q:                                             ; preds = %_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E17register_callsiteCsl8OoimOLbh_6qdrant.exit
  %i.al = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.al, label %bb.s, label %bb.t

bb.r:                                             ; preds = %_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E17register_callsiteCsl8OoimOLbh_6qdrant.exit.thread, %_RNvXNtCs4hE0XgIM7pO_18tracing_subscriber6reloadINtB2_5LayerINtNtNtB4_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB4_5layer5LayerINtNtB2P_7layered7LayeredIBK_IBW_IB1B_IB2d_DIB2N_NtNtNtB4_8registry7sharded8RegistryENtNtB1F_6marker4SendNtB4v_4SyncEL_EENtNtB10_3env9EnvFilterB3T_EB3T_EB3T_EEB4t_B4N_EL_EEB53_B36_EB36_EIB2N_B36_E17register_callsiteCsl8OoimOLbh_6qdrant.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = call noundef range(i8 0, 3) i8 @_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerNtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB48_4SyncEL_EENtNtB1y_3env9EnvFilterB3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber17register_callsiteCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  br label %_RINvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB6_7LayeredINtNtBa_6reload5LayerINtNtNtBa_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB8_5LayerIBX_IB1b_IB1w_IB2b_IB2N_DIB3n_NtNtNtBa_8registry7sharded8RegistryENtNtB2f_6marker4SendNtB4E_4SyncEL_EENtNtB1A_3env9EnvFilterB42_EB42_EB42_EEB4C_B4W_EL_EEB5c_B3y_EB3y_EB3y_E13pick_interestNCNvXs_B6_BW_NtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber17register_callsite0ECsl8OoimOLbh_6qdrant.exit

bb.s:                                             ; preds = %bb.q
  %i.ao = call noundef i8 @_RNvMsd_NtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filtersNtB5_11FilterState13take_interest() ; 0 uses
  br label %_RINvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB6_7LayeredINtNtBa_6reload5LayerINtNtNtBa_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB8_5LayerIBX_IB1b_IB1w_IB2b_IB2N_DIB3n_NtNtNtBa_8registry7sharded8RegistryENtNtB2f_6marker4SendNtB4E_4SyncEL_EENtNtB1A_3env9EnvFilterB42_EB42_EB42_EEB4C_B4W_EL_EEB5c_B3y_EB3y_EB3y_E13pick_interestNCNvXs_B6_BW_NtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber17register_callsite0ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = call noundef range(i8 0, 3) i8 @_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerNtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB48_4SyncEL_EENtNtB1y_3env9EnvFilterB3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber17register_callsiteCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) ; 2 uses
  %i.ar = icmp eq i8 %.sroa.0.0.i, 1
  br i1 %i.ar, label %_RINvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB6_7LayeredINtNtBa_6reload5LayerINtNtNtBa_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB8_5LayerIBX_IB1b_IB1w_IB2b_IB2N_DIB3n_NtNtNtBa_8registry7sharded8RegistryENtNtB2f_6marker4SendNtB4E_4SyncEL_EENtNtB1A_3env9EnvFilterB42_EB42_EB42_EEB4C_B4W_EL_EEB5c_B3y_EB3y_EB3y_E13pick_interestNCNvXs_B6_BW_NtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber17register_callsite0ECsl8OoimOLbh_6qdrant.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = icmp eq i8 %i.aq, 0
  br i1 %i.as, label %bb.v, label %_RINvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB6_7LayeredINtNtBa_6reload5LayerINtNtNtBa_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB8_5LayerIBX_IB1b_IB1w_IB2b_IB2N_DIB3n_NtNtNtBa_8registry7sharded8RegistryENtNtB2f_6marker4SendNtB4E_4SyncEL_EENtNtB1A_3env9EnvFilterB42_EB42_EB42_EEB4C_B4W_EL_EEB5c_B3y_EB3y_EB3y_E13pick_interestNCNvXs_B6_BW_NtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber17register_callsite0ECsl8OoimOLbh_6qdrant.exit

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 570
  %i.au = load i8, ptr %i.at, align 2, !range !12, !noundef !6
  br label %_RINvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB6_7LayeredINtNtBa_6reload5LayerINtNtNtBa_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB8_5LayerIBX_IB1b_IB1w_IB2b_IB2N_DIB3n_NtNtNtBa_8registry7sharded8RegistryENtNtB2f_6marker4SendNtB4E_4SyncEL_EENtNtB1A_3env9EnvFilterB42_EB42_EB42_EEB4C_B4W_EL_EEB5c_B3y_EB3y_EB3y_E13pick_interestNCNvXs_B6_BW_NtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber17register_callsite0ECsl8OoimOLbh_6qdrant.exit

_RINvMs3_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB6_7LayeredINtNtBa_6reload5LayerINtNtNtBa_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB8_5LayerIBX_IB1b_IB1w_IB2b_IB2N_DIB3n_NtNtNtBa_8registry7sharded8RegistryENtNtB2f_6marker4SendNtB4E_4SyncEL_EENtNtB1A_3env9EnvFilterB42_EB42_EB42_EEB4C_B4W_EL_EEB5c_B3y_EB3y_EB3y_E13pick_interestNCNvXs_B6_BW_NtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber17register_callsite0ECsl8OoimOLbh_6qdrant.exit: ; preds = %.thread8, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.sroa.0.0.i2 = phi i8 [ %i.an, %bb.r ], [ 0, %bb.s ], [ %i.aq, %bb.u ], [ 1, %bb.t ], [ %i.au, %bb.v ], [ 1, %.thread8 ]
  ret i8 %.sroa.0.0.i2
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerIBV_IB19_IB1u_IB29_IB2L_DIB3l_NtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB4C_4SyncEL_EENtNtB1y_3env9EnvFilterB40_EB40_EB40_EEB4A_B4U_EL_EEB5a_B3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber19record_follows_fromCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_RNvXs_NtNtCs4hE0XgIM7pO_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtB8_6reload5LayerINtNtNtB8_6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtB6_5LayerNtNtNtB8_8registry7sharded8RegistryENtNtB2d_6marker4SendNtB48_4SyncEL_EENtNtB1y_3env9EnvFilterB3w_EB3w_EB3w_ENtNtCs2QK82Vyr5sR_12tracing_core10subscriber10Subscriber19record_follows_fromCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !616
  %i.d = load ptr, ptr %0, align 8, !alias.scope !615, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 4, !noalias !616 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.f, 1073741822
  br i1 %or.cond3.i.i, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.f, 1
  %i.h = cmpxchg weak ptr %i.e, i32 %i.f, i32 %i.g acquire monotonic, align 4, !noalias !616
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.e), !noalias !616
  br label %_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i

_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i: ; preds = %bb.c, %bb.b
  call void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtCs4hE0XgIM7pO_18tracing_subscriber6filter13layer_filters8FilteredINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtB1f_5layer5LayerINtNtB3x_7layered7LayeredINtNtB1f_6reload5LayerIB19_IB2j_IB2V_DIB3v_NtNtNtB1f_8registry7sharded8RegistryENtNtB2n_6marker4SendNtB5y_4SyncEL_EENtNtB1d_3env9EnvFilterB4V_EB4V_EB4V_EEB5w_B5Q_EL_EEB66_B3P_EE3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.e), !noalias !616
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noalias !616, !noundef !6
end_hunk_0
