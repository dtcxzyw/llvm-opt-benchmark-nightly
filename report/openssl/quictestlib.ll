Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quictestlib?download=true
inline.NumInlined: 72
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@qtest_create_quic_connection_ex:bb.a
  %.sroa.03.0.i.i = call i64 @llvm.uadd.sat.i64(i64 %i.z, i64 1000000)
  store i64 %.sroa.03.0.i.i, ptr @fake_now.0, align 8, !tbaa !35
  %i.aa = load ptr, ptr @fake_now_lock, align 8, !tbaa !32
  %i.ab = call i32 @CRYPTO_THREAD_unlock(ptr noundef %i.aa) #10 ; 0 uses
  br label %qtest_add_time.exit

qtest_add_time.exit:                              ; preds = %bb.k, %bb.l
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %qtest_add_time.exit
  %i.ac = call i32 @SSL_handle_events(ptr noundef nonnull %1) #10 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %qtest_add_time.exit
  br i1 %i.l, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr @client_ready_mutex, align 8, !tbaa !14
  call void @ossl_crypto_mutex_lock(ptr noundef %i.ad) #10
  %.b123 = load i1, ptr @client_ready, align 4
  br i1 %.b123, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %i.ae = load ptr, ptr @client_ready_cond, align 8, !tbaa !12
  %i.af = load ptr, ptr @client_ready_mutex, align 8, !tbaa !14
  call void @ossl_crypto_condvar_wait(ptr noundef %i.ae, ptr noundef %i.af) #10
  %.b = load i1, ptr @client_ready, align 4
  br i1 %.b, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  %i.ag = load ptr, ptr @client_ready_mutex, align 8, !tbaa !14
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.ag) #10
  %i.ah = call i32 @ossl_quic_tserver_tick(ptr noundef nonnull %.0) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.n
  %i.ai = icmp eq i32 %.073, 0
  %i.aj = icmp slt i32 %.384, 1
  %or.cond7 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond7, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = call i32 @ossl_quic_tserver_is_term_any(ptr noundef %.0) #10 ; 2 uses
  %.not96 = icmp eq i32 %i.ak, 0
  br i1 %.not96, label %.thread106, label %bb.r

.thread106:                                       ; preds = %bb.q
  %i.al = call i32 @ossl_quic_tserver_is_handshake_confirmed(ptr noundef %.0) #10
  %i.am = icmp ne i32 %.277, 0
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %.174 = phi i32 [ %i.ak, %bb.q ], [ %.073, %bb.p ] ; 2 uses
  %i.an = icmp ne i32 %.277, 0                    ; 2 uses
  %i.ao = icmp ne i32 %.174, 0                    ; 2 uses
  %or.cond9 = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond9, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.thread106, %bb.r
  %i.ap = phi i1 [ false, %.thread106 ], [ %i.ao, %bb.r ] ; 3 uses
  %i.aq = phi i1 [ %i.am, %.thread106 ], [ %i.an, %bb.r ] ; 3 uses
  %.174111 = phi i32 [ 0, %.thread106 ], [ %.174, %bb.r ]
  %.4110 = phi i32 [ %i.al, %.thread106 ], [ %.384, %bb.r ] ; 2 uses
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = add nsw i32 %.079, 1                    ; 2 uses
  %i.as = icmp eq i32 %i.ar, 1000
  br i1 %i.as, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str, i32 noundef 623, ptr noundef nonnull @.str.30) #10
  br label %.loopexit

bb.v:                                             ; preds = %bb.t, %bb.s
  %.180 = phi i32 [ %i.ar, %bb.t ], [ %.079, %bb.s ]
  %i.at = icmp sgt i32 %.3, 0
  %or.cond11 = or i1 %i.at, %i.aq                 ; 2 uses
  %i.au = icmp sgt i32 %.4110, 0                  ; 2 uses
  %or.cond13 = select i1 %i.au, i1 true, i1 %i.ap ; 2 uses
  %or.cond103 = select i1 %or.cond11, i1 %or.cond13, i1 false
  br i1 %or.cond103, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = call i32 @qtest_wait_for_timeout(ptr noundef %1, ptr noundef %.0)
  %.not97 = icmp eq i32 %i.av, 0
  br i1 %.not97, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  br i1 %or.cond11, label %bb.y, label %.critedge.backedge

