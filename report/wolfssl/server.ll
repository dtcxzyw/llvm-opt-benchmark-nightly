Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/server?download=true
inline.NumInlined: 68
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ServerEchoData:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @wolfSSL_Malloc(i64 noundef) local_unnamed_addr #2

declare i32 @wolfSSL_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wolfSSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @wolfSSL_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @wolfSSL_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @server_test(ptr nofree noundef captures(none) initializes((16, 20)) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.fd_set, align 8             ; 6 uses
  %2 = alloca %struct.fd_set, align 8             ; 6 uses
  %3 = alloca %struct.timeval, align 8            ; 6 uses
  %4 = alloca %struct.fd_set, align 8             ; 5 uses
  %5 = alloca %struct.fd_set, align 8             ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %7 = alloca %struct.fd_set, align 8             ; 5 uses
  %8 = alloca %struct.fd_set, align 8             ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %struct.sockaddr_in, align 4       ; 10 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %struct.sockaddr_in, align 4       ; 10 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca [4 x i32], align 16               ; 7 uses
  %12 = alloca %struct.sockaddr_in, align 4       ; 3 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca [32 x i8], align 16               ; 4 uses
  %i.k = alloca [80 x i8], align 16               ; 3 uses
  %i.l = alloca i32, align 4                      ; 22 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.p = load i32, ptr %0, align 8, !tbaa !35     ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  store i32 0, ptr %i.l, align 4, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 -1, ptr %i.s, align 8, !tbaa !37
  %i.t = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @myVerifyAction) ; 5 uses
  store i32 0, ptr %i.t, align 4, !tbaa !9
  %i.u = icmp eq ptr %i.r, null
  br i1 %i.u, label %.thread3014, label %.lr.ph

.thread3014:                                      ; preds = %bb.a
  store ptr null, ptr @myoptarg, align 8, !tbaa !20
  store i32 0, ptr @myoptind, align 4, !tbaa !9
  br label %err_sys_ex.exit557

.lr.ph:                                           ; preds = %bb.a, %.lr.ph.backedge
  %.03521605 = phi i32 [ %.03521605.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.03541603 = phi i32 [ %.03541603.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 77 uses
  %.03561601 = phi i32 [ %.03561601.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.03581599 = phi ptr [ %.03581599.be, %.lr.ph.backedge ], [ null, %bb.a ] ; 78 uses
  %.03601597 = phi i32 [ %.03601597.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 74 uses
  %.03621595 = phi i32 [ %.03621595.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 76 uses
  %.03641593 = phi i32 [ %.03641593.be, %.lr.ph.backedge ], [ 1, %bb.a ] ; 78 uses
  %.03661591 = phi i32 [ %.03661591.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.03681589 = phi i32 [ %.03681589.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.03701587 = phi i32 [ %.03701587.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.03721585 = phi i32 [ %.03721585.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.03741583 = phi ptr [ %.03741583.be, %.lr.ph.backedge ], [ null, %bb.a ] ; 78 uses
  %.03761581 = phi ptr [ %.03761581.be, %.lr.ph.backedge ], [ @.str.13, %bb.a ] ; 78 uses
  %.03781579 = phi ptr [ %.03781579.be, %.lr.ph.backedge ], [ @.str.16, %bb.a ] ; 78 uses
  %.03801577 = phi ptr [ %.03801577.be, %.lr.ph.backedge ], [ @.str.15, %bb.a ] ; 78 uses
  %.03821575 = phi ptr [ %.03821575.be, %.lr.ph.backedge ], [ @.str.14, %bb.a ] ; 78 uses
  %.03841573 = phi i32 [ %.03841573.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.03861571 = phi ptr [ %.03861571.be, %.lr.ph.backedge ], [ null, %bb.a ] ; 78 uses
  %.03881569 = phi ptr [ %.03881569.be, %.lr.ph.backedge ], [ null, %bb.a ] ; 78 uses
  %.03961567 = phi i32 [ %.03961567.be, %.lr.ph.backedge ], [ 1024, %bb.a ] ; 78 uses
  %.03981565 = phi i64 [ %.03981565.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04001563 = phi i32 [ %.04001563.be, %.lr.ph.backedge ], [ 16384, %bb.a ] ; 79 uses
  %.04031561 = phi i32 [ %.04031561.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04061559 = phi i32 [ %.04061559.be, %.lr.ph.backedge ], [ 1, %bb.a ] ; 77 uses
  %.04111557 = phi i32 [ %.04111557.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 79 uses
  %.04131555 = phi i32 [ %.04131555.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04151553 = phi i32 [ %.04151553.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04171551 = phi i32 [ %.04171551.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04191549 = phi i32 [ %.04191549.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 77 uses
  %.04211547 = phi i32 [ %.04211547.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04231545 = phi i32 [ %.04231545.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 75 uses
  %.04251543 = phi i32 [ %.04251543.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04271541 = phi i32 [ %.04271541.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04291539 = phi i32 [ %.04291539.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04311537 = phi i32 [ %.04311537.be, %.lr.ph.backedge ], [ 1, %bb.a ] ; 78 uses
  %.04331535 = phi i32 [ %.04331535.be, %.lr.ph.backedge ], [ 3, %bb.a ] ; 72 uses
  %.04361533 = phi i32 [ %.04361533.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 78 uses
  %.04381531 = phi i32 [ %.04381531.be, %.lr.ph.backedge ], [ -99, %bb.a ] ; 78 uses
  %.01529 = phi i16 [ %.01529.be, %.lr.ph.backedge ], [ 11111, %bb.a ] ; 78 uses
  %i.v = phi i32 [ %.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 69 uses
  %i.w = load i32, ptr @myoptind, align 4, !tbaa !9 ; 4 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.pr.i = load ptr, ptr @mygetopt_long.next, align 8, !tbaa !20 ; 3 uses
  %i.y = icmp eq ptr %.pr.i, null
  br i1 %i.y, label %.thread1.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load i8, ptr %.pr.i, align 1, !tbaa !21  ; 2 uses
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %.thread1.i, label %bb.w

bb.d:                                             ; preds = %.lr.ph
  store ptr null, ptr @mygetopt_long.next, align 8, !tbaa !20
  store i32 1, ptr @myoptind, align 4, !tbaa !9
  br label %.thread1.i

.thread1.i:                                       ; preds = %bb.d, %bb.c, %bb.b
  %i.ab = phi i32 [ %i.w, %bb.b ], [ %i.w, %bb.c ], [ 1, %bb.d ] ; 6 uses
  %.not.i = icmp slt i32 %i.ab, %i.p
  br i1 %.not.i, label %bb.e, label %mygetopt_long.exit.thread677.sink.split

bb.e:                                             ; preds = %.thread1.i
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ac ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !21
  %.not67.i = icmp eq i8 %i.ag, 45
  br i1 %.not67.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !21
  switch i8 %i.ai, label %bb.v [
    i8 0, label %bb.h
    i8 45, label %.tail.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store ptr null, ptr @myoptarg, align 8, !tbaa !20
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !20
  br label %mygetopt_long.exit.thread677.sink.split

.tail.i:                                          ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.tail.i
  %i.an = add nsw i32 %i.ab, 1                    ; 2 uses
  store ptr null, ptr @myoptarg, align 8, !tbaa !20
  %i.ao = icmp slt i32 %i.an, %i.p
  br i1 %i.ao, label %bb.j, label %mygetopt_long.exit.thread677

bb.j:                                             ; preds = %bb.i
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20
  br label %mygetopt_long.exit.thread677.sink.split

bb.k:                                             ; preds = %.tail.i
  store ptr null, ptr @myoptarg, align 8, !tbaa !20
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 6 uses
  %i.au = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(5) @.str.7) #24
  %.not73.i = icmp eq i32 %i.au, 0
  br i1 %.not73.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.k
  %.09.lcssa.i = phi ptr [ @server_test.long_options, %bb.k ], [ getelementptr inbounds nuw (i8, ptr @server_test.long_options, i64 16), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @server_test.long_options, i64 32), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @server_test.long_options, i64 48), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @server_test.long_options, i64 64), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @server_test.long_options, i64 80), %bb.u ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !39 ; 4 uses
  %i.ax = add nsw i32 %i.ab, 1                    ; 3 uses
  store i32 %i.ax, ptr @myoptind, align 4, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !40 ; 3 uses
  %.not74.i = icmp eq i32 %i.az, 0
  br i1 %.not74.i, label %mygetopt_long.exit.thread.a, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = icmp slt i32 %i.ax, %i.p
  br i1 %i.ba, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bb = icmp eq i32 %i.az, 1
  %.phi.trans.insert.i = sext i32 %i.ax to i64
  %.phi.trans.insert14.i = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.phi.trans.insert.i
  %.pre15.i = load ptr, ptr %.phi.trans.insert14.i, align 8, !tbaa !20 ; 2 uses
  br i1 %i.bb, label %._crit_edge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = load i8, ptr %.pre15.i, align 1, !tbaa !21
  %.not76.i = icmp eq i8 %i.bc, 45
  br i1 %.not76.i, label %mygetopt_long.exit.thread.a, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o, %bb.n
  store ptr %.pre15.i, ptr @myoptarg, align 8, !tbaa !20
  %i.bd = add nsw i32 %i.ab, 2
  store i32 %i.bd, ptr @myoptind, align 4, !tbaa !9
  br label %mygetopt_long.exit.thread.a

bb.p:                                             ; preds = %bb.m
  %.not.a = icmp eq i32 %i.az, 2
  br i1 %.not.a, label %mygetopt_long.exit.thread.a, label %mygetopt_long.exit.thread677

bb.q:                                             ; preds = %bb.k
  %i.be = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(10) @.str.8) #24
  %.not73.1.i = icmp eq i32 %i.be, 0
  br i1 %.not73.1.i, label %bb.l, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(4) @.str.9) #24
  %.not73.2.i = icmp eq i32 %i.bf, 0
  br i1 %.not73.2.i, label %bb.l, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(12) @.str.10) #24
  %.not73.3.i = icmp eq i32 %i.bg, 0
  br i1 %.not73.3.i, label %bb.l, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(13) @.str.11) #24
  %.not73.4.i = icmp eq i32 %i.bh, 0
  br i1 %.not73.4.i, label %bb.l, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(8) @.str.12) #24
  %.not73.5.i = icmp eq i32 %i.bi, 0
  br i1 %.not73.5.i, label %bb.l, label %mygetopt_long.exit.thread677

bb.v:                                             ; preds = %bb.g
  %i.bj = add nsw i32 %i.ab, 1                    ; 2 uses
  store i32 %i.bj, ptr @myoptind, align 4, !tbaa !9
  %.pre.i = load i8, ptr %i.ah, align 1, !tbaa !21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.c
  %i.bk = phi i32 [ %i.bj, %bb.v ], [ %i.w, %bb.c ] ; 6 uses
  %i.bl = phi i8 [ %.pre.i, %bb.v ], [ %i.z, %bb.c ] ; 2 uses
  %i.bm = phi ptr [ %i.ah, %bb.v ], [ %.pr.i, %bb.c ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 5 uses
  store ptr %i.bn, ptr @mygetopt_long.next, align 8, !tbaa !20
  %i.bo = zext i8 %i.bl to i32                    ; 9 uses
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.17, i32 %i.bo, i64 86) ; 2 uses
  %i.bp = icmp eq ptr %memchr.i, null
  %i.bq = and i8 %i.bl, -2
  %i.br = icmp eq i8 %i.bq, 58
  %or.cond3.i = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond3.i, label %mygetopt_long.exit.thread.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %memchr.i, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !21
  switch i8 %i.bt, label %mygetopt_long.exit.thread.a [
    i8 58, label %bb.y
    i8 59, label %bb.ac
  ]

bb.y:                                             ; preds = %bb.x
  %i.bu = load i8, ptr %i.bn, align 1, !tbaa !21
  %.not71.i = icmp eq i8 %i.bu, 0
  br i1 %.not71.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.bn, ptr @myoptarg, align 8, !tbaa !20
  store ptr null, ptr @mygetopt_long.next, align 8, !tbaa !20
  br label %mygetopt_long.exit.thread.a

bb.aa:                                            ; preds = %bb.y
  %i.bv = icmp slt i32 %i.bk, %i.p
  br i1 %i.bv, label %bb.ab, label %mygetopt_long.exit.thread.thread

bb.ab:                                            ; preds = %bb.aa
  %i.bw = sext i32 %i.bk to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !20
  store ptr %i.by, ptr @myoptarg, align 8, !tbaa !20
  %i.bz = add nsw i32 %i.bk, 1
  store i32 %i.bz, ptr @myoptind, align 4, !tbaa !9
  br label %mygetopt_long.exit.thread.a

bb.ac:                                            ; preds = %bb.x
  store ptr @.str.77, ptr @myoptarg, align 8, !tbaa !20
  %i.ca = load i8, ptr %i.bn, align 1, !tbaa !21
  %.not68.i = icmp eq i8 %i.ca, 0
  br i1 %.not68.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.bn, ptr @myoptarg, align 8, !tbaa !20
  store ptr null, ptr @mygetopt_long.next, align 8, !tbaa !20
  br label %mygetopt_long.exit.thread.a

bb.ae:                                            ; preds = %bb.ac
  %i.cb = icmp slt i32 %i.bk, %i.p
  br i1 %i.cb, label %bb.af, label %mygetopt_long.exit.thread.a

bb.af:                                            ; preds = %bb.ae
  %i.cc = sext i32 %i.bk to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !20 ; 3 uses
  %.not69.i = icmp eq ptr %i.ce, null
  br i1 %.not69.i, label %mygetopt_long.exit.thread.a, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !21
  %.not70.i = icmp eq i8 %i.cf, 45
  br i1 %.not70.i, label %mygetopt_long.exit.thread.a, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.ce, ptr @myoptarg, align 8, !tbaa !20
  %i.cg = add nsw i32 %i.bk, 1
  store i32 %i.cg, ptr @myoptind, align 4, !tbaa !9
  br label %mygetopt_long.exit.thread.a

mygetopt_long.exit.thread.a:                      ; preds = %bb.p, %bb.l, %bb.o, %._crit_edge.i, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %.1.i = phi i32 [ %i.bo, %bb.ae ], [ %i.bo, %bb.z ], [ %i.bo, %bb.ah ], [ %i.bo, %bb.ag ], [ %i.bo, %bb.ab ], [ %i.bo, %bb.x ], [ %i.bo, %bb.af ], [ %i.bo, %bb.ad ], [ %i.aw, %bb.l ], [ %i.aw, %._crit_edge.i ], [ %i.aw, %bb.o ], [ %i.aw, %bb.p ]
  switch i32 %.1.i, label %bb.fc [
    i32 -1, label %mygetopt_long.exit.thread677
    i32 63, label %mygetopt_long.exit.thread.thread
    i32 257, label %bb.ak
    i32 258, label %bb.al
    i32 120, label %bb.am
    i32 100, label %bb.an
    i32 86, label %.lr.ph.backedge
    i32 98, label %bb.ao
    i32 115, label %bb.ap
    i32 106, label %bb.aq
    i32 117, label %bb.ar
    i32 71, label %.lr.ph.backedge
    i32 102, label %bb.as
    i32 82, label %bb.at
    i32 114, label %bb.au
    i32 80, label %.lr.ph.backedge
    i32 112, label %bb.av
    i32 119, label %bb.aw
    i32 118, label %bb.ax
    i32 108, label %bb.ba
    i32 72, label %bb.bb
    i32 65, label %bb.bs
    i32 99, label %bb.bt
    i32 107, label %bb.bu
    i32 68, label %bb.bv
    i32 90, label %bb.bw
    i32 78, label %bb.by
    i32 83, label %bb.bz
    i32 111, label %.lr.ph.backedge
    i32 79, label %.lr.ph.backedge
    i32 97, label %.lr.ph.backedge
    i32 73, label %.lr.ph.backedge
    i32 76, label %.lr.ph.backedge
    i32 105, label %bb.ca
    i32 67, label %bb.cb
    i32 101, label %bb.cd
    i32 66, label %bb.ce
    i32 113, label %.lr.ph.backedge
    i32 103, label %bb.cj
    i32 121, label %bb.ck
    i32 89, label %bb.cl
    i32 116, label %.lr.ph.backedge
    i32 75, label %bb.cm
    i32 84, label %.lr.ph.backedge
    i32 85, label %bb.cn
    i32 70, label %bb.co
    i32 81, label %.lr.ph.backedge
    i32 74, label %.lr.ph.backedge
    i32 77, label %.lr.ph.backedge
    i32 109, label %.lr.ph.backedge
    i32 48, label %.lr.ph.backedge
    i32 49, label %bb.cp
    i32 50, label %bb.cq
    i32 51, label %.lr.ph.backedge
    i32 52, label %.lr.ph.backedge
    i32 53, label %.lr.ph.backedge
    i32 54, label %bb.cr
    i32 55, label %bb.cs
    i32 56, label %.lr.ph.backedge
    i32 57, label %bb.cu
    i32 64, label %bb.cu
    i32 35, label %bb.cv
    i32 259, label %bb.cw
    i32 262, label %bb.cx
    i32 264, label %bb.fa
    i32 265, label %.lr.ph.backedge
    i32 266, label %bb.fb
    i32 268, label %.lr.ph.backedge
  ]

mygetopt_long.exit.thread.thread:                 ; preds = %bb.aa, %bb.w, %mygetopt_long.exit.thread.a
  %i.ch = load ptr, ptr @myoptarg, align 8, !tbaa !20 ; 2 uses
  %.not539 = icmp eq ptr %i.ch, null
  br i1 %.not539, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %mygetopt_long.exit.thread.thread
  %i.ci = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ch, ptr noundef null, i32 noundef 10) #20, !inline_history !25
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %or.cond = icmp ugt i32 %i.cj, 1
  %spec.store.select92 = select i1 %or.cond, i32 0, i32 %i.cj
  store i32 %spec.store.select92, ptr @lng_index, align 4, !tbaa !9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %mygetopt_long.exit.thread.thread
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 0) #25
  unreachable

bb.ak:                                            ; preds = %mygetopt_long.exit.thread.a
  store i32 0, ptr @lng_index, align 4, !tbaa !9
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 0) #25
  unreachable

bb.al:                                            ; preds = %mygetopt_long.exit.thread.a
  store i32 1, ptr @lng_index, align 4, !tbaa !9
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 0) #25
  unreachable

bb.am:                                            ; preds = %mygetopt_long.exit.thread.a
  store i32 1, ptr @runWithErrors, align 4, !tbaa !9
  br label %.lr.ph.backedge

bb.an:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.ao:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.ap:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.aq:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.ar:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.as:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.at:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.ck = load ptr, ptr @myoptarg, align 8, !tbaa !20
  br label %.lr.ph.backedge

bb.au:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.av:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.cl = load ptr, ptr @myoptarg, align 8, !tbaa !20
  %i.cm = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.cl, ptr noundef null, i32 noundef 10) #20, !inline_history !25
  %i.cn = trunc i64 %i.cm to i16
  br label %.lr.ph.backedge

bb.aw:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.ax:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.co = load ptr, ptr @myoptarg, align 8, !tbaa !20 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !21
  %i.cq = icmp eq i8 %i.cp, 100
  br i1 %i.cq, label %.lr.ph.backedge, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cr = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.co, ptr noundef null, i32 noundef 10) #20, !inline_history !25
  %i.cs = trunc i64 %i.cr to i32                  ; 2 uses
  %or.cond3 = icmp ugt i32 %i.cs, 4
  br i1 %or.cond3, label %bb.az, label %.lr.ph.backedge

bb.az:                                            ; preds = %bb.ay
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #26
  unreachable

bb.ba:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.ct = load ptr, ptr @myoptarg, align 8, !tbaa !20
  br label %.lr.ph.backedge

bb.bb:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.cu = load ptr, ptr @myoptarg, align 8, !tbaa !20 ; 8 uses
  %i.cv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cu, ptr noundef nonnull dereferenceable(14) @.str.18) #24
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %puts538 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %.lr.ph.backedge

bb.bd:                                            ; preds = %bb.bb
  %i.cx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cu, ptr noundef nonnull dereferenceable(12) @.str.20) #24
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %puts537 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  br label %.lr.ph.backedge

bb.bf:                                            ; preds = %bb.bd
  %i.cz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cu, ptr noundef nonnull dereferenceable(11) @.str.22) #24
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %puts536 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  store i32 1, ptr %i.t, align 4, !tbaa !9
  br label %.lr.ph.backedge

bb.bh:                                            ; preds = %bb.bf
  %i.db = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cu, ptr noundef nonnull dereferenceable(11) @.str.24) #24
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %puts535 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  store i32 2, ptr %i.t, align 4, !tbaa !9
  br label %.lr.ph.backedge

bb.bj:                                            ; preds = %bb.bh
  %i.dd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cu, ptr noundef nonnull dereferenceable(8) @.str.26) #24
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %puts534 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %.lr.ph.backedge

bb.bl:                                            ; preds = %bb.bj
  %i.df = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cu, ptr noundef nonnull dereferenceable(12) @.str.28) #24
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %puts533 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %.lr.ph.backedge

bb.bn:                                            ; preds = %bb.bl
  %i.dh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cu, ptr noundef nonnull dereferenceable(12) @.str.30) #24
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %puts532 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %.lr.ph.backedge

bb.bp:                                            ; preds = %bb.bn
  %i.dj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cu, ptr noundef nonnull dereferenceable(16) @.str.32) #24
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 3, ptr %i.t, align 4, !tbaa !9
  br label %.lr.ph.backedge

bb.br:                                            ; preds = %bb.bp
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #26
  unreachable

bb.bs:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.dl = load ptr, ptr @myoptarg, align 8, !tbaa !20
  br label %.lr.ph.backedge

bb.bt:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.dm = load ptr, ptr @myoptarg, align 8, !tbaa !20
  br label %.lr.ph.backedge

bb.bu:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.dn = load ptr, ptr @myoptarg, align 8, !tbaa !20
  br label %.lr.ph.backedge

bb.bv:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.do = load ptr, ptr @myoptarg, align 8, !tbaa !20
  br label %.lr.ph.backedge

bb.bw:                                            ; preds = %mygetopt_long.exit.thread.a
  %i.dp = load ptr, ptr @myoptarg, align 8, !tbaa !20
  %i.dq = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.dp, ptr noundef null, i32 noundef 10) #20, !inline_history !25
  %i.dr = trunc i64 %i.dq to i32                  ; 2 uses
  %i.ds = add i32 %i.dr, -16001
  %or.cond5 = icmp ult i32 %i.ds, -16000
  br i1 %or.cond5, label %bb.bx, label %.lr.ph.backedge

bb.bx:                                            ; preds = %bb.bw
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #26
  unreachable

bb.by:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

end_hunk_0
begin_hunk_1_@server_test:bb.a

bb.eb:                                            ; preds = %bb.ea
  %i.hf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull @.str.179) ; 0 uses
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.hg = tail call ptr @wc_ecc_get_name(i32 noundef %i.ex) #20
  %i.hh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.180, ptr noundef nonnull dereferenceable(1) %i.hg) #24
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.hj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull @.str.180) ; 0 uses
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.hk = tail call ptr @wc_ecc_get_name(i32 noundef %i.ex) #20
  %i.hl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.181, ptr noundef nonnull dereferenceable(1) %i.hk) #24
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.hn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull @.str.181) ; 0 uses
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.ho = add nuw nsw i32 %.03501646, 1           ; 2 uses
  %i.hp = tail call i32 @wc_ecc_get_curve_id(i32 noundef %i.ho) #20 ; 2 uses
  %i.hq = icmp eq i32 %i.hp, -1
  br i1 %i.hq, label %._crit_edge1647, label %.preheader717

