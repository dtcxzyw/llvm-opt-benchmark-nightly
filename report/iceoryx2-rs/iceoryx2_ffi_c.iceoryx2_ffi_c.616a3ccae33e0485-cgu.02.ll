Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_ffi_c.iceoryx2_ffi_c.616a3ccae33e0485-cgu.02?download=true
inline.NumInlined: 984
inline.NumDeleted: 409
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCs8mxkWwUnjF1_14iceoryx2_ffi_c:bb.a
  store i64 %i.dm, ptr %.sroa.78.0..sroa_idx, align 16
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 5096
  store i64 %i.fv, ptr %.sroa.89.0..sroa_idx, align 8
  %.sroa.910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 5104
  store i64 %i.bs, ptr %.sroa.910.0..sroa_idx, align 16
  %.sroa.1011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 5112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.1011.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.1011, i64 200, i1 false)
  %.sroa.1112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 5312
  store i64 -1, ptr %.sroa.1112.0..sroa_idx, align 16
  %.sroa.1213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 5320
  store ptr %.val113, ptr %.sroa.1213.0..sroa_idx, align 8
  %.sroa.1314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 5328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %.sroa.1314.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(888) %.sroa.1314, i64 888, i1 false)
  %.sroa.1415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 6216
  store i64 1, ptr %.sroa.1415.0..sroa_idx, align 8
  %.sroa.1415.sroa.5.0..sroa.1415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 6224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.1415.sroa.5.0..sroa.1415.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1415.sroa.5, i64 32, i1 false)
  %.sroa.1516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 6256
  store i8 0, ptr %.sroa.1516.0..sroa_idx, align 16
  %.sroa.1617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 6257
  store i8 %i.fx, ptr %.sroa.1617.0..sroa_idx, align 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.w, i64 6288
  store i64 0, ptr %i.gl, align 16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.w, i64 6384
  store i64 0, ptr %i.gm, align 16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.w, i64 6392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gn, ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 56, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %i.w, i64 3632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1360) %i.go, ptr noundef nonnull align 8 dereferenceable(1360) %i.ar, i64 1360, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E3newCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(6448) %i.w) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.gp = load i8, ptr %i.x, align 8, !range !13, !noundef !4
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.s, label %bb.t

.lr.ph133:                                        ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, %.lr.ph133
  %.sroa.065.0132 = phi i64 [ %i.gr, %.lr.ph133 ], [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit ] ; 2 uses
  %i.gr = add nuw i64 %.sroa.065.0132, 1          ; 2 uses
  %i.gs = call noundef zeroext i1 @_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE9push_implCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t, i64 noundef %.sroa.065.0132) #18 ; 0 uses
  %exitcond137.not = icmp eq i64 %i.gr, %i.bs
  br i1 %exitcond137.not, label %._crit_edge134, label %.lr.ph133

bb.s:                                             ; preds = %._crit_edge134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !range !13, !noundef !4
  store i8 %i.gu, ptr %i.s, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.at, ptr %i.r, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.470.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.au, ptr %i.q, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.475.0..sroa_idx, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.s, ptr %i.gv, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs0_NtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policyNtB5_26ArcSyncPolicyCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.r, ptr noundef nonnull @85, ptr noundef nonnull %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.gw, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.z

bb.t:                                             ; preds = %._crit_edge134
  %i.gx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 16 dereferenceable(16) %i.as, i64 16, i1 false)
  store ptr %i.gy, ptr %i.p, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 0, ptr %i.ha, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.hb = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) #18
  store ptr %i.hb, ptr %i.o, align 8
  %i.hc = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #18
  %i.hd = call fastcc { i8, i8 } @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_17ClientSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE24force_update_connectionsCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noundef nonnull align 16 %i.hc) #18 ; 2 uses
  %i.he = extractvalue { i8, i8 } %i.hd, 0        ; 2 uses
  %.not104 = icmp eq i8 %i.he, 2
  br i1 %.not104, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hf = extractvalue { i8, i8 } %i.hd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 %i.he, ptr %i.n, align 1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.hf, ptr %i.hg, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.p, ptr %i.m, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsp_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.483.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.487.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @2, ptr noundef nonnull %i.m, ptr noundef nonnull @98, ptr noundef nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.val109 = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.hh = getelementptr inbounds nuw i8, ptr %.val109, i64 16
  %i.hi = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noundef nonnull align 8 %i.hh) #18
  %i.hj = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.hi) #18
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_client_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noundef nonnull align 8 %i.hj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.ai) #18
  %i.hk = load i64, ptr %i.k, align 8, !range !5, !noundef !4
  %i.hl = trunc nuw i64 %i.hk to i1
  br i1 %i.hl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.hm = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) #18
  store ptr %i.hm, ptr %i.g, align 8
  %i.hn = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g) #18
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 6288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ho, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1011)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1314)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1415.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.br) #18
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.at, ptr %i.j, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.491.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.val116 = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.hp = getelementptr inbounds nuw i8, ptr %.val116, i64 2248
  %i.hq = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.hp) #18
  %i.hr = getelementptr i8, ptr %i.hq, i64 40
  %.val124 = load i64, ptr %i.hr, align 8, !noundef !4
  store i64 %.val124, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.au, ptr %i.h, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.495.0..sroa_idx, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.hs, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.499.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.j, ptr noundef nonnull @99, ptr noundef nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ht, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.hu = load ptr, ptr %i.p, align 8, !alias.scope !1165, !nonnull !4, !noundef !4
  %i.hv = atomicrmw sub ptr %i.hu, i64 1 release, align 8, !noalias !1165
  %i.hw = icmp eq i64 %i.hv, 1
  br i1 %i.hw, label %bb.y, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.y:                                             ; preds = %bb.x
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1I_7service14ipc_threadsafe7ServiceEEE9drop_slowCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.z

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %bb.z, %bb.ab, %bb.aa, %bb.w
  ret void

