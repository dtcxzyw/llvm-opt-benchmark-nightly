Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_mem_engine-7de41b043a674665.polars_mem_engine.a996911dcb712385-cgu.08?download=true
inline.NumInlined: 3315
inline.NumDeleted: 1634
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3W_7StealerB4G_EENCINvNvNtB2T_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3T_EIB6i_B50_EEB3S_E0E0ECseyIfFeUOWMb_17polars_mem_engine:bb.a
  %exitcond12.not.i = icmp eq i64 %i.o, %i.f, !dbg !11395
  br i1 %exitcond12.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %.lr.ph.split.us.i, !dbg !11396

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i
  %.sroa.0.09.i = phi i64 [ %i.t, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11387
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_lifoCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !11408, !noalias !11388
  %i.q = load ptr, ptr %i.b, align 8, !dbg !11398, !noalias !11389, !nonnull !1334, !noundef !1334 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !11399, !noalias !11388
  %i.s = icmp slt i64 %i.r, 0, !dbg !11400
  br i1 %i.s, label %.split.us.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !11400

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  call void @llvm.trap(), !dbg !11409
  unreachable, !dbg !11409

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %.lr.ph.split.i
  %i.t = add i64 %.sroa.0.09.i, 1, !dbg !11401    ; 2 uses
  %i.u = load i8, ptr %i.k, align 8, !dbg !11402, !range !1621, !noalias !11389, !noundef !1334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11403, !noalias !11390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !11404, !noalias !11387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11405, !noalias !11387
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !11403, !noalias !11387
  store i8 %i.u, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !11403, !noalias !11387
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !11406, !noalias !11391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11407, !noalias !11390
  %exitcond.not.i = icmp eq i64 %i.t, %i.f, !dbg !11395
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %.lr.ph.split.i, !dbg !11396

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i, %bb.a
  ret void, !dbg !11410
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3W_7StealerB4G_EENCINvNvNtB2T_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3T_EIB67_B50_EEB3S_E0E0ECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11411 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11446
  %i.d = load i64, ptr %i.c, align 8, !dbg !11446, !noundef !1334 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11446
  %i.f = load i64, ptr %i.e, align 8, !dbg !11446, !noundef !1334 ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !dbg !11447, !nonnull !1334, !noundef !1334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11439), !dbg !11448
  %i.h = icmp ult i64 %i.d, %i.f, !dbg !11449
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !11450

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = load i8, ptr %i.g, align 1, !range !1621, !alias.scope !11439, !noalias !11440, !noundef !1334
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i
  %.sroa.0.09.us.i = phi i64 [ %i.o, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11441
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !11451, !noalias !11442
  %i.l = load ptr, ptr %i.b, align 8, !dbg !11452, !noalias !11443, !nonnull !1334, !noundef !1334 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !dbg !11453, !noalias !11442
  %i.n = icmp slt i64 %i.m, 0, !dbg !11454
  br i1 %i.n, label %.split.us.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i, !dbg !11454

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.o = add i64 %.sroa.0.09.us.i, 1, !dbg !11455 ; 2 uses
  %i.p = load i8, ptr %i.k, align 8, !dbg !11456, !range !1621, !noalias !11443, !noundef !1334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11457, !noalias !11444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !11458, !noalias !11441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11459, !noalias !11441
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !11457, !noalias !11441
  store i8 %i.p, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !11457, !noalias !11441
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !11460, !noalias !11445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11461, !noalias !11444
  %exitcond12.not.i = icmp eq i64 %i.o, %i.f, !dbg !11449
  br i1 %exitcond12.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %.lr.ph.split.us.i, !dbg !11450

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i
  %.sroa.0.09.i = phi i64 [ %i.t, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11441
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_lifoCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !11462, !noalias !11442
  %i.q = load ptr, ptr %i.b, align 8, !dbg !11452, !noalias !11443, !nonnull !1334, !noundef !1334 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !11453, !noalias !11442
  %i.s = icmp slt i64 %i.r, 0, !dbg !11454
  br i1 %i.s, label %.split.us.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !11454

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  call void @llvm.trap(), !dbg !11463
  unreachable, !dbg !11463

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %.lr.ph.split.i
  %i.t = add i64 %.sroa.0.09.i, 1, !dbg !11455    ; 2 uses
  %i.u = load i8, ptr %i.k, align 8, !dbg !11456, !range !1621, !noalias !11443, !noundef !1334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11457, !noalias !11444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !11458, !noalias !11441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11459, !noalias !11441
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !11457, !noalias !11441
  store i8 %i.u, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !11457, !noalias !11441
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !11460, !noalias !11445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11461, !noalias !11444
  %exitcond.not.i = icmp eq i64 %i.t, %i.f, !dbg !11449
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %.lr.ph.split.i, !dbg !11450

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.us.i, %bb.a
  ret void, !dbg !11464
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3V_EIB6k_B52_EEB3U_E0E0ECseyIfFeUOWMb_17polars_mem_engine(i64 noundef %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11465 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %0, %1, !dbg !11497
  br i1 %i.c, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !11498

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b, !dbg !11498

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11499, !noalias !11492
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !11499, !noalias !11493
  %i.e = load ptr, ptr %i.b, align 8, !dbg !11500, !noalias !11494, !nonnull !1334, !noundef !1334 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !11501, !noalias !11493
  %i.g = icmp slt i64 %i.f, 0, !dbg !11502
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !11502

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap(), !dbg !11503
  unreachable, !dbg !11503

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %bb.b
  %i.h = add i64 %.sroa.0.08.i, 1, !dbg !11504    ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !dbg !11505, !range !1621, !noalias !11494, !noundef !1334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11506, !noalias !11495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !11507, !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11508, !noalias !11492
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !11506, !noalias !11492
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !11506, !noalias !11492
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !11509, !noalias !11496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11510, !noalias !11495
  %exitcond.not.i = icmp eq i64 %i.h, %1, !dbg !11497
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.b, !dbg !11498

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %bb.a
  ret void, !dbg !11511
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3V_EIB69_B52_EEB3U_E0E0ECseyIfFeUOWMb_17polars_mem_engine(i64 noundef %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11512 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %0, %1, !dbg !11544
  br i1 %i.c, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !11545

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b, !dbg !11545

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11546, !noalias !11539
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !11546, !noalias !11540
  %i.e = load ptr, ptr %i.b, align 8, !dbg !11547, !noalias !11541, !nonnull !1334, !noundef !1334 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !11548, !noalias !11540
  %i.g = icmp slt i64 %i.f, 0, !dbg !11549
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !11549

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap(), !dbg !11550
  unreachable, !dbg !11550

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %bb.b
  %i.h = add i64 %.sroa.0.08.i, 1, !dbg !11551    ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !dbg !11552, !range !1621, !noalias !11541, !noundef !1334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11553, !noalias !11542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !11554, !noalias !11539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11555, !noalias !11539
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !11553, !noalias !11539
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !11553, !noalias !11539
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !11556, !noalias !11543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11557, !noalias !11542
  %exitcond.not.i = icmp eq i64 %i.h, %1, !dbg !11544
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.b, !dbg !11545

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %bb.a
  ret void, !dbg !11558
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1y_5array5ArrayEL_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3G_8try_folduNCINvNvB3G_12try_for_each4callB2F_INtNtB12_12control_flow11ControlFlowB2F_ENcNtB7c_5Break0E0B7c_E0IB7d_B7c_EECseyIfFeUOWMb_17polars_mem_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11559 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca ptr, align 8                ; 5 uses
  %.sroa.73.i = alloca ptr, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11704 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11675), !dbg !11705
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11676), !dbg !11705
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11706
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11677), !dbg !11707
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11678), !dbg !11707
  %i.e = load i64, ptr %i.c, align 8, !dbg !11708, !alias.scope !11679, !noalias !11680, !noundef !1334 ; 5 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !11709, !alias.scope !11681, !noalias !11682, !noundef !1334
  %i.g = icmp ult i64 %i.e, %i.f, !dbg !11708
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !11707

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.e, 1, !dbg !11710
  store i64 %i.h, ptr %i.c, align 8, !dbg !11711, !alias.scope !11683, !noalias !11675
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !11712
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !11712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11684), !dbg !11712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11685
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !11713, !noalias !11686, !nonnull !1334, !align !1432, !noundef !1334 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11713
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !11713, !noalias !11686, !nonnull !1334, !align !1432, !noundef !1334 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !11714 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !11714, !noalias !11687
  %i.l = load ptr, ptr %.val2.i.i, align 8, !dbg !11715, !noalias !11687, !nonnull !1334, !align !1432, !noundef !1334 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !11715
  %i.n = load i64, ptr %i.m, align 8, !dbg !11715, !noalias !11687, !noundef !1334 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 4, !dbg !11716
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i, !dbg !11716
  %i.p = icmp eq i64 %i.n, 0, !dbg !11717
  br i1 %i.p, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %.lr.ph.i.i.i, !dbg !11718

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c, !dbg !11718

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.01.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 16, !dbg !11719 ; 2 uses
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.01.i.i.i, align 8, !dbg !11720, !noalias !11687, !nonnull !1334, !noundef !1334
  %i.s = getelementptr i8, ptr %.sroa.03.01.i.i.i, i64 8, !dbg !11720
  %.sroa.03.0.val6.i.i.i = load ptr, ptr %i.s, align 8, !dbg !11720, !noalias !11687, !nonnull !1334, !align !1432, !noundef !1334
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val6.i.i.i, i64 32, !dbg !11721
  %i.u = load ptr, ptr %i.t, align 8, !dbg !11721, !invariant.load !1334, !noalias !11687, !nonnull !1334
  %i.v = call { ptr, ptr } %i.u(ptr noundef nonnull %.sroa.03.0.val.i.i.i) #42, !dbg !11722, !noalias !11687, !inline_history !11610 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0, !dbg !11722 ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1, !dbg !11722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11723, !noalias !11687
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !11724
  %i.z = load ptr, ptr %i.y, align 8, !dbg !11724, !invariant.load !1334, !noalias !11687, !nonnull !1334
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.w) #42, !dbg !11725, !noalias !11687, !inline_history !11610
  %i.aa = load i128, ptr %i.a, align 16, !dbg !11726, !noalias !11687, !noundef !1334
  %i.ab = icmp eq i128 %i.aa, -45368836931846941537534090947142636873, !dbg !11727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11723, !noalias !11687
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !11728, !prof !1534

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #41, !dbg !11729, !noalias !11687
  unreachable, !dbg !11729

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.ac = getelementptr i8, ptr %i.w, i64 16, !dbg !11730
  %.val7.i.i.i = load i64, ptr %i.ac, align 8, !dbg !11730, !noalias !11687, !noundef !1334 ; 2 uses
  %i.ad = icmp ult i64 %i.e, %.val7.i.i.i, !dbg !11731
  br i1 %i.ad, label %bb.f, label %bb.h, !dbg !11731

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.w, i64 8, !dbg !11730
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !11730, !noalias !11687, !nonnull !1334, !noundef !1334
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.e, !dbg !11732
  %i.ag = load i64, ptr %i.k, align 8, !dbg !11733, !alias.scope !11692, !noalias !11693, !noundef !1334 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i, align 8, !dbg !11734, !range !1425, !alias.scope !11692, !noalias !11693, !noundef !1334
  %i.ai = icmp eq i64 %i.ag, %i.ah, !dbg !11735
  br i1 %i.ai, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !11735

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i), !dbg !11736, !noalias !11693
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !11736

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !11737, !alias.scope !11692, !noalias !11693, !nonnull !1334, !noundef !1334
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag, !dbg !11738
  store ptr %i.af, ptr %i.ak, align 8, !dbg !11739, !noalias !11693
  %i.al = add i64 %i.ag, 1, !dbg !11740           ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !dbg !11740, !alias.scope !11692, !noalias !11693
  %i.am = icmp eq ptr %i.r, %i.o, !dbg !11717
  br i1 %i.am, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %bb.c, !dbg !11718

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val7.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #41, !dbg !11731, !noalias !11687
  unreachable, !dbg !11731

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.b
  %i.an = phi i64 [ 0, %bb.b ], [ %i.al, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ], !dbg !11741
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !11742
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !11742, !noalias !11687, !nonnull !1334, !noundef !1334
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.an), !dbg !11743, !noalias !11686
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !11744, !noalias !11686 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11744
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !11744, !noalias !11686 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !11744
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !11744, !noalias !11686 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11696), !dbg !11744
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !11745
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i, !dbg !11746

