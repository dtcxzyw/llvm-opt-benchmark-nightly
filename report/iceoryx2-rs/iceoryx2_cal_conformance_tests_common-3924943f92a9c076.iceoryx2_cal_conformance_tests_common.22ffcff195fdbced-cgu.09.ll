Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cal_conformance_tests_common-3924943f92a9c076.iceoryx2_cal_conformance_tests_common.22ffcff195fdbced-cgu.09?download=true
inline.NumInlined: 549
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait42open_when_zero_segment_not_available_worksINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2H_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2H_15dynamic_storage4file7StorageINtB2B_16AllocatorDetailsB3K_EEEINtNtNtB2H_23resizable_shared_memory7dynamic13DynamicMemoryB3K_B2y_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common:bb.a
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @45, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #11
  unreachable

bb.j:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultPhNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic11DynamicViewNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1U_INtNtNtBI_15dynamic_storage4file7StorageINtB2Q_16AllocatorDetailsB1U_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2448) %i.q) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1W_INtNtNtBI_15dynamic_storage4file7StorageINtB2S_16AllocatorDetailsB1W_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2472) %i.af) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.ai) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.ai) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  ret void

bb.k:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultPhNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory21SharedMemoryOpenErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ck = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select41 = select i1 %i.ck, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select42 = select i1 %i.ck, i64 9, i64 0
  store ptr %spec.select41, ptr %i.i, align 8, !captures !12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %spec.select42, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cm = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink37 = select i1 %i.cm, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink36 = select i1 %i.cm, i64 4, i64 0
  store ptr %.sink37, ptr %i.h, align 8, !captures !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sink36, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.418.0..sroa_idx, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.l, ptr %i.co, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRmNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.422.0..sroa_idx, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.j, ptr %i.cp, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRmNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.426.0..sroa_idx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.h, ptr %i.cq, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.430.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @83, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #11
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait43deallocate_last_segment_does_not_release_itINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2I_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2I_15dynamic_storage13process_local7StorageINtB2C_16AllocatorDetailsB3L_EEEINtNtNtB2I_23resizable_shared_memory7dynamic13DynamicMemoryB3L_B2z_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [2 x i8], align 1                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [1136 x i8], align 8              ; 4 uses
  %i.q = alloca [1136 x i8], align 8              ; 3 uses
  %i.r = alloca [1136 x i8], align 8              ; 4 uses
  %i.s = alloca [1136 x i8], align 8              ; 4 uses
  %i.t = alloca [2712 x i8], align 8              ; 6 uses
  %i.u = alloca [2712 x i8], align 8              ; 6 uses
  %i.v = alloca [824 x i8], align 8               ; 6 uses
  %i.w = alloca [264 x i8], align 8               ; 4 uses
  %i.x = alloca [264 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.w) #9
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.w) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RINvNtCs7gufeB8TUC6_12iceoryx2_cal7testing24generate_isolated_configINtNtNtB4_23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtB4_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB4_13shared_memory6common7details6MemoryB20_INtNtNtB4_15dynamic_storage13process_local7StorageINtB2W_16AllocatorDetailsB20_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([824 x i8]) align 8 captures(address) dereferenceable(824) %i.v) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.x) #9
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.v) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 1104
  store i8 2, ptr %i.y, align 8
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE21max_chunk_layout_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.q, i64 noundef 1, i64 noundef 1) #9
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE25max_number_of_chunks_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.r, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE6createCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2712 x i8]) align 8 captures(none) dereferenceable(2712) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.s) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.z = load i64, ptr %i.t, align 8, !range !7, !alias.scope !829, !noundef !4
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !830
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !range !9, !alias.scope !829, !noundef !4
  store i8 %i.ac, ptr %i.a, align 1, !noalias !830
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #11, !noalias !831
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2712) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(2712) %i.t, i64 2712, i1 false), !alias.scope !831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2p_16AllocatorDetailsB1t_EEEEINtB7_21ResizableSharedMemoryB1t_B2m_E8allocateCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 8 %i.u, i64 noundef 1, i64 noundef 1) #9
  %i.ad = load i8, ptr %i.o, align 8, !range !11, !noundef !4
  %i.ae = icmp eq i8 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.ae, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.af = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.af, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select53 = select i1 %i.af, i64 9, i64 0
  store ptr %spec.select, ptr %i.n, align 8, !captures !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %spec.select53, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ah = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink44 = select i1 %i.ah, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink43 = select i1 %i.ah, i64 4, i64 0
  store ptr %.sink44, ptr %i.m, align 8, !captures !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sink43, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.44.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.aj, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.48.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #11
  unreachable

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2p_16AllocatorDetailsB1t_EEEEINtB7_21ResizableSharedMemoryB1t_B2m_E8allocateCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull align 8 %i.u, i64 noundef 1, i64 noundef 1) #9
  %i.ak = load i8, ptr %i.k, align 8, !range !11, !noundef !4
  %.not = icmp eq i8 %i.ak, 0
  br i1 %.not, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.al = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select54 = select i1 %i.al, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select55 = select i1 %i.al, i64 9, i64 0
  store ptr %spec.select54, ptr %i.j, align 8, !captures !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %spec.select55, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.an = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink48 = select i1 %i.an, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink47 = select i1 %i.an, i64 4, i64 0
  store ptr %.sink48, ptr %i.i, align 8, !captures !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sink47, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.ap, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @89, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !range !5, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.at = load i8, ptr %i.as, align 2             ; 2 uses
  store i8 %i.ar, ptr %i.f, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.at, ptr %i.au, align 1
  store ptr %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @91, ptr %i.e, align 8, !captures !12
  %i.av = icmp eq i8 %i.ar, 1
  %i.aw = icmp eq i8 %i.at, 3
  %or.cond38 = select i1 %i.av, i1 %i.aw, i1 false, !prof !16
  br i1 %or.cond38, label %bb.g, label %_RNvXs9_NtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memoryNtB5_27ResizableShmAllocationErrorNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq.exit.thread, !prof !16

