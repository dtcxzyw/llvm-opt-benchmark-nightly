Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_tests_common-030fd2955ad72bee.iceoryx2_tests_common.edeaeddec5393c09-cgu.07?download=true
inline.NumInlined: 512
inline.NumDeleted: 247
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs7_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE7receiveCskqqG2IB5b71_21iceoryx2_tests_common:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %1, ptr %i.g, align 8, !noalias !575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !575
  store ptr %1, ptr %i.d, align 8, !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !576
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i) #17, !noalias !577
  store ptr %i.j, ptr %i.c, align 8, !noalias !576
  %i.k = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #17, !noalias !577
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1688
  %i.m = load ptr, ptr %i.l, align 8, !noalias !577, !nonnull !8, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.n) #17, !noalias !577
  %i.p = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig17publish_subscribe(ptr noundef nonnull align 8 %i.o) #17, !noalias !577
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #17, !noalias !577
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2640
  %i.t = call noundef zeroext i1 @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsE12update_stateCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.s) #17, !noalias !577
  br i1 %i.t, label %bb.b, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.b:                                             ; preds = %bb.a
  %i.u = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #17, !noalias !577 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1360
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 2624
  %i.x = atomicrmw add ptr %i.w, i8 1 monotonic, align 1, !noalias !577 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !576
  store i8 2, ptr %i.a, align 1, !noalias !576
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 2640
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsE8for_eachNCNvMs5_NtNtB1u_4port10subscriberINtB38_10SubscriberNtNtB1s_14ipc_threadsafe7ServicejuE24force_update_connections0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.z, ptr noundef nonnull align 16 %i.u, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #17, !noalias !577
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 16 %i.v) #17, !noalias !577
  %i.aa = load i8, ptr %i.a, align 1, !range !19, !noalias !576, !noundef !8 ; 2 uses
  %i.ab = load i8, ptr %i.y, align 1, !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !576
  %.not.i.i = icmp eq i8 %i.aa, 2
  br i1 %.not.i.i, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit.thread

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !576
  store ptr %i.d, ptr %i.b, align 8, !noalias !576
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBD_7service14ipc_threadsafe7ServicejuENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !576
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.b, ptr noundef nonnull @302, ptr noundef nonnull inttoptr (i64 185 to ptr)) #17, !noalias !577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !576
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #17, !noalias !577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !575
  store ptr %i.g, ptr %i.f, align 8, !noalias !575
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBD_7service14ipc_threadsafe7ServicejuENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !575
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.f, ptr noundef nonnull @67, ptr noundef nonnull inttoptr (i64 195 to ptr)) #17, !noalias !577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit._crit_edge

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.a, %bb.b
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #17, !noalias !577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !575
  %i.ac = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i) #17, !noalias !577
  store ptr %i.ac, ptr %i.e, align 8, !noalias !575
  %i.ad = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #17, !noalias !577
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1360
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceE7receiveCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.h, ptr noundef nonnull align 16 %i.ae, i64 noundef 0) #17
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #17, !noalias !577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !575
  %.pr = load i128, ptr %i.h, align 16            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.af = icmp eq i128 %.pr, 2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 16 ; 2 uses
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  %.pre30 = load i8, ptr %.phi.trans.insert29, align 1 ; 2 uses
  br i1 %i.af, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit._crit_edge, label %bb.c

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit._crit_edge: ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit.thread
  %i.ag = phi i8 [ %i.ab, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit.thread ], [ %.pre30, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit ]
  %i.ah = phi i8 [ %i.aa, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit.thread ], [ %.pre, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ag, ptr %i.aj, align 2
  br label %bb.g

bb.c:                                             ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.511, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.617.0..sroa_idx, i64 30, i1 false)
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ak = load <2 x ptr>, ptr %.sroa.718.0..sroa_idx, align 16
  %.sroa.920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.920.0.copyload = load ptr, ptr %.sroa.920.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.al = trunc i128 %.pr to i1
  br i1 %i.al, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.am = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.e, label %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.0.sroa.0.sroa.6, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.511, i64 30, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit
  %.sroa.0.sroa.7.0 = phi ptr [ %.sroa.920.0.copyload, %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit ], [ undef, %bb.c ]
  %.sroa.0.sroa.0.sroa.0.0 = phi i8 [ %.pre, %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit ], [ undef, %bb.c ]
  %.sroa.0.sroa.0.sroa.5.0 = phi i8 [ %.pre30, %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit ], [ undef, %bb.c ]
  %.sroa.5.0 = phi ptr [ %.val, %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit ], [ null, %bb.c ]
  %i.ao = phi <2 x ptr> [ %i.ak, %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit ], [ undef, %bb.c ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.0.sroa.0.sroa.0.0, ptr %i.ap, align 16
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.0.sroa.0.sroa.5.0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 1
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.0.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.0.sroa.0.sroa.6, i64 30, i1 false)
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x ptr> %i.ao, ptr %.sroa.0.sroa.5.0..sroa_idx, align 16
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.0.sroa.7.0, ptr %.sroa.0.sroa.7.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx1, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit._crit_edge
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit._crit_edge ]
  store i8 %.sink, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0.sroa.6)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service14ipc_threadsafe7ServicejuE11loan_uninitCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.02.sroa.0 = alloca [16 x i8], align 8    ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d) #17
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #17
  %i.g = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #17 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2952
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !583, !noundef !8 ; 5 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #16, !noalias !583
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 2944
  %i.l = load i64, ptr %i.k, align 16, !alias.scope !583, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 3240
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 3536
  %i.o = load <2 x i64>, ptr %i.m, align 8, !alias.scope !583
  %i.p = load <2 x i64>, ptr %i.n, align 16, !alias.scope !583
  %i.q = shufflevector <2 x i64> %i.o, <2 x i64> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.r = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.q)
  %op.rdx = add i64 %i.r, %i.l
  %op.rdx21 = add i64 %op.rdx, -2                 ; 2 uses
  %i.s = urem i64 %op.rdx21, %i.i                 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = sub nuw i64 %i.i, %i.s
  %i.v = select i1 %i.t, i64 0, i64 %i.u
  %.sroa.0.0.i = add i64 %i.v, %op.rdx21
  %i.w = icmp ult i64 %i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.w)
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE8allocateCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 16 %i.f, i64 noundef %i.i, i64 noundef %.sroa.0.0.i) #17
  %i.x = load i8, ptr %i.b, align 8, !range !28, !noundef !8
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !range !34, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.aa, ptr %i.ab, align 8
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.06.0.copyload = load i64, ptr %i.ac, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.47.0.copyload = load ptr, ptr %.sroa.47.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %2 = load <2 x ptr>, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.79.0.copyload = load i64, ptr %.sroa.79.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 3560
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !8, !noundef !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 7280
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.sroa.0)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 6312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !584
  %i.aj = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d) #17, !noalias !585
  store ptr %i.aj, ptr %i.a, align 8, !noalias !584
  %i.ak = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #17, !noalias !585
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load i128, ptr %i.al, align 16, !noalias !585, !noundef !8
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #17, !noalias !585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.0, i64 16, i1 false)
  %.sroa.02.sroa.4.0..sroa.47.0.copyload.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.47.0.copyload, i64 16
  store i128 %i.am, ptr %.sroa.02.sroa.4.0..sroa.47.0.copyload.sroa_idx, align 8
  %.sroa.53.0..sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.47.0.copyload, i64 32
  store i64 1, ptr %.sroa.53.0..sroa.9.16..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.sroa.0)
  %.val = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.an = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.e, label %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.d
  %3 = insertelement <4 x ptr> poison, ptr %.val, i64 0
  %4 = insertelement <4 x ptr> %3, ptr %.sroa.47.0.copyload, i64 1
  %5 = shufflevector <2 x ptr> %2, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %6 = shufflevector <4 x ptr> %4, <4 x ptr> %5, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %6, ptr %0, align 8
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.06.0.copyload, ptr %.sroa.719.0..sroa_idx, align 8
  %.sroa.820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.79.0.copyload, ptr %.sroa.820.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit, %bb.c
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs8_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service14ipc_threadsafe7ServicejuE4loanCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 9)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs7_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service14ipc_threadsafe7ServicejuE11loan_uninitCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) #17
  %i.b = load ptr, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i8, ptr %i.d, align 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.617.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.58.0..sroa_idx, i64 15, i1 false)
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.69.0.copyload = load ptr, ptr %.sroa.69.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 0, ptr %.sroa.69.0.copyload, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.69.0.copyload, ptr %.sroa.718.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.f, align 8
  store ptr %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory10subscriberINtB4_21PortFactorySubscriberNtNtB8_14ipc_threadsafe7ServicejuE6createCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [2 x i8], align 1                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 12 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [1 x i8], align 1                 ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.13.sroa.4.i = alloca [32 x i8], align 8  ; 4 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
  %i.t = alloca [2704 x i8], align 16             ; 19 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [1 x i8], align 1                ; 4 uses
  %i.ab = alloca [1360 x i8], align 8             ; 7 uses
  %i.ac = alloca [1360 x i8], align 8             ; 9 uses
  %i.ad = alloca [16 x i8], align 16              ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 9 uses
  %i.af = alloca [16 x i8], align 8               ; 10 uses
  %i.ag = alloca [8 x i8], align 8                ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [64 x i8], align 16              ; 10 uses
  %.sroa.15 = alloca [31 x i8], align 1           ; 5 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %1, ptr %i.aj, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @_RNvXs1_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory10subscriberINtB5_21PortFactorySubscriberNtNtB9_14ipc_threadsafe7ServicejuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noundef nonnull @2, ptr noundef nonnull %i.aj) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load ptr, ptr %i.al, align 16, !nonnull !8, !align !10, !noundef !8 ; 2 uses
  %.val16 = load ptr, ptr %i.am, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.an = atomicrmw add ptr %.val16, i64 1 monotonic, align 8
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.a, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.a:                                             ; preds = %.split
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %.split
  %.val15 = load ptr, ptr %i.am, align 8, !nonnull !8, !noundef !8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val15, i64 2248
  %i.aq = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig17publish_subscribe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.ap) #17 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ai, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %.val16, ptr %i.ag, align 8, !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !618
  store ptr @68, ptr %i.af, align 8, !noalias !618, !captures !26
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 32, ptr %i.ar, align 8, !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !618
  store ptr @69, ptr %i.ae, align 8, !noalias !618, !captures !26
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 17, ptr %i.as, align 8, !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !618
  call void @_RNvMsf_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB5_18UniqueSubscriberId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ad) #17, !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !618
  %i.at = getelementptr inbounds nuw i8, ptr %.val16, i64 7280 ; 2 uses
  %.sroa.015.0.copyload.i = load i128, ptr %i.ad, align 16, !noalias !618 ; 2 uses
  call void @_RNvMsn_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_10SharedNodeNtNtNtB7_7service14ipc_threadsafe7ServiceE15create_port_tagCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([1360 x i8]) align 8 captures(address) dereferenceable(1360) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 32, i128 noundef %.sroa.015.0.copyload.i) #17, !noalias !618
  %i.au = load i64, ptr %i.ab, align 8, !range !9, !noalias !618, !noundef !8
  %i.av = icmp eq i64 %i.au, 2
  br i1 %i.av, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !618
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ax = load i8, ptr %i.aw, align 8, !range !32, !noalias !618, !noundef !8
  store i8 %i.ax, ptr %i.aa, align 1, !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !618
  store ptr %i.ae, ptr %i.z, align 8, !noalias !618
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !618
  store ptr %i.af, ptr %i.y, align 8, !noalias !618
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !618
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.aa, ptr %i.ay, align 8, !noalias !618
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !618
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.z, ptr noundef nonnull @78, ptr noundef nonnull %i.y) #17, !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !618
  br label %bb.u

