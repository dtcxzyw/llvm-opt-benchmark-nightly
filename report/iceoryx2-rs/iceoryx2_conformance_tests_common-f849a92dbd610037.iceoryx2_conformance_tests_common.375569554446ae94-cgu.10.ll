Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_conformance_tests_common-f849a92dbd610037.iceoryx2_conformance_tests_common.375569554446ae94-cgu.10?download=true
inline.NumInlined: 9002
inline.NumDeleted: 2149
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMs5_NtCsg6ZEkMtNi4J_8iceoryx216pending_responseINtB5_15PendingResponseNtNtNtB7_7service5local7ServiceyuShuE7receiveCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common:bb.a
  br i1 %i.aw, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.sroa.014.0.copyload = load i64, ptr %i.r, align 8 ; 2 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 11 uses
  %i.ax = load i64, ptr %.val, align 8, !noundef !6 ; 2 uses
  %i.ay = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %i.ay)
  %i.az = add i64 %i.ax, 1                        ; 2 uses
  store i64 %i.az, ptr %.val, align 8
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.h, label %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !12

bb.h:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.g
  %i.bb = getelementptr i8, ptr %.sroa.720.0.copyload, i64 40
  %.sroa.720.0.copyload.val = load i64, ptr %i.bb, align 8, !noundef !6
  store <2 x ptr> %i.av, ptr %i.i, align 16
  store ptr %.sroa.922.0.copyload, ptr %.sroa.527.0..sroa_idx, align 16
  store i64 %.sroa.720.0.copyload.val, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %.val, ptr %i.s, align 8
  store i8 %i.ar, ptr %i.t, align 16
  store i8 %i.as, ptr %.sroa.512.0..sroa_idx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.613.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5, i64 30, i1 false)
  store i64 %.sroa.014.0.copyload, ptr %i.u, align 16
  %.val25 = load ptr, ptr %i.v, align 8, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.720.0.copyload, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !6
  %i.be = getelementptr inbounds nuw i8, ptr %.val25, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !noundef !6
  %.not = icmp eq i64 %i.bd, %i.bf
  br i1 %.not, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.f
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 8
  store i8 0, ptr %0, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i, %bb.e
  ret void

bb.k:                                             ; preds = %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.bg, ptr noundef nonnull align 16 dereferenceable(80) %i.i, i64 80, i1 false)
  store i8 0, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.j

bb.l:                                             ; preds = %_RNvXs0_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13749
  %i.bh = load i64, ptr %.val, align 8, !noalias !13749, !noundef !6 ; 2 uses
  %i.bi = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add i64 %i.bh, 1                        ; 2 uses
  store i64 %i.bj, ptr %.val, align 8, !noalias !13749
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.m, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i.i, !prof !12

bb.m:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i.i: ; preds = %bb.l
  store ptr %.val, ptr %i.a, align 8, !noalias !13749
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 3872
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service5local7ServiceE14release_offsetCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %i.bl, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.t, i64 noundef %.sroa.014.0.copyload) #24
  %i.bm = load i64, ptr %.val, align 8, !noalias !13750, !noundef !6
  %i.bn = add i64 %i.bm, -1                       ; 3 uses
  store i64 %i.bn, ptr %.val, align 8, !noalias !13750
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.n, label %_RNvXs_NtCsg6ZEkMtNi4J_8iceoryx28responseINtB4_8ResponseNtNtNtB6_7service5local7ServiceShuENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i

bb.n:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i.i
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service5local7ServiceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #27
  %.pre.i = load i64, ptr %.val, align 8, !noalias !13751
  br label %_RNvXs_NtCsg6ZEkMtNi4J_8iceoryx28responseINtB4_8ResponseNtNtNtB6_7service5local7ServiceShuENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i