_RNvXs9_NtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memoryNtB5_27ResizableShmAllocationErrorNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ax = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select56 = select i1 %i.ax, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select57 = select i1 %i.ax, i64 9, i64 0
  store ptr %spec.select56, ptr %i.d, align 8, !captures !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %spec.select57, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.az = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink52 = select i1 %i.az, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink51 = select i1 %i.az, i64 4, i64 0
  store ptr %.sink52, ptr %i.c, align 8, !captures !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink51, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.bb, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory27ResizableShmAllocationErrorNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.bc, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory27ResizableShmAllocationErrorNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.c, ptr %i.bd, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @92, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #11
  unreachable

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1W_INtNtNtBI_15dynamic_storage13process_local7StorageINtB2S_16AllocatorDetailsB1W_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2712) %i.u) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.v) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.v) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait43deallocate_last_segment_does_not_release_itINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2I_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2I_15dynamic_storage19posix_shared_memory7StorageINtB2C_16AllocatorDetailsB3L_EEEINtNtNtB2I_23resizable_shared_memory7dynamic13DynamicMemoryB3L_B2z_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [2 x i8], align 1                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [1136 x i8], align 8              ; 4 uses
  %i.q = alloca [1136 x i8], align 8              ; 3 uses
  %i.r = alloca [1136 x i8], align 8              ; 4 uses
  %i.s = alloca [1136 x i8], align 8              ; 4 uses
  %i.t = alloca [2488 x i8], align 8              ; 6 uses
  %i.u = alloca [2488 x i8], align 8              ; 6 uses
  %i.v = alloca [824 x i8], align 8               ; 6 uses
  %i.w = alloca [264 x i8], align 8               ; 4 uses
  %i.x = alloca [264 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.w) #9
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.w) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RINvNtCs7gufeB8TUC6_12iceoryx2_cal7testing24generate_isolated_configINtNtNtB4_23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtB4_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB4_13shared_memory6common7details6MemoryB20_INtNtNtB4_15dynamic_storage19posix_shared_memory7StorageINtB2W_16AllocatorDetailsB20_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([824 x i8]) align 8 captures(address) dereferenceable(824) %i.v) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.x) #9
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.v) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 1104
  store i8 2, ptr %i.y, align 8
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE21max_chunk_layout_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.q, i64 noundef 1, i64 noundef 1) #9
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE25max_number_of_chunks_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.r, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE6createCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.s) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %i.z = load i64, ptr %i.t, align 8, !range !14, !alias.scope !837, !noundef !4
  %i.aa = icmp eq i64 %i.z, 2
  br i1 %i.aa, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !838
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !range !9, !alias.scope !837, !noundef !4
  store i8 %i.ac, ptr %i.a, align 1, !noalias !838
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #11, !noalias !839
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2488) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(2488) %i.t, i64 2488, i1 false), !alias.scope !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEEINtB7_21ResizableSharedMemoryB1t_B2m_E8allocateCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 8 %i.u, i64 noundef 1, i64 noundef 1) #9
  %i.ad = load i8, ptr %i.o, align 8, !range !11, !noundef !4
  %i.ae = icmp eq i8 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.ae, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.af = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.af, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select53 = select i1 %i.af, i64 9, i64 0
  store ptr %spec.select, ptr %i.n, align 8, !captures !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %spec.select53, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ah = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink44 = select i1 %i.ah, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink43 = select i1 %i.ah, i64 4, i64 0
  store ptr %.sink44, ptr %i.m, align 8, !captures !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sink43, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.44.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.aj, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.48.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #11
  unreachable

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage19posix_shared_memory7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEEINtB7_21ResizableSharedMemoryB1t_B2m_E8allocateCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull align 8 %i.u, i64 noundef 1, i64 noundef 1) #9
  %i.ak = load i8, ptr %i.k, align 8, !range !11, !noundef !4
  %.not = icmp eq i8 %i.ak, 0
  br i1 %.not, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.al = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select54 = select i1 %i.al, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select55 = select i1 %i.al, i64 9, i64 0
  store ptr %spec.select54, ptr %i.j, align 8, !captures !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %spec.select55, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.an = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink48 = select i1 %i.an, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink47 = select i1 %i.an, i64 4, i64 0
  store ptr %.sink48, ptr %i.i, align 8, !captures !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sink47, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.ap, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @89, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !range !5, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.at = load i8, ptr %i.as, align 2             ; 2 uses
  store i8 %i.ar, ptr %i.f, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.at, ptr %i.au, align 1
  store ptr %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @91, ptr %i.e, align 8, !captures !12
  %i.av = icmp eq i8 %i.ar, 1
  %i.aw = icmp eq i8 %i.at, 3
  %or.cond38 = select i1 %i.av, i1 %i.aw, i1 false, !prof !16
  br i1 %or.cond38, label %bb.g, label %_RNvXs9_NtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memoryNtB5_27ResizableShmAllocationErrorNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq.exit.thread, !prof !16

