Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/bufferevent_openssl?download=true
begin_hunk_0_@bufferevent_get_openssl_error:bb.a
bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 692 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4              ; 2 uses
  %i.i = lshr i16 %i.h, 3
  %i.j = and i16 %i.i, 3                          ; 2 uses
  %.not16 = icmp eq i16 %i.j, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.l = add nsw i16 %i.j, -1                     ; 2 uses
  %i.m = shl nuw nsw i16 %i.l, 3
  %i.n = and i16 %i.h, -25
  %i.o = or i16 %i.m, %i.n
  store i16 %i.o, ptr %i.g, align 4
  %i.p = zext nneg i16 %i.l to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4
  %i.s = zext i32 %i.r to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i64 [ %i.s, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.t = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not17 = icmp eq ptr %i.t, null
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.v = tail call i32 %i.u(i32 noundef 0, ptr noundef nonnull %i.t) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret i64 %.0
}

declare void @bufferevent_setcb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @be_openssl_handshakecb(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc i32 @do_handshake(ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @be_openssl_eventcb(ptr nofree readnone captures(none) %0, i16 noundef signext %1, ptr noundef %2) #0 {
bb.a:
  %i.a = and i16 %1, 16
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %.thread17

.thread17:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 692
  %i.c = load i16, ptr %i.b, align 4
  %i.d = and i16 %i.c, 4
  %.not12 = icmp eq i16 %i.d, 0
  %i.e = select i1 %.not12, i16 32, i16 16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i16 %1, 96
  %or.cond = icmp eq i16 %i.f, 0
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread17
  %.020 = phi i16 [ %i.e, %.thread17 ], [ %1, %bb.b ]
  tail call void @bufferevent_run_eventcb_(ptr noundef %2, i16 noundef signext %.020, i32 noundef 0) #7
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  ret void
}

declare i32 @bufferevent_setfd(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @event_initialized(ptr noundef) local_unnamed_addr #3

declare i32 @event_del(ptr noundef) local_unnamed_addr #3

declare i32 @event_assign(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @be_openssl_handshakeeventcb(i32 %0, i16 noundef signext %1, ptr noundef %2) #0 {
bb.a:
  tail call void @bufferevent_incref_and_lock_(ptr noundef %2) #7
  %i.a = and i16 %1, 1
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @bufferevent_run_eventcb_(ptr noundef %2, i16 noundef signext 64, i32 noundef 0) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @do_handshake(ptr noundef %2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call i32 @bufferevent_decref_and_unlock_(ptr noundef %2) #7 ; 0 uses
  ret void
}

declare i32 @bufferevent_enable(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @bufferevent_run_eventcb_(ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #3

declare void @bufferevent_incref_and_lock_(ptr noundef) local_unnamed_addr #3

declare i32 @bufferevent_decref_and_unlock_(ptr noundef) local_unnamed_addr #3

declare i32 @event_get_fd(ptr noundef) local_unnamed_addr #3

declare void @ERR_clear_error() local_unnamed_addr #3

declare i32 @SSL_do_handshake(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @set_open_callbacks(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @bufferevent_setcb(ptr noundef nonnull %i.b, ptr noundef nonnull @be_openssl_readcb, ptr noundef nonnull @be_openssl_writecb, ptr noundef nonnull @be_openssl_eventcb, ptr noundef nonnull %0) #7
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = tail call i32 @event_initialized(ptr noundef nonnull %i.c) #7
  %.not30 = icmp eq i32 %i.d, 0
  br i1 %.not30, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @event_pending(ptr noundef nonnull %i.c, i16 noundef signext 2, ptr noundef null) #7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = tail call i32 @event_pending(ptr noundef nonnull %i.f, i16 noundef signext 4, ptr noundef null) #7
  %i.h = tail call i32 @event_del(ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.i = tail call i32 @event_del(ptr noundef nonnull %i.f) #7 ; 0 uses
  %i.j = icmp eq i32 %i.e, 0
  %i.k = icmp eq i32 %i.g, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.027 = phi i1 [ %i.j, %bb.d ], [ true, %bb.c ]
  %.026 = phi i1 [ %i.k, %bb.d ], [ true, %bb.c ]
  %i.l = load ptr, ptr %0, align 8
  %i.m = tail call i32 @event_assign(ptr noundef nonnull %i.c, ptr noundef %i.l, i32 noundef %1, i16 noundef signext 82, ptr noundef nonnull @be_openssl_readeventcb, ptr noundef nonnull %0) #7 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.o = load ptr, ptr %0, align 8
  %i.p = tail call i32 @event_assign(ptr noundef nonnull %i.n, ptr noundef %i.o, i32 noundef %1, i16 noundef signext 84, ptr noundef nonnull @be_openssl_writeeventcb, ptr noundef nonnull %0) #7 ; 0 uses
  br i1 %.027, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.r = tail call i32 @bufferevent_add_event_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.q) #7
  %i.s = icmp slt i32 %i.r, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.025 = phi i1 [ %i.s, %bb.f ], [ false, %bb.e ]
  br i1 %.026, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.u = tail call i32 @bufferevent_add_event_(ptr noundef nonnull %i.n, ptr noundef nonnull %i.t) #7
  %i.v = icmp slt i32 %i.u, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i1 [ %i.v, %bb.h ], [ false, %bb.g ]
  %i.w = select i1 %.025, i1 true, i1 %.0
  %i.x = sext i1 %i.w to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.028 = phi i32 [ 0, %bb.b ], [ %i.x, %bb.i ]
  ret i32 %.028
}

declare i32 @SSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @conn_closed(ptr noundef %0, i32 noundef range(i32 1, 3) %1, i32 noundef %2, i32 noundef range(i32 2, 1) %3) unnamed_addr #0 {
bb.a:
  switch i32 %2, label %bb.m [
    i32 6, label %bb.b
    i32 5, label %bb.c
    i32 1, label %bb.g
    i32 4, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @SSL_get_shutdown(ptr noundef %i.b) #7
  %i.d = and i32 %i.c, 2                          ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  %.lobit = lshr exact i32 %i.d, 1
  %. = xor i32 %.lobit, 1
  %.32 = select i1 %.not, i32 32, i32 16
  br label %put_error.exit

bb.c:                                             ; preds = %bb.a
  %i.e = add i32 %3, 1
  %or.cond = icmp ult i32 %i.e, 2
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @ERR_peek_error() #7
  %i.g = icmp eq i64 %i.f, 0
  %spec.select = zext i1 %i.g to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.023.a = phi i32 [ 0, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 692 ; 2 uses
  %i.i = load i16, ptr %i.h, align 4              ; 2 uses
  %i.j = lshr i16 %i.i, 3
  %i.k = and i16 %i.j, 3                          ; 3 uses
  %i.l = icmp eq i16 %i.k, 3
  br i1 %i.l, label %put_error.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.n = shl nuw nsw i16 %i.k, 3
  %i.o = add nuw nsw i16 %i.n, 8
  %i.p = and i16 %i.i, -25
  %i.q = or i16 %i.o, %i.p
  store i16 %i.q, ptr %i.h, align 4
  %i.r = zext nneg i16 %i.k to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.r
  store i32 5, ptr %i.s, align 4
  br label %put_error.exit

bb.g:                                             ; preds = %bb.a
  %i.t = icmp eq i32 %3, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 @SSL_is_init_finished(ptr noundef %i.v) #7
  %i.x = icmp eq i32 %i.w, 0
  %spec.select33 = zext i1 %i.x to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.124.a = phi i32 [ 0, %bb.g ], [ %spec.select33, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 692 ; 2 uses
  %i.z = load i16, ptr %i.y, align 4              ; 2 uses
  %i.aa = lshr i16 %i.z, 3
  %i.ab = and i16 %i.aa, 3                        ; 3 uses
  %i.ac = icmp eq i16 %i.ab, 3
  br i1 %i.ac, label %put_error.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ae = shl nuw nsw i16 %i.ab, 3
  %i.af = add nuw nsw i16 %i.ae, 8
  %i.ag = and i16 %i.z, -25
  %i.ah = or i16 %i.af, %i.ag
  store i16 %i.ah, ptr %i.y, align 4
  %i.ai = zext nneg i16 %i.ab to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ai
  store i32 1, ptr %i.aj, align 4
  br label %put_error.exit

bb.k:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 692 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 4            ; 2 uses
  %i.am = lshr i16 %i.al, 3
  %i.an = and i16 %i.am, 3                        ; 3 uses
  %i.ao = icmp eq i16 %i.an, 3
  br i1 %i.ao, label %put_error.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.aq = shl nuw nsw i16 %i.an, 3
  %i.ar = add nuw nsw i16 %i.aq, 8
  %i.as = and i16 %i.al, -25
  %i.at = or i16 %i.ar, %i.as
  store i16 %i.at, ptr %i.ak, align 4
  %i.au = zext nneg i16 %i.an to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.au
  store i32 4, ptr %i.av, align 4
  br label %put_error.exit

bb.m:                                             ; preds = %bb.a
  tail call void (ptr, ...) @event_warnx(ptr noundef nonnull @.str.1, i32 noundef %2) #7
  br label %put_error.exit

put_error.exit:                                   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.e, %bb.b, %bb.m
  %.2.a = phi i32 [ 0, %bb.m ], [ %., %bb.b ], [ %.124.a, %bb.j ], [ %.023.a, %bb.f ], [ %.023.a, %bb.e ], [ %.124.a, %bb.i ], [ 0, %bb.k ], [ 0, %bb.l ]
  %.0 = phi i32 [ 32, %bb.m ], [ %.32, %bb.b ], [ 32, %bb.j ], [ 32, %bb.f ], [ 32, %bb.e ], [ 32, %bb.i ], [ 32, %bb.k ], [ 32, %bb.l ]
  %i.aw = tail call i64 @ERR_get_error() #7       ; 2 uses
  %.not2940 = icmp eq i64 %i.aw, 0
  br i1 %.not2940, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %put_error.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 692 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 680
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %put_error.exit37
  %i.az = phi i64 [ %i.aw, %.lr.ph ], [ %i.bl, %put_error.exit37 ]
  %i.ba = load i16, ptr %i.ax, align 4            ; 2 uses
  %i.bb = lshr i16 %i.ba, 3
  %i.bc = and i16 %i.bb, 3                        ; 3 uses
  %i.bd = icmp eq i16 %i.bc, 3
  br i1 %i.bd, label %put_error.exit37, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = trunc i64 %i.az to i32
  %i.bf = shl nuw nsw i16 %i.bc, 3
  %i.bg = add nuw nsw i16 %i.bf, 8
  %i.bh = and i16 %i.ba, -25
  %i.bi = or i16 %i.bg, %i.bh
  store i16 %i.bi, ptr %i.ax, align 4
  %i.bj = zext nneg i16 %i.bc to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bj
  store i32 %i.be, ptr %i.bk, align 4
  br label %put_error.exit37

put_error.exit37:                                 ; preds = %bb.n, %bb.o
  %i.bl = tail call i64 @ERR_get_error() #7       ; 2 uses
  %.not29 = icmp eq i64 %i.bl, 0
  br i1 %.not29, label %._crit_edge, label %bb.n, !llvm.loop !3

._crit_edge:                                      ; preds = %put_error.exit37, %put_error.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 692
  %.pre = load i16, ptr %.phi.trans.insert, align 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.bn = and i16 %.pre, 2
  %.not.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i, label %bb.p, label %stop_reading.exit

bb.p:                                             ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.bp, null
  br i1 %.not5.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @bufferevent_suspend_read_(ptr noundef nonnull %i.bp, i16 noundef zeroext 16) #7
  br label %stop_reading.exit

bb.r:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = tail call i32 @event_del(ptr noundef nonnull %i.bq) #7 ; 0 uses
  br label %stop_reading.exit

stop_reading.exit:                                ; preds = %._crit_edge, %bb.q, %bb.r
  %i.bs = load i16, ptr %i.bm, align 4
  %i.bt = and i16 %i.bs, 1
  %.not.i38 = icmp eq i16 %i.bt, 0
  br i1 %.not.i38, label %bb.s, label %stop_writing.exit

bb.s:                                             ; preds = %stop_reading.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not5.i39 = icmp eq ptr %i.bv, null
  br i1 %.not5.i39, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @bufferevent_unsuspend_read_(ptr noundef nonnull %i.bv, i16 noundef zeroext 16) #7
  br label %stop_writing.exit

bb.u:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bx = tail call i32 @event_del(ptr noundef nonnull %i.bw) #7 ; 0 uses
  br label %stop_writing.exit

stop_writing.exit:                                ; preds = %stop_reading.exit, %bb.t, %bb.u
  %.not30 = icmp eq i32 %.2.a, 0
  %i.by = and i16 %.pre, 4
  %.not31 = icmp eq i16 %i.by, 0
  %i.bz = or i1 %.not30, %.not31
  %.1 = select i1 %i.bz, i32 %.0, i32 16
  %i.ca = or disjoint i32 %.1, %1
  %i.cb = trunc nuw nsw i32 %i.ca to i16
  tail call void @bufferevent_run_eventcb_(ptr noundef nonnull %0, i16 noundef signext %i.cb, i32 noundef 0) #7
  ret void
}

declare i64 @BIO_number_written(ptr noundef) local_unnamed_addr #3

declare i64 @BIO_number_read(ptr noundef) local_unnamed_addr #3

declare ptr @SSL_get_rbio(ptr noundef) local_unnamed_addr #3

declare i32 @bufferevent_decrement_write_buckets_(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @bufferevent_decrement_read_buckets_(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @be_openssl_readcb(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call fastcc void @consider_reading(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @be_openssl_writecb(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call fastcc void @consider_writing(ptr noundef %1)
  ret void
}

declare i32 @event_pending(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @be_openssl_readeventcb(i32 %0, i16 noundef signext %1, ptr noundef %2) #0 {
bb.a:
  tail call void @bufferevent_incref_and_lock_(ptr noundef %2) #7
  %i.a = icmp eq i16 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @bufferevent_run_eventcb_(ptr noundef %2, i16 noundef signext 65, i32 noundef 0) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @consider_reading(ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = tail call i32 @bufferevent_decref_and_unlock_(ptr noundef %2) #7 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @be_openssl_writeeventcb(i32 %0, i16 noundef signext %1, ptr noundef %2) #0 {
bb.a:
  tail call void @bufferevent_incref_and_lock_(ptr noundef %2) #7
  %i.a = icmp eq i16 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @bufferevent_run_eventcb_(ptr noundef %2, i16 noundef signext 66, i32 noundef 0) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @consider_writing(ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = tail call i32 @bufferevent_decref_and_unlock_(ptr noundef %2) #7 ; 0 uses
  ret void
}

declare i32 @bufferevent_add_event_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @consider_reading(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 692 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = load i16, ptr %i.a, align 4              ; 2 uses
  %i.c = and i16 %i.b, 2
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @do_write(ptr noundef nonnull %0)
  %.not26 = icmp samesign ult i32 %i.d, 2
  br i1 %.not26, label %bb.b, label %._crit_edge55, !llvm.loop !5

._crit_edge55:                                    ; preds = %bb.c
  %.pre = load i16, ptr %i.a, align 4
  br label %split, !llvm.loop !5

split:                                            ; preds = %bb.b, %._crit_edge55
  %i.e = phi i16 [ %.pre, %._crit_edge55 ], [ %i.b, %bb.b ]
  %i.f = and i16 %i.e, 2
  %.not27 = icmp eq i16 %i.f, 0
  br i1 %.not27, label %bb.d, label %bb.y

bb.d:                                             ; preds = %split
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 2
  %.not18.i = icmp eq i16 %i.k, 0
  br i1 %.not18.i, label %bytes_to_read.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.m = load i16, ptr %i.l, align 4
  %.not19.i = icmp eq i16 %i.m, 0
  br i1 %.not19.i, label %bb.f, label %bytes_to_read.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %.not20.i = icmp eq i64 %i.o, 0
  br i1 %.not20.i, label %bytes_to_read.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i64 @evbuffer_get_length(ptr noundef %i.h) #7
  %i.q = load i64, ptr %i.n, align 8              ; 2 uses
  %.not21.i = icmp ult i64 %i.p, %i.q
  br i1 %.not21.i, label %bb.h, label %bytes_to_read.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i64 @evbuffer_get_length(ptr noundef %i.h) #7
  %i.s = sub i64 %i.q, %i.r
  %sext.i = shl i64 %i.s, 32
  %i.t = ashr exact i64 %sext.i, 32
  br label %bytes_to_read.exit

bytes_to_read.exit.thread:                        ; preds = %bb.g, %bb.d, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 404
  br label %bufferevent_trigger_nolock_.exit

bytes_to_read.exit:                               ; preds = %bb.f, %bb.h
  %.015.i = phi i64 [ %i.t, %bb.h ], [ 4096, %bb.f ]
  %i.v = tail call i64 @bufferevent_get_read_max_(ptr noundef nonnull %0) #7
  %spec.select22.i = tail call i64 @llvm.smin.i64(i64 %i.v, i64 %.015.i)
  %spec.select.i = trunc i64 %spec.select22.i to i32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 6 uses
  %.not2848 = icmp eq i32 %spec.select.i, 0
  br i1 %.not2848, label %bufferevent_trigger_nolock_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bytes_to_read.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bytes_to_read.exit47
  %.050 = phi i32 [ 0, %.lr.ph ], [ %i.ab, %bytes_to_read.exit47 ]
  %.02249 = phi i32 [ %spec.select.i, %.lr.ph ], [ %.123, %bytes_to_read.exit47 ]
  %i.aa = tail call fastcc i32 @do_read(ptr noundef nonnull %0, i32 noundef %.02249) ; 2 uses
  %i.ab = or i32 %i.aa, %.050                     ; 2 uses
  %.not29 = icmp samesign ult i32 %i.aa, 2
  br i1 %.not29, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.ac = load i16, ptr %i.w, align 4
  %.not30 = icmp eq i16 %i.ac, 0
  br i1 %.not30, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.x, align 8
  %i.ae = tail call i32 @SSL_pending(ptr noundef %i.ad) #7 ; 2 uses
  %.not31 = icmp eq i32 %i.ae, 0
  br i1 %.not31, label %bb.l, label %bytes_to_read.exit47

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.y, align 8
  %.not32 = icmp eq ptr %i.af, null
  br i1 %.not32, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ah = load i16, ptr %i.a, align 4
  %i.ai = and i16 %i.ah, 2
  %.not.i37 = icmp eq i16 %i.ai, 0
  br i1 %.not.i37, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %bb.m
  %i.aj = load i16, ptr %i.i, align 8
  %i.ak = and i16 %i.aj, 2
  %.not18.i39 = icmp eq i16 %i.ak, 0
  br i1 %.not18.i39, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load i16, ptr %i.w, align 4
  %.not19.i40 = icmp eq i16 %i.al, 0
  br i1 %.not19.i40, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %bb.o
  %i.am = load i64, ptr %i.z, align 8
  %.not20.i41 = icmp eq i64 %i.am, 0
  br i1 %.not20.i41, label %bb.s, label %bb.q
end_hunk_0
