Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/component_tests_rust.component_tests_rust.5c9350a651129eef-cgu.08?download=true
inline.NumInlined: 461
inline.NumDeleted: 228
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs8Chj7Szqq0n_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #21
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_20DynamicMemoryBuilderNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1A_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2w_16AllocatorDetailsB1A_EEEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs7WMazFQt77D_20component_tests_rust(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @372, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @369, i64 noundef 6, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @370, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @373, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @371) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB5_19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !11, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXss_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB5_19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXss_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB5_19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.82, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #21
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCsg6ZEkMtNi4J_8iceoryx24portNtB5_9LoanErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !22, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsw_NtCsg6ZEkMtNi4J_8iceoryx24portNtB5_9LoanErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsw_NtCsg6ZEkMtNi4J_8iceoryx24portNtB5_9LoanErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.83, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #21
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memoryNtB5_12SharedMemoryNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @396, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @397, i64 noundef 13, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @393, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @398, i64 noundef 14, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @394, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @399, i64 noundef 11, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @395, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @400, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @249) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder16request_responseNtB5_32RequestResponseOpenOrCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i8, ptr %0, align 1, !range !11, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  switch i8 %i.c, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @402, i64 noundef 24, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @401) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @404, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @403) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 12) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsz_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_nameNtB5_8FileNameNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @405, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @358) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsz_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB5_15NodeWaitFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !9, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 18, i64 9
  %.1 = select i1 %i.b, ptr @407, ptr @406
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.) #21
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureINtNtNtNtBe_13shared_memory6common7details16AllocatorDetailsNtNtNtBe_13shm_allocator14pool_allocator13PoolAllocatorEKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB3t_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB3t_7StorageB1j_EE3new0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB5u_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB3c_EEEE9call_onceCs7WMazFQt77D_20component_tests_rust(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureINtNtNtNtBe_13shared_memory6common7details16AllocatorDetailsNtNtNtBe_13shm_allocator14pool_allocator13PoolAllocatorEKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB3t_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB3t_7StorageB1j_EE3new0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB5w_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB3c_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCs7WMazFQt77D_20component_tests_rust(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureINtNtNtNtBe_13shared_memory6common7details16AllocatorDetailsNtNtNtBe_13shm_allocator14pool_allocator13PoolAllocatorEKj18_E3newNCNvXs3_B1m_INtB1m_7BuilderB2h_INtNtBc_19posix_shared_memory7StorageB1j_EEINtB1q_19SharedMemoryBuilderB2h_INtB1m_6MemoryB2h_B3Q_EE6create0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB5I_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB3c_EEEE9call_onceCs7WMazFQt77D_20component_tests_rust(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureINtNtNtNtBe_13shared_memory6common7details16AllocatorDetailsNtNtNtBe_13shm_allocator14pool_allocator13PoolAllocatorEKj18_E3newNCNvXs3_B1m_INtB1m_7BuilderB2h_INtNtBc_19posix_shared_memory7StorageB1j_EEINtB1q_19SharedMemoryBuilderB2h_INtB1m_6MemoryB2h_B3Q_EE6create0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB5K_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB3c_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCs7WMazFQt77D_20component_tests_rust(ptr nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(128) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !align !8, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7detailsINtB5_7BuilderNtNtNtBb_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageINtB5_16AllocatorDetailsB1l_EEE10initializeCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1120) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #21
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx24node25global_management_segment5StateKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2G_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2G_7StorageB1j_EE3new0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4H_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2p_EEEE9call_onceCs7WMazFQt77D_20component_tests_rust(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx24node25global_management_segment5StateKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2G_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2G_7StorageB1j_EE3new0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4J_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2p_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCs7WMazFQt77D_20component_tests_rust(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree readnone align 4 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2H_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2H_7StorageB1j_EE3new0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4I_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2q_EEEE9call_onceCs7WMazFQt77D_20component_tests_rust(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2H_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2H_7StorageB1j_EE3new0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4K_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2q_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCs7WMazFQt77D_20component_tests_rust(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_E3newNvMs_NtB1n_7builderINtB2E_22BuilderWithServiceTypeNtNtB1n_3ipc7ServiceE16config_init_callE0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB49_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2q_EEEE9call_onceCs7WMazFQt77D_20component_tests_rust(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_E3newNvMs_NtB1n_7builderINtB2E_22BuilderWithServiceTypeNtNtB1n_3ipc7ServiceE16config_init_callEs_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4b_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2q_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCs7WMazFQt77D_20component_tests_rust(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(256) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtNtCsg6ZEkMtNi4J_8iceoryx27service7builderINtB4_22BuilderWithServiceTypeNtNtB6_3ipc7ServiceE16config_init_callCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #21
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtNtBe_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1l_INtB1l_7BuilderINtNtBc_19posix_shared_memory7StorageB1j_EE18create_or_open_shm0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4d_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2s_EEEE9call_onceCs7WMazFQt77D_20component_tests_rust(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtNtBe_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1l_INtB1l_7BuilderINtNtBc_19posix_shared_memory7StorageB1j_EE18create_or_open_shm0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4f_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2s_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCs7WMazFQt77D_20component_tests_rust(ptr nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 1096
  %i.b = load i64, ptr %i.a, align 8, !noalias !959, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 1104
  %i.d = load i64, ptr %i.c, align 8, !noalias !959, !noundef !5
  %i.e = add i64 %i.b, 1
  %i.f = add i64 %i.e, %i.d
  tail call void @_RNvMs4_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsNtB5_20SharedManagementData4init(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.b, i64 noundef %i.f) #21
  %i.g = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCs7WMazFQt77D_20component_tests_rust(ptr noundef nonnull align 8 dereferenceable(80) %1) #21 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 4 uses
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %.idx.i.i = mul i64 %i.i, 88                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0Cs7WMazFQt77D_20component_tests_rust.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 1128
  %.pre.i.i = load i64, ptr %i.l, align 8, !noalias !959 ; 9 uses
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
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !958

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i
  %.sroa.0.01.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i ], [ %6, %.prol.preheader ]
  %7 = icmp ult i64 %3, 616
  br i1 %7, label %_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0Cs7WMazFQt77D_20component_tests_rust.exit, label %.lr.ph.i.i.new

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
  br i1 %i.n, label %_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0Cs7WMazFQt77D_20component_tests_rust.exit, label %.lr.ph.i.i.new

_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0Cs7WMazFQt77D_20component_tests_rust.exit: ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %bb.a
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtNtBe_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2J_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2J_7StorageB1j_EE3new0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4K_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2s_EEEE9call_onceCs7WMazFQt77D_20component_tests_rust(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtNtBe_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2J_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2J_7StorageB1j_EE3new0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4M_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2s_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCs7WMazFQt77D_20component_tests_rust(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string23StringModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @408, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string23StringModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string23StringModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string23StringModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string23StringModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCs7WMazFQt77D_20component_tests_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @409, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector23VectorModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @408, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector23VectorModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector23VectorModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector23VectorModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector23VectorModificationErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCs7WMazFQt77D_20component_tests_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @410, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs7WMazFQt77D_20component_tests_rust6common12TimeoutErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionB6_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @408, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs7WMazFQt77D_20component_tests_rust6common12TimeoutErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeB6_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs7WMazFQt77D_20component_tests_rust6common12TimeoutErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceB6_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs7WMazFQt77D_20component_tests_rust6common12TimeoutErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideB6_(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs7WMazFQt77D_20component_tests_rust6common12TimeoutErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @411, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs7WMazFQt77D_20component_tests_rust6common16GenericTestErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionB6_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @408, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs7WMazFQt77D_20component_tests_rust6common16GenericTestErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeB6_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs7WMazFQt77D_20component_tests_rust6common16GenericTestErrorNtNtCs8Chj7Szqq0n_4core5error5Error6sourceB6_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs7WMazFQt77D_20component_tests_rust6common16GenericTestErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideB6_(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs7WMazFQt77D_20component_tests_rust6common16GenericTestErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @412, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeWaitFailureNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @408, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeWaitFailureNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeWaitFailureNtNtCs8Chj7Szqq0n_4core5error5Error7provideCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24node15NodeWaitFailureNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCs7WMazFQt77D_20component_tests_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @413, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24node19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @408, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24node19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core5error5Error6sourceCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24node19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core5error5Error7provideCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24node19NodeCreationFailureNtNtCs8Chj7Szqq0n_4core5error5Error7type_idCs7WMazFQt77D_20component_tests_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @414, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @408, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!758 = !{!730, !728, !726, !724, !722}
!759 = !{!732, !726, !724, !722}
!760 = !{!734}
!761 = !{!736}
!762 = !{!736, !734}
!763 = !{!737}
!764 = !{!736, !734, !737}
!765 = !{!734, !737}
!766 = !{!751, !749, !747, !745, !743, !741, !739}
!767 = !{!753, !747, !745, !743, !741, !739}
!768 = distinct !{!768, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE10clear_implCs7WMazFQt77D_20component_tests_rust"}
!769 = distinct !{!769, !768, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE10clear_implCs7WMazFQt77D_20component_tests_rust: argument 0"}
!770 = distinct !{!770, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCs7WMazFQt77D_20component_tests_rust"}
!771 = distinct !{!771, !770, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCs7WMazFQt77D_20component_tests_rust: argument 1"}
!772 = distinct !{!772, !770, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCs7WMazFQt77D_20component_tests_rust: argument 0"}
!773 = !{!769}
!774 = !{!771, !769}
!775 = !{!772}
!776 = !{!771}
!777 = !{!772, !771, !769}
!778 = distinct !{!778, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE10clear_implCs7WMazFQt77D_20component_tests_rust"}
!779 = distinct !{!779, !778, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE10clear_implCs7WMazFQt77D_20component_tests_rust: argument 0"}
!780 = distinct !{!780, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCs7WMazFQt77D_20component_tests_rust"}
!781 = distinct !{!781, !780, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCs7WMazFQt77D_20component_tests_rust: argument 1"}
!782 = distinct !{!782, !780, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher13OffsetAndSizeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCs7WMazFQt77D_20component_tests_rust: argument 0"}
!783 = !{!779}
!784 = !{!781, !779}
!785 = !{!782}
!786 = !{!781}
!787 = !{!782, !781, !779}
!788 = distinct !{!788, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueuejNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE10clear_implCs7WMazFQt77D_20component_tests_rust"}
!789 = distinct !{!789, !788, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueuejNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE10clear_implCs7WMazFQt77D_20component_tests_rust: argument 0"}
!790 = distinct !{!790, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueuejNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCs7WMazFQt77D_20component_tests_rust"}
!791 = distinct !{!791, !790, !"_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueuejNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8pop_implCs7WMazFQt77D_20component_tests_rust: argument 0"}
!792 = !{!789}
!793 = !{!791, !789}
!794 = !{!791}
!795 = distinct !{!795, !"_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE12open_segmentCs7WMazFQt77D_20component_tests_rust"}
!796 = distinct !{!796, !795, !"_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE12open_segmentCs7WMazFQt77D_20component_tests_rust: argument 1"}
!797 = distinct !{!797, !795, !"_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE12open_segmentCs7WMazFQt77D_20component_tests_rust: argument 0"}
!798 = distinct !{!798, !"_RNvXs3_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7detailsINtB5_7BuilderNtNtNtBb_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageINtB5_16AllocatorDetailsB1l_EEEINtB9_19SharedMemoryBuilderB1l_INtB5_6MemoryB1l_B2e_EE7timeoutCs7WMazFQt77D_20component_tests_rust"}
!799 = distinct !{!799, !798, !"_RNvXs3_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7detailsINtB5_7BuilderNtNtNtBb_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageINtB5_16AllocatorDetailsB1l_EEEINtB9_19SharedMemoryBuilderB1l_INtB5_6MemoryB1l_B2e_EE7timeoutCs7WMazFQt77D_20component_tests_rust: argument 1"}
!800 = distinct !{!800, !798, !"_RNvXs3_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7detailsINtB5_7BuilderNtNtNtBb_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageINtB5_16AllocatorDetailsB1l_EEEINtB9_19SharedMemoryBuilderB1l_INtB5_6MemoryB1l_B2e_EE7timeoutCs7WMazFQt77D_20component_tests_rust: argument 0"}
!801 = distinct !{!801, !"_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB1g_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB1g_13shared_memory6common7details6MemoryB2o_INtNtNtB1g_15dynamic_storage19posix_shared_memory7StorageINtB3l_16AllocatorDetailsB2o_EEEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11claim_indexCs7WMazFQt77D_20component_tests_rust"}
!802 = distinct !{!802, !801, !"_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB1g_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB1g_13shared_memory6common7details6MemoryB2o_INtNtNtB1g_15dynamic_storage19posix_shared_memory7StorageINtB3l_16AllocatorDetailsB2o_EEEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11claim_indexCs7WMazFQt77D_20component_tests_rust: argument 0"}
!803 = distinct !{!803, !"_RNvMs6_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_11DynamicViewNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1r_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2n_16AllocatorDetailsB1r_EEEE27release_old_unused_segmentsCs7WMazFQt77D_20component_tests_rust"}
!804 = distinct !{!804, !803, !"_RNvMs6_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_11DynamicViewNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1r_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2n_16AllocatorDetailsB1r_EEEE27release_old_unused_segmentsCs7WMazFQt77D_20component_tests_rust: argument 0"}
!805 = distinct !{!805, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB14_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB14_13shared_memory6common7details6MemoryB2c_INtNtNtB14_15dynamic_storage19posix_shared_memory7StorageINtB39_16AllocatorDetailsB2c_EEEEEECs7WMazFQt77D_20component_tests_rust"}
!806 = distinct !{!806, !805, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB14_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB14_13shared_memory6common7details6MemoryB2c_INtNtNtB14_15dynamic_storage19posix_shared_memory7StorageINtB39_16AllocatorDetailsB2c_EEEEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!807 = distinct !{!807, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1Q_INtNtNtBI_15dynamic_storage19posix_shared_memory7StorageINtB2M_16AllocatorDetailsB1Q_EEEEECs7WMazFQt77D_20component_tests_rust"}
!808 = distinct !{!808, !807, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1Q_INtNtNtBI_15dynamic_storage19posix_shared_memory7StorageINtB2M_16AllocatorDetailsB1Q_EEEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!809 = distinct !{!809, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtBK_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageINtBE_16AllocatorDetailsB1N_EEEECs7WMazFQt77D_20component_tests_rust"}
!810 = distinct !{!810, !809, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtBK_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageINtBE_16AllocatorDetailsB1N_EEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!811 = distinct !{!811, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memory7StorageINtNtNtNtBI_13shared_memory6common7details16AllocatorDetailsNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorEEECs7WMazFQt77D_20component_tests_rust"}
!812 = distinct !{!812, !811, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memory7StorageINtNtNtNtBI_13shared_memory6common7details16AllocatorDetailsNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!813 = distinct !{!813, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memory12SharedMemoryECs7WMazFQt77D_20component_tests_rust"}
!814 = distinct !{!814, !813, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memory12SharedMemoryECs7WMazFQt77D_20component_tests_rust: argument 0"}
!815 = distinct !{!815, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs7WMazFQt77D_20component_tests_rust"}
!816 = distinct !{!816, !815, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs7WMazFQt77D_20component_tests_rust: argument 0"}
!817 = distinct !{!817, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptor14FileDescriptorEECs7WMazFQt77D_20component_tests_rust"}
!818 = distinct !{!818, !817, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptor14FileDescriptorEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!819 = distinct !{!819, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lock10MemoryLockEECs7WMazFQt77D_20component_tests_rust"}
!820 = distinct !{!820, !819, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lock10MemoryLockEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!821 = !{!796}
!822 = !{!797, !796}
!823 = !{!797}
!824 = !{!800, !799}
!825 = !{!802}
!826 = !{!804}
!827 = !{!806}
!828 = !{!818, !816, !814, !812, !810, !808, !806}
!829 = !{!820, !814, !812, !810, !808, !806}
!830 = distinct !{!830, !"_RINvNtCs7WMazFQt77D_20component_tests_rust6common13wait_for_predNCNvXs_NtB4_23test_container_mutationNtB17_21TestContainerMutationNtB2_13ComponentTest8run_test0EB4_"}
!831 = distinct !{!831, !830, !"_RINvNtCs7WMazFQt77D_20component_tests_rust6common13wait_for_predNCNvXs_NtB4_23test_container_mutationNtB17_21TestContainerMutationNtB2_13ComponentTest8run_test0EB4_: argument 1"}
!832 = distinct !{!832, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust23test_container_mutation28ContainerMutationTestRequestuNtB1T_29ContainerMutationTestResponseuEEB1V_"}
!833 = distinct !{!833, !832, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust23test_container_mutation28ContainerMutationTestRequestuNtB1T_29ContainerMutationTestResponseuEEB1V_: argument 0"}
!834 = distinct !{!834, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB25_7service3ipc7ServiceEEECs7WMazFQt77D_20component_tests_rust"}
!835 = distinct !{!835, !834, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB25_7service3ipc7ServiceEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!836 = distinct !{!836, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1d_7service3ipc7ServiceEEECs7WMazFQt77D_20component_tests_rust"}
!837 = distinct !{!837, !836, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1d_7service3ipc7ServiceEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!838 = distinct !{!838, !"_RNvXsw_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service3ipc7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7WMazFQt77D_20component_tests_rust"}
!839 = distinct !{!839, !838, !"_RNvXsw_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service3ipc7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7WMazFQt77D_20component_tests_rust: argument 0"}
!840 = distinct !{!840, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust23test_container_mutation28ContainerMutationTestRequestuNtB2j_29ContainerMutationTestResponseuEEB2l_"}
!841 = distinct !{!841, !840, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust23test_container_mutation28ContainerMutationTestRequestuNtB2j_29ContainerMutationTestResponseuEEB2l_: argument 0"}
!842 = distinct !{!842, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_3ipc7ServiceNtBE_10NoResourceEECs7WMazFQt77D_20component_tests_rust"}
!843 = distinct !{!843, !842, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_3ipc7ServiceNtBE_10NoResourceEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!844 = distinct !{!844, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_3ipc7ServiceNtB1c_10NoResourceEEECs7WMazFQt77D_20component_tests_rust"}
!845 = distinct !{!845, !844, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_3ipc7ServiceNtB1c_10NoResourceEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!846 = distinct !{!846, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_3ipc7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7WMazFQt77D_20component_tests_rust"}
!847 = distinct !{!847, !846, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_3ipc7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7WMazFQt77D_20component_tests_rust: argument 0"}
!848 = distinct !{!848, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust23test_container_mutation28ContainerMutationTestRequestuNtB1T_29ContainerMutationTestResponseuEEB1V_"}
!849 = distinct !{!849, !848, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust23test_container_mutation28ContainerMutationTestRequestuNtB1T_29ContainerMutationTestResponseuEEB1V_: argument 0"}
!850 = distinct !{!850, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB25_7service3ipc7ServiceEEECs7WMazFQt77D_20component_tests_rust"}
!851 = distinct !{!851, !850, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB25_7service3ipc7ServiceEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!852 = distinct !{!852, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1d_7service3ipc7ServiceEEECs7WMazFQt77D_20component_tests_rust"}
!853 = distinct !{!853, !852, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1d_7service3ipc7ServiceEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!854 = distinct !{!854, !"_RNvXsw_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service3ipc7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7WMazFQt77D_20component_tests_rust"}
!855 = distinct !{!855, !854, !"_RNvXsw_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service3ipc7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7WMazFQt77D_20component_tests_rust: argument 0"}
!856 = distinct !{!856, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust23test_container_mutation28ContainerMutationTestRequestuNtB2j_29ContainerMutationTestResponseuEEB2l_"}
!857 = distinct !{!857, !856, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust23test_container_mutation28ContainerMutationTestRequestuNtB2j_29ContainerMutationTestResponseuEEB2l_: argument 0"}
!858 = distinct !{!858, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_3ipc7ServiceNtBE_10NoResourceEECs7WMazFQt77D_20component_tests_rust"}
!859 = distinct !{!859, !858, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_3ipc7ServiceNtBE_10NoResourceEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!860 = distinct !{!860, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_3ipc7ServiceNtB1c_10NoResourceEEECs7WMazFQt77D_20component_tests_rust"}
!861 = distinct !{!861, !860, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_3ipc7ServiceNtB1c_10NoResourceEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!862 = distinct !{!862, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_3ipc7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7WMazFQt77D_20component_tests_rust"}
!863 = distinct !{!863, !862, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_3ipc7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7WMazFQt77D_20component_tests_rust: argument 0"}
!864 = !{!831}
!865 = !{!833}
!866 = !{!835}
!867 = !{!837}
!868 = !{!839}
!869 = !{!839, !837, !835, !833}
!870 = !{!841}
!871 = !{!843}
!872 = !{!845}
!873 = !{!847}
!874 = !{!847, !845, !843, !841}
!875 = !{!849}
!876 = !{!851}
!877 = !{!853}
!878 = !{!855}
!879 = !{!855, !853, !851, !849}
!880 = !{!857}
!881 = !{!859}
!882 = !{!861}
!883 = !{!863}
!884 = !{!863, !861, !859, !857}
!885 = distinct !{!885, !"_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE27extract_name_and_segment_idCs7WMazFQt77D_20component_tests_rust"}
!886 = distinct !{!886, !885, !"_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE27extract_name_and_segment_idCs7WMazFQt77D_20component_tests_rust: argument 1"}
!887 = distinct !{!887, !885, !"_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE27extract_name_and_segment_idCs7WMazFQt77D_20component_tests_rust: argument 0"}
!888 = distinct !{!888, !"_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl"}
!889 = distinct !{!889, !888, !"_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl: argument 1"}
!890 = distinct !{!890, !888, !"_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl: argument 0"}
!891 = !{i64 -1, i64 -9223372036854775808}
!892 = !{!886}
!893 = !{!887, !886}
!894 = !{!887}
!895 = !{!889}
!896 = !{!890, !887}
!897 = !{!"branch_weights", i32 2002, i32 2000}
!898 = distinct !{!898, !"_RINvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB6_13DynamicMemoryNtNtNtBa_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBa_13shared_memory6common7details6MemoryB1u_INtNtNtBa_15dynamic_storage19posix_shared_memory7StorageINtB2q_16AllocatorDetailsB1u_EEEE20perform_deallocationNCNvXsc_B6_B19_INtB8_37ResizableSharedMemoryForPoolAllocatorB2n_E17deallocate_bucket0ECs7WMazFQt77D_20component_tests_rust"}
!899 = distinct !{!899, !898, !"_RINvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB6_13DynamicMemoryNtNtNtBa_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBa_13shared_memory6common7details6MemoryB1u_INtNtNtBa_15dynamic_storage19posix_shared_memory7StorageINtB2q_16AllocatorDetailsB1u_EEEE20perform_deallocationNCNvXsc_B6_B19_INtB8_37ResizableSharedMemoryForPoolAllocatorB2n_E17deallocate_bucket0ECs7WMazFQt77D_20component_tests_rust: argument 0"}
!900 = distinct !{!900, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB14_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB14_13shared_memory6common7details6MemoryB2c_INtNtNtB14_15dynamic_storage19posix_shared_memory7StorageINtB39_16AllocatorDetailsB2c_EEEEEECs7WMazFQt77D_20component_tests_rust"}
!901 = distinct !{!901, !900, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB14_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB14_13shared_memory6common7details6MemoryB2c_INtNtNtB14_15dynamic_storage19posix_shared_memory7StorageINtB39_16AllocatorDetailsB2c_EEEEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!902 = distinct !{!902, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1Q_INtNtNtBI_15dynamic_storage19posix_shared_memory7StorageINtB2M_16AllocatorDetailsB1Q_EEEEECs7WMazFQt77D_20component_tests_rust"}
!903 = distinct !{!903, !902, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1Q_INtNtNtBI_15dynamic_storage19posix_shared_memory7StorageINtB2M_16AllocatorDetailsB1Q_EEEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!904 = distinct !{!904, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtBK_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageINtBE_16AllocatorDetailsB1N_EEEECs7WMazFQt77D_20component_tests_rust"}
!905 = distinct !{!905, !904, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtBK_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageINtBE_16AllocatorDetailsB1N_EEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!906 = distinct !{!906, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memory7StorageINtNtNtNtBI_13shared_memory6common7details16AllocatorDetailsNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorEEECs7WMazFQt77D_20component_tests_rust"}
!907 = distinct !{!907, !906, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memory7StorageINtNtNtNtBI_13shared_memory6common7details16AllocatorDetailsNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!908 = distinct !{!908, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memory12SharedMemoryECs7WMazFQt77D_20component_tests_rust"}
!909 = distinct !{!909, !908, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memory12SharedMemoryECs7WMazFQt77D_20component_tests_rust: argument 0"}
!910 = distinct !{!910, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs7WMazFQt77D_20component_tests_rust"}
!911 = distinct !{!911, !910, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs7WMazFQt77D_20component_tests_rust: argument 0"}
!912 = distinct !{!912, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptor14FileDescriptorEECs7WMazFQt77D_20component_tests_rust"}
!913 = distinct !{!913, !912, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptor14FileDescriptorEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!914 = distinct !{!914, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lock10MemoryLockEECs7WMazFQt77D_20component_tests_rust"}
!915 = distinct !{!915, !914, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lock10MemoryLockEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!916 = !{!899}
!917 = !{!901}
!918 = !{!913, !911, !909, !907, !905, !903, !901}
!919 = !{!915, !909, !907, !905, !903, !901}
!920 = distinct !{!920, !"_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE14create_segmentCs7WMazFQt77D_20component_tests_rust"}
!921 = distinct !{!921, !920, !"_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE14create_segmentCs7WMazFQt77D_20component_tests_rust: argument 1"}
!922 = distinct !{!922, !920, !"_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE14create_segmentCs7WMazFQt77D_20component_tests_rust: argument 0"}
!923 = distinct !{!923, !"_RNvXs3_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7detailsINtB5_7BuilderNtNtNtBb_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageINtB5_16AllocatorDetailsB1l_EEEINtB9_19SharedMemoryBuilderB1l_INtB5_6MemoryB1l_B2e_EE4sizeCs7WMazFQt77D_20component_tests_rust"}
!924 = distinct !{!924, !923, !"_RNvXs3_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7detailsINtB5_7BuilderNtNtNtBb_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageINtB5_16AllocatorDetailsB1l_EEEINtB9_19SharedMemoryBuilderB1l_INtB5_6MemoryB1l_B2e_EE4sizeCs7WMazFQt77D_20component_tests_rust: argument 1"}
!925 = distinct !{!925, !923, !"_RNvXs3_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7detailsINtB5_7BuilderNtNtNtBb_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageINtB5_16AllocatorDetailsB1l_EEEINtB9_19SharedMemoryBuilderB1l_INtB5_6MemoryB1l_B2e_EE4sizeCs7WMazFQt77D_20component_tests_rust: argument 0"}
!926 = distinct !{!926, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB14_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB14_13shared_memory6common7details6MemoryB2c_INtNtNtB14_15dynamic_storage19posix_shared_memory7StorageINtB39_16AllocatorDetailsB2c_EEEEEECs7WMazFQt77D_20component_tests_rust"}
!927 = distinct !{!927, !926, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB14_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB14_13shared_memory6common7details6MemoryB2c_INtNtNtB14_15dynamic_storage19posix_shared_memory7StorageINtB39_16AllocatorDetailsB2c_EEEEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!928 = distinct !{!928, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1Q_INtNtNtBI_15dynamic_storage19posix_shared_memory7StorageINtB2M_16AllocatorDetailsB1Q_EEEEECs7WMazFQt77D_20component_tests_rust"}
!929 = distinct !{!929, !928, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtBI_13shared_memory6common7details6MemoryB1Q_INtNtNtBI_15dynamic_storage19posix_shared_memory7StorageINtB2M_16AllocatorDetailsB1Q_EEEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!930 = distinct !{!930, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtBK_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageINtBE_16AllocatorDetailsB1N_EEEECs7WMazFQt77D_20component_tests_rust"}
!931 = distinct !{!931, !930, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7details6MemoryNtNtNtBK_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBK_15dynamic_storage19posix_shared_memory7StorageINtBE_16AllocatorDetailsB1N_EEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!932 = distinct !{!932, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memory7StorageINtNtNtNtBI_13shared_memory6common7details16AllocatorDetailsNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorEEECs7WMazFQt77D_20component_tests_rust"}
!933 = distinct !{!933, !932, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memory7StorageINtNtNtNtBI_13shared_memory6common7details16AllocatorDetailsNtNtNtBI_13shm_allocator14pool_allocator13PoolAllocatorEEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!934 = distinct !{!934, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memory12SharedMemoryECs7WMazFQt77D_20component_tests_rust"}
!935 = distinct !{!935, !934, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix13shared_memory12SharedMemoryECs7WMazFQt77D_20component_tests_rust: argument 0"}
!936 = distinct !{!936, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs7WMazFQt77D_20component_tests_rust"}
!937 = distinct !{!937, !936, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14memory_mapping13MemoryMappingECs7WMazFQt77D_20component_tests_rust: argument 0"}
!938 = distinct !{!938, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptor14FileDescriptorEECs7WMazFQt77D_20component_tests_rust"}
!939 = distinct !{!939, !938, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptor14FileDescriptorEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!940 = distinct !{!940, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lock10MemoryLockEECs7WMazFQt77D_20component_tests_rust"}
!941 = distinct !{!941, !940, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11memory_lock10MemoryLockEECs7WMazFQt77D_20component_tests_rust: argument 0"}
!942 = distinct !{!942, !"_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB1g_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB1g_13shared_memory6common7details6MemoryB2o_INtNtNtB1g_15dynamic_storage19posix_shared_memory7StorageINtB3l_16AllocatorDetailsB2o_EEEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11claim_indexCs7WMazFQt77D_20component_tests_rust"}
!943 = distinct !{!943, !942, !"_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamic8ShmEntryNtNtNtB1g_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB1g_13shared_memory6common7details6MemoryB2o_INtNtNtB1g_15dynamic_storage19posix_shared_memory7StorageINtB3l_16AllocatorDetailsB2o_EEEENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE11claim_indexCs7WMazFQt77D_20component_tests_rust: argument 0"}
!944 = !{!922, !921}
!945 = !{!922}
!946 = !{!925, !924}
!947 = !{!927}
!948 = !{!939, !937, !935, !933, !931, !929, !927}
!949 = !{!941, !935, !933, !931, !929, !927}
!950 = !{!943}
!951 = !{i8 -1, i8 8}
!952 = distinct !{!952, !"_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0Cs7WMazFQt77D_20component_tests_rust"}
!953 = distinct !{!953, !952, !"_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0Cs7WMazFQt77D_20component_tests_rust: argument 1"}
!954 = distinct !{!954, !952, !"_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0Cs7WMazFQt77D_20component_tests_rust: argument 0"}
!955 = distinct !{!955, !"_RNCNvMs5_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB7_7BuilderINtNtNtBd_15dynamic_storage19posix_shared_memory7StorageNtB7_20SharedManagementDataEE18create_or_open_shm0Cs7WMazFQt77D_20component_tests_rust"}
!956 = distinct !{!956, !955, !"_RNCNvMs5_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB7_7BuilderINtNtNtBd_15dynamic_storage19posix_shared_memory7StorageNtB7_20SharedManagementDataEE18create_or_open_shm0Cs7WMazFQt77D_20component_tests_rust: argument 1"}
!957 = distinct !{!957, !955, !"_RNCNvMs5_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB7_7BuilderINtNtNtBd_15dynamic_storage19posix_shared_memory7StorageNtB7_20SharedManagementDataEE18create_or_open_shm0Cs7WMazFQt77D_20component_tests_rust: argument 0"}
!958 = distinct !{!958, !960}
!959 = !{!957, !956, !954, !953}
!960 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
