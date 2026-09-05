Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evdns?download=true
inline.NumInlined: 196
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@evdns_base_resolve_ipv4:bb.a
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.h, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.h, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.h, ptr %i.x, align 8
  br label %evdns_request_insert.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr %i.h, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr %i.h, ptr %i.ae, align 8
  br label %evdns_request_insert.exit.i

evdns_request_insert.exit.i:                      ; preds = %bb.i, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 44 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = load ptr, ptr %i.k, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 448 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 8
  tail call fastcc void @evdns_request_transmit(ptr noundef nonnull %i.h)
  br label %request_submit.exit

bb.j:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i14.i = icmp eq ptr %i.an, null
  br i1 %.not.i14.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.h, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.h, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.h, ptr %i.ap, align 8
  br label %evdns_request_insert.exit15.i

bb.l:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store ptr %i.h, ptr %i.at, align 8
  %i.au = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store ptr %i.h, ptr %i.aw, align 8
  br label %evdns_request_insert.exit15.i

evdns_request_insert.exit15.i:                    ; preds = %bb.l, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8
  br label %request_submit.exit

bb.m:                                             ; preds = %bb.d
  tail call fastcc void @search_request_new(ptr noundef nonnull %0, ptr noundef %i.a, i32 noundef 1, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %request_submit.exit

request_submit.exit:                              ; preds = %evdns_request_insert.exit15.i, %evdns_request_insert.exit.i, %bb.e, %bb.m
  %i.ba = load ptr, ptr %i.a, align 8
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %request_submit.exit
  tail call void @event_mm_free_(ptr noundef nonnull %i.a) #19
  br label %bb.o

bb.o:                                             ; preds = %request_submit.exit, %bb.n
  %.0 = phi ptr [ null, %bb.n ], [ %i.a, %request_submit.exit ] ; 2 uses
  %i.bc = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not31 = icmp eq ptr %i.bc, null
  br i1 %.not31, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.be = tail call i32 %i.bd(i32 noundef 0, ptr noundef nonnull %i.bc) #19 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.a
  %.024 = phi ptr [ null, %bb.a ], [ %.0, %bb.p ], [ %.0, %bb.o ]
  ret ptr %.024
}

