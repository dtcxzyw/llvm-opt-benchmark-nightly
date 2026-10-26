Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cal_tests_common-71bbdad7614eff40.iceoryx2_cal_tests_common.a65d6ae197ef8499-cgu.2?download=true
inline.NumInlined: 144
inline.NumDeleted: 93
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common46zero_copy_connection_posix_shared_memory_tests44___iox2_test_waiting_for_initialization_works:bb.a
  %i.cq = load i64, ptr %i.cp, align 8, !range !10, !alias.scope !127, !noundef !4
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common46zero_copy_connection_posix_shared_memory_tests32waiting_for_initialization_works.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ab, i64 312
  call void @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lockNtB4_10MemoryLockNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cs) #18
  br label %_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common46zero_copy_connection_posix_shared_memory_tests32waiting_for_initialization_works.exit

_RNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common46zero_copy_connection_posix_shared_memory_tests32waiting_for_initialization_works.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests1__11___INVENTORY, align 8, !nonnull !4, !noundef !4
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests1__11___INVENTORY, i64 8), align 8, !nonnull !4, !align !12, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_tests1__11___INVENTORY) #20
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss0_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss0_1__11___INVENTORY, align 8, !nonnull !4, !noundef !4
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss0_1__11___INVENTORY, i64 8), align 8, !nonnull !4, !align !12, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss0_1__11___INVENTORY) #20
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss1_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss1_1__11___INVENTORY, align 8, !nonnull !4, !noundef !4
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss1_1__11___INVENTORY, i64 8), align 8, !nonnull !4, !align !12, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss1_1__11___INVENTORY) #20
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss2_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss2_1__11___INVENTORY, align 8, !nonnull !4, !noundef !4
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss2_1__11___INVENTORY, i64 8), align 8, !nonnull !4, !align !12, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss2_1__11___INVENTORY) #20
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss_1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss_1__11___INVENTORY, align 8, !nonnull !4, !noundef !4
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss_1__11___INVENTORY, i64 8), align 8, !nonnull !4, !align !12, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common34shm_allocator_bump_allocator_testss_1__11___INVENTORY) #20
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common39shared_memory_posix_shared_memory_tests1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common39shared_memory_posix_shared_memory_tests1__11___INVENTORY, align 8, !nonnull !4, !noundef !4
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common39shared_memory_posix_shared_memory_tests1__11___INVENTORY, i64 8), align 8, !nonnull !4, !align !12, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common39shared_memory_posix_shared_memory_tests1__11___INVENTORY) #20
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common46zero_copy_connection_posix_shared_memory_tests1__6___ctor() unnamed_addr #0 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common46zero_copy_connection_posix_shared_memory_tests1__11___INVENTORY, align 8, !nonnull !4, !noundef !4
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common46zero_copy_connection_posix_shared_memory_tests1__11___INVENTORY, i64 8), align 8, !nonnull !4, !align !12, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common46zero_copy_connection_posix_shared_memory_tests1__11___INVENTORY) #20
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vecINtB2_14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details14SegmentDetailsENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details14SegmentDetailsEINtB7_6VectorB1o_E5clearCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !134, !noundef !4 ; 2 uses
  %i.c = load atomic i64, ptr %0 monotonic, align 8, !alias.scope !135 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !135, !noundef !4 ; 2 uses
  %i.f = add i64 %.val.i, -1                      ; 2 uses
  %.first_iter.i = icmp ult i64 %i.f, %i.e
  %.not.i = icmp eq i64 %.val.i, 0
  %or.cond = or i1 %.first_iter.i, %.not.i
  br i1 %or.cond, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details14SegmentDetailsEINtB7_6VectorB1o_E5clearCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #17, !noalias !134
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details14SegmentDetailsEINtB7_6VectorB1o_E5clearCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit: ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !alias.scope !136
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vecINtB2_14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E5clearCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !143, !noundef !4 ; 2 uses
  %i.c = load atomic i64, ptr %0 monotonic, align 8, !alias.scope !144 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !144, !noundef !4 ; 2 uses
  %i.f = add i64 %.val.i, -1                      ; 2 uses
  %.first_iter.i = icmp ult i64 %i.f, %i.e
  %.not.i = icmp eq i64 %.val.i, 0
  %or.cond = or i1 %.first_iter.i, %.not.i
  br i1 %or.cond, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E5clearCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #17, !noalias !143
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E5clearCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit: ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !alias.scope !145
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection15used_chunk_listINtB2_22FixedSizeUsedChunkListKj1_ENtNtCs8Chj7Szqq0n_4core7default7Default7defaultCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i8 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = ptrtoint ptr %i.d to i64
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.e, ptr %i.f, align 8
  %i.g = call fastcc noundef i8 @_RINvXs1_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection15used_chunk_list7detailsINtB6_13UsedChunkListINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic10AtomicBoolEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtB1P_14bump_allocator13BumpAllocatorECsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.b) #18 ; 2 uses
  %.not.i = icmp eq i8 %i.g, -1
  br i1 %.not.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 36, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #17
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection15used_chunk_listINtB2_22FixedSizeUsedChunkListKj2_ENtNtCs8Chj7Szqq0n_4core7default7Default7defaultCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %.sroa.4.0..sroa_idx.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  store i8 0, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = ptrtoint ptr %.sroa.5.0..sroa_idx to i64
  store ptr %.sroa.5.0..sroa_idx, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.e, ptr %i.f, align 8
  %i.g = call fastcc noundef i8 @_RINvXs1_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection15used_chunk_list7detailsINtB6_13UsedChunkListINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic10AtomicBoolEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtB1P_14bump_allocator13BumpAllocatorECsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.b) #18 ; 2 uses
  %.not.i = icmp eq i8 %i.g, -1
  br i1 %.not.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 36, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #17
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection15used_chunk_listINtB2_22FixedSizeUsedChunkListKj3_ENtNtCs8Chj7Szqq0n_4core7default7Default7defaultCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.d, i8 0, i64 3, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = ptrtoint ptr %i.d to i64
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.e, ptr %i.f, align 8
  %i.g = call fastcc noundef i8 @_RINvXs1_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection15used_chunk_list7detailsINtB6_13UsedChunkListINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic10AtomicBoolEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtB1P_14bump_allocator13BumpAllocatorECsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.b) #18 ; 2 uses
  %.not.i = icmp eq i8 %i.g, -1
  br i1 %.not.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 36, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #17
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection15used_chunk_listINtB2_22FixedSizeUsedChunkListKj80_ENtNtCs8Chj7Szqq0n_4core7default7Default7defaultCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [152 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, i8 0, i64 128, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 128, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = ptrtoint ptr %i.d to i64
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.e, ptr %i.f, align 8
  %i.g = call fastcc noundef i8 @_RINvXs1_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection15used_chunk_list7detailsINtB6_13UsedChunkListINtNtCs3stRo7scs5B_22iceoryx2_bb_elementary15relocatable_ptr18RelocatablePointerNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic10AtomicBoolEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits21relocatable_container20RelocatableContainer4initNtNtB1P_14bump_allocator13BumpAllocatorECsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.b) #18 ; 2 uses
  %.not.i = icmp eq i8 %i.g, -1
  br i1 %.not.i, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 36, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #17
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsehyvh8hCwXJ_25iceoryx2_cal_tests_common.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellmEENtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @175, ptr %i.b, align 8, !captures !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 46, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.e = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @176, ptr noundef nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memory7StorageINtNtNtNtB15_13shared_memory6common7details16AllocatorDetailsNtNtNtB15_13shm_allocator14pool_allocator13PoolAllocatorEEENtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @177, ptr %i.b, align 8, !captures !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 183, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.e = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @176, ptr noundef nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memory7StorageNtNtNtNtB15_20zero_copy_connection6common7details20SharedManagementDataEENtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @178, ptr %i.b, align 8, !captures !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 134, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.e = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @176, ptr noundef nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details16AllocatorDetailsNtNtNtB17_13shm_allocator14pool_allocator13PoolAllocatorEENtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !148
  store ptr @179, ptr %i.b, align 8, !noalias !148, !captures !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 122, ptr %i.c, align 8, !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !148
  store ptr %i.b, ptr %i.a, align 8, !noalias !148
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !148
  %i.d = load ptr, ptr %1, align 8, !alias.scope !148, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !148, !nonnull !4, !align !12, !noundef !4
  %i.g = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @176, ptr noundef nonnull %i.a) #18, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !148
  ret i1 %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6marker11PhantomDataNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic10AtomicBoolENtB6_5Debug3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @180, ptr %i.b, align 8, !captures !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 43, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsehyvh8hCwXJ_25iceoryx2_cal_tests_common, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.e = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @176, ptr noundef nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.e
end_hunk_0
