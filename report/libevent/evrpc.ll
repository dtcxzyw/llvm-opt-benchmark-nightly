Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evrpc?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
begin_hunk_0_@evrpc_unregister_rpc:bb.a
  store ptr %i.l, ptr %i.i, align 8
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12 ; 2 uses
  %i.n = add i64 %i.m, 7
  %i.o = tail call ptr @event_mm_malloc_(i64 noundef %i.n) #11 ; 6 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.h, label %evrpc_construct_uri.exit

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @event_err(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.evrpc_construct_uri, ptr noundef nonnull %1) #13
  unreachable

evrpc_construct_uri.exit:                         ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.o, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %1, i64 %i.r, i1 false)
  %i.s = getelementptr i8, ptr %i.o, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 6
  store i8 0, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 @evhttp_del_cb(ptr noundef %i.v, ptr noundef nonnull %i.o) #11 ; 0 uses
  tail call void @event_mm_free_(ptr noundef nonnull %i.o) #11
  %i.x = load ptr, ptr %i.f, align 8
  tail call void @event_mm_free_(ptr noundef %i.x) #11
  tail call void @event_mm_free_(ptr noundef nonnull %.0) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %evrpc_construct_uri.exit
  %.019 = phi i32 [ 0, %evrpc_construct_uri.exit ], [ -1, %bb.b ]
  ret i32 %.019
}

declare void @event_mm_free_(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @evrpc_remove_hook(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ %0, %bb.b ], [ %i.a, %bb.c ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.in.i = phi ptr [ %.0, %bb.d ], [ %.0.i, %bb.f ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 7 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %evrpc_remove_hook_internal.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.b = icmp eq ptr %.0.i, %2
  br i1 %i.b, label %bb.g, label %bb.e, !llvm.loop !0

bb.g:                                             ; preds = %bb.f
  %i.c = load ptr, ptr %.0.i, align 8             ; 2 uses
  %.not15.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %..i = select i1 %.not15.i, ptr %.0, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %..i, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = load ptr, ptr %.0.i, align 8
  store ptr %i.g, ptr %i.e, align 8
  tail call void @event_mm_free_(ptr noundef nonnull %.0.i) #11
  br label %evrpc_remove_hook_internal.exit

evrpc_remove_hook_internal.exit:                  ; preds = %bb.e, %bb.g
  %.013.i = phi i32 [ 1, %bb.g ], [ 0, %bb.e ]
  ret i32 %.013.i
}

; Function Attrs: nounwind uwtable
define noundef ptr @evrpc_add_hook(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ %0, %bb.b ], [ %i.a, %bb.c ]
  %i.b = tail call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef 32) #11 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %3, ptr %i.d, align 8
  store ptr null, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store ptr %i.b, ptr %i.f, align 8
  store ptr %i.b, ptr %i.e, align 8
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define noundef i32 @evrpc_register_rpc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #12 ; 2 uses
  %i.d = add i64 %i.c, 7
  %i.e = tail call ptr @event_mm_malloc_(i64 noundef %i.d) #11 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %evrpc_construct_uri.exit

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @event_err(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.evrpc_construct_uri, ptr noundef nonnull %i.b) #13
  unreachable

evrpc_construct_uri.exit:                         ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.e, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 1 %i.b, i64 %i.h, i1 false)
  %i.i = getelementptr i8, ptr %i.e, i64 %i.c
  %i.j = getelementptr i8, ptr %i.i, i64 6
  store i8 0, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %3, ptr %i.m, align 8
  store ptr null, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store ptr %1, ptr %i.o, align 8
  store ptr %1, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 @evhttp_set_cb(ptr noundef %i.r, ptr noundef nonnull %i.e, ptr noundef nonnull @evrpc_request_cb, ptr noundef nonnull %1) #11 ; 0 uses
  tail call void @event_mm_free_(ptr noundef nonnull %i.e) #11
  ret i32 0
}