_RNvXs_NtCsg6ZEkMtNi4J_8iceoryx28responseINtB4_8ResponseNtNtNtB6_7service5local7ServiceShuENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i: ; preds = %bb.n, %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i.i
  %i.bp = phi i64 [ %i.bn, %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i.i ], [ %.pre.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13749
  %i.bq = add i64 %i.bp, -1                       ; 2 uses
  store i64 %i.bq, ptr %.val, align 8, !noalias !13751
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.o, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtBG_7service5local7ServiceShuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.o:                                             ; preds = %_RNvXs_NtCsg6ZEkMtNi4J_8iceoryx28responseINtB4_8ResponseNtNtNtB6_7service5local7ServiceShuENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service5local7ServiceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.s) #27
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtBG_7service5local7ServiceShuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtBG_7service5local7ServiceShuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvXs_NtCsg6ZEkMtNi4J_8iceoryx28responseINtB4_8ResponseNtNtNtB6_7service5local7ServiceShuENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8, !noalias !13752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13752
  %.val.i = load ptr, ptr %1, align 8, !noalias !13752, !nonnull !6, !noundef !6 ; 3 uses
  %i.bs = load i64, ptr %.val.i, align 8, !noalias !13752, !noundef !6 ; 2 uses
  %i.bt = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add i64 %i.bs, 1                        ; 2 uses
  store i64 %i.bu, ptr %.val.i, align 8, !noalias !13752
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %._crit_edge, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i, !prof !38
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_17ClientSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE12send_requestCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noundef nonnull align 16 %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @256, ptr %i.i, align 8, !captures !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 22, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 6384 ; 2 uses
  %i.m = load atomic i64, ptr %i.l monotonic, align 16 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3560 ; 2 uses
  %.val = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 2248
  %i.p = tail call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.o) #24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !6
  %.not = icmp ugt i64 %i.r, %i.m
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.s = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 8 %i.t) #24
  %i.v = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.u) #24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 6320
  %i.x = tail call noundef zeroext i1 @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE12update_stateCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 8 %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.w) #24
  br i1 %i.x, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.y = tail call fastcc { i8, i8 } @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_17ClientSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE24force_update_connectionsCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %1) #24 ; 2 uses
  %i.z = extractvalue { i8, i8 } %i.y, 0          ; 2 uses
  %.not.i = icmp eq i8 %i.z, 2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBD_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.h, ptr %i.aa, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.g, ptr noundef nonnull @257, ptr noundef nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -1, ptr %i.ab, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.ac = extractvalue { i8, i8 } %i.y, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBD_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.48.0..sroa_idx.i, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.a, ptr noundef nonnull @258, ptr noundef nonnull inttoptr (i64 189 to ptr)) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBD_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.436.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @255, ptr noundef nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0.insert.ext.i = zext i8 %i.ac to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.01.0.insert.ext.i = zext nneg i8 %i.z to i16
  %.sroa.01.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i16 %.sroa.01.0.insert.insert.i, ptr %i.ad, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4992
  %i.af = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceE17set_channel_stateCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %i.ae, i64 noundef %4, i64 noundef %5) #24 ; 0 uses
  %i.ag = atomicrmw add ptr %i.l, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE14deliver_offsetCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull align 16 %1, i64 noundef %2, i64 noundef %3, i64 noundef 0) #24
  %i.ah = load i8, ptr %i.c, align 8, !range !24, !noundef !6
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.039.0.copyload = load i16, ptr %i.aj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i16 %.sroa.039.0.copyload, ptr %i.ak, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.h
  %.sink = phi i8 [ 0, %bb.h ], [ 1, %bb.g ], [ 1, %bb.e ], [ 1, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i8, i8 } @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_17ClientSharedStateNtNtNtB9_7service14ipc_threadsafe7ServiceE24force_update_connectionsCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3627 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i8 1 monotonic, align 1 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4992
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6256
  %i.f = atomicrmw add ptr %i.e, i8 1 monotonic, align 1 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6320
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE8for_eachNCNvMs5_NtNtB1u_4port6clientINtB34_17ClientSharedStateNtNtB1s_14ipc_threadsafe7ServiceE24force_update_connections0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noundef nonnull align 16 %0, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #24
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %i.d) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 2 uses
  %i.i = load i64, ptr %i.h, align 16, !noundef !6 ; 3 uses
  %i.j = icmp ult i64 %i.i, 7896722634293473
  call void @llvm.assume(i1 %i.j)
  %.not5.i = icmp eq i64 %i.i, 0
  br i1 %.not5.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2648
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.01.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.l, %bb.f ] ; 5 uses
  %i.l = add nuw nsw i64 %.sroa.01.04.i, 1        ; 2 uses
  %i.m = load i64, ptr %i.h, align 16, !noundef !6 ; 2 uses
  %i.n = icmp ult i64 %.sroa.01.04.i, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw [1168 x i8], ptr %i.o, i64 %.sroa.01.04.i ; 2 uses
  %i.q = load i64, ptr %i.p, align 16, !range !11, !noundef !6
  %.not.i = icmp eq i64 %i.q, 2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.04.i, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1152
  %i.s = load atomic i8, ptr %i.r monotonic, align 16
  %i.t = load atomic i8, ptr %i.b monotonic, align 1
  %i.u = icmp eq i8 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.c
  %exitcond.not.i = icmp eq i64 %i.l, %i.i
  br i1 %exitcond.not.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.b

