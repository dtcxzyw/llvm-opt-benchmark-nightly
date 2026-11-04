Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cal_conformance_tests_common-3924943f92a9c076.iceoryx2_cal_conformance_tests_common.22ffcff195fdbced-cgu.09?download=true
inline.NumInlined: 549
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait51list_works_when_the_start_segment_is_no_longer_usedINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2Q_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2Q_15dynamic_storage4file7StorageINtB2K_16AllocatorDetailsB3T_EEEINtNtNtB2Q_23resizable_shared_memory7dynamic13DynamicMemoryB3T_B2H_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common:bb.a
  %i.du = add i64 %i.dp, 1
  store i64 %i.du, ptr %i.au, align 8, !alias.scope !1417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2472) %i.r, ptr noundef nonnull align 8 dereferenceable(2472) %i.al, i64 2472, i1 false)
  %i.dv = load i64, ptr %i.as, align 8, !alias.scope !1419, !noundef !4 ; 3 uses
  %i.dw = load i64, ptr %i.ap, align 8, !range !15, !alias.scope !1419, !noundef !4
  %i.dx = icmp eq i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.q, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBM_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBM_13shared_memory6common7details6MemoryB20_INtNtNtBM_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEEE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

bb.q:                                             ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBT_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBT_13shared_memory6common7details6MemoryB27_INtNtNtBT_15dynamic_storage4file7StorageINtB33_16AllocatorDetailsB27_EEEEE8grow_oneCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap) #10, !noalias !1420
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBM_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBM_13shared_memory6common7details6MemoryB20_INtNtNtBM_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEEE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBM_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBM_13shared_memory6common7details6MemoryB20_INtNtNtBM_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEEE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %bb.q
  %i.dy = load ptr, ptr %i.ar, align 8, !alias.scope !1419, !nonnull !4, !noundef !4
  %i.dz = getelementptr inbounds nuw [2472 x i8], ptr %i.dy, i64 %i.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2472) %i.dz, ptr noundef nonnull readonly align 8 dereferenceable(2472) %i.r, i64 2472, i1 false)
  %i.ea = add i64 %i.dv, 1
  store i64 %i.ea, ptr %i.as, align 8, !alias.scope !1419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %exitcond.not = icmp eq i64 %i.bh, 33
  br i1 %exitcond.not, label %bb.b, label %bb.d

bb.r:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.eb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select108 = select i1 %i.eb, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select109 = select i1 %i.eb, i64 9, i64 0
  store ptr %spec.select108, ptr %i.u, align 8, !captures !12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %spec.select109, ptr %i.ec, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ed = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink96 = select i1 %i.ed, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink95 = select i1 %i.ed, i64 4, i64 0
  store ptr %.sink96, ptr %i.t, align 8, !captures !12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sink95, ptr %i.ee, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.u, ptr %i.s, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.423.0..sroa_idx, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.x, ptr %i.ef, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.427.0..sroa_idx, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.v, ptr %i.eg, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.431.0..sroa_idx, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %i.t, ptr %i.eh, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.435.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @155, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #11
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait55allocate_with_sufficient_chunk_hint_and_increasing_sizeINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2U_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2U_15dynamic_storage13process_local7StorageINtB2O_16AllocatorDetailsB3X_EEEINtNtNtB2U_23resizable_shared_memory7dynamic13DynamicMemoryB3X_B2L_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(i8 noundef range(i8 0, 3) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [2 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 12 uses
  %i.i = alloca [8 x i8], align 8                 ; 10 uses
  %i.j = alloca [1 x i8], align 1                 ; 12 uses
  %i.k = alloca [8 x i8], align 8                 ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [1104 x i8], align 8              ; 4 uses
  %i.p = alloca [1104 x i8], align 8              ; 4 uses
  %i.q = alloca [2688 x i8], align 8              ; 6 uses
  %i.r = alloca [2688 x i8], align 8              ; 5 uses
  %i.s = alloca [1136 x i8], align 8              ; 4 uses
  %i.t = alloca [1136 x i8], align 8              ; 4 uses
  %i.u = alloca [1136 x i8], align 8              ; 4 uses
  %i.v = alloca [1136 x i8], align 8              ; 3 uses
  %i.w = alloca [2712 x i8], align 8              ; 6 uses
  %i.x = alloca [2712 x i8], align 8              ; 5 uses
  %i.y = alloca [824 x i8], align 8               ; 7 uses
  %i.z = alloca [264 x i8], align 8               ; 4 uses
  %i.aa = alloca [264 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.z) #9
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.z) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RINvNtCs7gufeB8TUC6_12iceoryx2_cal7testing24generate_isolated_configINtNtNtB4_23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtB4_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB4_13shared_memory6common7details6MemoryB20_INtNtNtB4_15dynamic_storage13process_local7StorageINtB2W_16AllocatorDetailsB20_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([824 x i8]) align 8 captures(address) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa) #9
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE21max_chunk_layout_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.t, i64 noundef 1, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE25max_number_of_chunks_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.u, i64 noundef 128) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 1104
  store i8 %0, ptr %i.ab, align 8
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE6createCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2712 x i8]) align 8 captures(none) dereferenceable(2712) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.v) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %i.ac = load i64, ptr %i.w, align 8, !range !7, !alias.scope !1438, !noundef !4
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1439
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !9, !alias.scope !1438, !noundef !4
  store i8 %i.af, ptr %i.c, align 1, !noalias !1439
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #11, !noalias !1440
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2712) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(2712) %i.w, i64 2712, i1 false), !alias.scope !1440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1y_B2r_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1104 x i8]) align 8 captures(none) dereferenceable(1104) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa) #9
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1y_B2r_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1104 x i8]) align 8 captures(none) dereferenceable(1104) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1104) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtB7_32ResizableSharedMemoryViewBuilderB1y_B2r_INtB5_13DynamicMemoryB1y_B2r_EINtB5_11DynamicViewB1y_B2r_EE4openCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2688 x i8]) align 8 captures(none) dereferenceable(2688) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1104) %i.p, i8 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %i.ag = load i64, ptr %i.q, align 8, !range !7, !alias.scope !1442, !noundef !4
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1443
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !10, !alias.scope !1442, !noundef !4
  store i8 %i.aj, ptr %i.d, align 1, !noalias !1443
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #11, !noalias !1444
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2688) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(2688) %i.q, i64 2688, i1 false), !alias.scope !1444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.e

bb.d:                                             ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.cq
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.g

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %.sroa.011.039 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ], [ %i.as, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ] ; 3 uses
  %i.ar = add nuw nsw i64 %.sroa.011.039, 2       ; 2 uses
  %i.as = add nuw nsw i64 %.sroa.011.039, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2p_16AllocatorDetailsB1t_EEEEINtB7_21ResizableSharedMemoryB1t_B2m_E8allocateCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %i.x, i64 noundef 1, i64 noundef %i.ar) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  %i.at = load i8, ptr %i.m, align 8, !range !11, !alias.scope !1445, !noundef !4
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1446
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !5, !alias.scope !1445, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.ay = load i8, ptr %i.ax, align 2, !alias.scope !1445
  store i8 %i.aw, ptr %i.b, align 1, !noalias !1446
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !noalias !1446
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #11, !noalias !1445
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.e
  %i.ba = load i64, ptr %i.am, align 8, !alias.scope !1445, !noundef !4
  %i.bb = load ptr, ptr %i.an, align 8, !alias.scope !1445, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bc = trunc nuw nsw i64 %.sroa.011.039 to i8
  %i.bd = shl nuw i8 %i.bc, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i8 %i.bd, i64 range(i64 0, 130) %i.ar, i1 false)
  %i.be = load i64, ptr %i.al, align 8, !alias.scope !1447, !noundef !4 ; 3 uses
  %i.bf = load i64, ptr %i.n, align 8, !range !15, !alias.scope !1447, !noundef !4
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.m, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