declare i32 @evhttp_set_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @evrpc_request_cb(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.b, label %evrpc_pause_request.exit.thread33

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 @evbuffer_get_length(ptr noundef %i.d) #11
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %evrpc_pause_request.exit.thread33, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef 48) #11 ; 13 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %evrpc_pause_request.exit.thread33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.m, align 8
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %evrpc_pause_request.exit.thread30, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %evrpc_hook_associate_meta_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @event_mm_malloc_(i64 noundef 24) #11 ; 6 uses
  store ptr null, ptr %i.s, align 8
  %2 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.s, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr null, ptr %i.t, align 8
  store ptr %i.s, ptr %i.g, align 8
  br label %evrpc_hook_associate_meta_.exit

evrpc_hook_associate_meta_.exit:                  ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.s, %bb.f ], [ %i.q, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.p, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.l, align 8
  %i.w = load ptr, ptr %i.c, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %evrpc_hook_associate_meta_.exit
  %.011.in.i = phi ptr [ %i.v, %evrpc_hook_associate_meta_.exit ], [ %.011.i, %bb.h ]
  %.011.i = load ptr, ptr %.011.in.i, align 8     ; 4 uses
  %.not.i = icmp eq ptr %.011.i, null
  br i1 %.not.i, label %evrpc_pause_request.exit.thread30.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 %i.y(ptr noundef nonnull %i.g, ptr noundef %0, ptr noundef %i.w, ptr noundef %i.aa) #11, !inline_history !1
  switch i32 %i.ab, label %evrpc_pause_request.exit.thread30.loopexit [
    i32 0, label %bb.g
    i32 -1, label %evrpc_pause_request.exit
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.l, align 8
  %i.ad = tail call ptr @event_mm_malloc_(i64 noundef 32) #11 ; 7 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %evrpc_request_cb_closure.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.g, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr @evrpc_request_cb_closure, ptr %i.ag, align 8
  store ptr null, ptr %i.ad, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ai, ptr %i.aj, align 8
  store ptr %i.ad, ptr %i.ai, align 8
  store ptr %i.ad, ptr %i.ah, align 8
  br label %evrpc_request_cb_closure.exit

evrpc_pause_request.exit.thread30.loopexit:       ; preds = %bb.g, %bb.h
  %.pre = load ptr, ptr %i.i, align 8
  %.pre36 = load ptr, ptr %i.j, align 8
  br label %evrpc_pause_request.exit.thread30

evrpc_pause_request.exit.thread30:                ; preds = %evrpc_pause_request.exit.thread30.loopexit, %bb.d
  %i.ak = phi ptr [ %.pre36, %evrpc_pause_request.exit.thread30.loopexit ], [ %0, %bb.d ] ; 2 uses
  %i.al = phi ptr [ %.pre, %evrpc_pause_request.exit.thread30.loopexit ], [ %1, %bb.d ] ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call ptr %i.an(ptr noundef %i.ap) #11, !inline_history !13 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = icmp eq ptr %i.aq, null
  br i1 %i.as, label %bb.n, label %bb.k

bb.k:                                             ; preds = %evrpc_pause_request.exit.thread30
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call i32 %i.au(ptr noundef nonnull %i.aq, ptr noundef %i.aw) #11, !inline_history !13
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call ptr %i.ba(ptr noundef %i.bc) #11, !inline_history !13 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.bd, ptr %i.be, align 8
  %i.bf = icmp eq ptr %i.bd, null
  br i1 %i.bf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bh(ptr noundef nonnull %i.g, ptr noundef %i.bj) #11, !inline_history !13
  br label %evrpc_request_cb_closure.exit

bb.n:                                             ; preds = %bb.l, %bb.k, %evrpc_pause_request.exit.thread30
  tail call void @evrpc_reqstate_free_(ptr noundef nonnull %i.g)
  tail call void @evhttp_send_error(ptr noundef %i.ak, i32 noundef 503, ptr noundef null) #11
  br label %evrpc_request_cb_closure.exit

evrpc_pause_request.exit:                         ; preds = %bb.h
  tail call void @evrpc_reqstate_free_(ptr noundef nonnull %i.g)
  br label %evrpc_pause_request.exit.thread33

evrpc_pause_request.exit.thread33:                ; preds = %bb.c, %bb.b, %bb.a, %evrpc_pause_request.exit
  tail call void @evhttp_send_error(ptr noundef %0, i32 noundef 503, ptr noundef null) #11
  br label %evrpc_request_cb_closure.exit

evrpc_request_cb_closure.exit:                    ; preds = %bb.j, %bb.i, %bb.n, %bb.m, %evrpc_pause_request.exit.thread33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @evhttp_del_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @evrpc_reqstate_free_(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not13.i.i = icmp eq ptr %i.d, null
  br i1 %.not13.i.i, label %evrpc_hook_context_free_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.f = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.p, %bb.f ] ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not12.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  br i1 %.not12.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = load ptr, ptr %i.f, align 8
  store ptr %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @event_mm_free_(ptr noundef %i.m) #11
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @event_mm_free_(ptr noundef %i.o) #11
  tail call void @event_mm_free_(ptr noundef nonnull %i.f) #11
  %i.p = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %evrpc_hook_context_free_.exit, label %bb.c, !llvm.loop !2

evrpc_hook_context_free_.exit:                    ; preds = %bb.f, %bb.b
  tail call void @event_mm_free_(ptr noundef nonnull %i.c) #11
  br label %bb.g

bb.g:                                             ; preds = %evrpc_hook_context_free_.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not15 = icmp eq ptr %i.r, null
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull %i.r) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.v, null
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull %i.v) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not17 = icmp eq ptr %i.z, null
  br i1 %.not17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @evbuffer_free(ptr noundef nonnull %i.z) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @event_mm_free_(ptr noundef nonnull %0) #11
  ret void
}

