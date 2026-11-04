Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quictestlib?download=true
inline.NumInlined: 72
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SSL_get_rbio

declare ptr @ossl_quic_tserver_get0_rbio(ptr noundef) local_unnamed_addr #3

declare i32 @SSL_get_event_timeout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @ossl_time_now() local_unnamed_addr #3

declare i64 @ossl_quic_tserver_get_deadline(ptr noundef) local_unnamed_addr #3

declare void @OSSL_sleep(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @qtest_create_quic_connection_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !35
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %.critedge102, label %.critedge102.thread

.critedge102:                                     ; preds = %bb.a
  %i.b = tail call i32 @test_ptr(ptr noundef nonnull @.str, i32 noundef 542, ptr noundef nonnull @.str.27, ptr noundef %0) #10
  %.not93 = icmp eq i32 %i.b, 0
  br i1 %.not93, label %.loopexit, label %bb.d

.critedge102.thread:                              ; preds = %bb.a
  store atomic i32 0, ptr @abortserverthread seq_cst, align 4, !tbaa !40
  %i.c = load ptr, ptr @client_ready_mutex, align 8, !tbaa !14
  tail call void @ossl_crypto_mutex_lock(ptr noundef %i.c) #10
  store i1 false, ptr @client_ready, align 4
  %i.d = load ptr, ptr @client_ready_mutex, align 8, !tbaa !14
  tail call void @ossl_crypto_mutex_unlock(ptr noundef %i.d) #10
  %i.e = tail call i32 @test_ptr(ptr noundef nonnull @.str, i32 noundef 542, ptr noundef nonnull @.str.27, ptr noundef %0) #10
  %.not93105 = icmp eq i32 %i.e, 0
  br i1 %.not93105, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.critedge102.thread
  %i.f = tail call i32 @SSL_get_blocking_mode(ptr noundef nonnull %1) #10
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr @globtserv, align 8, !tbaa !16
  %i.h = call i32 @pthread_create(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull @thread_run, ptr noundef nonnull @run_server_thread) #10
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 553, ptr noundef nonnull @.str.28, i32 noundef %i.j) #10
  %.not94 = icmp eq i32 %i.k, 0
  br i1 %.not94, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.critedge102, %bb.c, %bb.b
  %.081 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %.critedge102 ]
  %.072 = phi i32 [ -1, %bb.b ], [ -1, %bb.c ], [ 1, %.critedge102 ]
  %.0 = phi ptr [ %0, %bb.b ], [ null, %bb.c ], [ %0, %.critedge102 ] ; 5 uses
  %i.l = icmp eq ptr %.0, null                    ; 3 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.d
  %.182 = phi i32 [ %.081, %bb.d ], [ %.4110, %.critedge.backedge ] ; 6 uses
  %.079 = phi i32 [ 0, %bb.d ], [ %.180, %.critedge.backedge ] ; 2 uses
  %.075 = phi i32 [ 0, %bb.d ], [ %.075.be, %.critedge.backedge ] ; 2 uses
  %.073 = phi i32 [ 0, %bb.d ], [ %.073.be, %.critedge.backedge ] ; 2 uses
  %.1 = phi i32 [ %.072, %bb.d ], [ %.3, %.critedge.backedge ] ; 2 uses
  %i.m = icmp eq i32 %.075, 0
  %i.n = icmp slt i32 %.1, 1
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.e, label %bb.k

