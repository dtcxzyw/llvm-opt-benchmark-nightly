Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_service.iox2_service.771596196ace3571-cgu.02?download=true
inline.NumInlined: 968
inline.NumDeleted: 454
begin_hunk_0_@_RNvXs_NtNtCs8Chj7Szqq0n_4core2io5implsQNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockNtNtB6_5write5Write17is_write_vectoredCsadSKrpJ73hd_12iox2_service:bb.a
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef ptr @_RNvXs_NtNtCs8Chj7Szqq0n_4core2io5implsQNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockNtNtB6_5write5Write18write_all_vectoredCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5
  %i.b = tail call noundef ptr @_RNvXss_NtNtCsigunbJSLHCW_3std2io5stdioNtB5_10StderrLockNtNtNtCs8Chj7Szqq0n_4core2io5write5Write18write_all_vectored(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2) #23
  ret ptr %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef ptr @_RNvXs_NtNtCs8Chj7Szqq0n_4core2io5implsQNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockNtNtB6_5write5Write5flushCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5
  %i.b = tail call noundef ptr @_RNvXss_NtNtCsigunbJSLHCW_3std2io5stdioNtB5_10StderrLockNtNtNtCs8Chj7Szqq0n_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #23
  ret ptr %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_NtNtCs8Chj7Szqq0n_4core2io5implsQNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockNtNtB6_5write5Write5writeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5
  %i.b = tail call { i64, ptr } @_RNvXss_NtNtCsigunbJSLHCW_3std2io5stdioNtB5_10StderrLockNtNtNtCs8Chj7Szqq0n_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #23
  ret { i64, ptr } %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef ptr @_RNvXs_NtNtCs8Chj7Szqq0n_4core2io5implsQNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockNtNtB6_5write5Write9write_allCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5
  %i.b = tail call noundef ptr @_RNvXss_NtNtCsigunbJSLHCW_3std2io5stdioNtB5_10StderrLockNtNtNtCs8Chj7Szqq0n_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #23
  ret ptr %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef ptr @_RNvXs_NtNtCs8Chj7Szqq0n_4core2io5implsQNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockNtNtB6_5write5Write9write_fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5
  %i.b = tail call noundef ptr @_RNvYNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockNtNtNtCs8Chj7Szqq0n_4core2io5write5Write9write_fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %2) #23
  ret ptr %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs8FOSrxU71ur_3ron3ser3rawINtB4_10SerializerQNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCsePUspIjoSTD_10serde_core3ser10Serializer13serialize_strCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(224) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.b = tail call noundef zeroext i1 @_RNvXNtCs8Chj7Szqq0n_4core3fmtQNtNtCsbqH9stoieM8_5alloc6string6StringNtB2_5Write9write_strCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #23
  %not. = xor i1 %i.b, true
  %. = sext i1 %not. to i8
  store i8 %., ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtNtCsg6ZEkMtNi4J_8iceoryx27service12service_nameNtB5_16ServiceNameErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !9, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 20, i64 14
  %.1 = select i1 %i.b, ptr @102, ptr @101
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.) #23
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtCs3BrUJWlHraO_7anstyle5colorNtB5_13NullFormatterNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c) #23
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXso_NtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storageNtB5_31DynamicStorageOpenOrCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i8, ptr %0, align 1, !range !9, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 25, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @125) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 23, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs8Chj7Szqq0n_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow7wrapper12MessageErrorNtNtCsbqH9stoieM8_5alloc6string6StringENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCs2wk0oZsur5i_6anyhow7wrapper12MessageErrorReENtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureINtNtNtNtBe_13shared_memory6common7details16AllocatorDetailsNtNtNtBe_13shm_allocator14pool_allocator13PoolAllocatorEKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB3t_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB3t_7StorageB1j_EE3new0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB5u_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB3c_EEEE9call_onceCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureINtNtNtNtBe_13shared_memory6common7details16AllocatorDetailsNtNtNtBe_13shm_allocator14pool_allocator13PoolAllocatorEKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB3t_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB3t_7StorageB1j_EE3new0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB5w_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB3c_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureINtNtNtNtBe_13shared_memory6common7details16AllocatorDetailsNtNtNtBe_13shm_allocator14pool_allocator13PoolAllocatorEKj18_E3newNCNvXs3_B1m_INtB1m_7BuilderB2h_INtNtBc_19posix_shared_memory7StorageB1j_EEINtB1q_19SharedMemoryBuilderB2h_INtB1m_6MemoryB2h_B3Q_EE6create0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB5I_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB3c_EEEE9call_onceCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureINtNtNtNtBe_13shared_memory6common7details16AllocatorDetailsNtNtNtBe_13shm_allocator14pool_allocator13PoolAllocatorEKj18_E3newNCNvXs3_B1m_INtB1m_7BuilderB2h_INtNtBc_19posix_shared_memory7StorageB1j_EEINtB1q_19SharedMemoryBuilderB2h_INtB1m_6MemoryB2h_B3Q_EE6create0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB5K_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB3c_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCsadSKrpJ73hd_12iox2_service(ptr nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(128) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !align !18, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory6common7detailsINtB5_7BuilderNtNtNtBb_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageINtB5_16AllocatorDetailsB1l_EEE10initializeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1120) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #23
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx24node25global_management_segment5StateKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2G_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2G_7StorageB1j_EE3new0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4H_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2p_EEEE9call_onceCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx24node25global_management_segment5StateKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2G_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2G_7StorageB1j_EE3new0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4J_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2p_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree readnone align 4 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2H_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2H_7StorageB1j_EE3new0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4I_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2q_EEEE9call_onceCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2H_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2H_7StorageB1j_EE3new0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4K_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2q_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_E3newNvMs_NtB1n_7builderINtB2E_22BuilderWithServiceTypeNtNtB1n_3ipc7ServiceE16config_init_callE0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB49_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2q_EEEE9call_onceCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_E3newNvMs_NtB1n_7builderINtB2E_22BuilderWithServiceTypeNtNtB1n_3ipc7ServiceE16config_init_callEs_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4b_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2q_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(256) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtNtCsg6ZEkMtNi4J_8iceoryx27service7builderINtB4_22BuilderWithServiceTypeNtNtB6_3ipc7ServiceE16config_init_callCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #23
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtNtBe_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1l_INtB1l_7BuilderINtNtBc_19posix_shared_memory7StorageB1j_EE18create_or_open_shm0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4d_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2s_EEEE9call_onceCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtNtBe_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1l_INtB1l_7BuilderINtNtBc_19posix_shared_memory7StorageB1j_EE18create_or_open_shm0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4f_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2s_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCsadSKrpJ73hd_12iox2_service(ptr nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 1096
  %i.b = load i64, ptr %i.a, align 8, !noalias !3389, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 1104
  %i.d = load i64, ptr %i.c, align 8, !noalias !3389, !noundef !5
  %i.e = add i64 %i.b, 1
  %i.f = add i64 %i.e, %i.d
  tail call void @_RNvMs4_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsNtB5_20SharedManagementData4init(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.b, i64 noundef %i.f) #23
  %i.g = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15relocatable_vec14RelocatableVecNtNtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7details7ChannelEINtB7_6VectorB1o_E8as_sliceCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 dereferenceable(80) %1) #23 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 3 uses
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %.idx.i.i = mul nuw nsw i64 %i.i, 88
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0CsadSKrpJ73hd_12iox2_service.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 1128
  %.pre.i.i = load i64, ptr %i.l, align 8, !noalias !3389
  br label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i.new, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.m, %.lr.ph.i.i.new ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 88 ; 2 uses
  store atomic i64 %.pre.i.i, ptr %.sroa.0.01.i.i monotonic, align 8
  %i.n = icmp eq ptr %i.m, %i.j
  br i1 %i.n, label %_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0CsadSKrpJ73hd_12iox2_service.exit, label %.lr.ph.i.i.new