bb.z:                                             ; preds = %bb.s, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1011)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1314)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1415.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.br) #18
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

2:                                                ; preds = %bb.h
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service14ipc_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.aj) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #20
  unreachable

bb.aa:                                            ; preds = %.thread, %bb.b
  %.sink = phi ptr [ %i.br, %.thread ], [ %i.bg, %bb.b ]
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %.sink) #18
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.hx) #18
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.hy) #18
  %i.hz = load i128, ptr %1, align 16, !range !22, !alias.scope !1166, !noundef !4
  %i.ia = icmp eq i128 %i.hz, 0
  br i1 %i.ia, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.ib) #18
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E21backpressure_strategyCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #18
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3849
  %i.e = load i8, ptr %i.d, align 1, !range !13, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [2 x i8], align 1                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 12 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [56 x i8], align 8                ; 8 uses
  %i.u = alloca [56 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [6384 x i8], align 16             ; 43 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 4 uses
  %.sroa.05 = alloca [32 x i8], align 16          ; 5 uses
  %.sroa.67 = alloca [48 x i8], align 16          ; 5 uses
  %.sroa.1011 = alloca [200 x i8], align 8        ; 5 uses
  %.sroa.1314 = alloca [888 x i8], align 16       ; 5 uses
  %.sroa.1415.sroa.5 = alloca [32 x i8], align 8  ; 5 uses
  %i.ab = alloca [64 x i8], align 16              ; 4 uses
  %i.ac = alloca [48 x i8], align 16              ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.0 = alloca [64 x i8], align 16           ; 5 uses
  %.sroa.6 = alloca [48 x i8], align 16           ; 5 uses
  %.sroa.7 = alloca [24 x i8], align 16           ; 5 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 5 uses
  %i.ah = alloca [2712 x i8], align 16            ; 5 uses
  %.sroa.10 = alloca [888 x i8], align 8          ; 5 uses
  %i.ai = alloca [64 x i8], align 8               ; 11 uses
  %i.aj = alloca [2712 x i8], align 8             ; 6 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [264 x i8], align 8              ; 7 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [1 x i8], align 1                ; 4 uses
  %i.aq = alloca [1072 x i8], align 8             ; 7 uses
  %i.ar = alloca [1072 x i8], align 8             ; 10 uses
  %i.as = alloca [16 x i8], align 16              ; 9 uses
  %i.at = alloca [16 x i8], align 8               ; 11 uses
  %i.au = alloca [16 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr @94, ptr %i.au, align 8, !captures !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 28, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr @95, ptr %i.at, align 8, !captures !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 13, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ay = load ptr, ptr %i.ax, align 16, !nonnull !4, !align !17, !noundef !4 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @_RNvMsS_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB5_14UniqueClientId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.as) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %.val110 = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %.val110, i64 6144
  %.sroa.033.0.copyload = load i128, ptr %i.as, align 16 ; 4 uses
  call void @_RNvMsn_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_10SharedNodeNtNtNtB7_7service16local_threadsafe7ServiceE15create_port_tagCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull sret([1072 x i8]) align 8 captures(address) dereferenceable(1072) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 28, i128 noundef %.sroa.033.0.copyload) #18
  %i.ba = load ptr, ptr %i.aq, align 8, !noundef !4
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bd = load i8, ptr %i.bc, align 8, !range !31, !noundef !4
  store i8 %i.bd, ptr %i.ap, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.at, ptr %i.ao, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %i.au, ptr %i.an, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.441.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ap, ptr %i.be, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.445.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.ao, ptr noundef nonnull @87, ptr noundef nonnull %i.an) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.bf, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1072) %i.ar, ptr noundef nonnull align 8 dereferenceable(1072) %i.aq, i64 1072, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.bh = call noundef nonnull align 8 ptr @_RNvXs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_responseINtB5_11PortFactoryNtNtB9_16local_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB25_18CustomHeaderMarkerB22_B2D_ENtB7_11PortFactory13static_configCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay) #18 ; 14 uses
  %.val119 = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %.val119, i64 4296
  %i.bj = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.bi) #18 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %.val120 = load i64, ptr %i.bm, align 8, !noundef !4
  %i.bn = getelementptr i8, ptr %i.bj, i64 32
  %.val121 = load i64, ptr %i.bn, align 8, !noundef !4
  %i.bo = shl i64 %.val120, 1
  %i.bp = mul i64 %i.bo, %.val121
  %i.bq = add i64 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.bs = call noundef i64 @_RNvMsb_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_28PreallocatedRequestsOverrideKj18_E4callCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.br, i64 noundef %i.bq) #18 ; 10 uses
  %.val112 = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.bt = getelementptr i8, ptr %.val112, i64 832
  %.val105 = load ptr, ptr %i.bt, align 8, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %.val105, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !noundef !4
  %i.bw = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.bv) #18 ; 2 uses
  %.val109 = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %.val109, i64 6144
  %.val114 = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %.val114, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RNvNtNtCsg6ZEkMtNi4J_8iceoryx27service13naming_scheme17data_segment_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.am, i128 noundef %.sroa.033.0.copyload) #18
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !range !12, !noundef !4
  %i.cc = icmp eq i8 %i.cb, 2                     ; 2 uses
  %..i = zext i1 %i.cc to i32                     ; 2 uses
  %i.cd = call noundef i8 @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service16local_threadsafe7ServiceE22max_number_of_segmentsCs8mxkWwUnjF1_14iceoryx2_ffi_c(i32 noundef %..i) #18 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.cf = load i64, ptr %i.bz, align 16, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 352
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !1204, !noundef !4 ; 6 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.d, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #20, !noalias !1204
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit: ; preds = %bb.c
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bh, i64 344
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !1204, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bh, i64 640
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !1204, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCs8mxkWwUnjF1_14iceoryx2_ffi_c:bb.a
  store i64 %i.fy, ptr %.sroa.89.0..sroa_idx, align 8
  %.sroa.910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 3968
  store i64 %i.bs, ptr %.sroa.910.0..sroa_idx, align 16
  %.sroa.1011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 3976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.1011.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.1011, i64 200, i1 false)
  %.sroa.1112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4176
  store i64 -1, ptr %.sroa.1112.0..sroa_idx, align 16
  %.sroa.1213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4184
  store ptr %.val115, ptr %.sroa.1213.0..sroa_idx, align 8
  %.sroa.1314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %.sroa.1314.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(888) %.sroa.1314, i64 888, i1 false)
  %.sroa.1415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 5080
  store i64 1, ptr %.sroa.1415.0..sroa_idx, align 8
  %.sroa.1415.sroa.5.0..sroa.1415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 5088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.1415.sroa.5.0..sroa.1415.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1415.sroa.5, i64 32, i1 false)
  %.sroa.1516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 5120
  store i8 0, ptr %.sroa.1516.0..sroa_idx, align 16
  %.sroa.1617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 5121
  store i8 %i.ga, ptr %.sroa.1617.0..sroa_idx, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %i.w, i64 6224
  store i64 0, ptr %i.go, align 16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.w, i64 6320
  store i64 0, ptr %i.gp, align 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.w, i64 6328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gq, ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 56, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.w, i64 5152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1072) %i.gr, ptr noundef nonnull align 8 dereferenceable(1072) %i.ar, i64 1072, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E3newCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(6384) %i.w) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.gs = load i8, ptr %i.x, align 8, !range !13, !noundef !4
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.t, label %bb.u

