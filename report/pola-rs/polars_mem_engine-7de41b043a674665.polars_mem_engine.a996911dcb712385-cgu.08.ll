Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_mem_engine-7de41b043a674665.polars_mem_engine.a996911dcb712385-cgu.08?download=true
inline.NumInlined: 3315
inline.NumDeleted: 1634
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3W_7StealerB4G_EENCINvNvNtB2T_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3T_EIB6i_B50_EEB3S_E0E0ECseyIfFeUOWMb_17polars_mem_engine:bb.a
  %exitcond12.not.i = icmp eq i64 %i.o, %i.f, !dbg !9973
  br i1 %exitcond12.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %.lr.ph.split.us.i, !dbg !9989

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i
  %.sroa.0.09.i = phi i64 [ %i.t, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9994
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_lifoCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !10054, !noalias !10005
  %i.q = load ptr, ptr %i.b, align 8, !dbg !10006, !noalias !10020, !nonnull !13, !noundef !13 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !10021, !noalias !10005
  %i.s = icmp slt i64 %i.r, 0, !dbg !10026
  br i1 %i.s, label %.split.us.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !10026

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  call void @llvm.trap(), !dbg !10055
  unreachable, !dbg !10055

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %.lr.ph.split.i
  %i.t = add i64 %.sroa.0.09.i, 1, !dbg !10028    ; 2 uses
  %i.u = load i8, ptr %i.k, align 8, !dbg !10035, !range !7523, !noalias !10020, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10036, !noalias !10039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !10042, !noalias !9994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10044, !noalias !9994
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !10036, !noalias !9994
  store i8 %i.u, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !10036, !noalias !9994
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !10045, !noalias !10052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10053, !noalias !10039
  %exitcond.not.i = icmp eq i64 %i.t, %i.f, !dbg !9973
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %.lr.ph.split.i, !dbg !9989

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i, %bb.a
  ret void, !dbg !10056
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3W_7StealerB4G_EENCINvNvNtB2T_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3T_EIB67_B50_EEB3S_E0E0ECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10057 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10058
  %i.d = load i64, ptr %i.c, align 8, !dbg !10058, !noundef !13 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10058
  %i.f = load i64, ptr %i.e, align 8, !dbg !10058, !noundef !13 ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !dbg !10059, !nonnull !13, !noundef !13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10060), !dbg !10063
  %i.h = icmp ult i64 %i.d, %i.f, !dbg !10064
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !10072

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = load i8, ptr %i.g, align 1, !range !7523, !alias.scope !10060, !noalias !10073, !noundef !13
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i
  %.sroa.0.09.us.i = phi i64 [ %i.o, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10077
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !10078, !noalias !10082
  %i.l = load ptr, ptr %i.b, align 8, !dbg !10083, !noalias !10088, !nonnull !13, !noundef !13 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !dbg !10089, !noalias !10082
  %i.n = icmp slt i64 %i.m, 0, !dbg !10092
  br i1 %i.n, label %.split.us.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i, !dbg !10092

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.o = add i64 %.sroa.0.09.us.i, 1, !dbg !10093 ; 2 uses
  %i.p = load i8, ptr %i.k, align 8, !dbg !10096, !range !7523, !noalias !10088, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10097, !noalias !10100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !10103, !noalias !10077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10104, !noalias !10077
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !10097, !noalias !10077
  store i8 %i.p, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !10097, !noalias !10077
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !10105, !noalias !10109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10110, !noalias !10100
  %exitcond12.not.i = icmp eq i64 %i.o, %i.f, !dbg !10064
  br i1 %exitcond12.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %.lr.ph.split.us.i, !dbg !10072

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i
  %.sroa.0.09.i = phi i64 [ %i.t, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10077
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_lifoCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !10111, !noalias !10082
  %i.q = load ptr, ptr %i.b, align 8, !dbg !10083, !noalias !10088, !nonnull !13, !noundef !13 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !10089, !noalias !10082
  %i.s = icmp slt i64 %i.r, 0, !dbg !10092
  br i1 %i.s, label %.split.us.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !10092

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  call void @llvm.trap(), !dbg !10112
  unreachable, !dbg !10112

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %.lr.ph.split.i
  %i.t = add i64 %.sroa.0.09.i, 1, !dbg !10093    ; 2 uses
  %i.u = load i8, ptr %i.k, align 8, !dbg !10096, !range !7523, !noalias !10088, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10097, !noalias !10100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !10103, !noalias !10077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10104, !noalias !10077
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !10097, !noalias !10077
  store i8 %i.u, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !10097, !noalias !10077
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !10105, !noalias !10109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10110, !noalias !10100
  %exitcond.not.i = icmp eq i64 %i.t, %i.f, !dbg !10064
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %.lr.ph.split.i, !dbg !10072

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i, %bb.a
  ret void, !dbg !10113
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3V_EIB6k_B52_EEB3U_E0E0ECseyIfFeUOWMb_17polars_mem_engine(i64 noundef %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10114 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %0, %1, !dbg !10115
  br i1 %i.c, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !10123

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b, !dbg !10123

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10124, !noalias !10129
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !10124, !noalias !10132
  %i.e = load ptr, ptr %i.b, align 8, !dbg !10135, !noalias !10145, !nonnull !13, !noundef !13 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !10146, !noalias !10132
  %i.g = icmp slt i64 %i.f, 0, !dbg !10151
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !10151

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap(), !dbg !10153
  unreachable, !dbg !10153

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %bb.b
  %i.h = add i64 %.sroa.0.08.i, 1, !dbg !10154    ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !dbg !10157, !range !7523, !noalias !10145, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10158, !noalias !10160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !10163, !noalias !10129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10165, !noalias !10129
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !10158, !noalias !10129
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !10158, !noalias !10129
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !10166, !noalias !10168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10169, !noalias !10160
  %exitcond.not.i = icmp eq i64 %i.h, %1, !dbg !10115
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.b, !dbg !10123

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %bb.a
  ret void, !dbg !10170
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3V_EIB69_B52_EEB3U_E0E0ECseyIfFeUOWMb_17polars_mem_engine(i64 noundef %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10171 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %0, %1, !dbg !10172
  br i1 %i.c, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !10180

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b, !dbg !10180

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10181, !noalias !10185
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !10181, !noalias !10188
  %i.e = load ptr, ptr %i.b, align 8, !dbg !10191, !noalias !10196, !nonnull !13, !noundef !13 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !10197, !noalias !10188
  %i.g = icmp slt i64 %i.f, 0, !dbg !10200
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !10200

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap(), !dbg !10201
  unreachable, !dbg !10201

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %bb.b
  %i.h = add i64 %.sroa.0.08.i, 1, !dbg !10202    ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !dbg !10205, !range !7523, !noalias !10196, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10206, !noalias !10208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !10211, !noalias !10185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10212, !noalias !10185
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !10206, !noalias !10185
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !10206, !noalias !10185
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !10213, !noalias !10215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10216, !noalias !10208
  %exitcond.not.i = icmp eq i64 %i.h, %1, !dbg !10172
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.b, !dbg !10180

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %bb.a
  ret void, !dbg !10217
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1y_5array5ArrayEL_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3G_8try_folduNCINvNvB3G_12try_for_each4callB2F_INtNtB12_12control_flow11ControlFlowB2F_ENcNtB7c_5Break0E0B7c_E0IB7d_B7c_EECseyIfFeUOWMb_17polars_mem_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10218 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca [8 x i8], align 8           ; 5 uses
  %.sroa.73.i = alloca [8 x i8], align 8          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10219 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10220), !dbg !10223
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10224), !dbg !10223
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10226
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10233), !dbg !10236
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10237), !dbg !10236
  %i.e = load i64, ptr %i.c, align 8, !dbg !10239, !alias.scope !10241, !noalias !10246, !noundef !13 ; 5 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !10247, !alias.scope !10248, !noalias !10249, !noundef !13
  %i.g = icmp ult i64 %i.e, %i.f, !dbg !10239
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !10236

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.e, 1, !dbg !10250
  store i64 %i.h, ptr %i.c, align 8, !dbg !10253, !alias.scope !10254, !noalias !10220
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !10255
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !10255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10256), !dbg !10255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10259
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !10260, !noalias !10263, !nonnull !13, !align !1297, !noundef !13 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10260
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !10260, !noalias !10263, !nonnull !13, !align !1297, !noundef !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !10264 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !10264, !noalias !10274
  %i.l = load ptr, ptr %.val2.i.i, align 8, !dbg !10277, !noalias !10274, !nonnull !13, !align !1297, !noundef !13 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !10277
  %i.n = load i64, ptr %i.m, align 8, !dbg !10277, !noalias !10274, !noundef !13 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 4, !dbg !10278
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i, !dbg !10278
  %i.p = icmp eq i64 %i.n, 0, !dbg !10289
  br i1 %i.p, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %.lr.ph.i.i.i, !dbg !10298

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c, !dbg !10298

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.01.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 16, !dbg !10299 ; 2 uses
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.01.i.i.i, align 8, !dbg !10302, !noalias !10274, !nonnull !13, !noundef !13
  %i.s = getelementptr i8, ptr %.sroa.03.01.i.i.i, i64 8, !dbg !10302
  %.sroa.03.0.val6.i.i.i = load ptr, ptr %i.s, align 8, !dbg !10302, !noalias !10274, !nonnull !13, !align !1297, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val6.i.i.i, i64 32, !dbg !10304
  %i.u = load ptr, ptr %i.t, align 8, !dbg !10304, !invariant.load !13, !noalias !10274, !nonnull !13
  %i.v = call { ptr, ptr } %i.u(ptr noundef nonnull %.sroa.03.0.val.i.i.i) #42, !dbg !10305, !noalias !10274, !inline_history !10306 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0, !dbg !10305 ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1, !dbg !10305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10307, !noalias !10274
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !10313
  %i.z = load ptr, ptr %i.y, align 8, !dbg !10313, !invariant.load !13, !noalias !10274, !nonnull !13
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.w) #42, !dbg !10317, !noalias !10274, !inline_history !10306
  %i.aa = load i128, ptr %i.a, align 16, !dbg !10318, !noalias !10274, !noundef !13
  %i.ab = icmp eq i128 %i.aa, -45368836931846941537534090947142636873, !dbg !10331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10307, !noalias !10274
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !10332, !prof !5134

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #41, !dbg !10333, !noalias !10274
  unreachable, !dbg !10333

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.ac = getelementptr i8, ptr %i.w, i64 16, !dbg !10336
  %.val7.i.i.i = load i64, ptr %i.ac, align 8, !dbg !10336, !noalias !10274, !noundef !13 ; 2 uses
  %i.ad = icmp ult i64 %i.e, %.val7.i.i.i, !dbg !10338
  br i1 %i.ad, label %bb.f, label %bb.h, !dbg !10338

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.w, i64 8, !dbg !10336
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !10336, !noalias !10274, !nonnull !13, !noundef !13
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.e, !dbg !10339
  %i.ag = load i64, ptr %i.k, align 8, !dbg !10340, !alias.scope !10345, !noalias !10348, !noundef !13 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i, align 8, !dbg !10350, !range !1133, !alias.scope !10345, !noalias !10348, !noundef !13
  %i.ai = icmp eq i64 %i.ag, %i.ah, !dbg !10356
  br i1 %i.ai, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !10356

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i), !dbg !10357, !noalias !10348
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !10357

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !10358, !alias.scope !10345, !noalias !10348, !nonnull !13, !noundef !13
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag, !dbg !10367
  store ptr %i.af, ptr %i.ak, align 8, !dbg !10370, !noalias !10348
  %i.al = add i64 %i.ag, 1, !dbg !10374           ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !dbg !10374, !alias.scope !10345, !noalias !10348
  %i.am = icmp eq ptr %i.r, %i.o, !dbg !10289
  br i1 %i.am, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %bb.c, !dbg !10298

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val7.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #41, !dbg !10338, !noalias !10274
  unreachable, !dbg !10338

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.b
  %i.an = phi i64 [ 0, %bb.b ], [ %i.al, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ], !dbg !10375
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !10381
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !10381, !noalias !10274, !nonnull !13, !noundef !13
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.an), !dbg !10392, !noalias !10263
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !10393, !noalias !10263 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10393
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !10393, !noalias !10263 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10393
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !10393, !noalias !10263 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10394), !dbg !10393
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !10397
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i, !dbg !10402