.loopexit.unr-lcssa:                              ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.unr-lcssa, %.lr.ph
  %.sroa.015.040.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cm, %.loopexit.unr-lcssa ]
  %lcmp.mod51 = trunc i64 %indvars.iv to i1
  call void @llvm.assume(i1 %lcmp.mod51)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.015.040.epil.init
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !4 ; 2 uses
  store i8 %i.bi, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bw, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.bj = icmp eq i8 %i.bi, %i.bw
  br i1 %i.bj, label %.loopexit.epilog-lcssa, label %.loopexit52, !prof !13

.loopexit.epilog-lcssa:                           ; preds = %.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.unr-lcssa, %.loopexit.epilog-lcssa
  %i.bk = icmp eq i64 %i.bl, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %i.bk, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.d, %.loopexit
  %indvars.iv = phi i64 [ 2, %bb.d ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.sroa.0.043 = phi ptr [ %i.ao, %bb.d ], [ %i.bn, %.loopexit ] ; 3 uses
  %.sroa.7.042 = phi i64 [ 0, %bb.d ], [ %i.bo, %.loopexit ] ; 2 uses
  %.sroa.10.041 = phi i64 [ 128, %bb.d ], [ %i.bl, %.loopexit ]
  %i.bl = add nsw i64 %.sroa.10.041, -1           ; 2 uses
  %i.bm = icmp eq ptr %.sroa.0.043, %i.ap
  br i1 %i.bm, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread, label %bb.h

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread: ; preds = %bb.g, %.loopexit
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1U_INtNtNtBI_15dynamic_storage13process_local7StorageINtB2Q_16AllocatorDetailsB1U_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2688) %i.r) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1W_INtNtNtBI_15dynamic_storage13process_local7StorageINtB2S_16AllocatorDetailsB1W_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2712) %i.x) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.y) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 16
  %i.bo = add nuw nsw i64 %.sroa.7.042, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bp = load i64, ptr %.sroa.0.043, align 8, !noundef !4
  call void @_RNvXs7_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_11DynamicViewNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1r_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2n_16AllocatorDetailsB1r_EEEEINtB7_25ResizableSharedMemoryViewB1r_B2k_E29register_and_translate_offsetCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull align 8 %i.r, i64 noundef %i.bp) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  %i.bq = load i8, ptr %i.l, align 8, !range !11, !alias.scope !1448, !noundef !4
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.i, label %.lr.ph, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1449
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !range !10, !alias.scope !1448, !noundef !4
  store i8 %i.bt, ptr %i.a, align 1, !noalias !1449
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #11, !noalias !1448
  unreachable

.lr.ph:                                           ; preds = %bb.h
  %i.bu = load ptr, ptr %i.aq, align 8, !alias.scope !1448, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bv = trunc i64 %.sroa.7.042 to i8
  %i.bw = shl i8 %i.bv, 1                         ; 6 uses
  %xtraiter = and i64 %indvars.iv, 1
  %i.bx = icmp eq i64 %indvars.iv, 1
  br i1 %i.bx, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %indvars.iv, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.new
  %.sroa.015.040 = phi i64 [ 0, %.lr.ph.new ], [ %i.cm, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.015.040
  %i.bz = load i8, ptr %i.by, align 1, !noundef !4 ; 2 uses
  store i8 %i.bz, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bw, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.ca = icmp eq i8 %i.bz, %i.bw
  br i1 %i.ca, label %bb.k, label %.loopexit52, !prof !13

.loopexit52:                                      ; preds = %.epil.preheader, %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.cb, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select50 = select i1 %i.cb, i64 9, i64 0
  store ptr %spec.select, ptr %i.g, align 8, !captures !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select50, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cd = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink47 = select i1 %i.cd, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink46 = select i1 %i.cd, i64 4, i64 0
  store ptr %.sink47, ptr %i.f, align 8, !captures !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink46, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.cf, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.i, ptr %i.cg, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.ch, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @162, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #11
  unreachable

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.015.040
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !4 ; 2 uses
  store i8 %i.ck, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bw, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.cl = icmp eq i8 %i.ck, %i.bw
  br i1 %i.cl, label %bb.l, label %.loopexit52, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.cm = add nuw nsw i64 %.sroa.015.040, 2       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.unr-lcssa, label %bb.j

bb.m:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8grow_oneCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #10
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %bb.m
  %i.cn = load ptr, ptr %i.ak, align 8, !alias.scope !1447, !nonnull !4, !noundef !4
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.be ; 2 uses
  store i64 %i.ba, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.bb, ptr %i.cp, align 8
  %i.cq = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.cq, ptr %i.al, align 8
  %exitcond.not = icmp eq i64 %i.as, 128
  br i1 %exitcond.not, label %bb.d, label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait55allocate_with_sufficient_chunk_hint_and_increasing_sizeINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2U_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2U_15dynamic_storage19posix_shared_memory7StorageINtB2O_16AllocatorDetailsB3X_EEEINtNtNtB2U_23resizable_shared_memory7dynamic13DynamicMemoryB3X_B2L_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(i8 noundef range(i8 0, 3) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [2 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 12 uses
  %i.i = alloca [8 x i8], align 8                 ; 10 uses
  %i.j = alloca [1 x i8], align 1                 ; 12 uses
  %i.k = alloca [8 x i8], align 8                 ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [1104 x i8], align 8              ; 4 uses
  %i.p = alloca [1104 x i8], align 8              ; 4 uses
  %i.q = alloca [2464 x i8], align 8              ; 6 uses
  %i.r = alloca [2464 x i8], align 8              ; 5 uses
  %i.s = alloca [1136 x i8], align 8              ; 4 uses
  %i.t = alloca [1136 x i8], align 8              ; 4 uses
  %i.u = alloca [1136 x i8], align 8              ; 4 uses
  %i.v = alloca [1136 x i8], align 8              ; 3 uses
  %i.w = alloca [2488 x i8], align 8              ; 6 uses
  %i.x = alloca [2488 x i8], align 8              ; 5 uses
  %i.y = alloca [824 x i8], align 8               ; 7 uses
  %i.z = alloca [264 x i8], align 8               ; 4 uses
  %i.aa = alloca [264 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.z) #9
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.z) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RINvNtCs7gufeB8TUC6_12iceoryx2_cal7testing24generate_isolated_configINtNtNtB4_23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtB4_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB4_13shared_memory6common7details6MemoryB20_INtNtNtB4_15dynamic_storage19posix_shared_memory7StorageINtB2W_16AllocatorDetailsB20_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([824 x i8]) align 8 captures(address) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa) #9
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE21max_chunk_layout_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.t, i64 noundef 1, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE25max_number_of_chunks_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.u, i64 noundef 128) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 1104
  store i8 %0, ptr %i.ab, align 8
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE6createCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.v) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  %i.ac = load i64, ptr %i.w, align 8, !range !14, !alias.scope !1467, !noundef !4
  %i.ad = icmp eq i64 %i.ac, 2
  br i1 %i.ad, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1468
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !9, !alias.scope !1467, !noundef !4
  store i8 %i.af, ptr %i.c, align 1, !noalias !1468
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #11, !noalias !1469
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2488) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(2488) %i.w, i64 2488, i1 false), !alias.scope !1469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1y_B2r_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1104 x i8]) align 8 captures(none) dereferenceable(1104) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa) #9
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1y_B2r_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1104 x i8]) align 8 captures(none) dereferenceable(1104) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1104) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtB7_32ResizableSharedMemoryViewBuilderB1y_B2r_INtB5_13DynamicMemoryB1y_B2r_EINtB5_11DynamicViewB1y_B2r_EE4openCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2464 x i8]) align 8 captures(none) dereferenceable(2464) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1104) %i.p, i8 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  %i.ag = load i64, ptr %i.q, align 8, !range !14, !alias.scope !1471, !noundef !4
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1472
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !10, !alias.scope !1471, !noundef !4
  store i8 %i.aj, ptr %i.d, align 1, !noalias !1472
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #11, !noalias !1473
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2464) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(2464) %i.q, i64 2464, i1 false), !alias.scope !1473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.e