bb.g:                                             ; preds = %bb.e
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE17remove_connectionCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %0, i64 noundef %.sroa.01.04.i) #24
  br label %bb.f

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.f, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.w = load i8, ptr %i.a, align 1, !range !20, !noundef !6
  %i.x = load i8, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = insertvalue { i8, i8 } poison, i8 %i.w, 0
  %i.z = insertvalue { i8, i8 } %i.y, i8 %i.x, 1
  ret { i8, i8 } %i.z
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_17ClientSharedStateNtNtNtB9_7service16local_threadsafe7ServiceE12send_requestCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noundef nonnull align 16 %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @256, ptr %i.i, align 8, !captures !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 22, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 6320 ; 2 uses
  %i.m = load atomic i64, ptr %i.l monotonic, align 16 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3784 ; 2 uses
  %.val = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 1112
  %i.p = tail call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.o) #24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !6
  %.not = icmp ugt i64 %i.r, %i.m
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.s = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.t = getelementptr i8, ptr %i.s, i64 832
  %.val.i = load ptr, ptr %i.t, align 8, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noundef !6
  %i.w = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.v) #24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 6256
  %i.y = tail call noundef zeroext i1 @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE12update_stateCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 8 %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.x) #24
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = tail call fastcc { i8, i8 } @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_17ClientSharedStateNtNtNtB9_7service16local_threadsafe7ServiceE24force_update_connectionsCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %1) #24 ; 2 uses
  %i.aa = extractvalue { i8, i8 } %i.z, 0         ; 2 uses
  %.not.i = icmp eq i8 %i.aa, 2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBD_7service16local_threadsafe7ServiceENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.h, ptr %i.ab, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.g, ptr noundef nonnull @257, ptr noundef nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -1, ptr %i.ac, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.ad = extractvalue { i8, i8 } %i.z, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBD_7service16local_threadsafe7ServiceENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.48.0..sroa_idx.i, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.a, ptr noundef nonnull @258, ptr noundef nonnull inttoptr (i64 189 to ptr)) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBD_7service16local_threadsafe7ServiceENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.436.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @255, ptr noundef nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0.insert.ext.i = zext i8 %i.ad to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.01.0.insert.ext.i = zext nneg i8 %i.aa to i16
  %.sroa.01.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i16 %.sroa.01.0.insert.insert.i, ptr %i.ae, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 3856
  %i.ag = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service16local_threadsafe7ServiceE17set_channel_stateCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %i.af, i64 noundef %4, i64 noundef %5) #24 ; 0 uses
  %i.ah = atomicrmw add ptr %i.l, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE14deliver_offsetCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull align 16 %1, i64 noundef %2, i64 noundef %3, i64 noundef 0) #24
  %i.ai = load i8, ptr %i.c, align 8, !range !24, !noundef !6
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.039.0.copyload = load i16, ptr %i.ak, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i16 %.sroa.039.0.copyload, ptr %i.al, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %i.ao, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.h
  %.sink = phi i8 [ 0, %bb.h ], [ 1, %bb.g ], [ 1, %bb.e ], [ 1, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i8, i8 } @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_17ClientSharedStateNtNtNtB9_7service16local_threadsafe7ServiceE24force_update_connectionsCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3851 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i8 1 monotonic, align 1 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3856
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.f = atomicrmw add ptr %i.e, i8 1 monotonic, align 1 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6256
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE8for_eachNCNvMs5_NtNtB1u_4port6clientINtB34_17ClientSharedStateNtNtB1s_16local_threadsafe7ServiceE24force_update_connections0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noundef nonnull align 16 %0, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #24
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service16local_threadsafe7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %i.d) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 3 uses
  %i.j = icmp ult i64 %i.i, 6625985658660041
  call void @llvm.assume(i1 %i.j)
  %.not5.i = icmp eq i64 %i.i, 0
  br i1 %.not5.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.01.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.l, %bb.f ] ; 5 uses
  %i.l = add nuw nsw i64 %.sroa.01.04.i, 1        ; 2 uses
  %i.m = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.n = icmp ult i64 %.sroa.01.04.i, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 16, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw [1392 x i8], ptr %i.o, i64 %.sroa.01.04.i ; 2 uses
  %i.q = load i64, ptr %i.p, align 16, !range !13, !noundef !6
  %.not.i = icmp eq i64 %i.q, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.04.i, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1376
  %i.s = load atomic i8, ptr %i.r monotonic, align 16
  %i.t = load atomic i8, ptr %i.b monotonic, align 1
  %i.u = icmp eq i8 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.c
  %exitcond.not.i = icmp eq i64 %i.l, %i.i
  br i1 %exitcond.not.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.b

