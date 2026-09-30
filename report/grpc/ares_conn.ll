Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ares_conn?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
begin_hunk_0_@ares_conn_write:bb.a
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !59
  %.not15.i = icmp eq i32 %i.aj, 0
  br i1 %.not15.i, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 336
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ai, i8 0, i64 20, i1 false)
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.an = load i32, ptr %i.ab, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 368
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61
  %i.aq = call i32 %i.al(i32 noundef %i.an, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef %i.ap) #5, !inline_history !65
  %.not16.i = icmp eq i32 %i.aq, 0
  br i1 %.not16.i, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ar = call i32 @ares_sockaddr_to_ares_addr(ptr noundef nonnull %i.ai, ptr noundef null, ptr noundef nonnull %4) #5 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.i, %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.m

bb.l:                                             ; preds = %ares_conn_set_sockaddr.exit.thread
  br i1 %i.ae, label %bb.m, label %bb.q

bb.m:                                             ; preds = %.thread, %bb.l
  %i.as = load i64, ptr %3, align 8, !tbaa !46
  %i.at = icmp eq i64 %2, %i.as
  br i1 %i.at, label %bb.n, label %ares_conn_set_sockaddr.exit

bb.n:                                             ; preds = %bb.m
  %i.au = lshr exact i32 %i.l, 1
  %i.av = or disjoint i32 %i.au, 1                ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 544
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !23 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !24 ; 3 uses
  %i.bb = and i32 %i.ba, 3
  %.not.i36 = icmp eq i32 %i.bb, %i.av
  br i1 %.not.i36, label %ares_conn_sock_state_cb_update.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !41 ; 2 uses
  %.not12.i = icmp eq ptr %i.bd, null
  br i1 %.not12.i, label %ares_conn_sock_state_cb_update.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42
  %i.bg = load i32, ptr %i.ab, align 8, !tbaa !43
  %i.bh = lshr exact i32 %i.l, 2
  call void %i.bd(ptr noundef %i.bf, i32 noundef %i.bg, i32 noundef 1, i32 noundef %i.bh) #5, !inline_history !62
  %.pre.i = load i32, ptr %i.az, align 4, !tbaa !24
  br label %ares_conn_sock_state_cb_update.exit

ares_conn_sock_state_cb_update.exit:              ; preds = %bb.n, %bb.o, %bb.p
  %i.bi = phi i32 [ %.pre.i, %bb.p ], [ %i.ba, %bb.o ], [ %i.ba, %bb.n ]
  %i.bj = and i32 %i.bi, -4
  %i.bk = or disjoint i32 %i.bj, %i.av
  store i32 %i.bk, ptr %i.az, align 4, !tbaa !24
  br label %ares_conn_set_sockaddr.exit

bb.q:                                             ; preds = %bb.l
  %i.bl = icmp eq i32 %i.ad, 1
  br i1 %i.bl, label %bb.r, label %ares_conn_set_sockaddr.exit

bb.r:                                             ; preds = %bb.q
  %i.bm = load ptr, ptr %0, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 544
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !23 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !24 ; 3 uses
  %i.br = and i32 %i.bq, 3
  %.not.i37 = icmp eq i32 %i.br, 3
  br i1 %.not.i37, label %ares_conn_sock_state_cb_update.exit40, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 232
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !41 ; 2 uses
  %.not12.i38 = icmp eq ptr %i.bt, null
  br i1 %.not12.i38, label %ares_conn_sock_state_cb_update.exit40, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 240
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !42
  %i.bw = load i32, ptr %i.ab, align 8, !tbaa !43
  call void %i.bt(ptr noundef %i.bv, i32 noundef %i.bw, i32 noundef 1, i32 noundef 1) #5, !inline_history !62
  %.pre.i39 = load i32, ptr %i.bp, align 4, !tbaa !24
  br label %ares_conn_sock_state_cb_update.exit40

