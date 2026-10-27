Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/benchmark_request_response.benchmark_request_response.ce836a4c94fcd494-cgu.08?download=true
inline.NumInlined: 1211
inline.NumDeleted: 411
begin_hunk_0_@_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service5local7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response:bb.a

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECshJgtdScfPDc_26benchmark_request_response.exit.thread: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service5local7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.af

bb.ad:                                            ; preds = %bb.m
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service5local7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef align 8 dereferenceable(2712) %i.x) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #16
  unreachable

bb.ae:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 160
  br label %bb.ac

bb.af:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECshJgtdScfPDc_26benchmark_request_response.exit.thread, %bb.b
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.iw) #15
  %i.ix = load i128, ptr %1, align 16, !range !16, !alias.scope !1341, !noundef !5
  %i.iy = icmp eq i128 %i.ix, 0
  br i1 %i.iy, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.iz) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE7receiveCshJgtdScfPDc_26benchmark_request_response(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 11 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = alloca [112 x i8], align 16              ; 17 uses
  %i.f = alloca [8 x i8], align 8                 ; 9 uses
  %.sroa.5.sroa.0 = alloca [30 x i8], align 2     ; 3 uses
  %i.g = alloca [80 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !noalias !1375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1375
  %i.h = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #15, !noalias !1376
  store ptr %i.h, ptr %i.c, align 8, !noalias !1375
  %i.i = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #15, !noalias !1376
  %i.j = call fastcc { i8, i8 } @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_17SharedServerStateNtNtNtB9_7service14ipc_threadsafe7ServiceE18update_connectionsCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.i) #15, !noalias !1376 ; 2 uses
  %i.k = extractvalue { i8, i8 } %i.j, 0          ; 2 uses
  %.not.i94 = icmp eq i8 %i.k, 2
  br i1 %.not.i94, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.lr.ph, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.lr.ph: ; preds = %bb.a
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %.sroa.615.sroa.4.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.615.sroa.5.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.615.sroa.6.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.val18 = load ptr, ptr %1, align 8             ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val19 = load i64, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !8
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread: ; preds = %.backedge, %bb.a
  %.lcssa67 = phi { i8, i8 } [ %i.j, %bb.a ], [ %i.bn, %.backedge ]
  %.lcssa = phi i8 [ %i.k, %bb.a ], [ %i.bo, %.backedge ] ; 2 uses
  %i.w = extractvalue { i8, i8 } %.lcssa67, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1377
  store ptr %i.d, ptr %i.b, align 8, !noalias !1377
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBD_7service14ipc_threadsafe7ServiceyuyuENtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !1377
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noundef nonnull @29, ptr noundef nonnull inttoptr (i64 199 to ptr)) #15, !noalias !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1377
  %i.x = icmp ult i8 %.lcssa, 2
  call void @llvm.assume(i1 %i.x)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #15, !noalias !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit59

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.lr.ph, %.backedge
  %i.y = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #15, !noalias !1378
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4992
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceE7receiveCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.g, ptr noundef nonnull align 16 %i.z, i64 noundef 0) #15
  %.pr = load i128, ptr %i.g, align 16            ; 2 uses
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #15, !noalias !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = icmp eq i128 %.pr, 2
  %.pre = load i8, ptr %.sroa.413.0..sroa_idx, align 16 ; 3 uses
  %.pre125 = load i8, ptr %.sroa.514.0..sroa_idx, align 1 ; 3 uses
  br i1 %i.aa, label %.loopexit59, label %bb.b

.loopexit59:                                      ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread
  %i.ab = phi i8 [ %i.w, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread ], [ %.pre125, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit ]
  %i.ac = phi i8 [ %.lcssa, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread ], [ %.pre, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ab, ptr %i.ae, align 2
  store i8 1, ptr %0, align 16
  br label %bb.h

bb.b:                                             ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.sroa.0, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.615.0..sroa_idx, i64 30, i1 false)
  %.sroa.615.sroa.4.0.copyload = load ptr, ptr %.sroa.615.sroa.4.0..sroa.615.0..sroa_idx.sroa_idx, align 16 ; 5 uses
  %.sroa.615.sroa.5.0.copyload = load ptr, ptr %.sroa.615.sroa.5.0..sroa.615.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.615.sroa.6.0.copyload = load ptr, ptr %.sroa.615.sroa.6.0..sroa.615.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.af = trunc i128 %.pr to i1
  br i1 %i.af, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ag = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) #15
  store ptr %i.ag, ptr %i.f, align 8
  %i.ah = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #15 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.615.sroa.4.0.copyload, i64 16
  %.val = load i128, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 2656
  %i.ak = load i64, ptr %i.aj, align 16, !noundef !5 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 7896722634293473
  call void @llvm.assume(i1 %i.al)
  %.not9.i = icmp eq i64 %i.ak, 0
  br i1 %.not9.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 2648
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.02.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ao, %bb.f ] ; 4 uses
  %i.ao = add nuw nsw i64 %.sroa.02.04.i, 1       ; 2 uses
  %i.ap = getelementptr inbounds nuw [1168 x i8], ptr %i.an, i64 %.sroa.02.04.i ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 16, !range !21, !noundef !5
  %.not.i20 = icmp eq i64 %i.aq, 2
  br i1 %.not.i20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1136
  %i.as = load i128, ptr %i.ar, align 16, !noundef !5
  %i.at = icmp eq i128 %i.as, %.val
  br i1 %i.at, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %exitcond.not.i = icmp eq i64 %i.ao, %i.ak
  br i1 %exitcond.not.i, label %.loopexit, label %bb.d

bb.g:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 16
  store i8 0, ptr %0, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit29, %bb.g, %.loopexit59
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !1381
  %i.au = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 24, 7289) 24, i64 noundef range(i64 8, 17) 8) #15, !noalias !1381 ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.j, label %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i, !prof !20

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #17, !noalias !1381
  unreachable

_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  store i64 1, ptr %i.au, align 8, !noalias !1382
  %.sroa.4.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx1.i, align 8, !noalias !1382
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !1382
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.615.sroa.4.0.copyload, i64 32
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !noalias !1382
  %i.ay = atomicrmw add ptr %.val18, i64 1 monotonic, align 8, !noalias !1382
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.k, label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit

bb.k:                                             ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.trap()
  unreachable

_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i
  store ptr %.sroa.615.sroa.4.0.copyload, ptr %i.m, align 16, !alias.scope !1379
  store ptr %.sroa.615.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1379
  store ptr %.sroa.615.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !1379
  store ptr %.val18, ptr %i.n, align 8, !alias.scope !1379
  store ptr %i.au, ptr %i.o, align 16, !alias.scope !1379
  store i64 %.val19, ptr %i.p, align 8, !alias.scope !1379
  store i8 %.pre, ptr %i.e, align 16, !alias.scope !1383
  store i8 %.pre125, ptr %.sroa.7.0..sroa_idx, align 1, !alias.scope !1383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.sroa.0, i64 30, i1 false)
  %i.ba = shufflevector <2 x i64> %i.ax, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ba, ptr %i.q, align 16, !alias.scope !1379
  store i64 %.sroa.02.04.i, ptr %i.s, align 16, !alias.scope !1379
  br i1 %i.v, label %bb.l, label %_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service14ipc_threadsafe7ServiceyuyuE12is_connectedCshJgtdScfPDc_26benchmark_request_response.exit