bb.g:                                             ; preds = %bb.e
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE17remove_connectionCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %0, i64 noundef %.sroa.01.04.i) #24
  br label %bb.f

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.f, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.w = load i8, ptr %i.a, align 1, !range !20, !noundef !6
  %i.x = load i8, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = insertvalue { i8, i8 } poison, i8 %i.w, 0
  %i.z = insertvalue { i8, i8 } %i.y, i8 %i.x, 1
  ret { i8, i8 } %i.z
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_17ClientSharedStateNtNtNtB9_7service3ipc7ServiceE12send_requestCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noundef nonnull align 16 %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @256, ptr %i.i, align 8, !captures !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 22, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 6384 ; 2 uses
  %i.m = load atomic i64, ptr %i.l monotonic, align 16 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3560 ; 2 uses
  %.val = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 2248
  %i.p = tail call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.o) #24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !6
  %.not = icmp ugt i64 %i.r, %i.m
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.s = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = tail call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 8 %i.t) #24
  %i.v = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.u) #24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 6320
  %i.x = tail call noundef zeroext i1 @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE12update_stateCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 8 %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.w) #24
  br i1 %i.x, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.y = tail call fastcc { i8, i8 } @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_17ClientSharedStateNtNtNtB9_7service3ipc7ServiceE24force_update_connectionsCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %1) #24 ; 2 uses
  %i.z = extractvalue { i8, i8 } %i.y, 0          ; 2 uses
  %.not.i = icmp eq i8 %i.z, 2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBD_7service3ipc7ServiceENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.h, ptr %i.aa, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.g, ptr noundef nonnull @257, ptr noundef nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -1, ptr %i.ab, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.ac = extractvalue { i8, i8 } %i.y, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBD_7service3ipc7ServiceENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.48.0..sroa_idx.i, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.a, ptr noundef nonnull @258, ptr noundef nonnull inttoptr (i64 189 to ptr)) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBD_7service3ipc7ServiceENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.436.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @255, ptr noundef nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0.insert.ext.i = zext i8 %i.ac to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.01.0.insert.ext.i = zext nneg i8 %i.z to i16
  %.sroa.01.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i16 %.sroa.01.0.insert.insert.i, ptr %i.ad, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4992
  %i.af = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE17set_channel_stateCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %i.ae, i64 noundef %4, i64 noundef %5) #24 ; 0 uses
  %i.ag = atomicrmw add ptr %i.l, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE14deliver_offsetCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull align 16 %1, i64 noundef %2, i64 noundef %3, i64 noundef 0) #24
  %i.ah = load i8, ptr %i.c, align 8, !range !24, !noundef !6
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.039.0.copyload = load i16, ptr %i.aj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i16 %.sroa.039.0.copyload, ptr %i.ak, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.h
  %.sink = phi i8 [ 0, %bb.h ], [ 1, %bb.g ], [ 1, %bb.e ], [ 1, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i8, i8 } @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_17ClientSharedStateNtNtNtB9_7service3ipc7ServiceE24force_update_connectionsCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3627 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i8 1 monotonic, align 1 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4992
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6256
  %i.f = atomicrmw add ptr %i.e, i8 1 monotonic, align 1 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6320
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE8for_eachNCNvMs5_NtNtB1u_4port6clientINtB34_17ClientSharedStateNtNtB1s_3ipc7ServiceE24force_update_connections0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noundef nonnull align 16 %0, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #24
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %i.d) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 2 uses
  %i.i = load i64, ptr %i.h, align 16, !noundef !6 ; 3 uses
  %i.j = icmp ult i64 %i.i, 7896722634293473
  call void @llvm.assume(i1 %i.j)
  %.not5.i = icmp eq i64 %i.i, 0
  br i1 %.not5.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2648
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.01.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.l, %bb.f ] ; 5 uses
  %i.l = add nuw nsw i64 %.sroa.01.04.i, 1        ; 2 uses
  %i.m = load i64, ptr %i.h, align 16, !noundef !6 ; 2 uses
  %i.n = icmp ult i64 %.sroa.01.04.i, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw [1168 x i8], ptr %i.o, i64 %.sroa.01.04.i ; 2 uses
  %i.q = load i64, ptr %i.p, align 16, !range !11, !noundef !6
  %.not.i = icmp eq i64 %i.q, 2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.04.i, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1152
  %i.s = load atomic i8, ptr %i.r monotonic, align 16
  %i.t = load atomic i8, ptr %i.b monotonic, align 1
  %i.u = icmp eq i8 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.c
  %exitcond.not.i = icmp eq i64 %i.l, %i.i
  br i1 %exitcond.not.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.b

