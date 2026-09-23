Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_ffi_c.iceoryx2_ffi_c.616a3ccae33e0485-cgu.05?download=true
inline.NumInlined: 964
inline.NumDeleted: 349
begin_hunk_0_@_RNvMs_NtCsbqH9stoieM8_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local12StorageEntryEE13new_uninit_inCs8mxkWwUnjF1_14iceoryx2_ffi_c:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 3096) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbqH9stoieM8_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEE13new_uninit_inCs8mxkWwUnjF1_14iceoryx2_ffi_c() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 144, i64 noundef range(i64 1, -9223372036854775807) 8) #22 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsbqH9stoieM8_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodelNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexEE13new_uninit_inCs8mxkWwUnjF1_14iceoryx2_ffi_c() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 144, i64 noundef range(i64 1, -9223372036854775807) 8) #22 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noalias noundef ptr @_RNvMsa_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api27port_factory_reader_builderNtB5_34iox2_port_factory_reader_builder_t5alloc() unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #22
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMsa_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api27port_factory_reader_builderNtB5_34iox2_port_factory_reader_builder_t7dealloc(ptr noundef nonnull captures(address) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 32, i64 noundef 8) #22
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i64 @_RNvMsa_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1J_18CustomHeaderMarkerE21initial_max_slice_lenCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) #22
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #22
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 5128
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i64 @_RNvMsa_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service16local_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1L_18CustomHeaderMarkerE21initial_max_slice_lenCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) #22
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #22
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 5064
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMsc_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1J_18CustomHeaderMarkerE19loan_custom_payloadCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.02.sroa.0.i = alloca [16 x i8], align 8  ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.k = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j) #22
  store ptr %i.k, ptr %i.i, align 8
  %i.l = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i) #22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3536
  %i.n = load i64, ptr %i.m, align 16, !noundef !6
  %i.o = mul i64 %i.n, %2
  call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  call void @llvm.experimental.noalias.scope.decl(metadata !1578)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8, !noalias !1579
  store i64 %2, ptr %i.g, align 8, !noalias !1579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1579
  %i.p = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j) #22, !noalias !1577
  store ptr %i.p, ptr %i.f, align 8, !noalias !1579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1579
  %i.q = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #22, !noalias !1577
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 5128
  %i.s = load i64, ptr %i.r, align 8, !noalias !1577, !noundef !6 ; 2 uses
  store i64 %i.s, ptr %i.e, align 8, !noalias !1579
  %i.t = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #22, !noalias !1577
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5136
  %i.v = load i8, ptr %i.u, align 16, !range !10, !noalias !1577, !noundef !6
  %i.w = icmp eq i8 %i.v, 2
  %i.x = icmp ult i64 %i.s, %2
  %or.cond.i = and i1 %i.x, %i.w
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #22, !noalias !1577 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2952
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1580, !noalias !1577, !noundef !6 ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #26, !noalias !1581
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i: ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 2944
  %i.ad = load i64, ptr %i.ac, align 16, !alias.scope !1580, !noalias !1577, !noundef !6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 3240
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1580, !noalias !1577, !noundef !6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 3248
  %i.ah = load i64, ptr %i.ag, align 16, !alias.scope !1580, !noalias !1577, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 3536
  %i.aj = load i64, ptr %i.ai, align 16, !alias.scope !1580, !noalias !1577, !noundef !6
  %i.ak = mul i64 %i.aj, %2
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 3544
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1580, !noalias !1577, !noundef !6
  %i.an = add i64 %i.ad, -2
  %i.ao = add i64 %i.an, %i.af
  %i.ap = add i64 %i.ao, %i.ah
  %i.aq = add i64 %i.ap, %i.ak
  %i.ar = add i64 %i.aq, %i.am                    ; 2 uses
  %i.as = urem i64 %i.ar, %i.aa                   ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  %i.au = sub i64 %i.aa, %i.as
  %i.av = select i1 %i.at, i64 0, i64 %i.au
  %.sroa.0.0.i.i = add i64 %i.av, %i.ar
  %i.aw = icmp ult i64 %i.aa, -9223372036854775807
  call void @llvm.assume(i1 %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1579
  %i.ax = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #22, !noalias !1577
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE8allocateCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 16 %i.ax, i64 noundef %i.aa, i64 noundef %.sroa.0.0.i.i) #22, !noalias !1577
  %i.ay = load i8, ptr %i.b, align 8, !range !23, !noalias !1579, !noundef !6
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1579
  store ptr %i.h, ptr %i.d, align 8, !noalias !1579
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBD_7service14ipc_threadsafe7ServiceSNtNtB1t_7builder19CustomPayloadMarkerNtB27_18CustomHeaderMarkerENtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !1579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1579
  store ptr %i.g, ptr %i.c, align 8, !noalias !1579
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !1579
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.ba, align 8, !noalias !1579
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !1579
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.d, ptr noundef nonnull @106, ptr noundef nonnull %i.c) #22, !noalias !1577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1579
  br label %bb.h