.loopexit:                                        ; preds = %bb.f, %bb.c
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.v, label %bb.p, label %.backedge

_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service14ipc_threadsafe7ServiceyuyuE12is_connectedCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1384
  %i.bb = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #15
  store ptr %i.bb, ptr %i.a, align 8, !noalias !1384
  %i.bc = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #15
  %.sroa.01.0.copyload.i = load i64, ptr %i.r, align 8, !alias.scope !1384
  %.sroa.03.0.copyload.i = load i64, ptr %i.q, align 16, !alias.scope !1384
  %i.bd = call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE17has_channel_stateCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.bc, i64 noundef %.sroa.01.0.copyload.i, i64 noundef %.sroa.02.04.i, i64 noundef %.sroa.03.0.copyload.i) #15
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1384
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service14ipc_threadsafe7ServiceyuyuE12is_connectedCshJgtdScfPDc_26benchmark_request_response.exit, %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.be, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false)
  store i8 0, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.m:                                             ; preds = %_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service14ipc_threadsafe7ServiceyuyuE12is_connectedCshJgtdScfPDc_26benchmark_request_response.exit
  call void @_RNvXs2_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service14ipc_threadsafe7ServiceyuyuENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(112) %i.e) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  %i.bf = load ptr, ptr %i.n, align 8, !alias.scope !1388, !nonnull !5, !noundef !5
  %i.bg = atomicrmw add ptr %i.bf, i64 -1 release, align 8, !noalias !1389
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.n, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service14ipc_threadsafe7ServiceEEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.i: ; preds = %bb.n, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %i.bi = load ptr, ptr %i.o, align 16, !alias.scope !1392, !nonnull !5, !noundef !5
  %i.bj = atomicrmw add ptr %i.bi, i64 -1 release, align 8, !noalias !1393
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.o, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx214active_request13ActiveRequestNtNtNtBG_7service14ipc_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit

bb.o:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.i
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic11AtomicUsizeE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx214active_request13ActiveRequestNtNtNtBG_7service14ipc_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx214active_request13ActiveRequestNtNtNtBG_7service14ipc_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge

.backedge:                                        ; preds = %.loopexit, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx214active_request13ActiveRequestNtNtNtBG_7service14ipc_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !noalias !1394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1394
  %i.bl = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #15, !noalias !1395
  store ptr %i.bl, ptr %i.c, align 8, !noalias !1394
  %i.bm = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #15, !noalias !1395
  %i.bn = call fastcc { i8, i8 } @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_17SharedServerStateNtNtNtB9_7service14ipc_threadsafe7ServiceE18update_connectionsCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.bm) #15, !noalias !1395 ; 2 uses
  %i.bo = extractvalue { i8, i8 } %i.bn, 0        ; 2 uses
  %.not.i = icmp eq i8 %i.bo, 2
  br i1 %.not.i, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread

bb.p:                                             ; preds = %.loopexit
  %.val16 = load ptr, ptr %1, align 8             ; 3 uses
  %.val17 = load i64, ptr %i.l, align 8
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !1396
  %i.bp = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 24, 7289) 24, i64 noundef range(i64 8, 17) 8) #15, !noalias !1396 ; 5 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.q, label %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i22, !prof !20

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #17, !noalias !1396
  unreachable

_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i22: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  store i64 1, ptr %i.bp, align 8, !noalias !1397
  %.sroa.4.0..sroa_idx1.i23 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx1.i23, align 8, !noalias !1397
  %.sroa.5.0..sroa_idx2.i24 = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx2.i24, align 8, !noalias !1397
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.615.sroa.4.0.copyload, i64 32
  %i.bs = load <2 x i64>, ptr %i.br, align 8, !noalias !1397
  %i.bt = atomicrmw add ptr %.val16, i64 1 monotonic, align 8, !noalias !1397
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit29

bb.r:                                             ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i22
  call void @llvm.trap()
  unreachable

_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit29: ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i22
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.546.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.sroa.0, i64 30, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.pre, ptr %i.bv, align 16
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.pre125, ptr %.sroa.445.0..sroa_idx, align 1
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.615.sroa.4.0.copyload, ptr %.sroa.647.0..sroa_idx, align 16
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.615.sroa.5.0.copyload, ptr %.sroa.748.0..sroa_idx, align 8
  %.sroa.849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.615.sroa.6.0.copyload, ptr %.sroa.849.0..sroa_idx, align 16
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.val17, ptr %.sroa.950.0..sroa_idx, align 8
  %.sroa.1051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bw = shufflevector <2 x i64> %i.bs, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.bw, ptr %.sroa.1051.0..sroa_idx, align 16
  %.sroa.1253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 -1, ptr %.sroa.1253.0..sroa_idx, align 16
  %.sroa.1354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.val16, ptr %.sroa.1354.0..sroa_idx, align 8
  %.sroa.1455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bp, ptr %.sroa.1455.0..sroa_idx, align 16
  store i8 0, ptr %0, align 16
  br label %bb.h
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE7receiveCshJgtdScfPDc_26benchmark_request_response(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 11 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = alloca [112 x i8], align 16              ; 17 uses
  %i.f = alloca [8 x i8], align 8                 ; 9 uses
  %.sroa.5.sroa.0 = alloca [30 x i8], align 2     ; 3 uses
  %i.g = alloca [80 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !noalias !1431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1431
  %i.h = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #15, !noalias !1432
  store ptr %i.h, ptr %i.c, align 8, !noalias !1431
  %i.i = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #15, !noalias !1432
  %i.j = call fastcc { i8, i8 } @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_17SharedServerStateNtNtNtB9_7service16local_threadsafe7ServiceE18update_connectionsCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.i) #15, !noalias !1432 ; 2 uses
  %i.k = extractvalue { i8, i8 } %i.j, 0          ; 2 uses
  %.not.i94 = icmp eq i8 %i.k, 2
  br i1 %.not.i94, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.lr.ph, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.lr.ph: ; preds = %bb.a
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %.sroa.615.sroa.4.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.615.sroa.5.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.615.sroa.6.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.val18 = load ptr, ptr %1, align 8             ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val19 = load i64, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !8
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread: ; preds = %.backedge, %bb.a
  %.lcssa67 = phi { i8, i8 } [ %i.j, %bb.a ], [ %i.bn, %.backedge ]
  %.lcssa = phi i8 [ %i.k, %bb.a ], [ %i.bo, %.backedge ] ; 2 uses
  %i.w = extractvalue { i8, i8 } %.lcssa67, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1433
  store ptr %i.d, ptr %i.b, align 8, !noalias !1433
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBD_7service16local_threadsafe7ServiceyuyuENtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !1433
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noundef nonnull @29, ptr noundef nonnull inttoptr (i64 199 to ptr)) #15, !noalias !1434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1433
  %i.x = icmp ult i8 %.lcssa, 2
  call void @llvm.assume(i1 %i.x)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #15, !noalias !1434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit59

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.lr.ph, %.backedge
  %i.y = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #15, !noalias !1434
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3856
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service16local_threadsafe7ServiceE7receiveCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.g, ptr noundef nonnull align 16 %i.z, i64 noundef 0) #15
  %.pr = load i128, ptr %i.g, align 16            ; 2 uses
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #15, !noalias !1434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = icmp eq i128 %.pr, 2
  %.pre = load i8, ptr %.sroa.413.0..sroa_idx, align 16 ; 3 uses
  %.pre125 = load i8, ptr %.sroa.514.0..sroa_idx, align 1 ; 3 uses
  br i1 %i.aa, label %.loopexit59, label %bb.b