._crit_edge1647:                                  ; preds = %bb.eg, %bb.cy
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  tail call void @exit(i32 noundef 0) #25
  unreachable

bb.eh:                                            ; preds = %.preheader718.preheader
  store i32 15, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.1

.preheader718.1:                                  ; preds = %.preheader718.preheader, %bb.eh
  %i.hr = phi i32 [ %i.v, %.preheader718.preheader ], [ 15, %bb.eh ]
  %i.hs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.166, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.ei, label %.preheader718.2

bb.ei:                                            ; preds = %.preheader718.1
  store i32 16, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.2

.preheader718.2:                                  ; preds = %bb.ei, %.preheader718.1
  %i.hu = phi i32 [ %i.hr, %.preheader718.1 ], [ 16, %bb.ei ]
  %i.hv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.167, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.ej, label %.preheader718.3

bb.ej:                                            ; preds = %.preheader718.2
  store i32 17, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.3

.preheader718.3:                                  ; preds = %bb.ej, %.preheader718.2
  %i.hx = phi i32 [ %i.hu, %.preheader718.2 ], [ 17, %bb.ej ]
  %i.hy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.168, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.ek, label %.preheader718.4

bb.ek:                                            ; preds = %.preheader718.3
  store i32 18, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.4

.preheader718.4:                                  ; preds = %bb.ek, %.preheader718.3
  %i.ia = phi i32 [ %i.hx, %.preheader718.3 ], [ 18, %bb.ek ]
  %i.ib = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.169, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.el, label %.preheader718.5

bb.el:                                            ; preds = %.preheader718.4
  store i32 19, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.5

.preheader718.5:                                  ; preds = %bb.el, %.preheader718.4
  %i.id = phi i32 [ %i.ia, %.preheader718.4 ], [ 19, %bb.el ]
  %i.ie = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.170, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.em, label %.preheader718.6

bb.em:                                            ; preds = %.preheader718.5
  store i32 20, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.6

.preheader718.6:                                  ; preds = %bb.em, %.preheader718.5
  %i.ig = phi i32 [ %i.id, %.preheader718.5 ], [ 20, %bb.em ]
  %i.ih = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.171, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.en, label %.preheader718.7

bb.en:                                            ; preds = %.preheader718.6
  store i32 21, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.7

.preheader718.7:                                  ; preds = %bb.en, %.preheader718.6
  %i.ij = phi i32 [ %i.ig, %.preheader718.6 ], [ 21, %bb.en ]
  %i.ik = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.172, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.eo, label %.preheader718.8

bb.eo:                                            ; preds = %.preheader718.7
  store i32 22, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.8

.preheader718.8:                                  ; preds = %bb.eo, %.preheader718.7
  %i.im = phi i32 [ %i.ij, %.preheader718.7 ], [ 22, %bb.eo ]
  %i.in = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.173, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.ep, label %.preheader718.9

bb.ep:                                            ; preds = %.preheader718.8
  store i32 23, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.9

.preheader718.9:                                  ; preds = %bb.ep, %.preheader718.8
  %i.ip = phi i32 [ %i.im, %.preheader718.8 ], [ 23, %bb.ep ]
  %i.iq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.174, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.eq, label %.preheader718.10

bb.eq:                                            ; preds = %.preheader718.9
  store i32 24, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.10

.preheader718.10:                                 ; preds = %bb.eq, %.preheader718.9
  %i.is = phi i32 [ %i.ip, %.preheader718.9 ], [ 24, %bb.eq ]
  %i.it = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.175, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.er, label %.preheader718.11

bb.er:                                            ; preds = %.preheader718.10
  store i32 25, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.11

.preheader718.11:                                 ; preds = %bb.er, %.preheader718.10
  %i.iv = phi i32 [ %i.is, %.preheader718.10 ], [ 25, %bb.er ]
  %i.iw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.176, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.es, label %.preheader718.12

bb.es:                                            ; preds = %.preheader718.11
  store i32 26, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.12

.preheader718.12:                                 ; preds = %bb.es, %.preheader718.11
  %i.iy = phi i32 [ %i.iv, %.preheader718.11 ], [ 26, %bb.es ]
  %i.iz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.177, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.et, label %.preheader718.13

bb.et:                                            ; preds = %.preheader718.12
  store i32 27, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.13

.preheader718.13:                                 ; preds = %bb.et, %.preheader718.12
  %i.jb = phi i32 [ %i.iy, %.preheader718.12 ], [ 27, %bb.et ]
  %i.jc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.178, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.eu, label %.preheader718.14

bb.eu:                                            ; preds = %.preheader718.13
  store i32 28, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.14

.preheader718.14:                                 ; preds = %bb.eu, %.preheader718.13
  %i.je = phi i32 [ %i.jb, %.preheader718.13 ], [ 28, %bb.eu ]
  %i.jf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.179, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.ev, label %.preheader718.15

bb.ev:                                            ; preds = %.preheader718.14
  store i32 31, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.15

.preheader718.15:                                 ; preds = %bb.ev, %.preheader718.14
  %i.jh = phi i32 [ %i.je, %.preheader718.14 ], [ 31, %bb.ev ]
  %i.ji = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.180, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %bb.ew, label %.preheader718.16

bb.ew:                                            ; preds = %.preheader718.15
  store i32 32, ptr %i.l, align 4, !tbaa !9
  br label %.preheader718.16

.preheader718.16:                                 ; preds = %bb.ew, %.preheader718.15
  %i.jk = phi i32 [ %i.jh, %.preheader718.15 ], [ 32, %bb.ew ] ; 2 uses
  %i.jl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.181, ptr noundef nonnull dereferenceable(1) %i.er) #24
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %.thread, label %bb.ex