bb.y:                                             ; preds = %bb.x
  br i1 %or.cond13, label %.critedge19, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = load atomic i32, ptr @abortserverthread monotonic, align 4
  %.not98 = icmp eq i32 %i.aw, 0
  br i1 %.not98, label %.critedge.backedge, label %.critedge19.thread

.critedge.backedge:                               ; preds = %bb.z, %bb.x
  %.075.be = phi i32 [ %.277, %bb.z ], [ 0, %bb.x ]
  %.073.be = phi i32 [ 0, %bb.z ], [ %.174111, %bb.x ]
  br label %.critedge, !llvm.loop !86

.critedge19:                                      ; preds = %bb.y
  %or.cond21 = and i1 %i.l, %i.au
  br i1 %or.cond21, label %bb.aa, label %.critedge19.thread

bb.aa:                                            ; preds = %.critedge19
  %i.ax = load ptr, ptr @client_ready_mutex, align 8, !tbaa !14
  call void @ossl_crypto_mutex_lock(ptr noundef %i.ax) #10
  store i1 true, ptr @client_ready, align 4
  %i.ay = load ptr, ptr @client_ready_cond, align 8, !tbaa !12
  call void @ossl_crypto_condvar_broadcast(ptr noundef %i.ay) #10
  %i.az = load ptr, ptr @client_ready_mutex, align 8, !tbaa !14
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.az) #10
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !35
  %i.bb = call i32 @pthread_join(i64 noundef %i.ba, ptr noundef null) #10
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 648, ptr noundef nonnull @.str.31, i32 noundef %i.bd) #10
  %.not99 = icmp eq i32 %i.be, 0
  br i1 %.not99, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bf = load i32, ptr @globserverret, align 4, !tbaa !21
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 648, ptr noundef nonnull @.str.32, i32 noundef %i.bh) #10
  %.not100 = icmp eq i32 %i.bi, 0
  %i.bj = or i1 %i.aq, %.not100
  %or.cond104 = select i1 %i.bj, i1 true, i1 %i.ap
  br i1 %or.cond104, label %.loopexit, label %bb.ac

.critedge19.thread:                               ; preds = %bb.z, %.critedge19
  %i.bk = phi i1 [ %i.ap, %.critedge19 ], [ false, %bb.z ]
  %or.cond23.old = select i1 %i.aq, i1 true, i1 %i.bk
  br i1 %or.cond23.old, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge19.thread
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %bb.r, %.critedge102.thread, %.critedge19.thread, %bb.ac, %bb.aa, %bb.ab, %bb.c, %.critedge102, %bb.u
  %.078 = phi i32 [ 0, %.critedge102 ], [ 0, %bb.u ], [ 0, %.critedge19.thread ], [ 1, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %.critedge102.thread ], [ 0, %bb.c ], [ 0, %bb.r ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.078
}

declare void @ossl_crypto_mutex_lock(ptr noundef) local_unnamed_addr #3

declare void @ossl_crypto_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @run_server_thread() #0 {
bb.a:
  %i.a = load ptr, ptr @globtserv, align 8, !tbaa !16
  %i.b = tail call range(i32 0, 2) i32 @qtest_create_quic_connection_ex(ptr noundef %i.a, ptr noundef null, i32 noundef 0), !inline_history !87
  store i32 %i.b, ptr @globserverret, align 4, !tbaa !21
  ret void
}

declare void @ossl_crypto_condvar_broadcast(ptr noundef) local_unnamed_addr #3