bb.e:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !range !34, !noalias !1579, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1579
  br label %bb.h

bb.f:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.018.0.copyload.i = load i64, ptr %i.bd, align 8, !noalias !1579
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %3 = load <2 x ptr>, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !1579
  %.sroa.419.0.copyload.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !1579 ; 3 uses
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.621.0.copyload.i = load ptr, ptr %.sroa.621.0..sroa_idx.i, align 8, !noalias !1579
  %.sroa.722.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.722.0.copyload.i = load i64, ptr %.sroa.722.0..sroa_idx.i, align 8, !noalias !1579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1579
  %i.be = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #22, !noalias !1577
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 3560
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !1577, !nonnull !6, !noundef !6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 7280
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1577, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.sroa.0.i)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !noalias !1577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1582
  %i.bk = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j) #22, !noalias !1583
  store ptr %i.bk, ptr %i.a, align 8, !noalias !1582
  %i.bl = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #22, !noalias !1583
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bn = load i128, ptr %i.bm, align 16, !noalias !1583, !noundef !6
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22, !noalias !1583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.419.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.0.i, i64 16, i1 false), !noalias !1577
  %.sroa.02.sroa.4.0..sroa.419.0.copyload.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload.i, i64 16
  store i128 %i.bn, ptr %.sroa.02.sroa.4.0..sroa.419.0.copyload.sroa_idx.i, align 8, !noalias !1577
  %.sroa.53.0..sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload.i, i64 32
  store i64 %2, ptr %.sroa.53.0..sroa.9.16..sroa_idx.i, align 8, !noalias !1577
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.sroa.0.i)
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !1578, !noalias !1577, !nonnull !6, !noundef !6 ; 2 uses
  %i.bo = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !1577
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.g, label %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit.i: ; preds = %bb.f
  store ptr %.val.i, ptr %0, align 8, !alias.scope !1577, !noalias !1578
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %3, ptr %.sroa.430.0..sroa_idx.i, align 8, !alias.scope !1577, !noalias !1578
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.621.0.copyload.i, ptr %.sroa.632.0..sroa_idx.i, align 8, !alias.scope !1577, !noalias !1578
  %.sroa.733.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.o, ptr %.sroa.733.0..sroa_idx.i, align 8, !alias.scope !1577, !noalias !1578
  %.sroa.834.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.018.0.copyload.i, ptr %.sroa.834.0..sroa_idx.i, align 8, !alias.scope !1577, !noalias !1578
  %.sroa.935.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.722.0.copyload.i, ptr %.sroa.935.0..sroa_idx.i, align 8, !alias.scope !1577, !noalias !1578
  br label %_RNvMsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1J_18CustomHeaderMarkerE22loan_slice_uninit_implCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i8 [ %i.bc, %bb.e ], [ 2, %bb.d ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink.i, ptr %i.bq, align 8, !alias.scope !1577, !noalias !1578
  store ptr null, ptr %0, align 8, !alias.scope !1577, !noalias !1578
  br label %_RNvMsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1J_18CustomHeaderMarkerE22loan_slice_uninit_implCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RNvMsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1J_18CustomHeaderMarkerE22loan_slice_uninit_implCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1579
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #22, !noalias !1577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMsc_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service16local_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1L_18CustomHeaderMarkerE19loan_custom_payloadCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.02.sroa.0.i = alloca [16 x i8], align 8  ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.k = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j) #22
  store ptr %i.k, ptr %i.i, align 8
  %i.l = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i) #22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3760
  %i.n = load i64, ptr %i.m, align 16, !noundef !6
  %i.o = mul i64 %i.n, %2
  call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8, !noalias !1594
  store i64 %2, ptr %i.g, align 8, !noalias !1594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1594
  %i.p = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j) #22, !noalias !1592
  store ptr %i.p, ptr %i.f, align 8, !noalias !1594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1594
  %i.q = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #22, !noalias !1592
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 5064
  %i.s = load i64, ptr %i.r, align 8, !noalias !1592, !noundef !6 ; 2 uses
  store i64 %i.s, ptr %i.e, align 8, !noalias !1594
  %i.t = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #22, !noalias !1592
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5072
  %i.v = load i8, ptr %i.u, align 16, !range !10, !noalias !1592, !noundef !6
  %i.w = icmp eq i8 %i.v, 2
  %i.x = icmp ult i64 %i.s, %2
  %or.cond.i = and i1 %i.x, %i.w
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #22, !noalias !1592 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3176
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1595, !noalias !1592, !noundef !6 ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #26, !noalias !1596
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i: ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 3168
  %i.ad = load i64, ptr %i.ac, align 16, !alias.scope !1595, !noalias !1592, !noundef !6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 3464
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1595, !noalias !1592, !noundef !6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 3472
  %i.ah = load i64, ptr %i.ag, align 16, !alias.scope !1595, !noalias !1592, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 3760
  %i.aj = load i64, ptr %i.ai, align 16, !alias.scope !1595, !noalias !1592, !noundef !6
  %i.ak = mul i64 %i.aj, %2
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 3768
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1595, !noalias !1592, !noundef !6
  %i.an = add i64 %i.ad, -2
  %i.ao = add i64 %i.an, %i.af
  %i.ap = add i64 %i.ao, %i.ah
  %i.aq = add i64 %i.ap, %i.ak
  %i.ar = add i64 %i.aq, %i.am                    ; 2 uses
  %i.as = urem i64 %i.ar, %i.aa                   ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  %i.au = sub i64 %i.aa, %i.as
  %i.av = select i1 %i.at, i64 0, i64 %i.au
  %.sroa.0.0.i.i = add i64 %i.av, %i.ar
  %i.aw = icmp ult i64 %i.aa, -9223372036854775807
  call void @llvm.assume(i1 %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1594
  %i.ax = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #22, !noalias !1592
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE8allocateCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 16 %i.ax, i64 noundef %i.aa, i64 noundef %.sroa.0.0.i.i) #22, !noalias !1592
  %i.ay = load i8, ptr %i.b, align 8, !range !23, !noalias !1594, !noundef !6
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1594
  store ptr %i.h, ptr %i.d, align 8, !noalias !1594
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBD_7service16local_threadsafe7ServiceSNtNtB1t_7builder19CustomPayloadMarkerNtB29_18CustomHeaderMarkerENtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !1594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1594
  store ptr %i.g, ptr %i.c, align 8, !noalias !1594
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !1594
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.ba, align 8, !noalias !1594
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !1594
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.d, ptr noundef nonnull @106, ptr noundef nonnull %i.c) #22, !noalias !1592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1594
  br label %bb.h

