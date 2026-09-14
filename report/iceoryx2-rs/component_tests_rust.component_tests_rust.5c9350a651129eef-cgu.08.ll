Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/component_tests_rust.component_tests_rust.5c9350a651129eef-cgu.08?download=true
inline.NumInlined: 461
inline.NumDeleted: 228
begin_hunk_0_@_RINvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB6_8ReceiverNtNtNtBc_7service3ipc7ServiceE30find_connection_with_conditionNCNvB2_31find_connection_without_borrows0ECs7WMazFQt77D_20component_tests_rust:bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val5.i = load ptr, ptr %i.g, align 8, !noundef !5
  %i.t = getelementptr inbounds nuw [3648 x i8], ptr %.val5.i, i64 %i.p ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2480 ; 3 uses
  %i.v = load i64, ptr %i.u, align 16, !range !6, !noundef !5
  %.not.i = icmp eq i64 %i.v, 2
  br i1 %.not.i, label %bb.h, label %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCs7WMazFQt77D_20component_tests_rust.exit, !prof !7

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #22
  unreachable

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs7WMazFQt77D_20component_tests_rust.exit.thread.sink.split: ; preds = %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs7WMazFQt77D_20component_tests_rust.exit, %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCs7WMazFQt77D_20component_tests_rust.exit, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0138, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs7WMazFQt77D_20component_tests_rust.exit.thread

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs7WMazFQt77D_20component_tests_rust.exit.thread: ; preds = %bb.b, %bb.a, %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs7WMazFQt77D_20component_tests_rust.exit.thread.sink.split
  ret void

_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCs7WMazFQt77D_20component_tests_rust.exit: ; preds = %bb.f
  %i.y = tail call noundef i64 @_RNvXsi_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_19ZeroCopyPortDetails18number_of_channelsCs7WMazFQt77D_20component_tests_rust(ptr noundef nonnull align 8 %i.u) #21 ; 2 uses
  %.not21.i = icmp eq i64 %i.y, 0
  br i1 %.not21.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs7WMazFQt77D_20component_tests_rust.exit.thread.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs1_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE8get_implCs7WMazFQt77D_20component_tests_rust.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 3368
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 3360
  br label %bb.i

bb.i:                                             ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs7WMazFQt77D_20component_tests_rust.exit.i, %.lr.ph.i
  %.sroa.0.016.i = phi i1 [ false, %.lr.ph.i ], [ %i.ae, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs7WMazFQt77D_20component_tests_rust.exit.i ]
  %.sroa.03.015.i = phi i1 [ false, %.lr.ph.i ], [ %i.aj, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs7WMazFQt77D_20component_tests_rust.exit.i ]
  %.sroa.09.014.i = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs7WMazFQt77D_20component_tests_rust.exit.i ] ; 5 uses
  %i.ab = tail call noundef zeroext i1 @_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver8has_dataCs7WMazFQt77D_20component_tests_rust(ptr noundef nonnull align 8 %i.u, i64 noundef %.sroa.09.014.i) #21
  %i.ac = load i64, ptr %i.z, align 8, !noundef !5 ; 2 uses
  %i.ad = icmp ult i64 %.sroa.09.014.i, %i.ac
  br i1 %i.ad, label %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs7WMazFQt77D_20component_tests_rust.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.014.i, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #22
  unreachable