declare i32 @SSL_connect(ptr noundef) local_unnamed_addr #3

declare i32 @SSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @test_info(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @test_openssl_errors() local_unnamed_addr #3

declare i32 @SSL_handle_events(ptr noundef) local_unnamed_addr #3

declare void @ossl_crypto_condvar_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ossl_quic_tserver_tick(ptr noundef) local_unnamed_addr #3

declare i32 @ossl_quic_tserver_is_term_any(ptr noundef) local_unnamed_addr #3

declare i32 @ossl_quic_tserver_is_handshake_confirmed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @qtest_create_quic_connection(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @qtest_create_quic_connection_ex(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @qtest_shutdown(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !35
  tail call void @ossl_crypto_condvar_free(ptr noundef nonnull @client_ready_cond) #10
  store ptr null, ptr @client_ready_cond, align 8, !tbaa !12
  tail call void @ossl_crypto_mutex_free(ptr noundef nonnull @client_ready_mutex) #10
  store ptr null, ptr @client_ready_mutex, align 8, !tbaa !14
  %i.b = tail call i32 @SSL_get_blocking_mode(ptr noundef %1) #10
  %i.c = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.c, label %bb.b, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %2 = tail call i32 @SSL_shutdown(ptr noundef %1) #10 ; 2 uses
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %.thread, label %.split.a

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @globtserv, align 8, !tbaa !16
  store atomic i32 0, ptr @shutdowndone seq_cst, align 4, !tbaa !40
  %i.d = call i32 @pthread_create(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull @thread_run, ptr noundef nonnull @run_server_shutdown_thread) #10
  %i.e = icmp eq i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  %i.g = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 708, ptr noundef nonnull @.str.33, i32 noundef %i.f) #10
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %.split.us

.split.us:                                        ; preds = %bb.b, %bb.c
  %i.h = call i32 @SSL_shutdown(ptr noundef %1) #10 ; 2 uses
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %.split.us
  %i.j = icmp sgt i32 %i.h, -1
  br i1 %i.j, label %.split.us, label %.thread

.split.a:                                         ; preds = %.split.preheader, %bb.d
  %4 = phi i32 [ %6, %bb.d ], [ %2, %.split.preheader ]
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %bb.d, label %.thread

bb.d:                                             ; preds = %.split.a
  %i.k = tail call i32 @ossl_quic_tserver_tick(ptr noundef %0) #10 ; 0 uses
  %6 = tail call i32 @SSL_shutdown(ptr noundef %1) #10 ; 2 uses
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %.thread, label %.split.a

.thread:                                          ; preds = %bb.d, %.split.a, %.split.us, %bb.c, %.split.preheader
  %.us-phi = phi i32 [ 1, %.split.preheader ], [ 1, %.split.us ], [ 0, %bb.c ], [ 0, %.split.a ], [ 1, %bb.d ] ; 2 uses
  store atomic i32 1, ptr @shutdowndone monotonic, align 4
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  %i.l = load i64, ptr %i.a, align 8, !tbaa !35
  %i.m = call i32 @pthread_join(i64 noundef %i.l, ptr noundef null) #10
  %i.n = icmp eq i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 737, ptr noundef nonnull @.str.31, i32 noundef %i.o) #10
  %.not17 = icmp eq i32 %i.p, 0
  %spec.select = select i1 %.not17, i32 0, i32 %.us-phi
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.us-phi, %.thread ], [ %spec.select, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

declare void @ossl_crypto_mutex_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @run_server_shutdown_thread() #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = load ptr, ptr @globtserv, align 8, !tbaa !16
  %i.b = tail call i32 @ossl_quic_tserver_tick(ptr noundef %i.a) #10 ; 0 uses
  %i.c = load atomic i32, ptr @shutdowndone monotonic, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !88

bb.c:                                             ; preds = %bb.b
  ret void
}

declare i32 @SSL_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @qtest_check_server_transport_err(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_quic_tserver_tick(ptr noundef %0) #10 ; 0 uses
  %i.b = tail call i32 @ossl_quic_tserver_is_term_any(ptr noundef %0) #10
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  %i.e = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 754, ptr noundef nonnull @.str.34, i32 noundef %i.d) #10
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @ossl_quic_tserver_get_terminate_cause(ptr noundef %0) #10 ; 3 uses
  %i.g = tail call i32 @test_ptr(ptr noundef nonnull @.str, i32 noundef 758, ptr noundef nonnull @.str.35, ptr noundef %i.f) #10
  %.not8 = icmp eq i32 %i.g, 0
  br i1 %.not8, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8
  %i.j = lshr i8 %i.i, 1
  %.lobit = and i8 %i.j, 1
  %i.k = zext nneg i8 %.lobit to i32
  %i.l = tail call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 759, ptr noundef nonnull @.str.36, i32 noundef %i.k) #10
  %.not9 = icmp eq i32 %i.l, 0
  br i1 %.not9, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.h, align 8
  %i.n = and i8 %i.m, 1
  %i.o = zext nneg i8 %i.n to i32
  %i.p = tail call i32 @test_false(ptr noundef nonnull @.str, i32 noundef 760, ptr noundef nonnull @.str.37, i32 noundef %i.o) #10
  %.not10 = icmp eq i32 %i.p, 0
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.f, align 8, !tbaa !90
  %i.r = tail call i32 @test_uint64_t_eq(ptr noundef nonnull @.str, i32 noundef 761, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i64 noundef %i.q, i64 noundef %1) #10
  %.not11 = icmp ne i32 %i.r, 0
  %spec.select = zext i1 %.not11 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %spec.select, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