bb.d:                                             ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.cq
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.g

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %.sroa.011.039 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ], [ %i.as, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ] ; 3 uses
  %i.ar = add nuw nsw i64 %.sroa.011.039, 2       ; 2 uses
  %i.as = add nuw nsw i64 %.sroa.011.039, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEEINtB7_21ResizableSharedMemoryB1t_B2m_E8allocateCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %i.x, i64 noundef 1, i64 noundef %i.ar) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %i.at = load i8, ptr %i.m, align 8, !range !11, !alias.scope !1474, !noundef !4
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1475
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !5, !alias.scope !1474, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.ay = load i8, ptr %i.ax, align 2, !alias.scope !1474
  store i8 %i.aw, ptr %i.b, align 1, !noalias !1475
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !noalias !1475
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #11, !noalias !1474
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.e
  %i.ba = load i64, ptr %i.am, align 8, !alias.scope !1474, !noundef !4
  %i.bb = load ptr, ptr %i.an, align 8, !alias.scope !1474, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bc = trunc nuw nsw i64 %.sroa.011.039 to i8
  %i.bd = shl nuw i8 %i.bc, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i8 %i.bd, i64 range(i64 0, 130) %i.ar, i1 false)
  %i.be = load i64, ptr %i.al, align 8, !alias.scope !1476, !noundef !4 ; 3 uses
  %i.bf = load i64, ptr %i.n, align 8, !range !15, !alias.scope !1476, !noundef !4
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.m, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

.loopexit.unr-lcssa:                              ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.unr-lcssa, %.lr.ph
  %.sroa.015.040.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cm, %.loopexit.unr-lcssa ]
  %lcmp.mod51 = trunc i64 %indvars.iv to i1
  call void @llvm.assume(i1 %lcmp.mod51)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.015.040.epil.init
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !4 ; 2 uses
  store i8 %i.bi, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bw, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.bj = icmp eq i8 %i.bi, %i.bw
  br i1 %i.bj, label %.loopexit.epilog-lcssa, label %.loopexit52, !prof !13

.loopexit.epilog-lcssa:                           ; preds = %.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.unr-lcssa, %.loopexit.epilog-lcssa
  %i.bk = icmp eq i64 %i.bl, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %i.bk, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.d, %.loopexit
  %indvars.iv = phi i64 [ 2, %bb.d ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.sroa.0.043 = phi ptr [ %i.ao, %bb.d ], [ %i.bn, %.loopexit ] ; 3 uses
  %.sroa.7.042 = phi i64 [ 0, %bb.d ], [ %i.bo, %.loopexit ] ; 2 uses
  %.sroa.10.041 = phi i64 [ 128, %bb.d ], [ %i.bl, %.loopexit ]
  %i.bl = add nsw i64 %.sroa.10.041, -1           ; 2 uses
  %i.bm = icmp eq ptr %.sroa.0.043, %i.ap
  br i1 %i.bm, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread, label %bb.h

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread: ; preds = %bb.g, %.loopexit
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1U_INtNtNtBI_15dynamic_storage19posix_shared_memory7StorageINtB2Q_16AllocatorDetailsB1U_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2464) %i.r) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1W_INtNtNtBI_15dynamic_storage19posix_shared_memory7StorageINtB2S_16AllocatorDetailsB1W_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.x) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.y) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 16
  %i.bo = add nuw nsw i64 %.sroa.7.042, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bp = load i64, ptr %.sroa.0.043, align 8, !noundef !4
  call void @_RNvXs7_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_11DynamicViewNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1r_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2n_16AllocatorDetailsB1r_EEEEINtB7_25ResizableSharedMemoryViewB1r_B2k_E29register_and_translate_offsetCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull align 8 %i.r, i64 noundef %i.bp) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %i.bq = load i8, ptr %i.l, align 8, !range !11, !alias.scope !1477, !noundef !4
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.i, label %.lr.ph, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1478
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !range !10, !alias.scope !1477, !noundef !4
  store i8 %i.bt, ptr %i.a, align 1, !noalias !1478
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #11, !noalias !1477
  unreachable

.lr.ph:                                           ; preds = %bb.h
  %i.bu = load ptr, ptr %i.aq, align 8, !alias.scope !1477, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bv = trunc i64 %.sroa.7.042 to i8
  %i.bw = shl i8 %i.bv, 1                         ; 6 uses
  %xtraiter = and i64 %indvars.iv, 1
  %i.bx = icmp eq i64 %indvars.iv, 1
  br i1 %i.bx, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %indvars.iv, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.new
  %.sroa.015.040 = phi i64 [ 0, %.lr.ph.new ], [ %i.cm, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.015.040
  %i.bz = load i8, ptr %i.by, align 1, !noundef !4 ; 2 uses
  store i8 %i.bz, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bw, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.ca = icmp eq i8 %i.bz, %i.bw
  br i1 %i.ca, label %bb.k, label %.loopexit52, !prof !13

.loopexit52:                                      ; preds = %.epil.preheader, %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.cb, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select50 = select i1 %i.cb, i64 9, i64 0
  store ptr %spec.select, ptr %i.g, align 8, !captures !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select50, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cd = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink47 = select i1 %i.cd, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink46 = select i1 %i.cd, i64 4, i64 0
  store ptr %.sink47, ptr %i.f, align 8, !captures !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink46, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.cf, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.i, ptr %i.cg, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.ch, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @162, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #11
  unreachable

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.015.040
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !4 ; 2 uses
  store i8 %i.ck, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bw, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.cl = icmp eq i8 %i.ck, %i.bw
  br i1 %i.cl, label %bb.l, label %.loopexit52, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.cm = add nuw nsw i64 %.sroa.015.040, 2       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.unr-lcssa, label %bb.j

bb.m:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8grow_oneCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #10
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %bb.m
  %i.cn = load ptr, ptr %i.ak, align 8, !alias.scope !1476, !nonnull !4, !noundef !4
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.be ; 2 uses
  store i64 %i.ba, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.bb, ptr %i.cp, align 8
  %i.cq = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.cq, ptr %i.al, align 8
  %exitcond.not = icmp eq i64 %i.as, 128
  br i1 %exitcond.not, label %bb.d, label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait55allocate_with_sufficient_chunk_hint_and_increasing_sizeINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2U_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2U_15dynamic_storage4file7StorageINtB2O_16AllocatorDetailsB3X_EEEINtNtNtB2U_23resizable_shared_memory7dynamic13DynamicMemoryB3X_B2L_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(i8 noundef range(i8 0, 3) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [2 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 12 uses
  %i.i = alloca [8 x i8], align 8                 ; 10 uses
  %i.j = alloca [1 x i8], align 1                 ; 12 uses
  %i.k = alloca [8 x i8], align 8                 ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [1104 x i8], align 8              ; 4 uses
  %i.p = alloca [1104 x i8], align 8              ; 4 uses
  %i.q = alloca [2448 x i8], align 8              ; 6 uses
  %i.r = alloca [2448 x i8], align 8              ; 5 uses
  %i.s = alloca [1136 x i8], align 8              ; 4 uses
  %i.t = alloca [1136 x i8], align 8              ; 4 uses
  %i.u = alloca [1136 x i8], align 8              ; 4 uses
  %i.v = alloca [1136 x i8], align 8              ; 3 uses
  %i.w = alloca [2472 x i8], align 8              ; 6 uses
  %i.x = alloca [2472 x i8], align 8              ; 5 uses
  %i.y = alloca [824 x i8], align 8               ; 7 uses
  %i.z = alloca [264 x i8], align 8               ; 4 uses
  %i.aa = alloca [264 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.z) #9
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.z) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RINvNtCs7gufeB8TUC6_12iceoryx2_cal7testing24generate_isolated_configINtNtNtB4_23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtB4_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB4_13shared_memory6common7details6MemoryB20_INtNtNtB4_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([824 x i8]) align 8 captures(address) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa) #9
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE21max_chunk_layout_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.t, i64 noundef 1, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE25max_number_of_chunks_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.u, i64 noundef 128) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 1104
  store i8 %0, ptr %i.ab, align 8
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE6createCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2472 x i8]) align 8 captures(none) dereferenceable(2472) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.v) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  %i.ac = load i64, ptr %i.w, align 8, !range !14, !alias.scope !1496, !noundef !4
  %i.ad = icmp eq i64 %i.ac, 2
  br i1 %i.ad, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage4file7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1497
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !9, !alias.scope !1496, !noundef !4
  store i8 %i.af, ptr %i.c, align 1, !noalias !1497
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #11, !noalias !1498
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage4file7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2472) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(2472) %i.w, i64 2472, i1 false), !alias.scope !1498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage4file7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1y_B2r_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1104 x i8]) align 8 captures(none) dereferenceable(1104) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa) #9
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage4file7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1y_B2r_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1104 x i8]) align 8 captures(none) dereferenceable(1104) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1104) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage4file7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtB7_32ResizableSharedMemoryViewBuilderB1y_B2r_INtB5_13DynamicMemoryB1y_B2r_EINtB5_11DynamicViewB1y_B2r_EE4openCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2448 x i8]) align 8 captures(none) dereferenceable(2448) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1104) %i.p, i8 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %i.ag = load i64, ptr %i.q, align 8, !range !14, !alias.scope !1500, !noundef !4
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage4file7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1501
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !10, !alias.scope !1500, !noundef !4
  store i8 %i.aj, ptr %i.d, align 1, !noalias !1501
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #11, !noalias !1502
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage4file7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2448) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(2448) %i.q, i64 2448, i1 false), !alias.scope !1502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.e

