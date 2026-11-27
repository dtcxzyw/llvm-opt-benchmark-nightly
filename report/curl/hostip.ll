Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/hostip?download=true
inline.NumInlined: 19
inline.NumDeleted: 9
begin_hunk_0_@Curl_resolv_blocking:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82   ; 4 uses
  %.not15.i = icmp eq ptr %i.f, null
  br i1 %.not15.i, label %Curl_resolv_destroy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !87
  %i.i = icmp eq i32 %i.h, %i.c
  br i1 %i.i, label %.lr.ph.i._crit_edge, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !87
  %i.l = icmp eq i32 %i.k, %i.c
  br i1 %i.l, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !1

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %.01016.i.lcssa = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i ]
  %i.m = load ptr, ptr %.lcssa, align 8, !tbaa !93
  store ptr %i.m, ptr %.01016.i.lcssa, align 8, !tbaa !82
  tail call void @Curl_async_destroy(ptr noundef %0, ptr noundef nonnull %.lcssa) #10
  br label %Curl_resolv_destroy.exit

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.n = phi ptr [ %i.o, %.lr.ph.i ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82   ; 4 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %Curl_resolv_destroy.exit, label %.lr.ph.i, !llvm.loop !1

Curl_resolv_destroy.exit:                         ; preds = %.lr.ph, %.lr.ph.i._crit_edge, %bb.b, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.d, %.lr.ph.i._crit_edge ], [ %i.d, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hostip_resolv(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5, i64 noundef range(i64 0, -9223372036854775808) %6, i1 noundef zeroext %7, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %8, ptr noundef initializes((0, 8)) %9) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = select i1 %5, i32 5, i32 6               ; 4 uses
  store i32 0, ptr %8, align 4, !tbaa !78
  store ptr null, ptr %9, align 8, !tbaa !92
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12 ; 2 uses
  %i.f = icmp ugt i64 %i.e, 6
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %2, i64 %i.e       ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -6
  %i.i = tail call i32 @curl_strequal(ptr noundef %i.h, ptr noundef nonnull @.str.14) #10
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.g, i64 -7
  %i.k = tail call i32 @curl_strequal(ptr noundef %i.j, ptr noundef nonnull @.str.15) #10
  %.not78 = icmp eq i32 %i.k, 0
  br i1 %.not78, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.16) #10
  br label %bb.aq

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.l = tail call i32 @Curl_dnscache_get(ptr noundef %0, i8 noundef zeroext %1, ptr noundef nonnull %2, i16 noundef zeroext %3, ptr noundef nonnull %9) #10
  %i.m = load ptr, ptr %9, align 8, !tbaa !92
  %.not79 = icmp eq ptr %i.m, null
  br i1 %.not79, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not84 = icmp eq ptr %0, null
  br i1 %.not84, label %.thread93, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.o = load i64, ptr %i.n, align 1
  %i.p = and i64 %i.o, 536870912
  %.not85 = icmp eq i64 %i.p, 0
  br i1 %.not85, label %.thread93, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !79   ; 2 uses
  %.not86 = icmp eq ptr %i.r, null
  br i1 %.not86, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !81
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.j, label %.thread93

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %2) #10
  br label %.thread93

bb.k:                                             ; preds = %bb.e
  %.not80 = icmp eq i32 %i.l, 0
  br i1 %.not80, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not81 = icmp eq ptr %0, null
  br i1 %.not81, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.w = load i64, ptr %i.v, align 1
  %i.x = and i64 %i.w, 536870912
  %.not82 = icmp eq i64 %i.x, 0
  br i1 %.not82, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !79   ; 2 uses
  %.not83 = icmp eq ptr %i.z, null
  br i1 %.not83, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !81
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %i.ad = select i1 %5, ptr @.str.20, ptr @.str.21
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.ad, ptr noundef nonnull %2) #10
  br label %bb.aq

bb.r:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8, !tbaa !104
  store i32 0, ptr %8, align 4, !tbaa !78
  %i.ae = tail call zeroext i1 @Curl_is_ipaddr(ptr noundef nonnull %2) #10
  br i1 %i.ae, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.af = tail call i32 @Curl_resolv_announce_start(ptr noundef %0, ptr noundef null) ; 2 uses
  %.not102.i = icmp eq i32 %i.af, 0
  br i1 %.not102.i, label %bb.t, label %.thread.i