bb.i:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  %i.aq = load i64, ptr %3, align 8, !dbg !10403, !range !86, !alias.scope !10406, !noalias !10409, !noundef !13
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !10403
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, label %bb.j, !dbg !10403

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i unwind label %bb.l, !dbg !10411, !noalias !10409

bb.k:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.i, align 8, !dbg !10413, !alias.scope !10418, !noalias !10419
  br label %bb.m, !dbg !10420

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !10421, !noalias !10409
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !10421
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !10421, !noalias !10409
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !10421
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !10421, !noalias !10409
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !10421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !10421, !noalias !10263
  resume { ptr, i32 } %i.as, !dbg !10422

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !10421, !noalias !10409
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !10421
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !10421, !noalias !10409
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !10421
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !10421, !noalias !10409
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !10421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !10421, !noalias !10263
  br label %bb.m, !dbg !10423

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.k
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.k ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.k ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !10424, !alias.scope !10418, !noalias !10419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10425, !noalias !10259
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !10426, !alias.scope !10429, !noalias !10432
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !10426, !alias.scope !10429, !noalias !10432
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !10434
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !10434
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10435
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.at, align 8, !dbg !10435, !alias.scope !10441, !noalias !10224
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10435
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.au, align 8, !dbg !10435, !alias.scope !10441, !noalias !10224
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !10444

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.a, %bb.m
  %storemerge.i = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], !dbg !10445
  store i64 %storemerge.i, ptr %0, align 8, !dbg !10445, !alias.scope !10220, !noalias !10224
  ret void, !dbg !10446
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB1y_5array5ArrayEL_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB37_8try_folduNCINvNvB37_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxB2G_EINtNtB12_12control_flow11ControlFlowB6z_ENcNtB7d_5Break0E0B7d_E0IB7e_B7d_EECseyIfFeUOWMb_17polars_mem_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10447 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca [8 x i8], align 8           ; 5 uses
  %.sroa.73.i = alloca [8 x i8], align 8          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10448 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10449), !dbg !10452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10453), !dbg !10452
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10462), !dbg !10465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10466), !dbg !10465
  %i.e = load i64, ptr %i.c, align 8, !dbg !10468, !alias.scope !10470, !noalias !10475, !noundef !13 ; 5 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !10476, !alias.scope !10477, !noalias !10478, !noundef !13
  %i.g = icmp ult i64 %i.e, %i.f, !dbg !10468
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB39_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !10465

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.e, 1, !dbg !10479
  store i64 %i.h, ptr %i.c, align 8, !dbg !10482, !alias.scope !10483, !noalias !10449
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !10484
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !10484
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10485), !dbg !10484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10488
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !10489, !noalias !10492, !nonnull !13, !align !1297, !noundef !13 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10489
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !10489, !noalias !10492, !nonnull !13, !align !1297, !noundef !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !10493 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !10493, !noalias !10499
  %i.l = load ptr, ptr %.val2.i.i, align 8, !dbg !10502, !noalias !10499, !nonnull !13, !align !1297, !noundef !13 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !10502
  %i.n = load i64, ptr %i.m, align 8, !dbg !10502, !noalias !10499, !noundef !13 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 4, !dbg !10503
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i, !dbg !10503
  %i.p = icmp eq i64 %i.n, 0, !dbg !10514
  br i1 %i.p, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %.lr.ph.i.i.i, !dbg !10523

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c, !dbg !10523

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.01.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 16, !dbg !10524 ; 2 uses
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.01.i.i.i, align 8, !dbg !10527, !noalias !10499, !nonnull !13, !noundef !13
  %i.s = getelementptr i8, ptr %.sroa.03.01.i.i.i, i64 8, !dbg !10527
  %.sroa.03.0.val7.i.i.i = load ptr, ptr %i.s, align 8, !dbg !10527, !noalias !10499, !nonnull !13, !align !1297, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val7.i.i.i, i64 32, !dbg !10529
  %i.u = load ptr, ptr %i.t, align 8, !dbg !10529, !invariant.load !13, !noalias !10499, !nonnull !13
  %i.v = call { ptr, ptr } %i.u(ptr noundef nonnull %.sroa.03.0.val.i.i.i) #42, !dbg !10530, !noalias !10499, !inline_history !10531 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0, !dbg !10530 ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1, !dbg !10530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10532, !noalias !10499
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !10535
  %i.z = load ptr, ptr %i.y, align 8, !dbg !10535, !invariant.load !13, !noalias !10499, !nonnull !13
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.w) #42, !dbg !10539, !noalias !10499, !inline_history !10531
  %i.aa = load i128, ptr %i.a, align 16, !dbg !10540, !noalias !10499, !noundef !13
  %i.ab = icmp eq i128 %i.aa, -45368836931846941537534090947142636873, !dbg !10550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10532, !noalias !10499
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !10551, !prof !5134

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #41, !dbg !10552, !noalias !10499
  unreachable, !dbg !10552

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.ac = getelementptr i8, ptr %i.w, i64 16, !dbg !10555
  %.val6.i.i.i = load i64, ptr %i.ac, align 8, !dbg !10555, !noalias !10499, !noundef !13 ; 2 uses
  %i.ad = icmp ult i64 %i.e, %.val6.i.i.i, !dbg !10557
  br i1 %i.ad, label %bb.f, label %bb.h, !dbg !10557

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.w, i64 8, !dbg !10555
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !10555, !noalias !10499, !nonnull !13, !noundef !13
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.e, !dbg !10558
  %i.ag = load i64, ptr %i.k, align 8, !dbg !10559, !alias.scope !10563, !noalias !10566, !noundef !13 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i, align 8, !dbg !10568, !range !1133, !alias.scope !10563, !noalias !10566, !noundef !13
  %i.ai = icmp eq i64 %i.ag, %i.ah, !dbg !10571
  br i1 %i.ai, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !10571

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i), !dbg !10572, !noalias !10566
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !10572

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !10573, !alias.scope !10563, !noalias !10566, !nonnull !13, !noundef !13
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag, !dbg !10578
  store ptr %i.af, ptr %i.ak, align 8, !dbg !10580, !noalias !10566
  %i.al = add i64 %i.ag, 1, !dbg !10582           ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !dbg !10582, !alias.scope !10563, !noalias !10566
  %i.am = icmp eq ptr %i.r, %i.o, !dbg !10514
  br i1 %i.am, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %bb.c, !dbg !10523

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val6.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #41, !dbg !10557, !noalias !10499
  unreachable, !dbg !10557

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.b
  %i.an = phi i64 [ 0, %bb.b ], [ %i.al, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ], !dbg !10583
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !10588
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !10588, !noalias !10499, !nonnull !13, !noundef !13
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.an), !dbg !10599, !noalias !10492
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !10600, !noalias !10492 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10600
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !10600, !noalias !10492 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10600
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !10600, !noalias !10492 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10601), !dbg !10600
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !10604
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i, !dbg !10608