bb.e:                                             ; preds = %.critedge
  %i.o = load ptr, ptr @client_ready_mutex, align 8, !tbaa !14
  call void @ossl_crypto_mutex_lock(ptr noundef %i.o) #10
  store i1 true, ptr @client_ready, align 4
  %i.p = load ptr, ptr @client_ready_cond, align 8, !tbaa !12
  call void @ossl_crypto_condvar_broadcast(ptr noundef %i.p) #10
  %i.q = load ptr, ptr @client_ready_mutex, align 8, !tbaa !14
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.q) #10
  %i.r = call i32 @SSL_connect(ptr noundef %1) #10 ; 6 uses
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.t = call i32 @SSL_get_error(ptr noundef %1, i32 noundef %i.r) #10 ; 3 uses
  %i.u = icmp eq i32 %i.t, %2
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i32 %.182, 0
  %or.cond3 = select i1 %i.l, i1 %i.v, i1 false
  br i1 %or.cond3, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store atomic i32 1, ptr @abortserverthread monotonic, align 4
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.w = add i32 %i.t, -4
  %or.cond5 = icmp ult i32 %i.w, -2
  br i1 %or.cond5, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str, i32 noundef 589, ptr noundef nonnull @.str.29, i32 noundef %i.r, i32 noundef %i.t) #10
  call void @test_openssl_errors() #10
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.i, %bb.j, %bb.h, %bb.g, %.critedge
  %.384 = phi i32 [ %.182, %.critedge ], [ %.182, %bb.h ], [ %.182, %bb.e ], [ %.182, %bb.j ], [ %.182, %bb.i ], [ 1, %bb.g ] ; 2 uses
  %.277 = phi i32 [ %.075, %.critedge ], [ 0, %bb.h ], [ 0, %bb.e ], [ 1, %bb.j ], [ 0, %bb.i ], [ 0, %bb.g ] ; 3 uses
  %.3 = phi i32 [ %.1, %.critedge ], [ 1, %bb.h ], [ %i.r, %bb.e ], [ %i.r, %bb.j ], [ %i.r, %bb.i ], [ 1, %bb.g ] ; 2 uses
  %i.x = load ptr, ptr @fake_now_lock, align 8, !tbaa !32
  %i.y = call i32 @CRYPTO_THREAD_write_lock(ptr noundef %i.x) #10
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %qtest_add_time.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load i64, ptr @fake_now.0, align 8
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
  %.not97 = trunc nuw i32 %i.av to i1
  br i1 %.not97, label %bb.x, label %.loopexit

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
  br i1 %i.c, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @globtserv, align 8, !tbaa !16
  store atomic i32 0, ptr @shutdowndone seq_cst, align 4, !tbaa !40
  %i.d = call i32 @pthread_create(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull @thread_run, ptr noundef nonnull @run_server_shutdown_thread) #10
  %i.e = icmp eq i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  %i.g = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 708, ptr noundef nonnull @.str.33, i32 noundef %i.f) #10
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.g, label %.split.us

.split.us:                                        ; preds = %bb.b, %bb.c
  %i.h = call i32 @SSL_shutdown(ptr noundef %1) #10 ; 2 uses
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %.split.us
  %i.j = icmp sgt i32 %i.h, -1
  br i1 %i.j, label %.split.us, label %.thread

.split:                                           ; preds = %bb.a, %bb.e
  %i.k = tail call i32 @SSL_shutdown(ptr noundef %1) #10 ; 2 uses
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %.thread, label %bb.d

bb.d:                                             ; preds = %.split
  %i.m = icmp sgt i32 %i.k, -1
  br i1 %i.m, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @ossl_quic_tserver_tick(ptr noundef %0) #10 ; 0 uses
  br label %.split

.thread:                                          ; preds = %.split, %bb.d, %.split.us, %bb.c
  %.us-phi = phi i32 [ 1, %.split.us ], [ 0, %bb.c ], [ 0, %bb.d ], [ 1, %.split ] ; 2 uses
  store atomic i32 1, ptr @shutdowndone monotonic, align 4
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.o = load i64, ptr %i.a, align 8, !tbaa !35
  %i.p = call i32 @pthread_join(i64 noundef %i.o, ptr noundef null) #10
  %i.q = icmp eq i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 737, ptr noundef nonnull @.str.31, i32 noundef %i.r) #10
  %.not17 = icmp eq i32 %i.s, 0
  %spec.select = select i1 %.not17, i32 0, i32 %.us-phi
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.us-phi, %.thread ], [ %spec.select, %bb.f ]
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