_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs7WMazFQt77D_20component_tests_rust.exit.i: ; preds = %bb.i
  %i.ae = or i1 %.sroa.0.016.i, %i.ab             ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 16, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.09.014.i
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %.sroa.03.015.i, %i.ai            ; 3 uses
  %i.ak = and i1 %i.ae, %i.aj
  %i.al = add nuw i64 %.sroa.09.014.i, 1          ; 2 uses
  %i.am = icmp uge i64 %i.al, %i.y
  %or.cond.not.i = select i1 %i.ak, i1 true, i1 %i.am
  br i1 %or.cond.not.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs7WMazFQt77D_20component_tests_rust.exit, label %bb.i

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE38receiver_channels_have_data_or_borrowsCs7WMazFQt77D_20component_tests_rust.exit: ; preds = %_RNvXsj_NtNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection6common7detailsINtB5_8ReceiverINtNtNtBb_15dynamic_storage19posix_shared_memory7StorageNtB5_20SharedManagementDataEENtB9_16ZeroCopyReceiver12borrow_countCs7WMazFQt77D_20component_tests_rust.exit.i
  br i1 %i.aj, label %bb.b, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtNtB8_6traits8iterator8Iterator4nextCs7WMazFQt77D_20component_tests_rust.exit.thread.sink.split
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB5_11TinyClosureINtNtNtNtB9_13shared_memory6common7details16AllocatorDetailsNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorEKj18_E3newNCNvXs2_NtB7_19posix_shared_memoryINtB3o_7BuilderB1e_EINtNtB9_13named_concept19NamedConceptBuilderINtB3o_7StorageB1e_EE3new0ECs7WMazFQt77D_20component_tests_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((32, 40)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @0, ptr %i.a, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB5_11TinyClosureINtNtNtNtB9_13shared_memory6common7details16AllocatorDetailsNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorEKj18_E3newNCNvXs3_B1h_INtB1h_7BuilderB2c_INtNtB7_19posix_shared_memory7StorageB1e_EEINtB1l_19SharedMemoryBuilderB2c_INtB1h_6MemoryB2c_B3L_EE6create0ECs7WMazFQt77D_20component_tests_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 16), (32, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1120) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @1, ptr %i.a, align 16
  store ptr %1, ptr %0, align 16
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.411.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB5_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx24node25global_management_segment5StateKj18_E3newNCNvXs2_NtB7_19posix_shared_memoryINtB2B_7BuilderB1e_EINtNtB9_13named_concept19NamedConceptBuilderINtB2B_7StorageB1e_EE3new0ECs7WMazFQt77D_20component_tests_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((32, 40)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @2, ptr %i.a, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB5_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_E3newNCNvXs2_NtB7_19posix_shared_memoryINtB2C_7BuilderB1e_EINtNtB9_13named_concept19NamedConceptBuilderINtB2C_7StorageB1e_EE3new0ECs7WMazFQt77D_20component_tests_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((32, 40)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @3, ptr %i.a, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB5_11TinyClosureNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigKj18_E3newNvMs_NtB1i_7builderINtB2z_22BuilderWithServiceTypeNtNtB1i_3ipc7ServiceE16config_init_callECs7WMazFQt77D_20component_tests_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((32, 40)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @4, ptr %i.a, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB5_11TinyClosureNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvMs5_B1g_INtB1g_7BuilderINtNtB7_19posix_shared_memory7StorageB1e_EE18create_or_open_shm0ECs7WMazFQt77D_20component_tests_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 8), (32, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1144) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @5, ptr %i.a, align 16
  store ptr %1, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs_NvNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage1__INtB5_11TinyClosureNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataKj18_E3newNCNvXs2_NtB7_19posix_shared_memoryINtB2E_7BuilderB1e_EINtNtB9_13named_concept19NamedConceptBuilderINtB2E_7StorageB1e_EE3new0ECs7WMazFQt77D_20component_tests_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((32, 40)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @6, ptr %i.a, align 16
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtCs7WMazFQt77D_20component_tests_rust6common13wait_for_predNCNvXs_NtB4_15test_containersNtB17_14TestContainersNtB2_13ComponentTest8run_test0EB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3, i64 noundef %4, i32 noundef range(i32 0, 1000000000) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val.i.i = load ptr, ptr %1, align 8, !nonnull !5, !align !8
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.sroa.47.0.i = phi i32 [ 0, %bb.a ], [ %.sroa.4.0.i.i, %bb.h ] ; 2 uses
  %.sroa.05.0.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.i.i, %bb.h ] ; 4 uses
  %i.a = icmp eq i64 %.sroa.05.0.i, %2
  %i.b = icmp ult i64 %.sroa.05.0.i, %2
  %i.c = icmp samesign ult i32 %.sroa.47.0.i, %3
  %spec.select.i = select i1 %i.a, i1 %i.c, i1 %i.b
  br i1 %spec.select.i, label %bb.c, label %_RINvNtCs7WMazFQt77D_20component_tests_rust6common8wait_foruNCINvB2_13wait_for_predNCNvXs_NtB4_15test_containersNtB1p_14TestContainersNtB2_13ComponentTest8run_test0E0EB4_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i8 @_RNvMsq_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_4NodeNtNtNtB7_7service3ipc7ServiceE4waitCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i64 noundef %4, i32 noundef range(i32 0, 1000000000) %5) #21
  %.not.i = icmp eq i8 %i.d, 2
  br i1 %.not.i, label %bb.d, label %_RINvNtCs7WMazFQt77D_20component_tests_rust6common8wait_foruNCINvB2_13wait_for_predNCNvXs_NtB4_15test_containersNtB1p_14TestContainersNtB2_13ComponentTest8run_test0E0EB4_.exit

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %.sroa.05.0.i, %4                ; 4 uses
  %i.f = icmp ult i64 %i.e, %.sroa.05.0.i
  br i1 %i.f, label %bb.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.g = add nuw nsw i32 %.sroa.47.0.i, %5        ; 3 uses
  %i.h = icmp samesign ugt i32 %i.g, 999999999
  br i1 %i.h, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = icmp eq i64 %i.e, -1
  br i1 %i.i, label %bb.i, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.j = add nuw i64 %i.e, 1
  %i.k = add nsw i32 %i.g, -1000000000
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.i.i = phi i32 [ %i.k, %bb.g ], [ %i.g, %bb.e ]
  %.sroa.0.0.i.i = phi i64 [ %i.j, %bb.g ], [ %i.e, %bb.e ]
  %i.l = tail call noundef nonnull align 8 ptr @_RNvXs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_responseINtB5_11PortFactoryNtNtB9_3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust15test_containers20ContainerTestRequestuNtB1Q_21ContainerTestResponseuENtB7_11PortFactory14dynamic_configB1S_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i) #21
  %i.m = tail call noundef i64 @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig17number_of_servers(ptr noundef nonnull align 8 %i.l) #21
  %.not4.i = icmp eq i64 %i.m, 0
  br i1 %.not4.i, label %bb.b, label %_RINvNtCs7WMazFQt77D_20component_tests_rust6common8wait_foruNCINvB2_13wait_for_predNCNvXs_NtB4_15test_containersNtB1p_14TestContainersNtB2_13ComponentTest8run_test0E0EB4_.exit

