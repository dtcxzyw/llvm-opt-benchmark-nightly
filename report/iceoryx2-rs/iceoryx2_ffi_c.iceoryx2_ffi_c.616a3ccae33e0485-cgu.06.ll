Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_ffi_c.iceoryx2_ffi_c.616a3ccae33e0485-cgu.06?download=true
inline.NumInlined: 1298
inline.NumDeleted: 677
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCs8mxkWwUnjF1_14iceoryx2_ffi_c:bb.a

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 4992
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 6256
  %i.jw = atomicrmw add ptr %i.jv, i8 1 monotonic, align 1 ; 0 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 3627
  %i.jy = atomicrmw add ptr %i.jx, i8 1 monotonic, align 1 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 2, ptr %i.h, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.js, i64 6304
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE8for_eachNCNvMs0_NtNtB1u_4port6serverINtB34_17SharedServerStateNtNtB1s_14ipc_threadsafe7ServiceE24force_update_connections0ECs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ka, ptr noundef nonnull align 16 %i.js, ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #18
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noundef nonnull align 16 %i.js) #18
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noundef nonnull align 16 %i.ju) #18
  %i.kb = load i8, ptr %i.h, align 1, !range !16, !noundef !8 ; 2 uses
  %i.kc = load i8, ptr %i.jz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not77 = icmp eq i8 %i.kb, 2
  br i1 %.not77, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i8 %i.kb, ptr %i.ap, align 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %i.kc, ptr %i.kd, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.ar, ptr %i.ao, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.458.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %i.ap, ptr %i.an, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @18, ptr noundef nonnull %i.ao, ptr noundef nonnull @87, ptr noundef nonnull %i.an) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.ah

bb.ah:                                            ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, %bb.ag
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %.val88 = load ptr, ptr %i.bz, align 8, !nonnull !8, !noundef !8
  %i.ke = getelementptr inbounds nuw i8, ptr %.val88, i64 16
  %i.kf = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noundef nonnull align 8 %i.ke) #18
  %i.kg = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.kf) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %.val = load ptr, ptr %i.bz, align 8, !nonnull !8, !noundef !8
  %i.kh = getelementptr inbounds nuw i8, ptr %.val, i64 7280
  %.val99 = load ptr, ptr %i.kh, align 8, !nonnull !8, !noundef !8
  %i.ki = getelementptr inbounds nuw i8, ptr %.val99, i64 6312
  %i.kj = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, ptr noundef nonnull align 4 dereferenceable(16) %i.ki, i64 16, i1 false)
  %i.kk = load i64, ptr %i.de, align 16, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 16 dereferenceable(16) %i.bt, i64 16, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 %i.eo, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i64 %i.dv, ptr %i.km, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 %i.kk, ptr %i.kn, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i32 %..i, ptr %i.ko, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  store i8 %i.fp, ptr %i.kp, align 4
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_server_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.am, ptr noundef nonnull align 8 %i.kg, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.al) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.kq = load i64, ptr %i.am, align 8, !range !10, !noundef !8
  %i.kr = trunc nuw i64 %i.kq to i1
  br i1 %i.kr, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.experimental.noalias.scope.decl(metadata !776)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ar, ptr %i.g, align 8, !noalias !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !776
  %i.ks = load ptr, ptr %i.ar, align 8, !alias.scope !776, !nonnull !8, !noundef !8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store ptr %i.kt, ptr %i.e, align 8, !noalias !776
  call void @_RNvMsq_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_5MutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB13_7service14ipc_threadsafe7ServiceEE4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #18
  %i.ku = load i32, ptr %i.f, align 8, !range !19, !noalias !776, !noundef !8
  %.not.i107 = icmp eq i32 %i.ku, -1
  br i1 %.not.i107, label %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit112, label %bb.aj, !prof !20

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !776
  store ptr %i.g, ptr %i.c, align 8, !noalias !776
  %.sroa.42.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB20_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.42.0..sroa_idx.i108, align 8, !noalias !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !776
  store ptr %i.d, ptr %i.b, align 8, !noalias !776
  %.sroa.46.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1d_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.46.0..sroa_idx.i109, align 8, !noalias !776
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @18, ptr noundef nonnull %i.c, ptr noundef nonnull @179, ptr noundef nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !776
  store ptr %i.g, ptr %i.a, align 8, !noalias !776
  %.sroa.410.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB20_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.410.0..sroa_idx.i110, align 8, !noalias !776
  %i.kv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.kv, align 8, !noalias !776
  %.sroa.414.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1d_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.414.0..sroa_idx.i111, align 8, !noalias !776
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @180, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #19
  unreachable