.lr.ph.preheader68:                               ; preds = %.lr.ph.preheader, %middle.block
  %.04754.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.04853.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader68, %.lr.ph
  %.04754 = phi i64 [ %i.o, %.lr.ph ], [ %.04754.ph, %.lr.ph.preheader68 ]
  %.04853 = phi i64 [ %i.p, %.lr.ph ], [ %.04853.ph, %.lr.ph.preheader68 ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.04853
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !94
  %i.o = add i64 %i.n, %.04754                    ; 2 uses
  %i.p = add nuw i64 %.04853, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.047.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %.lr.ph ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 3 uses
  store i64 %.047.lcssa, ptr %i.r, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i8, ptr %i.s, align 8, !tbaa !97
  %i.u = zext i8 %i.t to i64
  %i.v = add i64 %.047.lcssa, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.x = load i8, ptr %i.w, align 1, !tbaa !98
  %i.y = zext i8 %i.x to i64
  %i.z = add i64 %i.v, %i.y
  %i.aa = shl i64 %i.z, 32
  %sext = sub i64 5025111736320, %i.aa
  %i.ab = ashr exact i64 %sext, 32
  %i.ac = add i64 %i.ab, %.047.lcssa              ; 2 uses
  %i.ad = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.ac, ptr noundef nonnull @.str, i32 noundef 821) #10 ; 5 uses
  store ptr %i.ad, ptr %i.q, align 8, !tbaa !42
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  store i64 0, ptr %i.r, align 8, !tbaa !46
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !47
  br i1 %.not60, label %._crit_edge59, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %bb.c
  %i.ag = icmp eq i64 %2, 1
  br i1 %i.ag, label %.lr.ph58.epil.preheader, label %.lr.ph58.preheader.new

.lr.ph58.preheader.new:                           ; preds = %.lr.ph58.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58, %.lr.ph58.preheader.new
  %.056 = phi ptr [ %i.ad, %.lr.ph58.preheader.new ], [ %i.ar, %.lr.ph58 ] ; 2 uses
  %.155 = phi i64 [ 0, %.lr.ph58.preheader.new ], [ %i.as, %.lr.ph58 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph58.preheader.new ], [ %niter.next.1, %.lr.ph58 ]
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.155 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !94 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.056, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.056, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.155 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !94 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.ao, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq ; 2 uses
  %i.as = add nuw i64 %.155, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge59.loopexit.unr-lcssa, label %.lr.ph58, !llvm.loop !93

._crit_edge59.loopexit.unr-lcssa:                 ; preds = %.lr.ph58
  %lcmp.mod.not = trunc i64 %2 to i1
  br i1 %lcmp.mod.not, label %.lr.ph58.epil.preheader, label %._crit_edge59

