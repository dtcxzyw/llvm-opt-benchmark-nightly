Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_tests_common-030fd2955ad72bee.iceoryx2_tests_common.edeaeddec5393c09-cgu.05?download=true
inline.NumInlined: 473
inline.NumDeleted: 297
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsk_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1a_7service14ipc_threadsafe7ServiceEENtNtB7_11ipc_capable6Handle3newCskqqG2IB5b71_21iceoryx2_tests_common:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = tail call noundef i32 @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB4_9ClockTypeNtNtCs8Chj7Szqq0n_4core7default7Default7default() #18
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i32 %i.a, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2, ptr %i.c, align 16
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsk_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1a_7service14ipc_threadsafe7ServiceEENtNtB7_11ipc_capable6Handle3newCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([6512 x i8]) align 16 captures(none) dereferenceable(6512) initializes((0, 42), (48, 64), (6496, 6500)) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = tail call noundef i32 @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB4_9ClockTypeNtNtCs8Chj7Szqq0n_4core7default7Default7default() #18
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6496
  store i32 %i.a, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i128 2, ptr %i.c, align 16
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsk_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1a_7service14ipc_threadsafe7ServiceEENtNtB7_11ipc_capable6Handle3newCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([6464 x i8]) align 16 captures(none) dereferenceable(6464) initializes((0, 16), (6400, 6442), (6448, 6452)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.b = tail call noundef i32 @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB4_9ClockTypeNtNtCs8Chj7Szqq0n_4core7default7Default7default() #18
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6440
  store i8 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6441
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6448
  store i32 %i.b, ptr %i.c, align 16
  store i128 2, ptr %0, align 16
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsk_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1a_7service14ipc_threadsafe7ServiceEENtNtB7_11ipc_capable6Handle3newCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) initializes((0, 8), (96, 138), (144, 148)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.b = tail call noundef i32 @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB4_9ClockTypeNtNtCs8Chj7Szqq0n_4core7default7Default7default() #18
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 137
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.b, ptr %i.c, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsk_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1a_7service14ipc_threadsafe7ServiceEENtNtB7_11ipc_capable6Handle3newCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([5216 x i8]) align 16 captures(none) dereferenceable(5216) initializes((0, 16), (5152, 5194), (5200, 5204)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.b = tail call noundef i32 @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB4_9ClockTypeNtNtCs8Chj7Szqq0n_4core7default7Default7default() #18
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store i8 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5193
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5200
  store i32 %i.b, ptr %i.c, align 16
  store i128 2, ptr %0, align 16
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsk_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_11MutexHandleNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerENtNtB7_11ipc_capable6Handle3newCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([600 x i8]) align 8 captures(none) dereferenceable(600) initializes((4, 5), (544, 586), (592, 596)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.b = tail call noundef i32 @_RNvXs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB4_9ClockTypeNtNtCs8Chj7Szqq0n_4core7default7Default7default() #18
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i8 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 585
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 %i.b, ptr %i.c, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 2, ptr %.sroa.411.0..sroa_idx, align 4
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB5_19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !13, !noundef !6 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXss_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB5_19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXss_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB5_19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.69, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #18
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_NtCsg6ZEkMtNi4J_8iceoryx27serviceNtB5_19ServiceDetailsErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !15, !noundef !6 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsv_NtCsg6ZEkMtNi4J_8iceoryx27serviceNtB5_19ServiceDetailsErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsv_NtCsg6ZEkMtNi4J_8iceoryx27serviceNtB5_19ServiceDetailsErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.70, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #18
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureINtNtNtNtBe_13shared_memory6common7details16AllocatorDetailsNtNtNtBe_13shm_allocator14pool_allocator13PoolAllocatorEKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB3t_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB3t_7StorageB1j_EE3new0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB5u_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB3c_EEEE9call_onceCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureINtNtNtNtBe_13shared_memory6common7details16AllocatorDetailsNtNtNtBe_13shm_allocator14pool_allocator13PoolAllocatorEKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB3t_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB3t_7StorageB1j_EE3new0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB5w_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB3c_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureINtNtNtNtBe_13shared_memory6common7details16AllocatorDetailsNtNtNtBe_13shm_allocator14pool_allocator13PoolAllocatorEKj18_E3newNCNvXs3_B1m_INtB1m_7BuilderB2h_INtNtBc_19posix_shared_memory7StorageB1j_EEINtB1q_19SharedMemoryBuilderB2h_INtB1m_6MemoryB2h_B3Q_EE6create0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB5I_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB3c_EEEE9call_onceCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureINtNtNtNtBe_13shared_memory6common7details16AllocatorDetailsNtNtNtBe_13shm_allocator14pool_allocator13PoolAllocatorEKj18_E3newNCNvXs3_B1m_INtB1m_7BuilderB2h_INtNtBc_19posix_shared_memory7StorageB1j_EEINtB1q_19SharedMemoryBuilderB2h_INtB1m_6MemoryB2h_B3Q_EE6create0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB5K_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB3c_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(128) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !22, !noundef !6
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !align !22, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7detailsINtB5_7BuilderNtNtNtBb_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageINtB5_16AllocatorDetailsB1l_EEE10initializeCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1120) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #18
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx24node25global_management_segment5StateKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2G_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2G_7StorageB1j_EE3new0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4H_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2p_EEEE9call_onceCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx24node25global_management_segment5StateKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2G_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2G_7StorageB1j_EE3new0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4J_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2p_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree readnone align 4 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2H_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2H_7StorageB1j_EE3new0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4I_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2q_EEEE9call_onceCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2H_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2H_7StorageB1j_EE3new0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4K_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2q_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_E3newNvMs_NtB1n_7builderINtB2E_22BuilderWithServiceTypeNtNtB1n_14ipc_threadsafe7ServiceE16config_init_callE0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4l_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2q_EEEE9call_onceCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_E3newNvMs_NtB1n_7builderINtB2E_22BuilderWithServiceTypeNtNtB1n_14ipc_threadsafe7ServiceE16config_init_callEs_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4n_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2q_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(256) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtNtCsg6ZEkMtNi4J_8iceoryx27service7builderINtB4_22BuilderWithServiceTypeNtNtB6_14ipc_threadsafe7ServiceE16config_init_callCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #18
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtNtBe_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1l_INtB1l_7BuilderINtNtBc_19posix_shared_memory7StorageB1j_EE18create_or_open_shm0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4d_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2s_EEEE9call_onceCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtNtBe_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1l_INtB1l_7BuilderINtNtBc_19posix_shared_memory7StorageB1j_EE18create_or_open_shm0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4f_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2s_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !22, !noundef !6 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 1096
  %i.b = load i64, ptr %i.a, align 8, !noalias !1735, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 1104
  %i.d = load i64, ptr %i.c, align 8, !noalias !1735, !noundef !6
  %i.e = add i64 %i.b, 1
  %i.f = add i64 %i.e, %i.d
  tail call void @_RNvMs4_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsNtB5_20SharedManagementData4init(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.b, i64 noundef %i.f) #18
  %i.g = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 dereferenceable(80) %1) #18 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 4 uses
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %.idx.i.i = mul i64 %i.i, 88                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0CskqqG2IB5b71_21iceoryx2_tests_common.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 1128
  %.pre.i.i = load i64, ptr %i.l, align 8, !noalias !1735 ; 9 uses
  %3 = add i64 %.idx.i.i, -88                     ; 2 uses
  %4 = udiv i64 %3, 88
  %5 = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %5, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i, %.prol.preheader
  %.sroa.0.01.i.i.prol = phi ptr [ %6, %.prol.preheader ], [ %i.h, %.lr.ph.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i ]
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.prol, i64 88 ; 2 uses
  store atomic i64 %.pre.i.i, ptr %.sroa.0.01.i.i.prol monotonic, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1734

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i
  %.sroa.0.01.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i ], [ %6, %.prol.preheader ]
  %7 = icmp ult i64 %3, 616
  br i1 %7, label %_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0CskqqG2IB5b71_21iceoryx2_tests_common.exit, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %.sroa.0.01.i.i = phi ptr [ %i.m, %.lr.ph.i.i.new ], [ %.sroa.0.01.i.i.unr, %.prol.loopexit ] ; 9 uses
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 88
  store atomic i64 %.pre.i.i, ptr %.sroa.0.01.i.i monotonic, align 8
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 176
  store atomic i64 %.pre.i.i, ptr %8 monotonic, align 8
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 264
  store atomic i64 %.pre.i.i, ptr %9 monotonic, align 8
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 352
  store atomic i64 %.pre.i.i, ptr %10 monotonic, align 8
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 440
  store atomic i64 %.pre.i.i, ptr %11 monotonic, align 8
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 528
  store atomic i64 %.pre.i.i, ptr %12 monotonic, align 8
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 616
  store atomic i64 %.pre.i.i, ptr %13 monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 704 ; 2 uses
  store atomic i64 %.pre.i.i, ptr %14 monotonic, align 8
  %i.n = icmp eq ptr %i.m, %i.j
  br i1 %i.n, label %_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0CskqqG2IB5b71_21iceoryx2_tests_common.exit, label %.lr.ph.i.i.new