bb.t:                                             ; preds = %bb.s
  %i.ag = call i32 @Curl_str2addr(ptr noundef nonnull %2, i16 noundef zeroext %3, ptr noundef nonnull %i.c) #10
  br label %bb.al

bb.u:                                             ; preds = %bb.r
  %i.ah = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12 ; 3 uses
  %i.ai = tail call i32 @curl_strequal(ptr noundef nonnull %2, ptr noundef nonnull @.str.22) #10
  %.not92.i = icmp eq i32 %i.ai, 0
  br i1 %.not92.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.aj = tail call i32 @curl_strequal(ptr noundef nonnull %2, ptr noundef nonnull @.str.23) #10
  %.not93.i = icmp eq i32 %i.aj, 0
  br i1 %.not93.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ak = icmp ult i64 %i.ah, 10
  br i1 %i.ak, label %tailmatch.exit114.thread.i, label %tailmatch.exit.i

tailmatch.exit.i:                                 ; preds = %bb.w
  %i.al = getelementptr i8, ptr %2, i64 %i.ah     ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 -10
  %i.an = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.24, ptr noundef %i.am, i64 noundef 10) #10
  %.not146.i = icmp eq i32 %i.an, 0
  br i1 %.not146.i, label %tailmatch.exit.thread.i, label %bb.x

tailmatch.exit.thread.i:                          ; preds = %tailmatch.exit.i
  %i.ao = icmp eq i64 %i.ah, 10
  br i1 %i.ao, label %tailmatch.exit114.thread.i, label %tailmatch.exit114.i

tailmatch.exit114.i:                              ; preds = %tailmatch.exit.thread.i
  %i.ap = getelementptr i8, ptr %i.al, i64 -11
  %i.aq = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.25, ptr noundef %i.ap, i64 noundef 11) #10
  %.not147.i = icmp eq i32 %i.aq, 0
  br i1 %.not147.i, label %tailmatch.exit114.thread.i, label %bb.x

bb.x:                                             ; preds = %tailmatch.exit114.i, %tailmatch.exit.i, %bb.v, %bb.u
  %i.ar = tail call i32 @Curl_resolv_announce_start(ptr noundef %0, ptr noundef null) ; 2 uses
  %.not100.i = icmp eq i32 %i.ar, 0
  br i1 %.not100.i, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.as = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %rev.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %3) ; 2 uses
  %i.at = call i32 @inet_pton(i32 noundef 2, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.b) #10
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %select.unfold.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.6.4.copyload.i.i = load i32, ptr %i.b, align 4
  %i.av = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !94
  %i.aw = add i64 %i.as, 65
  %i.ax = call ptr %i.av(i64 noundef 1, i64 noundef %i.aw) #10, !inline_history !102 ; 12 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store <4 x i32> <i32 0, i32 2, i32 1, i32 6>, ptr %i.ax, align 8, !tbaa !78
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 16, ptr %i.ay, align 8, !tbaa !105
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !77
  store i16 2, ptr %i.az, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 50
  store i16 %rev.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 2
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  store i32 %.sroa.6.4.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !106
  %i.bd = add i64 %i.as, 1
  call void @curlx_strcopy(ptr noundef nonnull %i.bb, i64 noundef %i.bd, ptr noundef nonnull %2, i64 noundef %i.as) #10
  %i.be = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bf = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !94
  %i.bg = add i64 %i.be, 77
  %i.bh = call ptr %i.bf(i64 noundef 1, i64 noundef %i.bg) #10, !inline_history !103 ; 13 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %get_localhost6.exit.thread.i.i, label %bb.ab