.thread:                                          ; preds = %.preheader718.16
  store i32 33, ptr %i.l, align 4, !tbaa !9
  br label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %.thread, %bb.ex, %bb.ax, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread.a, %bb.cp, %bb.cs, %.loopexit, %bb.cb, %bb.bw, %bb.bc, %bb.bg, %bb.bk, %bb.bo, %bb.bq, %bb.bm, %bb.bi, %bb.be, %bb.ay, %bb.fb, %bb.fa, %bb.cw, %bb.cr, %bb.cq, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.cd, %bb.ca, %bb.bz, %bb.by, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.ba, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %.03521605.be = phi i32 [ %.03521605, %.thread ], [ %.03521605, %bb.am ], [ %.03521605, %bb.an ], [ %.03521605, %bb.ao ], [ %.03521605, %bb.ap ], [ %.03521605, %bb.aq ], [ %.03521605, %bb.ar ], [ %.03521605, %bb.as ], [ %.03521605, %bb.at ], [ %.03521605, %bb.au ], [ %.03521605, %bb.av ], [ %.03521605, %bb.aw ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %bb.ay ], [ %.03521605, %bb.ba ], [ %.03521605, %bb.bc ], [ %.03521605, %bb.be ], [ %.03521605, %bb.bg ], [ %.03521605, %bb.bi ], [ %.03521605, %bb.bk ], [ %.03521605, %bb.bm ], [ 1, %bb.bo ], [ %.03521605, %bb.bq ], [ %.03521605, %bb.bs ], [ %.03521605, %bb.bt ], [ %.03521605, %bb.bu ], [ %.03521605, %bb.bv ], [ %.03521605, %bb.bw ], [ %.03521605, %bb.by ], [ %.03521605, %bb.bz ], [ %.03521605, %bb.ca ], [ %.03521605, %bb.cb ], [ %.03521605, %bb.cd ], [ %.03521605, %.loopexit ], [ %.03521605, %bb.cj ], [ %.03521605, %bb.ck ], [ %.03521605, %bb.cl ], [ %.03521605, %bb.cm ], [ %.03521605, %bb.cn ], [ %.03521605, %bb.co ], [ %.03521605, %bb.cp ], [ %.03521605, %bb.cq ], [ %.03521605, %bb.cr ], [ %.03521605, %bb.cs ], [ %.03521605, %bb.cw ], [ %.03521605, %bb.ax ], [ %.03521605, %bb.fa ], [ %.03521605, %bb.fb ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %mygetopt_long.exit.thread.a ], [ %.03521605, %bb.ex ]
  %.03541603.be = phi i32 [ %.03541603, %.thread ], [ %.03541603, %bb.am ], [ %.03541603, %bb.an ], [ %.03541603, %bb.ao ], [ %.03541603, %bb.ap ], [ %.03541603, %bb.aq ], [ %.03541603, %bb.ar ], [ %.03541603, %bb.as ], [ %.03541603, %bb.at ], [ %.03541603, %bb.au ], [ %.03541603, %bb.av ], [ %.03541603, %bb.aw ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %bb.ay ], [ %.03541603, %bb.ba ], [ %.03541603, %bb.bc ], [ %.03541603, %bb.be ], [ %.03541603, %bb.bg ], [ %.03541603, %bb.bi ], [ 2, %bb.bk ], [ 1, %bb.bm ], [ %.03541603, %bb.bo ], [ %.03541603, %bb.bq ], [ %.03541603, %bb.bs ], [ %.03541603, %bb.bt ], [ %.03541603, %bb.bu ], [ %.03541603, %bb.bv ], [ %.03541603, %bb.bw ], [ %.03541603, %bb.by ], [ %.03541603, %bb.bz ], [ %.03541603, %bb.ca ], [ %.03541603, %bb.cb ], [ %.03541603, %bb.cd ], [ %.03541603, %.loopexit ], [ %.03541603, %bb.cj ], [ %.03541603, %bb.ck ], [ %.03541603, %bb.cl ], [ %.03541603, %bb.cm ], [ %.03541603, %bb.cn ], [ %.03541603, %bb.co ], [ %.03541603, %bb.cp ], [ %.03541603, %bb.cq ], [ %.03541603, %bb.cr ], [ %.03541603, %bb.cs ], [ %.03541603, %bb.cw ], [ %.03541603, %bb.ax ], [ %.03541603, %bb.fa ], [ %.03541603, %bb.fb ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %mygetopt_long.exit.thread.a ], [ %.03541603, %bb.ex ]
  %.03561601.be = phi i32 [ %.03561601, %.thread ], [ %.03561601, %bb.am ], [ %.03561601, %bb.an ], [ %.03561601, %bb.ao ], [ %.03561601, %bb.ap ], [ %.03561601, %bb.aq ], [ %.03561601, %bb.ar ], [ %.03561601, %bb.as ], [ %.03561601, %bb.at ], [ %.03561601, %bb.au ], [ %.03561601, %bb.av ], [ %.03561601, %bb.aw ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %bb.ay ], [ %.03561601, %bb.ba ], [ %.03561601, %bb.bc ], [ 1, %bb.be ], [ %.03561601, %bb.bg ], [ %.03561601, %bb.bi ], [ %.03561601, %bb.bk ], [ %.03561601, %bb.bm ], [ %.03561601, %bb.bo ], [ %.03561601, %bb.bq ], [ %.03561601, %bb.bs ], [ %.03561601, %bb.bt ], [ %.03561601, %bb.bu ], [ %.03561601, %bb.bv ], [ %.03561601, %bb.bw ], [ %.03561601, %bb.by ], [ %.03561601, %bb.bz ], [ %.03561601, %bb.ca ], [ %.03561601, %bb.cb ], [ %.03561601, %bb.cd ], [ %.03561601, %.loopexit ], [ %.03561601, %bb.cj ], [ %.03561601, %bb.ck ], [ %.03561601, %bb.cl ], [ %.03561601, %bb.cm ], [ %.03561601, %bb.cn ], [ %.03561601, %bb.co ], [ %.03561601, %bb.cp ], [ %.03561601, %bb.cq ], [ %.03561601, %bb.cr ], [ %.03561601, %bb.cs ], [ %.03561601, %bb.cw ], [ %.03561601, %bb.ax ], [ %.03561601, %bb.fa ], [ %.03561601, %bb.fb ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %mygetopt_long.exit.thread.a ], [ %.03561601, %bb.ex ]
  %.03581599.be = phi ptr [ %.03581599, %.thread ], [ %.03581599, %bb.am ], [ %.03581599, %bb.an ], [ %.03581599, %bb.ao ], [ %.03581599, %bb.ap ], [ %.03581599, %bb.aq ], [ %.03581599, %bb.ar ], [ %.03581599, %bb.as ], [ %.03581599, %bb.at ], [ %.03581599, %bb.au ], [ %.03581599, %bb.av ], [ %.03581599, %bb.aw ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %bb.ay ], [ %.03581599, %bb.ba ], [ %.03581599, %bb.bc ], [ %.03581599, %bb.be ], [ %.03581599, %bb.bg ], [ %.03581599, %bb.bi ], [ %.03581599, %bb.bk ], [ %.03581599, %bb.bm ], [ %.03581599, %bb.bo ], [ %.03581599, %bb.bq ], [ %.03581599, %bb.bs ], [ %.03581599, %bb.bt ], [ %.03581599, %bb.bu ], [ %.03581599, %bb.bv ], [ %.03581599, %bb.bw ], [ %.03581599, %bb.by ], [ %.03581599, %bb.bz ], [ %.03581599, %bb.ca ], [ %.03581599, %bb.cb ], [ %.03581599, %bb.cd ], [ %.03581599, %.loopexit ], [ %.03581599, %bb.cj ], [ %.03581599, %bb.ck ], [ %.03581599, %bb.cl ], [ %.03581599, %bb.cm ], [ %.03581599, %bb.cn ], [ %.03581599, %bb.co ], [ %.03581599, %bb.cp ], [ %.03581599, %bb.cq ], [ %.03581599, %bb.cr ], [ %.03581599, %bb.cs ], [ %i.eq, %bb.cw ], [ %.03581599, %bb.ax ], [ %.03581599, %bb.fa ], [ %.03581599, %bb.fb ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %mygetopt_long.exit.thread.a ], [ %.03581599, %bb.ex ]
  %.03601597.be = phi i32 [ %.03601597, %.thread ], [ %.03601597, %bb.am ], [ %.03601597, %bb.an ], [ %.03601597, %bb.ao ], [ %.03601597, %bb.ap ], [ %.03601597, %bb.aq ], [ %.03601597, %bb.ar ], [ %.03601597, %bb.as ], [ %.03601597, %bb.at ], [ %.03601597, %bb.au ], [ %.03601597, %bb.av ], [ %.03601597, %bb.aw ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %bb.ay ], [ %.03601597, %bb.ba ], [ %.03601597, %bb.bc ], [ %.03601597, %bb.be ], [ %.03601597, %bb.bg ], [ %.03601597, %bb.bi ], [ %.03601597, %bb.bk ], [ %.03601597, %bb.bm ], [ %.03601597, %bb.bo ], [ %.03601597, %bb.bq ], [ %.03601597, %bb.bs ], [ %.03601597, %bb.bt ], [ %.03601597, %bb.bu ], [ %.03601597, %bb.bv ], [ %.03601597, %bb.bw ], [ %.03601597, %bb.by ], [ %.03601597, %bb.bz ], [ %.03601597, %bb.ca ], [ %.03601597, %bb.cb ], [ %.03601597, %bb.cd ], [ %.03601597, %.loopexit ], [ %.03601597, %bb.cj ], [ %.03601597, %bb.ck ], [ %.03601597, %bb.cl ], [ %.03601597, %bb.cm ], [ %.03601597, %bb.cn ], [ %.03601597, %bb.co ], [ %.03601597, %bb.cp ], [ %.03601597, %bb.cq ], [ %.03601597, %bb.cr ], [ %.03601597, %bb.cs ], [ 1, %bb.cw ], [ %.03601597, %bb.ax ], [ %.03601597, %bb.fa ], [ %.03601597, %bb.fb ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %mygetopt_long.exit.thread.a ], [ %.03601597, %bb.ex ]
  %.03621595.be = phi i32 [ %.03621595, %.thread ], [ %.03621595, %bb.am ], [ %.03621595, %bb.an ], [ %.03621595, %bb.ao ], [ %.03621595, %bb.ap ], [ %.03621595, %bb.aq ], [ %.03621595, %bb.ar ], [ %.03621595, %bb.as ], [ %.03621595, %bb.at ], [ %.03621595, %bb.au ], [ %.03621595, %bb.av ], [ %.03621595, %bb.aw ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %bb.ay ], [ %.03621595, %bb.ba ], [ %.03621595, %bb.bc ], [ %.03621595, %bb.be ], [ %.03621595, %bb.bg ], [ %.03621595, %bb.bi ], [ %.03621595, %bb.bk ], [ %.03621595, %bb.bm ], [ %.03621595, %bb.bo ], [ %.03621595, %bb.bq ], [ %.03621595, %bb.bs ], [ %.03621595, %bb.bt ], [ %.03621595, %bb.bu ], [ %.03621595, %bb.bv ], [ %.03621595, %bb.bw ], [ %.03621595, %bb.by ], [ %.03621595, %bb.bz ], [ %.03621595, %bb.ca ], [ %.03621595, %bb.cb ], [ %.03621595, %bb.cd ], [ %.03621595, %.loopexit ], [ %.03621595, %bb.cj ], [ 1, %bb.ck ], [ 2, %bb.cl ], [ %.03621595, %bb.cm ], [ %.03621595, %bb.cn ], [ %.03621595, %bb.co ], [ %.03621595, %bb.cp ], [ %.03621595, %bb.cq ], [ %.03621595, %bb.cr ], [ %.03621595, %bb.cs ], [ 2, %bb.cw ], [ %.03621595, %bb.ax ], [ %.03621595, %bb.fa ], [ %.03621595, %bb.fb ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %mygetopt_long.exit.thread.a ], [ %.03621595, %bb.ex ]
  %.03641593.be = phi i32 [ %.03641593, %.thread ], [ %.03641593, %bb.am ], [ %.03641593, %bb.an ], [ %.03641593, %bb.ao ], [ %.03641593, %bb.ap ], [ %.03641593, %bb.aq ], [ %.03641593, %bb.ar ], [ %.03641593, %bb.as ], [ %.03641593, %bb.at ], [ %.03641593, %bb.au ], [ %.03641593, %bb.av ], [ %.03641593, %bb.aw ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %bb.ay ], [ %.03641593, %bb.ba ], [ %.03641593, %bb.bc ], [ %.03641593, %bb.be ], [ %.03641593, %bb.bg ], [ %.03641593, %bb.bi ], [ %.03641593, %bb.bk ], [ %.03641593, %bb.bm ], [ %.03641593, %bb.bo ], [ %.03641593, %bb.bq ], [ %.03641593, %bb.bs ], [ %.03641593, %bb.bt ], [ %.03641593, %bb.bu ], [ %.03641593, %bb.bv ], [ %.03641593, %bb.bw ], [ %.03641593, %bb.by ], [ %.03641593, %bb.bz ], [ %.03641593, %bb.ca ], [ %.03641593, %bb.cb ], [ %.03641593, %bb.cd ], [ %.03641593, %.loopexit ], [ %.03641593, %bb.cj ], [ %.03641593, %bb.ck ], [ %.03641593, %bb.cl ], [ %.03641593, %bb.cm ], [ %.03641593, %bb.cn ], [ %.03641593, %bb.co ], [ %.03641593, %bb.cp ], [ 0, %bb.cq ], [ %.03641593, %bb.cr ], [ %.03641593, %bb.cs ], [ %.03641593, %bb.cw ], [ %.03641593, %bb.ax ], [ %.03641593, %bb.fa ], [ %.03641593, %bb.fb ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %mygetopt_long.exit.thread.a ], [ %.03641593, %bb.ex ]
  %.03661591.be = phi i32 [ %.03661591, %.thread ], [ %.03661591, %bb.am ], [ %.03661591, %bb.an ], [ %.03661591, %bb.ao ], [ %.03661591, %bb.ap ], [ %.03661591, %bb.aq ], [ %.03661591, %bb.ar ], [ %.03661591, %bb.as ], [ %.03661591, %bb.at ], [ %.03661591, %bb.au ], [ %.03661591, %bb.av ], [ %.03661591, %bb.aw ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %bb.ay ], [ %.03661591, %bb.ba ], [ %.03661591, %bb.bc ], [ %.03661591, %bb.be ], [ %.03661591, %bb.bg ], [ %.03661591, %bb.bi ], [ %.03661591, %bb.bk ], [ %.03661591, %bb.bm ], [ %.03661591, %bb.bo ], [ %.03661591, %bb.bq ], [ %.03661591, %bb.bs ], [ %.03661591, %bb.bt ], [ %.03661591, %bb.bu ], [ %.03661591, %bb.bv ], [ %.03661591, %bb.bw ], [ %.03661591, %bb.by ], [ %.03661591, %bb.bz ], [ %.03661591, %bb.ca ], [ %.03661591, %bb.cb ], [ %.03661591, %bb.cd ], [ %.03661591, %.loopexit ], [ %.03661591, %bb.cj ], [ %.03661591, %bb.ck ], [ %.03661591, %bb.cl ], [ %.03661591, %bb.cm ], [ %.03661591, %bb.cn ], [ 1, %bb.co ], [ %.03661591, %bb.cp ], [ %.03661591, %bb.cq ], [ %.03661591, %bb.cr ], [ %.03661591, %bb.cs ], [ %.03661591, %bb.cw ], [ %.03661591, %bb.ax ], [ %.03661591, %bb.fa ], [ %.03661591, %bb.fb ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %mygetopt_long.exit.thread.a ], [ %.03661591, %bb.ex ]
  %.03681589.be = phi i32 [ %.03681589, %.thread ], [ %.03681589, %bb.am ], [ %.03681589, %bb.an ], [ %.03681589, %bb.ao ], [ %.03681589, %bb.ap ], [ %.03681589, %bb.aq ], [ %.03681589, %bb.ar ], [ %.03681589, %bb.as ], [ %.03681589, %bb.at ], [ %.03681589, %bb.au ], [ %.03681589, %bb.av ], [ %.03681589, %bb.aw ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %bb.ay ], [ %.03681589, %bb.ba ], [ %.03681589, %bb.bc ], [ %.03681589, %bb.be ], [ %.03681589, %bb.bg ], [ %.03681589, %bb.bi ], [ %.03681589, %bb.bk ], [ %.03681589, %bb.bm ], [ %.03681589, %bb.bo ], [ %.03681589, %bb.bq ], [ %.03681589, %bb.bs ], [ %.03681589, %bb.bt ], [ %.03681589, %bb.bu ], [ %.03681589, %bb.bv ], [ %.03681589, %bb.bw ], [ %.03681589, %bb.by ], [ %.03681589, %bb.bz ], [ %.03681589, %bb.ca ], [ %.03681589, %bb.cb ], [ %.03681589, %bb.cd ], [ %.03681589, %.loopexit ], [ %.03681589, %bb.cj ], [ %.03681589, %bb.ck ], [ %.03681589, %bb.cl ], [ %.03681589, %bb.cm ], [ 1, %bb.cn ], [ %.03681589, %bb.co ], [ %.03681589, %bb.cp ], [ %.03681589, %bb.cq ], [ %.03681589, %bb.cr ], [ %.03681589, %bb.cs ], [ %.03681589, %bb.cw ], [ %.03681589, %bb.ax ], [ %.03681589, %bb.fa ], [ %.03681589, %bb.fb ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %mygetopt_long.exit.thread.a ], [ %.03681589, %bb.ex ]
  %.03701587.be = phi i32 [ %.03701587, %.thread ], [ %.03701587, %bb.am ], [ %.03701587, %bb.an ], [ %.03701587, %bb.ao ], [ %.03701587, %bb.ap ], [ %.03701587, %bb.aq ], [ %.03701587, %bb.ar ], [ %.03701587, %bb.as ], [ %.03701587, %bb.at ], [ %.03701587, %bb.au ], [ %.03701587, %bb.av ], [ %.03701587, %bb.aw ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %bb.ay ], [ %.03701587, %bb.ba ], [ %.03701587, %bb.bc ], [ %.03701587, %bb.be ], [ %.03701587, %bb.bg ], [ %.03701587, %bb.bi ], [ %.03701587, %bb.bk ], [ %.03701587, %bb.bm ], [ %.03701587, %bb.bo ], [ %.03701587, %bb.bq ], [ %.03701587, %bb.bs ], [ %.03701587, %bb.bt ], [ %.03701587, %bb.bu ], [ %.03701587, %bb.bv ], [ %.03701587, %bb.bw ], [ %.03701587, %bb.by ], [ %.03701587, %bb.bz ], [ %.03701587, %bb.ca ], [ %.03701587, %bb.cb ], [ %.03701587, %bb.cd ], [ %.03701587, %.loopexit ], [ %.03701587, %bb.cj ], [ %.03701587, %bb.ck ], [ %.03701587, %bb.cl ], [ %.03701587, %bb.cm ], [ %.03701587, %bb.cn ], [ %.03701587, %bb.co ], [ %.03701587, %bb.cp ], [ %.03701587, %bb.cq ], [ %.03701587, %bb.cr ], [ %.03701587, %bb.cs ], [ %.03701587, %bb.cw ], [ %.03701587, %bb.ax ], [ 1, %bb.fa ], [ %.03701587, %bb.fb ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %mygetopt_long.exit.thread.a ], [ %.03701587, %bb.ex ]
  %.03721585.be = phi i32 [ %.03721585, %.thread ], [ %.03721585, %bb.am ], [ %.03721585, %bb.an ], [ %.03721585, %bb.ao ], [ %.03721585, %bb.ap ], [ %.03721585, %bb.aq ], [ %.03721585, %bb.ar ], [ %.03721585, %bb.as ], [ %.03721585, %bb.at ], [ %.03721585, %bb.au ], [ %.03721585, %bb.av ], [ %.03721585, %bb.aw ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %bb.ay ], [ %.03721585, %bb.ba ], [ %.03721585, %bb.bc ], [ %.03721585, %bb.be ], [ %.03721585, %bb.bg ], [ %.03721585, %bb.bi ], [ %.03721585, %bb.bk ], [ %.03721585, %bb.bm ], [ %.03721585, %bb.bo ], [ %.03721585, %bb.bq ], [ %.03721585, %bb.bs ], [ %.03721585, %bb.bt ], [ %.03721585, %bb.bu ], [ %.03721585, %bb.bv ], [ %.03721585, %bb.bw ], [ %.03721585, %bb.by ], [ %.03721585, %bb.bz ], [ %.03721585, %bb.ca ], [ %.03721585, %bb.cb ], [ %.03721585, %bb.cd ], [ %.03721585, %.loopexit ], [ %.03721585, %bb.cj ], [ %.03721585, %bb.ck ], [ %.03721585, %bb.cl ], [ 1, %bb.cm ], [ %.03721585, %bb.cn ], [ %.03721585, %bb.co ], [ %.03721585, %bb.cp ], [ %.03721585, %bb.cq ], [ %.03721585, %bb.cr ], [ %.03721585, %bb.cs ], [ %.03721585, %bb.cw ], [ %.03721585, %bb.ax ], [ %.03721585, %bb.fa ], [ %.03721585, %bb.fb ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %mygetopt_long.exit.thread.a ], [ %.03721585, %bb.ex ]
  %.03741583.be = phi ptr [ %.03741583, %.thread ], [ %.03741583, %bb.am ], [ %.03741583, %bb.an ], [ %.03741583, %bb.ao ], [ %.03741583, %bb.ap ], [ %.03741583, %bb.aq ], [ %.03741583, %bb.ar ], [ %.03741583, %bb.as ], [ %.03741583, %bb.at ], [ %.03741583, %bb.au ], [ %.03741583, %bb.av ], [ %.03741583, %bb.aw ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %bb.ay ], [ %.03741583, %bb.ba ], [ %.03741583, %bb.bc ], [ %.03741583, %bb.be ], [ %.03741583, %bb.bg ], [ %.03741583, %bb.bi ], [ %.03741583, %bb.bk ], [ %.03741583, %bb.bm ], [ %.03741583, %bb.bo ], [ %.03741583, %bb.bq ], [ %.03741583, %bb.bs ], [ %.03741583, %bb.bt ], [ %.03741583, %bb.bu ], [ %.03741583, %bb.bv ], [ %.03741583, %bb.bw ], [ %.03741583, %bb.by ], [ %i.dt, %bb.bz ], [ %.03741583, %bb.ca ], [ %.03741583, %bb.cb ], [ %.03741583, %bb.cd ], [ %.03741583, %.loopexit ], [ %.03741583, %bb.cj ], [ %.03741583, %bb.ck ], [ %.03741583, %bb.cl ], [ %.03741583, %bb.cm ], [ %.03741583, %bb.cn ], [ %.03741583, %bb.co ], [ %.03741583, %bb.cp ], [ %.03741583, %bb.cq ], [ %.03741583, %bb.cr ], [ %.03741583, %bb.cs ], [ %.03741583, %bb.cw ], [ %.03741583, %bb.ax ], [ %.03741583, %bb.fa ], [ %.03741583, %bb.fb ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %mygetopt_long.exit.thread.a ], [ %.03741583, %bb.ex ]
  %.03761581.be = phi ptr [ %.03761581, %.thread ], [ %.03761581, %bb.am ], [ %.03761581, %bb.an ], [ %.03761581, %bb.ao ], [ %.03761581, %bb.ap ], [ %.03761581, %bb.aq ], [ %.03761581, %bb.ar ], [ %.03761581, %bb.as ], [ %.03761581, %bb.at ], [ %.03761581, %bb.au ], [ %.03761581, %bb.av ], [ %.03761581, %bb.aw ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %bb.ay ], [ %.03761581, %bb.ba ], [ %.03761581, %bb.bc ], [ %.03761581, %bb.be ], [ %.03761581, %bb.bg ], [ %.03761581, %bb.bi ], [ %.03761581, %bb.bk ], [ %.03761581, %bb.bm ], [ %.03761581, %bb.bo ], [ %.03761581, %bb.bq ], [ %.03761581, %bb.bs ], [ %.03761581, %bb.bt ], [ %.03761581, %bb.bu ], [ %i.do, %bb.bv ], [ %.03761581, %bb.bw ], [ %.03761581, %bb.by ], [ %.03761581, %bb.bz ], [ %.03761581, %bb.ca ], [ %.03761581, %bb.cb ], [ %.03761581, %bb.cd ], [ %.03761581, %.loopexit ], [ %.03761581, %bb.cj ], [ %.03761581, %bb.ck ], [ %.03761581, %bb.cl ], [ %.03761581, %bb.cm ], [ %.03761581, %bb.cn ], [ %.03761581, %bb.co ], [ %.03761581, %bb.cp ], [ %.03761581, %bb.cq ], [ %.03761581, %bb.cr ], [ %.03761581, %bb.cs ], [ %.03761581, %bb.cw ], [ %.03761581, %bb.ax ], [ %.03761581, %bb.fa ], [ %.03761581, %bb.fb ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %mygetopt_long.exit.thread.a ], [ %.03761581, %bb.ex ]
  %.03781579.be = phi ptr [ %.03781579, %.thread ], [ %.03781579, %bb.am ], [ %.03781579, %bb.an ], [ %.03781579, %bb.ao ], [ %.03781579, %bb.ap ], [ %.03781579, %bb.aq ], [ %.03781579, %bb.ar ], [ %.03781579, %bb.as ], [ %.03781579, %bb.at ], [ %.03781579, %bb.au ], [ %.03781579, %bb.av ], [ %.03781579, %bb.aw ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %bb.ay ], [ %.03781579, %bb.ba ], [ %.03781579, %bb.bc ], [ %.03781579, %bb.be ], [ %.03781579, %bb.bg ], [ %.03781579, %bb.bi ], [ %.03781579, %bb.bk ], [ %.03781579, %bb.bm ], [ %.03781579, %bb.bo ], [ %.03781579, %bb.bq ], [ %.03781579, %bb.bs ], [ %.03781579, %bb.bt ], [ %i.dn, %bb.bu ], [ %.03781579, %bb.bv ], [ %.03781579, %bb.bw ], [ %.03781579, %bb.by ], [ %.03781579, %bb.bz ], [ %.03781579, %bb.ca ], [ %.03781579, %bb.cb ], [ %.03781579, %bb.cd ], [ %.03781579, %.loopexit ], [ %.03781579, %bb.cj ], [ %.03781579, %bb.ck ], [ %.03781579, %bb.cl ], [ %.03781579, %bb.cm ], [ %.03781579, %bb.cn ], [ %.03781579, %bb.co ], [ %.03781579, %bb.cp ], [ %.03781579, %bb.cq ], [ %.03781579, %bb.cr ], [ %.03781579, %bb.cs ], [ %.03781579, %bb.cw ], [ %.03781579, %bb.ax ], [ %.03781579, %bb.fa ], [ %.03781579, %bb.fb ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %mygetopt_long.exit.thread.a ], [ %.03781579, %bb.ex ]
  %.03801577.be = phi ptr [ %.03801577, %.thread ], [ %.03801577, %bb.am ], [ %.03801577, %bb.an ], [ %.03801577, %bb.ao ], [ %.03801577, %bb.ap ], [ %.03801577, %bb.aq ], [ %.03801577, %bb.ar ], [ %.03801577, %bb.as ], [ %.03801577, %bb.at ], [ %.03801577, %bb.au ], [ %.03801577, %bb.av ], [ %.03801577, %bb.aw ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %bb.ay ], [ %.03801577, %bb.ba ], [ %.03801577, %bb.bc ], [ %.03801577, %bb.be ], [ %.03801577, %bb.bg ], [ %.03801577, %bb.bi ], [ %.03801577, %bb.bk ], [ %.03801577, %bb.bm ], [ %.03801577, %bb.bo ], [ %.03801577, %bb.bq ], [ %.03801577, %bb.bs ], [ %i.dm, %bb.bt ], [ %.03801577, %bb.bu ], [ %.03801577, %bb.bv ], [ %.03801577, %bb.bw ], [ %.03801577, %bb.by ], [ %.03801577, %bb.bz ], [ %.03801577, %bb.ca ], [ %.03801577, %bb.cb ], [ %.03801577, %bb.cd ], [ %.03801577, %.loopexit ], [ %.03801577, %bb.cj ], [ %.03801577, %bb.ck ], [ %.03801577, %bb.cl ], [ %.03801577, %bb.cm ], [ %.03801577, %bb.cn ], [ %.03801577, %bb.co ], [ %.03801577, %bb.cp ], [ %.03801577, %bb.cq ], [ %.03801577, %bb.cr ], [ %.03801577, %bb.cs ], [ %.03801577, %bb.cw ], [ %.03801577, %bb.ax ], [ %.03801577, %bb.fa ], [ %.03801577, %bb.fb ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %mygetopt_long.exit.thread.a ], [ %.03801577, %bb.ex ]
  %.03821575.be = phi ptr [ %.03821575, %.thread ], [ %.03821575, %bb.am ], [ %.03821575, %bb.an ], [ %.03821575, %bb.ao ], [ %.03821575, %bb.ap ], [ %.03821575, %bb.aq ], [ %.03821575, %bb.ar ], [ %.03821575, %bb.as ], [ %.03821575, %bb.at ], [ %.03821575, %bb.au ], [ %.03821575, %bb.av ], [ %.03821575, %bb.aw ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %bb.ay ], [ %.03821575, %bb.ba ], [ %.03821575, %bb.bc ], [ %.03821575, %bb.be ], [ %.03821575, %bb.bg ], [ %.03821575, %bb.bi ], [ %.03821575, %bb.bk ], [ %.03821575, %bb.bm ], [ %.03821575, %bb.bo ], [ %.03821575, %bb.bq ], [ %i.dl, %bb.bs ], [ %.03821575, %bb.bt ], [ %.03821575, %bb.bu ], [ %.03821575, %bb.bv ], [ %.03821575, %bb.bw ], [ %.03821575, %bb.by ], [ %.03821575, %bb.bz ], [ %.03821575, %bb.ca ], [ %.03821575, %bb.cb ], [ %.03821575, %bb.cd ], [ %.03821575, %.loopexit ], [ %.03821575, %bb.cj ], [ %.03821575, %bb.ck ], [ %.03821575, %bb.cl ], [ %.03821575, %bb.cm ], [ %.03821575, %bb.cn ], [ %.03821575, %bb.co ], [ %.03821575, %bb.cp ], [ %.03821575, %bb.cq ], [ %.03821575, %bb.cr ], [ %.03821575, %bb.cs ], [ %.03821575, %bb.cw ], [ %.03821575, %bb.ax ], [ %.03821575, %bb.fa ], [ %.03821575, %bb.fb ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %mygetopt_long.exit.thread.a ], [ %.03821575, %bb.ex ]
  %.03841573.be = phi i32 [ %.03841573, %.thread ], [ %.03841573, %bb.am ], [ %.03841573, %bb.an ], [ %.03841573, %bb.ao ], [ %.03841573, %bb.ap ], [ %.03841573, %bb.aq ], [ %.03841573, %bb.ar ], [ %.03841573, %bb.as ], [ %.03841573, %bb.at ], [ %.03841573, %bb.au ], [ %.03841573, %bb.av ], [ %.03841573, %bb.aw ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %bb.ay ], [ %.03841573, %bb.ba ], [ 1, %bb.bc ], [ %.03841573, %bb.be ], [ %.03841573, %bb.bg ], [ %.03841573, %bb.bi ], [ %.03841573, %bb.bk ], [ %.03841573, %bb.bm ], [ %.03841573, %bb.bo ], [ %.03841573, %bb.bq ], [ %.03841573, %bb.bs ], [ %.03841573, %bb.bt ], [ %.03841573, %bb.bu ], [ %.03841573, %bb.bv ], [ %.03841573, %bb.bw ], [ %.03841573, %bb.by ], [ %.03841573, %bb.bz ], [ %.03841573, %bb.ca ], [ %.03841573, %bb.cb ], [ %.03841573, %bb.cd ], [ %.03841573, %.loopexit ], [ %.03841573, %bb.cj ], [ %.03841573, %bb.ck ], [ %.03841573, %bb.cl ], [ %.03841573, %bb.cm ], [ %.03841573, %bb.cn ], [ %.03841573, %bb.co ], [ %.03841573, %bb.cp ], [ %.03841573, %bb.cq ], [ %.03841573, %bb.cr ], [ %.03841573, %bb.cs ], [ %.03841573, %bb.cw ], [ %.03841573, %bb.ax ], [ %.03841573, %bb.fa ], [ %.03841573, %bb.fb ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %mygetopt_long.exit.thread.a ], [ %.03841573, %bb.ex ]
  %.03861571.be = phi ptr [ %.03861571, %.thread ], [ %.03861571, %bb.am ], [ %.03861571, %bb.an ], [ %.03861571, %bb.ao ], [ %.03861571, %bb.ap ], [ %.03861571, %bb.aq ], [ %.03861571, %bb.ar ], [ %.03861571, %bb.as ], [ %.03861571, %bb.at ], [ %.03861571, %bb.au ], [ %.03861571, %bb.av ], [ %.03861571, %bb.aw ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %bb.ay ], [ %i.ct, %bb.ba ], [ %.03861571, %bb.bc ], [ %.03861571, %bb.be ], [ %.03861571, %bb.bg ], [ %.03861571, %bb.bi ], [ %.03861571, %bb.bk ], [ %.03861571, %bb.bm ], [ %.03861571, %bb.bo ], [ %.03861571, %bb.bq ], [ %.03861571, %bb.bs ], [ %.03861571, %bb.bt ], [ %.03861571, %bb.bu ], [ %.03861571, %bb.bv ], [ %.03861571, %bb.bw ], [ %.03861571, %bb.by ], [ %.03861571, %bb.bz ], [ %.03861571, %bb.ca ], [ %.03861571, %bb.cb ], [ %.03861571, %bb.cd ], [ %.03861571, %.loopexit ], [ %.03861571, %bb.cj ], [ %.03861571, %bb.ck ], [ %.03861571, %bb.cl ], [ %.03861571, %bb.cm ], [ %.03861571, %bb.cn ], [ %.03861571, %bb.co ], [ %.03861571, %bb.cp ], [ %.03861571, %bb.cq ], [ %.03861571, %bb.cr ], [ %.03861571, %bb.cs ], [ %.03861571, %bb.cw ], [ %.03861571, %bb.ax ], [ %.03861571, %bb.fa ], [ %.03861571, %bb.fb ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %mygetopt_long.exit.thread.a ], [ %.03861571, %bb.ex ]
  %.03881569.be = phi ptr [ %.03881569, %.thread ], [ %.03881569, %bb.am ], [ %.03881569, %bb.an ], [ %.03881569, %bb.ao ], [ %.03881569, %bb.ap ], [ %.03881569, %bb.aq ], [ %.03881569, %bb.ar ], [ %.03881569, %bb.as ], [ %i.ck, %bb.at ], [ %.03881569, %bb.au ], [ %.03881569, %bb.av ], [ %.03881569, %bb.aw ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %bb.ay ], [ %.03881569, %bb.ba ], [ %.03881569, %bb.bc ], [ %.03881569, %bb.be ], [ %.03881569, %bb.bg ], [ %.03881569, %bb.bi ], [ %.03881569, %bb.bk ], [ %.03881569, %bb.bm ], [ %.03881569, %bb.bo ], [ %.03881569, %bb.bq ], [ %.03881569, %bb.bs ], [ %.03881569, %bb.bt ], [ %.03881569, %bb.bu ], [ %.03881569, %bb.bv ], [ %.03881569, %bb.bw ], [ %.03881569, %bb.by ], [ %.03881569, %bb.bz ], [ %.03881569, %bb.ca ], [ %.03881569, %bb.cb ], [ %.03881569, %bb.cd ], [ %.03881569, %.loopexit ], [ %.03881569, %bb.cj ], [ %.03881569, %bb.ck ], [ %.03881569, %bb.cl ], [ %.03881569, %bb.cm ], [ %.03881569, %bb.cn ], [ %.03881569, %bb.co ], [ %.03881569, %bb.cp ], [ %.03881569, %bb.cq ], [ %.03881569, %bb.cr ], [ %.03881569, %bb.cs ], [ %.03881569, %bb.cw ], [ %.03881569, %bb.ax ], [ %.03881569, %bb.fa ], [ %.03881569, %bb.fb ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %mygetopt_long.exit.thread.a ], [ %.03881569, %bb.ex ]
  %.03961567.be = phi i32 [ %.03961567, %.thread ], [ %.03961567, %bb.am ], [ %.03961567, %bb.an ], [ %.03961567, %bb.ao ], [ %.03961567, %bb.ap ], [ %.03961567, %bb.aq ], [ %.03961567, %bb.ar ], [ %.03961567, %bb.as ], [ %.03961567, %bb.at ], [ %.03961567, %bb.au ], [ %.03961567, %bb.av ], [ %.03961567, %bb.aw ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %bb.ay ], [ %.03961567, %bb.ba ], [ %.03961567, %bb.bc ], [ %.03961567, %bb.be ], [ %.03961567, %bb.bg ], [ %.03961567, %bb.bi ], [ %.03961567, %bb.bk ], [ %.03961567, %bb.bm ], [ %.03961567, %bb.bo ], [ %.03961567, %bb.bq ], [ %.03961567, %bb.bs ], [ %.03961567, %bb.bt ], [ %.03961567, %bb.bu ], [ %.03961567, %bb.bv ], [ %i.dr, %bb.bw ], [ %.03961567, %bb.by ], [ %.03961567, %bb.bz ], [ %.03961567, %bb.ca ], [ %.03961567, %bb.cb ], [ %.03961567, %bb.cd ], [ %.03961567, %.loopexit ], [ %.03961567, %bb.cj ], [ %.03961567, %bb.ck ], [ %.03961567, %bb.cl ], [ %.03961567, %bb.cm ], [ %.03961567, %bb.cn ], [ %.03961567, %bb.co ], [ %.03961567, %bb.cp ], [ %.03961567, %bb.cq ], [ %.03961567, %bb.cr ], [ %.03961567, %bb.cs ], [ %.03961567, %bb.cw ], [ %.03961567, %bb.ax ], [ %.03961567, %bb.fa ], [ %.03961567, %bb.fb ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %mygetopt_long.exit.thread.a ], [ %.03961567, %bb.ex ]
  %.03981565.be = phi i64 [ %.03981565, %.thread ], [ %.03981565, %bb.am ], [ %.03981565, %bb.an ], [ %.03981565, %bb.ao ], [ %.03981565, %bb.ap ], [ %.03981565, %bb.aq ], [ %.03981565, %bb.ar ], [ %.03981565, %bb.as ], [ %.03981565, %bb.at ], [ %.03981565, %bb.au ], [ %.03981565, %bb.av ], [ %.03981565, %bb.aw ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %bb.ay ], [ %.03981565, %bb.ba ], [ %.03981565, %bb.bc ], [ %.03981565, %bb.be ], [ %.03981565, %bb.bg ], [ %.03981565, %bb.bi ], [ %.03981565, %bb.bk ], [ %.03981565, %bb.bm ], [ %.03981565, %bb.bo ], [ %.03981565, %bb.bq ], [ %.03981565, %bb.bs ], [ %.03981565, %bb.bt ], [ %.03981565, %bb.bu ], [ %.03981565, %bb.bv ], [ %.03981565, %bb.bw ], [ %.03981565, %bb.by ], [ %.03981565, %bb.bz ], [ %.03981565, %bb.ca ], [ %.03981565, %bb.cb ], [ %.03981565, %bb.cd ], [ %i.dz, %.loopexit ], [ %.03981565, %bb.cj ], [ %.03981565, %bb.ck ], [ %.03981565, %bb.cl ], [ %.03981565, %bb.cm ], [ %.03981565, %bb.cn ], [ %.03981565, %bb.co ], [ %.03981565, %bb.cp ], [ %.03981565, %bb.cq ], [ %.03981565, %bb.cr ], [ %.03981565, %bb.cs ], [ %.03981565, %bb.cw ], [ %.03981565, %bb.ax ], [ %.03981565, %bb.fa ], [ %.03981565, %bb.fb ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %mygetopt_long.exit.thread.a ], [ %.03981565, %bb.ex ]
  %.04001563.be = phi i32 [ %.04001563, %.thread ], [ %.04001563, %bb.am ], [ %.04001563, %bb.an ], [ %.04001563, %bb.ao ], [ %.04001563, %bb.ap ], [ %.04001563, %bb.aq ], [ %.04001563, %bb.ar ], [ %.04001563, %bb.as ], [ %.04001563, %bb.at ], [ %.04001563, %bb.au ], [ %.04001563, %bb.av ], [ %.04001563, %bb.aw ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %bb.ay ], [ %.04001563, %bb.ba ], [ %.04001563, %bb.bc ], [ %.04001563, %bb.be ], [ %.04001563, %bb.bg ], [ %.04001563, %bb.bi ], [ %.04001563, %bb.bk ], [ %.04001563, %bb.bm ], [ %.04001563, %bb.bo ], [ %.04001563, %bb.bq ], [ %.04001563, %bb.bs ], [ %.04001563, %bb.bt ], [ %.04001563, %bb.bu ], [ %.04001563, %bb.bv ], [ %.04001563, %bb.bw ], [ %.04001563, %bb.by ], [ %.04001563, %bb.bz ], [ %.04001563, %bb.ca ], [ %.04001563, %bb.cb ], [ %.04001563, %bb.cd ], [ %.1401, %.loopexit ], [ %.04001563, %bb.cj ], [ %.04001563, %bb.ck ], [ %.04001563, %bb.cl ], [ %.04001563, %bb.cm ], [ %.04001563, %bb.cn ], [ %.04001563, %bb.co ], [ %.04001563, %bb.cp ], [ %.04001563, %bb.cq ], [ %.04001563, %bb.cr ], [ %.04001563, %bb.cs ], [ %.04001563, %bb.cw ], [ %.04001563, %bb.ax ], [ %.04001563, %bb.fa ], [ %.04001563, %bb.fb ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %mygetopt_long.exit.thread.a ], [ %.04001563, %bb.ex ]
  %.04031561.be = phi i32 [ %.04031561, %.thread ], [ %.04031561, %bb.am ], [ %.04031561, %bb.an ], [ %.04031561, %bb.ao ], [ %.04031561, %bb.ap ], [ %.04031561, %bb.aq ], [ %.04031561, %bb.ar ], [ %.04031561, %bb.as ], [ %.04031561, %bb.at ], [ %.04031561, %bb.au ], [ %.04031561, %bb.av ], [ %.04031561, %bb.aw ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %bb.ay ], [ %.04031561, %bb.ba ], [ %.04031561, %bb.bc ], [ %.04031561, %bb.be ], [ %.04031561, %bb.bg ], [ %.04031561, %bb.bi ], [ %.04031561, %bb.bk ], [ %.04031561, %bb.bm ], [ %.04031561, %bb.bo ], [ %.04031561, %bb.bq ], [ %.04031561, %bb.bs ], [ %.04031561, %bb.bt ], [ %.04031561, %bb.bu ], [ %.04031561, %bb.bv ], [ %.04031561, %bb.bw ], [ %.04031561, %bb.by ], [ %.04031561, %bb.bz ], [ %.04031561, %bb.ca ], [ %.04031561, %bb.cb ], [ 1, %bb.cd ], [ %.04031561, %.loopexit ], [ %.04031561, %bb.cj ], [ %.04031561, %bb.ck ], [ %.04031561, %bb.cl ], [ %.04031561, %bb.cm ], [ %.04031561, %bb.cn ], [ %.04031561, %bb.co ], [ %.04031561, %bb.cp ], [ %.04031561, %bb.cq ], [ %.04031561, %bb.cr ], [ %.04031561, %bb.cs ], [ %.04031561, %bb.cw ], [ %.04031561, %bb.ax ], [ %.04031561, %bb.fa ], [ %.04031561, %bb.fb ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %mygetopt_long.exit.thread.a ], [ %.04031561, %bb.ex ]
  %.04061559.be = phi i32 [ %.04061559, %.thread ], [ %.04061559, %bb.am ], [ %.04061559, %bb.an ], [ %.04061559, %bb.ao ], [ %.04061559, %bb.ap ], [ %.04061559, %bb.aq ], [ %.04061559, %bb.ar ], [ %.04061559, %bb.as ], [ %.04061559, %bb.at ], [ %.04061559, %bb.au ], [ %.04061559, %bb.av ], [ %.04061559, %bb.aw ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %bb.ay ], [ %.04061559, %bb.ba ], [ %.04061559, %bb.bc ], [ %.04061559, %bb.be ], [ %.04061559, %bb.bg ], [ %.04061559, %bb.bi ], [ %.04061559, %bb.bk ], [ %.04061559, %bb.bm ], [ %.04061559, %bb.bo ], [ %.04061559, %bb.bq ], [ %.04061559, %bb.bs ], [ %.04061559, %bb.bt ], [ %.04061559, %bb.bu ], [ %.04061559, %bb.bv ], [ %.04061559, %bb.bw ], [ %.04061559, %bb.by ], [ %.04061559, %bb.bz ], [ -1, %bb.ca ], [ %i.dw, %bb.cb ], [ %.04061559, %bb.cd ], [ %.04061559, %.loopexit ], [ %.04061559, %bb.cj ], [ %.04061559, %bb.ck ], [ %.04061559, %bb.cl ], [ %.04061559, %bb.cm ], [ %.04061559, %bb.cn ], [ %.04061559, %bb.co ], [ %.04061559, %bb.cp ], [ %.04061559, %bb.cq ], [ %.04061559, %bb.cr ], [ %.04061559, %bb.cs ], [ %.04061559, %bb.cw ], [ %.04061559, %bb.ax ], [ %.04061559, %bb.fa ], [ %.04061559, %bb.fb ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %mygetopt_long.exit.thread.a ], [ %.04061559, %bb.ex ]
  %.04111557.be = phi i32 [ %.04111557, %.thread ], [ %.04111557, %bb.am ], [ %.04111557, %bb.an ], [ %.04111557, %bb.ao ], [ %.04111557, %bb.ap ], [ %.04111557, %bb.aq ], [ %.04111557, %bb.ar ], [ %.04111557, %bb.as ], [ %.04111557, %bb.at ], [ 1, %bb.au ], [ %.04111557, %bb.av ], [ %.04111557, %bb.aw ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %bb.ay ], [ %.04111557, %bb.ba ], [ %.04111557, %bb.bc ], [ %.04111557, %bb.be ], [ %.04111557, %bb.bg ], [ %.04111557, %bb.bi ], [ %.04111557, %bb.bk ], [ %.04111557, %bb.bm ], [ %.04111557, %bb.bo ], [ %.04111557, %bb.bq ], [ %.04111557, %bb.bs ], [ %.04111557, %bb.bt ], [ %.04111557, %bb.bu ], [ %.04111557, %bb.bv ], [ %.04111557, %bb.bw ], [ %.04111557, %bb.by ], [ %.04111557, %bb.bz ], [ %.04111557, %bb.ca ], [ %.04111557, %bb.cb ], [ %.04111557, %bb.cd ], [ %.04111557, %.loopexit ], [ %.04111557, %bb.cj ], [ %.04111557, %bb.ck ], [ %.04111557, %bb.cl ], [ %.04111557, %bb.cm ], [ %.04111557, %bb.cn ], [ %.04111557, %bb.co ], [ %.04111557, %bb.cp ], [ %.04111557, %bb.cq ], [ %.04111557, %bb.cr ], [ %.04111557, %bb.cs ], [ %.04111557, %bb.cw ], [ %.04111557, %bb.ax ], [ %.04111557, %bb.fa ], [ %.04111557, %bb.fb ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %mygetopt_long.exit.thread.a ], [ %.04111557, %bb.ex ]
  %.04131555.be = phi i32 [ %.04131555, %.thread ], [ %.04131555, %bb.am ], [ %.04131555, %bb.an ], [ %.04131555, %bb.ao ], [ %.04131555, %bb.ap ], [ %.04131555, %bb.aq ], [ %.04131555, %bb.ar ], [ %.04131555, %bb.as ], [ %.04131555, %bb.at ], [ %.04131555, %bb.au ], [ %.04131555, %bb.av ], [ 1, %bb.aw ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %bb.ay ], [ %.04131555, %bb.ba ], [ %.04131555, %bb.bc ], [ %.04131555, %bb.be ], [ %.04131555, %bb.bg ], [ %.04131555, %bb.bi ], [ %.04131555, %bb.bk ], [ %.04131555, %bb.bm ], [ %.04131555, %bb.bo ], [ %.04131555, %bb.bq ], [ %.04131555, %bb.bs ], [ %.04131555, %bb.bt ], [ %.04131555, %bb.bu ], [ %.04131555, %bb.bv ], [ %.04131555, %bb.bw ], [ %.04131555, %bb.by ], [ %.04131555, %bb.bz ], [ %.04131555, %bb.ca ], [ %.04131555, %bb.cb ], [ %.04131555, %bb.cd ], [ %.04131555, %.loopexit ], [ %.04131555, %bb.cj ], [ %.04131555, %bb.ck ], [ %.04131555, %bb.cl ], [ %.04131555, %bb.cm ], [ %.04131555, %bb.cn ], [ %.04131555, %bb.co ], [ %.04131555, %bb.cp ], [ %.04131555, %bb.cq ], [ %.04131555, %bb.cr ], [ %.04131555, %bb.cs ], [ %.04131555, %bb.cw ], [ %.04131555, %bb.ax ], [ %.04131555, %bb.fa ], [ %.04131555, %bb.fb ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %mygetopt_long.exit.thread.a ], [ %.04131555, %bb.ex ]
  %.04151553.be = phi i32 [ %.04151553, %.thread ], [ %.04151553, %bb.am ], [ %.04151553, %bb.an ], [ %.04151553, %bb.ao ], [ %.04151553, %bb.ap ], [ %.04151553, %bb.aq ], [ %.04151553, %bb.ar ], [ 1, %bb.as ], [ %.04151553, %bb.at ], [ %.04151553, %bb.au ], [ %.04151553, %bb.av ], [ %.04151553, %bb.aw ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %bb.ay ], [ %.04151553, %bb.ba ], [ %.04151553, %bb.bc ], [ %.04151553, %bb.be ], [ %.04151553, %bb.bg ], [ %.04151553, %bb.bi ], [ %.04151553, %bb.bk ], [ %.04151553, %bb.bm ], [ %.04151553, %bb.bo ], [ %.04151553, %bb.bq ], [ %.04151553, %bb.bs ], [ %.04151553, %bb.bt ], [ %.04151553, %bb.bu ], [ %.04151553, %bb.bv ], [ %.04151553, %bb.bw ], [ %.04151553, %bb.by ], [ %.04151553, %bb.bz ], [ %.04151553, %bb.ca ], [ %.04151553, %bb.cb ], [ %.04151553, %bb.cd ], [ %.04151553, %.loopexit ], [ %.04151553, %bb.cj ], [ %.04151553, %bb.ck ], [ %.04151553, %bb.cl ], [ %.04151553, %bb.cm ], [ %.04151553, %bb.cn ], [ %.04151553, %bb.co ], [ %.04151553, %bb.cp ], [ %.04151553, %bb.cq ], [ %.04151553, %bb.cr ], [ %.04151553, %bb.cs ], [ %.04151553, %bb.cw ], [ %.04151553, %bb.ax ], [ %.04151553, %bb.fa ], [ %.04151553, %bb.fb ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %mygetopt_long.exit.thread.a ], [ %.04151553, %bb.ex ]
  %.04171551.be = phi i32 [ %.04171551, %.thread ], [ %.04171551, %bb.am ], [ %.04171551, %bb.an ], [ %.04171551, %bb.ao ], [ %.04171551, %bb.ap ], [ %.04171551, %bb.aq ], [ %.04171551, %bb.ar ], [ %.04171551, %bb.as ], [ %.04171551, %bb.at ], [ %.04171551, %bb.au ], [ %.04171551, %bb.av ], [ %.04171551, %bb.aw ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %bb.ay ], [ %.04171551, %bb.ba ], [ %.04171551, %bb.bc ], [ %.04171551, %bb.be ], [ %.04171551, %bb.bg ], [ %.04171551, %bb.bi ], [ %.04171551, %bb.bk ], [ %.04171551, %bb.bm ], [ %.04171551, %bb.bo ], [ %.04171551, %bb.bq ], [ %.04171551, %bb.bs ], [ %.04171551, %bb.bt ], [ %.04171551, %bb.bu ], [ %.04171551, %bb.bv ], [ %.04171551, %bb.bw ], [ %.04171551, %bb.by ], [ %.04171551, %bb.bz ], [ %.04171551, %bb.ca ], [ %.04171551, %bb.cb ], [ %.04171551, %bb.cd ], [ %.04171551, %.loopexit ], [ %.04171551, %bb.cj ], [ %.04171551, %bb.ck ], [ %.04171551, %bb.cl ], [ %.04171551, %bb.cm ], [ %.04171551, %bb.cn ], [ %.04171551, %bb.co ], [ %.04171551, %bb.cp ], [ %.04171551, %bb.cq ], [ 1, %bb.cr ], [ %.04171551, %bb.cs ], [ %.04171551, %bb.cw ], [ %.04171551, %bb.ax ], [ %.04171551, %bb.fa ], [ %.04171551, %bb.fb ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %mygetopt_long.exit.thread.a ], [ %.04171551, %bb.ex ]
  %.04191549.be = phi i32 [ %.04191549, %.thread ], [ %.04191549, %bb.am ], [ %.04191549, %bb.an ], [ %.04191549, %bb.ao ], [ %.04191549, %bb.ap ], [ %.04191549, %bb.aq ], [ %.04191549, %bb.ar ], [ %.04191549, %bb.as ], [ %.04191549, %bb.at ], [ %.04191549, %bb.au ], [ %.04191549, %bb.av ], [ %.04191549, %bb.aw ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %bb.ay ], [ %.04191549, %bb.ba ], [ %.04191549, %bb.bc ], [ %.04191549, %bb.be ], [ %.04191549, %bb.bg ], [ %.04191549, %bb.bi ], [ %.04191549, %bb.bk ], [ %.04191549, %bb.bm ], [ %.04191549, %bb.bo ], [ %.04191549, %bb.bq ], [ %.04191549, %bb.bs ], [ %.04191549, %bb.bt ], [ %.04191549, %bb.bu ], [ %.04191549, %bb.bv ], [ %.04191549, %bb.bw ], [ 1, %bb.by ], [ %.04191549, %bb.bz ], [ %.04191549, %bb.ca ], [ %.04191549, %bb.cb ], [ %.04191549, %bb.cd ], [ %.04191549, %.loopexit ], [ %.04191549, %bb.cj ], [ %.04191549, %bb.ck ], [ %.04191549, %bb.cl ], [ %.04191549, %bb.cm ], [ %.04191549, %bb.cn ], [ %.04191549, %bb.co ], [ %.04191549, %bb.cp ], [ %.04191549, %bb.cq ], [ 1, %bb.cr ], [ %.04191549, %bb.cs ], [ %.04191549, %bb.cw ], [ %.04191549, %bb.ax ], [ %.04191549, %bb.fa ], [ %.04191549, %bb.fb ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %mygetopt_long.exit.thread.a ], [ %.04191549, %bb.ex ]
  %.04211547.be = phi i32 [ %.04211547, %.thread ], [ %.04211547, %bb.am ], [ %.04211547, %bb.an ], [ %.04211547, %bb.ao ], [ %.04211547, %bb.ap ], [ %.04211547, %bb.aq ], [ 1, %bb.ar ], [ %.04211547, %bb.as ], [ %.04211547, %bb.at ], [ %.04211547, %bb.au ], [ %.04211547, %bb.av ], [ %.04211547, %bb.aw ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %bb.ay ], [ %.04211547, %bb.ba ], [ %.04211547, %bb.bc ], [ %.04211547, %bb.be ], [ %.04211547, %bb.bg ], [ %.04211547, %bb.bi ], [ %.04211547, %bb.bk ], [ %.04211547, %bb.bm ], [ %.04211547, %bb.bo ], [ %.04211547, %bb.bq ], [ %.04211547, %bb.bs ], [ %.04211547, %bb.bt ], [ %.04211547, %bb.bu ], [ %.04211547, %bb.bv ], [ %.04211547, %bb.bw ], [ %.04211547, %bb.by ], [ %.04211547, %bb.bz ], [ %.04211547, %bb.ca ], [ %.04211547, %bb.cb ], [ %.04211547, %bb.cd ], [ %.04211547, %.loopexit ], [ %.04211547, %bb.cj ], [ %.04211547, %bb.ck ], [ %.04211547, %bb.cl ], [ %.04211547, %bb.cm ], [ %.04211547, %bb.cn ], [ %.04211547, %bb.co ], [ %.04211547, %bb.cp ], [ %.04211547, %bb.cq ], [ %.04211547, %bb.cr ], [ %.04211547, %bb.cs ], [ %.04211547, %bb.cw ], [ %.04211547, %bb.ax ], [ %.04211547, %bb.fa ], [ %.04211547, %bb.fb ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %mygetopt_long.exit.thread.a ], [ %.04211547, %bb.ex ]
  %.04231545.be = phi i32 [ %.04231545, %.thread ], [ %.04231545, %bb.am ], [ %.04231545, %bb.an ], [ %.04231545, %bb.ao ], [ %.04231545, %bb.ap ], [ %.04231545, %bb.aq ], [ 1, %bb.ar ], [ %.04231545, %bb.as ], [ %.04231545, %bb.at ], [ %.04231545, %bb.au ], [ %.04231545, %bb.av ], [ %.04231545, %bb.aw ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %bb.ay ], [ %.04231545, %bb.ba ], [ %.04231545, %bb.bc ], [ %.04231545, %bb.be ], [ %.04231545, %bb.bg ], [ %.04231545, %bb.bi ], [ %.04231545, %bb.bk ], [ %.04231545, %bb.bm ], [ %.04231545, %bb.bo ], [ %.04231545, %bb.bq ], [ %.04231545, %bb.bs ], [ %.04231545, %bb.bt ], [ %.04231545, %bb.bu ], [ %.04231545, %bb.bv ], [ %.04231545, %bb.bw ], [ %.04231545, %bb.by ], [ %.04231545, %bb.bz ], [ %.04231545, %bb.ca ], [ %.04231545, %bb.cb ], [ %.04231545, %bb.cd ], [ %.04231545, %.loopexit ], [ %.04231545, %bb.cj ], [ %.04231545, %bb.ck ], [ %.04231545, %bb.cl ], [ %.04231545, %bb.cm ], [ %.04231545, %bb.cn ], [ %.04231545, %bb.co ], [ %.04231545, %bb.cp ], [ %.04231545, %bb.cq ], [ %.04231545, %bb.cr ], [ %.04231545, %bb.cs ], [ %.04231545, %bb.cw ], [ %.04231545, %bb.ax ], [ %.04231545, %bb.fa ], [ %.04231545, %bb.fb ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %mygetopt_long.exit.thread.a ], [ %.04231545, %bb.ex ]
  %.04251543.be = phi i32 [ %.04251543, %.thread ], [ %.04251543, %bb.am ], [ %.04251543, %bb.an ], [ %.04251543, %bb.ao ], [ %.04251543, %bb.ap ], [ 1, %bb.aq ], [ %.04251543, %bb.ar ], [ %.04251543, %bb.as ], [ %.04251543, %bb.at ], [ %.04251543, %bb.au ], [ %.04251543, %bb.av ], [ %.04251543, %bb.aw ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %bb.ay ], [ %.04251543, %bb.ba ], [ %.04251543, %bb.bc ], [ %.04251543, %bb.be ], [ %.04251543, %bb.bg ], [ %.04251543, %bb.bi ], [ %.04251543, %bb.bk ], [ %.04251543, %bb.bm ], [ %.04251543, %bb.bo ], [ %.04251543, %bb.bq ], [ %.04251543, %bb.bs ], [ %.04251543, %bb.bt ], [ %.04251543, %bb.bu ], [ %.04251543, %bb.bv ], [ %.04251543, %bb.bw ], [ %.04251543, %bb.by ], [ %.04251543, %bb.bz ], [ %.04251543, %bb.ca ], [ %.04251543, %bb.cb ], [ %.04251543, %bb.cd ], [ %.04251543, %.loopexit ], [ %.04251543, %bb.cj ], [ %.04251543, %bb.ck ], [ %.04251543, %bb.cl ], [ %.04251543, %bb.cm ], [ %.04251543, %bb.cn ], [ %.04251543, %bb.co ], [ %.04251543, %bb.cp ], [ %.04251543, %bb.cq ], [ %.04251543, %bb.cr ], [ %.04251543, %bb.cs ], [ %.04251543, %bb.cw ], [ %.04251543, %bb.ax ], [ %.04251543, %bb.fa ], [ %.04251543, %bb.fb ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %mygetopt_long.exit.thread.a ], [ %.04251543, %bb.ex ]
  %.04271541.be = phi i32 [ %.04271541, %.thread ], [ %.04271541, %bb.am ], [ %.04271541, %bb.an ], [ %.04271541, %bb.ao ], [ 1, %bb.ap ], [ %.04271541, %bb.aq ], [ %.04271541, %bb.ar ], [ %.04271541, %bb.as ], [ %.04271541, %bb.at ], [ %.04271541, %bb.au ], [ %.04271541, %bb.av ], [ %.04271541, %bb.aw ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %bb.ay ], [ %.04271541, %bb.ba ], [ %.04271541, %bb.bc ], [ %.04271541, %bb.be ], [ %.04271541, %bb.bg ], [ %.04271541, %bb.bi ], [ %.04271541, %bb.bk ], [ %.04271541, %bb.bm ], [ %.04271541, %bb.bo ], [ %.04271541, %bb.bq ], [ %.04271541, %bb.bs ], [ %.04271541, %bb.bt ], [ %.04271541, %bb.bu ], [ %.04271541, %bb.bv ], [ %.04271541, %bb.bw ], [ %.04271541, %bb.by ], [ %.04271541, %bb.bz ], [ %.04271541, %bb.ca ], [ %.04271541, %bb.cb ], [ %.04271541, %bb.cd ], [ %.04271541, %.loopexit ], [ %.04271541, %bb.cj ], [ %.04271541, %bb.ck ], [ %.04271541, %bb.cl ], [ %.04271541, %bb.cm ], [ %.04271541, %bb.cn ], [ %.04271541, %bb.co ], [ %.04271541, %bb.cp ], [ %.04271541, %bb.cq ], [ %.04271541, %bb.cr ], [ %.04271541, %bb.cs ], [ %.04271541, %bb.cw ], [ %.04271541, %bb.ax ], [ %.04271541, %bb.fa ], [ %.04271541, %bb.fb ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %mygetopt_long.exit.thread.a ], [ %.04271541, %bb.ex ]
  %.04291539.be = phi i32 [ %.04291539, %.thread ], [ %.04291539, %bb.am ], [ %.04291539, %bb.an ], [ 1, %bb.ao ], [ %.04291539, %bb.ap ], [ %.04291539, %bb.aq ], [ %.04291539, %bb.ar ], [ %.04291539, %bb.as ], [ %.04291539, %bb.at ], [ %.04291539, %bb.au ], [ %.04291539, %bb.av ], [ %.04291539, %bb.aw ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %bb.ay ], [ %.04291539, %bb.ba ], [ %.04291539, %bb.bc ], [ %.04291539, %bb.be ], [ %.04291539, %bb.bg ], [ %.04291539, %bb.bi ], [ %.04291539, %bb.bk ], [ %.04291539, %bb.bm ], [ %.04291539, %bb.bo ], [ %.04291539, %bb.bq ], [ %.04291539, %bb.bs ], [ %.04291539, %bb.bt ], [ %.04291539, %bb.bu ], [ %.04291539, %bb.bv ], [ %.04291539, %bb.bw ], [ %.04291539, %bb.by ], [ %.04291539, %bb.bz ], [ %.04291539, %bb.ca ], [ %.04291539, %bb.cb ], [ %.04291539, %bb.cd ], [ %.04291539, %.loopexit ], [ %.04291539, %bb.cj ], [ %.04291539, %bb.ck ], [ %.04291539, %bb.cl ], [ %.04291539, %bb.cm ], [ %.04291539, %bb.cn ], [ %.04291539, %bb.co ], [ %.04291539, %bb.cp ], [ %.04291539, %bb.cq ], [ %.04291539, %bb.cr ], [ %.04291539, %bb.cs ], [ %.04291539, %bb.cw ], [ %.04291539, %bb.ax ], [ %.04291539, %bb.fa ], [ %.04291539, %bb.fb ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %mygetopt_long.exit.thread.a ], [ %.04291539, %bb.ex ]
  %.04311537.be = phi i32 [ %.04311537, %.thread ], [ %.04311537, %bb.am ], [ 0, %bb.an ], [ %.04311537, %bb.ao ], [ %.04311537, %bb.ap ], [ %.04311537, %bb.aq ], [ %.04311537, %bb.ar ], [ %.04311537, %bb.as ], [ %.04311537, %bb.at ], [ %.04311537, %bb.au ], [ %.04311537, %bb.av ], [ %.04311537, %bb.aw ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %bb.ay ], [ %.04311537, %bb.ba ], [ %.04311537, %bb.bc ], [ %.04311537, %bb.be ], [ %.04311537, %bb.bg ], [ %.04311537, %bb.bi ], [ %.04311537, %bb.bk ], [ %.04311537, %bb.bm ], [ %.04311537, %bb.bo ], [ %.04311537, %bb.bq ], [ %.04311537, %bb.bs ], [ %.04311537, %bb.bt ], [ %.04311537, %bb.bu ], [ %.04311537, %bb.bv ], [ %.04311537, %bb.bw ], [ %.04311537, %bb.by ], [ %.04311537, %bb.bz ], [ %.04311537, %bb.ca ], [ %.04311537, %bb.cb ], [ %.04311537, %bb.cd ], [ %.04311537, %.loopexit ], [ %.04311537, %bb.cj ], [ %.04311537, %bb.ck ], [ %.04311537, %bb.cl ], [ %.04311537, %bb.cm ], [ %.04311537, %bb.cn ], [ %.04311537, %bb.co ], [ %.04311537, %bb.cp ], [ %.04311537, %bb.cq ], [ %.04311537, %bb.cr ], [ %.04311537, %bb.cs ], [ %.04311537, %bb.cw ], [ %.04311537, %bb.ax ], [ %.04311537, %bb.fa ], [ %.04311537, %bb.fb ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %mygetopt_long.exit.thread.a ], [ %.04311537, %bb.ex ]
  %.04331535.be = phi i32 [ %.04331535, %.thread ], [ %.04331535, %bb.am ], [ %.04331535, %bb.an ], [ %.04331535, %bb.ao ], [ %.04331535, %bb.ap ], [ %.04331535, %bb.aq ], [ %.04331535, %bb.ar ], [ %.04331535, %bb.as ], [ %.04331535, %bb.at ], [ %.04331535, %bb.au ], [ %.04331535, %bb.av ], [ %.04331535, %bb.aw ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %i.cs, %bb.ay ], [ %.04331535, %bb.ba ], [ %.04331535, %bb.bc ], [ %.04331535, %bb.be ], [ %.04331535, %bb.bg ], [ %.04331535, %bb.bi ], [ %.04331535, %bb.bk ], [ %.04331535, %bb.bm ], [ %.04331535, %bb.bo ], [ %.04331535, %bb.bq ], [ %.04331535, %bb.bs ], [ %.04331535, %bb.bt ], [ %.04331535, %bb.bu ], [ %.04331535, %bb.bv ], [ %.04331535, %bb.bw ], [ %.04331535, %bb.by ], [ %.04331535, %bb.bz ], [ %.04331535, %bb.ca ], [ %.04331535, %bb.cb ], [ %.04331535, %bb.cd ], [ %.04331535, %.loopexit ], [ %.04331535, %bb.cj ], [ %.04331535, %bb.ck ], [ %.04331535, %bb.cl ], [ %.04331535, %bb.cm ], [ %.04331535, %bb.cn ], [ %.04331535, %bb.co ], [ %.04331535, %bb.cp ], [ %.04331535, %bb.cq ], [ %.04331535, %bb.cr ], [ %.04331535, %bb.cs ], [ %.04331535, %bb.cw ], [ -98, %bb.ax ], [ %.04331535, %bb.fa ], [ %.04331535, %bb.fb ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %mygetopt_long.exit.thread.a ], [ %.04331535, %bb.ex ]
  %.04361533.be = phi i32 [ %.04361533, %.thread ], [ %.04361533, %bb.am ], [ %.04361533, %bb.an ], [ %.04361533, %bb.ao ], [ %.04361533, %bb.ap ], [ %.04361533, %bb.aq ], [ %.04361533, %bb.ar ], [ %.04361533, %bb.as ], [ %.04361533, %bb.at ], [ %.04361533, %bb.au ], [ %.04361533, %bb.av ], [ %.04361533, %bb.aw ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %bb.ay ], [ %.04361533, %bb.ba ], [ %.04361533, %bb.bc ], [ %.04361533, %bb.be ], [ %.04361533, %bb.bg ], [ %.04361533, %bb.bi ], [ %.04361533, %bb.bk ], [ %.04361533, %bb.bm ], [ %.04361533, %bb.bo ], [ %.04361533, %bb.bq ], [ %.04361533, %bb.bs ], [ %.04361533, %bb.bt ], [ %.04361533, %bb.bu ], [ %.04361533, %bb.bv ], [ %.04361533, %bb.bw ], [ %.04361533, %bb.by ], [ %.04361533, %bb.bz ], [ %.04361533, %bb.ca ], [ %.04361533, %bb.cb ], [ %.04361533, %bb.cd ], [ %.04361533, %.loopexit ], [ 1, %bb.cj ], [ %.04361533, %bb.ck ], [ %.04361533, %bb.cl ], [ %.04361533, %bb.cm ], [ %.04361533, %bb.cn ], [ %.04361533, %bb.co ], [ %.04361533, %bb.cp ], [ %.04361533, %bb.cq ], [ %.04361533, %bb.cr ], [ %.04361533, %bb.cs ], [ %.04361533, %bb.cw ], [ %.04361533, %bb.ax ], [ %.04361533, %bb.fa ], [ %.04361533, %bb.fb ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %mygetopt_long.exit.thread.a ], [ %.04361533, %bb.ex ]
  %.04381531.be = phi i32 [ %.04381531, %.thread ], [ %.04381531, %bb.am ], [ %.04381531, %bb.an ], [ %.04381531, %bb.ao ], [ %.04381531, %bb.ap ], [ %.04381531, %bb.aq ], [ %.04381531, %bb.ar ], [ %.04381531, %bb.as ], [ %.04381531, %bb.at ], [ %.04381531, %bb.au ], [ %.04381531, %bb.av ], [ %.04381531, %bb.aw ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %bb.ay ], [ %.04381531, %bb.ba ], [ %.04381531, %bb.bc ], [ %.04381531, %bb.be ], [ %.04381531, %bb.bg ], [ %.04381531, %bb.bi ], [ %.04381531, %bb.bk ], [ %.04381531, %bb.bm ], [ %.04381531, %bb.bo ], [ %.04381531, %bb.bq ], [ %.04381531, %bb.bs ], [ %.04381531, %bb.bt ], [ %.04381531, %bb.bu ], [ %.04381531, %bb.bv ], [ %.04381531, %bb.bw ], [ %.04381531, %bb.by ], [ %.04381531, %bb.bz ], [ %.04381531, %bb.ca ], [ %.04381531, %bb.cb ], [ %.04381531, %bb.cd ], [ %.04381531, %.loopexit ], [ %.04381531, %bb.cj ], [ %.04381531, %bb.ck ], [ %.04381531, %bb.cl ], [ %.04381531, %bb.cm ], [ %.04381531, %bb.cn ], [ %.04381531, %bb.co ], [ %.04381531, %bb.cp ], [ %.04381531, %bb.cq ], [ %.04381531, %bb.cr ], [ %i.en, %bb.cs ], [ %.04381531, %bb.cw ], [ %.04381531, %bb.ax ], [ %.04381531, %bb.fa ], [ %.04381531, %bb.fb ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %mygetopt_long.exit.thread.a ], [ %.04381531, %bb.ex ]
  %.01529.be = phi i16 [ %.01529, %.thread ], [ %.01529, %bb.am ], [ %.01529, %bb.an ], [ %.01529, %bb.ao ], [ %.01529, %bb.ap ], [ %.01529, %bb.aq ], [ %.01529, %bb.ar ], [ %.01529, %bb.as ], [ %.01529, %bb.at ], [ %.01529, %bb.au ], [ %i.cn, %bb.av ], [ %.01529, %bb.aw ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %bb.ay ], [ %.01529, %bb.ba ], [ %.01529, %bb.bc ], [ %.01529, %bb.be ], [ %.01529, %bb.bg ], [ %.01529, %bb.bi ], [ %.01529, %bb.bk ], [ %.01529, %bb.bm ], [ %.01529, %bb.bo ], [ %.01529, %bb.bq ], [ %.01529, %bb.bs ], [ %.01529, %bb.bt ], [ %.01529, %bb.bu ], [ %.01529, %bb.bv ], [ %.01529, %bb.bw ], [ %.01529, %bb.by ], [ %.01529, %bb.bz ], [ %.01529, %bb.ca ], [ %.01529, %bb.cb ], [ %.01529, %bb.cd ], [ %.01529, %.loopexit ], [ %.01529, %bb.cj ], [ %.01529, %bb.ck ], [ %.01529, %bb.cl ], [ %.01529, %bb.cm ], [ %.01529, %bb.cn ], [ %.01529, %bb.co ], [ %.01529, %bb.cp ], [ %.01529, %bb.cq ], [ %.01529, %bb.cr ], [ %.01529, %bb.cs ], [ %.01529, %bb.cw ], [ %.01529, %bb.ax ], [ %.01529, %bb.fa ], [ %.01529, %bb.fb ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %mygetopt_long.exit.thread.a ], [ %.01529, %bb.ex ]
  %.be = phi i32 [ 33, %.thread ], [ %i.v, %bb.am ], [ %i.v, %bb.an ], [ %i.v, %bb.ao ], [ %i.v, %bb.ap ], [ %i.v, %bb.aq ], [ %i.v, %bb.ar ], [ %i.v, %bb.as ], [ %i.v, %bb.at ], [ %i.v, %bb.au ], [ %i.v, %bb.av ], [ %i.v, %bb.aw ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %bb.ay ], [ %i.v, %bb.ba ], [ %i.v, %bb.bc ], [ %i.v, %bb.be ], [ %i.v, %bb.bg ], [ %i.v, %bb.bi ], [ %i.v, %bb.bk ], [ %i.v, %bb.bm ], [ %i.v, %bb.bo ], [ %i.v, %bb.bq ], [ %i.v, %bb.bs ], [ %i.v, %bb.bt ], [ %i.v, %bb.bu ], [ %i.v, %bb.bv ], [ %i.v, %bb.bw ], [ %i.v, %bb.by ], [ %i.v, %bb.bz ], [ %i.v, %bb.ca ], [ %i.v, %bb.cb ], [ %i.v, %bb.cd ], [ %i.v, %.loopexit ], [ %i.v, %bb.cj ], [ %i.v, %bb.ck ], [ %i.v, %bb.cl ], [ %i.v, %bb.cm ], [ %i.v, %bb.cn ], [ %i.v, %bb.co ], [ %i.v, %bb.cp ], [ %i.v, %bb.cq ], [ %i.v, %bb.cr ], [ %i.v, %bb.cs ], [ %i.v, %bb.cw ], [ %i.v, %bb.ax ], [ %i.v, %bb.fa ], [ %i.v, %bb.fb ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.v, %mygetopt_long.exit.thread.a ], [ %i.jk, %bb.ex ]
  br label %.lr.ph