_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit112: ; preds = %bb.ai
  %i.kw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !noalias !776, !nonnull !8, !align !21, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.kx, ptr %i.ah, align 8
  %i.ky = load i128, ptr %i.kx, align 16, !range !22, !noalias !777, !noundef !8
  %.not.i113 = icmp eq i128 %i.ky, 2
  br i1 %.not.i113, label %bb.ak, label %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit114, !prof !23

bb.ak:                                            ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit112
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #19, !noalias !777
  unreachable

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit114: ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit112
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 6272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.kz, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.an

bb.al:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.bu, ptr %i.ak, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.466.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %.val82 = load ptr, ptr %i.bz, align 8, !nonnull !8, !noundef !8
  %i.la = getelementptr inbounds nuw i8, ptr %.val82, i64 2248
  %i.lb = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.la) #18
  %i.lc = getelementptr i8, ptr %i.lb, i64 32
  %.val100 = load i64, ptr %i.lc, align 8, !noundef !8
  store i64 %.val100, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %i.bv, ptr %i.ai, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.470.0..sroa_idx, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.aj, ptr %i.ld, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.474.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @18, ptr noundef nonnull %i.ak, ptr noundef nonnull @88, ptr noundef nonnull %i.ai) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i8 0, ptr %0, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.le, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.lf = load ptr, ptr %i.ar, align 8, !alias.scope !782, !nonnull !8, !noundef !8
  %i.lg = atomicrmw sub ptr %i.lf, i64 1 release, align 8, !noalias !782
  %i.lh = icmp eq i64 %i.lg, 1
  br i1 %i.lh, label %bb.am, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.am:                                            ; preds = %bb.al
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service14ipc_threadsafe7ServiceEEE9drop_slowCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ar) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.ao

bb.an:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit114
  %.sink = phi ptr [ %3, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit ], [ %i.du, %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit114 ]
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %.sink) #18
  ret void

2:                                                ; preds = %bb.q
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service14ipc_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.bf) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #19
  unreachable

bb.ao:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24port18DegradationHandlerKj18_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %.thread, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f, %bb.c
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.lk = load ptr, ptr %i.lj, align 16, !alias.scope !786, !align !9, !noundef !8 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i115, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24port18DegradationHandlerKj18_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
  %i.ll = load ptr, ptr %i.lk, align 8, !noalias !786, !nonnull !8, !noundef !8
  call void %i.ll(ptr noundef nonnull align 16 dereferenceable(48) %i.li) #18, !inline_history !0
  br label %.thread129

bb.aq:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24port18DegradationHandlerKj18_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
  %.val.i.i.i116 = load ptr, ptr %i.li, align 16, !alias.scope !786 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val1.i.i.i117 = load ptr, ptr %i.lm, align 8, !alias.scope !786, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %i.ln = load ptr, ptr %.val1.i.i.i117, align 8, !invariant.load !8, !noalias !786 ; 2 uses
  %.not.i.i.i.i118 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i.i118, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i116) ]
  call void %i.ln(ptr noundef nonnull %.val.i.i.i116) #20, !noalias !786, !inline_history !1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.lo = getelementptr inbounds nuw i8, ptr %.val1.i.i.i117, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !range !12, !invariant.load !8, !noalias !786 ; 2 uses
  %i.lq = icmp eq i64 %i.lp, 0
  br i1 %i.lq, label %.thread129, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i119

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i119: ; preds = %bb.as
  %i.lr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i117, i64 16
  %i.ls = load i64, ptr %i.lr, align 8, !range !13, !invariant.load !8, !noalias !786
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i116) ]
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i116, i64 noundef range(i64 0, -9223372036317904881) %i.lp, i64 noundef range(i64 1, 536870913) %i.ls) #18, !noalias !786
  br label %.thread129

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.ax, %bb.au, %.thread129, %bb.ao
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 160
  br label %bb.an

