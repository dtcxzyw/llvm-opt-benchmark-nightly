Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_ffi_c.iceoryx2_ffi_c.616a3ccae33e0485-cgu.06?download=true
inline.NumInlined: 1298
inline.NumDeleted: 677
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@iox2_service_builder_request_response:bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #19, !noalias !2417
  unreachable

_RNvMsm_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api15service_builderNtB5_30iox2_service_builder_storage_t6as_mut.exit436: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.036.0.copyload = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.632.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.632.0..sroa_idx33, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.437.0..sroa_idx, i64 264, i1 false)
  store ptr %.sroa.036.0.copyload, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17424)
  call void @_RINvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB3_12StaticConfig20new_request_responseNtNtNtCs7gufeB8TUC6_12iceoryx2_cal4hash4sha14Sha1ECs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull sret([5032 x i8]) align 8 captures(none) dereferenceable(5032) %.sroa.17424, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %.sroa.632.0..sroa_idx33, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.g, align 8
  store i64 0, ptr %i.n, align 8
  %.sroa.6413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.6413.0..sroa_idx, align 8
  %.sroa.8415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %.sroa.8415.0..sroa_idx, align 8
  %.sroa.10417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 2, ptr %.sroa.10417.0..sroa_idx, align 8
  %.sroa.12419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i32 2, ptr %.sroa.12419.0..sroa_idx, align 8
  %.sroa.14421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 2, ptr %.sroa.14421.0..sroa_idx, align 8
  %.sroa.16423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store ptr %.sroa.036.0.copyload, ptr %.sroa.16423.0..sroa_idx, align 8
  %.sroa.17424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5032) %.sroa.17424.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(5032) %.sroa.17424, i64 5032, i1 false)
  %.sroa.18425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.18425.0..sroa_idx, i8 0, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17424)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMsm_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api15service_builderNtB5_30iox2_service_builder_storage_t6as_mut.exit436, %_RNvMsm_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api15service_builderNtB5_30iox2_service_builder_storage_t6as_mut.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.p = call noundef i32 @iox2_service_builder_request_response_set_request_header_type_details(ptr noundef nonnull %i.b, i32 noundef 0, ptr noundef nonnull @491, i64 noundef 2, i64 noundef 0, i64 noundef 1) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.q = call noundef i32 @iox2_service_builder_request_response_set_response_header_type_details(ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull @491, i64 noundef 2, i64 noundef 0, i64 noundef 1) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define void @iox2_unique_node_id_clone_from_handle(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %.sroa.411.i = alloca [16 x i8], align 4        ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !noundef !8   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2420)
  %i.b = load i32, ptr %i.a, align 4, !range !26, !alias.scope !2420, !noundef !8
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #19, !noalias !2420
  unreachable

_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit: ; preds = %bb.a
  store ptr null, ptr %2, align 8
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.c, label %iox2_unique_node_id_clone_from_ptr.exit

bb.c:                                             ; preds = %_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.e = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #18
  br label %iox2_unique_node_id_clone_from_ptr.exit