.loopexit59:                                      ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread
  %i.ab = phi i8 [ %i.w, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread ], [ %.pre125, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit ]
  %i.ac = phi i8 [ %.lcssa, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread ], [ %.pre, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ab, ptr %i.ae, align 2
  store i8 1, ptr %0, align 16
  br label %bb.h

bb.b:                                             ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.sroa.0, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.615.0..sroa_idx, i64 30, i1 false)
  %.sroa.615.sroa.4.0.copyload = load ptr, ptr %.sroa.615.sroa.4.0..sroa.615.0..sroa_idx.sroa_idx, align 16 ; 5 uses
  %.sroa.615.sroa.5.0.copyload = load ptr, ptr %.sroa.615.sroa.5.0..sroa.615.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.615.sroa.6.0.copyload = load ptr, ptr %.sroa.615.sroa.6.0..sroa.615.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.af = trunc i128 %.pr to i1
  br i1 %i.af, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ag = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) #15
  store ptr %i.ag, ptr %i.f, align 8
  %i.ah = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #15 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.615.sroa.4.0.copyload, i64 16
  %.val = load i128, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 6625985658660041
  call void @llvm.assume(i1 %i.al)
  %.not9.i = icmp eq i64 %i.ak, 0
  br i1 %.not9.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.an = load ptr, ptr %i.am, align 16, !nonnull !5, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.02.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ao, %bb.f ] ; 4 uses
  %i.ao = add nuw nsw i64 %.sroa.02.04.i, 1       ; 2 uses
  %i.ap = getelementptr inbounds nuw [1392 x i8], ptr %i.an, i64 %.sroa.02.04.i ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 16, !range !22, !noundef !5
  %.not.i20 = icmp eq i64 %i.aq, -1
  br i1 %.not.i20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1360
  %i.as = load i128, ptr %i.ar, align 16, !noundef !5
  %i.at = icmp eq i128 %i.as, %.val
  br i1 %i.at, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %exitcond.not.i = icmp eq i64 %i.ao, %i.ak
  br i1 %exitcond.not.i, label %.loopexit, label %bb.d

bb.g:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 16
  store i8 0, ptr %0, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit29, %bb.g, %.loopexit59
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !1437
  %i.au = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 24, 7289) 24, i64 noundef range(i64 8, 17) 8) #15, !noalias !1437 ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.j, label %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i, !prof !20

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #17, !noalias !1437
  unreachable

_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  store i64 1, ptr %i.au, align 8, !noalias !1438
  %.sroa.4.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx1.i, align 8, !noalias !1438
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !1438
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.615.sroa.4.0.copyload, i64 32
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !noalias !1438
  %i.ay = atomicrmw add ptr %.val18, i64 1 monotonic, align 8, !noalias !1438
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.k, label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit

bb.k:                                             ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.trap()
  unreachable

_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i
  store ptr %.sroa.615.sroa.4.0.copyload, ptr %i.m, align 16, !alias.scope !1435
  store ptr %.sroa.615.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1435
  store ptr %.sroa.615.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !1435
  store ptr %.val18, ptr %i.n, align 8, !alias.scope !1435
  store ptr %i.au, ptr %i.o, align 16, !alias.scope !1435
  store i64 %.val19, ptr %i.p, align 8, !alias.scope !1435
  store i8 %.pre, ptr %i.e, align 16, !alias.scope !1439
  store i8 %.pre125, ptr %.sroa.7.0..sroa_idx, align 1, !alias.scope !1439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.sroa.0, i64 30, i1 false)
  %i.ba = shufflevector <2 x i64> %i.ax, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ba, ptr %i.q, align 16, !alias.scope !1435
  store i64 %.sroa.02.04.i, ptr %i.s, align 16, !alias.scope !1435
  br i1 %i.v, label %bb.l, label %_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service16local_threadsafe7ServiceyuyuE12is_connectedCshJgtdScfPDc_26benchmark_request_response.exit

.loopexit:                                        ; preds = %bb.f, %bb.c
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.v, label %bb.p, label %.backedge

_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service16local_threadsafe7ServiceyuyuE12is_connectedCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1440
  %i.bb = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #15
  store ptr %i.bb, ptr %i.a, align 8, !noalias !1440
  %i.bc = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #15
  %.sroa.01.0.copyload.i = load i64, ptr %i.r, align 8, !alias.scope !1440
  %.sroa.03.0.copyload.i = load i64, ptr %i.q, align 16, !alias.scope !1440
  %i.bd = call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE17has_channel_stateCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.bc, i64 noundef %.sroa.01.0.copyload.i, i64 noundef %.sroa.02.04.i, i64 noundef %.sroa.03.0.copyload.i) #15
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1440
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service16local_threadsafe7ServiceyuyuE12is_connectedCshJgtdScfPDc_26benchmark_request_response.exit, %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.be, ptr noundef nonnull align 16 dereferenceable(112) %i.e, i64 112, i1 false)
  store i8 0, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.m:                                             ; preds = %_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service16local_threadsafe7ServiceyuyuE12is_connectedCshJgtdScfPDc_26benchmark_request_response.exit
  call void @_RNvXs2_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service16local_threadsafe7ServiceyuyuENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(112) %i.e) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  %i.bf = load ptr, ptr %i.n, align 8, !alias.scope !1444, !nonnull !5, !noundef !5
  %i.bg = atomicrmw add ptr %i.bf, i64 -1 release, align 8, !noalias !1445
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.n, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service16local_threadsafe7ServiceEEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.i: ; preds = %bb.n, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.bi = load ptr, ptr %i.o, align 16, !alias.scope !1448, !nonnull !5, !noundef !5
  %i.bj = atomicrmw add ptr %i.bi, i64 -1 release, align 8, !noalias !1449
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.o, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx214active_request13ActiveRequestNtNtNtBG_7service16local_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit

bb.o:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.i
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic11AtomicUsizeE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx214active_request13ActiveRequestNtNtNtBG_7service16local_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx214active_request13ActiveRequestNtNtNtBG_7service16local_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge

.backedge:                                        ; preds = %.loopexit, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx214active_request13ActiveRequestNtNtNtBG_7service16local_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !noalias !1450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1450
  %i.bl = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #15, !noalias !1451
  store ptr %i.bl, ptr %i.c, align 8, !noalias !1450
  %i.bm = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #15, !noalias !1451
  %i.bn = call fastcc { i8, i8 } @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_17SharedServerStateNtNtNtB9_7service16local_threadsafe7ServiceE18update_connectionsCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.bm) #15, !noalias !1451 ; 2 uses
  %i.bo = extractvalue { i8, i8 } %i.bn, 0        ; 2 uses
  %.not.i = icmp eq i8 %i.bo, 2
  br i1 %.not.i, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread

bb.p:                                             ; preds = %.loopexit
  %.val16 = load ptr, ptr %1, align 8             ; 3 uses
  %.val17 = load i64, ptr %i.l, align 8
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !1452
  %i.bp = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 24, 7289) 24, i64 noundef range(i64 8, 17) 8) #15, !noalias !1452 ; 5 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.q, label %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i22, !prof !20

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #17, !noalias !1452
  unreachable

_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i22: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  store i64 1, ptr %i.bp, align 8, !noalias !1453
  %.sroa.4.0..sroa_idx1.i23 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx1.i23, align 8, !noalias !1453
  %.sroa.5.0..sroa_idx2.i24 = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx2.i24, align 8, !noalias !1453
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.615.sroa.4.0.copyload, i64 32
  %i.bs = load <2 x i64>, ptr %i.br, align 8, !noalias !1453
  %i.bt = atomicrmw add ptr %.val16, i64 1 monotonic, align 8, !noalias !1453
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit29

bb.r:                                             ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i22
  call void @llvm.trap()
  unreachable

_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit29: ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i22
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.546.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.sroa.0, i64 30, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.pre, ptr %i.bv, align 16
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.pre125, ptr %.sroa.445.0..sroa_idx, align 1
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.615.sroa.4.0.copyload, ptr %.sroa.647.0..sroa_idx, align 16
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.615.sroa.5.0.copyload, ptr %.sroa.748.0..sroa_idx, align 8
  %.sroa.849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.615.sroa.6.0.copyload, ptr %.sroa.849.0..sroa_idx, align 16
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.val17, ptr %.sroa.950.0..sroa_idx, align 8
  %.sroa.1051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bw = shufflevector <2 x i64> %i.bs, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.bw, ptr %.sroa.1051.0..sroa_idx, align 16
  %.sroa.1253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 -1, ptr %.sroa.1253.0..sroa_idx, align 16
  %.sroa.1354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.val16, ptr %.sroa.1354.0..sroa_idx, align 8
  %.sroa.1455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bp, ptr %.sroa.1455.0..sroa_idx, align 16
  store i8 0, ptr %0, align 16
  br label %bb.h
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceyuyuE7receiveCshJgtdScfPDc_26benchmark_request_response(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [112 x i8], align 16              ; 17 uses
  %i.f = alloca [8 x i8], align 8                 ; 9 uses
  %.sroa.5.sroa.0 = alloca [30 x i8], align 2     ; 3 uses
  %i.g = alloca [80 x i8], align 16               ; 13 uses
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !1525, !nonnull !5, !noundef !5 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !noalias !1526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1526
  %i.h = load i64, ptr %.val.i, align 8, !noalias !1527, !noundef !5 ; 2 uses
  %i.i = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.j, ptr %.val.i, align 8, !noalias !1527
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %._crit_edge, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit.i.lr.ph, !prof !29

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit.i.lr.ph: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 17 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 5008
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %.sroa.615.sroa.4.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.615.sroa.5.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.615.sroa.6.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 2672
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 2664
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val21 = load i64, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !8
  %i.ab = trunc nuw i8 %i.aa to i1                ; 2 uses
  br label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit.i

._crit_edge:                                      ; preds = %.backedge, %bb.a
  call void @llvm.trap()
  unreachable

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit.i: ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit.i.lr.ph, %.backedge
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  store ptr %.val.i, ptr %i.c, align 8, !noalias !1529
  %i.ac = call fastcc { i8, i8 } @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_17SharedServerStateNtNtNtB9_7service3ipc7ServiceE18update_connectionsCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.l) #15, !noalias !1528 ; 2 uses
  %i.ad = extractvalue { i8, i8 } %i.ac, 0        ; 3 uses
  %.not.i = icmp eq i8 %i.ad, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit.i
  %i.ae = extractvalue { i8, i8 } %i.ac, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1529
  store ptr %i.d, ptr %i.b, align 8, !noalias !1529
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBD_7service3ipc7ServiceyuyuENtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !1529
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noundef nonnull @29, ptr noundef nonnull inttoptr (i64 199 to ptr)) #15, !noalias !1528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1529
  %i.af = icmp ult i8 %i.ad, 2
  call void @llvm.assume(i1 %i.af)
  store i8 %i.ad, ptr %i.m, align 16, !alias.scope !1528
  store i8 %i.ae, ptr %i.n, align 1, !alias.scope !1528
  store i128 2, ptr %i.g, align 16, !alias.scope !1528
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.ag = load ptr, ptr %i.c, align 8, !alias.scope !1533, !noalias !1529, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !1534, !noundef !5
  %i.ai = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.ag, align 8, !noalias !1534
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split.i, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit

bb.c:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit.i
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE7receiveCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.g, ptr noundef nonnull align 16 %i.o, i64 noundef 0) #15
  %i.ak = load i64, ptr %.val.i, align 8, !noalias !1535, !noundef !5
  %i.al = add i64 %i.ak, -1                       ; 2 uses
  store i64 %i.al, ptr %.val.i, align 8, !noalias !1535
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split.i, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split.i: ; preds = %bb.c, %bb.b
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #14, !noalias !1528
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.b, %bb.c, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = load i128, ptr %i.g, align 16, !range !30, !noundef !5 ; 2 uses
  %i.ao = icmp eq i128 %i.an, 2
  %i.ap = load i8, ptr %i.m, align 16             ; 3 uses
  %i.aq = load i8, ptr %i.n, align 1              ; 3 uses
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ap, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.aq, ptr %i.as, align 2
  store i8 1, ptr %0, align 16
  br label %bb.l