bb.i:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  %i.aq = load i64, ptr %3, align 8, !dbg !10609, !range !86, !alias.scope !10612, !noalias !10615, !noundef !13
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !10609
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, label %bb.j, !dbg !10609

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i unwind label %bb.l, !dbg !10617, !noalias !10615

bb.k:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.i, align 8, !dbg !10619, !alias.scope !10624, !noalias !10625
  br label %bb.m, !dbg !10626

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !10627, !noalias !10615
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !10627
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !10627, !noalias !10615
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !10627
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !10627, !noalias !10615
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !10627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !10627, !noalias !10492
  resume { ptr, i32 } %i.as, !dbg !10628

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !10627, !noalias !10615
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !10627
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !10627, !noalias !10615
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !10627
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !10627, !noalias !10615
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !10627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !10627, !noalias !10492
  br label %bb.m, !dbg !10629

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.k
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.k ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.k ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !10630, !alias.scope !10624, !noalias !10625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10631, !noalias !10488
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !10632, !alias.scope !10634, !noalias !10637
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !10632, !alias.scope !10634, !noalias !10637
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !10639
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !10639
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10640
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.at, align 8, !dbg !10640, !alias.scope !10644, !noalias !10453
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10640
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.au, align 8, !dbg !10640, !alias.scope !10644, !noalias !10453
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB39_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !10647

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB39_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.a, %bb.m
  %storemerge.i = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], !dbg !10648
  store i64 %storemerge.i, ptr %0, align 8, !dbg !10648, !alias.scope !10449, !noalias !10453
  ret void, !dbg !10649
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1y_5array5ArrayEL_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3H_8try_folduNCINvNvB3H_12try_for_each4callB2G_INtNtB12_12control_flow11ControlFlowB2G_ENcNtB7d_5Break0E0B7d_E0IB7e_B7d_EECseyIfFeUOWMb_17polars_mem_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10650 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca [8 x i8], align 8           ; 5 uses
  %.sroa.73.i = alloca [8 x i8], align 8          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10651 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10652), !dbg !10655
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10656), !dbg !10655
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !10658
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10665), !dbg !10668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10669), !dbg !10668
  %i.e = load i64, ptr %i.c, align 8, !dbg !10671, !alias.scope !10673, !noalias !10678, !noundef !13 ; 5 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !10679, !alias.scope !10680, !noalias !10681, !noundef !13
  %i.g = icmp ult i64 %i.e, %i.f, !dbg !10671
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !10668

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.e, 1, !dbg !10682
  store i64 %i.h, ptr %i.c, align 8, !dbg !10685, !alias.scope !10686, !noalias !10652
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !10687
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !10687
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10688), !dbg !10687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10691
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !10692, !noalias !10695, !nonnull !13, !align !1297, !noundef !13 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10692
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !10692, !noalias !10695, !nonnull !13, !align !1297, !noundef !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !10696 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !10696, !noalias !10702
  %i.l = load ptr, ptr %.val2.i.i, align 8, !dbg !10705, !noalias !10702, !nonnull !13, !align !1297, !noundef !13 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !10705
  %i.n = load i64, ptr %i.m, align 8, !dbg !10705, !noalias !10702, !noundef !13 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 3, !dbg !10706
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i, !dbg !10706
  %i.p = icmp eq i64 %i.n, 0, !dbg !10717
  br i1 %i.p, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %.lr.ph.i.i.i, !dbg !10726

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c, !dbg !10726

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.01.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 8, !dbg !10727 ; 2 uses
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.01.i.i.i, align 8, !dbg !10730, !noalias !10702, !nonnull !13, !align !1297, !noundef !13 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.03.0.val.i.i.i, align 8, !dbg !10732, !noalias !10702, !nonnull !13, !noundef !13
  %i.s = getelementptr i8, ptr %.sroa.03.0.val.i.i.i, i64 8, !dbg !10732
  %.val1.i.i.i.i = load ptr, ptr %i.s, align 8, !dbg !10732, !noalias !10702, !nonnull !13, !align !1297, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 32, !dbg !10736
  %i.u = load ptr, ptr %i.t, align 8, !dbg !10736, !invariant.load !13, !noalias !10702, !nonnull !13
  %i.v = call { ptr, ptr } %i.u(ptr noundef nonnull %.val.i.i.i.i) #42, !dbg !10737, !noalias !10702, !inline_history !10738 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0, !dbg !10737 ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1, !dbg !10737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10739, !noalias !10702
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !10742
  %i.z = load ptr, ptr %i.y, align 8, !dbg !10742, !invariant.load !13, !noalias !10702, !nonnull !13
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.w) #42, !dbg !10746, !noalias !10702, !inline_history !10738
  %i.aa = load i128, ptr %i.a, align 16, !dbg !10747, !noalias !10702, !noundef !13
  %i.ab = icmp eq i128 %i.aa, -45368836931846941537534090947142636873, !dbg !10757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10739, !noalias !10702
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !10758, !prof !5134

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #41, !dbg !10759, !noalias !10702
  unreachable, !dbg !10759

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.ac = getelementptr i8, ptr %i.w, i64 16, !dbg !10762
  %.val6.i.i.i = load i64, ptr %i.ac, align 8, !dbg !10762, !noalias !10702, !noundef !13 ; 2 uses
  %i.ad = icmp ult i64 %i.e, %.val6.i.i.i, !dbg !10764
  br i1 %i.ad, label %bb.f, label %bb.h, !dbg !10764

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.w, i64 8, !dbg !10762
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !10762, !noalias !10702, !nonnull !13, !noundef !13
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.e, !dbg !10765
  %i.ag = load i64, ptr %i.k, align 8, !dbg !10766, !alias.scope !10770, !noalias !10773, !noundef !13 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i, align 8, !dbg !10775, !range !1133, !alias.scope !10770, !noalias !10773, !noundef !13
  %i.ai = icmp eq i64 %i.ag, %i.ah, !dbg !10778
  br i1 %i.ai, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !10778

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i), !dbg !10779, !noalias !10773
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !10779

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !10780, !alias.scope !10770, !noalias !10773, !nonnull !13, !noundef !13
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag, !dbg !10785
  store ptr %i.af, ptr %i.ak, align 8, !dbg !10787, !noalias !10773
  %i.al = add i64 %i.ag, 1, !dbg !10789           ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !dbg !10789, !alias.scope !10770, !noalias !10773
  %i.am = icmp eq ptr %i.r, %i.o, !dbg !10717
  br i1 %i.am, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %bb.c, !dbg !10726

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val6.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #41, !dbg !10764, !noalias !10702
  unreachable, !dbg !10764

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.b
  %i.an = phi i64 [ 0, %bb.b ], [ %i.al, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ], !dbg !10790
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !10795
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !10795, !noalias !10702, !nonnull !13, !noundef !13
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.an), !dbg !10806, !noalias !10695
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !10807, !noalias !10695 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10807
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !10807, !noalias !10695 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10807
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !10807, !noalias !10695 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10808), !dbg !10807
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !10811
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i, !dbg !10815