bb.i:                                             ; preds = %bb.f, %bb.d
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22
  unreachable

_RINvNtCs7WMazFQt77D_20component_tests_rust6common8wait_foruNCINvB2_13wait_for_predNCNvXs_NtB4_15test_containersNtB1p_14TestContainersNtB2_13ComponentTest8run_test0E0EB4_.exit: ; preds = %bb.b, %bb.c, %bb.h
  %.sroa.4.0.i = phi ptr [ @13, %bb.b ], [ undef, %bb.h ], [ @18, %bb.c ]
  %.sroa.0.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.b ], [ null, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.c ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %.sroa.4.0.i, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB4_15test_containers20ContainerTestRequestNtB1Q_21ContainerTestResponseEB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull align 8 %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4, i64 noundef %5, i32 noundef range(i32 0, 1000000000) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.0.i = alloca [64 x i8], align 16         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %7 = icmp eq i64 %3, 0
  %i.b = icmp ne i64 %3, 0
  %i.c = icmp ne i32 %4, 0
  %spec.select13.i = select i1 %7, i1 %i.c, i1 %i.b
  br i1 %spec.select13.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.8.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  br label %bb.b

._crit_edge.i:                                    ; preds = %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_15test_containers20ContainerTestRequestNtB1S_21ContainerTestResponseE0B6_.exit.thread.i, %bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 16, !alias.scope !29, !noalias !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @13, ptr %i.e, align 8, !alias.scope !29, !noalias !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.f, align 16, !alias.scope !29, !noalias !30
  br label %_RINvNtCs7WMazFQt77D_20component_tests_rust6common8wait_forINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtBZ_7service3ipc7ServiceNtNtB4_15test_containers21ContainerTestResponseuENCINvB2_14await_responseB1E_NtB29_20ContainerTestRequestB27_E0EB4_.exit

bb.b:                                             ; preds = %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_15test_containers20ContainerTestRequestNtB1S_21ContainerTestResponseE0B6_.exit.thread.i, %.lr.ph.i
  %.sroa.03.015.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.0.0.i.i, %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_15test_containers20ContainerTestRequestNtB1S_21ContainerTestResponseE0B6_.exit.thread.i ] ; 2 uses
  %.sroa.4.014.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.4.0.i.i, %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_15test_containers20ContainerTestRequestNtB1S_21ContainerTestResponseE0B6_.exit.thread.i ]
  %i.g = tail call noundef i8 @_RNvMsq_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_4NodeNtNtNtB7_7service3ipc7ServiceE4waitCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %5, i32 noundef range(i32 0, 1000000000) %6) #21, !noalias !29
  %.not.i = icmp eq i8 %i.g, 2
  br i1 %.not.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %.sroa.03.015.i, %5              ; 4 uses
  %i.i = icmp ult i64 %i.h, %.sroa.03.015.i
  br i1 %i.i, label %bb.j, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw nsw i32 %.sroa.4.014.i, %6       ; 3 uses
  %i.k = icmp samesign ugt i32 %i.j, 999999999
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq i64 %i.h, -1
  br i1 %i.l, label %bb.j, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i64 %i.h, 1
  %i.n = add nsw i32 %i.j, -1000000000
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 16, !alias.scope !29, !noalias !30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @18, ptr %i.o, align 8, !alias.scope !29, !noalias !30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.p, align 16, !alias.scope !29, !noalias !30
  br label %_RINvNtCs7WMazFQt77D_20component_tests_rust6common8wait_forINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtBZ_7service3ipc7ServiceNtNtB4_15test_containers21ContainerTestResponseuENCINvB2_14await_responseB1E_NtB29_20ContainerTestRequestB27_E0EB4_.exit

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.4.0.i.i = phi i32 [ %i.n, %bb.f ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.f ], [ %i.h, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.q = tail call noundef zeroext i1 @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx216pending_responseINtB5_15PendingResponseNtNtNtB7_7service3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust15test_containers20ContainerTestRequestuNtB1E_21ContainerTestResponseuE12has_responseB1G_(ptr noundef nonnull align 8 %2) #21, !noalias !31
  br i1 %i.q, label %bb.i, label %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_15test_containers20ContainerTestRequestNtB1S_21ContainerTestResponseE0B6_.exit.thread.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32
  call void @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx216pending_responseINtB5_15PendingResponseNtNtNtB7_7service3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust15test_containers20ContainerTestRequestuNtB1E_21ContainerTestResponseuE7receiveB1G_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.a, ptr noundef nonnull align 8 %2) #21, !noalias !31
  %i.r = load i8, ptr %i.a, align 16, !range !9, !noalias !32, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtB1o_7service3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust15test_containers21ContainerTestResponseuEENtNtB1o_4port12ReceiveErrorEEB2B_.exit3.i.i, label %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_15test_containers20ContainerTestRequestNtB1S_21ContainerTestResponseE0B6_.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtB1o_7service3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust15test_containers21ContainerTestResponseuEENtNtB1o_4port12ReceiveErrorEEB2B_.exit3.i.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32
  br label %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_15test_containers20ContainerTestRequestNtB1S_21ContainerTestResponseE0B6_.exit.thread.i