bb.g:                                             ; preds = %bb.e
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE17remove_connectionCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %0, i64 noundef %.sroa.01.04.i) #24
  br label %bb.f

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.f, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.w = load i8, ptr %i.a, align 1, !range !20, !noundef !6
  %i.x = load i8, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = insertvalue { i8, i8 } poison, i8 %i.w, 0
  %i.z = insertvalue { i8, i8 } %i.y, i8 %i.x, 1
  ret { i8, i8 } %i.z
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_17ClientSharedStateNtNtNtB9_7service5local7ServiceE12send_requestCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noundef nonnull align 16 %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @256, ptr %i.i, align 8, !captures !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 22, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 6320 ; 2 uses
  %i.m = load atomic i64, ptr %i.l monotonic, align 16 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3784 ; 2 uses
  %.val = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 1112
  %i.p = tail call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.o) #24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !6
  %.not = icmp ugt i64 %i.r, %i.m
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.s = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.t = getelementptr i8, ptr %i.s, i64 832
  %.val.i = load ptr, ptr %i.t, align 8, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noundef !6
  %i.w = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.v) #24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 6256
  %i.y = tail call noundef zeroext i1 @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE12update_stateCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 8 %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.x) #24
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = tail call fastcc { i8, i8 } @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_17ClientSharedStateNtNtNtB9_7service5local7ServiceE24force_update_connectionsCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %1) #24 ; 2 uses
  %i.aa = extractvalue { i8, i8 } %i.z, 0         ; 2 uses
  %.not.i = icmp eq i8 %i.aa, 2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBD_7service5local7ServiceENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.420.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.424.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.h, ptr %i.ab, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.g, ptr noundef nonnull @257, ptr noundef nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -1, ptr %i.ac, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.ad = extractvalue { i8, i8 } %i.z, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBD_7service5local7ServiceENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.48.0..sroa_idx.i, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.a, ptr noundef nonnull @258, ptr noundef nonnull inttoptr (i64 189 to ptr)) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBD_7service5local7ServiceENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.432.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.436.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @2, ptr noundef nonnull %i.e, ptr noundef nonnull @255, ptr noundef nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0.insert.ext.i = zext i8 %i.ad to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.01.0.insert.ext.i = zext nneg i8 %i.aa to i16
  %.sroa.01.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i16 %.sroa.01.0.insert.insert.i, ptr %i.ae, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 3856
  %i.ag = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service5local7ServiceE17set_channel_stateCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %i.af, i64 noundef %4, i64 noundef %5) #24 ; 0 uses
  %i.ah = atomicrmw add ptr %i.l, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service5local7ServiceE14deliver_offsetCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull align 16 %1, i64 noundef %2, i64 noundef %3, i64 noundef 0) #24
  %i.ai = load i8, ptr %i.c, align 8, !range !24, !noundef !6
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.039.0.copyload = load i16, ptr %i.ak, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i16 %.sroa.039.0.copyload, ptr %i.al, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %i.ao, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.h
  %.sink = phi i8 [ 0, %bb.h ], [ 1, %bb.g ], [ 1, %bb.e ], [ 1, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i8, i8 } @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_17ClientSharedStateNtNtNtB9_7service5local7ServiceE24force_update_connectionsCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3851 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i8 1 monotonic, align 1 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3856
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.f = atomicrmw add ptr %i.e, i8 1 monotonic, align 1 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6256
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE8for_eachNCNvMs5_NtNtB1u_4port6clientINtB34_17ClientSharedStateNtNtB1s_5local7ServiceE24force_update_connections0ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noundef nonnull align 16 %0, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #24
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service5local7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %i.d) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 3 uses
  %i.j = icmp ult i64 %i.i, 6625985658660041
  call void @llvm.assume(i1 %i.j)
  %.not5.i = icmp eq i64 %i.i, 0
  br i1 %.not5.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service5local7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.01.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.l, %bb.f ] ; 5 uses
  %i.l = add nuw nsw i64 %.sroa.01.04.i, 1        ; 2 uses
  %i.m = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.n = icmp ult i64 %.sroa.01.04.i, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 16, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw [1392 x i8], ptr %i.o, i64 %.sroa.01.04.i ; 2 uses
  %i.q = load i64, ptr %i.p, align 16, !range !13, !noundef !6
  %.not.i = icmp eq i64 %i.q, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.04.i, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1376
  %i.s = load atomic i8, ptr %i.r monotonic, align 16
  %i.t = load atomic i8, ptr %i.b monotonic, align 1
  %i.u = icmp eq i8 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.c
  %exitcond.not.i = icmp eq i64 %i.l, %i.i
  br i1 %exitcond.not.i, label %_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service5local7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.b

