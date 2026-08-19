inline.NumInlined: 44
inline.NumDeleted: 12
begin_hunk_0_@cf_ssl_create:bb.a
  br label %alpn_get_spec.exit

alpn_get_spec.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.a ], [ %i.o, %bb.e ], [ @ALPN_SPEC_H10_H11, %bb.b ], [ @ALPN_SPEC_H2, %bb.d ], [ @ALPN_SPEC_H11, %bb.c ]
  %i.p = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !19
  %i.q = tail call ptr %i.p(i64 noundef 1, i64 noundef 200) #15, !inline_history !212 ; 10 uses
  %.not.i13 = icmp eq ptr %i.q, null
  br i1 %.not.i13, label %cf_ctx_free.exit.thread, label %bb.f

bb.f:                                             ; preds = %alpn_get_spec.exit
  %i.r = load ptr, ptr @Curl_ssl, align 8, !tbaa !37
  store ptr %i.r, ptr %i.q, align 8, !tbaa !170
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr %.0.i, ptr %i.s, align 8, !tbaa !213
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  tail call void @Curl_bufq_init2(ptr noundef nonnull %i.t, i64 noundef 65536, i64 noundef 1, i32 noundef 2) #15
  %i.u = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !19
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !170
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !214
  %i.y = tail call ptr %i.u(i64 noundef 1, i64 noundef %i.x) #15, !inline_history !212 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !177
  %.not12.i = icmp eq ptr %i.y, null
  br i1 %.not12.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr @Curl_cfree, align 8, !tbaa !19
  tail call void %i.aa(ptr noundef nonnull %i.q) #15, !inline_history !212
  br label %cf_ctx_free.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ab = call i32 @Curl_cf_create(ptr noundef nonnull %i.a, ptr noundef nonnull @Curl_cft_ssl, ptr noundef nonnull %i.q) #15 ; 2 uses
  %.not12 = icmp eq i32 %i.ab, 0
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr @Curl_cfree, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !175
  call void %i.ac(ptr noundef %i.ae) #15, !inline_history !176
  store ptr null, ptr %i.ad, align 8, !tbaa !175
  call void @Curl_bufq_free(ptr noundef nonnull %i.t) #15
  %i.af = load ptr, ptr @Curl_cfree, align 8, !tbaa !19
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !177
  call void %i.af(ptr noundef %i.ag) #15, !inline_history !176
  %i.ah = load ptr, ptr @Curl_cfree, align 8, !tbaa !19
  call void %i.ah(ptr noundef nonnull %i.q) #15, !inline_history !176
  br label %cf_ctx_free.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.a, align 8
  br label %cf_ctx_free.exit.thread

cf_ctx_free.exit.thread:                          ; preds = %bb.g, %alpn_get_spec.exit, %bb.i, %bb.j
  %.01224 = phi i32 [ 0, %bb.j ], [ %i.ab, %bb.i ], [ 27, %alpn_get_spec.exit ], [ 27, %bb.g ]
  %i.aj = phi ptr [ %i.ai, %bb.j ], [ null, %bb.i ], [ null, %alpn_get_spec.exit ], [ null, %bb.g ]
  store ptr %i.aj, ptr %0, align 8, !tbaa !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.01224
}

declare void @Curl_conn_cf_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_cf_ssl_insert_after(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !164
  %i.d = getelementptr i8, ptr %i.c, i64 728
  %.val = load i64, ptr %i.d, align 8
  %i.e = call fastcc i32 @cf_ssl_create(ptr noundef %i.a, ptr noundef %1, i64 %.val) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !209
  tail call void @Curl_conn_cf_insert_after(ptr noundef nonnull %0, ptr noundef %i.f) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %i.e
}