bb.d:                                             ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.cq
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.g

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %.sroa.011.039 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ], [ %i.as, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ] ; 3 uses
  %i.ar = add nuw nsw i64 %.sroa.011.039, 2       ; 2 uses
  %i.as = add nuw nsw i64 %.sroa.011.039, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage4file7StorageINtB2p_16AllocatorDetailsB1t_EEEEINtB7_21ResizableSharedMemoryB1t_B2m_E8allocateCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %i.x, i64 noundef 1, i64 noundef %i.ar) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  %i.at = load i8, ptr %i.m, align 8, !range !11, !alias.scope !1503, !noundef !4
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1504
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !5, !alias.scope !1503, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.ay = load i8, ptr %i.ax, align 2, !alias.scope !1503
  store i8 %i.aw, ptr %i.b, align 1, !noalias !1504
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !noalias !1504
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #11, !noalias !1503
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.e
  %i.ba = load i64, ptr %i.am, align 8, !alias.scope !1503, !noundef !4
  %i.bb = load ptr, ptr %i.an, align 8, !alias.scope !1503, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bc = trunc nuw nsw i64 %.sroa.011.039 to i8
  %i.bd = shl nuw i8 %i.bc, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i8 %i.bd, i64 range(i64 0, 130) %i.ar, i1 false)
  %i.be = load i64, ptr %i.al, align 8, !alias.scope !1505, !noundef !4 ; 3 uses
  %i.bf = load i64, ptr %i.n, align 8, !range !15, !alias.scope !1505, !noundef !4
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.m, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

.loopexit.unr-lcssa:                              ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.unr-lcssa, %.lr.ph
  %.sroa.015.040.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cm, %.loopexit.unr-lcssa ]
  %lcmp.mod51 = trunc i64 %indvars.iv to i1
  call void @llvm.assume(i1 %lcmp.mod51)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.015.040.epil.init
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !4 ; 2 uses
  store i8 %i.bi, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bw, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.bj = icmp eq i8 %i.bi, %i.bw
  br i1 %i.bj, label %.loopexit.epilog-lcssa, label %.loopexit52, !prof !13

.loopexit.epilog-lcssa:                           ; preds = %.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.unr-lcssa, %.loopexit.epilog-lcssa
  %i.bk = icmp eq i64 %i.bl, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %i.bk, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.d, %.loopexit
  %indvars.iv = phi i64 [ 2, %bb.d ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.sroa.0.043 = phi ptr [ %i.ao, %bb.d ], [ %i.bn, %.loopexit ] ; 3 uses
  %.sroa.7.042 = phi i64 [ 0, %bb.d ], [ %i.bo, %.loopexit ] ; 2 uses
  %.sroa.10.041 = phi i64 [ 128, %bb.d ], [ %i.bl, %.loopexit ]
  %i.bl = add nsw i64 %.sroa.10.041, -1           ; 2 uses
  %i.bm = icmp eq ptr %.sroa.0.043, %i.ap
  br i1 %i.bm, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread, label %bb.h

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread: ; preds = %bb.g, %.loopexit
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1U_INtNtNtBI_15dynamic_storage4file7StorageINtB2Q_16AllocatorDetailsB1U_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2448) %i.r) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1W_INtNtNtBI_15dynamic_storage4file7StorageINtB2S_16AllocatorDetailsB1W_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2472) %i.x) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.y) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 16
  %i.bo = add nuw nsw i64 %.sroa.7.042, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bp = load i64, ptr %.sroa.0.043, align 8, !noundef !4
  call void @_RNvXs7_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_11DynamicViewNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1r_INtNtNtB9_15dynamic_storage4file7StorageINtB2n_16AllocatorDetailsB1r_EEEEINtB7_25ResizableSharedMemoryViewB1r_B2k_E29register_and_translate_offsetCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull align 8 %i.r, i64 noundef %i.bp) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  %i.bq = load i8, ptr %i.l, align 8, !range !11, !alias.scope !1506, !noundef !4
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.i, label %.lr.ph, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1507
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !range !10, !alias.scope !1506, !noundef !4
  store i8 %i.bt, ptr %i.a, align 1, !noalias !1507
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #11, !noalias !1506
  unreachable

.lr.ph:                                           ; preds = %bb.h
  %i.bu = load ptr, ptr %i.aq, align 8, !alias.scope !1506, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bv = trunc i64 %.sroa.7.042 to i8
  %i.bw = shl i8 %i.bv, 1                         ; 6 uses
  %xtraiter = and i64 %indvars.iv, 1
  %i.bx = icmp eq i64 %indvars.iv, 1
  br i1 %i.bx, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %indvars.iv, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.new
  %.sroa.015.040 = phi i64 [ 0, %.lr.ph.new ], [ %i.cm, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.015.040
  %i.bz = load i8, ptr %i.by, align 1, !noundef !4 ; 2 uses
  store i8 %i.bz, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bw, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.ca = icmp eq i8 %i.bz, %i.bw
  br i1 %i.ca, label %bb.k, label %.loopexit52, !prof !13

.loopexit52:                                      ; preds = %.epil.preheader, %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.cb, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select50 = select i1 %i.cb, i64 9, i64 0
  store ptr %spec.select, ptr %i.g, align 8, !captures !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select50, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cd = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink47 = select i1 %i.cd, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink46 = select i1 %i.cd, i64 4, i64 0
  store ptr %.sink47, ptr %i.f, align 8, !captures !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink46, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.cf, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.i, ptr %i.cg, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.ch, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @162, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #11
  unreachable

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.015.040
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !4 ; 2 uses
  store i8 %i.ck, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bw, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.cl = icmp eq i8 %i.ck, %i.bw
  br i1 %i.cl, label %bb.l, label %.loopexit52, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.cm = add nuw nsw i64 %.sroa.015.040, 2       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.unr-lcssa, label %bb.j

bb.m:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8grow_oneCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #10
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %bb.m
  %i.cn = load ptr, ptr %i.ak, align 8, !alias.scope !1505, !nonnull !4, !noundef !4
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.be ; 2 uses
  store i64 %i.ba, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.bb, ptr %i.cp, align 8
  %i.cq = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.cq, ptr %i.al, align 8
  %exitcond.not = icmp eq i64 %i.as, 128
  br i1 %exitcond.not, label %bb.d, label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait57does_exist_works_when_the_start_segment_is_no_longer_usedINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2W_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2W_15dynamic_storage13process_local7StorageINtB2Q_16AllocatorDetailsB3Z_EEEINtNtNtB2W_23resizable_shared_memory7dynamic13DynamicMemoryB3Z_B2N_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [2 x i8], align 1                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait57does_exist_works_when_the_start_segment_is_no_longer_usedINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2W_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2W_15dynamic_storage4file7StorageINtB2Q_16AllocatorDetailsB3Z_EEEINtNtNtB2W_23resizable_shared_memory7dynamic13DynamicMemoryB3Z_B2N_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common:bb.a
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ct, ptr noundef nonnull align 8 dereferenceable(264) %i.ah, i64 264, i1 false)
  %i.cu = add i64 %i.cp, 1
  store i64 %i.cu, ptr %i.ao, align 8, !alias.scope !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2472) %i.l, ptr noundef nonnull align 8 dereferenceable(2472) %i.af, i64 2472, i1 false)
  %i.cv = load i64, ptr %i.am, align 8, !alias.scope !1617, !noundef !4 ; 3 uses
  %i.cw = load i64, ptr %i.aj, align 8, !range !15, !alias.scope !1617, !noundef !4
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.n, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBM_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBM_13shared_memory6common7details6MemoryB20_INtNtNtBM_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEEE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