bb.i:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  %i.aq = load i64, ptr %3, align 8, !dbg !10816, !range !86, !alias.scope !10819, !noalias !10822, !noundef !13
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !10816
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, label %bb.j, !dbg !10816

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i unwind label %bb.l, !dbg !10824, !noalias !10822

bb.k:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.i, align 8, !dbg !10826, !alias.scope !10831, !noalias !10832
  br label %bb.m, !dbg !10833

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !10834, !noalias !10822
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !10834
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !10834, !noalias !10822
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !10834
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !10834, !noalias !10822
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !10834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !10834, !noalias !10695
  resume { ptr, i32 } %i.as, !dbg !10835

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !10834, !noalias !10822
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !10834
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !10834, !noalias !10822
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !10834
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !10834, !noalias !10822
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !10834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !10834, !noalias !10695
  br label %bb.m, !dbg !10836

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.k
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.k ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.k ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !10837, !alias.scope !10831, !noalias !10832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10838, !noalias !10691
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !10839, !alias.scope !10841, !noalias !10844
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !10839, !alias.scope !10841, !noalias !10844
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !10846
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !10846
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10847
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.at, align 8, !dbg !10847, !alias.scope !10851, !noalias !10656
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10847
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.au, align 8, !dbg !10847, !alias.scope !10851, !noalias !10656
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !10854

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.a, %bb.m
  %storemerge.i = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], !dbg !10855
  store i64 %storemerge.i, ptr %0, align 8, !dbg !10855, !alias.scope !10652, !noalias !10656
  ret void, !dbg !10856
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB1w_6BufferNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecB4e_E14extend_trustedBN_E0E0ECseyIfFeUOWMb_17polars_mem_engine(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !10857 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !10858, !nonnull !13, !noundef !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !10858
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !10858
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0), !dbg !10861
  %.val5.i = add i64 %.sroa.4.0.copyload, %i.a, !dbg !10861
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !10868, !noalias !10877
  ret void, !dbg !10880
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtB1y_9dataframe9DataFrame12split_chunkss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callB2e_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4e_3VecB2e_E14extend_trustedBN_E0E0ECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10881 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !10882
  %i.g = load i64, ptr %i.f, align 8, !dbg !10882, !noundef !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !10882
  %i.i = load i64, ptr %i.h, align 8, !dbg !10882, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10883
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !10884 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !10884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !dbg !10884
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10886), !dbg !10889
  %i.k = icmp ult i64 %i.g, %i.i, !dbg !10890
  br i1 %i.k, label %.lr.ph.i, label %.._crit_edge_crit_edge.i, !dbg !10898

.._crit_edge_crit_edge.i:                         ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.val5.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !dbg !10899, !alias.scope !10886
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameuNCNvMs_NtB29_6chunksB25_12split_chunkss_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4j_3VecB25_E14extend_trustedINtB1B_3MapB3_B33_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !10898

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  br label %bb.b, !dbg !10898

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameuNCNvMs_NtBZ_6chunksBV_12split_chunkss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1T_EE0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %.lr.ph.i
  %.sroa.0.026.i = phi i64 [ %i.g, %.lr.ph.i ], [ %i.u, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameuNCNvMs_NtBZ_6chunksBV_12split_chunkss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1T_EE0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i ] ; 5 uses
  %i.u = add i64 %.sroa.0.026.i, 1, !dbg !10900   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10903), !dbg !10906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10907, !noalias !10886
  call void @llvm.experimental.noalias.scope.decl(metadata !10910), !dbg !10907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10913
  store i64 %.sroa.0.026.i, ptr %i.c, align 8, !noalias !10914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10916, !noalias !10914
  %i.v = load i64, ptr %i.e, align 8, !dbg !10923, !range !674, !alias.scope !10924, !noalias !10925, !noundef !13
  %i.w = trunc nuw i64 %i.v to i1, !dbg !10926
  br i1 %i.w, label %bb.c, label %bb.g, !dbg !10926

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.l, align 8, !dbg !10929, !alias.scope !10924, !noalias !10925, !nonnull !13, !align !1297, !noundef !13 ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !dbg !10923, !alias.scope !10924, !noalias !10925 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !10930
  %i.aa = load i64, ptr %i.z, align 8, !dbg !10930, !noalias !10942, !noundef !13 ; 2 uses
  %i.ab = icmp ult i64 %i.y, %i.aa, !dbg !10943
  br i1 %i.ab, label %bb.d, label %.invoke.i, !dbg !10943

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !10944
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !10944, !noalias !10942, !nonnull !13, !noundef !13
  %i.ae = getelementptr inbounds nuw [160 x i8], ptr %i.ad, i64 %i.y, !dbg !10943 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 16, !dbg !10953, !range !1726, !noalias !10942, !noundef !13
  %.not.i.i.i.i = icmp eq i8 %i.af, 31, !dbg !10953
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e, !dbg !10956, !prof !5134

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #41
          to label %.noexc8.i unwind label %.loopexit.split-lp.i, !dbg !10957

.noexc8.i:                                        ; preds = %bb.e
  unreachable, !dbg !10957

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !10960
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !10967, !noalias !10942, !nonnull !13, !noundef !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !10967
  %i.aj = load ptr, ptr %i.ai, align 16, !dbg !10967, !noalias !10942, !nonnull !13, !align !1297, !noundef !13 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !10978
  %i.al = load i64, ptr %i.ak, align 8, !dbg !10978, !range !1144, !invariant.load !13, !noalias !10942
  %i.am = add nsw i64 %i.al, -1, !dbg !10978
  %i.an = and i64 %i.am, -16, !dbg !10978
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.an, !dbg !10978
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !10978
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 312, !dbg !10943
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !10943, !invariant.load !13, !noalias !10942, !nonnull !13
  %i.as = invoke noundef nonnull align 8 ptr %i.ar(ptr noundef nonnull %i.ap) #42
          to label %.noexc9.i unwind label %.loopexit.i, !dbg !10979, !inline_history !10980 ; 2 uses