_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0CskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %bb.a
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtNtBe_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2J_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2J_7StorageB1j_EE3new0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4K_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2s_EEEE9call_onceCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtNtBe_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2J_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2J_7StorageB1j_EE3new0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4M_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2s_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCskqqG2IB5b71_21iceoryx2_tests_common(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvMNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB2_17ScopeGuardBuilderNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex18MutexCreationErrorNCINvMsg_B2t_NtB2t_12MutexBuilder16initialize_mutexINtNtCsbqH9stoieM8_5alloc3vec3VecjEE0NCB3u_s_0E6createCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread28pthread_mutexattr_setpshared(ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_mutexattr_settype(ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread29pthread_mutexattr_setprotocol(ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_mutexattr_setrobust(ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread18pthread_mutex_init(ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, -2147483648) i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef range(i8 0, 6), ptr noundef nonnull, ptr noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvMNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB2_17ScopeGuardBuilderNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex18MutexCreationErrorNCINvMsg_B2t_NtB2t_12MutexBuilder16initialize_mutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB4o_7service14ipc_threadsafe7ServiceEE0NCB3u_s_0E6createCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvMNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB2_17ScopeGuardBuilderNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex18MutexCreationErrorNCINvMsg_B2t_NtB2t_12MutexBuilder16initialize_mutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB4o_7service14ipc_threadsafe7ServiceEE0NCB3u_s_0E6createCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvMNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB2_17ScopeGuardBuilderNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex18MutexCreationErrorNCINvMsg_B2t_NtB2t_12MutexBuilder16initialize_mutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB4o_7service14ipc_threadsafe7ServiceEE0NCB3u_s_0E6createCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvMNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB2_17ScopeGuardBuilderNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex18MutexCreationErrorNCINvMsg_B2t_NtB2t_12MutexBuilder16initialize_mutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB4o_7service14ipc_threadsafe7ServiceEE0NCB3u_s_0E6createCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvMNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB2_17ScopeGuardBuilderNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex18MutexCreationErrorNCINvMsg_B2t_NtB2t_12MutexBuilder16initialize_mutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB4o_7service14ipc_threadsafe7ServiceEE0NCB3u_s_0E6createCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvMNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB2_17ScopeGuardBuilderNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex18MutexCreationErrorNCINvMsg_B2t_NtB2t_12MutexBuilder16initialize_mutexNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerE0NCB3u_s_0E6createCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs2_NtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11ipc_capable8internalINtB6_13HandleStorageNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux15pthread_mutex_tE10initializeNtNtBa_5mutex18MutexCreationErrorNCINvMsg_B2I_NtB2I_12MutexBuilder6createINtNtCsbqH9stoieM8_5alloc3vec3VecjEE0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs2_NtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11ipc_capable8internalINtB6_13HandleStorageNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux15pthread_mutex_tE10initializeNtNtBa_5mutex18MutexCreationErrorNCINvMsg_B2I_NtB2I_12MutexBuilder6createINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB3Y_7service14ipc_threadsafe7ServiceEE0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs2_NtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11ipc_capable8internalINtB6_13HandleStorageNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux15pthread_mutex_tE10initializeNtNtBa_5mutex18MutexCreationErrorNCINvMsg_B2I_NtB2I_12MutexBuilder6createINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB3Y_7service14ipc_threadsafe7ServiceEE0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs2_NtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11ipc_capable8internalINtB6_13HandleStorageNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux15pthread_mutex_tE10initializeNtNtBa_5mutex18MutexCreationErrorNCINvMsg_B2I_NtB2I_12MutexBuilder6createINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB3Y_7service14ipc_threadsafe7ServiceEE0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs2_NtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11ipc_capable8internalINtB6_13HandleStorageNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux15pthread_mutex_tE10initializeNtNtBa_5mutex18MutexCreationErrorNCINvMsg_B2I_NtB2I_12MutexBuilder6createINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB3Y_7service14ipc_threadsafe7ServiceEE0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs2_NtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11ipc_capable8internalINtB6_13HandleStorageNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux15pthread_mutex_tE10initializeNtNtBa_5mutex18MutexCreationErrorNCINvMsg_B2I_NtB2I_12MutexBuilder6createINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB3Y_7service14ipc_threadsafe7ServiceEE0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs2_NtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11ipc_capable8internalINtB6_13HandleStorageNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux15pthread_mutex_tE10initializeNtNtBa_5mutex18MutexCreationErrorNCINvMsg_B2I_NtB2I_12MutexBuilder6createNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerE0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB2w_12MutexBuilder16initialize_mutexINtNtCsbqH9stoieM8_5alloc3vec3VecjEEs_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB2w_12MutexBuilder16initialize_mutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB3U_7service14ipc_threadsafe7ServiceEEs_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB2w_12MutexBuilder16initialize_mutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB3U_7service14ipc_threadsafe7ServiceEEs_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB2w_12MutexBuilder16initialize_mutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB3U_7service14ipc_threadsafe7ServiceEEs_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB2w_12MutexBuilder16initialize_mutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB3U_7service14ipc_threadsafe7ServiceEEs_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB2w_12MutexBuilder16initialize_mutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB3U_7service14ipc_threadsafe7ServiceEEs_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux19pthread_mutexattr_tNCINvMsg_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB2w_12MutexBuilder16initialize_mutexNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerEs_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 4 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB4_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitINtNtB1x_6option6OptionINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB2P_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB2P_13shared_memory6common7details6MemoryB3X_INtNtNtB2P_15dynamic_storage19posix_shared_memory7StorageINtB4U_16AllocatorDetailsB3X_EEEEEEENtNtNtB1x_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB4_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitINtNtB1x_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB2R_7service14ipc_threadsafe7ServiceEEEENtNtNtB1x_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB4_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap13FreeListEntryEENtNtNtB1x_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB4_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdEENtNtNtB1x_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB4_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeEENtNtNtB1x_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB4_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjEENtNtNtB1x_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB2n_7service14ipc_threadsafe7ServiceEEEENtNtNtB1J_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2p_7service14ipc_threadsafe7ServiceEEEENtNtNtB1J_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCelljEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtBK_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsEENtNtNtBM_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsEENtNtNtBM_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsEENtNtNtBM_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsEENtNtNtBM_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsEENtNtNtBM_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecjENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecyENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB2u_7service14ipc_threadsafe7ServiceEEEENtNtNtB1Q_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2w_7service14ipc_threadsafe7ServiceEEEENtNtNtB1Q_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCelljEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtBR_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsEENtNtNtBT_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsEENtNtNtBT_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsEENtNtNtBT_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!1534 = distinct !{!1534, !"_RNvXs1m_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1535 = distinct !{!1535, !1534, !"_RNvXs1m_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1536 = distinct !{!1536, !1534, !"_RNvXs1m_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1537 = !{!1536, !1535}
!1538 = distinct !{!1538, !"_RNvXs1m_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_5MutexNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1539 = distinct !{!1539, !1538, !"_RNvXs1m_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_5MutexNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1540 = distinct !{!1540, !1538, !"_RNvXs1m_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_5MutexNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1541 = !{!1540, !1539}
!1542 = distinct !{!1542, !"_RNvXsa_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_10MemoryTypeNtNtNtBb_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1543 = distinct !{!1543, !1542, !"_RNvXsa_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_10MemoryTypeNtNtNtBb_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1544 = !{!1543}
!1545 = distinct !{!1545, !"_RNvXsb_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1546 = distinct !{!1546, !1545, !"_RNvXsb_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1547 = !{!1546}
!1548 = distinct !{!1548, !"_RNvXsc_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_14MemoryViewTypeNtNtNtBb_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1549 = distinct !{!1549, !1548, !"_RNvXsc_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_14MemoryViewTypeNtNtNtBb_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1550 = !{!1549}
!1551 = distinct !{!1551, !"_RNvXsd_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_15DataSegmentViewNtNtNtBb_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1552 = distinct !{!1552, !1551, !"_RNvXsd_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_15DataSegmentViewNtNtNtBb_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1553 = !{!1552}
!1554 = distinct !{!1554, !"_RNvXs3_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribeINtB5_11PortFactoryNtNtB9_14ipc_threadsafe7ServicejuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1555 = distinct !{!1555, !1554, !"_RNvXs3_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribeINtB5_11PortFactoryNtNtB9_14ipc_threadsafe7ServicejuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1556 = distinct !{!1556, !1554, !"_RNvXs3_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribeINtB5_11PortFactoryNtNtB9_14ipc_threadsafe7ServicejuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1557 = !{!1556, !1555}
!1558 = distinct !{!1558, !"_RNvXs3_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory5eventINtB5_11PortFactoryNtNtB9_14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1559 = distinct !{!1559, !1558, !"_RNvXs3_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory5eventINtB5_11PortFactoryNtNtB9_14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1560 = distinct !{!1560, !1558, !"_RNvXs3_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory5eventINtB5_11PortFactoryNtNtB9_14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1561 = !{!1560, !1559}
!1562 = distinct !{!1562, !"_RNvXsa_NtCs7gufeB8TUC6_12iceoryx2_cal13shared_memoryNtB5_21SharedMemoryOpenErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt"}
!1563 = distinct !{!1563, !1562, !"_RNvXsa_NtCs7gufeB8TUC6_12iceoryx2_cal13shared_memoryNtB5_21SharedMemoryOpenErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt: argument 0"}
!1564 = distinct !{!1564, !1562, !"_RNvXsa_NtCs7gufeB8TUC6_12iceoryx2_cal13shared_memoryNtB5_21SharedMemoryOpenErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt: argument 1"}
!1565 = !{!1563}
!1566 = !{!1564}
!1567 = distinct !{!1567, !"_RNvXs1k_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB6_12MutexBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt"}
!1568 = distinct !{!1568, !1567, !"_RNvXs1k_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB6_12MutexBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt: argument 1"}
!1569 = distinct !{!1569, !1567, !"_RNvXs1k_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexNtB6_12MutexBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt: argument 0"}
!1570 = !{!1569, !1568}
!1571 = distinct !{!1571, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtCsbqH9stoieM8_5alloc3vec3VecjEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1572 = distinct !{!1572, !1571, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtCsbqH9stoieM8_5alloc3vec3VecjEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1573 = distinct !{!1573, !1571, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtCsbqH9stoieM8_5alloc3vec3VecjEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1574 = distinct !{!1574, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtCsbqH9stoieM8_5alloc3vec3VecjEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1575 = distinct !{!1575, !1574, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtCsbqH9stoieM8_5alloc3vec3VecjEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1576 = !{!1572}
!1577 = !{!1573}
!1578 = !{!1575, !1572, !1573}
!1579 = distinct !{!1579, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1580 = distinct !{!1580, !1579, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1581 = distinct !{!1581, !1579, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1582 = distinct !{!1582, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1583 = distinct !{!1583, !1582, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1584 = !{!1580}
!1585 = !{!1581}
!1586 = !{!1583, !1580, !1581}
!1587 = distinct !{!1587, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1588 = distinct !{!1588, !1587, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1589 = distinct !{!1589, !1587, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1590 = distinct !{!1590, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1591 = distinct !{!1591, !1590, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1592 = !{!1588}
!1593 = !{!1589}
!1594 = !{!1591, !1588, !1589}
!1595 = distinct !{!1595, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1596 = distinct !{!1596, !1595, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1597 = distinct !{!1597, !1595, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1598 = distinct !{!1598, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1599 = distinct !{!1599, !1598, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1600 = !{!1596}
!1601 = !{!1597}
!1602 = !{!1599, !1596, !1597}
!1603 = distinct !{!1603, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1604 = distinct !{!1604, !1603, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1605 = distinct !{!1605, !1603, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1606 = distinct !{!1606, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1607 = distinct !{!1607, !1606, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1608 = !{!1604}
!1609 = !{!1605}
!1610 = !{!1607, !1604, !1605}
!1611 = distinct !{!1611, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1612 = distinct !{!1612, !1611, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1613 = distinct !{!1613, !1611, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1y_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1614 = distinct !{!1614, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1615 = distinct !{!1615, !1614, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1616 = !{!1612}
!1617 = !{!1613}
!1618 = !{!1615, !1612, !1613}
!1619 = distinct !{!1619, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1620 = distinct !{!1620, !1619, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1621 = distinct !{!1621, !1619, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1622 = distinct !{!1622, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1623 = distinct !{!1623, !1622, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1624 = !{!1620}
!1625 = !{!1621}
!1626 = !{!1623, !1620, !1621}
!1627 = distinct !{!1627, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1628 = distinct !{!1628, !1627, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1629 = distinct !{!1629, !1627, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1630 = distinct !{!1630, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1631 = distinct !{!1631, !1630, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1632 = !{!1628}
!1633 = !{!1629}
!1634 = !{!1631, !1628, !1629}
!1635 = distinct !{!1635, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBD_14ipc_threadsafe7ServicejuENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1636 = distinct !{!1636, !1635, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBD_14ipc_threadsafe7ServicejuENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1637 = distinct !{!1637, !1635, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBD_14ipc_threadsafe7ServicejuENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1638 = distinct !{!1638, !"_RNvXs3_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribeINtB5_11PortFactoryNtNtB9_14ipc_threadsafe7ServicejuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1639 = distinct !{!1639, !1638, !"_RNvXs3_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribeINtB5_11PortFactoryNtNtB9_14ipc_threadsafe7ServicejuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1640 = distinct !{!1640, !1638, !"_RNvXs3_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribeINtB5_11PortFactoryNtNtB9_14ipc_threadsafe7ServicejuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1641 = !{!1636}
!1642 = !{!1637}
!1643 = !{!1640, !1639, !1636, !1637}
!1644 = distinct !{!1644, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory5event11PortFactoryNtNtBD_14ipc_threadsafe7ServiceENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1645 = distinct !{!1645, !1644, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory5event11PortFactoryNtNtBD_14ipc_threadsafe7ServiceENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1646 = distinct !{!1646, !1644, !"_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory5event11PortFactoryNtNtBD_14ipc_threadsafe7ServiceENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1647 = distinct !{!1647, !"_RNvXs3_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory5eventINtB5_11PortFactoryNtNtB9_14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1648 = distinct !{!1648, !1647, !"_RNvXs3_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory5eventINtB5_11PortFactoryNtNtB9_14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1649 = distinct !{!1649, !1647, !"_RNvXs3_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory5eventINtB5_11PortFactoryNtNtB9_14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1650 = !{!1645}
!1651 = !{!1646}
!1652 = !{!1649, !1648, !1645, !1646}
!1653 = distinct !{!1653, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtCsbqH9stoieM8_5alloc3vec3VecjEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1654 = distinct !{!1654, !1653, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtCsbqH9stoieM8_5alloc3vec3VecjEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1655 = !{!1654}
!1656 = distinct !{!1656, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1657 = distinct !{!1657, !1656, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1658 = !{!1657}
!1659 = distinct !{!1659, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1660 = distinct !{!1660, !1659, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1661 = !{!1660}
!1662 = distinct !{!1662, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1663 = distinct !{!1663, !1662, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1664 = !{!1663}
!1665 = distinct !{!1665, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1666 = distinct !{!1666, !1665, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1667 = !{!1666}
!1668 = distinct !{!1668, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1669 = distinct !{!1669, !1668, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1b_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1670 = !{!1669}
!1671 = distinct !{!1671, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1672 = distinct !{!1672, !1671, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1673 = !{!1672}
!1674 = distinct !{!1674, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common"}
!1675 = distinct !{!1675, !1674, !"_RNvXs1l_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB6_11MutexHandleNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1676 = !{!1675}
!1677 = distinct !{!1677, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE10clear_implCskqqG2IB5b71_21iceoryx2_tests_common"}
!1678 = distinct !{!1678, !1677, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE10clear_implCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1679 = distinct !{!1679, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCskqqG2IB5b71_21iceoryx2_tests_common"}
!1680 = distinct !{!1680, !1679, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1681 = distinct !{!1681, !1679, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1682 = !{!1678}
!1683 = !{!1680, !1678}
!1684 = !{!1681}
!1685 = !{!1680}
!1686 = !{!1681, !1680, !1678}
!1687 = distinct !{!1687, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE10clear_implCskqqG2IB5b71_21iceoryx2_tests_common"}
!1688 = distinct !{!1688, !1687, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE10clear_implCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1689 = distinct !{!1689, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCskqqG2IB5b71_21iceoryx2_tests_common"}
!1690 = distinct !{!1690, !1689, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1691 = distinct !{!1691, !1689, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1692 = !{!1688}
!1693 = !{!1690, !1688}
!1694 = !{!1691}
!1695 = !{!1690}
!1696 = !{!1691, !1690, !1688}
!1697 = distinct !{!1697, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueuejNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE10clear_implCskqqG2IB5b71_21iceoryx2_tests_common"}
!1698 = distinct !{!1698, !1697, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueuejNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE10clear_implCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1699 = distinct !{!1699, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueuejNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCskqqG2IB5b71_21iceoryx2_tests_common"}
!1700 = distinct !{!1700, !1699, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueuejNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1701 = !{!1698}
!1702 = !{!1700, !1698}
!1703 = !{!1700}
!1704 = distinct !{!1704, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtCsbqH9stoieM8_5alloc3vec3VecjEE7releaseCskqqG2IB5b71_21iceoryx2_tests_common"}
!1705 = distinct !{!1705, !1704, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtCsbqH9stoieM8_5alloc3vec3VecjEE7releaseCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1706 = !{!1705}
!1707 = distinct !{!1707, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEE7releaseCskqqG2IB5b71_21iceoryx2_tests_common"}
!1708 = distinct !{!1708, !1707, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEE7releaseCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1709 = !{!1708}
!1710 = distinct !{!1710, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEE7releaseCskqqG2IB5b71_21iceoryx2_tests_common"}
!1711 = distinct !{!1711, !1710, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEE7releaseCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1712 = !{!1711}
!1713 = distinct !{!1713, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEE7releaseCskqqG2IB5b71_21iceoryx2_tests_common"}
!1714 = distinct !{!1714, !1713, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEE7releaseCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1715 = !{!1714}
!1716 = distinct !{!1716, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB19_7service14ipc_threadsafe7ServiceEE7releaseCskqqG2IB5b71_21iceoryx2_tests_common"}
!1717 = distinct !{!1717, !1716, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB19_7service14ipc_threadsafe7ServiceEE7releaseCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1718 = !{!1717}
!1719 = distinct !{!1719, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEE7releaseCskqqG2IB5b71_21iceoryx2_tests_common"}
!1720 = distinct !{!1720, !1719, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEE7releaseCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1721 = !{!1720}
!1722 = distinct !{!1722, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEE7releaseCskqqG2IB5b71_21iceoryx2_tests_common"}
!1723 = distinct !{!1723, !1722, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEE7releaseCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1724 = !{!1723}
!1725 = distinct !{!1725, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerE7releaseCskqqG2IB5b71_21iceoryx2_tests_common"}
!1726 = distinct !{!1726, !1725, !"_RNvMsd_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardNtNtNtCs7gufeB8TUC6_12iceoryx2_cal5event20unix_datagram_socket8ListenerE7releaseCskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1727 = !{!1726}
!1728 = distinct !{!1728, !"_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0CskqqG2IB5b71_21iceoryx2_tests_common"}
!1729 = distinct !{!1729, !1728, !"_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0CskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1730 = distinct !{!1730, !1728, !"_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0CskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1731 = distinct !{!1731, !"_RNCNvMs5_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB7_7BuilderINtNtNtBd_15dynamic_storage19posix_shared_memory7StorageNtB7_20SharedManagementDataEE18create_or_open_shm0CskqqG2IB5b71_21iceoryx2_tests_common"}
!1732 = distinct !{!1732, !1731, !"_RNCNvMs5_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB7_7BuilderINtNtNtBd_15dynamic_storage19posix_shared_memory7StorageNtB7_20SharedManagementDataEE18create_or_open_shm0CskqqG2IB5b71_21iceoryx2_tests_common: argument 1"}
!1733 = distinct !{!1733, !1731, !"_RNCNvMs5_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB7_7BuilderINtNtNtBd_15dynamic_storage19posix_shared_memory7StorageNtB7_20SharedManagementDataEE18create_or_open_shm0CskqqG2IB5b71_21iceoryx2_tests_common: argument 0"}
!1734 = distinct !{!1734, !1736}
!1735 = !{!1733, !1732, !1730, !1729}
!1736 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