bb.i:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  %i.aq = load i64, ptr %3, align 8, !dbg !11747, !range !1345, !alias.scope !11697, !noalias !11698, !noundef !1334
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !11747
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, label %bb.j, !dbg !11747

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i unwind label %bb.l, !dbg !11748, !noalias !11698

bb.k:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.i, align 8, !dbg !11749, !alias.scope !11699, !noalias !11700
  br label %bb.m, !dbg !11750

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !11751, !noalias !11698
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !11751
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !11751, !noalias !11698
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !11751
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !11751, !noalias !11698
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !11751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !11751, !noalias !11686
  resume { ptr, i32 } %i.as, !dbg !11752

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !11751, !noalias !11698
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !11751
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !11751, !noalias !11698
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !11751
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !11751, !noalias !11698
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !11751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !11751, !noalias !11686
  br label %bb.m, !dbg !11753

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.k
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.k ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.k ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !11754, !alias.scope !11699, !noalias !11700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11755, !noalias !11685
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !11756, !alias.scope !11701, !noalias !11702, !noundef !1334
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !11756, !alias.scope !11701, !noalias !11702
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !11757
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !11757
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11758
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.at, align 8, !dbg !11758, !alias.scope !11703, !noalias !11676
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11758
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.au, align 8, !dbg !11758, !alias.scope !11703, !noalias !11676
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !11759

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.a, %bb.m
  %storemerge.i = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], !dbg !11760
  store i64 %storemerge.i, ptr %0, align 8, !dbg !11760, !alias.scope !11675, !noalias !11676
  ret void, !dbg !11761
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB1y_5array5ArrayEL_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB37_8try_folduNCINvNvB37_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxB2G_EINtNtB12_12control_flow11ControlFlowB6z_ENcNtB7d_5Break0E0B7d_E0IB7e_B7d_EECseyIfFeUOWMb_17polars_mem_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11762 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca ptr, align 8                ; 5 uses
  %.sroa.73.i = alloca ptr, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11907 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11878), !dbg !11908
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11879), !dbg !11908
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11909
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11880), !dbg !11910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11881), !dbg !11910
  %i.e = load i64, ptr %i.c, align 8, !dbg !11911, !alias.scope !11882, !noalias !11883, !noundef !1334 ; 5 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !11912, !alias.scope !11884, !noalias !11885, !noundef !1334
  %i.g = icmp ult i64 %i.e, %i.f, !dbg !11911
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB39_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !11910

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.e, 1, !dbg !11913
  store i64 %i.h, ptr %i.c, align 8, !dbg !11914, !alias.scope !11886, !noalias !11878
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !11915
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !11915
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11887), !dbg !11915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11888
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !11916, !noalias !11889, !nonnull !1334, !align !1432, !noundef !1334 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11916
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !11916, !noalias !11889, !nonnull !1334, !align !1432, !noundef !1334 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !11917 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !11917, !noalias !11890
  %i.l = load ptr, ptr %.val2.i.i, align 8, !dbg !11918, !noalias !11890, !nonnull !1334, !align !1432, !noundef !1334 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !11918
  %i.n = load i64, ptr %i.m, align 8, !dbg !11918, !noalias !11890, !noundef !1334 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 4, !dbg !11919
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i, !dbg !11919
  %i.p = icmp eq i64 %i.n, 0, !dbg !11920
  br i1 %i.p, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %.lr.ph.i.i.i, !dbg !11921

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c, !dbg !11921

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.01.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 16, !dbg !11922 ; 2 uses
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.01.i.i.i, align 8, !dbg !11923, !noalias !11890, !nonnull !1334, !noundef !1334
  %i.s = getelementptr i8, ptr %.sroa.03.01.i.i.i, i64 8, !dbg !11923
  %.sroa.03.0.val7.i.i.i = load ptr, ptr %i.s, align 8, !dbg !11923, !noalias !11890, !nonnull !1334, !align !1432, !noundef !1334
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val7.i.i.i, i64 32, !dbg !11924
  %i.u = load ptr, ptr %i.t, align 8, !dbg !11924, !invariant.load !1334, !noalias !11890, !nonnull !1334
  %i.v = call { ptr, ptr } %i.u(ptr noundef nonnull %.sroa.03.0.val.i.i.i) #42, !dbg !11925, !noalias !11890, !inline_history !11813 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0, !dbg !11925 ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1, !dbg !11925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11926, !noalias !11890
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !11927
  %i.z = load ptr, ptr %i.y, align 8, !dbg !11927, !invariant.load !1334, !noalias !11890, !nonnull !1334
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.w) #42, !dbg !11928, !noalias !11890, !inline_history !11813
  %i.aa = load i128, ptr %i.a, align 16, !dbg !11929, !noalias !11890, !noundef !1334
  %i.ab = icmp eq i128 %i.aa, -45368836931846941537534090947142636873, !dbg !11930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11926, !noalias !11890
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !11931, !prof !1534

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #41, !dbg !11932, !noalias !11890
  unreachable, !dbg !11932

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.ac = getelementptr i8, ptr %i.w, i64 16, !dbg !11933
  %.val6.i.i.i = load i64, ptr %i.ac, align 8, !dbg !11933, !noalias !11890, !noundef !1334 ; 2 uses
  %i.ad = icmp ult i64 %i.e, %.val6.i.i.i, !dbg !11934
  br i1 %i.ad, label %bb.f, label %bb.h, !dbg !11934

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.w, i64 8, !dbg !11933
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !11933, !noalias !11890, !nonnull !1334, !noundef !1334
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.e, !dbg !11935
  %i.ag = load i64, ptr %i.k, align 8, !dbg !11936, !alias.scope !11895, !noalias !11896, !noundef !1334 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i, align 8, !dbg !11937, !range !1425, !alias.scope !11895, !noalias !11896, !noundef !1334
  %i.ai = icmp eq i64 %i.ag, %i.ah, !dbg !11938
  br i1 %i.ai, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !11938

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i), !dbg !11939, !noalias !11896
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !11939

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !11940, !alias.scope !11895, !noalias !11896, !nonnull !1334, !noundef !1334
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag, !dbg !11941
  store ptr %i.af, ptr %i.ak, align 8, !dbg !11942, !noalias !11896
  %i.al = add i64 %i.ag, 1, !dbg !11943           ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !dbg !11943, !alias.scope !11895, !noalias !11896
  %i.am = icmp eq ptr %i.r, %i.o, !dbg !11920
  br i1 %i.am, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %bb.c, !dbg !11921

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val6.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #41, !dbg !11934, !noalias !11890
  unreachable, !dbg !11934

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.b
  %i.an = phi i64 [ 0, %bb.b ], [ %i.al, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ], !dbg !11944
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !11945
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !11945, !noalias !11890, !nonnull !1334, !noundef !1334
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.an), !dbg !11946, !noalias !11889
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !11947, !noalias !11889 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11947
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !11947, !noalias !11889 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !11947
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !11947, !noalias !11889 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11899), !dbg !11947
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !11948
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i, !dbg !11949

