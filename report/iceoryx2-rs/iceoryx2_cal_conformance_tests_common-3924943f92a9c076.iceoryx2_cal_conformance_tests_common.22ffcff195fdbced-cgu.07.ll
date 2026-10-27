Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cal_conformance_tests_common-3924943f92a9c076.iceoryx2_cal_conformance_tests_common.22ffcff195fdbced-cgu.07?download=true
inline.NumInlined: 379
inline.NumDeleted: 171
begin_hunk_0_@_RNvXsa_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13unix_datagramINtB5_6SenderyEINtB7_26CommunicationChannelSenderyE4sendCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common:bb.a
  store i8 2, ptr %i.x, align 8
  store i64 2, ptr %0, align 8
  br label %bb.g

.critedge:                                        ; preds = %bb.c, %bb.d, %bb.e
  %.sink.i.ph = phi i8 [ 3, %bb.c ], [ 1, %bb.d ], [ 0, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink.i.ph, ptr %i.y, align 8, !alias.scope !519
  br label %_RNvXsa_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13unix_datagramINtB5_6SenderyEINtB7_26CommunicationChannelSenderyE8try_sendCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit

_RNvXsa_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13unix_datagramINtB5_6SenderyEINtB7_26CommunicationChannelSenderyE8try_sendCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit: ; preds = %bb.b, %.critedge
  %.sink = phi i64 [ 2, %.critedge ], [ 0, %bb.b ]
  store i64 %.sink, ptr %0, align 8, !alias.scope !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXsa_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13unix_datagramINtB5_6SenderyEINtB7_26CommunicationChannelSenderyE8try_sendCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage4fileINtB5_7StorageINtNtNtNtB9_13shared_memory6common7details16AllocatorDetailsNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorEEINtB7_14DynamicStorageB1b_E13has_ownershipCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4File13has_ownership(ptr noundef nonnull align 8 %0) #10
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage4fileINtB5_7StorageINtNtNtNtB9_13shared_memory6common7details16AllocatorDetailsNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorEEINtB7_14DynamicStorageB1b_E17acquire_ownershipCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4File17acquire_ownership(ptr noundef nonnull align 8 %0) #10
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage4fileINtB5_7StorageINtNtNtNtB9_13shared_memory6common7details16AllocatorDetailsNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorEEINtB7_14DynamicStorageB1b_E17release_ownershipCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4File17release_ownership(ptr noundef nonnull align 8 %0) #10
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage4fileINtB5_7StorageNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests21dynamic_storage_trait8TestDataEINtB7_14DynamicStorageB1b_E13has_ownershipCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4File13has_ownership(ptr noundef nonnull align 8 %0) #10
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage4fileINtB5_7StorageNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests21dynamic_storage_trait8TestDataEINtB7_14DynamicStorageB1b_E17acquire_ownershipCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4File17acquire_ownership(ptr noundef nonnull align 8 %0) #10
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage4fileINtB5_7StorageNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests21dynamic_storage_trait8TestDataEINtB7_14DynamicStorageB1b_E17release_ownershipCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4File17release_ownership(ptr noundef nonnull align 8 %0) #10
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage4fileINtB5_7StorageNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataEINtB7_14DynamicStorageB1b_E13has_ownershipCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4File13has_ownership(ptr noundef nonnull align 8 %0) #10
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage4fileINtB5_7StorageNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataEINtB7_14DynamicStorageB1b_E17acquire_ownershipCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4File17acquire_ownership(ptr noundef nonnull align 8 %0) #10
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage4fileINtB5_7StorageNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataEINtB7_14DynamicStorageB1b_E17release_ownershipCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs3_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4File17release_ownership(ptr noundef nonnull align 8 %0) #10
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage4fileINtB5_13ConfigurationINtNtNtNtB9_13shared_memory6common7details16AllocatorDetailsNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage4fileINtB5_13ConfigurationNtNtCs9WeDvfThRIv_30iceoryx2_cal_conformance_tests21dynamic_storage_trait8TestDataENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @171, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage4fileINtB5_13ConfigurationNtNtNtNtB9_20zero_copy_connection6common7details20SharedManagementDataENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage4fileINtB5_13ConfigurationyENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @173, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i64 @_RNvXse_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13unix_datagramINtB5_8ReceiveryEINtB7_28CommunicationChannelReceiveryE11buffer_sizeCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs9_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socketNtB5_20UnixDatagramReceiver23get_receive_buffer_size(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %0) #10
  %i.e = load i32, ptr %i.c, align 8, !range !12, !noundef !5
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = tail call noundef i64 @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB2_10SystemInfo5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @64) #10 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13unix_datagram8ReceiveryENtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noundef nonnull @175, ptr noundef nonnull inttoptr (i64 65 to ptr)) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13unix_datagram8ReceiveryENtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.47.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @176, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = udiv i64 %i.g, %i.h
  ret i64 %i.j

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #11
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13unix_datagramINtB5_8ReceiveryEINtB7_28CommunicationChannelReceiveryE7receiveCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @177, ptr %i.j, align 8, !captures !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 22, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs9_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socketNtB5_20UnixDatagramReceiver11try_receive(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull %i.i, i64 noundef 8) #10
  %i.m = load i32, ptr %i.h, align 8, !range !12, !noundef !5
  %i.n = trunc nuw i32 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.o, align 4
  %i.p = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %i.p, label %bb.i, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 3 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.r, ptr %i.g, align 8
  %.not = icmp eq i64 %i.r, 8
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.i, align 8
  store i64 1, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.u, align 8
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.k, ptr %i.f, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13unix_datagram8ReceiveryENtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.44.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @132, ptr %i.e, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.v, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsd_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.f, ptr noundef nonnull @178, ptr noundef nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.w, align 8
  store i64 2, ptr %0, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.d, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.k, ptr %i.d, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13unix_datagram8ReceiveryENtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.d, ptr noundef nonnull @179, ptr noundef nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %i.b, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13unix_datagram8ReceiveryENtB6_5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noundef nonnull @180, ptr noundef nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi i8 [ 0, %bb.i ], [ 2, %bb.j ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.x, align 8
  store i64 2, ptr %0, align 8
  br label %bb.h
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCs8Chj7Szqq0n_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCs8Chj7Szqq0n_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #10
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_15FileAccessErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !14, !noundef !5
  switch i32 %i.b, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 19) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 30) #10
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 23) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.g, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13unix_datagramNtB5_13ConfigurationNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 6, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @183) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsl_NtCs8tG85QUCESg_24iceoryx2_bb_system_types4pathNtB5_4PathNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @185) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsl_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13unix_datagramINtB5_7CreatoryENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1072) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1065
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 12, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 20, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @137, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 11, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @187, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB5_14NanosleepErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !range !522, !noundef !5 ; 2 uses
  %i.e = icmp samesign ugt i32 %i.d, 999999999
  %i.f = zext nneg i32 %i.d to i64
  %i.g = add nsw i64 %i.f, -999999999
  %i.h = select i1 %i.e, i64 %i.g, i64 0
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 19, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @192) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 18) #10
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 23) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13unix_datagramINtB5_9ConnectoryENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs30iCg3ulVG3_37iceoryx2_cal_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1056) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @196, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 12, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @187, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs8Chj7Szqq0n_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #10
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
end_hunk_0