iox2_unique_node_id_clone_from_ptr.exit:          ; preds = %_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit, %bb.c
  %.sroa.04.0.i = phi ptr [ @_RNvMs3_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_21iox2_unique_node_id_t7dealloc, %bb.c ], [ @_RNvNvNtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_id34iox2_unique_node_id_clone_from_ptr5no_op, %_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit ]
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.c ], [ %0, %_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24
  store ptr %.sroa.04.0.i, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.411.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.411.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.f, i64 16, i1 false)
  store i32 1, ptr %.sroa.0.0.i, align 8
  %.sroa.411.0..sroa.0.0.2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.411.0..sroa.0.0.2.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.411.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.411.i)
  store ptr %.sroa.0.0.i, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @iox2_unique_node_id_clone_from_ptr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 {
bb.a:
  %.sroa.411 = alloca [16 x i8], align 4          ; 4 uses
  store ptr null, ptr %2, align 8
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.04.0 = phi ptr [ @_RNvMs3_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_21iox2_unique_node_id_t7dealloc, %bb.b ], [ @_RNvNvNtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_id34iox2_unique_node_id_clone_from_ptr5no_op, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  store ptr %.sroa.04.0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.411)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.411, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  store i32 1, ptr %.sroa.0.0, align 8
  %.sroa.411.0..sroa.0.0.2.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.411.0..sroa.0.0.2.sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.411, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.411)
  store ptr %.sroa.0.0, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @iox2_unique_node_id_creation_time(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  %i.d = load i32, ptr %i.c, align 4, !range !26, !alias.scope !2425, !noundef !8
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #19, !noalias !2425
  unreachable

_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  call void @_RNvMs0_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB5_12UniqueNodeId13creation_time(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f) #18
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !8
  store i64 %i.h, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  %i.i = load i32, ptr %i.c, align 4, !range !26, !alias.scope !2426, !noundef !8
  %i.j = trunc nuw i32 %i.i to i1
  br i1 %i.j, label %_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit1, label %bb.c, !prof !20

bb.c:                                             ; preds = %_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #19, !noalias !2426
  unreachable

_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit1: ; preds = %_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit
  call void @_RNvMs0_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB5_12UniqueNodeId13creation_time(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f) #18
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i32, ptr %i.k, align 8, !noundef !8
  store i32 %i.l, ptr %2, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @iox2_unique_node_id_drop(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  tail call void %i.b(ptr noundef %0) #18
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @iox2_unique_node_id_pid(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !8   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  %i.b = load i32, ptr %i.a, align 4, !range !26, !alias.scope !2429, !noundef !8
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #19, !noalias !2429
  unreachable

_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !8
  ret i32 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i64 @iox2_unique_node_id_value_high(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !8   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2432)
  %i.b = load i32, ptr %i.a, align 4, !range !26, !alias.scope !2432, !noundef !8
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #19, !noalias !2432
  unreachable

_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit: ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 12
  %1 = load i64, ptr %i.d, align 4
  ret i64 %1
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i64 @iox2_unique_node_id_value_low(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !8   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2435)
  %i.b = load i32, ptr %i.a, align 4, !range !26, !alias.scope !2435, !noundef !8
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #19, !noalias !2435
  unreachable

_RNvMs2_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api14unique_node_idNtB5_29iox2_unique_node_id_storage_t6as_ref.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.0.0.copyload = load i128, ptr %i.d, align 4
  %i.e = trunc i128 %.sroa.0.0.copyload to i64
  ret i64 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define void @iox2_writer_drop(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !26, !noundef !8
  %i.b = trunc nuw i32 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  %i.d = load i64, ptr %i.c, align 8, !range !10, !alias.scope !2458, !noundef !8
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %_RNvMs9_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_21iox2_writer_storage_t6as_mut.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #19, !noalias !2458
  unreachable

_RNvMs9_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_21iox2_writer_storage_t6as_mut.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2462, !nonnull !8, !noundef !8
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !2462
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6writer17WriterSharedStateNtNtNtB25_7service14ipc_threadsafe7ServiceNtNtB31_7builder15CustomKeyMarkerEEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.d:                                             ; preds = %_RNvMs9_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_21iox2_writer_storage_t6as_mut.exit
  fence acquire
  tail call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6writer17WriterSharedStateNtNtNtB1I_7service14ipc_threadsafe7ServiceNtNtB2E_7builder15CustomKeyMarkerEEE9drop_slowCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.g) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6writer17WriterSharedStateNtNtNtB25_7service14ipc_threadsafe7ServiceNtNtB31_7builder15CustomKeyMarkerEEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6writer17WriterSharedStateNtNtNtB25_7service14ipc_threadsafe7ServiceNtNtB31_7builder15CustomKeyMarkerEEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %_RNvMs9_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_21iox2_writer_storage_t6as_mut.exit, %bb.d
  tail call void @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage4fileNtB5_7StorageNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.f) #18
  tail call void @_RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4FileNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.f) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.k) #18
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  %i.l = load i64, ptr %i.c, align 8, !range !10, !alias.scope !2463, !noundef !8
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %_RNvMs9_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_21iox2_writer_storage_t6as_mut.exit1, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #19, !noalias !2463
  unreachable