.thread129:                                       ; preds = %bb.ap, %bb.as, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i119
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.lt = load i128, ptr %1, align 16, !range !11, !alias.scope !787, !noundef !8
  %i.lu = icmp eq i128 %i.lt, 0
  br i1 %i.lu, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, label %bb.at

bb.at:                                            ; preds = %.thread129
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.lx = load ptr, ptr %i.lw, align 16, !alias.scope !791, !align !9, !noundef !8 ; 2 uses
  %.not.i.i.i.i121 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i.i121, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !791, !nonnull !8, !noundef !8
  call void %i.ly(ptr noundef nonnull align 16 dereferenceable(48) %i.lv) #18, !inline_history !2
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.av:                                            ; preds = %bb.at
  %.val.i.i.i.i = load ptr, ptr %i.lv, align 16, !alias.scope !791 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i.i = load ptr, ptr %i.lz, align 8, !alias.scope !791, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %i.ma = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !8, !noalias !791 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void %i.ma(ptr noundef nonnull %.val.i.i.i.i) #20, !noalias !791, !inline_history !3
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.mb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !range !12, !invariant.load !8, !noalias !791 ; 2 uses
  %i.md = icmp eq i64 %i.mc, 0
  br i1 %i.md, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.ax
  %i.me = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.mf = load i64, ptr %i.me, align 8, !range !13, !invariant.load !8, !noalias !791
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 0, -9223372036317904881) %i.mc, i64 noundef range(i64 1, 536870913) %i.mf) #18, !noalias !791
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [2 x i8], align 1                 ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.5.i = alloca [6400 x i8], align 16       ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [8 x i8], align 4                 ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 4               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [1 x i8], align 1                ; 3 uses
  %i.af = alloca [1 x i8], align 1                ; 3 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [64 x i8], align 8               ; 10 uses
  %i.am = alloca [32 x i8], align 8               ; 6 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [2 x i8], align 1                ; 5 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 13 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [1 x i8], align 1                ; 4 uses
  %i.av = alloca [64 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [6336 x i8], align 16            ; 30 uses
  %i.ay = alloca [64 x i8], align 16              ; 4 uses
  %i.az = alloca [48 x i8], align 16              ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [32 x i8], align 8               ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 8 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.04 = alloca [64 x i8], align 16          ; 5 uses
  %.sroa.6 = alloca [48 x i8], align 16           ; 5 uses
  %.sroa.7 = alloca [24 x i8], align 16           ; 5 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 5 uses
  %i.be = alloca [2712 x i8], align 16            ; 5 uses
  %.sroa.10 = alloca [888 x i8], align 8          ; 5 uses
  %i.bf = alloca [2712 x i8], align 8             ; 6 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [264 x i8], align 8              ; 7 uses
  %i.bj = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 4 uses
  %i.bk = alloca [888 x i8], align 8              ; 4 uses
  %i.bl = alloca [32 x i8], align 8               ; 6 uses
  %i.bm = alloca [32 x i8], align 8               ; 4 uses
  %i.bn = alloca [1280 x i8], align 16            ; 20 uses
  %i.bo = alloca [32 x i8], align 8               ; 7 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [1 x i8], align 1                ; 4 uses
  %i.br = alloca [1072 x i8], align 8             ; 7 uses
  %i.bs = alloca [1072 x i8], align 8             ; 10 uses
  %i.bt = alloca [16 x i8], align 16              ; 8 uses
  %i.bu = alloca [16 x i8], align 8               ; 11 uses
  %i.bv = alloca [16 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr @82, ptr %i.bv, align 8, !captures !24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 28, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store ptr @83, ptr %i.bu, align 8, !captures !24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 13, ptr %i.bx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @_RNvMs15_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB6_14UniqueServerId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.bt) #18
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !8, !align !9, !noundef !8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %.val89 = load ptr, ptr %i.bz, align 8, !nonnull !8, !noundef !8
  %i.ca = getelementptr inbounds nuw i8, ptr %.val89, i64 6144
  %.sroa.014.0.copyload = load i128, ptr %i.bt, align 16 ; 4 uses
  call void @_RNvMsn_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_10SharedNodeNtNtNtB7_7service16local_threadsafe7ServiceE15create_port_tagCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull sret([1072 x i8]) align 8 captures(address) dereferenceable(1072) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ca, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 28, i128 noundef %.sroa.014.0.copyload) #18
  %i.cb = load ptr, ptr %i.br, align 8, !noundef !8
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ce = load i8, ptr %i.cd, align 8, !range !31, !noundef !8
  store i8 %i.ce, ptr %i.bq, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store ptr %i.bu, ptr %i.bp, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store ptr %i.bv, ptr %i.bo, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.422.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %i.bq, ptr %i.cf, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @18, ptr noundef nonnull %i.bp, ptr noundef nonnull @92, ptr noundef nonnull %i.bo) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  store i8 3, ptr %0, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.cg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  call void @llvm.experimental.noalias.scope.decl(metadata !858)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cj = load ptr, ptr %i.ci, align 16, !alias.scope !859, !align !9, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !859, !nonnull !8, !noundef !8
  call void %i.ck(ptr noundef nonnull align 16 dereferenceable(48) %i.ch) #18, !inline_history !0
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24port18DegradationHandlerKj18_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %i.ch, align 16, !alias.scope !859 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val1.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !859, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %i.cm = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !8, !noalias !859 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void %i.cm(ptr noundef nonnull %.val.i.i.i) #20, !noalias !859, !inline_history !1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !12, !invariant.load !8, !noalias !859 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24port18DegradationHandlerKj18_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %i.cq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !range !13, !invariant.load !8, !noalias !859
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 0, -9223372036317904881) %i.co, i64 noundef range(i64 1, 536870913) %i.cr) #18, !noalias !859
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24port18DegradationHandlerKj18_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1072) %i.bs, ptr noundef nonnull align 8 dereferenceable(1072) %i.br, i64 1072, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %i.cs = call noundef nonnull align 8 ptr @_RNvXs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_responseINtB5_11PortFactoryNtNtB9_16local_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB25_18CustomHeaderMarkerB22_B2D_ENtB7_11PortFactory13static_configCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bz) #18 ; 16 uses
  %.val93 = load ptr, ptr %i.bz, align 8, !nonnull !8, !noundef !8
  %i.ct = getelementptr inbounds nuw i8, ptr %.val93, i64 4296
  %i.cu = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.ct) #18 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !8
  %i.cx = getelementptr i8, ptr %i.cu, i64 8
  %.val79 = load i64, ptr %i.cx, align 8, !noundef !8
  %i.cy = getelementptr i8, ptr %i.cu, i64 32
  %.val80 = load i64, ptr %i.cy, align 8, !noundef !8
  %i.cz = shl i64 %.val79, 1
  %i.da = mul i64 %i.cz, %.val80
  %i.db = add i64 %i.da, %i.cw
  %.val92 = load ptr, ptr %i.bz, align 8, !nonnull !8, !noundef !8
  %i.dc = getelementptr inbounds nuw i8, ptr %.val92, i64 4296
  %i.dd = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.dc) #18 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8, !noundef !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
