Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/vtls_scache?download=true
inline.NumInlined: 47
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cf_ssl_find_peer_by_key:bb.a

bb.al:                                            ; preds = %bb.aj
  %.old7 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ssls, i64 8), align 8, !tbaa !132
  %.old8 = icmp sgt i32 %.old7, 0
  br i1 %.old8, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.ak, %bb.al
  call void (ptr, ptr, ...) @Curl_trc_ssls(ptr noundef nonnull %0, ptr noundef nonnull @.str.49, ptr noundef %2) #8
  br label %bb.an

bb.an:                                            ; preds = %.thread, %bb.l, %bb.am, %bb.al, %bb.ak, %bb.ai, %.critedge3, %bb.a
  %.085 = phi i32 [ 43, %bb.a ], [ 0, %bb.l ], [ %.1.ph, %.thread ], [ 0, %bb.am ], [ 0, %bb.ak ], [ 0, %bb.al ], [ 0, %bb.ai ], [ 0, %.critedge3 ]
  ret i32 %.085
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cf_scache_peer_remove_expired(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call ptr @Curl_llist_head(ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %cf_scache_session_remove.exit
  %.08 = phi ptr [ %i.d, %cf_scache_session_remove.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = tail call ptr @Curl_node_elem(ptr noundef nonnull %.08) #8 ; 6 uses
  %i.d = tail call ptr @Curl_node_next(ptr noundef nonnull %.08) #8 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.f = icmp sgt i64 %.val, 0
  %i.g = icmp slt i64 %.val, %1
  %spec.select.i = and i1 %i.f, %i.g
  br i1 %spec.select.i, label %bb.b, label %cf_scache_session_remove.exit

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.i = tail call ptr @Curl_node_llist(ptr noundef nonnull %i.h) #8
  %.not4.i.i = icmp eq ptr %i.i, null
  br i1 %.not4.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @Curl_node_remove(ptr noundef nonnull %i.h) #8
  br label %cf_scache_session_remove.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @Curl_cfree, align 8, !tbaa !21
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !32
  tail call void %i.j(ptr noundef %i.k) #8, !inline_history !175
  %i.l = load ptr, ptr @Curl_cfree, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  tail call void %i.l(ptr noundef %i.n) #8, !inline_history !175
  %i.o = load ptr, ptr @Curl_cfree, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  tail call void %i.o(ptr noundef %i.q) #8, !inline_history !175
  %i.r = load ptr, ptr @Curl_cfree, align 8, !tbaa !21
  tail call void %i.r(ptr noundef nonnull %i.c) #8, !inline_history !175
  br label %cf_scache_session_remove.exit

cf_scache_session_remove.exit:                    ; preds = %bb.d, %bb.c, %.lr.ph
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !176

._crit_edge:                                      ; preds = %cf_scache_session_remove.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

declare ptr @Curl_llist_head(ptr noundef) local_unnamed_addr #2

declare ptr @Curl_node_take_elem(ptr noundef) local_unnamed_addr #2

declare void @Curl_trc_ssls(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @Curl_llist_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @Curl_ssl_scache_add_obj(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116  ; 2 uses
  %.not18.i = icmp eq ptr %i.e, null
  br i1 %.not18.i, label %bb.c, label %.thread24.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117  ; 2 uses
  %.not19.i = icmp eq ptr %i.g, null
  br i1 %.not19.i, label %cf_ssl_scache_get.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !127  ; 2 uses
  %.not21.i = icmp eq ptr %i.i, null
  br i1 %.not21.i, label %cf_ssl_scache_get.exit.thread, label %.thread24.i

.thread24.i:                                      ; preds = %bb.d, %bb.b
  %.027.i = phi ptr [ %i.i, %bb.d ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = load i32, ptr %.027.i, align 8, !tbaa !40
  %i.k = icmp eq i32 %i.j, 922961
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread24.i
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.43, ptr noundef nonnull %.027.i) #8
  br label %cf_ssl_scache_get.exit.thread

cf_ssl_scache_get.exit.thread:                    ; preds = %bb.e, %bb.d, %bb.c
  %i.l = tail call ptr @Curl_ssl_cf_get_primary_config(ptr noundef %0) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  br label %bb.n

bb.f:                                             ; preds = %.thread24.i
  %i.m = tail call ptr @Curl_ssl_cf_get_primary_config(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.n = call fastcc i32 @cf_ssl_add_peer(ptr noundef nonnull %1, ptr noundef %.027.i, ptr noundef %2, ptr noundef %i.m, ptr noundef %i.a) ; 6 uses
  %i.o = icmp eq i32 %i.n, 0
  %i.p = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.q = icmp ne ptr %i.p, null
  %or.cond = select i1 %i.o, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.s = load i64, ptr %i.r, align 1
  %i.t = and i64 %i.s, 536870912
  %.not34 = icmp eq i64 %i.t, 0
  br i1 %.not34, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !130  ; 2 uses
  %.not35 = icmp eq ptr %i.v, null
  br i1 %.not35, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !132
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ssls, i64 8), align 8
  %i.aa = icmp sgt i32 %i.z, 0
  %or.cond3 = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond3, label %bb.k, label %bb.n

bb.j:                                             ; preds = %bb.h
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ssls, i64 8), align 8, !tbaa !132
  %.old2 = icmp sgt i32 %.old, 0
  br i1 %.old2, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.i, %bb.j
  tail call void (ptr, ptr, ...) @Curl_trc_ssls(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, i32 noundef %i.n) #8
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 2 uses
  %.not.i36 = icmp eq ptr %i.ac, null
  br i1 %.not.i36, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !49
  tail call void %i.ac(ptr noundef %i.ae) #8, !inline_history !177
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store ptr %3, ptr %i.af, align 8, !tbaa !49
  store ptr %4, ptr %i.ab, align 8, !tbaa !50
  br label %bb.p

bb.n:                                             ; preds = %cf_ssl_scache_get.exit.thread, %bb.g, %bb.i, %bb.j, %bb.k
  %.0 = phi i32 [ 43, %cf_ssl_scache_get.exit.thread ], [ %i.n, %bb.k ], [ %i.n, %bb.i ], [ %i.n, %bb.j ], [ %i.n, %bb.g ] ; 2 uses
  %i.ag = icmp ne ptr %3, null
  %i.ah = icmp ne ptr %4, null
  %or.cond6 = and i1 %i.ag, %i.ah
  br i1 %or.cond6, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void %4(ptr noundef nonnull %3) #8
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o, %bb.n
  %.042 = phi i32 [ 0, %.thread ], [ %.0, %bb.o ], [ %.0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cf_ssl_add_peer(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !133
  store ptr null, ptr %4, align 8, !tbaa !133
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc i32 @cf_ssl_find_peer_by_key(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %i.a) ; 2 uses
  %.not46 = icmp eq i32 %i.c, 0
  br i1 %.not46, label %bb.c, label %.thread69

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !42
  %.not47 = icmp eq i64 %i.e, 0
  br i1 %.not47, label %.thread69, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !133  ; 2 uses
  %.not48 = icmp eq ptr %.pr, null
  br i1 %.not48, label %.lr.ph.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.pr, ptr %4, align 8, !tbaa !133
  br label %.thread69

.thread:                                          ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !42
  %i.f = icmp eq i64 %.pre, 0
  br i1 %i.f, label %.thread69, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.thread
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %.lr.ph.i
  %.pre4748.i = phi ptr [ %.pre.i, %.lr.ph.i ], [ %.pre47.i, %bb.n ] ; 2 uses
  %.041.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %bb.n ] ; 5 uses
  %.02340.i = phi ptr [ null, %.lr.ph.i ], [ %.1.i, %bb.n ] ; 3 uses
  %i.i = getelementptr inbounds nuw [176 x i8], ptr %.pre4748.i, i64 %.041.i ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 1
  %.not24.i = icmp eq i8 %i.m, 0
  br i1 %.not24.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49
  %.not25.i = icmp eq ptr %i.o, null
  br i1 %.not25.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.q = tail call i64 @Curl_llist_count(ptr noundef nonnull %i.p) #8
  %.not26.i = icmp eq i64 %i.q, 0
  %.pre47.pre.i = load ptr, ptr %i.h, align 8, !tbaa !43 ; 2 uses
  br i1 %.not26.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw [176 x i8], ptr %.pre47.pre.i, i64 %.041.i
  br label %.loopexit.i

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pre47.i = phi ptr [ %.pre47.pre.i, %bb.i ], [ %.pre4748.i, %bb.h ] ; 3 uses
  %.not28.i = icmp eq ptr %.02340.i, null
  br i1 %.not28.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw [176 x i8], ptr %.pre47.i, i64 %.041.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.u = load i64, ptr %i.t, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %.02340.i, i64 160
  %i.w = load i64, ptr %i.v, align 8, !tbaa !56
  %i.x = icmp slt i64 %i.u, %i.w
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = getelementptr inbounds nuw [176 x i8], ptr %.pre47.i, i64 %.041.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i = phi ptr [ %i.y, %bb.m ], [ %.02340.i, %bb.l ] ; 2 uses
  %i.z = add nuw i64 %.041.i, 1                   ; 2 uses
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !42
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %.loopexit.i, !llvm.loop !178

.loopexit.i:                                      ; preds = %bb.n, %bb.j
  %.2.i = phi ptr [ %i.r, %bb.j ], [ %.1.i, %bb.n ] ; 2 uses
  %.not27.i = icmp eq ptr %.2.i, null
  br i1 %.not27.i, label %.thread69, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %.loopexit.i
  %i.ac = phi ptr [ %.2.i, %.loopexit.i ], [ %i.i, %bb.g ] ; 18 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  tail call void @Curl_llist_destroy(ptr noundef nonnull %i.ad, ptr noundef null) #8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.thread.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50 ; 2 uses
  %.not20.i.i = icmp eq ptr %i.ah, null
  br i1 %.not20.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void %i.ah(ptr noundef nonnull %i.af) #8, !inline_history !179
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.ae, align 8, !tbaa !49
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 80 ; 3 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !50
  %i.aj = load ptr, ptr @Curl_cfree, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 6 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51
  tail call void %i.aj(ptr noundef %i.al) #8, !inline_history !179
  store ptr null, ptr %i.ak, align 8, !tbaa !51
  %i.am = load ptr, ptr @Curl_cfree, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 6 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !52
  tail call void %i.am(ptr noundef %i.ao) #8, !inline_history !179
  store ptr null, ptr %i.an, align 8, !tbaa !52
  %i.ap = load ptr, ptr @Curl_cfree, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 6 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !53
  tail call void %i.ap(ptr noundef %i.ar) #8, !inline_history !179
  store ptr null, ptr %i.aq, align 8, !tbaa !53
  %i.as = load ptr, ptr @Curl_cfree, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 6 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !54
  tail call void %i.as(ptr noundef %i.au) #8, !inline_history !179
  store ptr null, ptr %i.at, align 8, !tbaa !54
  %i.av = load ptr, ptr @Curl_cfree, align 8, !tbaa !21
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !55
  tail call void %i.av(ptr noundef %i.aw) #8, !inline_history !179
  store ptr null, ptr %i.ac, align 8, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 2 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 168 ; 8 uses
  %i.az = load i8, ptr %i.ay, align 8
  %i.ba = and i8 %i.az, -2
  store i8 %i.ba, ptr %i.ay, align 8
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %.not75 = icmp eq ptr %3, null
  br i1 %.not75, label %.thread65, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !134 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !135 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !20 ; 3 uses
  %i.bj = icmp eq ptr %i.bc, null
  br i1 %i.bj, label %bb.t, label %.thread65

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !17 ; 2 uses
  %.not50 = icmp eq ptr %i.bl, null
  br i1 %.not50, label %.thread65, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !137
  %i.bn = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull @.str.50, ptr noundef %i.bm) #8 ; 0 uses
  br label %.thread65

.thread65:                                        ; preds = %bb.r, %bb.u, %bb.t, %bb.s
  %i.bo = phi ptr [ %i.bi, %bb.u ], [ %i.bi, %bb.t ], [ %i.bi, %bb.s ], [ null, %bb.r ] ; 2 uses
  %i.bp = phi ptr [ %i.be, %bb.u ], [ %i.be, %bb.t ], [ %i.be, %bb.s ], [ null, %bb.r ] ; 2 uses
  %i.bq = phi ptr [ %i.bg, %bb.u ], [ %i.bg, %bb.t ], [ %i.bg, %bb.s ], [ null, %bb.r ] ; 2 uses
  %.0 = phi ptr [ %i.b, %bb.u ], [ null, %bb.t ], [ %i.bc, %bb.s ], [ null, %bb.r ] ; 2 uses
  br i1 %.not, label %bb.al, label %bb.v

bb.v:                                             ; preds = %.thread65
  %i.br = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !21
  %i.bs = call ptr %i.br(ptr noundef nonnull %2) #8, !inline_history !180 ; 2 uses
  store ptr %i.bs, ptr %i.ac, align 8, !tbaa !55
  %.not39.i = icmp eq ptr %i.bs, null
  br i1 %.not39.i, label %bb.al, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = load i8, ptr %i.ay, align 8
  %i.bu = and i8 %i.bt, -2
end_hunk_0