bb.ex:                                            ; preds = %.preheader718.16
  %i.jn = icmp slt i32 %i.jk, 1
  br i1 %i.jn, label %bb.ey, label %.lr.ph.backedge

bb.ey:                                            ; preds = %bb.ex
  %.b470 = load i1, ptr @quieter, align 4
  br i1 %.b470, label %bb.ez, label %.sink.split

.sink.split:                                      ; preds = %bb.ey
  %i.jo = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.jp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jo, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.er) #21 ; 0 uses
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.sink.split
  tail call void @exit(i32 noundef 1) #26
  unreachable

bb.fa:                                            ; preds = %mygetopt_long.exit.thread.a
  br label %.lr.ph.backedge

bb.fb:                                            ; preds = %mygetopt_long.exit.thread.a
  store i1 true, ptr @quieter, align 4
  br label %.lr.ph.backedge

bb.fc:                                            ; preds = %mygetopt_long.exit.thread.a
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #26
  unreachable

mygetopt_long.exit.thread677.sink.split:          ; preds = %.thread1.i, %bb.h, %bb.j
  %.sink = phi ptr [ %i.ar, %bb.j ], [ %i.aj, %bb.h ], [ null, %.thread1.i ]
  store ptr %.sink, ptr @myoptarg, align 8, !tbaa !20
  br label %mygetopt_long.exit.thread677