bb.n:                                             ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBT_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBT_13shared_memory6common7details6MemoryB27_INtNtNtBT_15dynamic_storage4file7StorageINtB33_16AllocatorDetailsB27_EEEEE8grow_oneCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #10, !noalias !1618
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBM_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBM_13shared_memory6common7details6MemoryB20_INtNtNtBM_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEEE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBM_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBM_13shared_memory6common7details6MemoryB20_INtNtNtBM_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEEE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %bb.n
  %i.cy = load ptr, ptr %i.al, align 8, !alias.scope !1617, !nonnull !4, !noundef !4
  %i.cz = getelementptr inbounds nuw [2472 x i8], ptr %i.cy, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2472) %i.cz, ptr noundef nonnull readonly align 8 dereferenceable(2472) %i.l, i64 2472, i1 false)
  %i.da = add i64 %i.cv, 1
  store i64 %i.da, ptr %i.am, align 8, !alias.scope !1617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %exitcond.not = icmp eq i64 %i.ay, 25
  br i1 %exitcond.not, label %bb.b, label %bb.c

bb.o:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.db = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select74 = select i1 %i.db, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select75 = select i1 %i.db, i64 9, i64 0
  store ptr %spec.select74, ptr %i.o, align 8, !captures !12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %spec.select75, ptr %i.dc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dd = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink67 = select i1 %i.dd, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink66 = select i1 %i.dd, i64 4, i64 0
  store ptr %.sink67, ptr %i.n, align 8, !captures !12
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sink66, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.o, ptr %i.m, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.r, ptr %i.df, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.p, ptr %i.dg, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.dh, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @155, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #11
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait58allocate_more_than_hinted_with_increasing_chunk_size_worksINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2X_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2X_15dynamic_storage13process_local7StorageINtB2R_16AllocatorDetailsB40_EEEINtNtNtB2X_23resizable_shared_memory7dynamic13DynamicMemoryB40_B2O_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(i8 noundef range(i8 0, 3) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [2 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 12 uses
  %i.i = alloca [8 x i8], align 8                 ; 10 uses
  %i.j = alloca [1 x i8], align 1                 ; 12 uses
  %i.k = alloca [8 x i8], align 8                 ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [1104 x i8], align 8              ; 4 uses
  %i.p = alloca [1104 x i8], align 8              ; 4 uses
  %i.q = alloca [2688 x i8], align 8              ; 6 uses
  %i.r = alloca [2688 x i8], align 8              ; 5 uses
  %i.s = alloca [1136 x i8], align 8              ; 4 uses
  %i.t = alloca [1136 x i8], align 8              ; 4 uses
  %i.u = alloca [1136 x i8], align 8              ; 4 uses
  %i.v = alloca [1136 x i8], align 8              ; 3 uses
  %i.w = alloca [2712 x i8], align 8              ; 6 uses
  %i.x = alloca [2712 x i8], align 8              ; 5 uses
  %i.y = alloca [824 x i8], align 8               ; 7 uses
  %i.z = alloca [264 x i8], align 8               ; 4 uses
  %i.aa = alloca [264 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.z) #9
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.z) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RINvNtCs7gufeB8TUC6_12iceoryx2_cal7testing24generate_isolated_configINtNtNtB4_23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtB4_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB4_13shared_memory6common7details6MemoryB20_INtNtNtB4_15dynamic_storage13process_local7StorageINtB2W_16AllocatorDetailsB20_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([824 x i8]) align 8 captures(address) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa) #9
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE21max_chunk_layout_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.t, i64 noundef 1, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE25max_number_of_chunks_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.u, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 1104
  store i8 %0, ptr %i.ab, align 8
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE6createCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2712 x i8]) align 8 captures(none) dereferenceable(2712) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.v) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  %i.ac = load i64, ptr %i.w, align 8, !range !7, !alias.scope !1636, !noundef !4
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1637
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !9, !alias.scope !1636, !noundef !4
  store i8 %i.af, ptr %i.c, align 1, !noalias !1637
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #11, !noalias !1638
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2712) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(2712) %i.w, i64 2712, i1 false), !alias.scope !1638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1y_B2r_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1104 x i8]) align 8 captures(none) dereferenceable(1104) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa) #9
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1y_B2r_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1104 x i8]) align 8 captures(none) dereferenceable(1104) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1104) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtB7_32ResizableSharedMemoryViewBuilderB1y_B2r_INtB5_13DynamicMemoryB1y_B2r_EINtB5_11DynamicViewB1y_B2r_EE4openCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2688 x i8]) align 8 captures(none) dereferenceable(2688) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1104) %i.p, i8 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  %i.ag = load i64, ptr %i.q, align 8, !range !7, !alias.scope !1640, !noundef !4
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1641
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !10, !alias.scope !1640, !noundef !4
  store i8 %i.aj, ptr %i.d, align 1, !noalias !1641
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #11, !noalias !1642
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2688) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(2688) %i.q, i64 2688, i1 false), !alias.scope !1642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.e

bb.d:                                             ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.co
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.g

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %.sroa.011.039 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ], [ %i.as, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ] ; 3 uses
  %i.ar = add nuw nsw i64 %.sroa.011.039, 2       ; 2 uses
  %i.as = add nuw nsw i64 %.sroa.011.039, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2p_16AllocatorDetailsB1t_EEEEINtB7_21ResizableSharedMemoryB1t_B2m_E8allocateCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %i.x, i64 noundef 1, i64 noundef %i.ar) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  %i.at = load i8, ptr %i.m, align 8, !range !11, !alias.scope !1643, !noundef !4
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1644
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !5, !alias.scope !1643, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.ay = load i8, ptr %i.ax, align 2, !alias.scope !1643
  store i8 %i.aw, ptr %i.b, align 1, !noalias !1644
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !noalias !1644
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #11, !noalias !1643
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.e
  %i.ba = load i64, ptr %i.am, align 8, !alias.scope !1643, !noundef !4
  %i.bb = load ptr, ptr %i.an, align 8, !alias.scope !1643, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bc = trunc nuw nsw i64 %.sroa.011.039 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i8 %i.bc, i64 range(i64 0, 130) %i.ar, i1 false)
  %i.bd = load i64, ptr %i.al, align 8, !alias.scope !1645, !noundef !4 ; 3 uses
  %i.be = load i64, ptr %i.n, align 8, !range !15, !alias.scope !1645, !noundef !4
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.m, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

.loopexit.unr-lcssa:                              ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.unr-lcssa, %.lr.ph
  %.sroa.015.040.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ck, %.loopexit.unr-lcssa ]
  %lcmp.mod51 = trunc i64 %indvars.iv to i1
  call void @llvm.assume(i1 %lcmp.mod51)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.015.040.epil.init
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !4 ; 2 uses
  store i8 %i.bh, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bu, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.bi = icmp eq i8 %i.bh, %i.bu
  br i1 %i.bi, label %.loopexit.epilog-lcssa, label %.loopexit52, !prof !13