_RNvXs9_NtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memoryNtB5_27ResizableShmAllocationErrorNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ax = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select56 = select i1 %i.ax, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select57 = select i1 %i.ax, i64 9, i64 0
  store ptr %spec.select56, ptr %i.d, align 8, !captures !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %spec.select57, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.az = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink52 = select i1 %i.az, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink51 = select i1 %i.az, i64 4, i64 0
  store ptr %.sink52, ptr %i.c, align 8, !captures !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink51, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.bb, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory27ResizableShmAllocationErrorNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.bc, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory27ResizableShmAllocationErrorNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.c, ptr %i.bd, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @92, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #11
  unreachable

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1W_INtNtNtBI_15dynamic_storage19posix_shared_memory7StorageINtB2S_16AllocatorDetailsB1W_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.u) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.v) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.v) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait43deallocate_last_segment_does_not_release_itINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2I_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2I_15dynamic_storage4file7StorageINtB2C_16AllocatorDetailsB3L_EEEINtNtNtB2I_23resizable_shared_memory7dynamic13DynamicMemoryB3L_B2z_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [2 x i8], align 1                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [1136 x i8], align 8              ; 4 uses
  %i.q = alloca [1136 x i8], align 8              ; 3 uses
  %i.r = alloca [1136 x i8], align 8              ; 4 uses
  %i.s = alloca [1136 x i8], align 8              ; 4 uses
  %i.t = alloca [2472 x i8], align 8              ; 6 uses
  %i.u = alloca [2472 x i8], align 8              ; 6 uses
  %i.v = alloca [824 x i8], align 8               ; 6 uses
  %i.w = alloca [264 x i8], align 8               ; 4 uses
  %i.x = alloca [264 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.w) #9
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.w) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RINvNtCs7gufeB8TUC6_12iceoryx2_cal7testing24generate_isolated_configINtNtNtB4_23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtB4_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB4_13shared_memory6common7details6MemoryB20_INtNtNtB4_15dynamic_storage4file7StorageINtB2W_16AllocatorDetailsB20_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([824 x i8]) align 8 captures(address) dereferenceable(824) %i.v) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.x) #9
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.v) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 1104
  store i8 2, ptr %i.y, align 8
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE21max_chunk_layout_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.q, i64 noundef 1, i64 noundef 1) #9
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE25max_number_of_chunks_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.r, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage4file7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE6createCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2472 x i8]) align 8 captures(none) dereferenceable(2472) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.s) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.z = load i64, ptr %i.t, align 8, !range !14, !alias.scope !845, !noundef !4
  %i.aa = icmp eq i64 %i.z, 2
  br i1 %i.aa, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage4file7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !846
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !range !9, !alias.scope !845, !noundef !4
  store i8 %i.ac, ptr %i.a, align 1, !noalias !846
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #11, !noalias !847
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage4file7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2472) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(2472) %i.t, i64 2472, i1 false), !alias.scope !847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage4file7StorageINtB2p_16AllocatorDetailsB1t_EEEEINtB7_21ResizableSharedMemoryB1t_B2m_E8allocateCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 8 %i.u, i64 noundef 1, i64 noundef 1) #9
  %i.ad = load i8, ptr %i.o, align 8, !range !11, !noundef !4
  %i.ae = icmp eq i8 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.ae, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage4file7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.af = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select = select i1 %i.af, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select53 = select i1 %i.af, i64 9, i64 0
  store ptr %spec.select, ptr %i.n, align 8, !captures !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %spec.select53, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ah = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink44 = select i1 %i.ah, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink43 = select i1 %i.ah, i64 4, i64 0
  store ptr %.sink44, ptr %i.m, align 8, !captures !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sink43, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.44.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.aj, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.48.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #11
  unreachable

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage4file7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage4file7StorageINtB2p_16AllocatorDetailsB1t_EEEEINtB7_21ResizableSharedMemoryB1t_B2m_E8allocateCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull align 8 %i.u, i64 noundef 1, i64 noundef 1) #9
  %i.ak = load i8, ptr %i.k, align 8, !range !11, !noundef !4
  %.not = icmp eq i8 %i.ak, 0
  br i1 %.not, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.al = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select54 = select i1 %i.al, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select55 = select i1 %i.al, i64 9, i64 0
  store ptr %spec.select54, ptr %i.j, align 8, !captures !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %spec.select55, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.an = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink48 = select i1 %i.an, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink47 = select i1 %i.an, i64 4, i64 0
  store ptr %.sink48, ptr %i.i, align 8, !captures !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sink47, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.ap, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @89, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !range !5, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.at = load i8, ptr %i.as, align 2             ; 2 uses
  store i8 %i.ar, ptr %i.f, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.at, ptr %i.au, align 1
  store ptr %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @91, ptr %i.e, align 8, !captures !12
  %i.av = icmp eq i8 %i.ar, 1
  %i.aw = icmp eq i8 %i.at, 3
  %or.cond38 = select i1 %i.av, i1 %i.aw, i1 false, !prof !16
  br i1 %or.cond38, label %bb.g, label %_RNvXs9_NtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memoryNtB5_27ResizableShmAllocationErrorNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq.exit.thread, !prof !16