bb.i:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  %i.aq = load i64, ptr %3, align 8, !dbg !11950, !range !1345, !alias.scope !11900, !noalias !11901, !noundef !1334
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !11950
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, label %bb.j, !dbg !11950

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i unwind label %bb.l, !dbg !11951, !noalias !11901

bb.k:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.i, align 8, !dbg !11952, !alias.scope !11902, !noalias !11903
  br label %bb.m, !dbg !11953

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !11954, !noalias !11901
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !11954
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !11954, !noalias !11901
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !11954
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !11954, !noalias !11901
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !11954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !11954, !noalias !11889
  resume { ptr, i32 } %i.as, !dbg !11955

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !11954, !noalias !11901
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !11954
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !11954, !noalias !11901
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !11954
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !11954, !noalias !11901
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !11954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !11954, !noalias !11889
  br label %bb.m, !dbg !11956

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.k
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.k ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.k ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !11957, !alias.scope !11902, !noalias !11903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11958, !noalias !11888
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !11959, !alias.scope !11904, !noalias !11905, !noundef !1334
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !11959, !alias.scope !11904, !noalias !11905
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !11960
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !11960
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11961
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.at, align 8, !dbg !11961, !alias.scope !11906, !noalias !11879
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11961
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.au, align 8, !dbg !11961, !alias.scope !11906, !noalias !11879
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB39_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !11962

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB39_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.a, %bb.m
  %storemerge.i = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], !dbg !11963
  store i64 %storemerge.i, ptr %0, align 8, !dbg !11963, !alias.scope !11878, !noalias !11879
  ret void, !dbg !11964
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1y_5array5ArrayEL_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3H_8try_folduNCINvNvB3H_12try_for_each4callB2G_INtNtB12_12control_flow11ControlFlowB2G_ENcNtB7d_5Break0E0B7d_E0IB7e_B7d_EECseyIfFeUOWMb_17polars_mem_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11965 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca ptr, align 8                ; 5 uses
  %.sroa.73.i = alloca ptr, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12111 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12082), !dbg !12112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12083), !dbg !12112
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !12113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12084), !dbg !12114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12085), !dbg !12114
  %i.e = load i64, ptr %i.c, align 8, !dbg !12115, !alias.scope !12086, !noalias !12087, !noundef !1334 ; 5 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !12116, !alias.scope !12088, !noalias !12089, !noundef !1334
  %i.g = icmp ult i64 %i.e, %i.f, !dbg !12115
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !12114

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.e, 1, !dbg !12117
  store i64 %i.h, ptr %i.c, align 8, !dbg !12118, !alias.scope !12090, !noalias !12082
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !12119
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !12119
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12091), !dbg !12119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12092
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !12120, !noalias !12093, !nonnull !1334, !align !1432, !noundef !1334 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12120
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !12120, !noalias !12093, !nonnull !1334, !align !1432, !noundef !1334 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !12121 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !12121, !noalias !12094
  %i.l = load ptr, ptr %.val2.i.i, align 8, !dbg !12122, !noalias !12094, !nonnull !1334, !align !1432, !noundef !1334 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !12122
  %i.n = load i64, ptr %i.m, align 8, !dbg !12122, !noalias !12094, !noundef !1334 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 3, !dbg !12123
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i, !dbg !12123
  %i.p = icmp eq i64 %i.n, 0, !dbg !12124
  br i1 %i.p, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %.lr.ph.i.i.i, !dbg !12125

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c, !dbg !12125

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.01.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 8, !dbg !12126 ; 2 uses
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.01.i.i.i, align 8, !dbg !12127, !noalias !12094, !nonnull !1334, !align !1432, !noundef !1334 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.03.0.val.i.i.i, align 8, !dbg !12128, !noalias !12094, !nonnull !1334, !noundef !1334
  %i.s = getelementptr i8, ptr %.sroa.03.0.val.i.i.i, i64 8, !dbg !12128
  %.val1.i.i.i.i = load ptr, ptr %i.s, align 8, !dbg !12128, !noalias !12094, !nonnull !1334, !align !1432, !noundef !1334
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 32, !dbg !12129
  %i.u = load ptr, ptr %i.t, align 8, !dbg !12129, !invariant.load !1334, !noalias !12094, !nonnull !1334
  %i.v = call { ptr, ptr } %i.u(ptr noundef nonnull %.val.i.i.i.i) #42, !dbg !12130, !noalias !12094, !inline_history !12017 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0, !dbg !12130 ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1, !dbg !12130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12131, !noalias !12094
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !12132
  %i.z = load ptr, ptr %i.y, align 8, !dbg !12132, !invariant.load !1334, !noalias !12094, !nonnull !1334
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.w) #42, !dbg !12133, !noalias !12094, !inline_history !12017
  %i.aa = load i128, ptr %i.a, align 16, !dbg !12134, !noalias !12094, !noundef !1334
  %i.ab = icmp eq i128 %i.aa, -45368836931846941537534090947142636873, !dbg !12135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12131, !noalias !12094
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !12136, !prof !1534

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #41, !dbg !12137, !noalias !12094
  unreachable, !dbg !12137

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.ac = getelementptr i8, ptr %i.w, i64 16, !dbg !12138
  %.val6.i.i.i = load i64, ptr %i.ac, align 8, !dbg !12138, !noalias !12094, !noundef !1334 ; 2 uses
  %i.ad = icmp ult i64 %i.e, %.val6.i.i.i, !dbg !12139
  br i1 %i.ad, label %bb.f, label %bb.h, !dbg !12139

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.w, i64 8, !dbg !12138
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !12138, !noalias !12094, !nonnull !1334, !noundef !1334
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.e, !dbg !12140
  %i.ag = load i64, ptr %i.k, align 8, !dbg !12141, !alias.scope !12099, !noalias !12100, !noundef !1334 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i, align 8, !dbg !12142, !range !1425, !alias.scope !12099, !noalias !12100, !noundef !1334
  %i.ai = icmp eq i64 %i.ag, %i.ah, !dbg !12143
  br i1 %i.ai, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !12143

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i), !dbg !12144, !noalias !12100
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !12144

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !12145, !alias.scope !12099, !noalias !12100, !nonnull !1334, !noundef !1334
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag, !dbg !12146
  store ptr %i.af, ptr %i.ak, align 8, !dbg !12147, !noalias !12100
  %i.al = add i64 %i.ag, 1, !dbg !12148           ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !dbg !12148, !alias.scope !12099, !noalias !12100
  %i.am = icmp eq ptr %i.r, %i.o, !dbg !12124
  br i1 %i.am, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %bb.c, !dbg !12125

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val6.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #41, !dbg !12139, !noalias !12094
  unreachable, !dbg !12139

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.b
  %i.an = phi i64 [ 0, %bb.b ], [ %i.al, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ], !dbg !12149
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !12150
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !12150, !noalias !12094, !nonnull !1334, !noundef !1334
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.an), !dbg !12151, !noalias !12093
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !12152, !noalias !12093 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12152
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !12152, !noalias !12093 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12152
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !12152, !noalias !12093 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12103), !dbg !12152
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !12153
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i, !dbg !12154