.loopexit.epilog-lcssa:                           ; preds = %.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.unr-lcssa, %.loopexit.epilog-lcssa
  %i.bj = icmp eq i64 %i.bk, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %i.bj, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.d, %.loopexit
  %indvars.iv = phi i64 [ 2, %bb.d ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.sroa.0.043 = phi ptr [ %i.ao, %bb.d ], [ %i.bm, %.loopexit ] ; 3 uses
  %.sroa.7.042 = phi i64 [ 0, %bb.d ], [ %i.bn, %.loopexit ] ; 2 uses
  %.sroa.10.041 = phi i64 [ 128, %bb.d ], [ %i.bk, %.loopexit ]
  %i.bk = add nsw i64 %.sroa.10.041, -1           ; 2 uses
  %i.bl = icmp eq ptr %.sroa.0.043, %i.ap
  br i1 %i.bl, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread, label %bb.h

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread: ; preds = %bb.g, %.loopexit
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1U_INtNtNtBI_15dynamic_storage13process_local7StorageINtB2Q_16AllocatorDetailsB1U_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2688) %i.r) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1W_INtNtNtBI_15dynamic_storage13process_local7StorageINtB2S_16AllocatorDetailsB1W_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2712) %i.x) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.y) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 16
  %i.bn = add nuw nsw i64 %.sroa.7.042, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bo = load i64, ptr %.sroa.0.043, align 8, !noundef !4
  call void @_RNvXs7_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_11DynamicViewNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1r_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2n_16AllocatorDetailsB1r_EEEEINtB7_25ResizableSharedMemoryViewB1r_B2k_E29register_and_translate_offsetCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull align 8 %i.r, i64 noundef %i.bo) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  %i.bp = load i8, ptr %i.l, align 8, !range !11, !alias.scope !1646, !noundef !4
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.i, label %.lr.ph, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1647
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !range !10, !alias.scope !1646, !noundef !4
  store i8 %i.bs, ptr %i.a, align 1, !noalias !1647
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #11, !noalias !1646
  unreachable

.lr.ph:                                           ; preds = %bb.h
  %i.bt = load ptr, ptr %i.aq, align 8, !alias.scope !1646, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bu = trunc i64 %.sroa.7.042 to i8            ; 6 uses
  %xtraiter = and i64 %indvars.iv, 1
  %i.bv = icmp eq i64 %indvars.iv, 1
  br i1 %i.bv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %indvars.iv, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.new
  %.sroa.015.040 = phi i64 [ 0, %.lr.ph.new ], [ %i.ck, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.015.040
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !4 ; 2 uses
  store i8 %i.bx, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bu, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.by = icmp eq i8 %i.bx, %i.bu
  br i1 %i.by, label %bb.k, label %.loopexit52, !prof !13

.loopexit52:                                      ; preds = %.epil.preheader, %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bz = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.bz, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select50 = select i1 %i.bz, i64 9, i64 0
  store ptr %spec.select, ptr %i.g, align 8, !captures !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select50, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink47 = select i1 %i.cb, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink46 = select i1 %i.cb, i64 4, i64 0
  store ptr %.sink47, ptr %i.f, align 8, !captures !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink46, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.cd, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.i, ptr %i.ce, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.cf, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @174, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #11
  unreachable

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.015.040
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !4 ; 2 uses
  store i8 %i.ci, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bu, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.cj = icmp eq i8 %i.ci, %i.bu
  br i1 %i.cj, label %bb.l, label %.loopexit52, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.ck = add nuw nsw i64 %.sroa.015.040, 2       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.unr-lcssa, label %bb.j

bb.m:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8grow_oneCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #10
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %bb.m
  %i.cl = load ptr, ptr %i.ak, align 8, !alias.scope !1645, !nonnull !4, !noundef !4
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.bd ; 2 uses
  store i64 %i.ba, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.bb, ptr %i.cn, align 8
  %i.co = add i64 %i.bd, 1                        ; 2 uses
  store i64 %i.co, ptr %i.al, align 8
  %exitcond.not = icmp eq i64 %i.as, 128
  br i1 %exitcond.not, label %bb.d, label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait58allocate_more_than_hinted_with_increasing_chunk_size_worksINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2X_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2X_15dynamic_storage19posix_shared_memory7StorageINtB2R_16AllocatorDetailsB40_EEEINtNtNtB2X_23resizable_shared_memory7dynamic13DynamicMemoryB40_B2O_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(i8 noundef range(i8 0, 3) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [2 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 12 uses
  %i.i = alloca [8 x i8], align 8                 ; 10 uses
  %i.j = alloca [1 x i8], align 1                 ; 12 uses
  %i.k = alloca [8 x i8], align 8                 ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [1104 x i8], align 8              ; 4 uses
  %i.p = alloca [1104 x i8], align 8              ; 4 uses
  %i.q = alloca [2464 x i8], align 8              ; 6 uses
  %i.r = alloca [2464 x i8], align 8              ; 5 uses
  %i.s = alloca [1136 x i8], align 8              ; 4 uses
  %i.t = alloca [1136 x i8], align 8              ; 4 uses
  %i.u = alloca [1136 x i8], align 8              ; 4 uses
  %i.v = alloca [1136 x i8], align 8              ; 3 uses
  %i.w = alloca [2488 x i8], align 8              ; 6 uses
  %i.x = alloca [2488 x i8], align 8              ; 5 uses
  %i.y = alloca [824 x i8], align 8               ; 7 uses
  %i.z = alloca [264 x i8], align 8               ; 4 uses
  %i.aa = alloca [264 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.z) #9
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.z) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RINvNtCs7gufeB8TUC6_12iceoryx2_cal7testing24generate_isolated_configINtNtNtB4_23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtB4_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB4_13shared_memory6common7details6MemoryB20_INtNtNtB4_15dynamic_storage19posix_shared_memory7StorageINtB2W_16AllocatorDetailsB20_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([824 x i8]) align 8 captures(address) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa) #9
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE21max_chunk_layout_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.t, i64 noundef 1, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE25max_number_of_chunks_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.u, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 1104
  store i8 %0, ptr %i.ab, align 8
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE6createCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.v) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1664)
  call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  %i.ac = load i64, ptr %i.w, align 8, !range !14, !alias.scope !1665, !noundef !4
  %i.ad = icmp eq i64 %i.ac, 2
  br i1 %i.ad, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1666
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !9, !alias.scope !1665, !noundef !4
  store i8 %i.af, ptr %i.c, align 1, !noalias !1666
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #11, !noalias !1667
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2488) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(2488) %i.w, i64 2488, i1 false), !alias.scope !1667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1y_B2r_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1104 x i8]) align 8 captures(none) dereferenceable(1104) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa) #9
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1y_B2r_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1104 x i8]) align 8 captures(none) dereferenceable(1104) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1104) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtB7_32ResizableSharedMemoryViewBuilderB1y_B2r_INtB5_13DynamicMemoryB1y_B2r_EINtB5_11DynamicViewB1y_B2r_EE4openCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2464 x i8]) align 8 captures(none) dereferenceable(2464) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1104) %i.p, i8 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  call void @llvm.experimental.noalias.scope.decl(metadata !1669)
  %i.ag = load i64, ptr %i.q, align 8, !range !14, !alias.scope !1669, !noundef !4
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1670
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !10, !alias.scope !1669, !noundef !4
  store i8 %i.aj, ptr %i.d, align 1, !noalias !1670
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #11, !noalias !1671
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2464) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(2464) %i.q, i64 2464, i1 false), !alias.scope !1671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.e