.lr.ph135:                                        ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, %.lr.ph135
  %.sroa.065.0134 = phi i64 [ %i.gu, %.lr.ph135 ], [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit ] ; 2 uses
  %i.gu = add nuw i64 %.sroa.065.0134, 1          ; 2 uses
  %i.gv = call noundef zeroext i1 @_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE9push_implCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t, i64 noundef %.sroa.065.0134) #18 ; 0 uses
  %exitcond139.not = icmp eq i64 %i.gu, %i.bs
  br i1 %exitcond139.not, label %._crit_edge136, label %.lr.ph135

bb.t:                                             ; preds = %._crit_edge136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !range !13, !noundef !4
  store i8 %i.gx, ptr %i.s, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.at, ptr %i.r, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.470.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.au, ptr %i.q, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.475.0..sroa_idx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.s, ptr %i.gy, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs0_NtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policyNtB5_26ArcSyncPolicyCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.r, ptr noundef nonnull @85, ptr noundef nonnull %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.gz, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.aa

bb.u:                                             ; preds = %._crit_edge136
  %i.ha = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 16 dereferenceable(16) %i.as, i64 16, i1 false)
  store ptr %i.hb, ptr %i.p, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 0, ptr %i.hd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.he = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) #18
  store ptr %i.he, ptr %i.o, align 8
  %i.hf = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #18
  %i.hg = call fastcc { i8, i8 } @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_17ClientSharedStateNtNtNtB9_7service16local_threadsafe7ServiceE24force_update_connectionsCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noundef nonnull align 16 %i.hf) #18 ; 2 uses
  %i.hh = extractvalue { i8, i8 } %i.hg, 0        ; 2 uses
  %.not104 = icmp eq i8 %i.hh, 2
  br i1 %.not104, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hi = extractvalue { i8, i8 } %i.hg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 %i.hh, ptr %i.n, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.hi, ptr %i.hj, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.p, ptr %i.m, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsp_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.483.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.487.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @2, ptr noundef nonnull %i.m, ptr noundef nonnull @98, ptr noundef nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.val111 = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.hk = getelementptr i8, ptr %.val111, i64 832
  %.val = load ptr, ptr %i.hk, align 8, !nonnull !4, !noundef !4
  %i.hl = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !noundef !4
  %i.hn = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.hm) #18
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_client_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noundef nonnull align 8 %i.hn, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.ai) #18
  %i.ho = load i64, ptr %i.k, align 8, !range !5, !noundef !4
  %i.hp = trunc nuw i64 %i.ho to i1
  br i1 %i.hp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.hq = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) #18
  store ptr %i.hq, ptr %i.g, align 8
  %i.hr = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g) #18
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 6224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.hs, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1011)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1314)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1415.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.br) #18
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.at, ptr %i.j, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.491.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.val118 = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.ht = getelementptr inbounds nuw i8, ptr %.val118, i64 1112
  %i.hu = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.ht) #18
  %i.hv = getelementptr i8, ptr %i.hu, i64 40
  %.val125 = load i64, ptr %i.hv, align 8, !noundef !4
  store i64 %.val125, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.au, ptr %i.h, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.495.0..sroa_idx, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.hw, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.499.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.j, ptr noundef nonnull @99, ptr noundef nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hx, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %i.hy = load ptr, ptr %i.p, align 8, !alias.scope !1227, !nonnull !4, !noundef !4
  %i.hz = atomicrmw sub ptr %i.hy, i64 1 release, align 8, !noalias !1227
  %i.ia = icmp eq i64 %i.hz, 1
  br i1 %i.ia, label %bb.z, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.z:                                             ; preds = %bb.y
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1I_7service16local_threadsafe7ServiceEEE9drop_slowCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.aa

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %bb.aa, %bb.ac, %bb.ab, %bb.x
  ret void