get_localhost6.exit.thread.i.i:                   ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.thread130.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.bi = call i32 @inet_pton(i32 noundef 10, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.a) #10 ; 0 uses
  %.sroa.6.i.sroa.0.4.copyload.i.i = load i32, ptr %i.a, align 16
  %.sroa.6.i.sroa.0.4.insert.ext.i.i = zext i32 %.sroa.6.i.sroa.0.4.copyload.i.i to i64
  %.sroa.6.i.sroa.0.4.insert.shift.i.i = shl nuw i64 %.sroa.6.i.sroa.0.4.insert.ext.i.i, 32
  %.sroa.6.i.sroa.5.4..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <4 x i32> <i32 0, i32 10, i32 1, i32 6>, ptr %i.bh, align 8, !tbaa !78
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i32 28, ptr %i.bj, align 8, !tbaa !105
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 2 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !107
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !77
  store i16 10, ptr %i.bl, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 50
  store i16 %rev.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 2
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 52
  store i64 %.sroa.6.i.sroa.0.4.insert.shift.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4
  %.sroa.6.i.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.i.sroa.5.0..sroa.6.0..sroa_idx.i.sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.i.sroa.5.4..sroa_idx.i.i, i64 12, i1 false)
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  store i32 0, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 76 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !106
  %i.bp = add i64 %i.be, 1
  call void @curlx_strcopy(ptr noundef nonnull %i.bn, i64 noundef %i.bp, ptr noundef nonnull %2, i64 noundef %i.be) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  store ptr %i.ax, ptr %i.bk, align 8, !tbaa !107
  br label %.thread130.thread.i