_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_15test_containers20ContainerTestRequestNtB1S_21ContainerTestResponseE0B6_.exit.i: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !33
  %.sroa.5.0.copyload2.i = load ptr, ptr %.sroa.5.0..sroa_idx1.i, align 16, !noalias !33 ; 2 uses
  %.sroa.8.0.copyload4.i = load i64, ptr %.sroa.8.0..sroa_idx3.i, align 8, !noalias !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32
  %.not10.i = icmp eq ptr %.sroa.5.0.copyload2.i, null
  br i1 %.not10.i, label %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_15test_containers20ContainerTestRequestNtB1S_21ContainerTestResponseE0B6_.exit.thread.i, label %bb.k

bb.j:                                             ; preds = %bb.e, %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22, !noalias !29
  unreachable

bb.k:                                             ; preds = %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_15test_containers20ContainerTestRequestNtB1S_21ContainerTestResponseE0B6_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, i64 64, i1 false), !noalias !30
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.5.0.copyload2.i, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !29, !noalias !30
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.8.0.copyload4.i, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !29, !noalias !30
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_RINvNtCs7WMazFQt77D_20component_tests_rust6common8wait_forINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtBZ_7service3ipc7ServiceNtNtB4_15test_containers21ContainerTestResponseuENCINvB2_14await_responseB1E_NtB29_20ContainerTestRequestB27_E0EB4_.exit