declare ptr @event_mm_calloc_(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @request_new(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 256) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp slt i32 %i.e, %i.g                  ; 2 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #21 ; 7 uses
  %i.j = add nuw nsw i64 %i.i, 102                ; 3 uses
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %request_find_from_trans_id.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @evutil_secure_rng_get_bytes(ptr noundef nonnull %i.a, i64 noundef 2) #19
  %i.l = load i16, ptr %i.a, align 2              ; 4 uses
  %i.m = icmp eq i16 %i.l, -1
  br i1 %i.m, label %request_find_from_trans_id.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %0, align 8
  %.val6.i = load i32, ptr %i.k, align 8
  %i.n = zext i16 %i.l to i32
  %i.o = srem i32 %i.n, %.val6.i
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %transaction_id_pick.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.w, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 192
  %i.t = load i16, ptr %i.s, align 8
  %i.u = icmp eq i16 %i.t, %i.l
  br i1 %i.u, label %request_find_from_trans_id.exit.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not16.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not16.i.i, label %transaction_id_pick.exit, label %.preheader.i.i, !llvm.loop !2

request_find_from_trans_id.exit.i:                ; preds = %.preheader.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.c

transaction_id_pick.exit:                         ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %transaction_id_pick.exit
  %i.x = phi i16 [ %i.l, %transaction_id_pick.exit ], [ -1, %bb.a ] ; 2 uses
  %i.y = add i64 %i.i, 326
  %i.z = call ptr @event_mm_malloc_(i64 noundef %i.y) #19 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp ugt i64 %i.i, 255
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @event_mm_free_(ptr noundef nonnull %i.z) #19
  br label %bb.w

bb.i:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.z, i8 0, i64 224, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 208
  store ptr %0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call i32 @event_assign(ptr noundef nonnull %i.ac, ptr noundef %i.ae, i32 noundef -1, i16 noundef signext 0, ptr noundef nonnull @evdns_request_timeout_callback, ptr noundef nonnull %i.z) #19 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ah = load i32, ptr %i.ag, align 4
  %.not71 = icmp eq i32 %i.ah, 0
  br i1 %.not71, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.ai = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %3, i64 noundef 256) #19 ; 0 uses
  %i.aj = add nuw nsw i64 %i.i, 7
  %i.ak = lshr i64 %i.aj, 3
  call void @evutil_secure_rng_get_bytes(ptr noundef nonnull %i.c, i64 noundef %i.ak) #19
  %.not83 = icmp eq i64 %i.i, 0
  br i1 %.not83, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.al = phi i64 [ %i.ay, %bb.k ], [ 0, %bb.j ]  ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al ; 3 uses
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = call i32 @EVUTIL_ISALPHA_(i8 noundef signext %i.an) #19
  %.not73 = icmp eq i32 %i.ao, 0
  br i1 %.not73, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph
  %indvars = trunc nuw i64 %i.al to i32
  %i.ap = lshr i64 %i.al, 3
  %6 = and i64 %i.ap, 536870911
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %6
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = and i32 %indvars, 7
  %i.au = shl nuw nsw i32 1, %i.at
  %i.av = and i32 %i.au, %i.as
  %.not74 = icmp eq i32 %i.av, 0
  %i.aw = load i8, ptr %i.am, align 1
  %i.ax = and i8 %i.aw, -33
  %masksel = select i1 %.not74, i8 0, i8 32
  %.sink = or disjoint i8 %i.ax, %masksel
  store i8 %.sink, ptr %i.am, align 1
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %.lr.ph
  %i.ay = add nuw i64 %i.al, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.i
  %.065 = phi ptr [ %i.b, %._crit_edge ], [ %3, %bb.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 224 ; 5 uses
  store ptr %i.az, ptr %i.z, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 194 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 2
  %i.bc = or i8 %i.bb, 1
  store i8 %i.bc, ptr %i.ba, align 2
  %i.bd = trunc nuw nsw i32 %2 to i16
  %rev.i.i = call noundef i16 @llvm.bswap.i16(i16 %i.x)
  store i16 %rev.i.i, ptr %i.az, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 226
  store <4 x i16> <i16 1, i16 256, i16 0, i16 0>, ptr %i.be, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 234
  store i16 0, ptr %i.bf, align 2
  %i.bg = call fastcc i64 @dnsname_to_labels(ptr noundef nonnull %i.az, i64 noundef %i.j, i64 noundef 12, ptr noundef nonnull %.065, i64 noundef range(i64 0, 256) %i.i, ptr noundef null) ; 5 uses
  %i.bh = icmp slt i64 %i.bg, 0
  br i1 %i.bh, label %evdns_request_data_build.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = add nuw nsw i64 %i.bg, 2                ; 2 uses
  %i.bj = icmp samesign ugt i64 %i.bi, %i.j
  br i1 %i.bj, label %evdns_request_data_build.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %rev.i62.i = shl nuw i16 %i.bd, 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bg
  store i16 %rev.i62.i, ptr %i.bk, align 1
  %i.bl = add nuw nsw i64 %i.bg, 4                ; 2 uses
  %i.bm = icmp samesign ugt i64 %i.bl, %i.j
  br i1 %i.bm, label %evdns_request_data_build.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bi
  store i16 256, ptr %i.bn, align 1
  br label %evdns_request_data_build.exit

evdns_request_data_build.exit:                    ; preds = %bb.l, %bb.o
  %.0.i.in = phi i64 [ %i.bl, %bb.o ], [ %i.bg, %bb.l ]
  %.0.i = trunc i64 %.0.i.in to i32               ; 2 uses
  %i.bo = icmp slt i32 %.0.i, 0
  br i1 %i.bo, label %evdns_request_data_build.exit.thread, label %bb.p

bb.p:                                             ; preds = %evdns_request_data_build.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 %.0.i, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  store i16 %i.x, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  store i32 0, ptr %i.br, align 4
  %i.bs = trunc nuw i32 %2 to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 %i.bs, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %5, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %4, ptr %i.bv, align 8
  br i1 %i.h, label %bb.q, label %nameserver_pick.exit

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 4 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %nameserver_pick.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load i32, ptr %i.by, align 8
  %.not24.i = icmp eq i32 %i.bz, 0
  br i1 %.not24.i, label %bb.s, label %.preheader.i

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 280
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  br label %.sink.split.i

.preheader.i:                                     ; preds = %bb.r, %bb.t
  %i.cc = phi ptr [ %i.cg, %bb.t ], [ %i.bx, %bb.r ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 432
  %i.ce = load i8, ptr %i.cd, align 8
  %.not25.i = icmp eq i8 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 280
  %i.cg = load ptr, ptr %i.cf, align 8            ; 6 uses
  br i1 %.not25.i, label %bb.t, label %.sink.split.i

bb.t:                                             ; preds = %.preheader.i
  store ptr %i.cg, ptr %i.bw, align 8
  %i.ch = icmp eq ptr %i.cg, %i.bx
  br i1 %i.ch, label %bb.u, label %.preheader.i

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 280
  %i.cj = load ptr, ptr %i.ci, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.preheader.i, %bb.u, %bb.s
  %.sink.i = phi ptr [ %i.cj, %bb.u ], [ %i.cb, %bb.s ], [ %i.cg, %.preheader.i ]
  %.0.ph.i = phi ptr [ %i.cg, %bb.u ], [ %i.cb, %bb.s ], [ %i.cc, %.preheader.i ]
  store ptr %.sink.i, ptr %i.bw, align 8
  br label %nameserver_pick.exit

nameserver_pick.exit:                             ; preds = %.sink.split.i, %bb.q, %bb.p
  %i.ck = phi ptr [ null, %bb.p ], [ null, %bb.q ], [ %.0.ph.i, %.sink.split.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr %i.ck, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.cn = getelementptr inbounds nuw i8, ptr %i.z, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.cn, align 8
  %.not72 = icmp eq ptr %1, null
  br i1 %.not72, label %bb.w, label %bb.v

bb.v:                                             ; preds = %nameserver_pick.exit
  store ptr %i.z, ptr %1, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.co, align 8
  br label %bb.w

evdns_request_data_build.exit.thread:             ; preds = %bb.m, %bb.n, %evdns_request_data_build.exit
  call void @event_mm_free_(ptr noundef nonnull %i.z) #19
  br label %bb.w

bb.w:                                             ; preds = %nameserver_pick.exit, %bb.v, %bb.f, %evdns_request_data_build.exit.thread, %bb.h
  %.064 = phi ptr [ null, %bb.h ], [ null, %evdns_request_data_build.exit.thread ], [ null, %bb.f ], [ %i.z, %bb.v ], [ %i.z, %nameserver_pick.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret ptr %.064
}

; Function Attrs: nounwind uwtable
define internal fastcc void @search_request_new(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 1, 29) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = and i32 %4, 1
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %.not61 = icmp eq i32 %i.f, 0
  br i1 %.not61, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %3, i32 noundef 46) #21 ; 2 uses
  %.not5.i = icmp eq ptr %i.g, null
  br i1 %.not5.i, label %string_num_dots.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.h = phi ptr [ %i.k, %.lr.ph.i ], [ %i.g, %bb.d ]
  %.06.i = phi i32 [ %i.j, %.lr.ph.i ], [ 0, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = add nuw nsw i32 %.06.i, 1                ; 2 uses
  %i.k = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.i, i32 noundef 46) #21 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %string_num_dots.exit, label %.lr.ph.i, !llvm.loop !6

string_num_dots.exit:                             ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.j, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %.not63 = icmp slt i32 %.0.lcssa.i, %i.m
  br i1 %.not63, label %bb.f, label %bb.e

bb.e:                                             ; preds = %string_num_dots.exit
  %i.n = tail call fastcc ptr @request_new(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %5, ptr noundef %6) ; 2 uses
  %.not66 = icmp eq ptr %i.n, null
  br i1 %.not66, label %.critedge, label %bb.k

bb.f:                                             ; preds = %string_num_dots.exit
  %i.o = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %3) #21 ; 6 uses
  %.not.i68 = icmp eq i64 %i.o, 0
  br i1 %.not.i68, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %3, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp ne i8 %i.r, 46                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.038.i = load ptr, ptr %i.t, align 8           ; 3 uses
  %.not3439.i = icmp eq ptr %.038.i, null
  br i1 %.not3439.i, label %.critedge, label %.lr.ph.i69.preheader

.lr.ph.i69.preheader:                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.038.i, i64 16
  %i.v = load i32, ptr %.038.i, align 8
  %i.w = zext i1 %i.s to i64                      ; 2 uses
  %i.x = add i64 %i.o, %i.w
  %i.y = sext i32 %i.v to i64                     ; 2 uses
  %i.z = add i64 %i.x, %i.y                       ; 2 uses
end_hunk_0