mygetopt_long.exit.thread677:                     ; preds = %bb.u, %bb.p, %mygetopt_long.exit.thread.a, %mygetopt_long.exit.thread677.sink.split, %bb.i
  store i32 0, ptr @myoptind, align 4, !tbaa !9
  %i.jq = icmp eq i32 %.04331535, -99
  %.not475 = icmp eq i32 %.04231545, 0            ; 2 uses
  br i1 %i.jq, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %mygetopt_long.exit.thread677
  %. = select i1 %.not475, i32 3, i32 -2
  br label %err_sys_ex.exit.thread

bb.fe:                                            ; preds = %mygetopt_long.exit.thread677
  br i1 %.not475, label %err_sys_ex.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  switch i32 %.04331535, label %err_sys_ex.exit [
    i32 3, label %err_sys_ex.exit.thread
    i32 4, label %bb.fg
    i32 2, label %switch.edge
  ]

bb.fg:                                            ; preds = %bb.ff
  %i.jr = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.js = icmp eq i32 %i.jr, 1
  br i1 %i.js, label %bb.fh, label %bb.fk

bb.fh:                                            ; preds = %bb.fg
  %.b2.i = load i1, ptr @quieter, align 4
  br i1 %.b2.i, label %err_sys_ex.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.jt = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ju = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jt, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.39) #21 ; 0 uses
  %.b.pr.i = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i, label %err_sys_ex.exit, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.jv = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.jv) #22 ; 0 uses
  br label %err_sys_ex.exit