_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_15test_containers20ContainerTestRequestNtB1S_21ContainerTestResponseE0B6_.exit.thread.i: ; preds = %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_15test_containers20ContainerTestRequestNtB1S_21ContainerTestResponseE0B6_.exit.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtB1o_7service3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust15test_containers21ContainerTestResponseuEENtNtB1o_4port12ReceiveErrorEEB2B_.exit3.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.t = icmp eq i64 %.sroa.0.0.i.i, %3
  %i.u = icmp ult i64 %.sroa.0.0.i.i, %3
  %i.v = icmp samesign ult i32 %.sroa.4.0.i.i, %4
  %spec.select.i = select i1 %i.t, i1 %i.v, i1 %i.u
  br i1 %spec.select.i, label %bb.b, label %._crit_edge.i

_RINvNtCs7WMazFQt77D_20component_tests_rust6common8wait_forINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtBZ_7service3ipc7ServiceNtNtB4_15test_containers21ContainerTestResponseuENCINvB2_14await_responseB1E_NtB29_20ContainerTestRequestB27_E0EB4_.exit: ; preds = %._crit_edge.i, %bb.g, %bb.k
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB4_23test_container_mutation28ContainerMutationTestRequestNtB1Q_29ContainerMutationTestResponseEB4_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.0.i = alloca [64 x i8], align 16         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.8.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  br label %bb.c

bb.b:                                             ; preds = %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_23test_container_mutation28ContainerMutationTestRequestNtB1S_29ContainerMutationTestResponseE0B6_.exit.thread.i
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 16, !alias.scope !39, !noalias !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @13, ptr %i.c, align 8, !alias.scope !39, !noalias !40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.d, align 16, !alias.scope !39, !noalias !40
  br label %_RINvNtCs7WMazFQt77D_20component_tests_rust6common8wait_forINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtBZ_7service3ipc7ServiceNtNtB4_23test_container_mutation29ContainerMutationTestResponseuENCINvB2_14await_responseB1E_NtB29_28ContainerMutationTestRequestB27_E0EB4_.exit

bb.c:                                             ; preds = %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_23test_container_mutation28ContainerMutationTestRequestNtB1S_29ContainerMutationTestResponseE0B6_.exit.thread.i, %bb.a
  %.sroa.03.011.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.i.i, %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_23test_container_mutation28ContainerMutationTestRequestNtB1S_29ContainerMutationTestResponseE0B6_.exit.thread.i ]
  %.sroa.4.010.i = phi i32 [ 0, %bb.a ], [ %.sroa.4.0.i.i, %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_23test_container_mutation28ContainerMutationTestRequestNtB1S_29ContainerMutationTestResponseE0B6_.exit.thread.i ] ; 2 uses
  %i.e = tail call noundef i8 @_RNvMsq_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_4NodeNtNtNtB7_7service3ipc7ServiceE4waitCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef 0, i32 noundef 100000000) #21, !noalias !39
  %.not.i = icmp eq i8 %i.e, 2
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ugt i32 %.sroa.4.010.i, 899999999   ; 2 uses
  %.sroa.4.0.i.v.i = select i1 %i.f, i32 -900000000, i32 100000000
  %.sroa.4.0.i.i = add nsw i32 %.sroa.4.0.i.v.i, %.sroa.4.010.i
  %i.g = zext i1 %i.f to i64
  %.sroa.0.0.i.i = add nuw nsw i64 %.sroa.03.011.i, %i.g ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.h = tail call noundef zeroext i1 @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx216pending_responseINtB5_15PendingResponseNtNtNtB7_7service3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust23test_container_mutation28ContainerMutationTestRequestuNtB1E_29ContainerMutationTestResponseuE12has_responseB1G_(ptr noundef nonnull align 8 %2) #21, !noalias !41
  br i1 %i.h, label %bb.f, label %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_23test_container_mutation28ContainerMutationTestRequestNtB1S_29ContainerMutationTestResponseE0B6_.exit.thread.i