declare void @evbuffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @evrpc_request_done(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 %i.f(ptr noundef %i.h) #11
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @evbuffer_new() #11        ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.g, align 8
  tail call void %i.o(ptr noundef nonnull %i.k, ptr noundef %i.p) #11
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %evrpc_process_hooks.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load ptr, ptr %0, align 8                ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.e, label %evrpc_hook_associate_meta_.exit

bb.e:                                             ; preds = %bb.d
  %i.y = tail call ptr @event_mm_malloc_(i64 noundef 24) #11 ; 6 uses
  store ptr null, ptr %i.y, align 8
  %1 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.y, ptr %1, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr null, ptr %i.z, align 8
  store ptr %i.y, ptr %0, align 8
  br label %evrpc_hook_associate_meta_.exit

evrpc_hook_associate_meta_.exit:                  ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.y, %bb.e ], [ %i.w, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.v, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %i.q, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %evrpc_hook_associate_meta_.exit
  %.011.in.i = phi ptr [ %i.ac, %evrpc_hook_associate_meta_.exit ], [ %.011.i, %bb.g ]
  %.011.i = load ptr, ptr %.011.in.i, align 8     ; 4 uses
  %.not.i = icmp eq ptr %.011.i, null
  br i1 %.not.i, label %evrpc_process_hooks.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.011.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call i32 %i.af(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef %i.ad, ptr noundef %i.ah) #11, !inline_history !1
  switch i32 %i.ai, label %evrpc_process_hooks.exit.thread [
    i32 0, label %bb.f
    i32 -1, label %.thread
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.q, align 8
  %i.ak = tail call ptr @event_mm_malloc_(i64 noundef 32) #11 ; 7 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.thread, label %.thread26

.thread26:                                        ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr @evrpc_request_done_closure, ptr %i.an, align 8
  store ptr null, ptr %i.ak, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  store ptr %i.ak, ptr %i.ap, align 8
  store ptr %i.ak, ptr %i.ao, align 8
  br label %bb.j

evrpc_process_hooks.exit.thread:                  ; preds = %bb.g, %bb.f, %bb.c
  %i.ar = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call ptr @evhttp_find_header(ptr noundef %i.at, ptr noundef nonnull @.str.2) #11
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.i, label %evrpc_request_done_closure.exit

bb.i:                                             ; preds = %evrpc_process_hooks.exit.thread
  %i.aw = load ptr, ptr %i.as, align 8
  %i.ax = tail call i32 @evhttp_add_header(ptr noundef %i.aw, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11 ; 0 uses
  br label %evrpc_request_done_closure.exit

evrpc_request_done_closure.exit:                  ; preds = %evrpc_process_hooks.exit.thread, %bb.i
  %i.ay = load ptr, ptr %i.l, align 8
  tail call void @evhttp_send_reply(ptr noundef nonnull %i.ar, i32 noundef 200, ptr noundef nonnull @.str.4, ptr noundef %i.ay) #11
  tail call void @evrpc_reqstate_free_(ptr noundef nonnull %0)
  br label %bb.j

.thread:                                          ; preds = %bb.g, %bb.h, %bb.b, %bb.a
  tail call void @evrpc_reqstate_free_(ptr noundef nonnull %0)
  tail call void @evhttp_send_error(ptr noundef %i.b, i32 noundef 503, ptr noundef null) #11
  br label %bb.j

bb.j:                                             ; preds = %.thread26, %.thread, %evrpc_request_done_closure.exit
  ret void
}

declare ptr @evbuffer_new() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @evrpc_request_done_closure(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i32 %1, -1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @evhttp_find_header(ptr noundef %i.e, ptr noundef nonnull @.str.2) #11
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = tail call i32 @evhttp_add_header(ptr noundef %i.h, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @evhttp_send_reply(ptr noundef nonnull %i.b, i32 noundef 200, ptr noundef nonnull @.str.4, ptr noundef %i.k) #11
  tail call void @evrpc_reqstate_free_(ptr noundef nonnull %0)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @evrpc_reqstate_free_(ptr noundef nonnull %0)
  tail call void @evhttp_send_error(ptr noundef %i.b, i32 noundef 503, ptr noundef null) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare void @evhttp_send_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @evrpc_get_request(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @evrpc_get_reply(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @evrpc_pool_new(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef 96) #11 ; 15 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.g, ptr %i.h, align 8
  store ptr null, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.a, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 -1, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @evrpc_pool_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not63 = icmp eq ptr %i.b, null
  br i1 %.not63, label %.preheader60, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

.preheader60:                                     ; preds = %bb.e, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not4164 = icmp eq ptr %i.e, null
  br i1 %.not4164, label %.preheader59, label %.lr.ph65

.lr.ph65:                                         ; preds = %.preheader60
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.g = phi ptr [ %i.b, %.lr.ph ], [ %i.n, %bb.e ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not47 = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
end_hunk_0
begin_hunk_1_@evrpc_pool_free:bb.a

bb.p:                                             ; preds = %.preheader, %thread-pre-split55
  %.0.i.i4970 = phi ptr [ %i.aq, %.preheader ], [ %i.as, %thread-pre-split55 ] ; 5 uses
  %i.ar = icmp eq ptr %.0.i.i4970, %i.aq
  %i.as = load ptr, ptr %.0.i.i4970, align 8      ; 3 uses
  %.not15.i.i51 = icmp eq ptr %i.as, null         ; 2 uses
  br i1 %i.ar, label %bb.q, label %thread-pre-split55, !llvm.loop !0

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i4970, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %..i.i52 = select i1 %.not15.i.i51, ptr %i.ah, ptr %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %..i.i52, i64 8
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = load ptr, ptr %.0.i.i4970, align 8
  store ptr %i.aw, ptr %i.au, align 8
  tail call void @event_mm_free_(ptr noundef nonnull %.0.i.i4970) #11
  %.pre74 = load ptr, ptr %i.ah, align 8
  br label %evrpc_remove_hook.exit54

evrpc_remove_hook.exit54:                         ; preds = %thread-pre-split55, %bb.q
  %i.ax = phi ptr [ %.pre74, %bb.q ], [ %i.aq, %thread-pre-split55 ] ; 2 uses
  %.not44 = icmp eq ptr %i.ax, null
  br i1 %.not44, label %._crit_edge, label %.preheader, !llvm.loop !18

._crit_edge:                                      ; preds = %evrpc_remove_hook.exit54, %.preheader56
  tail call void @event_mm_free_(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @evrpc_request_wrapper_free(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not13.i.i = icmp eq ptr %i.b, null
  br i1 %.not13.i.i, label %evrpc_hook_context_free_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.d = phi ptr [ %i.b, %.lr.ph.i.i ], [ %i.n, %bb.f ] ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not12.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  br i1 %.not12.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.c, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load ptr, ptr %i.d, align 8
  store ptr %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @event_mm_free_(ptr noundef %i.k) #11
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @event_mm_free_(ptr noundef %i.m) #11
  tail call void @event_mm_free_(ptr noundef nonnull %i.d) #11
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %evrpc_hook_context_free_.exit, label %bb.c, !llvm.loop !2

evrpc_hook_context_free_.exit:                    ; preds = %bb.f, %bb.b
  tail call void @event_mm_free_(ptr noundef nonnull %i.a) #11
  br label %bb.g

bb.g:                                             ; preds = %evrpc_hook_context_free_.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @event_mm_free_(ptr noundef %i.p) #11
  tail call void @event_mm_free_(ptr noundef nonnull %0) #11
  ret void
}

declare void @evhttp_connection_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @evrpc_pool_add_connection(ptr nofree noundef captures(none) %0, ptr noundef initializes((0, 16)) %1) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.b, ptr %i.c, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @evhttp_connection_set_base(ptr noundef nonnull %1, ptr noundef nonnull %i.e) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.g = load i64, ptr %i.f, align 8
  %.not27 = icmp eq i64 %i.g, 0
  br i1 %.not27, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.i = load i64, ptr %i.h, align 8
  %.not28 = icmp eq i64 %i.i, 0
  br i1 %.not28, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i32, ptr %i.j, align 8
  tail call void @evhttp_connection_set_timeout(ptr noundef nonnull %1, i32 noundef %i.k) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %.not29 = icmp eq ptr %i.m, null
  br i1 %.not29, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not30 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.q, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %i.t, ptr %i.q, align 8
  tail call fastcc void @evrpc_schedule_request(ptr noundef nonnull %1, ptr noundef %i.m)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  ret void
}

declare void @evhttp_connection_set_base(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @evhttp_connection_set_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @evrpc_schedule_request(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.evrpc_status, align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.c = tail call ptr @evhttp_request_new(ptr noundef nonnull @evrpc_reply_done, ptr noundef nonnull %1) #11 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.f(ptr noundef %i.h, ptr noundef %i.j) #11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %evrpc_process_hooks.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %evrpc_hook_associate_meta_.exit

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @event_mm_malloc_(i64 noundef 24) #11 ; 6 uses
  store ptr null, ptr %i.q, align 8
  %3 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.q, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr null, ptr %i.r, align 8
  store ptr %i.q, ptr %1, align 8
  br label %evrpc_hook_associate_meta_.exit

evrpc_hook_associate_meta_.exit:                  ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.q, %bb.d ], [ %i.o, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %0, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %evrpc_hook_associate_meta_.exit
  %.011.in.i = phi ptr [ %i.m, %evrpc_hook_associate_meta_.exit ], [ %.011.i, %bb.f ]
  %.011.i = load ptr, ptr %.011.in.i, align 8     ; 4 uses
  %.not.i = icmp eq ptr %.011.i, null
  br i1 %.not.i, label %evrpc_process_hooks.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i32 %i.v(ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef %i.t, ptr noundef %i.x) #11, !inline_history !1
  switch i32 %i.y, label %evrpc_process_hooks.exit.thread [
    i32 0, label %bb.e
    i32 -1, label %.thread
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @event_mm_malloc_(i64 noundef 32) #11 ; 7 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.thread, label %.thread32

.thread32:                                        ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @evrpc_schedule_request_closure, ptr %i.ac, align 8
  store ptr null, ptr %i.z, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  store ptr %i.z, ptr %i.ae, align 8
  store ptr %i.z, ptr %i.ad, align 8
  br label %bb.h

evrpc_process_hooks.exit.thread:                  ; preds = %bb.f, %bb.e, %bb.b
  tail call void @evrpc_schedule_request_closure(ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.h

.thread:                                          ; preds = %bb.f, %bb.g, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i32 3, ptr %2, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.ah(ptr noundef nonnull %2, ptr noundef %i.aj, ptr noundef %i.al, ptr noundef %i.an) #11
  call fastcc void @evrpc_request_wrapper_free(ptr noundef nonnull %1)
  br label %bb.h

bb.h:                                             ; preds = %.thread32, %.thread, %evrpc_process_hooks.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @evrpc_pool_remove_connection(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.c, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %1, align 8
  store ptr %i.f, ptr %i.c, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @evrpc_pool_set_timeout(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.06 = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7 = icmp eq ptr %.06, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi ptr [ %.0, %.lr.ph ], [ %.06, %bb.a ] ; 2 uses
  tail call void @evhttp_connection_set_timeout(ptr noundef nonnull %.08, i32 noundef %1) #11
  %.0 = load ptr, ptr %.08, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %1, ptr %i.b, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evrpc_resume_request(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.in = phi ptr [ %i.a, %bb.a ], [ %.0, %bb.c ]
  %.0 = load ptr, ptr %.0.in, align 8             ; 8 uses
  %cond = icmp eq ptr %.0, null
  br i1 %cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %bb.d, label %bb.b, !llvm.loop !20

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef %i.c, i32 noundef %2) #11
  %i.g = load ptr, ptr %.0, align 8               ; 2 uses
  %.not21 = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.k, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = load ptr, ptr %.0, align 8
  store ptr %i.l, ptr %i.i, align 8
  tail call void @event_mm_free_(ptr noundef nonnull %.0) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.g
  %.019 = phi i32 [ 0, %bb.g ], [ -1, %bb.b ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define noundef i32 @evrpc_make_request(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 @event_assign(ptr noundef nonnull %i.c, ptr noundef %i.e, i32 noundef -1, i16 noundef signext 0, ptr noundef nonnull @evrpc_request_timeout, ptr noundef %0) #11 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8
  store ptr %0, ptr %i.i, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %evrpc_pool_schedule.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.in.i.i = phi ptr [ %i.n, %bb.b ], [ %.0.i.i, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %evrpc_pool_schedule.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 272
end_hunk_1
begin_hunk_2_@evrpc_send_request_generic:bb.a

bb.i:                                             ; preds = %evrpc_pool_find_connection.exit.i.i
  store ptr %i.ah, ptr %i.u, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = load ptr, ptr %i.ae, align 8
  store ptr %i.aj, ptr %i.ah, align 8
  tail call fastcc void @evrpc_schedule_request(ptr noundef nonnull %.0.i.i.i, ptr noundef %i.y)
  br label %evrpc_make_request.exit

bb.k:                                             ; preds = %bb.c, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store i32 3, ptr %9, align 8
  call void %3(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2, ptr noundef %4) #11
  br label %evrpc_make_request.exit

evrpc_make_request.exit:                          ; preds = %bb.f, %bb.j, %bb.d, %bb.k
  %.0 = phi i32 [ -1, %bb.k ], [ 0, %bb.d ], [ 0, %bb.j ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evrpc_register_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef 120) #11 ; 13 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %evrpc_register_object.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @event_mm_strdup_(ptr noundef %1) #11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 8
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @event_mm_free_(ptr noundef nonnull %i.a) #11
  br label %evrpc_register_object.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %4, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %5, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %6, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %7, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %8, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %9, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %10, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %11, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %12, ptr %i.n, align 8
  %i.o = tail call i32 @evrpc_register_rpc(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %evrpc_register_object.exit.thread

evrpc_register_object.exit.thread:                ; preds = %bb.a, %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.c ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @evrpc_request_get_pool(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @evrpc_request_set_pool(ptr nofree noundef writeonly captures(none) initializes((24, 32)) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @evrpc_request_set_cb(ptr nofree noundef writeonly captures(none) initializes((184, 200)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %2, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @event_err(i32 noundef, ptr noundef, ...) local_unnamed_addr #10

declare i64 @evbuffer_get_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @evrpc_request_cb_closure(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i32 %1, -1
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr %i.g(ptr noundef %i.i) #11 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i32 %i.n(ptr noundef nonnull %i.j, ptr noundef %i.p) #11
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call ptr %i.t(ptr noundef %i.v) #11 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.x, align 8
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.aa(ptr noundef nonnull %0, ptr noundef %i.ac) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @evrpc_reqstate_free_(ptr noundef nonnull %0)
  tail call void @evhttp_send_error(ptr noundef %i.d, i32 noundef 503, ptr noundef null) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare ptr @evhttp_find_header(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @evhttp_add_header(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @evhttp_send_reply(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @evhttp_request_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @evrpc_reply_done(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = tail call i32 @event_del(ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %0, ptr %i.e, align 8
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @evrpc_reply_done_closure(ptr noundef nonnull %1, i32 noundef 0)
  br label %evrpc_pause_request.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %evrpc_process_hooks.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %evrpc_hook_associate_meta_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @event_mm_malloc_(i64 noundef 24) #11 ; 6 uses
  store ptr null, ptr %i.l, align 8
  %2 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.l, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr null, ptr %i.m, align 8
  store ptr %i.l, ptr %1, align 8
  br label %evrpc_hook_associate_meta_.exit

evrpc_hook_associate_meta_.exit:                  ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.l, %bb.e ], [ %i.j, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.i, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load ptr, ptr %i.o, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %evrpc_hook_associate_meta_.exit
  %.011.in.i = phi ptr [ %i.b, %evrpc_hook_associate_meta_.exit ], [ %.011.i, %bb.g ]
  %.011.i = load ptr, ptr %.011.in.i, align 8     ; 4 uses
  %.not.i = icmp eq ptr %.011.i, null
  br i1 %.not.i, label %evrpc_process_hooks.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 %i.r(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef %i.t) #11, !inline_history !1 ; 2 uses
  switch i32 %i.u, label %evrpc_process_hooks.exit.thread [
    i32 0, label %bb.f
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @evhttp_request_own(ptr noundef nonnull %0) #11
  %i.v = tail call ptr @event_mm_malloc_(i64 noundef 32) #11 ; 7 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %evrpc_pause_request.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @evrpc_reply_done_closure, ptr %i.y, align 8
  store ptr null, ptr %i.v, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  store ptr %i.v, ptr %i.aa, align 8
  store ptr %i.v, ptr %i.z, align 8
  br label %evrpc_pause_request.exit

evrpc_process_hooks.exit.thread:                  ; preds = %bb.g, %bb.f, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ %i.u, %bb.g ]
  tail call void @evrpc_reply_done_closure(ptr noundef %1, i32 noundef %.0)
  br label %evrpc_pause_request.exit

evrpc_pause_request.exit:                         ; preds = %bb.i, %bb.h, %evrpc_process_hooks.exit.thread, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @evrpc_schedule_request_closure(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.evrpc_status, align 8       ; 5 uses
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.g = icmp eq i32 %1, -1
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #12 ; 2 uses
  %i.k = add i64 %i.j, 7
  %i.l = tail call ptr @event_mm_malloc_(i64 noundef %i.k) #11 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %evrpc_construct_uri.exit

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @event_err(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.evrpc_construct_uri, ptr noundef nonnull %i.i) #13
  unreachable

evrpc_construct_uri.exit:                         ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.l, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.i, i64 %i.o, i1 false)
  %i.p = getelementptr i8, ptr %i.l, i64 %i.j
  %i.q = getelementptr i8, ptr %i.p, i64 6
  store i8 0, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %evrpc_construct_uri.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.u, align 8
  %i.v = zext nneg i32 %i.s to i64
  store i64 %i.v, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = call i32 @event_add(ptr noundef nonnull %i.w, ptr noundef nonnull %3) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %evrpc_construct_uri.exit
  %i.y = call i32 @evhttp_make_request(ptr noundef %i.b, ptr noundef %i.d, i32 noundef 2, ptr noundef nonnull %i.l) #11
  call void @event_mm_free_(ptr noundef nonnull %i.l) #11
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i32 3, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ab(ptr noundef nonnull %2, ptr noundef %i.ad, ptr noundef %i.af, ptr noundef %i.ah) #11
  call fastcc void @evrpc_request_wrapper_free(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

declare i32 @event_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @evrpc_reply_done_closure(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.evrpc_status, align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 0, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.e, align 8
  %i.f = icmp eq ptr %i.b, null                   ; 2 uses
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %1, -1
  br i1 %i.g, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 %i.i(ptr noundef %i.k, ptr noundef %i.m) #11
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ 4, %bb.b ], [ 1, %bb.a ], [ 2, %bb.c ]
  store i32 %.sink, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.q(ptr noundef %i.s) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.u(ptr noundef nonnull %2, ptr noundef %i.w, ptr noundef %i.y, ptr noundef %i.aa) #11
  call fastcc void @evrpc_request_wrapper_free(ptr noundef nonnull %0)
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = call i32 @evhttp_request_is_owned(ptr noundef nonnull %i.b) #11
  %.not24 = icmp eq i32 %i.ab, 0
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @evhttp_request_free(ptr noundef nonnull %i.b) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
end_hunk_2