.thread130.thread.i:                              ; preds = %bb.ab, %get_localhost6.exit.thread.i.i
  %.0.i115.i = phi ptr [ %i.ax, %get_localhost6.exit.thread.i.i ], [ %i.bh, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  store ptr %.0.i115.i, ptr %i.c, align 8, !tbaa !104
  br label %bb.am

tailmatch.exit114.thread.i:                       ; preds = %tailmatch.exit114.i, %tailmatch.exit.thread.i, %bb.w
  %i.bq = tail call zeroext i1 @Curl_is_ipaddr(ptr noundef nonnull %2) #10
  %.not.i = xor i1 %i.bq, true
  %or.cond.i = and i1 %7, %.not.i
  br i1 %or.cond.i, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %tailmatch.exit114.thread.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.bs = load i64, ptr %i.br, align 1
  %i.bt = and i64 %i.bs, 562949953421312
  %.not94.i = icmp eq i64 %i.bt, 0
  br i1 %.not94.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = tail call i32 @Curl_resolv_announce_start(ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  %.not98.i = icmp eq i32 %i.bu, 0
  br i1 %.not98.i, label %bb.ae, label %.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.bv = tail call fastcc ptr @hostip_async_new(ptr noundef nonnull %0, i8 noundef zeroext %1, ptr noundef nonnull %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5, i64 noundef range(i64 0, -9223372036854775808) %6) ; 3 uses
  %.not99.i = icmp eq ptr %i.bv, null
  br i1 %.not99.i, label %.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bw = tail call i32 @Curl_doh(ptr noundef nonnull %0, ptr noundef nonnull %i.bv) #10
  br label %bb.al

bb.ag:                                            ; preds = %bb.ac, %tailmatch.exit114.thread.i
  %i.bx = and i8 %1, 3
  %i.by = icmp eq i8 %i.bx, 2
  br i1 %i.by, label %bb.ah, label %can_resolve_dns_queries.exit.i

bb.ah:                                            ; preds = %bb.ag
  %.not.i.i117.i = icmp eq ptr %0, null
  br i1 %.not.i.i117.i, label %.thread.i, label %ipv6works.exit.i.i

ipv6works.exit.i.i:                               ; preds = %bb.ah
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !73
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 744
  %i.cc = load i16, ptr %i.cb, align 8
  %i.cd = trunc i16 %i.cc to i1
  br i1 %i.cd, label %can_resolve_dns_queries.exit.i, label %.thread.i

can_resolve_dns_queries.exit.i:                   ; preds = %ipv6works.exit.i.i, %bb.ag
  %i.ce = tail call fastcc ptr @hostip_async_new(ptr noundef %0, i8 noundef zeroext %1, ptr noundef nonnull %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5, i64 noundef range(i64 0, -9223372036854775808) %6) ; 7 uses
  %.not95.i = icmp eq ptr %i.ce, null
  br i1 %.not95.i, label %.thread.i, label %bb.ai

bb.ai:                                            ; preds = %can_resolve_dns_queries.exit.i
  %i.cf = tail call i32 @Curl_async_getaddrinfo(ptr noundef %0, ptr noundef nonnull %i.ce) #10 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 81
  br i1 %i.cg, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ch = tail call fastcc i32 @hostip_resolv_take_result(ptr noundef %0, ptr noundef %i.ce, ptr noundef nonnull %9) ; 2 uses
  %.not96.i = icmp eq i32 %i.ch, 0
  br i1 %.not96.i, label %bb.ak, label %.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.ci = load ptr, ptr %9, align 8, !tbaa !92
  %.not97.i = icmp eq ptr %i.ci, null
  br i1 %.not97.i, label %.thread175.i, label %.thread

select.unfold.i:                                  ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.c, align 8, !tbaa !104
  br label %.thread.i

bb.al:                                            ; preds = %bb.ai, %bb.af, %bb.t
  %.279.i = phi ptr [ %i.ce, %bb.ai ], [ null, %bb.t ], [ %i.bv, %bb.af ] ; 3 uses
  %.1.i = phi i32 [ %i.cf, %bb.ai ], [ %i.ag, %bb.t ], [ %i.bw, %bb.af ] ; 2 uses
  %.not103.i = icmp eq i32 %.1.i, 0
  br i1 %.not103.i, label %.thread130.i, label %.thread.i

.thread130.i:                                     ; preds = %bb.al
  %.pr.pre.i = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.cj = icmp eq ptr %.pr.pre.i, null
  br i1 %i.cj, label %.thread130.i..thread130.thread161.i_crit_edge, label %bb.am

.thread130.i..thread130.thread161.i_crit_edge:    ; preds = %.thread130.i
  %.pre = load ptr, ptr %9, align 8, !tbaa !92
  %i.ck = icmp eq ptr %.pre, null
  %i.cl = select i1 %i.ck, i32 81, i32 0
  br label %.thread130.thread161.i

bb.am:                                            ; preds = %.thread130.i, %.thread130.thread.i
  %.279134139.i = phi ptr [ null, %.thread130.thread.i ], [ %.279.i, %.thread130.i ]
  %i.cm = call ptr @Curl_dnscache_mk_entry(ptr noundef %0, i8 noundef zeroext %1, ptr noundef nonnull %i.c, ptr noundef nonnull %2, i16 noundef zeroext %3) #10 ; 2 uses
  store ptr %i.cm, ptr %9, align 8, !tbaa !92
  %.not106.i = icmp eq ptr %i.cm, null
  %spec.select111.i = select i1 %.not106.i, i32 27, i32 0
  br label %.thread130.thread161.i

.thread.i:                                        ; preds = %bb.ah, %ipv6works.exit.i.i, %bb.al, %select.unfold.i, %bb.aj, %can_resolve_dns_queries.exit.i, %bb.ae, %bb.ad, %bb.x, %bb.s
  %.1127.ph.i = phi i32 [ %i.ar, %bb.x ], [ %i.ch, %bb.aj ], [ %.1.i, %bb.al ], [ %i.bu, %bb.ad ], [ 27, %can_resolve_dns_queries.exit.i ], [ 27, %bb.ae ], [ 27, %select.unfold.i ], [ %i.af, %bb.s ], [ %i.d, %ipv6works.exit.i.i ], [ %i.d, %bb.ah ] ; 3 uses
  %.279126.ph.i = phi ptr [ null, %bb.x ], [ %i.ce, %bb.aj ], [ %.279.i, %bb.al ], [ null, %bb.ad ], [ null, %can_resolve_dns_queries.exit.i ], [ null, %bb.ae ], [ null, %select.unfold.i ], [ null, %bb.s ], [ null, %ipv6works.exit.i.i ], [ null, %bb.ah ] ; 3 uses
  %.pr140.i = load ptr, ptr %9, align 8, !tbaa !92
  %.not107.i = icmp eq ptr %.pr140.i, null
  br i1 %.not107.i, label %.thread.thread.i, label %bb.an

bb.an:                                            ; preds = %.thread.i
  call void @Curl_dns_entry_unlink(ptr noundef %0, ptr noundef nonnull %9) #10
  br label %.thread130.thread161.i

.thread.thread.i:                                 ; preds = %.thread.i
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !104 ; 2 uses
  %.not108.i = icmp eq ptr %.pre.i, null
  br i1 %.not108.i, label %.thread130.thread161.i, label %bb.ao

bb.ao:                                            ; preds = %.thread.thread.i
  call void @Curl_freeaddrinfo(ptr noundef nonnull %.pre.i) #10
  br label %.thread130.thread161.i

.thread130.thread161.i:                           ; preds = %.thread130.i..thread130.thread161.i_crit_edge, %bb.ao, %.thread.thread.i, %bb.an, %bb.am
  %.279125.i = phi ptr [ %.279126.ph.i, %bb.an ], [ %.279126.ph.i, %bb.ao ], [ %.279126.ph.i, %.thread.thread.i ], [ %.279134139.i, %bb.am ], [ %.279.i, %.thread130.i..thread130.thread161.i_crit_edge ] ; 3 uses
  %.2.i = phi i32 [ %.1127.ph.i, %bb.an ], [ %.1127.ph.i, %bb.ao ], [ %.1127.ph.i, %.thread.thread.i ], [ %spec.select111.i, %bb.am ], [ %i.cl, %.thread130.i..thread130.thread161.i_crit_edge ] ; 3 uses
  %.not109.i = icmp eq ptr %.279125.i, null
  br i1 %.not109.i, label %hostip_resolv_start.exit, label %bb.ap

bb.ap:                                            ; preds = %.thread130.thread161.i
  %i.cn = icmp eq i32 %.2.i, 81
  br i1 %i.cn, label %.thread175.i, label %.thread

.thread175.i:                                     ; preds = %bb.ap, %bb.ak
  %.279125172179.i = phi ptr [ %.279125.i, %bb.ap ], [ %i.ce, %bb.ak ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.279125172179.i, i64 72
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !87
  store i32 %i.cp, ptr %8, align 4, !tbaa !78
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !95
  store ptr %i.cr, ptr %.279125172179.i, align 8, !tbaa !93
  store ptr %.279125172179.i, ptr %i.cq, align 8, !tbaa !95
  br label %hostip_resolv_start.exit

.thread:                                          ; preds = %bb.ak, %bb.ap
  %.279125.i117122 = phi ptr [ %.279125.i, %bb.ap ], [ %i.ce, %bb.ak ]
  %.2.i118121 = phi i32 [ %.2.i, %bb.ap ], [ 0, %bb.ak ]
  call void @Curl_async_destroy(ptr noundef %0, ptr noundef nonnull %.279125.i117122) #10
  br label %hostip_resolv_start.exit

hostip_resolv_start.exit:                         ; preds = %.thread130.thread161.i, %.thread175.i, %.thread
  %.2174.i = phi i32 [ 81, %.thread175.i ], [ %.2.i118121, %.thread ], [ %.2.i, %.thread130.thread161.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.aq

bb.aq:                                            ; preds = %hostip_resolv_start.exit, %bb.q, %bb.d
  %.069 = phi i32 [ %i.d, %bb.d ], [ %.2174.i, %hostip_resolv_start.exit ], [ %i.d, %bb.q ] ; 7 uses
  %.0 = phi i1 [ false, %bb.d ], [ true, %hostip_resolv_start.exit ], [ false, %bb.q ] ; 2 uses
  switch i32 %.069, label %bb.ar [
    i32 81, label %bb.aw
    i32 0, label %bb.aw
  ]

bb.ar:                                            ; preds = %bb.aq
  call void @Curl_dns_entry_unlink(ptr noundef %0, ptr noundef nonnull %9) #10
  %i.cs = add i32 %.069, -5
  %or.cond3 = icmp ult i32 %i.cs, 2
  br i1 %or.cond3, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  br i1 %.0, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ct = call i32 @Curl_dnscache_add_negative(ptr noundef %0, i8 noundef zeroext %1, ptr noundef nonnull %2, i16 noundef zeroext %3) #10 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.cu = zext i16 %3 to i32
end_hunk_0