bb.e:                                             ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.sroa.0, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.615.0..sroa_idx, i64 30, i1 false)
  %.sroa.615.sroa.4.0.copyload = load ptr, ptr %.sroa.615.sroa.4.0..sroa.615.0..sroa_idx.sroa_idx, align 16 ; 6 uses
  %.sroa.615.sroa.5.0.copyload = load ptr, ptr %.sroa.615.sroa.5.0..sroa.615.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.615.sroa.6.0.copyload = load ptr, ptr %.sroa.615.sroa.6.0..sroa.615.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.at = trunc nuw i128 %i.an to i1
  br i1 %i.at, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.au = load i64, ptr %.val.i, align 8, !noundef !5 ; 4 uses
  %i.av = icmp ne i64 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = add i64 %i.au, 1                        ; 2 uses
  store i64 %i.aw, ptr %.val.i, align 8
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.g:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.f
  store ptr %.val.i, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.615.sroa.4.0.copyload, i64 16
  %.val17 = load i128, ptr %i.ay, align 4
  %i.az = load i64, ptr %i.p, align 16, !noundef !5 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 7896722634293473
  call void @llvm.assume(i1 %i.ba)
  %.not9.i = icmp eq i64 %i.az, 0
  br i1 %.not9.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  %i.bb = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %.sroa.02.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %bb.j ] ; 4 uses
  %i.bc = add nuw nsw i64 %.sroa.02.04.i, 1       ; 2 uses
  %i.bd = getelementptr inbounds nuw [1168 x i8], ptr %i.bb, i64 %.sroa.02.04.i ; 2 uses
  %i.be = load i64, ptr %i.bd, align 16, !range !21, !noundef !5
  %.not.i22 = icmp eq i64 %i.be, 2
  br i1 %.not.i22, label %bb.j, label %bb.i

end_hunk_0
begin_hunk_1_@_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service3ipc7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response:bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i32 %..i, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  store i8 %i.bt, ptr %i.dj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.dk = zext i8 %i.bt to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.dk, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32) #15
  %i.dl = load i64, ptr %i.d, align 8, !range !15, !noundef !5
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !range !27, !noundef !5 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.dm, label %bb.j, label %bb.k, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.dq = load i64, ptr %i.dp, align 8
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.dr = load ptr, ptr %i.dp, align 8, !nonnull !5, !noundef !5
  %i.ds = icmp samesign uge i64 %i.do, %i.dk
  call void @llvm.assume(i1 %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.do, ptr %i.x, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.dr, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store i64 0, ptr %i.du, align 8
  %.not153 = icmp eq i8 %i.bt, 0
  br i1 %.not153, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.val112 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %.val112, i64 7280
  %.val = load ptr, ptr %i.dv, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dw = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.dx = icmp slt i64 %i.dw, 0
  br i1 %i.dx, label %bb.l, label %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.trap()
  unreachable

_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !5
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2E_7service3ipc7ServiceEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1Y_4iter8adapters3map3MapINtNtNtB1Y_3ops5range5RangejENCNvMs9_NtB2C_6clientINtB5C_6ClientB3x_yuyuE3new0EE9from_iterCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, i64 noundef 0, i64 noundef %i.dz) #15
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !5 ; 2 uses
  %i.ec = load i8, ptr %i.ay, align 8, !range !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.ed, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.t, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false)
  %.val119 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ee = atomicrmw add ptr %.val119, i64 1 monotonic, align 8
  %i.ef = icmp slt i64 %i.ee, 0
  br i1 %i.ef, label %bb.m, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit

bb.m:                                             ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.eh = load i8, ptr %i.eg, align 1, !range !8, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(888) %i.bu, i64 888, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(48) %i.u, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(64) %i.t, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.val111 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.ei = getelementptr inbounds nuw i8, ptr %.val111, i64 7280
  %.val105 = load ptr, ptr %i.ei, align 8, !nonnull !5, !noundef !5
  %i.ej = getelementptr inbounds nuw i8, ptr %.val105, i64 248
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !5 ; 2 uses
  %i.el = load i64, ptr %i.dy, align 8, !noundef !5 ; 2 uses
  %i.em = add i64 %i.el, %i.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RINvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB6_14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtBa_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE7from_fnNCNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB4X_6ClientNtNtNtB51_7service3ipc7ServiceyuyuE3news_0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.el) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  %i.en = load ptr, ptr %i.r, align 8, !alias.scope !1806, !noundef !5
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.n, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.n:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1807
  %i.ep = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.eq = load i8, ptr %i.ep, align 8, !range !26, !alias.scope !1806, !noundef !5
  store i8 %i.eq, ptr %i.c, align 1, !noalias !1807
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 31, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #16, !noalias !1808
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.r, i64 32, i1 false), !alias.scope !1808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.val118 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.er = atomicrmw add ptr %.val118, i64 1 monotonic, align 8
  %i.es = icmp slt i64 %i.er, 0
  br i1 %i.es, label %bb.o, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit131

bb.o:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit131: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.ek) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  %i.et = load ptr, ptr %i.q, align 8, !alias.scope !1809, !noundef !5
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.p, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.p:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1810
  %i.ev = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ew = load i8, ptr %i.ev, align 8, !range !26, !alias.scope !1809, !noundef !5
  store i8 %i.ew, ptr %i.b, align 1, !noalias !1810
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #16, !noalias !1811
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.1415.sroa.5, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.67, ptr noundef nonnull align 16 dereferenceable(48) %i.ex, i64 48, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ay, i64 952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %.sroa.1314, ptr noundef nonnull align 8 dereferenceable(888) %i.ey, i64 888, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.fa = load i64, ptr %i.ez, align 8, !noundef !5
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !range !8, !noundef !5
  call void @_RNvMs3_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %.sroa.1011, i64 noundef %i.em) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.38)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.40)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.bp, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB2_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdEE14new_with_allocCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %i.bj) #15
  %i.fd = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i8 0, i64 16, i1 false)
  store i64 %i.bj, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i8 1, ptr %i.ff, align 8
  %.not154 = icmp eq i64 %i.bj, 0
  br i1 %.not154, label %._crit_edge152, label %.lr.ph151

.lr.ph:                                           ; preds = %bb.k, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit
  %.sroa.0100.0149 = phi i8 [ %i.fg, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit ], [ 0, %bb.k ]
  %i.fg = add nuw i8 %.sroa.0100.0149, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, i64 noundef %i.bj) #15
  %i.fh = load i64, ptr %i.du, align 8, !alias.scope !1812, !noundef !5 ; 3 uses
  %i.fi = load i64, ptr %i.x, align 8, !range !28, !alias.scope !1812, !noundef !5
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.q, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit

bb.q:                                             ; preds = %.lr.ph
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8grow_oneCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #14, !noalias !1813
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %.lr.ph, %bb.q
  %i.fk = load ptr, ptr %i.dt, align 8, !alias.scope !1812, !nonnull !5, !noundef !5
  %i.fl = getelementptr inbounds nuw [32 x i8], ptr %i.fk, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fl, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.fm = add i64 %i.fh, 1
  store i64 %i.fm, ptr %i.du, align 8, !alias.scope !1812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %exitcond.not = icmp eq i8 %i.fg, %i.bt
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge152:                                   ; preds = %.lr.ph151, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.40.6320..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 24
  call void @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE9get_stateCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %.sroa.40.6320..sroa_idx, ptr noundef nonnull align 8 %i.bm) #15
  %.sroa.38.6272..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.38, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.38.6272..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %.sroa.23.3632..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.23, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1360) %.sroa.23.3632..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1360) %i.ai, i64 1360, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !1814
  %i.fn = call noundef align 16 dereferenceable_or_null(6464) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 24, 7289) 6464, i64 noundef range(i64 8, 17) 16) #15, !noalias !1814 ; 49 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.r, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.r:                                             ; preds = %._crit_edge152
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 6464) #17, !noalias !1814
  unreachable

.lr.ph151:                                        ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, %.lr.ph151
  %.sroa.065.0150 = phi i64 [ %i.fp, %.lr.ph151 ], [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit ] ; 2 uses
  %i.fp = add nuw i64 %.sroa.065.0150, 1          ; 2 uses
  %i.fq = call noundef zeroext i1 @_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE9push_implCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef %.sroa.065.0150) #15 ; 0 uses
  %exitcond155.not = icmp eq i64 %i.fp, %i.bj
  br i1 %exitcond155.not, label %._crit_edge152, label %.lr.ph151

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %._crit_edge152
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fn) ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1815
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0, i64 64, i1 false)
  %.sroa.4139.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 80
  store i128 %.sroa.033.0.copyload, ptr %.sroa.4139.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1816
  %.sroa.5140.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5140.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  %.sroa.6141.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2488) %.sroa.6141.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(2488) %i.p, i64 2488, i1 false)
  %.sroa.7142.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 2632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7142.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  %.sroa.8143.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 2656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8143.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  %.sroa.9144.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 2680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.9144.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10, i64 888, i1 false)
  %.sroa.10145.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3568
  store ptr %.val, ptr %.sroa.10145.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1816
  %.sroa.11.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3576
  store ptr %.val119, ptr %.sroa.11.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1816
  %.sroa.12.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3584
  store i64 %i.eb, ptr %.sroa.12.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1816
  %.sroa.13.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3592
  store i64 %i.eb, ptr %.sroa.13.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1816
  %.sroa.14.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3600
  store i64 %i.bc, ptr %.sroa.14.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1816
  %.sroa.15.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3608
  store i64 %i.bj, ptr %.sroa.15.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1816
  %.sroa.16.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3616
  store i64 0, ptr %.sroa.16.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1816
  %.sroa.17.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3624
  store i64 1, ptr %.sroa.17.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1816
  %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3632
  store i64 0, ptr %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1816
  %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3640
  store i8 %i.ec, ptr %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1816
  %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3641
  store i8 %i.eh, ptr %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1816
  %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3642
  store i8 %i.bt, ptr %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2, !noalias !1816
  %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3643 ; 2 uses
  store i8 0, ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1816
  %.sroa.23.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1364) %.sroa.23.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 4 dereferenceable(1364) %.sroa.23, i64 1364, i1 false), !noalias !1816
  %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5008 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.05, i64 32, i1 false)
  %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5040
  store i128 %.sroa.033.0.copyload, ptr %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1816
  %.sroa.26.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.26.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.67, i64 48, i1 false)
  %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5104
  store i64 %i.dd, ptr %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1816
  %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5112
  store i64 %i.fa, ptr %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1816
  %.sroa.29.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5120
  store i64 %i.bj, ptr %.sroa.29.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1816
  %.sroa.30.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.30.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.1011, i64 200, i1 false)
  %.sroa.31.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5328
  store i64 -1, ptr %.sroa.31.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1816
  %.sroa.32.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5336
  store ptr %.val118, ptr %.sroa.32.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1816
  %.sroa.33.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %.sroa.33.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(888) %.sroa.1314, i64 888, i1 false)
  %.sroa.34.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6232
  store i64 1, ptr %.sroa.34.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1816
  %.sroa.35.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.35.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.1415.sroa.5, i64 32, i1 false)
  %.sroa.36.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6272 ; 2 uses
  store i8 0, ptr %.sroa.36.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1816
  %.sroa.37.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6273
  store i8 %i.fc, ptr %.sroa.37.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1816
  %.sroa.38.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.38.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.38, i64 30, i1 false), !noalias !1816
  %.sroa.39.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6304
  store i64 0, ptr %.sroa.39.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1816
  %.sroa.40.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.40.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.40, i64 88, i1 false), !noalias !1816
  %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6400
  store i64 0, ptr %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1816
  %.sroa.42.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42, i64 56, i1 false), !noalias !1816
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 16 dereferenceable(16) %i.aj, i64 16, i1 false)
  store ptr %i.fn, ptr %i.m, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.fs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 2, ptr %i.fn, align 16
  store ptr %i.fn, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.fu = atomicrmw add ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx, i8 1 monotonic, align 1 ; 0 uses
  %i.fv = atomicrmw add ptr %.sroa.36.0..sroa.5.0..sroa_idx.i.sroa_idx, i8 1 monotonic, align 1 ; 0 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 6336
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE8for_eachNCNvMs5_NtNtB1u_4port6clientINtB34_17ClientSharedStateNtNtB1s_3ipc7ServiceE24force_update_connections0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fw, ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i) #15
  %i.fx = load i8, ptr %i.a, align 1, !range !18, !noundef !5 ; 2 uses
  %i.fy = load i8, ptr %i.ft, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not104 = icmp eq i8 %i.fx, 2
  br i1 %.not104, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 %i.fx, ptr %i.k, align 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.fy, ptr %i.fz, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.m, ptr %i.j, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsp_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service3ipc7ServiceyuyuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.483.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.487.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.j, ptr noundef nonnull @47, ptr noundef nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  %i.ga = load ptr, ptr %i.l, align 8, !alias.scope !1820, !nonnull !5, !noundef !5 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !noalias !1820, !noundef !5
  %i.gc = add i64 %i.gb, -1                       ; 2 uses
  store i64 %i.gc, ptr %i.ga, align 8, !noalias !1820
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

bb.t:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  %i.ge = load i64, ptr %i.fn, align 16, !noalias !1821, !noundef !5
  %i.gf = add i64 %i.ge, -1                       ; 2 uses
  store i64 %i.gf, ptr %i.fn, align 16, !noalias !1821
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split: ; preds = %bb.t, %bb.s
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.val116 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.gh = getelementptr inbounds nuw i8, ptr %.val116, i64 16
  %i.gi = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 8 %i.gh) #15
  %i.gj = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.gi) #15
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_client_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.gj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.z) #15
  %i.gk = load i64, ptr %i.h, align 8, !range !15, !noundef !5
  %i.gl = trunc nuw i64 %i.gk to i1
  br i1 %i.gl, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit
  %.val125 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gm = load i64, ptr %.val125, align 8, !noundef !5 ; 2 uses
  %i.gn = icmp ne i64 %i.gm, 0
  call void @llvm.assume(i1 %i.gn)
  %i.go = icmp eq i64 %i.gm, -1
  br i1 %i.go, label %bb.v, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit134, !prof !20

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit134: ; preds = %bb.u
  %i.gp = getelementptr inbounds nuw i8, ptr %.val125, i64 6304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.gp, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.bi) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit

bb.w:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ak, ptr %i.g, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.491.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val107 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.gq = getelementptr inbounds nuw i8, ptr %.val107, i64 2248
  %i.gr = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.gq) #15
  %i.gs = getelementptr i8, ptr %i.gr, i64 40
  %.val124 = load i64, ptr %i.gs, align 8, !noundef !5
  store i64 %.val124, ptr %i.f, align 8
end_hunk_1
begin_hunk_2_@_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service5local7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response:bb.a
  store i32 %..i, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  store i8 %i.bu, ptr %i.dm, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.dn = zext i8 %i.bu to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.dn, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32) #15
  %i.do = load i64, ptr %i.d, align 8, !range !15, !noundef !5
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !range !27, !noundef !5 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.dp, label %bb.k, label %bb.l, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.dt = load i64, ptr %i.ds, align 8
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.du = load ptr, ptr %i.ds, align 8, !nonnull !5, !noundef !5
  %i.dv = icmp samesign uge i64 %i.dr, %i.dn
  call void @llvm.assume(i1 %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.dr, ptr %i.x, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.du, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store i64 0, ptr %i.dx, align 8
  %.not155 = icmp eq i8 %i.bu, 0
  br i1 %.not155, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.val114 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.dy = getelementptr inbounds nuw i8, ptr %.val114, i64 6144
  %.val106 = load ptr, ptr %i.dy, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dz = atomicrmw add ptr %.val106, i64 1 monotonic, align 8
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %bb.m, label %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service5local7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.trap()
  unreachable

_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service5local7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !5
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2E_7service5local7ServiceEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1Y_4iter8adapters3map3MapINtNtNtB1Y_3ops5range5RangejENCNvMs9_NtB2C_6clientINtB5E_6ClientB3x_yuyuE3new0EE9from_iterCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, i64 noundef 0, i64 noundef %i.ec) #15
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !5 ; 2 uses
  %i.ef = load i8, ptr %i.ay, align 8, !range !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.eg, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.t, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false)
  %.val121 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.eh = atomicrmw add ptr %.val121, i64 1 monotonic, align 8
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.n, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit

bb.n:                                             ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service5local7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service5local7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.ek = load i8, ptr %i.ej, align 1, !range !8, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(888) %i.bv, i64 888, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(48) %i.u, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(64) %i.t, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.val113 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.el = getelementptr inbounds nuw i8, ptr %.val113, i64 6144
  %.val107 = load ptr, ptr %i.el, align 8, !nonnull !5, !noundef !5
  %i.em = getelementptr inbounds nuw i8, ptr %.val107, i64 248
  %i.en = load i64, ptr %i.em, align 8, !noundef !5 ; 2 uses
  %i.eo = load i64, ptr %i.eb, align 8, !noundef !5 ; 2 uses
  %i.ep = add i64 %i.eo, %i.en
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RINvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB6_14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtBa_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE7from_fnNCNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB4X_6ClientNtNtNtB51_7service5local7ServiceyuyuE3news_0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.eo) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  %i.eq = load ptr, ptr %i.r, align 8, !alias.scope !1880, !noundef !5
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.o, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.o:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1881
  %i.es = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.et = load i8, ptr %i.es, align 8, !range !26, !alias.scope !1880, !noundef !5
  store i8 %i.et, ptr %i.c, align 1, !noalias !1881
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 31, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #16, !noalias !1882
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.r, i64 32, i1 false), !alias.scope !1882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.val120 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.eu = atomicrmw add ptr %.val120, i64 1 monotonic, align 8
  %i.ev = icmp slt i64 %i.eu, 0
  br i1 %i.ev, label %bb.p, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit133

bb.p:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit133: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.en) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %i.ew = load ptr, ptr %i.q, align 8, !alias.scope !1883, !noundef !5
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.q, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.q:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1884
  %i.ey = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ez = load i8, ptr %i.ey, align 8, !range !26, !alias.scope !1883, !noundef !5
  store i8 %i.ez, ptr %i.b, align 1, !noalias !1884
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #16, !noalias !1885
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.1415.sroa.5, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.67, ptr noundef nonnull align 16 dereferenceable(48) %i.fa, i64 48, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ay, i64 952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %.sroa.1314, ptr noundef nonnull align 8 dereferenceable(888) %i.fb, i64 888, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.fd = load i64, ptr %i.fc, align 8, !noundef !5
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !range !8, !noundef !5
  call void @_RNvMs3_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service5local7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %.sroa.1011, i64 noundef %i.ep) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.40)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.bq, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointerINtB2_13OwningPointerINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdEE14new_with_allocCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %i.bj) #15
  %i.fg = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i8 0, i64 16, i1 false)
  store i64 %i.bj, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i8 1, ptr %i.fi, align 8
  %.not156 = icmp eq i64 %i.bj, 0
  br i1 %.not156, label %._crit_edge154, label %.lr.ph153

.lr.ph:                                           ; preds = %bb.l, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit
  %.sroa.0100.0151 = phi i8 [ %i.fj, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit ], [ 0, %bb.l ]
  %i.fj = add nuw i8 %.sroa.0100.0151, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, i64 noundef %i.bj) #15
  %i.fk = load i64, ptr %i.dx, align 8, !alias.scope !1886, !noundef !5 ; 3 uses
  %i.fl = load i64, ptr %i.x, align 8, !range !28, !alias.scope !1886, !noundef !5
  %i.fm = icmp eq i64 %i.fk, %i.fl
  br i1 %i.fm, label %bb.r, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit

bb.r:                                             ; preds = %.lr.ph
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8grow_oneCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #14, !noalias !1887
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %.lr.ph, %bb.r
  %i.fn = load ptr, ptr %i.dw, align 8, !alias.scope !1886, !nonnull !5, !noundef !5
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %i.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fo, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.fp = add i64 %i.fk, 1
  store i64 %i.fp, ptr %i.dx, align 8, !alias.scope !1886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %exitcond.not = icmp eq i8 %i.fj, %i.bu
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge154:                                   ; preds = %.lr.ph153, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.40.6256..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 24
  call void @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE9get_stateCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %.sroa.40.6256..sroa_idx, ptr noundef nonnull align 8 %i.bn) #15
  %.sroa.37.5136..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.37, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.37.5136..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %.sroa.23.3856..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.23, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.23.3856..sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.05, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !1888
  %i.fq = call noundef align 16 dereferenceable_or_null(6400) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 24, 7289) 6400, i64 noundef range(i64 8, 17) 16) #15, !noalias !1888 ; 50 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.s, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.s:                                             ; preds = %._crit_edge154
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 6400) #17, !noalias !1888
  unreachable