end_hunk_0
begin_hunk_1_@_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCs8mxkWwUnjF1_14iceoryx2_ffi_c:bb.a
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 3856
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 5120
  %i.jz = atomicrmw add ptr %i.jy, i8 1 monotonic, align 1 ; 0 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 3851
  %i.kb = atomicrmw add ptr %i.ka, i8 1 monotonic, align 1 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 2, ptr %i.h, align 1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 6240
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE8for_eachNCNvMs0_NtNtB1u_4port6serverINtB34_17SharedServerStateNtNtB1s_16local_threadsafe7ServiceE24force_update_connections0ECs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.kd, ptr noundef nonnull align 16 %i.jv, ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #18
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE30finish_update_connection_cycleCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noundef nonnull align 16 %i.jv) #18
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service16local_threadsafe7ServiceE30finish_update_connection_cycleCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noundef nonnull align 16 %i.jx) #18
  %i.ke = load i8, ptr %i.h, align 1, !range !16, !noundef !8 ; 2 uses
  %i.kf = load i8, ptr %i.kc, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not77 = icmp eq i8 %i.ke, 2
  br i1 %.not77, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i8 %i.ke, ptr %i.ap, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %i.kf, ptr %i.kg, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.ar, ptr %i.ao, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.458.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %i.ap, ptr %i.an, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @18, ptr noundef nonnull %i.ao, ptr noundef nonnull @87, ptr noundef nonnull %i.an) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.ai

