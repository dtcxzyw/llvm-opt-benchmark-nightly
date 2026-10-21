Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evdns?download=true
inline.NumInlined: 197
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@evdns_nameserver_add_impl_:bb.a
  %i.w = load i32, ptr %i.s, align 8
  %i.x = tail call i32 @bind(i32 noundef %.pre90.pre92.pre95, ptr nonnull %i.v, i32 noundef %i.w) #19
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %._crit_edge94

._crit_edge94:                                    ; preds = %bb.h
  %.pre90.pre92.pre = load i32, ptr %i.i, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @evdns_log_(i32 noundef 2, ptr noundef nonnull @.str.46)
  br label %bb.v

bb.j:                                             ; preds = %._crit_edge94, %bb.g, %bb.f
  %.pre90.pre92 = phi i32 [ %.pre90.pre92.pre, %._crit_edge94 ], [ %.pre90.pre92.pre95, %bb.g ], [ %i.q, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8
  %.not83 = icmp eq i32 %i.aa, 0
  br i1 %.not83, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call i32 @setsockopt(i32 noundef %.pre90.pre92, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %i.z, i32 noundef 4) #19
  %.not84 = icmp eq i32 %i.ab, 0
  br i1 %.not84, label %._crit_edge91, label %bb.l

._crit_edge91:                                    ; preds = %bb.k
  %.pre90.pre = load i32, ptr %i.i, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = load i32, ptr %i.z, align 8
  tail call void (i32, ptr, ...) @evdns_log_(i32 noundef 2, ptr noundef nonnull @.str.47, i32 noundef %i.ac)
  br label %bb.v

bb.m:                                             ; preds = %._crit_edge91, %bb.j
  %.pre90 = phi i32 [ %.pre90.pre, %._crit_edge91 ], [ %.pre90.pre92, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %.not85 = icmp eq i32 %i.ae, 0
  br i1 %.not85, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = tail call i32 @setsockopt(i32 noundef %.pre90, i32 noundef 1, i32 noundef 7, ptr noundef nonnull %i.ad, i32 noundef 4) #19
  %.not86 = icmp eq i32 %i.af, 0
  br i1 %.not86, label %._crit_edge, label %bb.o

._crit_edge:                                      ; preds = %bb.n
  %.pre = load i32, ptr %i.i, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ag = load i32, ptr %i.ad, align 4
  tail call void (i32, ptr, ...) @evdns_log_(i32 noundef 2, ptr noundef nonnull @.str.48, i32 noundef %i.ag)
  br label %bb.v

bb.p:                                             ; preds = %._crit_edge, %bb.m
  %i.ah = phi i32 [ %.pre, %._crit_edge ], [ %.pre90, %bb.m ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aj = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull align 2 %1, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  store i32 %2, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 432
  store i8 1, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 152 ; 2 uses
  %i.an = load ptr, ptr %i.j, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i32 @event_assign(ptr noundef nonnull %i.am, ptr noundef %i.ap, i32 noundef %i.ah, i16 noundef signext 18, ptr noundef nonnull @nameserver_ready_callback, ptr noundef nonnull %i.i) #19 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.as = load i32, ptr %i.ar, align 8
  %.not87 = icmp eq i32 %i.as, 0
  br i1 %.not87, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = tail call i32 @event_add(ptr noundef nonnull %i.am, ptr noundef null) #19
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.av = call ptr @evutil_format_sockaddr_port_(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 128) #19
  call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef %i.av, ptr noundef nonnull %i.i)
  %i.aw = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not88 = icmp eq ptr %i.aw, null
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 280 ; 3 uses
  br i1 %.not88, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  store ptr %i.i, ptr %i.ay, align 8
  store ptr %i.i, ptr %i.ax, align 8
  store ptr %i.i, ptr %i.b, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 280
  %i.ba = load ptr, ptr %i.az, align 8
  store ptr %i.ba, ptr %i.ax, align 8
  %i.bb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 280
  store ptr %i.i, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.ax, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 288
  store ptr %i.i, ptr %i.bf, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 8
  br label %.loopexit

bb.v:                                             ; preds = %bb.q, %bb.o, %bb.l, %bb.i
  %.070 = phi i32 [ -8, %bb.l ], [ -7, %bb.o ], [ 2, %bb.i ], [ 2, %bb.q ]
  %i.bj = load i32, ptr %i.i, align 8
  %i.bk = tail call i32 @evutil_closesocket(i32 noundef %i.bj) #19 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.e, %bb.v
  %.1 = phi i32 [ %.070, %bb.v ], [ 1, %bb.e ]    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  tail call void @event_debug_unassign(ptr noundef nonnull %i.bl) #19
  tail call void @event_mm_free_(ptr noundef nonnull %i.i) #19
  %i.bm = call ptr @evutil_format_sockaddr_port_(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 128) #19
  call void (i32, ptr, ...) @evdns_log_(i32 noundef 2, ptr noundef nonnull @.str.50, ptr noundef %i.bm, i32 noundef %.1)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.d, %bb.w, %bb.u, %bb.c
  %.0 = phi i32 [ 2, %bb.c ], [ %.1, %bb.w ], [ 0, %bb.u ], [ -1, %bb.d ], [ 3, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -8, 4) i32 @evdns_nameserver_add(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.sockaddr_in, align 4        ; 7 uses
  %i.a = load ptr, ptr @current_base, align 8     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @evdns_base_new(ptr noundef null, i32 noundef 0) ; 2 uses
  store ptr %i.b, ptr @current_base, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 4
  %i.e = trunc i64 %0 to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 13568, ptr %i.g, align 2
  store i16 2, ptr %1, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.k = tail call i32 %i.j(i32 noundef 0, ptr noundef nonnull %i.i) #19, !inline_history !28 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = call fastcc i32 @evdns_nameserver_add_impl_(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i32 noundef 16)
  %i.m = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.m, null
  br i1 %.not7.i, label %evdns_base_nameserver_add.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.o = call i32 %i.n(i32 noundef 0, ptr noundef nonnull %i.m) #19, !inline_history !28 ; 0 uses
  br label %evdns_base_nameserver_add.exit

evdns_base_nameserver_add.exit:                   ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define ptr @evdns_base_new(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @evutil_secure_rng_init() #19
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @evdns_log_(i32 noundef 2, ptr noundef nonnull @.str.7)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  tail call void @evutil_set_evdns_getaddrinfo_fn_(ptr noundef nonnull @evdns_getaddrinfo) #19
  tail call void @evutil_set_evdns_getaddrinfo_cancel_fn_(ptr noundef nonnull @evdns_getaddrinfo_cancel) #19
  %i.c = tail call ptr @event_mm_malloc_(i64 noundef 320) #19 ; 28 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.c, i8 0, i64 320, i1 false)
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 8), align 8 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  br label %2

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr %i.e(i32 noundef 1) #19    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8
  %.not49 = icmp eq ptr %i.g, null
  br i1 %.not49, label %2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.j = tail call i32 %i.i(i32 noundef 0, ptr noundef nonnull %i.g) #19 ; 0 uses
  br label %2

2:                                                ; preds = %.thread, %bb.f, %bb.e
  %3 = phi ptr [ %i.f, %.thread ], [ %i.h, %bb.f ], [ %i.h, %bb.e ]
  store ptr null, ptr %i.c, align 8
  %4 = tail call ptr @event_mm_calloc_(i64 noundef 13, i64 noundef 8) #19 ; 2 uses
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %bb.g, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %4, ptr %i.c, align 8
  store i32 13, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 64, ptr %7, align 4
  br label %bb.g

bb.g:                                             ; preds = %2, %5
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 5, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store ptr null, ptr %i.s, align 8
  store <4 x i32> <i32 1, i32 3, i32 3, i32 1>, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store i64 3, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 10, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 288 ; 2 uses
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  store ptr %i.x, ptr %i.y, align 8
  %i.z = and i32 %1, -98306
  %.not50 = icmp eq i32 %i.z, 0
  br i1 %.not50, label %bb.h, label %.thread62

.thread62:                                        ; preds = %bb.g
  tail call void (i32, ptr, ...) @evdns_log_(i32 noundef 2, ptr noundef nonnull @.str.8)
  br label %.split45

bb.h:                                             ; preds = %bb.g
  %i.aa = and i32 %1, 1
  %.not51 = icmp eq i32 %i.aa, 0
  br i1 %.not51, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not52 = icmp samesign ult i32 %1, 65536
  %spec.select = select i1 %.not52, i32 15, i32 31
  br label %.split45

.split45:                                         ; preds = %bb.i, %.thread62
  %.sink = phi i32 [ %spec.select, %bb.i ], [ 15, %.thread62 ]
  %.0436065 = phi i32 [ %1, %bb.i ], [ 1, %.thread62 ]
  %i.ab = tail call i32 @evdns_base_resolv_conf_parse(ptr noundef nonnull %i.c, i32 noundef %.sink, ptr noundef nonnull @.str.9)
  %.not53 = icmp eq i32 %i.ab, 0
  br i1 %.not53, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.split45
  tail call fastcc void @evdns_base_free_and_unlock(ptr noundef nonnull %i.c, i32 noundef 0)
  br label %bb.n

.critedge:                                        ; preds = %.split45, %bb.h
  %.04361 = phi i32 [ %.0436065, %.split45 ], [ %1, %bb.h ]
  %i.ac = and i32 %.04361, 32768
  %.not54 = icmp eq i32 %i.ac, 0
  br i1 %.not54, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  store i32 1, ptr %i.ad, align 8
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.k
  %i.ae = load ptr, ptr %3, align 8               ; 2 uses
  %.not55 = icmp eq ptr %i.ae, null
  br i1 %.not55, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ag = tail call i32 %i.af(i32 noundef 0, ptr noundef nonnull %i.ae) #19 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.m, %bb.c, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.j ], [ null, %bb.c ], [ %i.c, %bb.m ], [ %i.c, %bb.l ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -8, 5) i32 @evdns_base_nameserver_ip_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.sockaddr_storage, align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 128, ptr %i.a, align 4
  %i.b = call i32 @evutil_parse_sockaddr_port(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #19
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (i32, ptr, ...) @evdns_log_(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %1)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.val = load i16, ptr %2, align 8               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  switch i16 %.val, label %sockaddr_setport.exit [
    i16 2, label %sockaddr_getport.exit
    i16 10, label %sockaddr_getport.exit
  ]

sockaddr_getport.exit:                            ; preds = %bb.c, %bb.c
  %.val15 = load i16, ptr %i.c, align 2
  %i.d = icmp eq i16 %.val15, 0
  br i1 %i.d, label %sockaddr_getport.exit.thread, label %sockaddr_setport.exit

sockaddr_getport.exit.thread:                     ; preds = %sockaddr_getport.exit
  switch i16 %.val, label %sockaddr_setport.exit [
    i16 2, label %.sink.split.i
    i16 10, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %sockaddr_getport.exit.thread, %sockaddr_getport.exit.thread
  store i16 13568, ptr %i.c, align 2
  br label %sockaddr_setport.exit

sockaddr_setport.exit:                            ; preds = %bb.c, %.sink.split.i, %sockaddr_getport.exit.thread, %sockaddr_getport.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.f, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %sockaddr_setport.exit
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.h = call i32 %i.g(i32 noundef 0, ptr noundef nonnull %i.f) #19 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %sockaddr_setport.exit
  %i.i = load i32, ptr %i.a, align 4
  %i.j = call fastcc i32 @evdns_nameserver_add_impl_(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.i) ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.k, null
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.m = call i32 %i.l(i32 noundef 0, ptr noundef nonnull %i.k) #19 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %.0 = phi i32 [ 4, %bb.b ], [ %i.j, %bb.f ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %.0
}

declare i32 @evutil_parse_sockaddr_port(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -8, 5) i32 @evdns_nameserver_ip_add(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @current_base, align 8     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @evdns_base_new(ptr noundef null, i32 noundef 0) ; 2 uses
  store ptr %i.b, ptr @current_base, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.d = tail call i32 @evdns_base_nameserver_ip_add(ptr noundef %i.c, ptr noundef %0)
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 -8, 4) i32 @evdns_base_nameserver_sockaddr_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call fastcc i32 @evdns_nameserver_add_impl_(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.f, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.h = tail call i32 %i.g(i32 noundef 0, ptr noundef nonnull %i.f) #19 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define i32 @evdns_base_get_nameserver_addr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp sgt i32 %1, 0
  %i.h = icmp ne ptr %i.f, null                   ; 2 uses
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i32 %.02029, 1               ; 2 uses
  %i.k = icmp slt i32 %i.j, %1
  %i.l = icmp ne ptr %i.o, null                   ; 2 uses
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !29

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.030 = phi ptr [ %i.o, %bb.d ], [ %i.f, %bb.c ]
  %.02029 = phi i32 [ %i.j, %bb.d ], [ 0, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.030, i64 280
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = icmp eq ptr %i.o, %i.f
  br i1 %i.p, label %.loopexit, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.0.lcssa = phi ptr [ %i.f, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %.lcssa = phi i1 [ %i.h, %bb.c ], [ %i.l, %bb.d ]
  br i1 %.lcssa, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 136 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 3 uses
  %i.s = icmp ugt i32 %i.r, %3
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.u = zext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2, ptr nonnull align 8 %i.t, i64 %i.u, i1 false)
  %i.v = load i32, ptr %i.q, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.f, %._crit_edge
  %.021 = phi i32 [ %i.r, %bb.e ], [ -1, %._crit_edge ], [ %i.v, %bb.f ], [ -1, %.lr.ph ]
  %i.w = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not26 = icmp eq ptr %i.w, null
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.y = tail call i32 %i.x(i32 noundef 0, ptr noundef nonnull %i.w) #19 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
end_hunk_0