declare void @Curl_conn_cf_insert_after(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_cf_ssl_proxy_insert_after(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !164
  %i.d = getelementptr i8, ptr %1, i64 2053
  %.val = load i16, ptr %i.d, align 1
  %i.e = getelementptr i8, ptr %i.c, i64 306
  %.val4 = load i8, ptr %i.e, align 2, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !209
  %i.f = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !19
  %i.g = tail call ptr %i.f(i64 noundef 1, i64 noundef 200) #15, !inline_history !216 ; 10 uses
  %.not.i16.i = icmp eq ptr %i.g, null
  br i1 %.not.i16.i, label %cf_ssl_proxy_create.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %.val4, 3
  %i.i = and i16 %.val, 128
  %.not.i = icmp eq i16 %i.i, 0
  %spec.select25.i = select i1 %.not.i, ptr null, ptr @ALPN_SPEC_H11
  %.0.i.i = select i1 %i.h, ptr @ALPN_SPEC_H2_H11, ptr %spec.select25.i
  %i.j = load ptr, ptr @Curl_ssl, align 8, !tbaa !37
  store ptr %i.j, ptr %i.g, align 8, !tbaa !170
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %.0.i.i, ptr %i.k, align 8, !tbaa !213
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  tail call void @Curl_bufq_init2(ptr noundef nonnull %i.l, i64 noundef 65536, i64 noundef 1, i32 noundef 2) #15
  %i.m = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !19
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !170
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !214
  %i.q = tail call ptr %i.m(i64 noundef 1, i64 noundef %i.p) #15, !inline_history !216 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !177
  %.not12.i.i = icmp eq ptr %i.q, null
  br i1 %.not12.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr @Curl_cfree, align 8, !tbaa !19
  tail call void %i.s(ptr noundef nonnull %i.g) #15, !inline_history !216
  br label %cf_ssl_proxy_create.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.t = call i32 @Curl_cf_create(ptr noundef nonnull %i.a, ptr noundef nonnull @Curl_cft_ssl_proxy, ptr noundef nonnull %i.g) #15 ; 2 uses
  %.not14.i = icmp eq i32 %i.t, 0
  br i1 %.not14.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr @Curl_cfree, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !175
  call void %i.u(ptr noundef %i.w) #15, !inline_history !217
  store ptr null, ptr %i.v, align 8, !tbaa !175
  call void @Curl_bufq_free(ptr noundef nonnull %i.l) #15
  %i.x = load ptr, ptr @Curl_cfree, align 8, !tbaa !19
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !177
  call void %i.x(ptr noundef %i.y) #15, !inline_history !217
  %i.z = load ptr, ptr @Curl_cfree, align 8, !tbaa !19
  call void %i.z(ptr noundef nonnull %i.g) #15, !inline_history !217
  br label %cf_ssl_proxy_create.exit.thread

cf_ssl_proxy_create.exit.thread:                  ; preds = %bb.e, %bb.a, %bb.c
  %.0121224.i.ph = phi i32 [ 27, %bb.c ], [ 27, %bb.a ], [ %i.t, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @Curl_conn_cf_insert_after(ptr noundef nonnull %0, ptr noundef %i.aa) #15
  br label %bb.g

bb.g:                                             ; preds = %cf_ssl_proxy_create.exit.thread, %bb.f
  %.0121224.i7 = phi i32 [ %.0121224.i.ph, %cf_ssl_proxy_create.exit.thread ], [ 0, %bb.f ]
  ret i32 %.0121224.i7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @Curl_ssl_supports(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @Curl_ssl, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !218
  %i.d = and i32 %i.c, %1
  %i.e = icmp ne i32 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_ssl_cfilter_remove(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !209  ; 2 uses
  %.not3543 = icmp eq ptr %i.h, null
  br i1 %.not3543, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.aa
  %i.i = phi ptr [ %i.bv, %bb.aa ], [ %i.h, %bb.b ] ; 10 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !136  ; 2 uses
  %i.k = icmp eq ptr %i.j, @Curl_cft_ssl
  br i1 %i.k, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %.lr.ph
  store ptr %i.i, ptr %i.a, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %.not36 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not36, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2049
  %i.m = load i32, ptr %i.l, align 1
  %i.n = and i32 %i.m, 134217728
  %.not37 = icmp eq i32 %i.n, 0
  br i1 %.not37, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !133  ; 2 uses
  %.not38 = icmp eq ptr %i.p, null
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !134
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.f
  %3 = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.old = load i32, ptr %3, align 4, !tbaa !137
  %.old60 = icmp sgt i32 %.old, 0
  br i1 %.old60, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull @.str.8) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  tail call void @Curl_shutdown_start(ptr noundef %0, i32 noundef %1, i32 noundef 0) #15
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !122  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 36 ; 3 uses
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, 2
  %.not.i = icmp eq i8 %i.x, 0
  br i1 %.not.i, label %.lr.ph.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.b, align 1, !tbaa !178
  br label %vtls_shutdown_blocking.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.y, align 8, !tbaa !168
  store ptr %0, ptr %i.y, align 8, !tbaa !169
  store i8 0, ptr %i.b, align 1, !tbaa !178
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 188
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.i, %.backedge.i
  %i.ac = phi i32 [ 9, %.lr.ph.i ], [ %i.au, %.backedge.i ] ; 2 uses
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !164
  %i.ae = load i32, ptr %i.aa, align 8, !tbaa !196
  %i.af = call i64 @Curl_shutdown_timeleft(ptr noundef %0, ptr noundef %i.ad, i32 noundef %i.ae) #15 ; 2 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.49) #15
  br label %.critedge.thread.i

bb.m:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !170
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !189
  %i.ak = call i32 %i.aj(ptr noundef nonnull %i.i, ptr noundef %0, i1 noundef zeroext %2, ptr noundef nonnull %i.b) #15, !inline_history !219 ; 2 uses
  %.not43.i = icmp eq i32 %i.ak, 0
  br i1 %.not43.i, label %bb.n, label %.critedge.thread.i

bb.n:                                             ; preds = %bb.m
  %i.al = load i8, ptr %i.b, align 1, !tbaa !178, !range !181, !noundef !182
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.critedge.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !126
  %.not44.i = icmp eq i32 %i.an, 0
  br i1 %.not44.i, label %.backedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = call i32 @Curl_conn_cf_poll(ptr noundef nonnull %i.i, ptr noundef %0, i64 noundef %i.af) #15 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aq = tail call ptr @__errno_location() #17
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !15
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.50, i32 noundef %i.ar) #15
  br label %.critedge.thread.i

bb.r:                                             ; preds = %bb.p
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %bb.s, label %._crit_edge56.i

._crit_edge56.i:                                  ; preds = %bb.r
  %.pre.i = load i8, ptr %i.b, align 1, !tbaa !178, !range !181
  %i.at = trunc nuw i8 %.pre.i to i1
  br i1 %i.at, label %.critedge.thread.i, label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge56.i, %bb.o
  %i.au = add nsw i32 %i.ac, -1
  %.not42.i = icmp eq i32 %i.ac, 0
  br i1 %.not42.i, label %.critedge.thread.i, label %bb.k, !llvm.loop !220

bb.s:                                             ; preds = %bb.r
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.49) #15
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %._crit_edge56.i, %bb.n, %bb.m, %.backedge.i, %bb.s, %bb.q, %bb.l
  %.148.i = phi i32 [ 28, %bb.l ], [ 28, %bb.s ], [ 56, %bb.q ], [ 0, %._crit_edge56.i ], [ 0, %.backedge.i ], [ 0, %bb.n ], [ %i.ak, %bb.m ]
  %i.av = phi i8 [ 2, %bb.l ], [ 2, %bb.s ], [ 2, %bb.q ], [ 2, %._crit_edge56.i ], [ 0, %.backedge.i ], [ 2, %bb.n ], [ 2, %bb.m ]
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !122
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store ptr %.sroa.0.0.copyload.i, ptr %i.ax, align 8, !tbaa !168
  %i.ay = load i8, ptr %i.v, align 4
  %i.az = and i8 %i.ay, -3
  %i.ba = or disjoint i8 %i.az, %i.av
  store i8 %i.ba, ptr %i.v, align 4
  br label %vtls_shutdown_blocking.exit

vtls_shutdown_blocking.exit:                      ; preds = %bb.j, %.critedge.thread.i
  %.037.i = phi i32 [ 0, %bb.j ], [ %.148.i, %.critedge.thread.i ] ; 2 uses
  call void @Curl_shutdown_clear(ptr noundef %0, i32 noundef %1) #15
  %i.bb = icmp ne i32 %.037.i, 0
  %i.bc = load i8, ptr %i.b, align 1, !range !181
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond4 = select i1 %i.bb, i1 true, i1 %i.bd
  %spec.store.select = select i1 %or.cond4, i32 %.037.i, i32 80 ; 2 uses
  %i.be = call zeroext i1 @Curl_conn_cf_discard(ptr noundef nonnull %i.a, ptr noundef %0) #15 ; 0 uses
  br i1 %.not36, label %bb.z, label %bb.t

bb.t:                                             ; preds = %vtls_shutdown_blocking.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2049
  %i.bg = load i32, ptr %i.bf, align 1
  %i.bh = and i32 %i.bg, 134217728
  %.not39 = icmp eq i32 %i.bh, 0
  br i1 %.not39, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !133 ; 2 uses
  %.not40 = icmp eq ptr %i.bj, null
  br i1 %.not40, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !134
  %i.bm = icmp sgt i32 %i.bl, 0
  %i.bn = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bo = icmp ne ptr %i.bn, null
  %or.cond7 = select i1 %i.bm, i1 %i.bo, i1 false
  br i1 %or.cond7, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.u
  %.old5 = load ptr, ptr %i.a, align 8, !tbaa !209 ; 2 uses
  %.old6.not = icmp eq ptr %.old5, null
  br i1 %.old6.not, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bp = phi ptr [ %i.bn, %bb.v ], [ %.old5, %bb.w ] ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !136
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !137
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %0, ptr noundef nonnull %i.bp, ptr noundef nonnull @.str.9, i32 noundef %spec.store.select) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %vtls_shutdown_blocking.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.loopexit

bb.aa:                                            ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !132 ; 2 uses
  %.not35 = icmp eq ptr %i.bv, null
  br i1 %.not35, label %.loopexit, label %.lr.ph, !llvm.loop !221

.loopexit:                                        ; preds = %bb.aa, %bb.b, %bb.a, %bb.z
  %.0 = phi i32 [ %spec.store.select, %bb.z ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

declare void @Curl_shutdown_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @Curl_shutdown_clear(ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i1 @Curl_conn_cf_discard(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @Curl_ssl_cf_get_config(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(ret: address, provenance) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163
  %i.d = and i32 %i.c, 10
  %i.e = icmp eq i32 %i.d, 10
  %.v = select i1 %i.e, i64 968, i64 784
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @Curl_ssl_cf_get_primary_config(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163
  %i.d = and i32 %i.c, 10
  %i.e = icmp eq i32 %i.d, 10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !164
  %. = select i1 %i.e, i64 616, i64 504
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.
  ret ptr %i.h
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 3) i32 @Curl_alpn_to_proto_buf(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
end_hunk_0