ares_conn_sock_state_cb_update.exit40:            ; preds = %bb.r, %bb.s, %bb.t
  %i.bx = phi i32 [ %.pre.i39, %bb.t ], [ %i.bq, %bb.s ], [ %i.bq, %bb.r ]
  %i.by = or i32 %i.bx, 3
  store i32 %i.by, ptr %i.bp, align 4, !tbaa !24
  br label %ares_conn_set_sockaddr.exit

ares_conn_set_sockaddr.exit:                      ; preds = %bb.m, %bb.d, %ares_conn_sock_state_cb_update.exit, %ares_conn_sock_state_cb_update.exit40, %bb.q, %bb.b
  %.028 = phi i32 [ 1, %bb.b ], [ 0, %ares_conn_sock_state_cb_update.exit ], [ %i.ad, %bb.q ], [ 1, %ares_conn_sock_state_cb_update.exit40 ], [ 99, %bb.d ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret i32 %.028
}

declare i32 @ares_socket_write(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @ares_conn_set_self_ip(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.sockaddr_storage, align 8   ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 128, ptr %i.a, align 4, !tbaa !45
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59
  %.not15 = icmp eq i32 %i.f, 0
  br i1 %.not15, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, i8 0, i64 20, i1 false)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.o = call i32 %i.h(i32 noundef %i.l, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %i.n) #5
  %.not16 = icmp eq i32 %i.o, 0
  br i1 %.not16, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !44
  %i.r = and i32 %i.q, 3
  %or.cond.not = icmp eq i32 %i.r, 3
  br i1 %or.cond.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = call i32 @ares_sockaddr_to_ares_addr(ptr noundef nonnull %i.t, ptr noundef null, ptr noundef nonnull %2) #5
  %.not17 = icmp eq i32 %i.u, 0
  %. = select i1 %.not17, i32 11, i32 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.g, %bb.b, %bb.h, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.b ], [ 11, %bb.f ], [ %., %bb.i ], [ 11, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ares_conn_flush(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i16, align 2                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !44
  %1 = and i32 %i.f, 4
  %.not = icmp eq i32 %1, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = call i64 @ares_buf_len(ptr noundef %i.h) #5
  %i.j = icmp eq i64 %i.i, 0
  %.pre72 = load i32, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  br i1 %i.j, label %split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %.pre72, 1
  %.not42 = icmp eq i32 %i.k, 0
  br i1 %.not42, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.m = call ptr @ares_buf_peek(ptr noundef %i.l, ptr noundef nonnull %i.a) #5
  %.pre = load i64, ptr %i.a, align 8, !tbaa !46
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !63
  call void @ares_buf_tag(ptr noundef %i.n) #5
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.p = call i32 @ares_buf_fetch_be16(ptr noundef %i.o, ptr noundef nonnull %i.c) #5 ; 2 uses
  %.not43 = icmp eq i32 %i.p, 0
  br i1 %.not43, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.r = call i32 @ares_buf_tag_rollback(ptr noundef %i.q) #5 ; 0 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.t = call ptr @ares_buf_peek(ptr noundef %i.s, ptr noundef nonnull %i.a) #5
  %i.u = load i64, ptr %i.a, align 8, !tbaa !46
  %i.v = load i16, ptr %i.c, align 2, !tbaa !47
  %i.w = zext i16 %i.v to i64                     ; 3 uses
  %i.x = add nuw nsw i64 %i.w, 2
  %i.y = icmp ult i64 %i.u, %i.x
  br i1 %i.y, label %bb.h, label %.thread56

.thread56:                                        ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i64 %i.w, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %.loopexit

bb.i:                                             ; preds = %.thread56, %bb.e
  %i.aa = phi i64 [ %.pre, %bb.e ], [ %i.w, %.thread56 ]
  %.2 = phi ptr [ %i.m, %bb.e ], [ %i.z, %.thread56 ]
  %i.ab = call i32 @ares_conn_write(ptr noundef nonnull %0, ptr noundef %.2, i64 noundef %i.aa, ptr noundef nonnull %i.b)
  switch i32 %i.ab, label %.loopexit [
    i32 0, label %bb.j
    i32 1, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.i
  %.pre71 = load i32, ptr %i.e, align 8, !tbaa !44
  br label %split

bb.j:                                             ; preds = %bb.i
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !44
  %i.ad = and i32 %i.ac, 1
  %.not45 = icmp eq i32 %i.ad, 0
  %.pre70 = load i64, ptr %i.b, align 8, !tbaa !46 ; 2 uses
  br i1 %.not45, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = add i64 %.pre70, 2                      ; 2 uses
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = phi i64 [ %i.ae, %bb.k ], [ %.pre70, %bb.j ]
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.ah = call i32 @ares_buf_consume(ptr noundef %i.ag, i64 noundef %i.af) #5 ; 0 uses
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.aj = and i32 %i.ai, 1
  %.not46 = icmp eq i32 %i.aj, 0
  br i1 %.not46, label %bb.c, label %split

split:                                            ; preds = %bb.c, %bb.l, %._crit_edge
  %i.ak = phi i32 [ %.pre71, %._crit_edge ], [ %.pre72, %bb.c ], [ %i.ai, %bb.l ]
  %spec.select = select i1 %.not, i32 1, i32 3    ; 2 uses
  %i.al = and i32 %i.ak, 1
  %.not49 = icmp eq i32 %i.al, 0
  br i1 %.not49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %split
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.an = call i64 @ares_buf_len(ptr noundef %i.am) #5
  %.not50 = icmp eq i64 %i.an, 0
  %spec.select51 = select i1 %.not50, i32 %spec.select, i32 3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %split
  %.1 = phi i32 [ %spec.select, %split ], [ %spec.select51, %bb.m ] ; 3 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 544
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !24 ; 3 uses
  %i.at = and i32 %i.as, 3
  %.not.i = icmp eq i32 %i.at, %.1
  br i1 %.not.i, label %ares_conn_sock_state_cb_update.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41 ; 2 uses
  %.not12.i = icmp eq ptr %i.av, null
  br i1 %.not12.i, label %ares_conn_sock_state_cb_update.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 240
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !43
  %i.ba = lshr i32 %.1, 1
  call void %i.av(ptr noundef %i.ax, i32 noundef %i.az, i32 noundef 1, i32 noundef %i.ba) #5, !inline_history !62
  %.pre.i = load i32, ptr %i.ar, align 4, !tbaa !24
  br label %ares_conn_sock_state_cb_update.exit

ares_conn_sock_state_cb_update.exit:              ; preds = %bb.n, %bb.o, %bb.p
  %i.bb = phi i32 [ %.pre.i, %bb.p ], [ %i.as, %bb.o ], [ %i.as, %bb.n ]
  %i.bc = and i32 %i.bb, -4
  %i.bd = or i32 %i.bc, %.1
  store i32 %i.bd, ptr %i.ar, align 4, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.h, %.thread, %ares_conn_sock_state_cb_update.exit, %bb.a
  %.3 = phi i32 [ %i.p, %.thread ], [ 2, %bb.a ], [ 0, %ares_conn_sock_state_cb_update.exit ], [ 2, %bb.h ], [ 11, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.3
}

declare i64 @ares_buf_len(ptr noundef) local_unnamed_addr #3

declare ptr @ares_buf_peek(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ares_buf_tag(ptr noundef) local_unnamed_addr #3

declare i32 @ares_buf_fetch_be16(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ares_buf_tag_rollback(ptr noundef) local_unnamed_addr #3

declare i32 @ares_buf_consume(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @ares_open_connection(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.sockaddr_storage, align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %.not = icmp ne i32 %3, 0                       ; 4 uses
  %i.a = select i1 %.not, i32 1, i32 2            ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !66
  %i.b = tail call ptr @ares_malloc(i64 noundef 72) #5 ; 17 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  store i32 -1, ptr %i.e, align 8, !tbaa !43
  store ptr %2, ptr %i.b, align 8, !tbaa !15
  %i.f = tail call ptr @ares_llist_create(ptr noundef null) #5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !67
  %i.h = zext i1 %.not to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 10 uses
  store i32 %i.h, ptr %i.i, align 8, !tbaa !44
  %i.j = tail call ptr @ares_buf_create() #5
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !63
  %i.l = tail call ptr @ares_buf_create() #5      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !68
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %ares_conn_set_sockaddr.exit.thread125, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp eq ptr %i.l, null
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %ares_conn_set_sockaddr.exit.thread125, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %i.t = and i32 %i.s, 1
  %.not98 = icmp eq i32 %i.t, 0
  br i1 %.not98, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = or i32 %i.s, 2
  store i32 %i.u, ptr %i.i, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.in.in.v.i = phi i64 [ 30, %bb.e ], [ 28, %bb.d ]
  %.val = load ptr, ptr %i.b, align 8, !tbaa !15  ; 5 uses
  %.in.in.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.in.in.v.i
  %.in.i = load i16, ptr %.in.in.i, align 2, !tbaa !47 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !48
  switch i32 %i.w, label %ares_conn_set_sockaddr.exit.thread125 [
    i32 2, label %bb.g
    i32 10, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.y, align 8
  store i16 2, ptr %4, align 8, !tbaa !51
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.in.i)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %rev.i.i, ptr %i.z, align 2, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.ab = load i32, ptr %i.aa, align 4
  store i32 %i.ab, ptr %i.x, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.ac, align 4
  store i16 10, ptr %4, align 8, !tbaa !55
  %rev.i25.i = tail call noundef i16 @llvm.bswap.i16(i16 %.in.i)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %rev.i25.i, ptr %i.ad, align 2, !tbaa !56
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.af, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.ph = phi i32 [ 16, %bb.g ], [ 28, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !48
  %i.al = tail call i32 @ares_socket_open(ptr noundef nonnull %i.e, ptr noundef %1, i32 noundef %i.ak, i32 noundef %i.a, i32 noundef 0) #5
  %.not100 = icmp eq i32 %i.al, 0
  br i1 %.not100, label %bb.j, label %ares_conn_set_sockaddr.exit.thread125

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %i.aj, align 8, !tbaa !48
  %i.an = load i32, ptr %i.i, align 8, !tbaa !44
  %i.ao = and i32 %i.an, 1
  %i.ap = load i32, ptr %i.e, align 8, !tbaa !43
  %i.aq = tail call i32 @ares_socket_configure(ptr noundef %1, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.ap) #5 ; 2 uses
  %.not102 = icmp eq i32 %i.aq, 0
  br i1 %.not102, label %bb.k, label %ares_conn_set_sockaddr.exit.thread125

bb.k:                                             ; preds = %bb.j
  %i.ar = load i32, ptr %i.i, align 8, !tbaa !44
  %i.as = and i32 %i.ar, 2
  %.not103 = icmp eq i32 %i.as, 0
  br i1 %.not103, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load i32, ptr %i.e, align 8, !tbaa !43
  %i.au = tail call i32 @ares_socket_enable_tfo(ptr noundef %1, i32 noundef %i.at) #5
  %.not104 = icmp eq i32 %i.au, 0
  br i1 %.not104, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = load i32, ptr %i.i, align 8, !tbaa !44
  %i.aw = and i32 %i.av, -3
  store i32 %i.aw, ptr %i.i, align 8, !tbaa !44
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !69 ; 2 uses
  %.not105 = icmp eq ptr %i.ay, null
  br i1 %.not105, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load i32, ptr %i.e, align 8, !tbaa !43
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !70
  %i.bc = tail call i32 %i.ay(i32 noundef %i.az, i32 noundef %i.a, ptr noundef %i.bb) #5
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %ares_conn_set_sockaddr.exit.thread125, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.be = call fastcc i32 @ares_conn_connect(ptr noundef %i.b, ptr noundef %4, i32 noundef %.0.ph) ; 2 uses
  %.not106 = icmp eq i32 %i.be, 0
  br i1 %.not106, label %bb.q, label %ares_conn_set_sockaddr.exit.thread125

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !71 ; 2 uses
  %.not107 = icmp eq ptr %i.bg, null
  br i1 %.not107, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = load i32, ptr %i.e, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !72
  %i.bk = call i32 %i.bg(i32 noundef %i.bh, i32 noundef %i.a, ptr noundef %i.bj) #5
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %ares_conn_set_sockaddr.exit.thread125, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bm = load i32, ptr %i.i, align 8, !tbaa !44  ; 2 uses
  %i.bn = and i32 %i.bm, 2
  %.not108 = icmp eq i32 %i.bn, 0
  br i1 %.not108, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = or i32 %i.bm, 4
  store i32 %i.bo, ptr %i.i, align 8, !tbaa !44
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bp = call fastcc i32 @ares_conn_set_self_ip(ptr noundef nonnull %i.b, i32 noundef 1) ; 2 uses
  %.not109 = icmp eq i32 %i.bp, 0
  br i1 %.not109, label %bb.v, label %ares_conn_set_sockaddr.exit.thread125

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !73 ; 2 uses
  br i1 %.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bs = call ptr @ares_llist_insert_last(ptr noundef %i.br, ptr noundef nonnull %i.b) #5
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bt = call ptr @ares_llist_insert_first(ptr noundef %i.br, ptr noundef nonnull %i.b) #5
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.083 = phi ptr [ %i.bs, %bb.w ], [ %i.bt, %bb.x ] ; 3 uses
  %i.bu = icmp eq ptr %.083, null
  br i1 %i.bu, label %ares_conn_set_sockaddr.exit.thread125, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !64
  %i.bx = load i32, ptr %i.e, align 8, !tbaa !43
  %i.by = call i32 @ares_htable_asvp_insert(ptr noundef %i.bw, i32 noundef %i.bx, ptr noundef nonnull %.083) #5
  %.not110 = icmp eq i32 %i.by, 0
  br i1 %.not110, label %ares_conn_set_sockaddr.exit.thread125, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = load i32, ptr %i.i, align 8, !tbaa !44  ; 2 uses
  %i.ca = and i32 %i.bz, 4
  %.not112 = icmp eq i32 %i.ca, 0
  br i1 %.not112, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %5 = and i32 %i.bz, 1
  %.not111 = icmp eq i32 %5, 0
  %spec.select = select i1 %.not111, i32 1, i32 3
  call void @ares_conn_sock_state_cb_update(ptr noundef nonnull %i.b, i32 noundef %spec.select)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %.not, label %bb.ad, label %ares_conn_set_sockaddr.exit.thread132

bb.ad:                                            ; preds = %bb.ac
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr %i.b, ptr %i.cb, align 8, !tbaa !74
  br label %ares_conn_set_sockaddr.exit.thread132

ares_conn_set_sockaddr.exit.thread125:            ; preds = %bb.o, %bb.r, %bb.f, %bb.c, %bb.y, %bb.i, %bb.u, %bb.p, %bb.j, %bb.b, %bb.z
  %.184130 = phi ptr [ %.083, %bb.z ], [ null, %bb.f ], [ null, %bb.c ], [ null, %bb.y ], [ null, %bb.i ], [ null, %bb.u ], [ null, %bb.p ], [ null, %bb.j ], [ null, %bb.b ], [ null, %bb.r ], [ null, %bb.o ]
  %.2129 = phi i32 [ 15, %bb.z ], [ 9, %bb.f ], [ 15, %bb.c ], [ 15, %bb.y ], [ 11, %bb.i ], [ %i.bp, %bb.u ], [ %i.be, %bb.p ], [ %i.aq, %bb.j ], [ 15, %bb.b ], [ 11, %bb.r ], [ 11, %bb.o ]
  %i.cc = call ptr @ares_llist_node_claim(ptr noundef %.184130) #5 ; 0 uses
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !67
  call void @ares_llist_destroy(ptr noundef %i.cd) #5
  %i.ce = load i32, ptr %i.e, align 8, !tbaa !43
  call void @ares_socket_close(ptr noundef %1, i32 noundef %i.ce) #5
  %i.cf = load ptr, ptr %i.k, align 8, !tbaa !63
  call void @ares_buf_destroy(ptr noundef %i.cf) #5
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !68
  call void @ares_buf_destroy(ptr noundef %i.cg) #5
  call void @ares_free(ptr noundef nonnull %i.b) #5
  br label %bb.ae

ares_conn_set_sockaddr.exit.thread132:            ; preds = %bb.ac, %bb.ad
  store ptr %i.b, ptr %0, align 8, !tbaa !66
  br label %bb.ae

bb.ae:                                            ; preds = %ares_conn_set_sockaddr.exit.thread125, %ares_conn_set_sockaddr.exit.thread132, %bb.a
  %.087 = phi i32 [ 0, %ares_conn_set_sockaddr.exit.thread132 ], [ 15, %bb.a ], [ %.2129, %ares_conn_set_sockaddr.exit.thread125 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret i32 %.087
}

declare ptr @ares_malloc(i64 noundef) local_unnamed_addr #3

declare ptr @ares_llist_create(ptr noundef) local_unnamed_addr #3

declare ptr @ares_buf_create() local_unnamed_addr #3

declare i32 @ares_socket_open(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ares_socket_configure(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ares_socket_enable_tfo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @ares_conn_connect(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !44
  %i.h = lshr i32 %i.g, 1
  %.lobit = and i32 %i.h, 1
  %i.i = tail call i32 @ares_socket_connect(ptr noundef %i.c, i32 noundef %i.e, i32 noundef %.lobit, ptr noundef nonnull %1, i32 noundef %2) #5
  %or.cond = icmp ugt i32 %i.i, 1
  %. = select i1 %or.cond, i32 11, i32 0
  ret i32 %.
}

declare ptr @ares_llist_insert_last(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ares_llist_insert_first(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ares_htable_asvp_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ares_llist_node_claim(ptr noundef) local_unnamed_addr #3

declare void @ares_llist_destroy(ptr noundef) local_unnamed_addr #3

declare void @ares_socket_close(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ares_buf_destroy(ptr noundef) local_unnamed_addr #3

declare void @ares_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @ares_conn_from_fd(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = tail call ptr @ares_htable_asvp_get_direct(ptr noundef %i.b, i32 noundef %1) #5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @ares_llist_node_val(ptr noundef nonnull %i.c) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @ares_htable_asvp_get_direct(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ares_llist_node_val(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @ares_sockaddr_to_ares_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ares_socket_connect(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS11ares_server", !8, i64 0}
!10 = !{!"ares_addr", !5, i64 0, !4, i64 4}
!11 = !{!"p1 _ZTS8ares_buf", !8, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"p1 _ZTS10ares_llist", !8, i64 0}
!14 = !{!"ares_conn", !9, i64 0, !5, i64 8, !10, i64 12, !5, i64 32, !5, i64 36, !11, i64 40, !11, i64 48, !12, i64 56, !13, i64 64}
!15 = !{!14, !9, i64 0}
!16 = !{!"short", !4, i64 0}
!17 = !{!"p1 _ZTS9ares_conn", !8, i64 0}
!18 = !{!"long long", !4, i64 0}
!19 = !{!"", !18, i64 0, !5, i64 8}
!20 = !{!"", !5, i64 0, !4, i64 4, !19, i64 16, !10, i64 32, !4, i64 52, !12, i64 88, !19, i64 96}
!21 = !{!"p1 _ZTS16ares_channeldata", !8, i64 0}
!22 = !{!"ares_server", !12, i64 0, !10, i64 8, !16, i64 28, !16, i64 30, !4, i64 32, !5, i64 96, !12, i64 104, !5, i64 112, !13, i64 120, !17, i64 128, !19, i64 136, !4, i64 152, !20, i64 432, !21, i64 544}
!23 = !{!22, !21, i64 544}
!24 = !{!14, !5, i64 36}
!25 = !{!"any p2 pointer", !8, i64 0}
!26 = !{!"p2 omnipotent char", !25, i64 0}
!27 = !{!"p1 _ZTS8apattern", !8, i64 0}
!28 = !{!"p1 omnipotent char", !8, i64 0}
!29 = !{!"p1 _ZTS17ares_thread_mutex", !8, i64 0}
!30 = !{!"p1 _ZTS16ares_thread_cond", !8, i64 0}
!31 = !{!"p1 _ZTS10ares_slist", !8, i64 0}
!32 = !{!"p1 _ZTS15ares_rand_state", !8, i64 0}
!33 = !{!"p1 _ZTS16ares_htable_szvp", !8, i64 0}
!34 = !{!"p1 _ZTS16ares_htable_asvp", !8, i64 0}
!35 = !{!"ares_socket_functions_ex", !5, i64 0, !5, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80}
!36 = !{!"p1 _ZTS21ares_socket_functions", !8, i64 0}
!37 = !{!"p1 _ZTS15ares_hosts_file", !8, i64 0}
!38 = !{!"p1 _ZTS11ares_qcache", !8, i64 0}
!39 = !{!"p1 _ZTS11ares_thread", !8, i64 0}
!40 = !{!"ares_channeldata", !5, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !5, i64 40, !16, i64 44, !16, i64 46, !5, i64 48, !5, i64 52, !26, i64 56, !12, i64 64, !27, i64 72, !12, i64 80, !28, i64 88, !12, i64 96, !5, i64 104, !5, i64 108, !5, i64 112, !4, i64 116, !5, i64 148, !4, i64 152, !29, i64 168, !30, i64 176, !31, i64 184, !32, i64 192, !13, i64 200, !33, i64 208, !31, i64 216, !34, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !35, i64 280, !8, i64 368, !36, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !5, i64 408, !28, i64 416, !28, i64 424, !12, i64 432, !37, i64 440, !38, i64 448, !16, i64 456, !12, i64 464, !8, i64 472, !8, i64 480, !5, i64 488, !39, i64 496, !5, i64 504}
!41 = !{!40, !8, i64 232}
!42 = !{!40, !8, i64 240}
!43 = !{!14, !5, i64 8}
!44 = !{!14, !5, i64 32}
!45 = !{!5, !5, i64 0}
!46 = !{!12, !12, i64 0}
!47 = !{!16, !16, i64 0}
!48 = !{!22, !5, i64 8}
!49 = !{!"in_addr", !5, i64 0}
!50 = !{!"sockaddr_in", !16, i64 0, !16, i64 2, !49, i64 4, !4, i64 8}
!51 = !{!50, !16, i64 0}
!52 = !{!50, !16, i64 2}
!53 = !{!"in6_addr", !4, i64 0}
!54 = !{!"sockaddr_in6", !16, i64 0, !16, i64 2, !5, i64 4, !53, i64 8, !5, i64 24}
!55 = !{!54, !16, i64 0}
!56 = !{!54, !16, i64 2}
!57 = !{!22, !5, i64 96}
!58 = !{!54, !5, i64 24}
!59 = !{!14, !5, i64 12}
!60 = !{!40, !8, i64 336}
!61 = !{!40, !8, i64 368}
!62 = !{ptr @ares_conn_sock_state_cb_update}
!63 = !{!14, !11, i64 40}
!64 = !{!40, !34, i64 224}
!65 = !{ptr @ares_conn_set_self_ip}
!66 = !{!17, !17, i64 0}
!67 = !{!14, !13, i64 64}
!68 = !{!14, !11, i64 48}
!69 = !{!40, !8, i64 264}
!70 = !{!40, !8, i64 272}
!71 = !{!40, !8, i64 248}
!72 = !{!40, !8, i64 256}
!73 = !{!22, !13, i64 120}
!74 = !{!22, !17, i64 128}
end_hunk_0