bb.aa:                                            ; preds = %bb.t, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1011)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1314)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1415.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.br) #18
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

2:                                                ; preds = %bb.h
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service16local_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef align 8 dereferenceable(2712) %i.aj) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #20
  unreachable

bb.ab:                                            ; preds = %.thread, %bb.b
  %.sink = phi ptr [ %i.br, %.thread ], [ %i.bg, %bb.b ]
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %.sink) #18
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.ib) #18
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.ic) #18
  %i.id = load i128, ptr %1, align 16, !range !22, !alias.scope !1228, !noundef !4
  %i.ie = icmp eq i128 %i.id, 0
  br i1 %i.ie, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.if) #18
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB2m_7service14ipc_threadsafe7ServiceEEEE7reserveCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !20, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 576) #18
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB2m_7service16local_threadsafe7ServiceEEEE7reserveCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !20, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 312) #18
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !20, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1) #18
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMsb_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB5_19WaitSetAttachmentIdNtNtNtB7_7service14ipc_threadsafe7ServiceE14has_event_fromCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %.sroa.12 = alloca i64, align 8                 ; 5 uses
  %.sroa.17 = alloca i64, align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  %i.a = load i64, ptr %1, align 8, !range !8, !alias.scope !1236, !noalias !1235, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1236, !noalias !1235, !nonnull !4, !align !19, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1236, !noalias !1235, !noundef !4
  %i.f = ptrtoint ptr %i.c to i64
  store i64 %i.f, ptr %.sroa.12, align 8, !alias.scope !1235, !noalias !1236
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !1236, !noalias !1235, !nonnull !4, !align !15, !noundef !4
  %i.g = load i32, ptr %.val.i, align 4, !noalias !1237, !noundef !4
  %i.h = ptrtoint ptr %i.c to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = load i32, ptr %0, align 8, !range !11, !noundef !4
  %i.k = icmp eq i32 %i.j, 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, %i.i
  %or.cond = select i1 %i.k, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.k, label %_RNvXsO_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_16AttachmentIdTypeNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b, %bb.c
  %.sroa.7.0.ph = phi i32 [ %i.g, %bb.c ], [ undef, %bb.b ]
  %i.o = phi i1 [ false, %bb.c ], [ true, %bb.b ]
  %.sroa.0.0.ph = phi i32 [ 2, %bb.c ], [ 0, %bb.b ]
  %.sink11.i.sroa.phi.ph = phi ptr [ %.sroa.12, %bb.c ], [ %.sroa.17, %bb.b ]
  %.sink.i.ph = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.b ]
  store i64 %.sink.i.ph, ptr %.sink11.i.sroa.phi.ph, align 8, !alias.scope !1235, !noalias !1236
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.p = load i32, ptr %0, align 8, !range !11, !alias.scope !1238, !noalias !1239, !noundef !4
  %i.q = icmp eq i32 %i.p, %.sroa.0.0.ph
  br i1 %i.q, label %bb.f, label %_RNvXsO_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_16AttachmentIdTypeNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1238, !noalias !1239, !noundef !4
  %.sroa.12.0..sroa.12.0..sroa.12.0..sroa.12.8.6 = load i64, ptr %.sroa.12, align 8, !alias.scope !1239, !noalias !1238, !noundef !4
  %i.t = icmp eq i64 %i.s, %.sroa.12.0..sroa.12.0..sroa.12.0..sroa.12.8.6 ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.t, label %bb.i, label %_RNvXsO_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_16AttachmentIdTypeNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.f
  br i1 %i.t, label %bb.j, label %_RNvXsO_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_16AttachmentIdTypeNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !1238, !noalias !1239, !noundef !4
  %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.16.7 = load i64, ptr %.sroa.17, align 8, !alias.scope !1239, !noalias !1238, !noundef !4
  %i.w = icmp eq i64 %i.v, %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.16.7
  br label %_RNvXsO_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_16AttachmentIdTypeNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !1238, !noalias !1239, !noundef !4
  %i.z = icmp eq i32 %i.y, %.sroa.7.0.ph
  br label %_RNvXsO_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_16AttachmentIdTypeNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.d
  %.val9.i = load ptr, ptr %i.d, align 8, !alias.scope !1236, !noalias !1235, !nonnull !4, !align !15, !noundef !4
  %i.aa = load i32, ptr %.val9.i, align 4, !noalias !1237, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !noundef !4
  %i.ad = icmp eq i32 %i.ac, %i.aa
  br label %_RNvXsO_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_16AttachmentIdTypeNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq.exit

_RNvXsO_NtCsg6ZEkMtNi4J_8iceoryx27waitsetNtB5_16AttachmentIdTypeNtNtCs8Chj7Szqq0n_4core3cmp9PartialEq2eq.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.k
  %.sroa.0.0.shrunk = phi i1 [ %i.ad, %bb.k ], [ false, %bb.d ], [ %i.z, %bb.j ], [ %i.w, %bb.i ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMsb_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB5_19WaitSetAttachmentIdNtNtNtB7_7service14ipc_threadsafe7ServiceE19has_missed_deadlineCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %.sroa.10 = alloca i64, align 8                 ; 3 uses
  %.sroa.14 = alloca i64, align 8                 ; 3 uses
  %i.a = load i32, ptr %0, align 8, !range !11, !noundef !4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  %i.c = load i64, ptr %1, align 8, !range !8, !alias.scope !1247, !noalias !1246, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1247, !noalias !1246, !nonnull !4, !align !19, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1247, !noalias !1246, !noundef !4
  br label %_RNvMs5_NtCsg6ZEkMtNi4J_8iceoryx27waitsetINtB5_19WaitSetAttachmentIdNtNtNtB7_7service14ipc_threadsafe7ServiceE10from_guardCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit.thread

end_hunk_1
