Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/bufferevent_sock?download=true
inline.NumInlined: 7
inline.NumDeleted: 2
begin_hunk_0_@bufferevent_socket_set_conn_address_fd_:bb.a
  store i32 128, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @getpeername(i32 noundef %1, ptr nonnull %i.b, ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind
declare i32 @getpeername(i32 noundef, ptr, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -4, 1) i32 @bufferevent_socket_set_conn_address_(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i64 %2, 129
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 2 %1, i64 %2, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -4, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define ptr @bufferevent_socket_new(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef 632) #9 ; 13 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @bufferevent_init_common_(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull @bufferevent_ops_socket, i32 noundef %2) #9
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @event_mm_free_(ptr noundef nonnull %i.a) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 @evbuffer_set_flags(ptr noundef %i.f, i64 noundef 1) #9 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = tail call i32 @event_assign(ptr noundef nonnull %i.h, ptr noundef %i.i, i32 noundef %1, i16 noundef signext 82, ptr noundef nonnull @bufferevent_readcb, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = tail call i32 @event_assign(ptr noundef nonnull %i.k, ptr noundef %i.l, i32 noundef %1, i16 noundef signext 84, ptr noundef nonnull @bufferevent_writecb, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = tail call ptr @evbuffer_add_cb(ptr noundef %i.n, ptr noundef nonnull @bufferevent_socket_outbuf_cb, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 @evbuffer_freeze(ptr noundef %i.q, i32 noundef 0) #9 ; 0 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = tail call i32 @evbuffer_freeze(ptr noundef %i.s, i32 noundef 1) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %i.a, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @event_mm_calloc_(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @bufferevent_init_common_(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @event_mm_free_(ptr noundef) local_unnamed_addr #1

declare i32 @evbuffer_set_flags(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @event_assign(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @bufferevent_readcb(i32 noundef %0, i16 noundef signext %1, ptr noundef %2) #0 {
bb.a:
  tail call void @bufferevent_incref_and_lock_(ptr noundef %2) #9
  %i.a = icmp eq i16 %1, 1
  br i1 %i.a, label %.thread52, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @evbuffer_get_length(ptr noundef %i.c) #9
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @bufferevent_suspend_read_(ptr noundef nonnull %2, i16 noundef zeroext 1) #9
  br label %bufferevent_trigger_nolock_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %.039 = phi i64 [ %i.g, %bb.c ], [ -1, %bb.b ]  ; 2 uses
  %i.i = tail call i64 @bufferevent_get_read_max_(ptr noundef nonnull %2) #9 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 404
  %i.k = load i16, ptr %i.j, align 4
  %.not47 = icmp eq i16 %i.k, 0
  br i1 %.not47, label %bb.f, label %bufferevent_trigger_nolock_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = icmp slt i64 %.039, 0
  %i.m = tail call i64 @llvm.smin.i64(i64 %.039, i64 %i.i)
  %.1 = select i1 %i.l, i64 %i.i, i64 %i.m
  %i.n = tail call i32 @evbuffer_unfreeze(ptr noundef %i.c, i32 noundef 0) #9 ; 0 uses
  %i.o = trunc i64 %.1 to i32
  %i.p = tail call i32 @evbuffer_read(ptr noundef %i.c, i32 noundef %0, i32 noundef %i.o) #9 ; 3 uses
  %i.q = tail call i32 @evbuffer_freeze(ptr noundef %i.c, i32 noundef 0) #9 ; 0 uses
  switch i32 %i.p, label %bb.i [
    i32 -1, label %bb.g
    i32 0, label %.thread52
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @__errno_location() #10
  %i.s = load i32, ptr %i.r, align 4
  switch i32 %i.s, label %.thread52 [
    i32 11, label %bufferevent_trigger_nolock_.exit
    i32 4, label %bufferevent_trigger_nolock_.exit
    i32 111, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 400 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8
  %i.v = or i8 %i.u, 16
  store i8 %i.v, ptr %i.t, align 8
  br label %bufferevent_trigger_nolock_.exit

bb.i:                                             ; preds = %bb.f
  %i.w = icmp slt i32 %i.p, 1
  br i1 %i.w, label %.thread52, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = zext nneg i32 %i.p to i64
  %i.y = tail call i32 @bufferevent_decrement_read_buckets_(ptr noundef nonnull %2, i64 noundef %i.x) #9 ; 0 uses
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = tail call i64 @evbuffer_get_length(ptr noundef %i.z) #9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.ac = load i64, ptr %i.ab, align 8
  %.not11.i = icmp ult i64 %i.aa, %i.ac
  br i1 %.not11.i, label %bufferevent_trigger_nolock_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @bufferevent_run_readcb_(ptr noundef nonnull %2, i32 noundef 0) #9
  br label %bufferevent_trigger_nolock_.exit

.thread52:                                        ; preds = %bb.f, %bb.g, %bb.a, %bb.i
  %.2 = phi i16 [ 1, %bb.i ], [ 65, %bb.a ], [ 33, %bb.g ], [ 17, %bb.f ]
  %i.ad = tail call i32 @bufferevent_disable(ptr noundef %2, i16 noundef signext 2) #9 ; 0 uses
  tail call void @bufferevent_run_eventcb_(ptr noundef %2, i16 noundef signext %.2, i32 noundef 0) #9
  br label %bufferevent_trigger_nolock_.exit

bufferevent_trigger_nolock_.exit:                 ; preds = %bb.g, %bb.g, %bb.h, %bb.k, %bb.j, %bb.e, %.thread52, %bb.d
  %i.ae = tail call i32 @bufferevent_decref_and_unlock_(ptr noundef %2) #9 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bufferevent_writecb(i32 noundef %0, i16 noundef signext %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @bufferevent_incref_and_lock_(ptr noundef %2) #9
  %i.b = icmp eq i16 %1, 1
  br i1 %i.b, label %.thread77, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 400 ; 4 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 8
  %.not = icmp ne i8 %i.e, 0                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @evutil_socket_finished_connecting_(i32 noundef %0) #9 ; 2 uses
  %i.g = load i8, ptr %i.c, align 8               ; 3 uses
  %i.h = and i8 %i.g, 16
  %.not61 = icmp eq i8 %i.h, 0
  br i1 %.not61, label %3, label %.thread68

.thread68:                                        ; preds = %bb.c
  %i.i = and i8 %i.g, -25
  store i8 %i.i, ptr %i.c, align 8
  br label %bb.e

3:                                                ; preds = %bb.c
  %4 = icmp eq i32 %i.f, 0
  br i1 %4, label %bufferevent_trigger_nolock_.exit, label %bb.d

bb.d:                                             ; preds = %3
  %i.j = and i8 %i.g, -25
  store i8 %i.j, ptr %i.c, align 8
  %i.k = icmp slt i32 %i.f, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread68, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.m = tail call i32 @event_del(ptr noundef nonnull %i.l) #9 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = tail call i32 @event_del(ptr noundef nonnull %i.n) #9 ; 0 uses
  tail call void @bufferevent_run_eventcb_(ptr noundef nonnull %2, i16 noundef signext 32, i32 noundef 0) #9
  br label %bufferevent_trigger_nolock_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 128, ptr %i.a, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 496 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8
  %.not.i = icmp eq i16 %i.q, 0
  br i1 %.not.i, label %bufferevent_socket_set_conn_address_fd_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = call i32 @getpeername(i32 noundef %0, ptr nonnull %i.p, ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bufferevent_socket_set_conn_address_fd_.exit

bufferevent_socket_set_conn_address_fd_.exit:     ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @bufferevent_run_eventcb_(ptr noundef nonnull %2, i16 noundef signext 128, i32 noundef 0) #9
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.t = load i16, ptr %i.s, align 8
  %i.u = and i16 %i.t, 4
  %.not62 = icmp eq i16 %i.u, 0
  br i1 %.not62, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bufferevent_socket_set_conn_address_fd_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 406
  %i.w = load i16, ptr %i.v, align 2
  %.not63 = icmp eq i16 %i.w, 0
  br i1 %.not63, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bufferevent_socket_set_conn_address_fd_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.y = call i32 @event_del(ptr noundef nonnull %i.x) #9 ; 0 uses
  br label %bufferevent_trigger_nolock_.exit

bb.j:                                             ; preds = %bb.h, %bb.b
  %i.z = call i64 @bufferevent_get_write_max_(ptr noundef nonnull %2) #9
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 406
  %i.ab = load i16, ptr %i.aa, align 2
  %.not64 = icmp eq i16 %i.ab, 0
  br i1 %.not64, label %bb.k, label %bufferevent_trigger_nolock_.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 7 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call i64 @evbuffer_get_length(ptr noundef %i.ad) #9
  %.not65 = icmp eq i64 %i.ae, 0                  ; 2 uses
  br i1 %.not65, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.ac, align 8
  %i.ag = call i32 @evbuffer_unfreeze(ptr noundef %i.af, i32 noundef 1) #9 ; 0 uses
  %i.ah = load ptr, ptr %i.ac, align 8
  %i.ai = call i32 @evbuffer_write_atmost(ptr noundef %i.ah, i32 noundef %0, i64 noundef %i.z) #9 ; 3 uses
  %i.aj = load ptr, ptr %i.ac, align 8
  %i.ak = call i32 @evbuffer_freeze(ptr noundef %i.aj, i32 noundef 1) #9 ; 0 uses
  switch i32 %i.ai, label %bb.n [
    i32 -1, label %bb.m
    i32 0, label %.thread77
  ]

bb.m:                                             ; preds = %bb.l
  %i.al = tail call ptr @__errno_location() #10
  %i.am = load i32, ptr %i.al, align 4
  switch i32 %i.am, label %.thread77 [
    i32 11, label %bb.u
    i32 4, label %bb.u
  ]

bb.n:                                             ; preds = %bb.l
  %i.an = icmp slt i32 %i.ai, 1
  br i1 %i.an, label %.thread77, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = zext nneg i32 %i.ai to i64
  %i.ap = call i32 @bufferevent_decrement_write_buckets_(ptr noundef nonnull %2, i64 noundef %i.ao) #9 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
  %i.aq = load ptr, ptr %i.ac, align 8
  %i.ar = call i64 @evbuffer_get_length(ptr noundef %i.aq) #9
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.au = call i32 @event_del(ptr noundef nonnull %i.at) #9 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %or.cond3 = and i1 %.not, %.not65
  br i1 %or.cond3, label %bufferevent_trigger_nolock_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = load ptr, ptr %i.ac, align 8
  %i.aw = call i64 @evbuffer_get_length(ptr noundef %i.av) #9
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.ay = load i64, ptr %i.ax, align 8
  %.not13.i = icmp ugt i64 %i.aw, %i.ay
  br i1 %.not13.i, label %bufferevent_trigger_nolock_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @bufferevent_run_writecb_(ptr noundef nonnull %2, i32 noundef 0) #9
  br label %bufferevent_trigger_nolock_.exit

bb.u:                                             ; preds = %bb.m, %bb.m
  %i.az = load ptr, ptr %i.ac, align 8
  %i.ba = call i64 @evbuffer_get_length(ptr noundef %i.az) #9
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.v, label %bufferevent_trigger_nolock_.exit

bb.v:                                             ; preds = %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bd = call i32 @event_del(ptr noundef nonnull %i.bc) #9 ; 0 uses
  br label %bufferevent_trigger_nolock_.exit

.thread77:                                        ; preds = %bb.l, %bb.m, %bb.a, %bb.n
  %.2 = phi i16 [ 2, %bb.n ], [ 66, %bb.a ], [ 34, %bb.m ], [ 18, %bb.l ]
  %i.be = call i32 @bufferevent_disable(ptr noundef %2, i16 noundef signext 4) #9 ; 0 uses
  call void @bufferevent_run_eventcb_(ptr noundef %2, i16 noundef signext %.2, i32 noundef 0) #9
  br label %bufferevent_trigger_nolock_.exit

bufferevent_trigger_nolock_.exit:                 ; preds = %bb.i, %bb.e, %3, %bb.t, %bb.s, %bb.u, %bb.v, %bb.r, %bb.j, %.thread77
  %i.bf = call i32 @bufferevent_decref_and_unlock_(ptr noundef %2) #9 ; 0 uses
  ret void
}

declare ptr @evbuffer_add_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @bufferevent_socket_outbuf_cb(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 4
  %.not8 = icmp eq i16 %i.e, 0
  br i1 %.not8, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.g = tail call i32 @event_pending(ptr noundef nonnull %i.f, i16 noundef signext 4, ptr noundef null) #9
  %.not9 = icmp eq i32 %i.g, 0
  br i1 %.not9, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 406
  %i.i = load i16, ptr %i.h, align 2
  %.not10 = icmp eq i16 %i.i, 0
  br i1 %.not10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.k = tail call i32 @bufferevent_add_event_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.j) #9 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare i32 @evbuffer_freeze(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @bufferevent_socket_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  tail call void @bufferevent_incref_and_lock_(ptr noundef %0) #9
  %i.b = tail call i32 @bufferevent_getfd(ptr noundef %0) #9 ; 3 uses
  store i32 %i.b, ptr %i.a, align 4
  %i.c = icmp sgt i32 %i.b, -1
  %.not25 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not25, label %be_socket_enable.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i16, ptr %1, align 2
  %i.e = zext i16 %i.d to i32
  %i.f = tail call i32 @evutil_socket_(i32 noundef %i.e, i32 noundef 2049, i32 noundef 0) #9 ; 2 uses
  store i32 %i.f, ptr %i.a, align 4
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %be_socket_enable.exit, label %.thread.thread

bb.d:                                             ; preds = %bb.a
  br i1 %.not25, label %.thread31, label %.thread

.thread31:                                        ; preds = %bb.d
  %3 = tail call i32 @bufferevent_setfd(ptr noundef %0, i32 noundef %i.b) #9 ; 0 uses
  br label %bb.f

.thread:                                          ; preds = %bb.d
  %i.h = call i32 @evutil_socket_connect_(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i32 noundef %2) #9 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %be_socket_enable.exit, label %bb.e

.thread.thread:                                   ; preds = %bb.c
  %4 = call i32 @evutil_socket_connect_(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i32 noundef %2) #9 ; 2 uses
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %bb.k, label %bb.e

bb.e:                                             ; preds = %.thread.thread, %.thread
  %i.j = phi i32 [ %4, %.thread.thread ], [ %i.h, %.thread ]
  %6 = load i32, ptr %i.a, align 4
  %i.k = call i32 @bufferevent_setfd(ptr noundef %0, i32 noundef %6) #9 ; 0 uses
  switch i32 %i.j, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.h
  ]

bb.f:                                             ; preds = %.thread31, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.n = call i32 @bufferevent_add_event_(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m) #9
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %be_socket_enable.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = or i8 %i.q, 8
  store i8 %i.r, ptr %i.p, align 8
  br label %be_socket_enable.exit

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = or i8 %i.t, 8
  store i8 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i64 @evbuffer_get_length(ptr noundef %i.w) #9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.z = load i64, ptr %i.y, align 8
  %.not13.i = icmp ugt i64 %i.x, %i.z
  br i1 %.not13.i, label %be_socket_enable.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @bufferevent_run_writecb_(ptr noundef nonnull %0, i32 noundef 4) #9
  br label %be_socket_enable.exit

bb.j:                                             ; preds = %bb.e
  call void @bufferevent_run_eventcb_(ptr noundef %0, i16 noundef signext 32, i32 noundef 4) #9
  %i.aa = call i32 @bufferevent_disable(ptr noundef %0, i16 noundef signext 6) #9 ; 0 uses
  br label %be_socket_enable.exit

bb.k:                                             ; preds = %.thread.thread
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = call i32 @evutil_closesocket(i32 noundef %i.ab) #9 ; 0 uses
  br label %be_socket_enable.exit

be_socket_enable.exit:                            ; preds = %.thread, %bb.c, %bb.i, %bb.h, %bb.f, %bb.k, %bb.j, %bb.b, %bb.g
  %.020 = phi i32 [ -1, %bb.k ], [ -1, %bb.c ], [ -1, %bb.b ], [ 0, %bb.g ], [ -1, %bb.f ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.i ], [ -1, %.thread ]
  %i.ad = call i32 @bufferevent_decref_and_unlock_(ptr noundef %0) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.020
}

declare void @bufferevent_incref_and_lock_(ptr noundef) local_unnamed_addr #1

declare i32 @bufferevent_getfd(ptr noundef) local_unnamed_addr #1

declare i32 @evutil_socket_(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @evutil_socket_connect_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @bufferevent_setfd(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @bufferevent_run_eventcb_(ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #1

declare i32 @bufferevent_disable(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare i32 @evutil_closesocket(i32 noundef) local_unnamed_addr #1

declare i32 @bufferevent_decref_and_unlock_(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @bufferevent_socket_connect_hostname(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 4 uses
  %5 = alloca %struct.addrinfo, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  switch i32 %2, label %bb.g [
    i32 10, label %bb.b
    i32 2, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.b = add i32 %4, -65536
  %or.cond5 = icmp ult i32 %i.b, -65535
  br i1 %or.cond5, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %2, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 6, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.e, align 8
  %i.f = call i32 (ptr, i64, ptr, ...) @evutil_snprintf(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull @.str.1, i32 noundef %4) #9 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.j = call i32 %i.i(i32 noundef 0, ptr noundef nonnull %i.h) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 0, ptr %i.k, align 4
  call void @bufferevent_suspend_write_(ptr noundef nonnull %0, i16 noundef zeroext 8) #9
  call void @bufferevent_suspend_read_(ptr noundef nonnull %0, i16 noundef zeroext 8) #9
  call void @bufferevent_incref(ptr noundef nonnull %0) #9
  %i.l = call ptr @evutil_getaddrinfo_async_(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %5, ptr noundef nonnull @bufferevent_connect_getaddrinfo_cb, ptr noundef nonnull %0) #9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not30 = icmp eq ptr %i.n, null
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.p = call i32 %i.o(i32 noundef 0, ptr noundef nonnull %i.n) #9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @evutil_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @bufferevent_suspend_write_(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare void @bufferevent_suspend_read_(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare void @bufferevent_incref(ptr noundef) local_unnamed_addr #1

declare ptr @evutil_getaddrinfo_async_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @bufferevent_connect_getaddrinfo_cb(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @bufferevent_unsuspend_write_(ptr noundef nonnull %2, i16 noundef zeroext 8) #9
  tail call void @bufferevent_unsuspend_read_(ptr noundef nonnull %2, i16 noundef zeroext 8) #9
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 624
  store ptr null, ptr %i.e, align 8
  switch i32 %0, label %bb.f [
    i32 -90001, label %bb.d
    i32 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 412
  store i32 -90001, ptr %i.f, align 4
  %i.g = tail call i32 @bufferevent_decref_and_unlock_(ptr noundef nonnull %2) #9 ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ult i32 %i.i, 129
  br i1 %i.j, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.0.ph = phi i32 [ -4, %bb.e ], [ %0, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 412
  store i32 %.0.ph, ptr %i.k, align 4
  tail call void @bufferevent_run_eventcb_(ptr noundef nonnull %2, i16 noundef signext 32, i32 noundef 0) #9
  %i.l = tail call i32 @bufferevent_decref_and_unlock_(ptr noundef nonnull %2) #9 ; 0 uses
  %.not33 = icmp eq ptr %1, null
  br i1 %.not33, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @evutil_freeaddrinfo(ptr noundef nonnull %1) #9
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.m = zext nneg i32 %i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 496
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 2 %i.o, i64 %i.m, i1 false)
  %i.q = load ptr, ptr %i.n, align 8
  %i.r = load i32, ptr %i.h, align 8
  %i.s = tail call i32 @bufferevent_socket_connect(ptr noundef nonnull %2, ptr noundef %i.q, i32 noundef %i.r)
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @bufferevent_run_eventcb_(ptr noundef nonnull %2, i16 noundef signext 32, i32 noundef 0) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = tail call i32 @bufferevent_decref_and_unlock_(ptr noundef nonnull %2) #9 ; 0 uses
  tail call void @evutil_freeaddrinfo(ptr noundef nonnull %1) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.j, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @bufferevent_socket_get_dns_error(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.d = load i32, ptr %i.c, align 4
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.f = tail call i32 %i.e(i32 noundef 0, ptr noundef nonnull %i.b) #9 ; 0 uses
  %.pr = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not9 = icmp eq ptr %.pr, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.j = tail call i32 %i.i(i32 noundef 0, ptr noundef nonnull %.pr) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.k = phi i32 [ %i.d, %.thread ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
end_hunk_0