bb.ai:                                            ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, %bb.ah
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %.val94 = load ptr, ptr %i.bz, align 8, !nonnull !8, !noundef !8
  %i.kh = getelementptr i8, ptr %.val94, i64 832
  %.val = load ptr, ptr %i.kh, align 8, !nonnull !8, !noundef !8
  %i.ki = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.kj = load ptr, ptr %i.ki, align 8, !noundef !8
  %i.kk = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.kj) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %.val85 = load ptr, ptr %i.bz, align 8, !nonnull !8, !noundef !8
  %i.kl = getelementptr inbounds nuw i8, ptr %.val85, i64 6144
  %.val102 = load ptr, ptr %i.kl, align 8, !nonnull !8, !noundef !8
  %i.km = getelementptr inbounds nuw i8, ptr %.val102, i64 6024
  %i.kn = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kn, ptr noundef nonnull align 4 dereferenceable(16) %i.km, i64 16, i1 false)
  %i.ko = load i64, ptr %i.de, align 16, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 16 dereferenceable(16) %i.bt, i64 16, i1 false)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 %i.ep, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i64 %i.dv, ptr %i.kq, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 %i.ko, ptr %i.kr, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i32 %..i, ptr %i.ks, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  store i8 %i.fq, ptr %i.kt, align 4
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_server_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.am, ptr noundef nonnull align 8 %i.kk, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.al) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.ku = load i64, ptr %i.am, align 8, !range !10, !noundef !8
  %i.kv = trunc nuw i64 %i.ku to i1
  br i1 %i.kv, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ar, ptr %i.g, align 8, !noalias !880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !880
  %i.kw = load ptr, ptr %i.ar, align 8, !alias.scope !880, !nonnull !8, !noundef !8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  store ptr %i.kx, ptr %i.e, align 8, !noalias !880
  call void @_RNvMsq_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_5MutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB13_7service16local_threadsafe7ServiceEE4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #18
  %i.ky = load i32, ptr %i.f, align 8, !range !19, !noalias !880, !noundef !8
  %.not.i109 = icmp eq i32 %i.ky, -1
  br i1 %.not.i109, label %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit114, label %bb.ak, !prof !20

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !880
  store ptr %i.g, ptr %i.c, align 8, !noalias !880
  %.sroa.42.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB20_7service16local_threadsafe7ServiceEENtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.42.0..sroa_idx.i110, align 8, !noalias !880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !880
  store ptr %i.d, ptr %i.b, align 8, !noalias !880
  %.sroa.46.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1d_7service16local_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.46.0..sroa_idx.i111, align 8, !noalias !880
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @18, ptr noundef nonnull %i.c, ptr noundef nonnull @179, ptr noundef nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !880
  store ptr %i.g, ptr %i.a, align 8, !noalias !880
  %.sroa.410.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB20_7service16local_threadsafe7ServiceEENtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.410.0..sroa_idx.i112, align 8, !noalias !880
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.kz, align 8, !noalias !880
  %.sroa.414.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1d_7service16local_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.414.0..sroa_idx.i113, align 8, !noalias !880
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @180, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #19
  unreachable

_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit114: ; preds = %bb.aj
  %i.la = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !noalias !880, !nonnull !8, !align !21, !noundef !8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.lb, ptr %i.ah, align 8
  %i.lc = load i128, ptr %i.lb, align 16, !range !22, !noalias !881, !noundef !8
  %.not.i115 = icmp eq i128 %i.lc, 2
  br i1 %.not.i115, label %bb.al, label %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit116, !prof !23