bb.i:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  %i.aq = load i64, ptr %3, align 8, !dbg !12155, !range !1345, !alias.scope !12104, !noalias !12105, !noundef !1334
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !12155
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, label %bb.j, !dbg !12155

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i unwind label %bb.l, !dbg !12156, !noalias !12105

bb.k:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.i, align 8, !dbg !12157, !alias.scope !12106, !noalias !12107
  br label %bb.m, !dbg !12158

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !12159, !noalias !12105
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !12159
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !12159, !noalias !12105
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !12159
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !12159, !noalias !12105
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !12159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !12159, !noalias !12093
  resume { ptr, i32 } %i.as, !dbg !12160

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !12159, !noalias !12105
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !12159
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !12159, !noalias !12105
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !12159
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !12159, !noalias !12105
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !12159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !12159, !noalias !12093
  br label %bb.m, !dbg !12161

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.k
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.k ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.k ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !12162, !alias.scope !12106, !noalias !12107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12163, !noalias !12092
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !12164, !alias.scope !12108, !noalias !12109, !noundef !1334
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !12164, !alias.scope !12108, !noalias !12109
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !12165
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !12165
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12166
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.at, align 8, !dbg !12166, !alias.scope !12110, !noalias !12083
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12166
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.au, align 8, !dbg !12166, !alias.scope !12110, !noalias !12083
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !12167

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.a, %bb.m
  %storemerge.i = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], !dbg !12168
  store i64 %storemerge.i, ptr %0, align 8, !dbg !12168, !alias.scope !12082, !noalias !12083
  ret void, !dbg !12169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB1w_6BufferNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecB4e_E14extend_trustedBN_E0E0ECseyIfFeUOWMb_17polars_mem_engine(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !12170 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !12190, !nonnull !1334, !noundef !1334
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !12190
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12190
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0), !dbg !12191
  %.val5.i = add i64 %.sroa.4.0.copyload, %i.a, !dbg !12191
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !12192, !noalias !12189
  ret void, !dbg !12193
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtB1y_9dataframe9DataFrame12split_chunkss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callB2e_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4e_3VecB2e_E14extend_trustedBN_E0E0ECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12194 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !12347
  %i.g = load i64, ptr %i.f, align 8, !dbg !12347, !noundef !1334 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12347
  %i.i = load i64, ptr %i.h, align 8, !dbg !12347, !noundef !1334 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12326
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !12348 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !12348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !dbg !12348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12327), !dbg !12349
  %i.k = icmp ult i64 %i.g, %i.i, !dbg !12350
  br i1 %i.k, label %.lr.ph.i, label %.._crit_edge_crit_edge.i, !dbg !12351

.._crit_edge_crit_edge.i:                         ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.val5.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !dbg !12352, !alias.scope !12327
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameuNCNvMs_NtB29_6chunksB25_12split_chunkss_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4j_3VecB25_E14extend_trustedINtB1B_3MapB3_B33_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !12351

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
  br label %bb.b, !dbg !12351

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameuNCNvMs_NtBZ_6chunksBV_12split_chunkss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1T_EE0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %.lr.ph.i
  %.sroa.0.026.i = phi i64 [ %i.g, %.lr.ph.i ], [ %i.u, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameuNCNvMs_NtBZ_6chunksBV_12split_chunkss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1T_EE0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i ] ; 5 uses
  %i.u = add i64 %.sroa.0.026.i, 1, !dbg !12353   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12328), !dbg !12354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12355, !noalias !12327
  call void @llvm.experimental.noalias.scope.decl(metadata !12329), !dbg !12355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12330
  store i64 %.sroa.0.026.i, ptr %i.c, align 8, !noalias !12331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12356, !noalias !12331
  %i.v = load i64, ptr %i.e, align 8, !dbg !12357, !range !1424, !alias.scope !12332, !noalias !12333, !noundef !1334
  %i.w = trunc nuw i64 %i.v to i1, !dbg !12358
  br i1 %i.w, label %bb.c, label %bb.g, !dbg !12358

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.l, align 8, !dbg !12359, !alias.scope !12332, !noalias !12333, !nonnull !1334, !align !1432, !noundef !1334 ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !dbg !12357, !alias.scope !12332, !noalias !12333 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !12360
  %i.aa = load i64, ptr %i.z, align 8, !dbg !12360, !noalias !12337, !noundef !1334 ; 2 uses
  %i.ab = icmp ult i64 %i.y, %i.aa, !dbg !12361
  br i1 %i.ab, label %bb.d, label %.invoke.i, !dbg !12361

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !12362
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !12362, !noalias !12337, !nonnull !1334, !noundef !1334
  %i.ae = getelementptr inbounds nuw [160 x i8], ptr %i.ad, i64 %i.y, !dbg !12361 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 16, !dbg !12363, !range !1443, !noalias !12337, !noundef !1334
  %.not.i.i.i.i = icmp eq i8 %i.af, 31, !dbg !12363
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e, !dbg !12364, !prof !1534

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #41
          to label %.noexc8.i unwind label %.loopexit.split-lp.i, !dbg !12365

.noexc8.i:                                        ; preds = %bb.e
  unreachable, !dbg !12365

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !12366
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !12367, !noalias !12337, !nonnull !1334, !noundef !1334
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !12367
  %i.aj = load ptr, ptr %i.ai, align 16, !dbg !12367, !noalias !12337, !nonnull !1334, !align !1432, !noundef !1334 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !12368
  %i.al = load i64, ptr %i.ak, align 8, !dbg !12368, !range !1426, !invariant.load !1334, !noalias !12337
  %i.am = add nsw i64 %i.al, -1, !dbg !12368
  %i.an = and i64 %i.am, -16, !dbg !12368
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.an, !dbg !12368
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !12368
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 312, !dbg !12361
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !12361, !invariant.load !1334, !noalias !12337, !nonnull !1334
  %i.as = invoke noundef nonnull align 8 ptr %i.ar(ptr noundef nonnull %i.ap) #42
          to label %.noexc9.i unwind label %.loopexit.i, !dbg !12369, !inline_history !12250 ; 2 uses