bb.g:                                             ; preds = %bb.e
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service5local7ServiceE17remove_connectionCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noundef nonnull align 16 %0, i64 noundef %.sroa.01.04.i) #24
  br label %bb.f

_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service5local7ServiceE30finish_update_connection_cycleCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.f, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.w = load i8, ptr %i.a, align 1, !range !20, !noundef !6
  %i.x = load i8, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = insertvalue { i8, i8 } poison, i8 %i.w, 0
  %i.z = insertvalue { i8, i8 } %i.y, i8 %i.x, 1
  ret { i8, i8 } %i.z
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1376
  tail call void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBK_7service3ipc7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 16 dereferenceable(1280) %i.c) #24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2656 ; 2 uses
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsEENtNtNtBM_3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d) #24
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsEENtNtNtBT_3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d) #24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2680 ; 2 uses
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecyENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #24
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecyENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #24
  tail call void @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage4fileNtB5_7StorageNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 16 dereferenceable(2704) %i.b) #24
  tail call void @_RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4FileNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 16 dereferenceable(2704) %i.b) #24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  tail call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.f) #24
  %i.g = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.g, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc4WeakINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1f_7service3ipc7ServiceERNtNtBG_5alloc6GlobalEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.h, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc4WeakINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1f_7service3ipc7ServiceERNtNtBG_5alloc6GlobalEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 2720, i64 noundef range(i64 1, 536870913) 16) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc4WeakINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1f_7service3ipc7ServiceERNtNtBG_5alloc6GlobalEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc4WeakINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1f_7service3ipc7ServiceERNtNtBG_5alloc6GlobalEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtBK_7service5local7ServiceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  tail call void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBK_7service5local7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 16 dereferenceable(1280) %i.c) #24
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsEENtNtNtBM_3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 16 dereferenceable(2416) %i.b) #24
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsEENtNtNtBT_3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 16 dereferenceable(2416) %i.b) #24
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecyENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #24
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecyENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  tail call void @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_localNtB5_7StorageNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1072) %i.e) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13762)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !13763, !nonnull !6, !noundef !6
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !13764
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtBI_7service5local7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1072) %i.e) #27
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtBI_7service5local7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtBI_7service5local7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a, %bb.b
  %i.i = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc4WeakINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1f_7service5local7ServiceERNtNtBG_5alloc6GlobalEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtBI_7service5local7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.j, align 8
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc4WeakINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1f_7service5local7ServiceERNtNtBG_5alloc6GlobalEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 2432, i64 noundef range(i64 1, 536870913) 16) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc4WeakINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1f_7service5local7ServiceERNtNtBG_5alloc6GlobalEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc2rc4WeakINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtB1f_7service5local7ServiceERNtNtBG_5alloc6GlobalEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtBI_7service5local7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.c, %bb.d
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13780)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 6304
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !alias.scope !13781
end_hunk_0