bb.e:                                             ; preds = %bb.c
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 16, !alias.scope !39, !noalias !40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @18, ptr %i.i, align 8, !alias.scope !39, !noalias !40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.j, align 16, !alias.scope !39, !noalias !40
  br label %_RINvNtCs7WMazFQt77D_20component_tests_rust6common8wait_forINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtBZ_7service3ipc7ServiceNtNtB4_23test_container_mutation29ContainerMutationTestResponseuENCINvB2_14await_responseB1E_NtB29_28ContainerMutationTestRequestB27_E0EB4_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42
  call void @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx216pending_responseINtB5_15PendingResponseNtNtNtB7_7service3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust23test_container_mutation28ContainerMutationTestRequestuNtB1E_29ContainerMutationTestResponseuE7receiveB1G_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.a, ptr noundef nonnull align 8 %2) #21, !noalias !41
  %i.k = load i8, ptr %i.a, align 16, !range !9, !noalias !42, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtB1o_7service3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust23test_container_mutation29ContainerMutationTestResponseuEENtNtB1o_4port12ReceiveErrorEEB2B_.exit3.i.i, label %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_23test_container_mutation28ContainerMutationTestRequestNtB1S_29ContainerMutationTestResponseE0B6_.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtB1o_7service3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust23test_container_mutation29ContainerMutationTestResponseuEENtNtB1o_4port12ReceiveErrorEEB2B_.exit3.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42
  br label %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_23test_container_mutation28ContainerMutationTestRequestNtB1S_29ContainerMutationTestResponseE0B6_.exit.thread.i

_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_23test_container_mutation28ContainerMutationTestRequestNtB1S_29ContainerMutationTestResponseE0B6_.exit.i: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !43
  %.sroa.5.0.copyload2.i = load ptr, ptr %.sroa.5.0..sroa_idx1.i, align 16, !noalias !43 ; 2 uses
  %.sroa.8.0.copyload4.i = load i64, ptr %.sroa.8.0..sroa_idx3.i, align 8, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42
  %.not10.i = icmp eq ptr %.sroa.5.0.copyload2.i, null
  br i1 %.not10.i, label %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_23test_container_mutation28ContainerMutationTestRequestNtB1S_29ContainerMutationTestResponseE0B6_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_23test_container_mutation28ContainerMutationTestRequestNtB1S_29ContainerMutationTestResponseE0B6_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, i64 64, i1 false), !noalias !40
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.5.0.copyload2.i, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !39, !noalias !40
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.8.0.copyload4.i, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !39, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_RINvNtCs7WMazFQt77D_20component_tests_rust6common8wait_forINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtBZ_7service3ipc7ServiceNtNtB4_23test_container_mutation29ContainerMutationTestResponseuENCINvB2_14await_responseB1E_NtB29_28ContainerMutationTestRequestB27_E0EB4_.exit

_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_23test_container_mutation28ContainerMutationTestRequestNtB1S_29ContainerMutationTestResponseE0B6_.exit.thread.i: ; preds = %_RNCINvNtCs7WMazFQt77D_20component_tests_rust6common14await_responseNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtNtB6_23test_container_mutation28ContainerMutationTestRequestNtB1S_29ContainerMutationTestResponseE0B6_.exit.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtB1o_7service3ipc7ServiceNtNtCs7WMazFQt77D_20component_tests_rust23test_container_mutation29ContainerMutationTestResponseuEENtNtB1o_4port12ReceiveErrorEEB2B_.exit3.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.m = icmp samesign ult i64 %.sroa.0.0.i.i, 5
  br i1 %i.m, label %bb.c, label %bb.b

_RINvNtCs7WMazFQt77D_20component_tests_rust6common8wait_forINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtBZ_7service3ipc7ServiceNtNtB4_23test_container_mutation29ContainerMutationTestResponseuENCINvB2_14await_responseB1E_NtB29_28ContainerMutationTestRequestB27_E0EB4_.exit: ; preds = %bb.b, %bb.e, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB23_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEEEECs7WMazFQt77D_20component_tests_rust(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB4_14PolymorphicVecNtNtB8_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7WMazFQt77D_20component_tests_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #21
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB16_7service3ipc7ServiceEEECs7WMazFQt77D_20component_tests_rust(ptr noalias nofree noundef nonnull align 16 dereferenceable(3648) %0) unnamed_addr #0 {
end_hunk_0