bb.fk:                                            ; preds = %bb.fg
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.39) #23
  unreachable

switch.edge:                                      ; preds = %bb.ff
  br label %err_sys_ex.exit.thread

err_sys_ex.exit:                                  ; preds = %bb.ff, %bb.fj, %bb.fi, %bb.fh, %bb.fe
  %.0433146925182665 = phi i32 [ %.04331535, %bb.fe ], [ %.04331535, %bb.ff ], [ 4, %bb.fj ], [ 4, %bb.fi ], [ 4, %bb.fh ] ; 3 uses
  %.0423137425272660 = phi i32 [ 0, %bb.fe ], [ %.04231545, %bb.ff ], [ %.04231545, %bb.fj ], [ %.04231545, %bb.fi ], [ %.04231545, %bb.fh ] ; 2 uses
  %i.jw = icmp sgt i32 %.0433146925182665, 3      ; 2 uses
  %i.jx = icmp eq i32 %.04111557, 0
  %not. = xor i1 %i.jw, true
  %or.cond15 = or i1 %i.jx, %not.
  %.b465 = load i1, ptr @quieter, align 4
  %or.cond95 = select i1 %or.cond15, i1 true, i1 %.b465
  br i1 %or.cond95, label %err_sys_ex.exit.thread, label %bb.fl