bb.al:                                            ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit114
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #19, !noalias !881
  unreachable

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit116: ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit114
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 6208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ld, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.ao

bb.am:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.bu, ptr %i.ak, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.466.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %.val90 = load ptr, ptr %i.bz, align 8, !nonnull !8, !noundef !8
  %i.le = getelementptr inbounds nuw i8, ptr %.val90, i64 1112
  %i.lf = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.le) #18
  %i.lg = getelementptr i8, ptr %i.lf, i64 32
  %.val84 = load i64, ptr %i.lg, align 8, !noundef !8
  store i64 %.val84, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %i.bv, ptr %i.ai, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8mxkWwUnjF1_14iceoryx2_ffi_c, ptr %.sroa.470.0..sroa_idx, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.aj, ptr %i.lh, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.474.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @18, ptr noundef nonnull %i.ak, ptr noundef nonnull @88, ptr noundef nonnull %i.ai) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i8 0, ptr %0, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.li, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.lj = load ptr, ptr %i.ar, align 8, !alias.scope !886, !nonnull !8, !noundef !8
  %i.lk = atomicrmw sub ptr %i.lj, i64 1 release, align 8, !noalias !886
  %i.ll = icmp eq i64 %i.lk, 1
  br i1 %i.ll, label %bb.an, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.an:                                            ; preds = %bb.am
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service16local_threadsafe7ServiceEEE9drop_slowCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ar) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.ap

bb.ao:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit116
  %.sink = phi ptr [ %3, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit ], [ %i.du, %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs8mxkWwUnjF1_14iceoryx2_ffi_c.exit116 ]
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %.sink) #18
  ret void

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit.thread: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service16local_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24port18DegradationHandlerKj18_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

2:                                                ; preds = %bb.q
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service16local_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef align 8 dereferenceable(2712) %i.bf) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #19
  unreachable

bb.ap:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24port18DegradationHandlerKj18_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit.thread, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f, %bb.c
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.lo = load ptr, ptr %i.ln, align 16, !alias.scope !890, !align !9, !noundef !8 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i117, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24port18DegradationHandlerKj18_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
  %i.lp = load ptr, ptr %i.lo, align 8, !noalias !890, !nonnull !8, !noundef !8
  call void %i.lp(ptr noundef nonnull align 16 dereferenceable(48) %i.lm) #18, !inline_history !0
  br label %.thread

bb.ar:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24port18DegradationHandlerKj18_EECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
  %.val.i.i.i118 = load ptr, ptr %i.lm, align 16, !alias.scope !890 ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val1.i.i.i119 = load ptr, ptr %i.lq, align 8, !alias.scope !890, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %i.lr = load ptr, ptr %.val1.i.i.i119, align 8, !invariant.load !8, !noalias !890 ; 2 uses
  %.not.i.i.i.i120 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i.i.i120, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i118) ]
  call void %i.lr(ptr noundef nonnull %.val.i.i.i118) #20, !noalias !890, !inline_history !1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ls = getelementptr inbounds nuw i8, ptr %.val1.i.i.i119, i64 8
  %i.lt = load i64, ptr %i.ls, align 8, !range !12, !invariant.load !8, !noalias !890 ; 2 uses
  %i.lu = icmp eq i64 %i.lt, 0
  br i1 %i.lu, label %.thread, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i121

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i121: ; preds = %bb.at
  %i.lv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i119, i64 16
  %i.lw = load i64, ptr %i.lv, align 8, !range !13, !invariant.load !8, !noalias !890
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i118) ]
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i118, i64 noundef range(i64 0, -9223372036317904881) %i.lt, i64 noundef range(i64 1, 536870913) %i.lw) #18, !noalias !890
  br label %.thread

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.ay, %bb.av, %.thread, %bb.ap
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 160
  br label %bb.ao

.thread:                                          ; preds = %bb.aq, %bb.at, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i121
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.lx = load i128, ptr %1, align 16, !range !11, !alias.scope !891, !noundef !8
  %i.ly = icmp eq i128 %i.lx, 0
  br i1 %i.ly, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, label %bb.au