.noexc9.i:                                        ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !12370
  %i.au = load i64, ptr %i.at, align 8, !dbg !12370, !noalias !12337, !noundef !1334 ; 2 uses
  %i.av = icmp ult i64 %.sroa.0.026.i, %i.au, !dbg !12371
  br i1 %i.av, label %_RNCNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtBa_9dataframe9DataFrame12split_chunkss_00CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, label %.invoke.i, !dbg !12371

.invoke.i:                                        ; preds = %.noexc9.i, %bb.c
  %i.aw = phi i64 [ %i.y, %bb.c ], [ %.sroa.0.026.i, %.noexc9.i ]
  %i.ax = phi i64 [ %i.aa, %bb.c ], [ %i.au, %.noexc9.i ]
  %i.ay = phi ptr [ @26, %bb.c ], [ @27, %.noexc9.i ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay) #41
          to label %.cont.i unwind label %.loopexit.split-lp.i, !dbg !12372

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNCNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtBa_9dataframe9DataFrame12split_chunkss_00CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %.noexc9.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !12373
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !12373, !noalias !12337, !nonnull !1334, !noundef !1334
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.sroa.0.026.i, !dbg !12374 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !12361, !noalias !12337, !nonnull !1334, !noundef !1334
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8, !dbg !12361
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !12361, !noalias !12337, !nonnull !1334, !align !1432, !noundef !1334
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48, !dbg !12361
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !12361, !invariant.load !1334, !noalias !12337, !nonnull !1334
  %i.bh = invoke noundef i64 %i.bg(ptr noundef nonnull %i.bc) #42
          to label %_RNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtB8_9dataframe9DataFrame12split_chunkss_0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i unwind label %.loopexit.i, !dbg !12375, !inline_history !12250

bb.g:                                             ; preds = %bb.b
  %i.bi = load i64, ptr %i.m, align 8, !dbg !12376, !alias.scope !12332, !noalias !12333, !noundef !1334
  %.pre.i.i.i = load ptr, ptr %i.l, align 8, !dbg !12377, !alias.scope !12332, !noalias !12333
  br label %_RNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtB8_9dataframe9DataFrame12split_chunkss_0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, !dbg !12378

_RNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtB8_9dataframe9DataFrame12split_chunkss_0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %bb.g, %_RNCNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtBa_9dataframe9DataFrame12split_chunkss_00CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i
  %i.bj = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.x, %_RNCNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtBa_9dataframe9DataFrame12split_chunkss_00CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ], !dbg !12377 ; 2 uses
  %storemerge.i.i.i = phi i64 [ %i.bi, %bb.g ], [ %i.bh, %_RNCNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtBa_9dataframe9DataFrame12split_chunkss_00CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ], !dbg !12379
  store i64 %storemerge.i.i.i, ptr %i.b, align 8, !dbg !12379, !noalias !12331
  %i.bk = getelementptr i8, ptr %i.bj, i64 8, !dbg !12380
  %.val5.i.i.i = load ptr, ptr %i.bk, align 8, !dbg !12380, !noalias !12337, !nonnull !1334, !noundef !1334 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 16, !dbg !12380
  %.val6.i.i.i = load i64, ptr %i.bl, align 8, !dbg !12380, !noalias !12337, !noundef !1334
  %i.bm = getelementptr inbounds nuw [160 x i8], ptr %.val5.i.i.i, i64 %.val6.i.i.i, !dbg !12381
  store ptr %.val5.i.i.i, ptr %i.a, align 8, !dbg !12382, !noalias !12331
  store ptr %i.bm, ptr %i.p, align 8, !dbg !12382, !noalias !12331
  store ptr %i.c, ptr %i.q, align 8, !dbg !12382, !noalias !12331
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !12382, !noalias !12331
  store ptr %i.b, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !dbg !12382, !noalias !12331
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterB13_ENCNCNvMs_NtB17_6chunksNtNtB17_9dataframe9DataFrame12split_chunkss_0s_0EE9from_iterCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameuNCNvMs_NtBZ_6chunksBV_12split_chunkss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1T_EE0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i unwind label %.loopexit.i, !dbg !12383

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameuNCNvMs_NtBZ_6chunksBV_12split_chunkss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1T_EE0E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %_RNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtB8_9dataframe9DataFrame12split_chunkss_0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  %i.bn = load i64, ptr %i.b, align 8, !dbg !12384, !noalias !12331, !noundef !1334 ; 2 uses
  %i.bo = load i64, ptr %i.o, align 8, !dbg !12385, !alias.scope !12332, !noalias !12333, !noundef !1334
  %i.bp = add i64 %i.bo, %i.bn, !dbg !12385
  store i64 %i.bp, ptr %i.o, align 8, !dbg !12385, !alias.scope !12332, !noalias !12333
  store i64 %i.bn, ptr %i.r, align 8, !dbg !12386, !noalias !12330
  store i32 3, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !12386, !noalias !12330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12387, !noalias !12331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12388, !noalias !12330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12388, !noalias !12330
  %i.bq = load ptr, ptr %i.s, align 8, !dbg !12389, !alias.scope !12345, !noalias !12346, !noundef !1334
  %i.br = load i64, ptr %i.t, align 8, !dbg !12390, !alias.scope !12345, !noalias !12346, !noundef !1334 ; 2 uses
  %i.bs = getelementptr inbounds nuw [48 x i8], ptr %i.bq, i64 %i.br, !dbg !12391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.d, i64 48, i1 false), !dbg !12392
  %i.bt = add i64 %i.br, 1, !dbg !12393           ; 2 uses
  store i64 %i.bt, ptr %i.t, align 8, !dbg !12393, !alias.scope !12345, !noalias !12346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12394, !noalias !12327
  %exitcond.not.i = icmp eq i64 %i.u, %i.i, !dbg !12350
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameuNCNvMs_NtB29_6chunksB25_12split_chunkss_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4j_3VecB25_E14extend_trustedINtB1B_3MapB3_B33_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.b, !dbg !12351

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
  %.val6.i = load ptr, ptr %i.j, align 8, !dbg !12352, !alias.scope !12327, !nonnull !1334, !align !1432, !noundef !1334
  %.val7.i = load i64, ptr %i.t, align 8, !dbg !12352, !alias.scope !12327, !noundef !1334
  store i64 %.val7.i, ptr %.val6.i, align 8, !dbg !12395
  resume { ptr, i32 } %lpad.phi.i, !dbg !12396

end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCNvYNtNtNtB1r_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB43_8for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB64_3VecB56_E14extend_trustedBN_E0E0ECseyIfFeUOWMb_17polars_mem_engine:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val16.i, i64 %i.l, !dbg !18291
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !18291
  %i.o = getelementptr inbounds nuw i8, ptr %.val17.i, i64 288, !dbg !18292
  %i.p = load ptr, ptr %i.o, align 8, !dbg !18292, !invariant.load !1334, !noalias !18275, !nonnull !1334
  %i.q = invoke noundef nonnull align 8 ptr %i.p(ptr noundef nonnull %i.n) #42
          to label %.noexc.i unwind label %bb.g, !dbg !18293, !noalias !18274, !inline_history !18240 ; 3 uses

.noexc.i:                                         ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 23, !dbg !18294
  %i.s = load i8, ptr %i.r, align 1, !dbg !18294, !range !1431, !noalias !18275, !noundef !1334
  %i.t = icmp eq i8 %i.s, -40, !dbg !18295
  br i1 %i.t, label %bb.d, label %bb.e, !dbg !18295