_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0CsadSKrpJ73hd_12iox2_service.exit: ; preds = %.lr.ph.i.i.new, %bb.a
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtNtBe_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2J_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2J_7StorageB1j_EE3new0E0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4K_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2s_EEEE9call_onceCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtBa_11TinyClosureNtNtNtNtBe_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvXs2_NtBc_19posix_shared_memoryINtB2J_7BuilderB1j_EINtNtBe_13named_concept19NamedConceptBuilderINtB2J_7StorageB1j_EE3new0Es_0INtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTINtNtNtB4M_3ptr8non_null7NonNullINtNtCsaEhHIPDsR8r_7tiny_fn7private13InlineStorageKB2s_EEQB1j_QNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14bump_allocator13BumpAllocatorEE9call_onceCsadSKrpJ73hd_12iox2_service(ptr nofree nonnull readnone captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #8 {
bb.a:
  ret i1 true
}

; Function Attrs: cold nounwind nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error12invalid_typeCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtCsePUspIjoSTD_10serde_core2deNtB2_10UnexpectedNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRDNtNtCsePUspIjoSTD_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.46.0..sroa_idx, align 8
  call fastcc void @_RINvXs_NtNtCs7PFeJTloU4p_4toml2de5errorNtB5_5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error6customNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull @130, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error13invalid_valueCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtCsePUspIjoSTD_10serde_core2deNtB2_10UnexpectedNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRDNtNtCsePUspIjoSTD_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.46.0..sroa_idx, align 8
  call fastcc void @_RINvXs_NtNtCs7PFeJTloU4p_4toml2de5errorNtB5_5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error6customNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull @131, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error13missing_fieldCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.42.0..sroa_idx, align 8
  call fastcc void @_RINvXs_NtNtCs7PFeJTloU4p_4toml2de5errorNtB5_5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error6customNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull @132, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvYNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error13unknown_fieldCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @42, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs6_NtCsePUspIjoSTD_10serde_core2deNtB5_5OneOfNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  call fastcc void @_RINvXs_NtNtCs7PFeJTloU4p_4toml2de5errorNtB5_5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error6customNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull @133, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error14invalid_lengthCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  store ptr %2, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRDNtNtCsePUspIjoSTD_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.46.0..sroa_idx, align 8
  call fastcc void @_RINvXs_NtNtCs7PFeJTloU4p_4toml2de5errorNtB5_5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error6customNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull @134, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error15duplicate_fieldCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.42.0..sroa_idx, align 8
  call fastcc void @_RINvXs_NtNtCs7PFeJTloU4p_4toml2de5errorNtB5_5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error6customNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull @135, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error15unknown_variantCsadSKrpJ73hd_12iox2_service(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 576460752303423488) %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8
  %i.f = icmp eq i64 %4, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %3, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %4, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.46.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs6_NtCsePUspIjoSTD_10serde_core2deNtB5_5OneOfNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  call fastcc void @_RINvXs_NtNtCs7PFeJTloU4p_4toml2de5errorNtB5_5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error6customNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull @136, ptr noundef nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.42.0..sroa_idx, align 8
  call fastcc void @_RINvXs_NtNtCs7PFeJTloU4p_4toml2de5errorNtB5_5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error6customNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull @137, ptr noundef nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name16ServiceNameErrorNtNtCs8Chj7Szqq0n_4core5error5Error5causeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs1Sc5qN8xnnK_11human_panicNtB4_10PanicStyleNtNtCs8Chj7Szqq0n_4core7default7Default7default() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!3189 = distinct !{!3189, !3188, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service: argument 0"}
!3190 = !{!3165, !3164}
!3191 = !{!3165}
!3192 = !{!3171, !3169, !3167}
!3193 = !{!3169, !3167}
!3194 = !{!3173, !3165, !3164}
!3195 = !{!3164}
!3196 = !{i32 0, i32 1000000000}
!3197 = !{!3181, !3179, !3177, !3175}
!3198 = !{!3189, !3187, !3185, !3183}
!3199 = distinct !{!3199, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service"}
!3200 = distinct !{!3200, !3199, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service: argument 0"}
!3201 = !{!3200}
!3202 = distinct !{!3202, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service"}
!3203 = distinct !{!3203, !3202, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service: argument 0"}
!3204 = !{!3203}
!3205 = distinct !{!3205, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service"}
!3206 = distinct !{!3206, !3205, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service: argument 0"}
!3207 = !{!3206}
!3208 = distinct !{!3208, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service"}
!3209 = distinct !{!3209, !3208, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service: argument 0"}
!3210 = !{!3209}
!3211 = distinct !{!3211, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service"}
!3212 = distinct !{!3212, !3211, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service: argument 0"}
!3213 = !{!3212}
!3214 = distinct !{!3214, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service"}
!3215 = distinct !{!3215, !3214, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service: argument 0"}
!3216 = !{!3215}
!3217 = distinct !{!3217, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service"}
!3218 = distinct !{!3218, !3217, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service: argument 0"}
!3219 = !{!3218}
!3220 = distinct !{!3220, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service"}
!3221 = distinct !{!3221, !3220, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service: argument 0"}
!3222 = !{!3221}
!3223 = distinct !{!3223, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service"}
!3224 = distinct !{!3224, !3223, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service: argument 0"}
!3225 = !{!3224}
!3226 = distinct !{!3226, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service"}
!3227 = distinct !{!3227, !3226, !"_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsadSKrpJ73hd_12iox2_service: argument 0"}
!3228 = !{!3227}
!3229 = distinct !{!3229, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECsadSKrpJ73hd_12iox2_service"}
!3230 = distinct !{!3230, !3229, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECsadSKrpJ73hd_12iox2_service: argument 0"}
!3231 = distinct !{!3231, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service"}
!3232 = distinct !{!3232, !3231, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service: argument 0"}
!3233 = distinct !{!3233, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service"}
!3234 = distinct !{!3234, !3233, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service: argument 0"}
!3235 = distinct !{!3235, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECsadSKrpJ73hd_12iox2_service"}
!3236 = distinct !{!3236, !3235, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECsadSKrpJ73hd_12iox2_service: argument 0"}
!3237 = distinct !{!3237, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service"}
!3238 = distinct !{!3238, !3237, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service: argument 0"}
!3239 = distinct !{!3239, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service"}
!3240 = distinct !{!3240, !3239, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service: argument 0"}
!3241 = !{!3234, !3232, !3230}
!3242 = !{!3240, !3238, !3236}
!3243 = distinct !{null}
!3244 = distinct !{null}
!3245 = distinct !{null}
!3246 = distinct !{null}
!3247 = distinct !{!3247, !"_RNvXs_NtNtCs8Chj7Szqq0n_4core2io5implsQNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockNtNtB6_5write5Write9write_fmtCsadSKrpJ73hd_12iox2_service"}
!3248 = distinct !{!3248, !3247, !"_RNvXs_NtNtCs8Chj7Szqq0n_4core2io5implsQNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockNtNtB6_5write5Write9write_fmtCsadSKrpJ73hd_12iox2_service: argument 0"}
!3249 = !{!3248}
!3250 = distinct !{!3250, !"_RNvXsa_NtCs5kzjBmDVxDj_21iceoryx2_bb_container18relocatable_optionINtB5_17RelocatableOptionjENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service"}
!3251 = distinct !{!3251, !3250, !"_RNvXsa_NtCs5kzjBmDVxDj_21iceoryx2_bb_container18relocatable_optionINtB5_17RelocatableOptionjENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service: argument 0"}
!3252 = distinct !{!3252, !3250, !"_RNvXsa_NtCs5kzjBmDVxDj_21iceoryx2_bb_container18relocatable_optionINtB5_17RelocatableOptionjENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsadSKrpJ73hd_12iox2_service: argument 1"}
!3253 = !{!3251}
!3254 = !{!3252}
!3255 = !{!3251, !3252}
!3256 = distinct !{!3256, !"_RNvMNtCs1HHhRunvQSa_10serde_yaml3serINtB2_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEE16emit_mapping_endCsadSKrpJ73hd_12iox2_service"}
!3257 = distinct !{!3257, !3256, !"_RNvMNtCs1HHhRunvQSa_10serde_yaml3serINtB2_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEE16emit_mapping_endCsadSKrpJ73hd_12iox2_service: argument 0"}
!3258 = distinct !{!3258, !"_RNvMNtCs1HHhRunvQSa_10serde_yaml3serINtB2_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEE9value_endCsadSKrpJ73hd_12iox2_service"}
!3259 = distinct !{!3259, !3258, !"_RNvMNtCs1HHhRunvQSa_10serde_yaml3serINtB2_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEE9value_endCsadSKrpJ73hd_12iox2_service: argument 0"}
!3260 = !{!3257}
!3261 = !{!3259}
!3262 = !{!3259, !3257}
!3263 = distinct !{!3263, !"_RNvMNtCs1HHhRunvQSa_10serde_yaml3serINtB2_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEE19emit_sequence_startCsadSKrpJ73hd_12iox2_service"}
!3264 = distinct !{!3264, !3263, !"_RNvMNtCs1HHhRunvQSa_10serde_yaml3serINtB2_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEE19emit_sequence_startCsadSKrpJ73hd_12iox2_service: argument 0"}
!3265 = distinct !{!3265, !"_RNvMNtCs1HHhRunvQSa_10serde_yaml3serINtB2_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEE11value_startCsadSKrpJ73hd_12iox2_service"}
!3266 = distinct !{!3266, !3265, !"_RNvMNtCs1HHhRunvQSa_10serde_yaml3serINtB2_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEE11value_startCsadSKrpJ73hd_12iox2_service: argument 0"}
!3267 = distinct !{!3267, !"_RNvMNtCs1HHhRunvQSa_10serde_yaml3serINtB2_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEE8take_tagCsadSKrpJ73hd_12iox2_service"}
!3268 = distinct !{!3268, !3267, !"_RNvMNtCs1HHhRunvQSa_10serde_yaml3serINtB2_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEE8take_tagCsadSKrpJ73hd_12iox2_service: argument 1"}
!3269 = distinct !{!3269, !3267, !"_RNvMNtCs1HHhRunvQSa_10serde_yaml3serINtB2_10SerializerQINtNtCsbqH9stoieM8_5alloc3vec3VechEE8take_tagCsadSKrpJ73hd_12iox2_service: argument 0"}
!3270 = distinct !{!3270, !"_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String6insert"}
!3271 = distinct !{!3271, !3270, !"_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String6insert: argument 0"}
!3272 = !{!3264}
!3273 = !{!3266}
!3274 = !{!3266, !3264}
!3275 = !{!3268}
!3276 = !{!3268, !3264}
!3277 = !{!3269}
!3278 = !{!3269, !3268, !3264}
!3279 = !{!3269, !3268}
!3280 = !{!3271}
!3281 = distinct !{!3281, !"_RNvXs2_NtNtCs8Chj7Szqq0n_4core3str7patterncNtB5_7Pattern15is_contained_in"}
!3282 = distinct !{!3282, !3281, !"_RNvXs2_NtNtCs8Chj7Szqq0n_4core3str7patterncNtB5_7Pattern15is_contained_in: argument 0"}
!3283 = distinct !{!3283, !"_RNvXsg_NtNtCs8Chj7Szqq0n_4core5slice3cmphNtB5_13SliceContains14slice_containsCsadSKrpJ73hd_12iox2_service"}
!3284 = distinct !{!3284, !3283, !"_RNvXsg_NtNtCs8Chj7Szqq0n_4core5slice3cmphNtB5_13SliceContains14slice_containsCsadSKrpJ73hd_12iox2_service: argument 0"}
!3285 = distinct !{!3285, !"_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr6memchr"}
!3286 = distinct !{!3286, !3285, !"_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr6memchr: argument 0"}
!3287 = distinct !{!3287, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs1HHhRunvQSa_10serde_yaml5error9ErrorImplECsadSKrpJ73hd_12iox2_service"}
!3288 = distinct !{!3288, !3287, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs1HHhRunvQSa_10serde_yaml5error9ErrorImplECsadSKrpJ73hd_12iox2_service: argument 0"}
!3289 = distinct !{!3289, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcNtNtCs1HHhRunvQSa_10serde_yaml5error9ErrorImplEECsadSKrpJ73hd_12iox2_service"}
!3290 = distinct !{!3290, !3289, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcNtNtCs1HHhRunvQSa_10serde_yaml5error9ErrorImplEECsadSKrpJ73hd_12iox2_service: argument 0"}
!3291 = distinct !{!3291, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtCs1HHhRunvQSa_10serde_yaml5error9ErrorImplENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service"}
!3292 = distinct !{!3292, !3291, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtCs1HHhRunvQSa_10serde_yaml5error9ErrorImplENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service: argument 0"}
!3293 = distinct !{!3293, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECsadSKrpJ73hd_12iox2_service"}
!3294 = distinct !{!3294, !3293, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECsadSKrpJ73hd_12iox2_service: argument 0"}
!3295 = distinct !{!3295, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service"}
!3296 = distinct !{!3296, !3295, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service: argument 0"}
!3297 = distinct !{!3297, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service"}
!3298 = distinct !{!3298, !3297, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service: argument 0"}
!3299 = distinct !{!3299, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service"}
!3300 = distinct !{!3300, !3299, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service: argument 0"}
!3301 = distinct !{!3301, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1HHhRunvQSa_10serde_yaml5error3PosEECsadSKrpJ73hd_12iox2_service"}
!3302 = distinct !{!3302, !3301, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1HHhRunvQSa_10serde_yaml5error3PosEECsadSKrpJ73hd_12iox2_service: argument 0"}
!3303 = distinct !{!3303, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs1HHhRunvQSa_10serde_yaml5error3PosECsadSKrpJ73hd_12iox2_service"}
!3304 = distinct !{!3304, !3303, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs1HHhRunvQSa_10serde_yaml5error3PosECsadSKrpJ73hd_12iox2_service: argument 0"}
!3305 = distinct !{!3305, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECsadSKrpJ73hd_12iox2_service"}
!3306 = distinct !{!3306, !3305, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECsadSKrpJ73hd_12iox2_service: argument 0"}
!3307 = distinct !{!3307, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service"}
!3308 = distinct !{!3308, !3307, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service: argument 0"}
!3309 = distinct !{!3309, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service"}
!3310 = distinct !{!3310, !3309, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service: argument 0"}
!3311 = distinct !{!3311, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service"}
!3312 = distinct !{!3312, !3311, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service: argument 0"}
!3313 = distinct !{!3313, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsadSKrpJ73hd_12iox2_service"}
!3314 = distinct !{!3314, !3313, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsadSKrpJ73hd_12iox2_service: argument 0"}
!3315 = distinct !{!3315, !"_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsadSKrpJ73hd_12iox2_service"}
!3316 = distinct !{!3316, !3315, !"_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsadSKrpJ73hd_12iox2_service: argument 0"}
!3317 = distinct !{!3317, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string13FromUtf8ErrorECsadSKrpJ73hd_12iox2_service"}
!3318 = distinct !{!3318, !3317, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string13FromUtf8ErrorECsadSKrpJ73hd_12iox2_service: argument 0"}
!3319 = distinct !{!3319, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service"}
!3320 = distinct !{!3320, !3319, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECsadSKrpJ73hd_12iox2_service: argument 0"}
!3321 = distinct !{!3321, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service"}
!3322 = distinct !{!3322, !3321, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service: argument 0"}
!3323 = distinct !{!3323, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service"}
!3324 = distinct !{!3324, !3323, !"_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service: argument 0"}
!3325 = !{!3286, !3284, !3282}
!3326 = !{!3288}
!3327 = !{i32 0, i32 26}
!3328 = !{!3290}
!3329 = !{!3292}
!3330 = !{!3292, !3290, !3288}
!3331 = !{!3298, !3296, !3294, !3288}
!3332 = !{!3296, !3294, !3288}
!3333 = !{!3300}
!3334 = !{!3302, !3288}
!3335 = !{!3310, !3308, !3306, !3304, !3302, !3288}
!3336 = !{!3308, !3306, !3304, !3302, !3288}
!3337 = !{!3312}
!3338 = !{!3314}
!3339 = !{!3314, !3288}
!3340 = !{!3316}
!3341 = !{!3322, !3320, !3318, !3288}
!3342 = !{!3320, !3318, !3288}
!3343 = !{!3324}
!3344 = distinct !{!3344, !"_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt"}
!3345 = distinct !{!3345, !3344, !"_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt: argument 0"}
!3346 = distinct !{!3346, !3344, !"_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt: argument 1"}
!3347 = !{!3345}
!3348 = !{!3346}
!3349 = distinct !{!3349, !"_RNvXs7_NtNtCsbqH9stoieM8_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs8Chj7Szqq0n_4core2io5write5Write14write_vectoredCsadSKrpJ73hd_12iox2_service"}
!3350 = distinct !{!3350, !3349, !"_RNvXs7_NtNtCsbqH9stoieM8_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs8Chj7Szqq0n_4core2io5write5Write14write_vectoredCsadSKrpJ73hd_12iox2_service: argument 0"}
!3351 = distinct !{!3351, !3349, !"_RNvXs7_NtNtCsbqH9stoieM8_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs8Chj7Szqq0n_4core2io5write5Write14write_vectoredCsadSKrpJ73hd_12iox2_service: argument 1"}
!3352 = distinct !{!3352, !28, !29}
!3353 = distinct !{!3353, !29, !28}
!3354 = distinct !{!3354, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCsadSKrpJ73hd_12iox2_service"}
!3355 = distinct !{!3355, !3354, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCsadSKrpJ73hd_12iox2_service: argument 0"}
!3356 = !{!3350}
!3357 = !{!3351}
!3358 = !{!3355, !3350}
!3359 = distinct !{!3359, !"_RNvXs7_NtNtCsbqH9stoieM8_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs8Chj7Szqq0n_4core2io5write5Write18write_all_vectoredCsadSKrpJ73hd_12iox2_service"}
!3360 = distinct !{!3360, !3359, !"_RNvXs7_NtNtCsbqH9stoieM8_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs8Chj7Szqq0n_4core2io5write5Write18write_all_vectoredCsadSKrpJ73hd_12iox2_service: argument 0"}
!3361 = distinct !{!3361, !3359, !"_RNvXs7_NtNtCsbqH9stoieM8_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs8Chj7Szqq0n_4core2io5write5Write18write_all_vectoredCsadSKrpJ73hd_12iox2_service: argument 1"}
!3362 = distinct !{!3362, !"_RNvXs7_NtNtCsbqH9stoieM8_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs8Chj7Szqq0n_4core2io5write5Write14write_vectoredCsadSKrpJ73hd_12iox2_service"}
!3363 = distinct !{!3363, !3362, !"_RNvXs7_NtNtCsbqH9stoieM8_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs8Chj7Szqq0n_4core2io5write5Write14write_vectoredCsadSKrpJ73hd_12iox2_service: argument 0"}
!3364 = distinct !{!3364, !3362, !"_RNvXs7_NtNtCsbqH9stoieM8_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs8Chj7Szqq0n_4core2io5write5Write14write_vectoredCsadSKrpJ73hd_12iox2_service: argument 1"}
!3365 = distinct !{!3365, !28, !29}
!3366 = distinct !{!3366, !29, !28}
!3367 = distinct !{!3367, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCsadSKrpJ73hd_12iox2_service"}
!3368 = distinct !{!3368, !3367, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCsadSKrpJ73hd_12iox2_service: argument 0"}
!3369 = !{!3360}
!3370 = !{!3361}
!3371 = !{!3363}
!3372 = !{!3364}
!3373 = !{!3364, !3361}
!3374 = !{!3363, !3360}
!3375 = !{!3368, !3363, !3360}
!3376 = distinct !{!3376, !"_RNvXs7_NtNtCsbqH9stoieM8_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs8Chj7Szqq0n_4core2io5write5Write5writeCsadSKrpJ73hd_12iox2_service"}
!3377 = distinct !{!3377, !3376, !"_RNvXs7_NtNtCsbqH9stoieM8_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs8Chj7Szqq0n_4core2io5write5Write5writeCsadSKrpJ73hd_12iox2_service: argument 1"}
!3378 = distinct !{!3378, !3376, !"_RNvXs7_NtNtCsbqH9stoieM8_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs8Chj7Szqq0n_4core2io5write5Write5writeCsadSKrpJ73hd_12iox2_service: argument 0"}
!3379 = distinct !{!3379, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCsadSKrpJ73hd_12iox2_service"}
!3380 = distinct !{!3380, !3379, !"_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE15append_elementsCsadSKrpJ73hd_12iox2_service: argument 0"}
!3381 = !{!3377}
!3382 = !{!3380, !3378}
!3383 = distinct !{!3383, !"_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0CsadSKrpJ73hd_12iox2_service"}
!3384 = distinct !{!3384, !3383, !"_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0CsadSKrpJ73hd_12iox2_service: argument 1"}
!3385 = distinct !{!3385, !3383, !"_RNCINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB7_11TinyClosureNtNtNtNtBb_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1i_INtB1i_7BuilderINtNtB9_19posix_shared_memory7StorageB1g_EE18create_or_open_shm0Es_0CsadSKrpJ73hd_12iox2_service: argument 0"}
!3386 = distinct !{!3386, !"_RNCNvMs5_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB7_7BuilderINtNtNtBd_15dynamic_storage19posix_shared_memory7StorageNtB7_20SharedManagementDataEE18create_or_open_shm0CsadSKrpJ73hd_12iox2_service"}
!3387 = distinct !{!3387, !3386, !"_RNCNvMs5_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB7_7BuilderINtNtNtBd_15dynamic_storage19posix_shared_memory7StorageNtB7_20SharedManagementDataEE18create_or_open_shm0CsadSKrpJ73hd_12iox2_service: argument 1"}
!3388 = distinct !{!3388, !3386, !"_RNCNvMs5_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB7_7BuilderINtNtNtBd_15dynamic_storage19posix_shared_memory7StorageNtB7_20SharedManagementDataEE18create_or_open_shm0CsadSKrpJ73hd_12iox2_service: argument 0"}
!3389 = !{!3388, !3387, !3385, !3384}
end_hunk_1