bb.e:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !range !34, !noalias !1594, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1594
  br label %bb.h

bb.f:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.018.0.copyload.i = load i64, ptr %i.bd, align 8, !noalias !1594
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %3 = load <2 x ptr>, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !1594
  %.sroa.419.0.copyload.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !1594 ; 3 uses
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.621.0.copyload.i = load ptr, ptr %.sroa.621.0..sroa_idx.i, align 8, !noalias !1594
  %.sroa.722.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.722.0.copyload.i = load i64, ptr %.sroa.722.0..sroa_idx.i, align 8, !noalias !1594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1594
  %i.be = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #22, !noalias !1592
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 3784
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !1592, !nonnull !6, !noundef !6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 6144
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1592, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.sroa.0.i)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !noalias !1592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1597
  %i.bk = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j) #22, !noalias !1598
  store ptr %i.bk, ptr %i.a, align 8, !noalias !1597
  %i.bl = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #22, !noalias !1598
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bn = load i128, ptr %i.bm, align 16, !noalias !1598, !noundef !6
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22, !noalias !1598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.419.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.0.i, i64 16, i1 false), !noalias !1592
  %.sroa.02.sroa.4.0..sroa.419.0.copyload.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload.i, i64 16
  store i128 %i.bn, ptr %.sroa.02.sroa.4.0..sroa.419.0.copyload.sroa_idx.i, align 8, !noalias !1592
  %.sroa.53.0..sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload.i, i64 32
  store i64 %2, ptr %.sroa.53.0..sroa.9.16..sroa_idx.i, align 8, !noalias !1592
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.sroa.0.i)
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !1593, !noalias !1592, !nonnull !6, !noundef !6 ; 2 uses
  %i.bo = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !1592
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.g, label %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit.i: ; preds = %bb.f
  store ptr %.val.i, ptr %0, align 8, !alias.scope !1592, !noalias !1593
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %3, ptr %.sroa.430.0..sroa_idx.i, align 8, !alias.scope !1592, !noalias !1593
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.621.0.copyload.i, ptr %.sroa.632.0..sroa_idx.i, align 8, !alias.scope !1592, !noalias !1593
  %.sroa.733.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.o, ptr %.sroa.733.0..sroa_idx.i, align 8, !alias.scope !1592, !noalias !1593
  %.sroa.834.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.018.0.copyload.i, ptr %.sroa.834.0..sroa_idx.i, align 8, !alias.scope !1592, !noalias !1593
  %.sroa.935.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.722.0.copyload.i, ptr %.sroa.935.0..sroa_idx.i, align 8, !alias.scope !1592, !noalias !1593
  br label %_RNvMsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service16local_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1L_18CustomHeaderMarkerE22loan_slice_uninit_implCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i8 [ %i.bc, %bb.e ], [ 2, %bb.d ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink.i, ptr %i.bq, align 8, !alias.scope !1592, !noalias !1593
  store ptr null, ptr %0, align 8, !alias.scope !1592, !noalias !1593
  br label %_RNvMsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service16local_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1L_18CustomHeaderMarkerE22loan_slice_uninit_implCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RNvMsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service16local_threadsafe7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1L_18CustomHeaderMarkerE22loan_slice_uninit_implCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1594
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #22, !noalias !1592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMsc_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB5_7BuilderNtB7_15CustomKeyMarkerNtNtB9_14ipc_threadsafe7ServiceE14config_detailsCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5384) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3512
  %i.e = load i32, ptr %i.d, align 8, !range !35, !noundef !6
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3520
  ret ptr %i.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard7BuilderNtBB_15CustomKeyMarkerNtNtBD_14ipc_threadsafe7ServiceENtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @107, ptr noundef nonnull inttoptr (i64 165 to ptr)) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard7BuilderNtBB_15CustomKeyMarkerNtNtBD_14ipc_threadsafe7ServiceENtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @108, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #26
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsc_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB5_7BuilderNtB7_15CustomKeyMarkerNtNtB9_14ipc_threadsafe7ServiceE20is_service_availableCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(6392) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(5384) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 33, 36) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [6392 x i8], align 8              ; 3 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [1360 x i8], align 8              ; 7 uses
  %i.l = alloca [5032 x i8], align 8              ; 8 uses
  %i.m = alloca [6392 x i8], align 8              ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 3 uses
  %i.o = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.o, align 8
  store ptr %2, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %3, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @_RNvMs_NtNtCsg6ZEkMtNi4J_8iceoryx27service7builderINtB4_22BuilderWithServiceTypeNtNtB6_14ipc_threadsafe7ServiceE20is_service_availableCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull sret([6392 x i8]) align 8 captures(none) dereferenceable(6392) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5040) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #22
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 5032 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !range !15, !noundef !6
  switch i64 %i.s, label %bb.c [
    i64 -1, label %bb.b
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.t = load i8, ptr %i.m, align 8, !range !34, !noundef !6
  store i8 %i.t, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5032
  store i64 -1, ptr %i.u, align 8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5032) %i.l, ptr noundef nonnull align 8 dereferenceable(5032) %i.m, i64 5032, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1360) %i.k, ptr noundef nonnull align 8 dereferenceable(1360) %i.r, i64 1360, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8, !noalias !1603
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3512
  %i.w = load i32, ptr %i.v, align 8, !range !35, !alias.scope !1603, !noundef !6
  %i.x = icmp eq i32 %i.w, 3
  br i1 %i.x, label %_RNvMsc_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB5_7BuilderNtB7_15CustomKeyMarkerNtNtB9_14ipc_threadsafe7ServiceE14config_detailsCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1603
  store ptr %i.f, ptr %i.e, align 8, !noalias !1603
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard7BuilderNtBB_15CustomKeyMarkerNtNtBD_14ipc_threadsafe7ServiceENtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1603
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @107, ptr noundef nonnull inttoptr (i64 165 to ptr)) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1603
  store ptr %i.f, ptr %i.d, align 8, !noalias !1603
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard7BuilderNtBB_15CustomKeyMarkerNtNtBD_14ipc_threadsafe7ServiceENtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1603
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @108, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #26
  unreachable