bb.d:                                             ; preds = %.noexc.i
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #40
          to label %bb.f unwind label %bb.g, !dbg !18296, !noalias !18274

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !18297, !noalias !18276
  br label %bb.f, !dbg !18298

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !18299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !18300, !noalias !18276
  %i.v = add i64 %.val15.i, 1, !dbg !18301        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18302, !noalias !18274
  %i.w = add nuw i64 %.sroa.01.0.i, 1, !dbg !18303 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.f, !dbg !18304
  br i1 %i.x, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls1_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.c, !dbg !18304

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !18305, !noalias !18274
  resume { ptr, i32 } %i.y, !dbg !18306

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls1_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.v, %bb.f ], !dbg !18307
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18307, !noalias !18274
  ret void, !dbg !18308
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCNvYNtNtNtB1r_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB43_8for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB64_3VecB56_E14extend_trustedBN_E0E0ECseyIfFeUOWMb_17polars_mem_engine(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18309 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !18391 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !18391
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !18391 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !18391
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !18391
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !18392
  %i.b = icmp eq ptr %0, %1, !dbg !18393
  br i1 %i.b, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls2_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.b, !dbg !18394

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64, !dbg !18395
  %i.d = ptrtoint ptr %0 to i64, !dbg !18395
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !18395
  %i.f = lshr exact i64 %i.e, 4, !dbg !18395
  br label %bb.c, !dbg !18396

bb.c:                                             ; preds = %bb.f, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.v, %bb.f ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.f ], !dbg !18397 ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !18398 ; 2 uses
  %.val16.i = load ptr, ptr %i.g, align 8, !dbg !18399, !noalias !18383, !nonnull !1334, !noundef !1334
  %i.h = getelementptr i8, ptr %i.g, i64 8, !dbg !18399
  %.val17.i = load ptr, ptr %i.h, align 8, !dbg !18399, !noalias !18383, !nonnull !1334, !align !1432, !noundef !1334 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18383
  %i.i = getelementptr inbounds nuw i8, ptr %.val17.i, i64 16, !dbg !18400
  %i.j = load i64, ptr %i.i, align 8, !dbg !18400, !range !1426, !invariant.load !1334, !noalias !18384
  %i.k = add nsw i64 %i.j, -1, !dbg !18400
  %i.l = and i64 %i.k, -16, !dbg !18400
  %i.m = getelementptr inbounds nuw i8, ptr %.val16.i, i64 %i.l, !dbg !18400
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !18400
  %i.o = getelementptr inbounds nuw i8, ptr %.val17.i, i64 288, !dbg !18401
  %i.p = load ptr, ptr %i.o, align 8, !dbg !18401, !invariant.load !1334, !noalias !18384, !nonnull !1334
  %i.q = invoke noundef nonnull align 8 ptr %i.p(ptr noundef nonnull %i.n) #42
          to label %.noexc.i unwind label %bb.g, !dbg !18402, !noalias !18383, !inline_history !18349 ; 3 uses

.noexc.i:                                         ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 23, !dbg !18403
  %i.s = load i8, ptr %i.r, align 1, !dbg !18403, !range !1431, !noalias !18384, !noundef !1334
  %i.t = icmp eq i8 %i.s, -40, !dbg !18404
  br i1 %i.t, label %bb.d, label %bb.e, !dbg !18404

bb.d:                                             ; preds = %.noexc.i
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #40
          to label %bb.f unwind label %bb.g, !dbg !18405, !noalias !18383

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !18406, !noalias !18385
  br label %bb.f, !dbg !18407

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !18408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !18409, !noalias !18385
  %i.v = add i64 %.val15.i, 1, !dbg !18410        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18411, !noalias !18383
  %i.w = add nuw i64 %.sroa.01.0.i, 1, !dbg !18412 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.f, !dbg !18413
  br i1 %i.x, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls2_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.c, !dbg !18413

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !18414, !noalias !18383
  resume { ptr, i32 } %i.y, !dbg !18415

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls2_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.v, %bb.f ], !dbg !18416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18416, !noalias !18383
  ret void, !dbg !18417
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCNvYNtNtNtB1r_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB43_8for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB64_3VecB56_E14extend_trustedBN_E0E0ECseyIfFeUOWMb_17polars_mem_engine(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18418 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !18500 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !18500
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !18500 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !18500
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !18500
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !18501
  %i.b = icmp eq ptr %0, %1, !dbg !18502
  br i1 %i.b, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls3_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.b, !dbg !18503

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64, !dbg !18504
  %i.d = ptrtoint ptr %0 to i64, !dbg !18504
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !18504
  %i.f = lshr exact i64 %i.e, 4, !dbg !18504
  br label %bb.c, !dbg !18505

bb.c:                                             ; preds = %bb.f, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.v, %bb.f ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.f ], !dbg !18506 ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !18507 ; 2 uses
  %.val16.i = load ptr, ptr %i.g, align 8, !dbg !18508, !noalias !18492, !nonnull !1334, !noundef !1334
  %i.h = getelementptr i8, ptr %i.g, i64 8, !dbg !18508
  %.val17.i = load ptr, ptr %i.h, align 8, !dbg !18508, !noalias !18492, !nonnull !1334, !align !1432, !noundef !1334 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18492
  %i.i = getelementptr inbounds nuw i8, ptr %.val17.i, i64 16, !dbg !18509
  %i.j = load i64, ptr %i.i, align 8, !dbg !18509, !range !1426, !invariant.load !1334, !noalias !18493
  %i.k = add nsw i64 %i.j, -1, !dbg !18509
  %i.l = and i64 %i.k, -16, !dbg !18509
  %i.m = getelementptr inbounds nuw i8, ptr %.val16.i, i64 %i.l, !dbg !18509
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !18509
  %i.o = getelementptr inbounds nuw i8, ptr %.val17.i, i64 288, !dbg !18510
  %i.p = load ptr, ptr %i.o, align 8, !dbg !18510, !invariant.load !1334, !noalias !18493, !nonnull !1334
  %i.q = invoke noundef nonnull align 8 ptr %i.p(ptr noundef nonnull %i.n) #42
          to label %.noexc.i unwind label %bb.g, !dbg !18511, !noalias !18492, !inline_history !18458 ; 3 uses

.noexc.i:                                         ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 23, !dbg !18512
  %i.s = load i8, ptr %i.r, align 1, !dbg !18512, !range !1431, !noalias !18493, !noundef !1334
  %i.t = icmp eq i8 %i.s, -40, !dbg !18513
  br i1 %i.t, label %bb.d, label %bb.e, !dbg !18513