.noexc9.i:                                        ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !10981
  %i.au = load i64, ptr %i.at, align 8, !dbg !10981, !noalias !10942, !noundef !13 ; 2 uses
  %i.av = icmp ult i64 %.sroa.0.026.i, %i.au, !dbg !10989
  br i1 %i.av, label %_RNCNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtBa_9dataframe9DataFrame12split_chunkss_00CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, label %.invoke.i, !dbg !10989

.invoke.i:                                        ; preds = %.noexc9.i, %bb.c
  %i.aw = phi i64 [ %i.y, %bb.c ], [ %.sroa.0.026.i, %.noexc9.i ]
  %i.ax = phi i64 [ %i.aa, %bb.c ], [ %i.au, %.noexc9.i ]
  %i.ay = phi ptr [ @26, %bb.c ], [ @27, %.noexc9.i ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay) #41
          to label %.cont.i unwind label %.loopexit.split-lp.i, !dbg !10994

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNCNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtBa_9dataframe9DataFrame12split_chunkss_00CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %.noexc9.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !10995
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !10995, !noalias !10942, !nonnull !13, !noundef !13
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.sroa.0.026.i, !dbg !11008 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !10943, !noalias !10942, !nonnull !13, !noundef !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8, !dbg !10943
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !10943, !noalias !10942, !nonnull !13, !align !1297, !noundef !13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48, !dbg !10943
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !10943, !invariant.load !13, !noalias !10942, !nonnull !13
  %i.bh = invoke noundef i64 %i.bg(ptr noundef nonnull %i.bc) #42
          to label %_RNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtB8_9dataframe9DataFrame12split_chunkss_0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i unwind label %.loopexit.i, !dbg !11009, !inline_history !10980

bb.g:                                             ; preds = %bb.b
  %i.bi = load i64, ptr %i.m, align 8, !dbg !11010, !alias.scope !10924, !noalias !10925, !noundef !13
  %.pre.i.i.i = load ptr, ptr %i.l, align 8, !dbg !11011, !alias.scope !10924, !noalias !10925
  br label %_RNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtB8_9dataframe9DataFrame12split_chunkss_0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, !dbg !11013

_RNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtB8_9dataframe9DataFrame12split_chunkss_0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %bb.g, %_RNCNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtBa_9dataframe9DataFrame12split_chunkss_00CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i
  %i.bj = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.x, %_RNCNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtBa_9dataframe9DataFrame12split_chunkss_00CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ], !dbg !11011 ; 2 uses
  %storemerge.i.i.i = phi i64 [ %i.bi, %bb.g ], [ %i.bh, %_RNCNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtBa_9dataframe9DataFrame12split_chunkss_00CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ], !dbg !11016
  store i64 %storemerge.i.i.i, ptr %i.b, align 8, !dbg !11016, !noalias !10914
  %i.bk = getelementptr i8, ptr %i.bj, i64 8, !dbg !11017
  %.val5.i.i.i = load ptr, ptr %i.bk, align 8, !dbg !11017, !noalias !10942, !nonnull !13, !noundef !13 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 16, !dbg !11017
  %.val6.i.i.i = load i64, ptr %i.bl, align 8, !dbg !11017, !noalias !10942, !noundef !13
  %i.bm = getelementptr inbounds nuw [160 x i8], ptr %.val5.i.i.i, i64 %.val6.i.i.i, !dbg !11018
  store ptr %.val5.i.i.i, ptr %i.a, align 8, !dbg !11027, !noalias !10914
  store ptr %i.bm, ptr %i.p, align 8, !dbg !11027, !noalias !10914
  store ptr %i.c, ptr %i.q, align 8, !dbg !11027, !noalias !10914
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !11027, !noalias !10914
  store ptr %i.b, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !dbg !11027, !noalias !10914
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterB13_ENCNCNvMs_NtB17_6chunksNtNtB17_9dataframe9DataFrame12split_chunkss_0s_0EE9from_iterCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameuNCNvMs_NtBZ_6chunksBV_12split_chunkss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1T_EE0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i unwind label %.loopexit.i, !dbg !11032

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameuNCNvMs_NtBZ_6chunksBV_12split_chunkss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1T_EE0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %_RNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtB8_9dataframe9DataFrame12split_chunkss_0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  %i.bn = load i64, ptr %i.b, align 8, !dbg !11043, !noalias !10914, !noundef !13 ; 2 uses
  %i.bo = load i64, ptr %i.o, align 8, !dbg !11045, !alias.scope !10924, !noalias !10925, !noundef !13
  %i.bp = add i64 %i.bo, %i.bn, !dbg !11045
  store i64 %i.bp, ptr %i.o, align 8, !dbg !11045, !alias.scope !10924, !noalias !10925
  store i64 %i.bn, ptr %i.r, align 8, !dbg !11046, !noalias !10913
  store i32 3, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !11046, !noalias !10913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11051, !noalias !10914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11052, !noalias !10913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11052, !noalias !10913
  %i.bq = load ptr, ptr %i.s, align 8, !dbg !11053, !alias.scope !11058, !noalias !11063, !noundef !13
  %i.br = load i64, ptr %i.t, align 8, !dbg !11066, !alias.scope !11058, !noalias !11063, !noundef !13 ; 2 uses
  %i.bs = getelementptr inbounds nuw [48 x i8], ptr %i.bq, i64 %i.br, !dbg !11069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.d, i64 48, i1 false), !dbg !11072
  %i.bt = add i64 %i.br, 1, !dbg !11075           ; 2 uses
  store i64 %i.bt, ptr %i.t, align 8, !dbg !11075, !alias.scope !11058, !noalias !11063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11078, !noalias !10886
  %exitcond.not.i = icmp eq i64 %i.u, %i.i, !dbg !10890
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameuNCNvMs_NtB29_6chunksB25_12split_chunkss_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4j_3VecB25_E14extend_trustedINtB1B_3MapB3_B33_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.b, !dbg !10898

.loopexit.i:                                      ; preds = %_RNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtB8_9dataframe9DataFrame12split_chunkss_0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, %_RNCNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtBa_9dataframe9DataFrame12split_chunkss_00CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %.invoke.i, %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %.val6.i = load ptr, ptr %i.j, align 8, !dbg !10899, !alias.scope !10886, !nonnull !13, !align !1297, !noundef !13
  %.val7.i = load i64, ptr %i.t, align 8, !dbg !10899, !alias.scope !10886, !noundef !13
  store i64 %.val7.i, ptr %.val6.i, align 8, !dbg !11079
  resume { ptr, i32 } %lpad.phi.i, !dbg !11088

end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCNvYNtNtNtB1r_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB43_8for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB64_3VecB56_E14extend_trustedBN_E0E0ECseyIfFeUOWMb_17polars_mem_engine:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val16.i, i64 %i.l, !dbg !17016
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !17016
  %i.o = getelementptr inbounds nuw i8, ptr %.val17.i, i64 288, !dbg !17038
  %i.p = load ptr, ptr %i.o, align 8, !dbg !17038, !invariant.load !13, !noalias !17033, !nonnull !13
  %i.q = invoke noundef nonnull align 8 ptr %i.p(ptr noundef nonnull %i.n) #42
          to label %.noexc.i unwind label %bb.g, !dbg !17039, !noalias !17013, !inline_history !17040 ; 3 uses

.noexc.i:                                         ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 23, !dbg !17041
  %i.s = load i8, ptr %i.r, align 1, !dbg !17041, !range !1213, !noalias !17033, !noundef !13
  %i.t = icmp eq i8 %i.s, -40, !dbg !17052
  br i1 %i.t, label %bb.d, label %bb.e, !dbg !17052