declare ptr @ossl_quic_tserver_get_terminate_cause(ptr noundef) local_unnamed_addr #3

declare i32 @test_uint64_t_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @qtest_check_server_protocol_err(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @qtest_check_server_transport_err(ptr noundef %0, i64 noundef 10)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @qtest_check_server_frame_encoding_err(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @qtest_check_server_transport_err(ptr noundef %0, i64 noundef 7)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @qtest_fault_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str, i32 noundef 860) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  tail call void @CRYPTO_free(ptr noundef %i.e, ptr noundef nonnull @.str, i32 noundef 1007) #10
  store ptr null, ptr %i.d, align 8, !tbaa !43
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 785) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @packet_plain_finish(ptr nofree noundef captures(none) initializes((104, 120)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 860) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @handshake_finish(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 1007) #10
  store ptr null, ptr %i.a, align 8, !tbaa !43
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @qtest_fault_set_packet_plain_listener(ptr noundef initializes((120, 136)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %2, ptr %i.b, align 8, !tbaa !45
  %i.c = load ptr, ptr %0, align 8, !tbaa !34
  %i.d = tail call i32 @ossl_quic_tserver_set_plain_packet_mutator(ptr noundef %i.c, ptr noundef nonnull @packet_plain_mutate, ptr noundef nonnull @packet_plain_finish, ptr noundef nonnull %0) #10
  ret i32 %i.d
}

declare i32 @ossl_quic_tserver_set_plain_packet_mutator(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @packet_plain_mutate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr noundef %6) #0 {
bb.a:
  %.not60 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 5
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.a = and i64 %2, 3                            ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = select i1 %i.b, i64 4, i64 %i.a
  %n.vec = sub i64 %2, %i.c                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi65 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %wide.vec = load <4 x i64>, ptr %i.f, align 8, !tbaa !94
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec66 = load <4 x i64>, ptr %i.g, align 8, !tbaa !94
  %strided.vec67 = shufflevector <4 x i64> %wide.vec66, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.h = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.i = add <2 x i64> %strided.vec67, %vec.phi65 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.i, %i.h
  %i.k = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.preheader68

end_hunk_0