bb.d:                                             ; preds = %.noexc.i
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #40
          to label %bb.f unwind label %bb.g, !dbg !18514, !noalias !18492

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !18515, !noalias !18494
  br label %bb.f, !dbg !18516

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !18517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !18518, !noalias !18494
  %i.v = add i64 %.val15.i, 1, !dbg !18519        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18520, !noalias !18492
  %i.w = add nuw i64 %.sroa.01.0.i, 1, !dbg !18521 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.f, !dbg !18522
  br i1 %i.x, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls3_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.c, !dbg !18522

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !18523, !noalias !18492
  resume { ptr, i32 } %i.y, !dbg !18524

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvYNtNtNtBU_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls3_0NCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B3O_EE0E0E0ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.v, %bb.f ], !dbg !18525
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18525, !noalias !18492
  ret void, !dbg !18526
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENCNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp30create_multiple_physical_plans00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3w_8try_folduNCINvNvB3w_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtB2f_9executors8executor8ExecutorEL_EINtNtNtBc_3ops12control_flow11ControlFlowB6Y_ENcNtB8e_5Break0E0B8e_E0IB8f_B8e_EEB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18527 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca ptr, align 8                ; 5 uses
  %.sroa.73.i = alloca ptr, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18583), !dbg !18602
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18584), !dbg !18602
  %i.b = load ptr, ptr %1, align 8, !dbg !18603, !alias.scope !18585, !noalias !18583, !nonnull !1334, !noundef !1334 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18604
  %i.d = load ptr, ptr %i.c, align 8, !dbg !18604, !alias.scope !18585, !noalias !18583, !nonnull !1334, !noundef !1334
  %i.e = icmp eq ptr %i.b, %i.d, !dbg !18605
  br i1 %i.e, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1x_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5N_B3k_EENCNCNvNtNtB40_7planner2lp30create_multiple_physical_plans00NCINvXB2n_INtB2n_12GenericShuntINtB2l_3MapB3_B6C_EIB2Z_NtNtBa_7convert10InfallibleB53_EEB1r_8try_folduNCINvNvB1r_12try_for_each4callB3k_B6r_NcNtB6r_5Break0E0B6r_E0E0B5M_EB40_.exit, label %bb.b, !dbg !18606

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18607
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18608
  store ptr %i.g, ptr %1, align 8, !dbg !18609, !alias.scope !18585, !noalias !18583
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !18610
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !18610
  %.val5.i = load i64, ptr %i.b, align 8, !dbg !18610, !noalias !18586, !noundef !1334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18587), !dbg !18610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18586
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18588), !dbg !18611
  %i.i = load ptr, ptr %i.f, align 8, !dbg !18612, !alias.scope !18588, !noalias !18589, !nonnull !1334, !align !1432, !noundef !1334
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18613
  %i.k = load ptr, ptr %i.j, align 8, !dbg !18613, !alias.scope !18588, !noalias !18589, !nonnull !1334, !align !1432, !noundef !1334
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !18614
  %i.m = load ptr, ptr %i.l, align 8, !dbg !18614, !alias.scope !18588, !noalias !18589, !nonnull !1334, !noundef !1334
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !18615
  %i.o = load ptr, ptr %i.n, align 8, !dbg !18615, !alias.scope !18588, !noalias !18589, !nonnull !1334, !align !1432, !noundef !1334
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !18616
  %i.q = load ptr, ptr %i.p, align 8, !dbg !18616, !alias.scope !18588, !noalias !18589, !nonnull !1334, !align !1432, !noundef !1334
  %i.r = load ptr, ptr %i.q, align 8, !dbg !18616, !noalias !18592, !noundef !1334
  call void @_RNvNtNtCseyIfFeUOWMb_17polars_mem_engine7planner2lp25create_physical_plan_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, i64 noundef %.val5.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias noundef nonnull dereferenceable(2) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef %i.r), !dbg !18617, !noalias !18593
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !dbg !18618, !noalias !18593 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18618
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !18618, !noalias !18593 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18618
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !18618, !noalias !18593 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18594), !dbg !18618
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !18619
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !dbg !18620

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %3, align 8, !dbg !18621, !range !1345, !alias.scope !18595, !noalias !18596, !noundef !1334
  %i.t = icmp eq i64 %i.s, 18, !dbg !18621
  br i1 %i.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, label %bb.d, !dbg !18621

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i unwind label %bb.f, !dbg !18622, !noalias !18596

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.i, align 8, !dbg !18623, !alias.scope !18597, !noalias !18598
  br label %bb.g, !dbg !18624

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !18625, !noalias !18596
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !18625
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !18625, !noalias !18596
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !18625
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !18625, !noalias !18596
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !18625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !18625, !noalias !18593
  resume { ptr, i32 } %i.u, !dbg !18626

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !18625, !noalias !18596
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !18625
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !18625, !noalias !18596
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !18625
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !18625, !noalias !18596
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !18625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !18625, !noalias !18593
  br label %bb.g, !dbg !18627

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %bb.e
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.e ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !18628, !alias.scope !18597, !noalias !18598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18629, !noalias !18586
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !18630, !alias.scope !18599, !noalias !18600, !noundef !1334
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !18630, !alias.scope !18599, !noalias !18600
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !18631
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !18631
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18632
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.v, align 8, !dbg !18632, !alias.scope !18601, !noalias !18584
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18632
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.w, align 8, !dbg !18632, !alias.scope !18601, !noalias !18584
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1x_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5N_B3k_EENCNCNvNtNtB40_7planner2lp30create_multiple_physical_plans00NCINvXB2n_INtB2n_12GenericShuntINtB2l_3MapB3_B6C_EIB2Z_NtNtBa_7convert10InfallibleB53_EEB1r_8try_folduNCINvNvB1r_12try_for_each4callB3k_B6r_NcNtB6r_5Break0E0B6r_E0E0B5M_EB40_.exit, !dbg !18633

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1x_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5N_B3k_EENCNCNvNtNtB40_7planner2lp30create_multiple_physical_plans00NCINvXB2n_INtB2n_12GenericShuntINtB2l_3MapB3_B6C_EIB2Z_NtNtBa_7convert10InfallibleB53_EEB1r_8try_folduNCINvNvB1r_12try_for_each4callB3k_B6r_NcNtB6r_5Break0E0B6r_E0E0B5M_EB40_.exit: ; preds = %bb.a, %bb.g
  %storemerge.i = phi i64 [ 1, %bb.g ], [ 0, %bb.a ], !dbg !18634
  store i64 %storemerge.i, ptr %0, align 8, !dbg !18634, !alias.scope !18583, !noalias !18584
  ret void, !dbg !18635
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB2j_23AmortizedColumnSelector15select_multipleRB1n_RSB1n_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB46_8try_folduNCINvNvB46_12try_for_each4callNtNtB2l_6column6ColumnINtNtNtBc_3ops12control_flow11ControlFlowB7y_ENcNtB7U_5Break0E0B7U_E0IB7V_B7U_EECseyIfFeUOWMb_17polars_mem_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18636 {
bb.a:
  %.sroa.4.i.i.i = alloca [159 x i8], align 1     ; 5 uses
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [160 x i8], align 16              ; 8 uses
  %.sroa.4.i.i = alloca [79 x i8], align 1        ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18696), !dbg !18715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18697), !dbg !18715
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !18698, !noalias !18696, !nonnull !1334, !noundef !1334 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !18698, !noalias !18696 ; 2 uses
  %i.e = icmp eq ptr %.promoted.i, %i.d, !dbg !18716
  br i1 %i.e, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB53_B3s_EENCINvMNtB3w_10projectionNtB5Y_23AmortizedColumnSelector15select_multipleB32_RSBJ_E0NCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B5S_EIB37_NtNtBa_7convert10InfallibleB4j_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB3s_B5H_NcNtB5H_5Break0E0B5H_E0E0B52_ECseyIfFeUOWMb_17polars_mem_engine.exit, label %.lr.ph.i, !dbg !18717

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18718
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %.sroa.4.80..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 79
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !18699, !nonnull !1334, !align !1432, !noundef !1334
  br label %bb.b, !dbg !18717

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.g ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !18719 ; 3 uses
  store ptr %i.j, ptr %1, align 8, !dbg !18720, !alias.scope !18698, !noalias !18696
  call void @llvm.experimental.noalias.scope.decl(metadata !18700), !dbg !18721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18701
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i), !dbg !18722
  call void @llvm.experimental.noalias.scope.decl(metadata !18702), !dbg !18723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18724, !noalias !18703
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 23, !dbg !18725
  %i.l = load i8, ptr %i.k, align 1, !dbg !18725, !range !1431, !alias.scope !18708, !noalias !18709, !noundef !1334 ; 2 uses
  %i.m = icmp ugt i8 %i.l, -41, !dbg !18726
  br i1 %i.m, label %bb.d, label %bb.c, !dbg !18726

bb.c:                                             ; preds = %bb.b
  %i.n = add i8 %i.l, 64, !dbg !18727
  %i.o = call i8 @llvm.umin.i8(i8 %i.n, i8 24), !dbg !18728
  %.sroa.0.0.i.i.i.i.i.i = zext nneg i8 %i.o to i64, !dbg !18728
  br label %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !18729

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !dbg !18730, !alias.scope !18708, !noalias !18709, !noundef !1334
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !18731
  %i.r = load i64, ptr %i.q, align 8, !dbg !18731, !alias.scope !18708, !noalias !18709, !noundef !1334
  br label %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !18732

_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.c ], !dbg !18733
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.i, %bb.c ], !dbg !18734
  call void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB2_23AmortizedColumnSelector6select(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i, i64 noundef %.sroa.01.0.i.i.i.i.i), !dbg !18735, !noalias !18709
  %i.s = load i64, ptr %i.a, align 8, !dbg !18736, !range !1345, !noalias !18703, !noundef !1334
  %.not.i.i.i = icmp eq i64 %i.s, 18, !dbg !18736
  br i1 %.not.i.i.i, label %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRSB1E_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, label %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRSB1E_E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i, !dbg !18737

_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRSB1E_E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i: ; preds = %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !18739, !noalias !18699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18740, !noalias !18703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.0..sroa_idx.i.i, i64 79, i1 false), !dbg !18722, !noalias !18699
  br label %.loopexit.i, !dbg !18741