.lr.ph153:                                        ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, %.lr.ph153
  %.sroa.065.0152 = phi i64 [ %i.fs, %.lr.ph153 ], [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit ] ; 2 uses
  %i.fs = add nuw i64 %.sroa.065.0152, 1          ; 2 uses
  %i.ft = call noundef zeroext i1 @_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE9push_implCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef %.sroa.065.0152) #15 ; 0 uses
  %exitcond157.not = icmp eq i64 %i.fs, %i.bj
  br i1 %exitcond157.not, label %._crit_edge154, label %.lr.ph153

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %._crit_edge154
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1889
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0, i64 64, i1 false)
  %.sroa.4141.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  store i128 %.sroa.033.0.copyload, ptr %.sroa.4141.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1890
  %.sroa.5142.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5142.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  %.sroa.6143.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.6143.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  %.sroa.7144.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7144.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  %.sroa.8145.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2712) %.sroa.8145.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(2712) %i.p, i64 2712, i1 false)
  %.sroa.9146.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 2904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.9146.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10, i64 888, i1 false)
  %.sroa.10147.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3792
  store ptr %.val106, ptr %.sroa.10147.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1890
  %.sroa.11.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3800
  store ptr %.val121, ptr %.sroa.11.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1890
  %.sroa.12.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3808
  store i64 %i.ee, ptr %.sroa.12.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1890
  %.sroa.13.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3816
  store i64 %i.ee, ptr %.sroa.13.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1890
  %.sroa.14.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3824
  store i64 %i.bc, ptr %.sroa.14.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1890
  %.sroa.15.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3832
  store i64 %i.bj, ptr %.sroa.15.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1890
  %.sroa.16.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3840
  store i64 0, ptr %.sroa.16.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1890
  %.sroa.17.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3848
  store i64 1, ptr %.sroa.17.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1890
  %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3856
  store i64 0, ptr %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1890
  %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3864
  store i8 %i.ef, ptr %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1890
  %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3865
  store i8 %i.ek, ptr %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1890
  %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3866
  store i8 %i.bu, ptr %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2, !noalias !1890
  %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3867 ; 2 uses
  store i8 0, ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1890
  %.sroa.23.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.23.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.23, i64 36, i1 false), !noalias !1890
  %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3904
  store i128 %.sroa.033.0.copyload, ptr %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1890
  %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.67, i64 48, i1 false)
  %.sroa.26.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3968
  store i64 %i.dg, ptr %.sroa.26.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1890
  %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3976
  store i64 %i.fd, ptr %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1890
  %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3984
  store i64 %i.bj, ptr %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1890
  %.sroa.29.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.29.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.1011, i64 200, i1 false)
  %.sroa.30.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 4192
  store i64 -1, ptr %.sroa.30.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1890
  %.sroa.31.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 4200
  store ptr %.val120, ptr %.sroa.31.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1890
  %.sroa.32.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 4208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %.sroa.32.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(888) %.sroa.1314, i64 888, i1 false)
  %.sroa.33.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 5096
  store i64 1, ptr %.sroa.33.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1890
  %.sroa.34.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 5104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.34.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.1415.sroa.5, i64 32, i1 false)
  %.sroa.35.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 5136 ; 2 uses
  store i8 0, ptr %.sroa.35.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1890
  %.sroa.36.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 5137
  store i8 %i.ff, ptr %.sroa.36.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1890
  %.sroa.37.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 5138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.37.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.37, i64 30, i1 false), !noalias !1890
  %.sroa.38.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 5168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1072) %.sroa.38.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(1072) %i.ai, i64 1072, i1 false)
  %.sroa.39.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 6240
  store i64 0, ptr %.sroa.39.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1890
  %.sroa.40.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 6248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.40.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.40, i64 88, i1 false), !noalias !1890
  %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 6336
  store i64 0, ptr %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1890
  %.sroa.42.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 6344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42, i64 56, i1 false), !noalias !1890
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 16 dereferenceable(16) %i.aj, i64 16, i1 false)
  store ptr %i.fq, ptr %i.m, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 2, ptr %i.fq, align 16
  store ptr %i.fq, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.fx = atomicrmw add ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx, i8 1 monotonic, align 1 ; 0 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 3872
  %i.fz = atomicrmw add ptr %.sroa.35.0..sroa.5.0..sroa_idx.i.sroa_idx, i8 1 monotonic, align 1 ; 0 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 6272
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE8for_eachNCNvMs5_NtNtB1u_4port6clientINtB34_17ClientSharedStateNtNtB1s_5local7ServiceE24force_update_connections0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ga, ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service5local7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.fy) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service5local7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i) #15
  %i.gb = load i8, ptr %i.a, align 1, !range !18, !noundef !5 ; 2 uses
  %i.gc = load i8, ptr %i.fw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not104 = icmp eq i8 %i.gb, 2
  br i1 %.not104, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 %i.gb, ptr %i.k, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.gc, ptr %i.gd, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.m, ptr %i.j, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsp_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service5local7ServiceyuyuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.483.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.487.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.j, ptr noundef nonnull @47, ptr noundef nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  %i.ge = load ptr, ptr %i.l, align 8, !alias.scope !1894, !nonnull !5, !noundef !5 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !1894, !noundef !5
  %i.gg = add i64 %i.gf, -1                       ; 2 uses
  store i64 %i.gg, ptr %i.ge, align 8, !noalias !1894
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

bb.u:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  %i.gi = load i64, ptr %i.fq, align 16, !noalias !1895, !noundef !5
  %i.gj = add i64 %i.gi, -1                       ; 2 uses
  store i64 %i.gj, ptr %i.fq, align 16, !noalias !1895
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split: ; preds = %bb.u, %bb.t
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service5local7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.val118 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.gl = getelementptr i8, ptr %.val118, i64 832
  %.val = load ptr, ptr %i.gl, align 8, !nonnull !5, !noundef !5
  %i.gm = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !noundef !5
  %i.go = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.gn) #15
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_client_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.go, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.z) #15
  %i.gp = load i64, ptr %i.h, align 8, !range !15, !noundef !5
  %i.gq = trunc nuw i64 %i.gp to i1
  br i1 %i.gq, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit
  %.val127 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gr = load i64, ptr %.val127, align 8, !noundef !5 ; 2 uses
  %i.gs = icmp ne i64 %i.gr, 0
  call void @llvm.assume(i1 %i.gs)
  %i.gt = icmp eq i64 %i.gr, -1
  br i1 %i.gt, label %bb.w, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit136, !prof !20

bb.w:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit136: ; preds = %bb.v
  %i.gu = getelementptr inbounds nuw i8, ptr %.val127, i64 6240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.bi) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit

bb.x:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ak, ptr %i.g, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.491.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val109 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.gv = getelementptr inbounds nuw i8, ptr %.val109, i64 1112
end_hunk_2