_RNvXs9_NtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memoryNtB5_27ResizableShmAllocationErrorNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ax = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %spec.select56 = select i1 %i.ax, ptr @8, ptr inttoptr (i64 1 to ptr)
  %spec.select57 = select i1 %i.ax, i64 9, i64 0
  store ptr %spec.select56, ptr %i.d, align 8, !captures !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %spec.select57, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.az = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #9 ; 2 uses
  %.sink52 = select i1 %i.az, ptr @9, ptr inttoptr (i64 1 to ptr)
  %.sink51 = select i1 %i.az, i64 4, i64 0
  store ptr %.sink52, ptr %i.c, align 8, !captures !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink51, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.bb, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory27ResizableShmAllocationErrorNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.bc, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory27ResizableShmAllocationErrorNtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.c, ptr %i.bd, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @92, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #11
  unreachable

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1W_INtNtNtBI_15dynamic_storage4file7StorageINtB2S_16AllocatorDetailsB1W_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2472) %i.u) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.v) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.v) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests29resizable_shared_memory_trait29resizable_shared_memory_trait46register_offset_in_view_maps_required_segmentsINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtB2L_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtB2L_15dynamic_storage13process_local7StorageINtB2F_16AllocatorDetailsB3O_EEEINtNtNtB2L_23resizable_shared_memory7dynamic13DynamicMemoryB3O_B2C_EECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [2 x i8], align 1                 ; 4 uses
  %i.f = alloca [2 x i8], align 1                 ; 4 uses
  %i.g = alloca [2 x i8], align 1                 ; 4 uses
  %i.h = alloca [2 x i8], align 1                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 3 uses
  %i.j = alloca [1 x i8], align 1                 ; 3 uses
  %i.k = alloca [64 x i8], align 8                ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 10 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [4 x i8], align 4                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [64 x i8], align 8                ; 10 uses
  %i.x = alloca [16 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [2 x i8], align 2                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [64 x i8], align 8               ; 10 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [1 x i8], align 1                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [64 x i8], align 8               ; 10 uses
  %i.aj = alloca [16 x i8], align 8               ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [64 x i8], align 8               ; 10 uses
  %i.aq = alloca [16 x i8], align 8               ; 4 uses
  %i.ar = alloca [16 x i8], align 8               ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 6 uses
  %i.aw = alloca [64 x i8], align 8               ; 10 uses
  %i.ax = alloca [16 x i8], align 8               ; 4 uses
  %i.ay = alloca [16 x i8], align 8               ; 4 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [8 x i8], align 8                ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %i.bd = alloca [64 x i8], align 8               ; 10 uses
  %i.be = alloca [16 x i8], align 8               ; 4 uses
  %i.bf = alloca [16 x i8], align 8               ; 4 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [16 x i8], align 8               ; 6 uses
  %i.bk = alloca [1104 x i8], align 8             ; 4 uses
  %i.bl = alloca [1104 x i8], align 8             ; 4 uses
  %i.bm = alloca [2688 x i8], align 8             ; 6 uses
  %i.bn = alloca [2688 x i8], align 8             ; 9 uses
  %i.bo = alloca [24 x i8], align 8               ; 8 uses
  %i.bp = alloca [24 x i8], align 8               ; 8 uses
  %i.bq = alloca [24 x i8], align 8               ; 8 uses
  %i.br = alloca [24 x i8], align 8               ; 8 uses
  %i.bs = alloca [1136 x i8], align 8             ; 4 uses
  %i.bt = alloca [1136 x i8], align 8             ; 4 uses
  %i.bu = alloca [1136 x i8], align 8             ; 4 uses
  %i.bv = alloca [1136 x i8], align 8             ; 3 uses
  %i.bw = alloca [2712 x i8], align 8             ; 6 uses
  %i.bx = alloca [2712 x i8], align 8             ; 8 uses
  %i.by = alloca [8 x i8], align 8                ; 4 uses
  %i.bz = alloca [4 x i8], align 4                ; 4 uses
  %i.ca = alloca [2 x i8], align 2                ; 4 uses
  %i.cb = alloca [1 x i8], align 1                ; 4 uses
  %i.cc = alloca [264 x i8], align 8              ; 4 uses
  %i.cd = alloca [264 x i8], align 8              ; 5 uses
  %i.ce = alloca [824 x i8], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @_RINvNtCs7gufeB8TUC6_12iceoryx2_cal7testing24generate_isolated_configINtNtNtB4_23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtB4_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB4_13shared_memory6common7details6MemoryB20_INtNtNtB4_15dynamic_storage13process_local7StorageINtB2W_16AllocatorDetailsB20_EEEEECs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([824 x i8]) align 8 captures(address) dereferenceable(824) %i.ce) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix7testing18generate_file_path(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.cc) #9
  call void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.cc) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  store i8 123, ptr %i.cb, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  store i16 2345, ptr %i.ca, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store i32 345678, ptr %i.bz, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store i64 456789012345, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE3newCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.bs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.cd) #9
  call void @_RNvXs3_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtNtB9_13named_concept19NamedConceptBuilderINtB5_13DynamicMemoryB1A_B2t_EE6configCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.bt, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.bs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %i.ce) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE21max_chunk_layout_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.bu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.bt, i64 noundef 1, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE25max_number_of_chunks_hintCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([1136 x i8]) align 8 captures(none) dereferenceable(1136) %i.bv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.bu, i64 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 1104
  store i8 0, ptr %i.cf, align 8
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2w_16AllocatorDetailsB1A_EEEEINtB7_28ResizableSharedMemoryBuilderB1A_B2t_INtB5_13DynamicMemoryB1A_B2t_EE6createCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([2712 x i8]) align 8 captures(none) dereferenceable(2712) %i.bw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1136) %i.bv) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.cg = load i64, ptr %i.bw, align 8, !range !7, !alias.scope !881, !noundef !4
  %i.ch = icmp eq i64 %i.cg, -1
  br i1 %i.ch, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !882
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cj = load i8, ptr %i.ci, align 8, !range !9, !alias.scope !881, !noundef !4
  store i8 %i.cj, ptr %i.i, align 1, !noalias !882
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #11, !noalias !883
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2712) %i.bx, ptr noundef nonnull readonly align 8 dereferenceable(2712) %i.bw, i64 2712, i1 false), !alias.scope !883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage13process_local7StorageINtB2p_16AllocatorDetailsB1t_EEEEINtB7_21ResizableSharedMemoryB1t_B2m_E8allocateCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.br, ptr noundef nonnull align 8 %i.bx, i64 noundef 1, i64 noundef 1) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.ck = load i8, ptr %i.br, align 8, !range !11, !alias.scope !884, !noundef !4
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.c, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory10ShmPointerNtNtBL_23resizable_shared_memory27ResizableShmAllocationErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit129, !prof !8

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic13DynamicMemoryNtNtNtBO_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBO_13shared_memory6common7details6MemoryB22_INtNtNtBO_15dynamic_storage13process_local7StorageINtB2Y_16AllocatorDetailsB22_EEEENtB32_23SharedMemoryCreateErrorE6unwrapCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !885
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !range !5, !alias.scope !884, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.cp = load i8, ptr %i.co, align 2, !alias.scope !884
  store i8 %i.cn, ptr %i.e, align 1, !noalias !885
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.cp, ptr %i.cq, align 1, !noalias !885
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #11, !noalias !884
end_hunk_0