_RNvMsc_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB5_7BuilderNtB7_15CustomKeyMarkerNtNtB9_14ipc_threadsafe7ServiceE14config_detailsCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.y = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig10blackboard(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.l) #22 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 3544
  %i.aa = load i32, ptr %i.z, align 8, !range !20, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !range !20, !noundef !6
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.i

bb.e:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5032
  store i64 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.l

bb.f:                                             ; preds = %_RNvMsc_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB5_7BuilderNtB7_15CustomKeyMarkerNtNtB9_14ipc_threadsafe7ServiceE14config_detailsCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 3552
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ag = call noundef zeroext i1 @_RNvXs8_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj100_ENtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eqCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.af) #22
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3824
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 304
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !6
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 3832
  %i.an = load i64, ptr %i.am, align 8, !noundef !6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 312
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !6
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %_RNvMsc_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB5_7BuilderNtB7_15CustomKeyMarkerNtNtB9_14ipc_threadsafe7ServiceE14config_detailsCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.o, ptr %i.j, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard7BuilderNtBB_15CustomKeyMarkerNtNtBD_14ipc_threadsafe7ServiceENtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.44.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ar = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig10blackboard(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.l) #22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.as, ptr %i.i, align 8
  %i.at = load ptr, ptr %i.o, align 8, !nonnull !6, !align !7, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.at, ptr %i.c, align 8, !noalias !1604
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3512
  %i.av = load i32, ptr %i.au, align 8, !range !35, !alias.scope !1604, !noundef !6
  %i.aw = icmp eq i32 %i.av, 3
  br i1 %i.aw, label %_RNvMsc_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB5_7BuilderNtB7_15CustomKeyMarkerNtNtB9_14ipc_threadsafe7ServiceE14config_detailsCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit19, label %bb.j, !prof !18

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1604
  store ptr %i.c, ptr %i.b, align 8, !noalias !1604
  %.sroa.42.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard7BuilderNtBB_15CustomKeyMarkerNtNtBD_14ipc_threadsafe7ServiceENtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.42.0..sroa_idx.i17, align 8, !noalias !1604
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @107, ptr noundef nonnull inttoptr (i64 165 to ptr)) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1604
  store ptr %i.c, ptr %i.a, align 8, !noalias !1604
  %.sroa.46.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard7BuilderNtBB_15CustomKeyMarkerNtNtBD_14ipc_threadsafe7ServiceENtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.46.0..sroa_idx.i18, align 8, !noalias !1604
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @108, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #26
  unreachable

_RNvMsc_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardINtB5_7BuilderNtB7_15CustomKeyMarkerNtNtB9_14ipc_threadsafe7ServiceE14config_detailsCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit19: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 3544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.n, ptr %i.h, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.48.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 16
end_hunk_0