.lr.ph58.epil.preheader:                          ; preds = %._crit_edge59.loopexit.unr-lcssa, %.lr.ph58.preheader
  %.056.epil.init = phi ptr [ %i.ad, %.lr.ph58.preheader ], [ %i.ar, %._crit_edge59.loopexit.unr-lcssa ]
  %.155.epil.init = phi i64 [ 0, %.lr.ph58.preheader ], [ %i.as, %._crit_edge59.loopexit.unr-lcssa ]
  %lcmp.mod71 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.155.epil.init ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !99
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.056.epil.init, ptr align 1 %i.au, i64 %i.aw, i1 false)
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %.lr.ph58.epil.preheader, %._crit_edge59.loopexit.unr-lcssa, %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ax, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false), !tbaa.struct !100
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44 ; 2 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge59
  %i.ba = load i64, ptr %i.r, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !45
  %i.bd = tail call i32 %i.az(ptr noundef nonnull %6, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ad, i64 noundef %i.ba, ptr noundef %i.bc) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge59
  store ptr %i.ax, ptr %3, align 8, !tbaa !102
  store ptr %i.q, ptr %4, align 8, !tbaa !104
  store i64 1, ptr %5, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.049 = phi i32 [ 0, %bb.b ], [ 1, %bb.e ]
  ret i32 %.049
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @qtest_fault_resize_plain_packet(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = icmp ugt i64 %1, %i.e
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %1, %i.c
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  %i.k = sub nuw i64 %1, %i.c
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 0, i64 %i.k, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %1, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %1, ptr %i.l, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @qtest_fault_prepend_frame(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46   ; 5 uses
  %i.h = add i64 %i.g, %2                         ; 4 uses
  %i.i = icmp ugt i64 %i.h, %i.b
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %i.h, %i.g
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 0, i64 %2, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str, i32 noundef 934, ptr noundef nonnull @.str.40, i64 noundef %i.g, i64 noundef %2) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.d
  store i64 %i.h, ptr %i.f, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.h, ptr %i.l, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.f ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @qtest_fault_set_handshake_listener(ptr noundef initializes((160, 176)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.a, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %2, ptr %i.b, align 8, !tbaa !51
  %i.c = load ptr, ptr %0, align 8, !tbaa !34
  %i.d = tail call i32 @ossl_quic_tserver_set_handshake_mutator(ptr noundef %i.c, ptr noundef nonnull @handshake_mutate, ptr noundef nonnull @handshake_finish, ptr noundef nonnull %0) #10
  ret i32 %i.d
}

declare i32 @ossl_quic_tserver_set_handshake_mutator(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @handshake_mutate(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4) #0 {
bb.a:
  %5 = alloca %struct.qtest_fault_encrypted_extensions, align 8 ; 6 uses
  %i.a = add i64 %1, 1024                         ; 2 uses
  %i.b = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.a, ptr noundef nonnull @.str, i32 noundef 954) #10 ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %PACKET_buf_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 136
  store ptr %i.b, ptr %i.d, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 3 uses
  store i64 %1, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i64 %i.a, ptr %i.f, align 8, !tbaa !53
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr align 1 %0, i64 %1, i1 false)
  %or.cond = icmp slt i64 %1, 1
  br i1 %or.cond, label %PACKET_buf_init.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.b, align 1, !tbaa !40
  %i.h = icmp samesign ult i64 %1, 4
  br i1 %i.h, label %PACKET_buf_init.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !40
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !40
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 8
  %i.q = or disjoint i64 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !40
  %i.t = zext i8 %i.s to i64
  %i.u = or disjoint i64 %i.q, %i.t               ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.w = add nsw i64 %1, -4
  %.not34 = icmp eq i64 %i.w, %i.u
  br i1 %.not34, label %bb.e, label %PACKET_buf_init.exit.thread

bb.e:                                             ; preds = %bb.d
  %cond = icmp eq i8 %i.g, 8
  br i1 %cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.v, ptr %5, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.u, ptr %i.aa, align 8, !tbaa !107
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55
  %i.ad = call i32 %i.y(ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef %i.u, ptr noundef %i.ac) #10
  %.not35 = icmp eq i32 %i.ad, 0
  br i1 %.not35, label %bb.h, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.g
  %.pre63.pre.pre = load i64, ptr %i.e, align 8, !tbaa !52
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.f
  %.pre63.pre = phi i64 [ %.pre63.pre.pre, %..thread_crit_edge ], [ %1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %PACKET_buf_init.exit.thread

bb.i:                                             ; preds = %.thread, %bb.e
  %.pre63 = phi i64 [ %.pre63.pre, %.thread ], [ %1, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50 ; 2 uses
  %.not36 = icmp eq ptr %i.af, null
  br i1 %.not36, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.ai = call i32 %i.af(ptr noundef nonnull %4, ptr noundef nonnull %i.b, i64 noundef %.pre63, ptr noundef %i.ah) #10
  %.not37 = icmp eq i32 %i.ai, 0
  br i1 %.not37, label %PACKET_buf_init.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre = load i64, ptr %i.e, align 8, !tbaa !52
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.i
  %i.aj = phi i64 [ %.pre, %._crit_edge ], [ %.pre63, %bb.i ]
  store ptr %i.b, ptr %2, align 8, !tbaa !48
  store i64 %i.aj, ptr %3, align 8, !tbaa !35
  br label %PACKET_buf_init.exit.thread

PACKET_buf_init.exit.thread:                      ; preds = %bb.h, %bb.c, %bb.b, %bb.j, %bb.d, %bb.a, %bb.k
  %.1 = phi i32 [ 0, %bb.j ], [ 0, %bb.a ], [ 0, %bb.h ], [ 1, %bb.k ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @qtest_fault_set_hand_enc_ext_listener(ptr noundef initializes((176, 192)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %1, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %2, ptr %i.b, align 8, !tbaa !55
  %i.c = load ptr, ptr %0, align 8, !tbaa !34
  %i.d = tail call i32 @ossl_quic_tserver_set_handshake_mutator(ptr noundef %i.c, ptr noundef nonnull @handshake_mutate, ptr noundef nonnull @handshake_finish, ptr noundef nonnull %0) #10
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @qtest_fault_resize_handshake(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ugt i64 %1, %i.d
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %1, %i.b
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b
  %i.k = sub nuw i64 %1, %i.b
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 0, i64 %i.k, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %1, ptr %i.a, align 8, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @qtest_fault_resize_message(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = add i64 %1, 4                            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = icmp ugt i64 %i.a, %i.e
  %or.cond.i = or i1 %i.f, %i.g
  br i1 %or.cond.i, label %qtest_fault_resize_handshake.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.a, %i.c
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c
  %i.l = sub nuw i64 %i.a, %i.c
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 0, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  store i64 %i.a, ptr %i.b, align 8, !tbaa !52
  %i.m = lshr i64 %1, 16
  %i.n = trunc i64 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.n, ptr %i.q, align 1, !tbaa !40
  %i.r = lshr i64 %1, 8
  %i.s = trunc i64 %i.r to i8
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i8 %i.s, ptr %i.u, align 1, !tbaa !40
  %i.v = trunc i64 %1 to i8
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  store i8 %i.v, ptr %i.x, align 1, !tbaa !40
  br label %qtest_fault_resize_handshake.exit.thread

qtest_fault_resize_handshake.exit.thread:         ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @qtest_fault_delete_extension(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.wpacket_st, align 8         ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !35     ; 3 uses
  %or.cond = icmp slt i64 %i.d, 2
  br i1 %or.cond, label %PACKET_buf_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %2, align 1, !tbaa !40
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !40
  %i.j = zext i8 %i.i to i64
  %i.k = or disjoint i64 %i.g, %i.j               ; 2 uses
  %i.l = add nsw i64 %i.d, -2
  %.not7.i = icmp eq i64 %i.l, %i.k
  br i1 %.not7.i, label %PACKET_as_length_prefixed_2.exit, label %PACKET_buf_init.exit.thread

PACKET_as_length_prefixed_2.exit:                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2
  br label %bb.c

bb.c:                                             ; preds = %PACKET_as_length_prefixed_2.exit, %bb.f
  %.sroa.11.0 = phi i64 [ %i.k, %PACKET_as_length_prefixed_2.exit ], [ %i.aj, %bb.f ] ; 3 uses
  %.sroa.054.0 = phi ptr [ %i.m, %PACKET_as_length_prefixed_2.exit ], [ %i.ai, %bb.f ] ; 6 uses
  %i.n = icmp ult i64 %.sroa.11.0, 2
  br i1 %i.n, label %PACKET_buf_init.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %.sroa.054.0, align 1, !tbaa !40
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.054.0, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !40
  %i.t = zext i8 %i.s to i32
  %i.u = or disjoint i32 %i.q, %i.t
  %i.v = and i64 %.sroa.11.0, -2
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %PACKET_buf_init.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.054.0, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !40
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.054.0, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !40
  %i.ad = zext i8 %i.ac to i64
  %i.ae = or disjoint i64 %i.aa, %i.ad            ; 7 uses
  %i.af = add i64 %.sroa.11.0, -4                 ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  br i1 %i.ag, label %PACKET_buf_init.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.054.0, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae ; 3 uses
  %i.aj = sub nuw i64 %i.af, %i.ae
  %.not38 = icmp eq i32 %i.u, %1
  br i1 %.not38, label %bb.g, label %bb.c, !llvm.loop !108

bb.g:                                             ; preds = %bb.f
  %.not39 = icmp eq ptr %4, null
  br i1 %.not39, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = call i32 @WPACKET_init(ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  %.not40 = icmp eq i32 %i.ak, 0
  br i1 %.not40, label %PACKET_buf_init.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = call i32 @WPACKET_memcpy(ptr noundef nonnull %5, ptr noundef nonnull %i.ah, i64 noundef %i.ae) #10
  %.not41 = icmp eq i32 %i.al, 0
  br i1 %.not41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = call i32 @WPACKET_get_total_written(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #10
  %.not42 = icmp eq i32 %i.am, 0
  br i1 %.not42, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @WPACKET_cleanup(ptr noundef nonnull %5) #10
  br label %PACKET_buf_init.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.an = call i32 @WPACKET_finish(ptr noundef nonnull %5) #10 ; 0 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.ao, ptr %4, align 8, !tbaa !110
  %.pre = load i64, ptr %3, align 8, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %i.ap = phi i64 [ %.pre, %bb.l ], [ %i.d, %bb.g ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap
  %i.ar = icmp ult ptr %i.ai, %i.aq
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = add nuw nsw i64 %i.ae, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.054.0, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %i.as, i1 false)
  %.pre84 = load i64, ptr %3, align 8, !tbaa !35
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.at = phi i64 [ %.pre84, %bb.n ], [ %i.ap, %bb.m ]
  %i.au = sub i64 %i.at, %i.ae                    ; 2 uses
  %i.av = add i64 %i.au, -6                       ; 2 uses
  %i.aw = lshr i64 %i.av, 8
  %i.ax = trunc i64 %i.aw to i8
  store i8 %i.ax, ptr %2, align 1, !tbaa !40
  %i.ay = trunc i64 %i.av to i8
  store i8 %i.ay, ptr %i.h, align 1, !tbaa !40
  %i.az = add i64 %i.au, -4
  store i64 %i.az, ptr %3, align 8, !tbaa !35
  %i.ba = add nuw nsw i64 %i.ae, 8                ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, %i.c
  br i1 %i.bb, label %PACKET_buf_init.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = sub nuw i64 %i.c, %i.ba                 ; 4 uses
  %i.bd = add nuw i64 %i.bc, 4                    ; 4 uses
  %i.be = load i64, ptr %i.b, align 8, !tbaa !52  ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !53
  %6 = icmp ule i64 %i.bd, %i.bg                  ; 2 uses
  br i1 %6, label %bb.q, label %qtest_fault_resize_message.exit

bb.q:                                             ; preds = %bb.p
  %i.bh = icmp ugt i64 %i.bd, %i.be
  br i1 %i.bh, label %bb.r, label %qtest_fault_resize_message.exit.a

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.be
  %i.bl = sub nuw i64 %i.bd, %i.be
  call void @llvm.memset.p0.i64(ptr align 1 %i.bk, i8 0, i64 %i.bl, i1 false)
  br label %qtest_fault_resize_message.exit.a

qtest_fault_resize_message.exit.a:                ; preds = %bb.r, %bb.q
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !52
  %i.bm = lshr i64 %i.bc, 16
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store i8 %i.bn, ptr %i.bq, align 1, !tbaa !40
  %i.br = lshr i64 %i.bc, 8
  %i.bs = trunc i64 %i.br to i8
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i8 %i.bs, ptr %i.bu, align 1, !tbaa !40
  %i.bv = trunc i64 %i.bc to i8
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  store i8 %i.bv, ptr %i.bx, align 1, !tbaa !40
  br label %qtest_fault_resize_message.exit

qtest_fault_resize_message.exit:                  ; preds = %bb.p, %qtest_fault_resize_message.exit.a
  %. = zext i1 %6 to i32
  br label %PACKET_buf_init.exit.thread

PACKET_buf_init.exit.thread:                      ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %qtest_fault_resize_message.exit, %bb.o, %bb.h, %bb.k
  %.0 = phi i32 [ 0, %bb.h ], [ 0, %bb.o ], [ %., %qtest_fault_resize_message.exit ], [ 0, %bb.k ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i32 %.0
}

declare i32 @WPACKET_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WPACKET_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_get_total_written(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WPACKET_cleanup(ptr noundef) local_unnamed_addr #3

declare i32 @WPACKET_finish(ptr noundef) local_unnamed_addr #3

declare ptr @BIO_meth_new(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BIO_meth_set_sendmmsg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @pcipher_sendmmsg(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %6 = alloca %struct.quic_pkt_hdr_st, align 8    ; 6 uses
  %7 = alloca %struct.PACKET, align 8             ; 6 uses
  %i.b = tail call ptr @BIO_next(ptr noundef %0) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %PACKET_buf_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @BIO_get_data(ptr noundef %0) #10 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 10 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.o = tail call i32 @BIO_sendmmsg(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #10
  br label %PACKET_buf_init.exit.thread

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 72
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %5, align 8, !tbaa !35
  br label %PACKET_buf_init.exit.thread

bb.i:                                             ; preds = %.preheader, %bb.q
  %i.u = phi ptr [ %i.g, %.preheader ], [ %i.bm, %bb.q ]
  %.082 = phi i64 [ 0, %.preheader ], [ %i.bp, %bb.q ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 224
  %i.w = mul i64 %.082, %2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false), !tbaa.struct !114
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !58
  %i.ab = add i64 %i.aa, 1024
  %i.ac = call noalias ptr @CRYPTO_malloc(i64 noundef %i.ab, ptr noundef nonnull @.str, i32 noundef 1196) #10 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %PACKET_buf_init.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !20  ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 224 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 232 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !59
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !58 ; 3 uses
  %i.ak = add i64 %i.aj, 1024
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 264
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 192
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !56
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %.loopexit75, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = icmp slt i64 %i.aj, 0
  br i1 %i.ao, label %PACKET_buf_init.exit.thread, label %PACKET_buf_init.exit

PACKET_buf_init.exit:                             ; preds = %bb.k
  store ptr %i.ac, ptr %i.q, align 8, !tbaa !37
  store ptr %i.ac, ptr %7, align 8, !tbaa !38
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !39
  br label %bb.l

bb.l:                                             ; preds = %PACKET_buf_init.exit, %bb.n
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !33
  %i.aq = call i32 @ossl_quic_wire_decode_pkt_hdr(ptr noundef nonnull %7, i64 noundef %i.ap, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #10
  %.not67 = icmp eq i32 %i.aq, 0
  br i1 %.not67, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 192
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !56
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !115
  %i.av = load i64, ptr %i.t, align 8, !tbaa !116
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 200
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !61
  %i.ay = call i32 %i.at(ptr noundef %i.ar, ptr noundef nonnull %6, ptr noundef %i.au, i64 noundef %i.av, ptr noundef %i.ax) #10
  %.not68 = icmp eq i32 %i.ay, 0
  br i1 %.not68, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val = load i64, ptr %i.r, align 8, !tbaa !39
  %.not69 = icmp eq i64 %.val, 0
  br i1 %.not69, label %.loopexit75.loopexit, label %bb.l, !llvm.loop !111

.loopexit75.loopexit:                             ; preds = %bb.n
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !20
  br label %.loopexit75

.loopexit75:                                      ; preds = %.loopexit75.loopexit, %bb.j
  %i.az = phi ptr [ %.pre, %.loopexit75.loopexit ], [ %i.ae, %bb.j ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !57 ; 2 uses
  %.not70 = icmp eq ptr %i.bb, null
  br i1 %.not70, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit75
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 224
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 216
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !62
  %i.bf = call i32 %i.bb(ptr noundef nonnull %i.az, ptr noundef nonnull %i.bc, i64 noundef %2, ptr noundef %i.be) #10
  %.not71 = icmp eq i32 %i.bf, 0
  br i1 %.not71, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o
  %.pre88 = load ptr, ptr %i.f, align 8, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %.loopexit75
  %i.bg = phi ptr [ %.pre88, %._crit_edge ], [ %i.az, %.loopexit75 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 224
  %i.bi = call i32 @BIO_sendmmsg(ptr noundef nonnull %i.b, ptr noundef nonnull %i.bh, i64 noundef %2, i64 noundef 1, i64 noundef %4, ptr noundef nonnull %i.a) #10
  %.not72 = icmp eq i32 %i.bi, 0
  br i1 %.not72, label %.loopexit.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !59
  call void @CRYPTO_free(ptr noundef %i.bl, ptr noundef nonnull @.str, i32 noundef 1242) #10
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 224
  store ptr null, ptr %i.bn, align 8, !tbaa !59
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 264
  store i64 0, ptr %i.bo, align 8, !tbaa !60
  %i.bp = add nuw i64 %.082, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %3
  br i1 %exitcond.not, label %.loopexit.sink.split, label %bb.i, !llvm.loop !112

.loopexit.sink.split:                             ; preds = %bb.q, %bb.p
  %.sink = phi i64 [ %.082, %bb.p ], [ %3, %bb.q ]
  %.081.ph = phi i64 [ %.082, %bb.p ], [ 1, %bb.q ]
  store i64 %.sink, ptr %5, align 8, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.m, %bb.l, %.loopexit.sink.split
  %.081 = phi i64 [ %.082, %bb.m ], [ %.081.ph, %.loopexit.sink.split ], [ %.082, %bb.l ], [ %.082, %bb.o ]
  %i.bq = icmp ne i64 %.081, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 224
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !59
  call void @CRYPTO_free(ptr noundef %i.bu, ptr noundef nonnull @.str, i32 noundef 1250) #10
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  store ptr null, ptr %i.bw, align 8, !tbaa !59
end_hunk_0