bb.c:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1360) %i.ac, ptr noundef nonnull align 8 dereferenceable(1360) %i.ab, i64 1360, i1 false), !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !618
  %i.az = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.ba = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.az) #17, !noalias !618
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig17publish_subscribe(ptr noundef nonnull align 8 %i.ba) #17, !noalias !618 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = load i64, ptr %i.ai, align 16, !range !13, !alias.scope !617, !noalias !619, !noundef !8
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !618
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !617, !noalias !619, !noundef !8 ; 3 uses
  store i64 %i.bg, ptr %i.x, align 8, !noalias !618
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !616, !noalias !620, !noundef !8
  %i.bj = icmp ult i64 %i.bi, %i.bg
  br i1 %i.bj, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !616, !noalias !620, !noundef !8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.bg, %bb.g ], [ %i.bl, %bb.e ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !616, !noalias !620, !noundef !8 ; 3 uses
  %.val86.i = load ptr, ptr %i.at, align 8, !noalias !618, !nonnull !8, !noundef !8
  %i.bo = getelementptr inbounds nuw i8, ptr %.val86.i, i64 168
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !618, !noundef !8 ; 2 uses
  %.not.i = icmp ult i64 %i.bp, %i.bn
  br i1 %.not.i, label %bb.i, label %bb.j
end_hunk_0