bb.fl:                                            ; preds = %err_sys_ex.exit
  %i.jy = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.40, i64 51, i64 1, ptr %i.jy) #22 ; 0 uses
  br label %err_sys_ex.exit.thread

err_sys_ex.exit.thread:                           ; preds = %bb.ff, %switch.edge, %bb.fd, %bb.fl, %err_sys_ex.exit
  %.042313742528 = phi i32 [ %.0423137425272660, %err_sys_ex.exit ], [ %.0423137425272660, %bb.fl ], [ %.04231545, %bb.fd ], [ 1, %switch.edge ], [ 1, %bb.ff ]
  %i.jz = phi i1 [ %i.jw, %err_sys_ex.exit ], [ true, %bb.fl ], [ false, %bb.fd ], [ false, %switch.edge ], [ false, %bb.ff ] ; 9 uses
  %.2435686 = phi i32 [ %.0433146925182665, %err_sys_ex.exit ], [ %.0433146925182665, %bb.fl ], [ %., %bb.fd ], [ -1, %switch.edge ], [ -2, %bb.ff ] ; 3 uses
  %.not476 = icmp eq i32 %.03601597, 0
  br i1 %.not476, label %bb.fr, label %bb.fm

bb.fm:                                            ; preds = %err_sys_ex.exit.thread
  %i.ka = and i32 %.2435686, -2
  %or.cond17 = icmp eq i32 %i.ka, -98
  br i1 %or.cond17, label %bb.fn, label %bb.fp