_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRSB1E_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %_RNvXNtCscgRAwXFJnXP_4core7convertRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_5AsRefeE6as_refCseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i
  %i.u = load ptr, ptr %i.h, align 8, !dbg !18742, !noalias !18703, !nonnull !1334, !align !1847, !noundef !1334
  call fastcc void @_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(160) %i.b, ptr noundef nonnull align 16 %i.u), !dbg !18743, !noalias !18710
  %.sroa.0.0.copyload.pr.i.i = load i8, ptr %i.b, align 16, !dbg !18722, !noalias !18699 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18740, !noalias !18703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.0..sroa_idx.i.i, i64 79, i1 false), !dbg !18722, !noalias !18699
  %i.v = icmp eq i8 %.sroa.0.0.copyload.pr.i.i, 32, !dbg !18744
  br i1 %i.v, label %.loopexit.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !18741

.loopexit.i:                                      ; preds = %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRSB1E_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i, %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRSB1E_E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i.i
  %i.w = load i64, ptr %3, align 8, !dbg !18745, !range !1345, !alias.scope !18711, !noalias !18712, !noundef !1334
  %i.x = icmp eq i64 %i.w, 18, !dbg !18745
  br i1 %i.x, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i, label %bb.e, !dbg !18745

bb.e:                                             ; preds = %.loopexit.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i unwind label %bb.f, !dbg !18746, !noalias !18713

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 7, !dbg !18747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dereferenceable(72) %.sroa.4.8..sroa_idx.i.i, i64 72, i1 false), !dbg !18747, !noalias !18714
  resume { ptr, i32 } %i.y, !dbg !18748

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i: ; preds = %bb.e, %.loopexit.i
  %.sroa.4.8..sroa_idx1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 7, !dbg !18747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dereferenceable(72) %.sroa.4.8..sroa_idx1.i.i, i64 72, i1 false), !dbg !18747, !noalias !18714
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i), !dbg !18749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18750, !noalias !18701
  br label %.loopexit13.i, !dbg !18751

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRSB1E_E0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.i.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.0..sroa_idx.i.i, i64 79, i1 false), !dbg !18752, !noalias !18701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %.sroa.4.80..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(80) %i.g, i64 80, i1 false), !dbg !18753, !noalias !18701
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i), !dbg !18749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18750, !noalias !18701
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload.pr.i.i, 33, !dbg !18754
  br i1 %.not.i.i, label %bb.g, label %.loopexit13.i, !dbg !18751

.loopexit13.i:                                    ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i
  %.sroa.03.010.i = phi i8 [ 32, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.thread.i ], [ %.sroa.0.0.copyload.pr.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i ]
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !18755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(159) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(159) %.sroa.4.i.i.i, i64 159, i1 false), !dbg !18756, !noalias !18697
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB53_B3s_EENCINvMNtB3w_10projectionNtB5Y_23AmortizedColumnSelector15select_multipleB32_RSBJ_E0NCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B5S_EIB37_NtNtBa_7convert10InfallibleB4j_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB3s_B5H_NcNtB5H_5Break0E0B5H_E0E0B52_ECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !18757

bb.g:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3M_B2b_EENCINvMNtB2f_10projectionNtB4H_23AmortizedColumnSelector15select_multipleBZ_RSB10_E0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4B_EIB1Q_NtNtBa_7convert10InfallibleB32_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7L_12try_for_each4callB2b_B4q_NcNtB4q_5Break0E0B4q_E0E0CseyIfFeUOWMb_17polars_mem_engine.exit.i
  %i.z = icmp eq ptr %i.j, %i.d, !dbg !18716
  br i1 %i.z, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB53_B3s_EENCINvMNtB3w_10projectionNtB5Y_23AmortizedColumnSelector15select_multipleB32_RSBJ_E0NCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B5S_EIB37_NtNtBa_7convert10InfallibleB4j_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB3s_B5H_NcNtB5H_5Break0E0B5H_E0E0B52_ECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.b, !dbg !18717

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB53_B3s_EENCINvMNtB3w_10projectionNtB5Y_23AmortizedColumnSelector15select_multipleB32_RSBJ_E0NCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B5S_EIB37_NtNtBa_7convert10InfallibleB4j_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB3s_B5H_NcNtB5H_5Break0E0B5H_E0E0B52_ECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.g, %bb.a, %.loopexit13.i
  %storemerge.i = phi i8 [ %.sroa.03.010.i, %.loopexit13.i ], [ 33, %bb.a ], [ 33, %bb.g ], !dbg !18758
  store i8 %storemerge.i, ptr %0, align 16, !dbg !18758, !alias.scope !18696, !noalias !18697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i), !dbg !18759
  ret void, !dbg !18760
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNCNCNCNvXs_NtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors4scan11python_scanNtB2q_14PythonScanExecNtNtB2u_8executor8Executor7execute0000ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4u_8for_each4callReNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5I_3VecB5x_E14extend_trustedBN_E0E0EB2w_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !18761 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !18846 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !18846
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18846 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !18846
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18846
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !18847
  %i.a = icmp eq ptr %0, %1, !dbg !18848
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_ReuNCNCNCNCNvXs_NtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors4scan11python_scanNtB3k_14PythonScanExecNtNtB3o_8executor8Executor7execute0000NCINvNvB1G_8for_each4callB34_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5Z_3VecB34_E14extend_trustedINtB2w_3MapBF_B37_EE0E0E0EB3q_.exit, label %bb.b, !dbg !18849

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !18850
  %i.c = ptrtoint ptr %0 to i64, !dbg !18850
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !18850
  %i.e = udiv exact i64 %i.d, 24, !dbg !18850
  br label %bb.c, !dbg !18851

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.r, %bb.f ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.s, %bb.f ], !dbg !18852 ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !18853 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18831), !dbg !18854
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 23, !dbg !18855
  %i.i = load i8, ptr %i.h, align 1, !dbg !18855, !range !1431, !alias.scope !18836, !noalias !18837, !noundef !1334 ; 2 uses
  %i.j = icmp ugt i8 %i.i, -41, !dbg !18856
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !18856

bb.d:                                             ; preds = %bb.c
  %i.k = add i8 %i.i, 64, !dbg !18857
  %i.l = tail call i8 @llvm.umin.i8(i8 %i.k, i8 24), !dbg !18858
  %.sroa.0.0.i.i.i.i.i = zext nneg i8 %i.l to i64, !dbg !18858
  br label %bb.f, !dbg !18859

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !dbg !18860, !alias.scope !18836, !noalias !18837, !noundef !1334
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !18861
  %i.o = load i64, ptr %i.n, align 8, !dbg !18861, !alias.scope !18836, !noalias !18837, !noundef !1334
  br label %bb.f, !dbg !18862

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.o, %bb.e ], [ %.sroa.0.0.i.i.i.i.i, %bb.d ], !dbg !18863
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.m, %bb.e ], [ %i.g, %bb.d ], !dbg !18864
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !18865 ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.p, align 8, !dbg !18866, !noalias !18838
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !18866
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.q, align 8, !dbg !18866, !noalias !18839
  %i.r = add i64 %i.f, 1, !dbg !18867             ; 2 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 1, !dbg !18868 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.e, !dbg !18869
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_ReuNCNCNCNCNvXs_NtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors4scan11python_scanNtB3k_14PythonScanExecNtNtB3o_8executor8Executor7execute0000NCINvNvB1G_8for_each4callB34_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5Z_3VecB34_E14extend_trustedINtB2w_3MapBF_B37_EE0E0E0EB3q_.exit, label %bb.c, !dbg !18869

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_ReuNCNCNCNCNvXs_NtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors4scan11python_scanNtB3k_14PythonScanExecNtNtB3o_8executor8Executor7execute0000NCINvNvB1G_8for_each4callB34_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5Z_3VecB34_E14extend_trustedINtB2w_3MapBF_B37_EE0E0E0EB3q_.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %bb.f ], !dbg !18870
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18870, !noalias !18845
  ret void, !dbg !18871
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvNtNtCseyIfFeUOWMb_17polars_mem_engine9executors12merge_sorted16merge_key_series0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3A_8try_folduNCINvNvB3A_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnINtNtNtBc_3ops12control_flow11ControlFlowB72_ENcNtB7T_5Break0E0B7T_E0IB7U_B7T_EEB2l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18872 {
bb.a:
  %.sroa.4.i.i.i = alloca [159 x i8], align 1     ; 5 uses
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [160 x i8], align 16              ; 8 uses
  %.sroa.4.i.i = alloca [79 x i8], align 1        ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18932), !dbg !18950
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18933), !dbg !18950
end_hunk_1