bb.au:                                            ; preds = %.thread
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.mb = load ptr, ptr %i.ma, align 16, !alias.scope !895, !align !9, !noundef !8 ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i.i123, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mc = load ptr, ptr %i.mb, align 8, !noalias !895, !nonnull !8, !noundef !8
  call void %i.mc(ptr noundef nonnull align 16 dereferenceable(48) %i.lz) #18, !inline_history !2
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.aw:                                            ; preds = %bb.au
  %.val.i.i.i.i = load ptr, ptr %i.lz, align 16, !alias.scope !895 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i.i = load ptr, ptr %i.md, align 8, !alias.scope !895, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %i.me = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !8, !noalias !895 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void %i.me(ptr noundef nonnull %.val.i.i.i.i) #20, !noalias !895, !inline_history !3
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.mf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.mg = load i64, ptr %i.mf, align 8, !range !12, !invariant.load !8, !noalias !895 ; 2 uses
  %i.mh = icmp eq i64 %i.mg, 0
  br i1 %i.mh, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.ay
  %i.mi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.mj = load i64, ptr %i.mi, align 8, !range !13, !invariant.load !8, !noalias !895
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 0, -9223372036317904881) %i.mg, i64 noundef range(i64 1, 536870913) %i.mj) #18, !noalias !895
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 0, 4) i8 @_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB4_11TinyClosureKj18_E4callCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 16, !align !9, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  %i.e = tail call noundef i8 %i.d(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %1) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 16, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !align !9, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !8, !nonnull !8
  %i.k = tail call noundef i8 %i.j(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %1) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.e, %bb.b ], [ %i.k, %bb.c ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMs_NvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB4_11TinyClosureKj18_E4callCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, i1 noundef zeroext %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 16, !align !9, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  %i.e = tail call noundef i8 %i.d(ptr noundef nonnull %0, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %2) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 16, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !align !9, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !8, !nonnull !8
  %i.k = tail call noundef i8 %i.j(ptr noundef nonnull %i.f, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %2) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.e, %bb.b ], [ %i.k, %bb.c ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noalias noundef ptr @_RNvMsa_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_13iox2_writer_t5alloc() unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noundef align 8 dereferenceable_or_null(1408) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef 1408, i64 noundef 8) #18
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMsa_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api6writerNtB5_13iox2_writer_t7dealloc(ptr noundef nonnull captures(address) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 1408, i64 noundef 8) #18
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsm_NtNtCs8mxkWwUnjF1_14iceoryx2_ffi_c3api15service_builderNtB5_30iox2_service_builder_storage_t6as_mut(ptr noalias nofree noundef readonly align 8 captures(ret: address, provenance) dereferenceable(9104) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !8
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #19
  unreachable
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcDINtNtNtCs8Chj7Szqq0n_4core3ops8function2FnTPhB1o_EEp6OutputbNtNtBO_6marker4SyncNtB1H_4SendEL_E9drop_slowCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !13, !invariant.load !8 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueDINtNtNtB4_3ops8function2FnTPhB13_EEp6OutputbNtNtB4_6marker4SyncNtB1m_4SendEL_ECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void %.val(ptr noundef nonnull %i.i) #20, !inline_history !896
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueDINtNtNtB4_3ops8function2FnTPhB13_EEp6OutputbNtNtB4_6marker4SyncNtB1m_4SendEL_ECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueDINtNtNtB4_3ops8function2FnTPhB13_EEp6OutputbNtNtB4_6marker4SyncNtB1m_4SendEL_ECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %bb.a, %bb.b
  %i.j = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync4WeakDINtNtNtB4_3ops8function2FnTPhB1C_EEp6OutputbNtNtB4_6marker4SyncNtB1V_4SendEL_RNtNtBG_5alloc6GlobalEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueDINtNtNtB4_3ops8function2FnTPhB13_EEp6OutputbNtNtB4_6marker4SyncNtB1m_4SendEL_ECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync4WeakDINtNtNtB4_3ops8function2FnTPhB1C_EEp6OutputbNtNtB4_6marker4SyncNtB1V_4SendEL_RNtNtBG_5alloc6GlobalEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !12, !invariant.load !8
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.e, i64 8) ; 3 uses
  %i.q = add nuw nsw i64 %i.p, 15
  %i.r = add nuw i64 %i.q, %i.o
  %i.s = sub nsw i64 0, %i.p
  %i.t = and i64 %i.r, %i.s                       ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync4WeakDINtNtNtB4_3ops8function2FnTPhB1C_EEp6OutputbNtNtB4_6marker4SyncNtB1V_4SendEL_RNtNtBG_5alloc6GlobalEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) %i.t, i64 noundef range(i64 1, 536870913) %i.p) #18
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync4WeakDINtNtNtB4_3ops8function2FnTPhB1C_EEp6OutputbNtNtB4_6marker4SyncNtB1V_4SendEL_RNtNtBG_5alloc6GlobalEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync4WeakDINtNtNtB4_3ops8function2FnTPhB1C_EEp6OutputbNtNtB4_6marker4SyncNtB1V_4SendEL_RNtNtBG_5alloc6GlobalEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueDINtNtNtB4_3ops8function2FnTPhB13_EEp6OutputbNtNtB4_6marker4SyncNtB1m_4SendEL_ECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service14ipc_threadsafe7ServiceEE9drop_slowCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_RNvXsl_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_15SharedNodeStateNtNtNtB7_7service14ipc_threadsafe7ServiceENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(7536) %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 6328
  tail call void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCs7gufeB8TUC6_12iceoryx2_cal10monitoring9file_lock5TokenEEECs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(1128) %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7456 ; 2 uses
  tail call void @_RNvXsj_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_11MutexHandleINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.d) #18
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7488
  tail call void @_RNvXs1_NtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix11ipc_capable8internalINtB5_13HandleStorageNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux15pthread_mutex_tENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #18
  %i.f = load i64, ptr %i.d, align 8, !range !10, !alias.scope !909, !noundef !8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBG_7service14ipc_threadsafe7ServiceEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7464
  tail call void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #18
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBG_7service14ipc_threadsafe7ServiceEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBG_7service14ipc_threadsafe7ServiceEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4952 ; 2 uses
  tail call void @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage4fileNtB5_7StorageNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.i) #18
  tail call void @_RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4FileNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.i) #18
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5224
  tail call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.j) #18
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync4WeakINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtB1f_7service14ipc_threadsafe7ServiceERNtNtBG_5alloc6GlobalEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBG_7service14ipc_threadsafe7ServiceEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync4WeakINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtB1f_7service14ipc_threadsafe7ServiceERNtNtBG_5alloc6GlobalEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) 7552, i64 noundef range(i64 1, 536870913) 8) #18
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync4WeakINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtB1f_7service14ipc_threadsafe7ServiceERNtNtBG_5alloc6GlobalEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync4WeakINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtB1f_7service14ipc_threadsafe7ServiceERNtNtBG_5alloc6GlobalEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBG_7service14ipc_threadsafe7ServiceEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit, %bb.c, %bb.d
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service16local_threadsafe7ServiceEE9drop_slowCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_RNvXsl_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_15SharedNodeStateNtNtNtB7_7service16local_threadsafe7ServiceENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8mxkWwUnjF1_14iceoryx2_ffi_c(ptr noalias nofree noundef nonnull align 8 dereferenceable(7184) %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 6040
  %i.d = load i64, ptr %i.c, align 8, !range !10, !alias.scope !934, !noundef !8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCs7gufeB8TUC6_12iceoryx2_cal10monitoring13process_local5TokenEEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 6048
  tail call void @_RNvXs9_NtNtCs7gufeB8TUC6_12iceoryx2_cal10monitoring13process_localNtB5_5TokenNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.f) #18
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCs7gufeB8TUC6_12iceoryx2_cal10monitoring13process_local5TokenEEECs8mxkWwUnjF1_14iceoryx2_ffi_c.exit.i

end_hunk_1