bb.d:                                             ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.co
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.g

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %.sroa.011.039 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ], [ %i.as, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ] ; 3 uses
  %i.ar = add nuw nsw i64 %.sroa.011.039, 2       ; 2 uses
  %i.as = add nuw nsw i64 %.sroa.011.039, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEEINtB7_21ResizableSharedMemoryB1t_B2m_E8allocateCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %i.x, i64 noundef 1, i64 noundef %i.ar) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  %i.at = load i8, ptr %i.m, align 8, !range !11, !alias.scope !1672, !noundef !4
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1673
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !5, !alias.scope !1672, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.ay = load i8, ptr %i.ax, align 2, !alias.scope !1672
  store i8 %i.aw, ptr %i.b, align 1, !noalias !1673
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !noalias !1673
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #11, !noalias !1672
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.e
  %i.ba = load i64, ptr %i.am, align 8, !alias.scope !1672, !noundef !4
  %i.bb = load ptr, ptr %i.an, align 8, !alias.scope !1672, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bc = trunc nuw nsw i64 %.sroa.011.039 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i8 %i.bc, i64 range(i64 0, 130) %i.ar, i1 false)
  %i.bd = load i64, ptr %i.al, align 8, !alias.scope !1674, !noundef !4 ; 3 uses
  %i.be = load i64, ptr %i.n, align 8, !range !15, !alias.scope !1674, !noundef !4
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.m, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

.loopexit.unr-lcssa:                              ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.unr-lcssa, %.lr.ph
  %.sroa.015.040.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ck, %.loopexit.unr-lcssa ]
  %lcmp.mod51 = trunc i64 %indvars.iv to i1
  call void @llvm.assume(i1 %lcmp.mod51)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.015.040.epil.init
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !4 ; 2 uses
  store i8 %i.bh, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bu, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.bi = icmp eq i8 %i.bh, %i.bu
  br i1 %i.bi, label %.loopexit.epilog-lcssa, label %.loopexit52, !prof !13

.loopexit.epilog-lcssa:                           ; preds = %.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.unr-lcssa, %.loopexit.epilog-lcssa
  %i.bj = icmp eq i64 %i.bk, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %i.bj, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.d, %.loopexit
  %indvars.iv = phi i64 [ 2, %bb.d ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.sroa.0.043 = phi ptr [ %i.ao, %bb.d ], [ %i.bm, %.loopexit ] ; 3 uses
  %.sroa.7.042 = phi i64 [ 0, %bb.d ], [ %i.bn, %.loopexit ] ; 2 uses
  %.sroa.10.041 = phi i64 [ 128, %bb.d ], [ %i.bk, %.loopexit ]
  %i.bk = add nsw i64 %.sroa.10.041, -1           ; 2 uses
  %i.bl = icmp eq ptr %.sroa.0.043, %i.ap
  br i1 %i.bl, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread, label %bb.h

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread: ; preds = %bb.g, %.loopexit
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1U_INtNtNtBI_15dynamic_storage19posix_shared_memory7StorageINtB2Q_16AllocatorDetailsB1U_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2464) %i.r) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1W_INtNtNtBI_15dynamic_storage19posix_shared_memory7StorageINtB2S_16AllocatorDetailsB1W_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.x) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.y) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 16
  %i.bn = add nuw nsw i64 %.sroa.7.042, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bo = load i64, ptr %.sroa.0.043, align 8, !noundef !4
  call void @_RNvXs7_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_11DynamicViewNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1r_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2n_16AllocatorDetailsB1r_EEEEINtB7_25ResizableSharedMemoryViewB1r_B2k_E29register_and_translate_offsetCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull align 8 %i.r, i64 noundef %i.bo) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  %i.bp = load i8, ptr %i.l, align 8, !range !11, !alias.scope !1675, !noundef !4
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.i, label %.lr.ph, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1676
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !range !10, !alias.scope !1675, !noundef !4
  store i8 %i.bs, ptr %i.a, align 1, !noalias !1676
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #11, !noalias !1675
  unreachable

.lr.ph:                                           ; preds = %bb.h
  %i.bt = load ptr, ptr %i.aq, align 8, !alias.scope !1675, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bu = trunc i64 %.sroa.7.042 to i8            ; 6 uses
  %xtraiter = and i64 %indvars.iv, 1
  %i.bv = icmp eq i64 %indvars.iv, 1
  br i1 %i.bv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %indvars.iv, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.new
  %.sroa.015.040 = phi i64 [ 0, %.lr.ph.new ], [ %i.ck, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.015.040
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !4 ; 2 uses
  store i8 %i.bx, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bu, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.by = icmp eq i8 %i.bx, %i.bu
  br i1 %i.by, label %bb.k, label %.loopexit52, !prof !13

.loopexit52:                                      ; preds = %.epil.preheader, %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bz = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.bz, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select50 = select i1 %i.bz, i64 9, i64 0
  store ptr %spec.select, ptr %i.g, align 8, !captures !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select50, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink47 = select i1 %i.cb, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink46 = select i1 %i.cb, i64 4, i64 0
  store ptr %.sink47, ptr %i.f, align 8, !captures !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink46, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.cd, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.i, ptr %i.ce, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.cf, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @174, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #11
  unreachable

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.015.040
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !4 ; 2 uses
  store i8 %i.ci, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bu, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.cj = icmp eq i8 %i.ci, %i.bu
  br i1 %i.cj, label %bb.l, label %.loopexit52, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.ck = add nuw nsw i64 %.sroa.015.040, 2       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.unr-lcssa, label %bb.j

bb.m:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8grow_oneCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #10
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %bb.m
  %i.cl = load ptr, ptr %i.ak, align 8, !alias.scope !1674, !nonnull !4, !noundef !4
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.bd ; 2 uses
  store i64 %i.ba, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.bb, ptr %i.cn, align 8
  %i.co = add i64 %i.bd, 1                        ; 2 uses
  store i64 %i.co, ptr %i.al, align 8
  %exitcond.not = icmp eq i64 %i.as, 128
  br i1 %exitcond.not, label %bb.d, label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait58allocate_more_than_hinted_with_increasing_chunk_size_worksINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2X_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2X_15dynamic_storage4file7StorageINtB2R_16AllocatorDetailsB40_EEEINtNtNtB2X_23resizable_shared_memory7dynamic13DynamicMemoryB40_B2O_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(i8 noundef range(i8 0, 3) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [2 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 12 uses
  %i.i = alloca [8 x i8], align 8                 ; 10 uses
  %i.j = alloca [1 x i8], align 1                 ; 12 uses
  %i.k = alloca [8 x i8], align 8                 ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [1104 x i8], align 8              ; 4 uses
  %i.p = alloca [1104 x i8], align 8              ; 4 uses
  %i.q = alloca [2448 x i8], align 8              ; 6 uses
  %i.r = alloca [2448 x i8], align 8              ; 5 uses
  %i.s = alloca [1136 x i8], align 8              ; 4 uses
  %i.t = alloca [1136 x i8], align 8              ; 4 uses
  %i.u = alloca [1136 x i8], align 8              ; 4 uses
  %i.v = alloca [1136 x i8], align 8              ; 3 uses
  %i.w = alloca [2472 x i8], align 8              ; 6 uses
  %i.x = alloca [2472 x i8], align 8              ; 5 uses
  %i.y = alloca [824 x i8], align 8               ; 7 uses
  %i.z = alloca [264 x i8], align 8               ; 4 uses
  %i.aa = alloca [264 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.z) #9
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.z) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RINvNtCs7gufeB8TUC6_12iceoryx2_cal7testing24generate_isolated_configINtNtNtB4_23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtB4_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB4_13shared_memory6common7details6MemoryB20_INtNtNtB4_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([824 x i8]) align 8 captures(address) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa) #9
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE21max_chunk_layout_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.t, i64 noundef 1, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE25max_number_of_chunks_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.u, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 1104
  store i8 %0, ptr %i.ab, align 8
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE6createCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2472 x i8]) align 8 captures(none) dereferenceable(2472) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.v) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  %i.ac = load i64, ptr %i.w, align 8, !range !14, !alias.scope !1694, !noundef !4
  %i.ad = icmp eq i64 %i.ac, 2
  br i1 %i.ad, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage4file7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1695
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !9, !alias.scope !1694, !noundef !4
  store i8 %i.af, ptr %i.c, align 1, !noalias !1695
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #11, !noalias !1696
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage4file7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2472) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(2472) %i.w, i64 2472, i1 false), !alias.scope !1696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage4file7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1y_B2r_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1104 x i8]) align 8 captures(none) dereferenceable(1104) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa) #9
  call void @_RNvXs1_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage4file7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1y_B2r_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1104 x i8]) align 8 captures(none) dereferenceable(1104) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1104) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_18DynamicViewBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1y_INtNtNtB9_15dynamic_storage4file7StorageINtB2u_16AllocatorDetailsB1y_EEEEINtB7_32ResizableSharedMemoryViewBuilderB1y_B2r_INtB5_13DynamicMemoryB1y_B2r_EINtB5_11DynamicViewB1y_B2r_EE4openCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2448 x i8]) align 8 captures(none) dereferenceable(2448) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1104) %i.p, i8 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  %i.ag = load i64, ptr %i.q, align 8, !range !14, !alias.scope !1698, !noundef !4
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage4file7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1699
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !10, !alias.scope !1698, !noundef !4
  store i8 %i.aj, ptr %i.d, align 1, !noalias !1699
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #11, !noalias !1700
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage4file7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2448) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(2448) %i.q, i64 2448, i1 false), !alias.scope !1700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.e