bb.d:                                             ; preds = %.noexc.i
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #40
          to label %bb.f unwind label %bb.g, !dbg !17053, !noalias !17013

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !17054, !noalias !17057
  br label %bb.f, !dbg !17058

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !17059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !17066, !noalias !17057
  %i.v = add i64 %.val15.i, 1, !dbg !17069        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17072, !noalias !17013
  %i.w = add nuw i64 %.sroa.01.0.i, 1, !dbg !17073 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.f, !dbg !17076
  br i1 %i.x, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls1_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.c, !dbg !17076

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !17077, !noalias !17013
  resume { ptr, i32 } %i.y, !dbg !17086

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls1_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.v, %bb.f ], !dbg !17087
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !17087, !noalias !17013
  ret void, !dbg !17093
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCNvYNtNtNtB1r_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB43_8for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB64_3VecB56_E14extend_trustedBN_E0E0ECseyIfFeUOWMb_17polars_mem_engine(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !17094 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !17095 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !17095
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !17095 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !17095
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !17095
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !17098
  %i.b = icmp eq ptr %0, %1, !dbg !17107
  br i1 %i.b, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls2_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.b, !dbg !17108

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64, !dbg !17109
  %i.d = ptrtoint ptr %0 to i64, !dbg !17109
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !17109
  %i.f = lshr exact i64 %i.e, 4, !dbg !17109
  br label %bb.c, !dbg !17121

bb.c:                                             ; preds = %bb.f, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.v, %bb.f ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.f ], !dbg !17122 ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !17123 ; 2 uses
  %.val16.i = load ptr, ptr %i.g, align 8, !dbg !17127, !noalias !17128, !nonnull !13, !noundef !13
  %i.h = getelementptr i8, ptr %i.g, i64 8, !dbg !17127
  %.val17.i = load ptr, ptr %i.h, align 8, !dbg !17127, !noalias !17128, !nonnull !13, !align !1297, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17128
  %i.i = getelementptr inbounds nuw i8, ptr %.val17.i, i64 16, !dbg !17131
  %i.j = load i64, ptr %i.i, align 8, !dbg !17131, !range !1144, !invariant.load !13, !noalias !17142
  %i.k = add nsw i64 %i.j, -1, !dbg !17131
  %i.l = and i64 %i.k, -16, !dbg !17131
  %i.m = getelementptr inbounds nuw i8, ptr %.val16.i, i64 %i.l, !dbg !17131
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !17131
  %i.o = getelementptr inbounds nuw i8, ptr %.val17.i, i64 288, !dbg !17147
  %i.p = load ptr, ptr %i.o, align 8, !dbg !17147, !invariant.load !13, !noalias !17142, !nonnull !13
  %i.q = invoke noundef nonnull align 8 ptr %i.p(ptr noundef nonnull %i.n) #42
          to label %.noexc.i unwind label %bb.g, !dbg !17148, !noalias !17128, !inline_history !17149 ; 3 uses

.noexc.i:                                         ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 23, !dbg !17150
  %i.s = load i8, ptr %i.r, align 1, !dbg !17150, !range !1213, !noalias !17142, !noundef !13
  %i.t = icmp eq i8 %i.s, -40, !dbg !17161
  br i1 %i.t, label %bb.d, label %bb.e, !dbg !17161

bb.d:                                             ; preds = %.noexc.i
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #40
          to label %bb.f unwind label %bb.g, !dbg !17162, !noalias !17128

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !17163, !noalias !17166
  br label %bb.f, !dbg !17167

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !17168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !17175, !noalias !17166
  %i.v = add i64 %.val15.i, 1, !dbg !17178        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17181, !noalias !17128
  %i.w = add nuw i64 %.sroa.01.0.i, 1, !dbg !17182 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.f, !dbg !17185
  br i1 %i.x, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls2_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.c, !dbg !17185

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !17186, !noalias !17128
  resume { ptr, i32 } %i.y, !dbg !17195

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls2_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.v, %bb.f ], !dbg !17196
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !17196, !noalias !17128
  ret void, !dbg !17202
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCNvYNtNtNtB1r_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB43_8for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB64_3VecB56_E14extend_trustedBN_E0E0ECseyIfFeUOWMb_17polars_mem_engine(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !17203 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !17204 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !17204
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !17204 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !17204
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !17204
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !17207
  %i.b = icmp eq ptr %0, %1, !dbg !17216
  br i1 %i.b, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls3_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.b, !dbg !17217

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64, !dbg !17218
  %i.d = ptrtoint ptr %0 to i64, !dbg !17218
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !17218
  %i.f = lshr exact i64 %i.e, 4, !dbg !17218
  br label %bb.c, !dbg !17230

bb.c:                                             ; preds = %bb.f, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.v, %bb.f ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.f ], !dbg !17231 ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !17232 ; 2 uses
  %.val16.i = load ptr, ptr %i.g, align 8, !dbg !17236, !noalias !17237, !nonnull !13, !noundef !13
  %i.h = getelementptr i8, ptr %i.g, i64 8, !dbg !17236
  %.val17.i = load ptr, ptr %i.h, align 8, !dbg !17236, !noalias !17237, !nonnull !13, !align !1297, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17237
  %i.i = getelementptr inbounds nuw i8, ptr %.val17.i, i64 16, !dbg !17240
  %i.j = load i64, ptr %i.i, align 8, !dbg !17240, !range !1144, !invariant.load !13, !noalias !17251
  %i.k = add nsw i64 %i.j, -1, !dbg !17240
  %i.l = and i64 %i.k, -16, !dbg !17240
  %i.m = getelementptr inbounds nuw i8, ptr %.val16.i, i64 %i.l, !dbg !17240
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !17240
  %i.o = getelementptr inbounds nuw i8, ptr %.val17.i, i64 288, !dbg !17256
  %i.p = load ptr, ptr %i.o, align 8, !dbg !17256, !invariant.load !13, !noalias !17251, !nonnull !13
  %i.q = invoke noundef nonnull align 8 ptr %i.p(ptr noundef nonnull %i.n) #42
          to label %.noexc.i unwind label %bb.g, !dbg !17257, !noalias !17237, !inline_history !17258 ; 3 uses

.noexc.i:                                         ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 23, !dbg !17259
  %i.s = load i8, ptr %i.r, align 1, !dbg !17259, !range !1213, !noalias !17251, !noundef !13
  %i.t = icmp eq i8 %i.s, -40, !dbg !17270
  br i1 %i.t, label %bb.d, label %bb.e, !dbg !17270