_RNvMs9_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_21iox2_writer_storage_t6as_mut.exit1: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !2467, !nonnull !8, !noundef !8
  %i.p = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !2467
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6writer17WriterSharedStateNtNtNtB25_7service16local_threadsafe7ServiceNtNtB31_7builder15CustomKeyMarkerEEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.g:                                             ; preds = %_RNvMs9_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_21iox2_writer_storage_t6as_mut.exit1
  fence acquire
  tail call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6writer17WriterSharedStateNtNtNtB1I_7service16local_threadsafe7ServiceNtNtB2E_7builder15CustomKeyMarkerEEE9drop_slowCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6writer17WriterSharedStateNtNtNtB25_7service16local_threadsafe7ServiceNtNtB31_7builder15CustomKeyMarkerEEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6writer17WriterSharedStateNtNtNtB25_7service16local_threadsafe7ServiceNtNtB31_7builder15CustomKeyMarkerEEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %_RNvMs9_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_21iox2_writer_storage_t6as_mut.exit1, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_localNtB5_7StorageNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1072) %i.r) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2469)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !2470, !nonnull !8, !noundef !8
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !2471
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.h:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6writer17WriterSharedStateNtNtNtB25_7service16local_threadsafe7ServiceNtNtB31_7builder15CustomKeyMarkerEEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
  fence acquire
  tail call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1072) %i.r) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %bb.h, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6writer17WriterSharedStateNtNtNtB25_7service16local_threadsafe7ServiceNtNtB31_7builder15CustomKeyMarkerEEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6writer17WriterSharedStateNtNtNtB25_7service14ipc_threadsafe7ServiceNtNtB31_7builder15CustomKeyMarkerEEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !8, !noundef !8
  tail call void %i.w(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @iox2_writer_entry(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [296 x i8], align 8               ; 7 uses
  %i.d = alloca [296 x i8], align 8               ; 5 uses
  store ptr null, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api32service_builder_request_response19create_type_details(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.c, i32 noundef 0, ptr noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) #18
  %i.e = load i32, ptr %i.c, align 8, !range !2476, !noundef !8
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.d, ptr noundef nonnull align 8 dereferenceable(296) %i.c, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = load ptr, ptr %0, align 8, !noundef !8   ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !range !26, !noundef !8
  %i.k = trunc nuw i32 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  %i.m = load i64, ptr %i.l, align 8, !range !10, !alias.scope !2477, !noundef !8
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %_RNvMs9_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_21iox2_writer_storage_t6as_ref.exit, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #19, !noalias !2477
  unreachable

_RNvMs9_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_21iox2_writer_storage_t6as_ref.exit: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @_RNvMsd_NtNtCsg6ZEkMtNi4J_8iceoryx24port6writerINtB5_6WriterNtNtNtB9_7service14ipc_threadsafe7ServiceNtNtBZ_7builder15CustomKeyMarkerE16___internal_entryCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.o, ptr noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.d) #18
  %i.p = load ptr, ptr %i.b, align 8, !noundef !8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  %i.r = load i64, ptr %i.l, align 8, !range !10, !alias.scope !2478, !noundef !8
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %_RNvMs9_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_21iox2_writer_storage_t6as_ref.exit31, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #19, !noalias !2478
  unreachable

_RNvMs9_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_21iox2_writer_storage_t6as_ref.exit31: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @_RNvMsd_NtNtCsg6ZEkMtNi4J_8iceoryx24port6writerINtB5_6WriterNtNtNtB9_7service16local_threadsafe7ServiceNtNtBZ_7builder15CustomKeyMarkerE16___internal_entryCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.t, ptr noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.d) #18
  %i.u = load ptr, ptr %i.a, align 8, !noundef !8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvMs9_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_21iox2_writer_storage_t6as_ref.exit31
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i8, ptr %i.w, align 8, !range !25, !noundef !8
  %i.y = trunc nuw i8 %i.x to i1
  %. = select i1 %i.y, i32 2, i32 1
  br label %bb.m

bb.i:                                             ; preds = %_RNvMs9_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_21iox2_writer_storage_t6as_ref.exit31
  %i.z = icmp eq ptr %1, null
  br i1 %i.z, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.l
  %.sink35.ph = phi ptr [ %i.b, %bb.l ], [ %i.a, %bb.i ]
  %i.aa = call noundef ptr @_RNvMs5_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api16entry_handle_mutNtB5_23iox2_entry_handle_mut_t5alloc() #18
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i, %bb.l
  %.sroa.0.1.sink36 = phi ptr [ %1, %bb.l ], [ %1, %bb.i ], [ %i.aa, %.sink.split ] ; 5 uses
  %.sink35 = phi ptr [ %i.b, %bb.l ], [ %i.a, %bb.i ], [ %.sink35.ph, %.sink.split ]
  %.sroa.012.0.sink = phi ptr [ @_RNvNCNvNtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writer17iox2_writer_entry05no_op, %bb.l ], [ @_RNvNCNvNtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writer17iox2_writer_entry05no_op, %bb.i ], [ @_RNvMs5_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api16entry_handle_mutNtB5_23iox2_entry_handle_mut_t7dealloc, %.sink.split ]
  %i.ab = load i32, ptr %i.i, align 8, !range !26, !noundef !8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.1.sink36, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sink35, i64 32, i1 false)
  store i32 %i.ab, ptr %.sroa.0.1.sink36, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.1.sink36, i64 8
  store i64 1, ptr %i.ac, align 8
end_hunk_0