bb.d:                                             ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.co
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.g

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  %.sroa.011.039 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB20_INtNtNtBO_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEENtB30_21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ], [ %i.as, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit ] ; 3 uses
  %i.ar = add nuw nsw i64 %.sroa.011.039, 2       ; 2 uses
  %i.as = add nuw nsw i64 %.sroa.011.039, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage4file7StorageINtB2p_16AllocatorDetailsB1t_EEEEINtB7_21ResizableSharedMemoryB1t_B2m_E8allocateCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %i.x, i64 noundef 1, i64 noundef %i.ar) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  %i.at = load i8, ptr %i.m, align 8, !range !11, !alias.scope !1701, !noundef !4
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1702
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !5, !alias.scope !1701, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.ay = load i8, ptr %i.ax, align 2, !alias.scope !1701
  store i8 %i.aw, ptr %i.b, align 1, !noalias !1702
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !noalias !1702
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #11, !noalias !1701
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.e
  %i.ba = load i64, ptr %i.am, align 8, !alias.scope !1701, !noundef !4
  %i.bb = load ptr, ptr %i.an, align 8, !alias.scope !1701, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bc = trunc nuw nsw i64 %.sroa.011.039 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i8 %i.bc, i64 range(i64 0, 130) %i.ar, i1 false)
  %i.bd = load i64, ptr %i.al, align 8, !alias.scope !1703, !noundef !4 ; 3 uses
  %i.be = load i64, ptr %i.n, align 8, !range !15, !alias.scope !1703, !noundef !4
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.m, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

.loopexit.unr-lcssa:                              ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.unr-lcssa, %.lr.ph
  %.sroa.015.040.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ck, %.loopexit.unr-lcssa ]
  %lcmp.mod51 = trunc i64 %indvars.iv to i1
  call void @llvm.assume(i1 %lcmp.mod51)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.015.040.epil.init
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !4 ; 2 uses
  store i8 %i.bh, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bu, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.bi = icmp eq i8 %i.bh, %i.bu
  br i1 %i.bi, label %.loopexit.epilog-lcssa, label %.loopexit52, !prof !13

.loopexit.epilog-lcssa:                           ; preds = %.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.unr-lcssa, %.loopexit.epilog-lcssa
  %i.bj = icmp eq i64 %i.bk, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %i.bj, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.d, %.loopexit
  %indvars.iv = phi i64 [ 2, %bb.d ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %.sroa.0.043 = phi ptr [ %i.ao, %bb.d ], [ %i.bm, %.loopexit ] ; 3 uses
  %.sroa.7.042 = phi i64 [ 0, %bb.d ], [ %i.bn, %.loopexit ] ; 2 uses
  %.sroa.10.041 = phi i64 [ 128, %bb.d ], [ %i.bk, %.loopexit ]
  %i.bk = add nsw i64 %.sroa.10.041, -1           ; 2 uses
  %i.bl = icmp eq ptr %.sroa.0.043, %i.ap
  br i1 %i.bl, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread, label %bb.h

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerEENtNtNtB8_6traits8iterator8Iterator4nextCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit.thread: ; preds = %bb.g, %.loopexit
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1U_INtNtNtBI_15dynamic_storage4file7StorageINtB2Q_16AllocatorDetailsB1U_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2448) %i.r) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1W_INtNtNtBI_15dynamic_storage4file7StorageINtB2S_16AllocatorDetailsB1W_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2472) %i.x) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.y) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.y) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 16
  %i.bn = add nuw nsw i64 %.sroa.7.042, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bo = load i64, ptr %.sroa.0.043, align 8, !noundef !4
  call void @_RNvXs7_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_11DynamicViewNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1r_INtNtNtB9_15dynamic_storage4file7StorageINtB2n_16AllocatorDetailsB1r_EEEEINtB7_25ResizableSharedMemoryViewB1r_B2k_E29register_and_translate_offsetCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull align 8 %i.r, i64 noundef %i.bo) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  %i.bp = load i8, ptr %i.l, align 8, !range !11, !alias.scope !1704, !noundef !4
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.i, label %.lr.ph, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1705
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !range !10, !alias.scope !1704, !noundef !4
  store i8 %i.bs, ptr %i.a, align 1, !noalias !1705
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #11, !noalias !1704
  unreachable

.lr.ph:                                           ; preds = %bb.h
  %i.bt = load ptr, ptr %i.aq, align 8, !alias.scope !1704, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bu = trunc i64 %.sroa.7.042 to i8            ; 6 uses
  %xtraiter = and i64 %indvars.iv, 1
  %i.bv = icmp eq i64 %indvars.iv, 1
  br i1 %i.bv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %indvars.iv, -2
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.new
  %.sroa.015.040 = phi i64 [ 0, %.lr.ph.new ], [ %i.ck, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.015.040
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !4 ; 2 uses
  store i8 %i.bx, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bu, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.by = icmp eq i8 %i.bx, %i.bu
  br i1 %i.by, label %bb.k, label %.loopexit52, !prof !13

.loopexit52:                                      ; preds = %.epil.preheader, %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bz = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.bz, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select50 = select i1 %i.bz, i64 9, i64 0
  store ptr %spec.select, ptr %i.g, align 8, !captures !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select50, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink47 = select i1 %i.cb, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink46 = select i1 %i.cb, i64 4, i64 0
  store ptr %.sink47, ptr %i.f, align 8, !captures !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink46, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.cd, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.i, ptr %i.ce, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.cf, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @174, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #11
  unreachable

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.015.040
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !4 ; 2 uses
  store i8 %i.ci, ptr %i.j, align 1
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.bu, ptr %i.h, align 1
  store ptr %i.h, ptr %i.i, align 8
  %i.cj = icmp eq i8 %i.ci, %i.bu
  br i1 %i.cj, label %bb.l, label %.loopexit52, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.ck = add nuw nsw i64 %.sroa.015.040, 2       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.unr-lcssa, label %bb.j

bb.m:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8grow_oneCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #10
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerE8push_mutCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, %bb.m
  %i.cl = load ptr, ptr %i.ak, align 8, !alias.scope !1703, !nonnull !4, !noundef !4
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.bd ; 2 uses
  store i64 %i.ba, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.bb, ptr %i.cn, align 8
  %i.co = add i64 %i.bd, 1                        ; 2 uses
  store i64 %i.co, ptr %i.al, align 8
  %exitcond.not = icmp eq i64 %i.as, 128
  br i1 %exitcond.not, label %bb.d, label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait59static_allocation_strategy_does_not_resize_available_chunksINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2Y_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2Y_15dynamic_storage13process_local7StorageINtB2S_16AllocatorDetailsB41_EEEINtNtNtB2Y_23resizable_shared_memory7dynamic13DynamicMemoryB41_B2P_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [1136 x i8], align 8              ; 4 uses
  %i.g = alloca [1136 x i8], align 8              ; 3 uses
  %i.h = alloca [1136 x i8], align 8              ; 4 uses
  %i.i = alloca [1136 x i8], align 8              ; 4 uses
  %i.j = alloca [2712 x i8], align 8              ; 6 uses
end_hunk_1