bb.d:                                             ; preds = %.noexc.i
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #40
          to label %bb.f unwind label %bb.g, !dbg !17271, !noalias !17237

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !17272, !noalias !17275
  br label %bb.f, !dbg !17276

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !17277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !17284, !noalias !17275
  %i.v = add i64 %.val15.i, 1, !dbg !17287        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17290, !noalias !17237
  %i.w = add nuw i64 %.sroa.01.0.i, 1, !dbg !17291 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.f, !dbg !17294
  br i1 %i.x, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls3_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.c, !dbg !17294

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !17295, !noalias !17237
  resume { ptr, i32 } %i.y, !dbg !17304

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls3_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.v, %bb.f ], !dbg !17305
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !17305, !noalias !17237
  ret void, !dbg !17311
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENCNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp30create_multiple_physical_plans00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3w_8try_folduNCINvNvB3w_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtB2f_9executors8executor8ExecutorEL_EINtNtNtBc_3ops12control_flow11ControlFlowB6Y_ENcNtB8e_5Break0E0B8e_E0IB8f_B8e_EEB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !17312 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca [8 x i8], align 8           ; 5 uses
  %.sroa.73.i = alloca [8 x i8], align 8          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17313), !dbg !17316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17317), !dbg !17316
  %i.b = load ptr, ptr %1, align 8, !dbg !17319, !alias.scope !17326, !noalias !17313, !nonnull !13, !noundef !13 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17329
  %i.d = load ptr, ptr %i.c, align 8, !dbg !17329, !alias.scope !17326, !noalias !17313, !nonnull !13, !noundef !13
  %i.e = icmp eq ptr %i.b, %i.d, !dbg !17331
  br i1 %i.e, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1x_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5N_B3k_EENCNCNvNtNtB40_7planner2lp30create_multiple_physical_plans00NCINvXB2n_INtB2n_12GenericShuntINtB2l_3MapB3_B6C_EIB2Z_NtNtBa_7convert10InfallibleB53_EEB1r_8try_folduNCINvNvB1r_12try_for_each4callB3k_B6r_NcNtB6r_5Break0E0B6r_E0E0B5M_EB40_.exit, label %bb.b, !dbg !17335

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17336
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17337
  store ptr %i.g, ptr %1, align 8, !dbg !17340, !alias.scope !17326, !noalias !17313
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !17341
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !17341
  %.val5.i = load i64, ptr %i.b, align 8, !dbg !17341, !noalias !17342, !noundef !13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17343), !dbg !17341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17342
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17346), !dbg !17349
  %i.i = load ptr, ptr %i.f, align 8, !dbg !17352, !alias.scope !17346, !noalias !17358, !nonnull !13, !align !1297, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17360
  %i.k = load ptr, ptr %i.j, align 8, !dbg !17360, !alias.scope !17346, !noalias !17358, !nonnull !13, !align !1297, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !17361
  %i.m = load ptr, ptr %i.l, align 8, !dbg !17361, !alias.scope !17346, !noalias !17358, !nonnull !13, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !17362
  %i.o = load ptr, ptr %i.n, align 8, !dbg !17362, !alias.scope !17346, !noalias !17358, !nonnull !13, !align !1297, !noundef !13
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !17363
  %i.q = load ptr, ptr %i.p, align 8, !dbg !17363, !alias.scope !17346, !noalias !17358, !nonnull !13, !align !1297, !noundef !13
  %i.r = load ptr, ptr %i.q, align 8, !dbg !17363, !noalias !17364, !noundef !13
  call void @_RNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp25create_physical_plan_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, i64 noundef %.val5.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias noundef nonnull dereferenceable(2) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef %i.r), !dbg !17365, !noalias !17366
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !dbg !17367, !noalias !17366 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17367
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !17367, !noalias !17366 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17367
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !17367, !noalias !17366 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17368), !dbg !17367
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !17371
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !dbg !17376

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %3, align 8, !dbg !17377, !range !86, !alias.scope !17380, !noalias !17383, !noundef !13
  %i.t = icmp eq i64 %i.s, 18, !dbg !17377
  br i1 %i.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, label %bb.d, !dbg !17377

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i unwind label %bb.f, !dbg !17385, !noalias !17383

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.i, align 8, !dbg !17387, !alias.scope !17392, !noalias !17393
  br label %bb.g, !dbg !17394

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !17395, !noalias !17383
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !17395
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !17395, !noalias !17383
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !17395
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !17395, !noalias !17383
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !17395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !17395, !noalias !17366
  resume { ptr, i32 } %i.u, !dbg !17396

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !17395, !noalias !17383
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !17395
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !17395, !noalias !17383
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !17395
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !17395, !noalias !17383
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !17395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !17395, !noalias !17366
  br label %bb.g, !dbg !17397

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.e
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.e ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !17398, !alias.scope !17392, !noalias !17393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17399, !noalias !17342
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !17400, !alias.scope !17403, !noalias !17406
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !17400, !alias.scope !17403, !noalias !17406
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !17408
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !17408
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17409
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.v, align 8, !dbg !17409, !alias.scope !17415, !noalias !17317
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17409
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.w, align 8, !dbg !17409, !alias.scope !17415, !noalias !17317
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1x_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5N_B3k_EENCNCNvNtNtB40_7planner2lp30create_multiple_physical_plans00NCINvXB2n_INtB2n_12GenericShuntINtB2l_3MapB3_B6C_EIB2Z_NtNtBa_7convert10InfallibleB53_EEB1r_8try_folduNCINvNvB1r_12try_for_each4callB3k_B6r_NcNtB6r_5Break0E0B6r_E0E0B5M_EB40_.exit, !dbg !17418

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1x_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5N_B3k_EENCNCNvNtNtB40_7planner2lp30create_multiple_physical_plans00NCINvXB2n_INtB2n_12GenericShuntINtB2l_3MapB3_B6C_EIB2Z_NtNtBa_7convert10InfallibleB53_EEB1r_8try_folduNCINvNvB1r_12try_for_each4callB3k_B6r_NcNtB6r_5Break0E0B6r_E0E0B5M_EB40_.exit: ; preds = %bb.a, %bb.g
  %storemerge.i = phi i64 [ 1, %bb.g ], [ 0, %bb.a ], !dbg !17419
  store i64 %storemerge.i, ptr %0, align 8, !dbg !17419, !alias.scope !17313, !noalias !17317
  ret void, !dbg !17420
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB2j_23AmortizedColumnSelector15select_multipleRB1n_RSB1n_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB46_8try_folduNCINvNvB46_12try_for_each4callNtNtB2l_6column6ColumnINtNtNtBc_3ops12control_flow11ControlFlowB7y_ENcNtB7U_5Break0E0B7U_E0IB7V_B7U_EECseyIfFeUOWMb_17polars_mem_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !17421 {
bb.a:
  %.sroa.4.i.i.i = alloca [159 x i8], align 1     ; 5 uses
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [160 x i8], align 16              ; 8 uses
  %.sroa.4.i.i = alloca [79 x i8], align 1        ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17422), !dbg !17425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17426), !dbg !17425
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !17428, !noalias !17422, !nonnull !13, !noundef !13 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !17428, !noalias !17422 ; 2 uses
  %i.e = icmp eq ptr %.promoted.i, %i.d, !dbg !17431
  br i1 %i.e, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB53_B3s_EENCINvMNtB3w_10projectionNtB5Y_23AmortizedColumnSelector15select_multipleB32_RSBJ_E0NCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B5S_EIB37_NtNtBa_7convert10InfallibleB4j_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB3s_B5H_NcNtB5H_5Break0E0B5H_E0E0B52_ECseyIfFeUOWMb_17polars_mem_engine.exit, label %.lr.ph.i, !dbg !17442

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17443
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %.sroa.4.80..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 79
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !17444, !nonnull !13, !align !1297, !noundef !13
  br label %bb.b, !dbg !17442

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.g ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !17448 ; 3 uses
  store ptr %i.j, ptr %1, align 8, !dbg !17451, !alias.scope !17428, !noalias !17422
  call void @llvm.experimental.noalias.scope.decl(metadata !17452), !dbg !17453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17454
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i), !dbg !17455
  call void @llvm.experimental.noalias.scope.decl(metadata !17458), !dbg !17461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17462, !noalias !17469
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 23, !dbg !17471
  %i.l = load i8, ptr %i.k, align 1, !dbg !17471, !range !1213, !alias.scope !17480, !noalias !17483, !noundef !13 ; 2 uses
  %i.m = icmp ugt i8 %i.l, -41, !dbg !17484
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !17484

bb.c:                                             ; preds = %bb.b
  %i.n = add i8 %i.l, 64, !dbg !17485
  %i.o = call i8 @llvm.umin.i8(i8 %i.n, i8 24), !dbg !17487
  %.sroa.0.0.i.i.i.i.i.i = zext nneg i8 %i.o to i64, !dbg !17487
  br label %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !17490

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !dbg !17491, !alias.scope !17480, !noalias !17483, !noundef !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !17492
  %i.r = load i64, ptr %i.q, align 8, !dbg !17492, !alias.scope !17480, !noalias !17483, !noundef !13
  br label %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !17493

_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.c ], !dbg !17494
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.i, %bb.c ], !dbg !17495
  call void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB2_23AmortizedColumnSelector6select(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i, i64 noundef %.sroa.01.0.i.i.i.i.i), !dbg !17496, !noalias !17483
  %i.s = load i64, ptr %i.a, align 8, !dbg !17497, !range !86, !noalias !17469, !noundef !13
  %.not.i.i.i = icmp eq i64 %i.s, 18, !dbg !17497
  br i1 %.not.i.i.i, label %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRSB1E_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRSB1E_E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i, !dbg !17502

_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRSB1E_E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i: ; preds = %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !17505, !noalias !17444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17506, !noalias !17469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.0..sroa_idx.i.i, i64 79, i1 false), !dbg !17455, !noalias !17444
  br label %.loopexit.i, !dbg !17507