bb.fn:                                            ; preds = %bb.fm
  %.b468 = load i1, ptr @quieter, align 4
  br i1 %.b468, label %bb.fr, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.kb = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite477 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 96, i64 1, ptr %i.kb) #22 ; 0 uses
  br label %bb.fr

bb.fp:                                            ; preds = %bb.fm
  switch i32 %.2435686, label %bb.fq [
    i32 4, label %err_sys_ex.exit557
    i32 -4, label %bb.fy
  ]

bb.fq:                                            ; preds = %bb.fp
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.42) #23
  unreachable

bb.fr:                                            ; preds = %bb.fo, %bb.fn, %err_sys_ex.exit.thread
  %.036088025792787 = phi i32 [ 0, %err_sys_ex.exit.thread ], [ %.03601597, %bb.fo ], [ %.03601597, %bb.fn ] ; 7 uses
  switch i32 %.2435686, label %bb.fy [
    i32 3, label %err_sys_ex.exit557
    i32 4, label %bb.fs
    i32 -98, label %bb.ft
  ]

bb.fs:                                            ; preds = %bb.fr
  br label %err_sys_ex.exit557

bb.ft:                                            ; preds = %bb.fr
  %.not478 = icmp eq i32 %.042313742528, 0
  br i1 %.not478, label %err_sys_ex.exit557, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.kc = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.kd = icmp eq i32 %i.kc, 1
  br i1 %i.kd, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %bb.fu
  %.b2.i546 = load i1, ptr @quieter, align 4
  br i1 %.b2.i546, label %err_sys_ex.exit557.thread, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ke = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.kf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ke, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.43) #21 ; 0 uses
  %.b.pr.i547 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i547, label %.critedge545, label %.critedge545.sink.split

bb.fx:                                            ; preds = %bb.fu
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.43) #23
  unreachable

bb.fy:                                            ; preds = %bb.fp, %bb.fr
  %.036088025792786 = phi i32 [ %.03601597, %bb.fp ], [ %.036088025792787, %bb.fr ] ; 3 uses
  %i.kg = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.kh = icmp eq i32 %i.kg, 1
  br i1 %i.kh, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  %.b2.i550 = load i1, ptr @quieter, align 4
  br i1 %.b2.i550, label %err_sys_ex.exit557.thread, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ki = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.kj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ki, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.44) #21 ; 0 uses
  %.b.pr.i551 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i551, label %.critedge545, label %.critedge545.sink.split

bb.gb:                                            ; preds = %bb.fy
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.44) #23
  unreachable

.critedge545.sink.split:                          ; preds = %bb.ga, %bb.fw
  %.036088025792781.ph = phi i32 [ %.036088025792787, %bb.fw ], [ %.036088025792786, %bb.ga ]
  %i.kk = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i552 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.kk) #22 ; 0 uses
  br label %.critedge545

.critedge545:                                     ; preds = %.critedge545.sink.split, %bb.ga, %bb.fw
  %.036088025792781 = phi i32 [ %.036088025792787, %bb.fw ], [ %.036088025792786, %bb.ga ], [ %.036088025792781.ph, %.critedge545.sink.split ] ; 3 uses
  %.pr = load i32, ptr @runWithErrors, align 4, !tbaa !9
  %i.kl = icmp eq i32 %.pr, 1
  br i1 %i.kl, label %.critedge545.thread, label %bb.ge

.critedge545.thread:                              ; preds = %.critedge545
  %.b2.i554.pr = load i1, ptr @quieter, align 4
  br i1 %.b2.i554.pr, label %err_sys_ex.exit557.thread, label %bb.gc

bb.gc:                                            ; preds = %.critedge545.thread
  %i.km = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.kn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.km, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.45) #21 ; 0 uses
  %.b.pr.i555 = load i1, ptr @quieter, align 4
  br i1 %.b.pr.i555, label %err_sys_ex.exit557.thread, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ko = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i556 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 32, i64 1, ptr %i.ko) #22 ; 0 uses
  br label %err_sys_ex.exit557.thread

bb.ge:                                            ; preds = %.critedge545
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.45) #23
  unreachable

err_sys_ex.exit557:                               ; preds = %bb.fp, %.thread3014, %bb.ft, %bb.fr, %bb.fs
  %i.kp = phi i1 [ %i.jz, %bb.ft ], [ %i.jz, %bb.fr ], [ false, %.thread3014 ], [ %i.jz, %bb.fp ], [ %i.jz, %bb.fs ] ; 2 uses
  %.0152625123010 = phi i16 [ %.01529, %bb.ft ], [ %.01529, %bb.fr ], [ 11111, %.thread3014 ], [ %.01529, %bb.fp ], [ %.01529, %bb.fs ] ; 2 uses
  %.0438150725143003 = phi i32 [ %.04381531, %bb.ft ], [ %.04381531, %bb.fr ], [ -99, %.thread3014 ], [ %.04381531, %bb.fp ], [ %.04381531, %bb.fs ] ; 2 uses
  %.0436148825162996 = phi i32 [ %.04361533, %bb.ft ], [ %.04361533, %bb.fr ], [ 0, %.thread3014 ], [ %.04361533, %bb.fp ], [ %.04361533, %bb.fs ] ; 2 uses
  %.0431145025192989 = phi i32 [ %.04311537, %bb.ft ], [ %.04311537, %bb.fr ], [ 1, %.thread3014 ], [ %.04311537, %bb.fp ], [ %.04311537, %bb.fs ] ; 2 uses
  %.0429143125212982 = phi i32 [ %.04291539, %bb.ft ], [ %.04291539, %bb.fr ], [ 0, %.thread3014 ], [ %.04291539, %bb.fp ], [ %.04291539, %bb.fs ] ; 2 uses
  %.0427141225232975 = phi i32 [ %.04271541, %bb.ft ], [ %.04271541, %bb.fr ], [ 0, %.thread3014 ], [ %.04271541, %bb.fp ], [ %.04271541, %bb.fs ] ; 2 uses
  %.0425139325252968 = phi i32 [ %.04251543, %bb.ft ], [ %.04251543, %bb.fr ], [ 0, %.thread3014 ], [ %.04251543, %bb.fp ], [ %.04251543, %bb.fs ] ; 2 uses
  %.0421135525292960 = phi i32 [ %.04211547, %bb.ft ], [ %.04211547, %bb.fr ], [ 0, %.thread3014 ], [ %.04211547, %bb.fp ], [ %.04211547, %bb.fs ] ; 2 uses
  %.0419133625312953 = phi i32 [ %.04191549, %bb.ft ], [ %.04191549, %bb.fr ], [ 0, %.thread3014 ], [ %.04191549, %bb.fp ], [ %.04191549, %bb.fs ] ; 2 uses
  %.0417131725332946 = phi i32 [ %.04171551, %bb.ft ], [ %.04171551, %bb.fr ], [ 0, %.thread3014 ], [ %.04171551, %bb.fp ], [ %.04171551, %bb.fs ] ; 2 uses
  %.0415129825352939 = phi i32 [ %.04151553, %bb.ft ], [ %.04151553, %bb.fr ], [ 0, %.thread3014 ], [ %.04151553, %bb.fp ], [ %.04151553, %bb.fs ] ; 2 uses
  %.0413127925372932 = phi i32 [ %.04131555, %bb.ft ], [ %.04131555, %bb.fr ], [ 0, %.thread3014 ], [ %.04131555, %bb.fp ], [ %.04131555, %bb.fs ] ; 2 uses
  %.0411126025392925 = phi i32 [ %.04111557, %bb.ft ], [ %.04111557, %bb.fr ], [ 0, %.thread3014 ], [ %.04111557, %bb.fp ], [ %.04111557, %bb.fs ] ; 2 uses
  %.0406124125412918 = phi i32 [ %.04061559, %bb.ft ], [ %.04061559, %bb.fr ], [ 1, %.thread3014 ], [ %.04061559, %bb.fp ], [ %.04061559, %bb.fs ] ; 2 uses
  %.0403122225432911 = phi i32 [ %.04031561, %bb.ft ], [ %.04031561, %bb.fr ], [ 0, %.thread3014 ], [ %.04031561, %bb.fp ], [ %.04031561, %bb.fs ] ; 2 uses
  %.0400120325452904 = phi i32 [ %.04001563, %bb.ft ], [ %.04001563, %bb.fr ], [ 16384, %.thread3014 ], [ %.04001563, %bb.fp ], [ %.04001563, %bb.fs ] ; 2 uses
  %.0398118425472897 = phi i64 [ %.03981565, %bb.ft ], [ %.03981565, %bb.fr ], [ 0, %.thread3014 ], [ %.03981565, %bb.fp ], [ %.03981565, %bb.fs ] ; 2 uses
  %.0396116525492890 = phi i32 [ %.03961567, %bb.ft ], [ %.03961567, %bb.fr ], [ 1024, %.thread3014 ], [ %.03961567, %bb.fp ], [ %.03961567, %bb.fs ] ; 2 uses
  %.0388114625512883 = phi ptr [ %.03881569, %bb.ft ], [ %.03881569, %bb.fr ], [ null, %.thread3014 ], [ %.03881569, %bb.fp ], [ %.03881569, %bb.fs ] ; 2 uses
  %.0386112725532876 = phi ptr [ %.03861571, %bb.ft ], [ %.03861571, %bb.fr ], [ null, %.thread3014 ], [ %.03861571, %bb.fp ], [ %.03861571, %bb.fs ] ; 2 uses
end_hunk_1