_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRSB1E_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i
  %i.u = load ptr, ptr %i.h, align 8, !dbg !17511, !noalias !17469, !nonnull !13, !align !17512, !noundef !13
  call fastcc void @_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(160) %i.b, ptr noundef nonnull align 16 %i.u), !dbg !17513, !noalias !17519
  %.sroa.0.0.copyload.pr.i.i = load i8, ptr %i.b, align 16, !dbg !17455, !noalias !17444 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17506, !noalias !17469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.0..sroa_idx.i.i, i64 79, i1 false), !dbg !17455, !noalias !17444
  %i.v = icmp eq i8 %.sroa.0.0.copyload.pr.i.i, 32, !dbg !17520
  br i1 %i.v, label %.loopexit.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !17507

.loopexit.i:                                      ; preds = %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRSB1E_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRSB1E_E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i
  %i.w = load i64, ptr %3, align 8, !dbg !17521, !range !86, !alias.scope !17524, !noalias !17527, !noundef !13
  %i.x = icmp eq i64 %i.w, 18, !dbg !17521
  br i1 %i.x, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i, label %bb.e, !dbg !17521

bb.e:                                             ; preds = %.loopexit.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i unwind label %bb.f, !dbg !17531, !noalias !17533

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 7, !dbg !17534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dereferenceable(72) %.sroa.4.8..sroa_idx.i.i, i64 72, i1 false), !dbg !17534, !noalias !17535
  resume { ptr, i32 } %i.y, !dbg !17536

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i: ; preds = %bb.e, %.loopexit.i
  %.sroa.4.8..sroa_idx1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 7, !dbg !17534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dereferenceable(72) %.sroa.4.8..sroa_idx1.i.i, i64 72, i1 false), !dbg !17534, !noalias !17535
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i), !dbg !17537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17538, !noalias !17454
  br label %.loopexit13.i, !dbg !17539

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRSB1E_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.i.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.0..sroa_idx.i.i, i64 79, i1 false), !dbg !17541, !noalias !17454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %.sroa.4.80..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(80) %i.g, i64 80, i1 false), !dbg !17542, !noalias !17454
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i), !dbg !17537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17538, !noalias !17454
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload.pr.i.i, 33, !dbg !17544
  br i1 %.not.i.i, label %bb.g, label %.loopexit13.i, !dbg !17539

.loopexit13.i:                                    ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i
  %.sroa.03.010.i = phi i8 [ 32, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i ], [ %.sroa.0.0.copyload.pr.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i ]
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !17545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(159) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(159) %.sroa.4.i.i.i, i64 159, i1 false), !dbg !17549, !noalias !17426
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB53_B3s_EENCINvMNtB3w_10projectionNtB5Y_23AmortizedColumnSelector15select_multipleB32_RSBJ_E0NCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B5S_EIB37_NtNtBa_7convert10InfallibleB4j_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB3s_B5H_NcNtB5H_5Break0E0B5H_E0E0B52_ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !17550

bb.g:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i
  %i.z = icmp eq ptr %i.j, %i.d, !dbg !17431
  br i1 %i.z, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB53_B3s_EENCINvMNtB3w_10projectionNtB5Y_23AmortizedColumnSelector15select_multipleB32_RSBJ_E0NCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B5S_EIB37_NtNtBa_7convert10InfallibleB4j_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB3s_B5H_NcNtB5H_5Break0E0B5H_E0E0B52_ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.b, !dbg !17442

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB53_B3s_EENCINvMNtB3w_10projectionNtB5Y_23AmortizedColumnSelector15select_multipleB32_RSBJ_E0NCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B5S_EIB37_NtNtBa_7convert10InfallibleB4j_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB3s_B5H_NcNtB5H_5Break0E0B5H_E0E0B52_ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.g, %bb.a, %.loopexit13.i
  %storemerge.i = phi i8 [ %.sroa.03.010.i, %.loopexit13.i ], [ 33, %bb.a ], [ 33, %bb.g ], !dbg !17551
  store i8 %storemerge.i, ptr %0, align 16, !dbg !17551, !alias.scope !17422, !noalias !17426
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i), !dbg !17552
  ret void, !dbg !17553
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNCNCNCNvXs_NtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors4scan11python_scanNtB2q_14PythonScanExecNtNtB2u_8executor8Executor7execute0000ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4u_8for_each4callReNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5I_3VecB5x_E14extend_trustedBN_E0E0EB2w_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !17554 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !17555 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !17555
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !17555 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !17555
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !17555
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !17558
  %i.a = icmp eq ptr %0, %1, !dbg !17567
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_ReuNCNCNCNCNvXs_NtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors4scan11python_scanNtB3k_14PythonScanExecNtNtB3o_8executor8Executor7execute0000NCINvNvB1G_8for_each4callB34_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5Z_3VecB34_E14extend_trustedINtB2w_3MapBF_B37_EE0E0E0EB3q_.exit, label %bb.b, !dbg !17568

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !17569
  %i.c = ptrtoint ptr %0 to i64, !dbg !17569
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !17569
  %i.e = udiv exact i64 %i.d, 24, !dbg !17569
  br label %bb.c, !dbg !17581

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.r, %bb.f ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.s, %bb.f ], !dbg !17582 ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !17583 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17587), !dbg !17590
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 23, !dbg !17591
  %i.i = load i8, ptr %i.h, align 1, !dbg !17591, !range !1213, !alias.scope !17612, !noalias !17617, !noundef !13 ; 2 uses
  %i.j = icmp ugt i8 %i.i, -41, !dbg !17621
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !17621

bb.d:                                             ; preds = %bb.c
  %i.k = add i8 %i.i, 64, !dbg !17622
  %i.l = tail call i8 @llvm.umin.i8(i8 %i.k, i8 24), !dbg !17624
  %.sroa.0.0.i.i.i.i.i = zext nneg i8 %i.l to i64, !dbg !17624
  br label %bb.f, !dbg !17627

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !dbg !17628, !alias.scope !17612, !noalias !17617, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !17629
  %i.o = load i64, ptr %i.n, align 8, !dbg !17629, !alias.scope !17612, !noalias !17617, !noundef !13
  br label %bb.f, !dbg !17630

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.o, %bb.e ], [ %.sroa.0.0.i.i.i.i.i, %bb.d ], !dbg !17631
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.m, %bb.e ], [ %i.g, %bb.d ], !dbg !17632
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !17633 ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.p, align 8, !dbg !17640, !noalias !17643
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !17640
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.q, align 8, !dbg !17640, !noalias !17650
  %i.r = add i64 %i.f, 1, !dbg !17651             ; 2 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 1, !dbg !17654 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.e, !dbg !17657
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_ReuNCNCNCNCNvXs_NtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors4scan11python_scanNtB3k_14PythonScanExecNtNtB3o_8executor8Executor7execute0000NCINvNvB1G_8for_each4callB34_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5Z_3VecB34_E14extend_trustedINtB2w_3MapBF_B37_EE0E0E0EB3q_.exit, label %bb.c, !dbg !17657

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_ReuNCNCNCNCNvXs_NtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors4scan11python_scanNtB3k_14PythonScanExecNtNtB3o_8executor8Executor7execute0000NCINvNvB1G_8for_each4callB34_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5Z_3VecB34_E14extend_trustedINtB2w_3MapBF_B37_EE0E0E0EB3q_.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %bb.f ], !dbg !17658
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !17658, !noalias !17667
  ret void, !dbg !17668
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvNtNtCseyIfFeUOWMb_17polars_mem_engine9executors12merge_sorted16merge_key_series0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3A_8try_folduNCINvNvB3A_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtNtBc_3ops12control_flow11ControlFlowB72_ENcNtB7T_5Break0E0B7T_E0IB7U_B7T_EEB2l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !17669 {
bb.a:
  %.sroa.4.i.i.i = alloca [159 x i8], align 1     ; 5 uses
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [160 x i8], align 16              ; 8 uses
  %.sroa.4.i.i = alloca [79 x i8], align 1        ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17670), !dbg !17673
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17674), !dbg !17673
end_hunk_1
