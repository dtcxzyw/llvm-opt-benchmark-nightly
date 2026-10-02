Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/extensions_srvr?download=true
inline.NumInlined: 180
inline.NumDeleted: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tls_parse_ctos_supported_groups:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load i32, ptr %i.v, align 8, !tbaa !91
  %i.x = and i32 %i.w, 8
  %.not15 = icmp eq i32 %i.x, 0
  br i1 %.not15, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.s, align 8, !tbaa !92   ; 2 uses
  %i.z = icmp slt i32 %i.y, 772
  %.not16 = icmp eq i32 %i.y, 65536
  %or.cond = or i1 %i.z, %.not16
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2728 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !113
  tail call void @CRYPTO_free(ptr noundef %i.ab, ptr noundef nonnull @.str, i32 noundef 1226) #12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2720 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = call i32 @tls1_save_u16(ptr noundef nonnull %5, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ac, i64 noundef 128) #12
  %.not17 = icmp eq i32 %i.ad, 0
  br i1 %.not17, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1239, ptr noundef nonnull @__func__.tls_parse_ctos_supported_groups) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %PACKET_as_length_prefixed_2.exit.thread
  %.0 = phi i32 [ 0, %PACKET_as_length_prefixed_2.exit.thread ], [ 0, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %.0
}

declare i32 @tls1_save_u16(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @tls_parse_ctos_ems(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !13
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1252, ptr noundef nonnull @__func__.tls_parse_ctos_ems) #12
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 110, ptr noundef null) #12
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.c = load i64, ptr %i.b, align 8, !tbaa !108
  %i.d = and i64 %i.c, 1
  %.not4 = icmp eq i64 %i.d, 0
  br i1 %.not4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !132
  %i.g = or i64 %i.f, 512
  store i64 %i.g, ptr %i.e, align 8, !tbaa !132
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @tls_parse_ctos_early_data(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !13
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.c = load i32, ptr %i.b, align 8, !tbaa !140
  %.not4 = icmp eq i32 %i.c, 0
  br i1 %.not4, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink5 = phi i32 [ 1268, %bb.a ], [ 1273, %bb.b ]
  %.sink = phi i32 [ 50, %bb.a ], [ 47, %bb.b ]
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink5, ptr noundef nonnull @__func__.tls_parse_ctos_early_data) #12
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef %.sink, i32 noundef 110, ptr noundef null) #12
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @tls_parse_ctos_psk(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 24 uses
  %i.b = alloca [512 x i8], align 16              ; 10 uses
  %i.c = alloca [2 x i8], align 2                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !183
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !98   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2840
  %i.i = load i32, ptr %i.h, align 8, !tbaa !110
  %i.j = and i32 %i.i, 3
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.thread262, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.813.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.sroa.813.0.copyload.i = load i64, ptr %.sroa.813.0..sroa_idx.i, align 8, !tbaa !83 ; 2 uses
  %i.l = icmp ult i64 %.sroa.813.0.copyload.i, 2
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !82 ; 3 uses
  %i.m = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !15
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !15
  %i.r = zext i8 %i.q to i64
  %i.s = or disjoint i64 %i.o, %i.r               ; 4 uses
  %i.t = add i64 %.sroa.813.0.copyload.i, -2      ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1330, ptr noundef nonnull @__func__.tls_parse_ctos_psk) #12
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 50, i32 noundef 110, ptr noundef null) #12
  br label %.thread262

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 2 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  %i.x = sub nuw i64 %i.t, %i.s
  store ptr %i.w, ptr %1, align 8, !tbaa !82
  store i64 %i.x, ptr %.sroa.813.0..sroa_idx.i, align 8, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2664 ; 4 uses
  store i32 0, ptr %i.y, align 8, !tbaa !141
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2424 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2852 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2480 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5880 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3392
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 768
  br label %bb.f

bb.f:                                             ; preds = %.thread246.thread, %bb.e
  %.sroa.9.0 = phi i64 [ %i.s, %bb.e ], [ %i.ax, %.thread246.thread ] ; 2 uses
  %.sroa.0211.0 = phi ptr [ %i.v, %bb.e ], [ %i.aw, %.thread246.thread ] ; 3 uses
  %.0121 = phi ptr [ null, %bb.e ], [ %.1122.ph, %.thread246.thread ] ; 6 uses
  %.0116 = phi i32 [ 0, %bb.e ], [ %.3119.ph, %.thread246.thread ] ; 9 uses
  %.0114 = phi i32 [ 0, %bb.e ], [ %i.ds, %.thread246.thread ] ; 5 uses
  switch i64 %.sroa.9.0, label %bb.g [
    i64 0, label %..thread279_crit_edge
    i64 1, label %PACKET_get_length_prefixed_2.exit181.thread
  ]

..thread279_crit_edge:                            ; preds = %bb.f
  %.pre347 = load ptr, ptr %i.a, align 8, !tbaa !183
  br label %.thread279

bb.g:                                             ; preds = %bb.f
  %i.ai = load i8, ptr %.sroa.0211.0, align 1, !tbaa !15
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0211.0, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = zext i8 %i.am to i64
  %i.ao = or disjoint i64 %i.ak, %i.an            ; 9 uses
  %i.ap = add i64 %.sroa.9.0, -2                  ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  br i1 %i.aq, label %PACKET_get_length_prefixed_2.exit181.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0211.0, i64 2 ; 5 uses
  %i.as = sub nuw i64 %i.ap, %i.ao                ; 2 uses
  %i.at = icmp ult i64 %i.as, 4
  br i1 %i.at, label %PACKET_get_length_prefixed_2.exit181.thread, label %bb.i

PACKET_get_length_prefixed_2.exit181.thread:      ; preds = %bb.f, %bb.h, %bb.g
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1342, ptr noundef nonnull @__func__.tls_parse_ctos_psk) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 110, ptr noundef null) #12
  br label %.thread262

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao ; 5 uses
  %5 = load i8, ptr %i.au, align 1, !tbaa !15
  %6 = zext i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 24
  %8 = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !15
  %10 = zext i8 %9 to i64
  %11 = shl nuw nsw i64 %10, 16
  %12 = or disjoint i64 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !15
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 8
  %17 = or disjoint i64 %12, %16
  %18 = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  %19 = load i8, ptr %18, align 1, !tbaa !15
  %i.av = zext i8 %19 to i64
  %20 = or disjoint i64 %17, %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ax = add i64 %i.as, -4
  %i.ay = icmp eq i64 %i.ao, 0
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1348, ptr noundef nonnull @__func__.tls_parse_ctos_psk) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 110, ptr noundef null) #12
  br label %.thread262

bb.k:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !184 ; 2 uses
  %.not143 = icmp eq ptr %i.az, null
  br i1 %.not143, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = call i32 %i.az(ptr noundef %i.g, ptr noundef nonnull %i.ar, i64 noundef %i.ao, ptr noundef nonnull %i.a) #12
  %.not144 = icmp eq i32 %i.ba, 0
  br i1 %.not144, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1354, ptr noundef nonnull @__func__.tls_parse_ctos_psk) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 110, ptr noundef null) #12
  br label %.thread262

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !183 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.o, label %.thread237

bb.o:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !185
  %i.be = icmp ne ptr %i.bd, null
  %i.bf = icmp samesign ult i64 %i.ao, 257
  %or.cond = and i1 %i.bf, %i.be
  br i1 %or.cond, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @CRYPTO_free(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 516) #12
  %i.bg = call ptr @CRYPTO_strndup(ptr noundef nonnull %i.ar, i64 noundef %i.ao, ptr noundef nonnull @.str.3, i32 noundef 519) #12 ; 3 uses
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %.thread286, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = load ptr, ptr %i.aa, align 8, !tbaa !185
  %i.bi = call i32 %i.bh(ptr noundef %i.g, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.b, i32 noundef 512) #12 ; 4 uses
  call void @CRYPTO_free(ptr noundef nonnull %i.bg, ptr noundef nonnull @.str, i32 noundef 1372) #12
  %i.bj = icmp ugt i32 %i.bi, 512
  br i1 %i.bj, label %.thread286, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not146 = icmp eq i32 %i.bi, 0
  br i1 %.not146, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i16 275, ptr %i.c, align 2
  %i.bk = call ptr @SSL_CIPHER_find(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.thread288, label %bb.t

.thread288:                                       ; preds = %bb.s
  %i.bm = zext nneg i32 %i.bi to i64
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef %i.bm) #12
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1388, ptr noundef nonnull @__func__.tls_parse_ctos_psk) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread262

bb.t:                                             ; preds = %bb.s
  %i.bn = call ptr @SSL_SESSION_new() #12         ; 3 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !183
  %i.bo = icmp eq ptr %i.bn, null
  %.pre350 = zext nneg i32 %i.bi to i64           ; 3 uses
  br i1 %i.bo, label %split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = call i32 @SSL_SESSION_set1_master_key(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.b, i64 noundef %.pre350) #12
  %.not147 = icmp eq i32 %i.bp, 0
  br i1 %.not147, label %split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !183
  %i.br = call i32 @SSL_SESSION_set_cipher(ptr noundef %i.bq, ptr noundef nonnull %i.bk) #12
  %.not148 = icmp eq i32 %i.br, 0
  br i1 %.not148, label %split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !183
  %i.bt = call i32 @SSL_SESSION_set_protocol_version(ptr noundef %i.bs, i32 noundef 772) #12
  %.not149 = icmp eq i32 %i.bt, 0
  br i1 %.not149, label %split, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef %.pre350) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !183 ; 2 uses
  %.not150 = icmp eq ptr %.pr.pre, null
  br i1 %.not150, label %.thread, label %.thread237

.thread237:                                       ; preds = %bb.n, %bb.y
  %i.bu = phi ptr [ %.pr.pre, %bb.y ], [ %i.bb, %bb.n ]
  %i.bv = call ptr @ssl_session_dup(ptr noundef nonnull %i.bu, i32 noundef 0) #12 ; 5 uses
  %.not155 = icmp eq ptr %i.bv, null
  br i1 %.not155, label %.thread239, label %bb.z

.thread239:                                       ; preds = %.thread237
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1413, ptr noundef nonnull @__func__.tls_parse_ctos_psk) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %.thread255

bb.z:                                             ; preds = %.thread237
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !183
  call void @SSL_SESSION_free(ptr noundef %i.bw) #12
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !183
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 640
  %i.by = load i64, ptr %i.ac, align 8, !tbaa !186
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr nonnull align 8 %i.ab, i64 %i.by, i1 false)
  %i.bz = load i64, ptr %i.ac, align 8, !tbaa !186
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 632
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !187
  %i.cb = icmp eq i32 %.0114, 0
  br i1 %i.cb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.ad, align 4, !tbaa !188
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  store i32 1, ptr %i.y, align 8, !tbaa !141
  br label %.thread251

.thread:                                          ; preds = %bb.o, %bb.y
  %i.cc = load i64, ptr %i.ae, align 8, !tbaa !108 ; 2 uses
  %i.cd = and i64 %i.cc, 16384
  %.not151 = icmp eq i64 %i.cd, 0
  br i1 %.not151, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread
  %i.ce = load i32, ptr %i.af, align 8, !tbaa !142
  %.not152 = icmp ne i32 %i.ce, 0
  %i.cf = and i64 %i.cc, 16777216
  %i.cg = icmp eq i64 %i.cf, 0
  %or.cond163 = and i1 %i.cg, %.not152
  br i1 %or.cond163, label %bb.ad, label %tls_get_stateful_ticket.exit

bb.ad:                                            ; preds = %bb.ac, %.thread
  store i32 1, ptr %i.y, align 8, !tbaa !141
  %cond = icmp eq i64 %i.ao, 32
  br i1 %cond, label %bb.ae, label %.thread246.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ch = call ptr @lookup_sess_in_cache(ptr noundef nonnull %0, ptr noundef nonnull %i.ar, i64 noundef 32) #12 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.thread246.thread, label %.thread246.thread301

.thread246.thread301:                             ; preds = %bb.ae
  store ptr %i.ch, ptr %i.a, align 8, !tbaa !183
  br label %bb.ah

tls_get_stateful_ticket.exit:                     ; preds = %bb.ac
  %i.cj = call i32 @tls_decrypt_ticket(ptr noundef nonnull %0, ptr noundef nonnull %i.ar, i64 noundef %i.ao, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a) #12 ; 3 uses
  %i.ck = icmp eq i32 %i.cj, 3
  br i1 %i.ck, label %tls_get_stateful_ticket.exit.thread244, label %bb.af

tls_get_stateful_ticket.exit.thread244:           ; preds = %tls_get_stateful_ticket.exit
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1448, ptr noundef nonnull @__func__.tls_parse_ctos_psk) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 50, i32 noundef 110, ptr noundef null) #12
  br label %.thread255

bb.af:                                            ; preds = %tls_get_stateful_ticket.exit
  %or.cond6 = icmp ult i32 %i.cj, 2
  br i1 %or.cond6, label %bb.ag, label %.thread246

bb.ag:                                            ; preds = %bb.af
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1454, ptr noundef nonnull @__func__.tls_parse_ctos_psk) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %.thread255

.thread246:                                       ; preds = %bb.af
  switch i32 %i.cj, label %bb.ah [
    i32 4, label %.thread246.thread
    i32 2, label %.thread246.thread
  ]

bb.ah:                                            ; preds = %.thread246.thread301, %.thread246
  %i.cl = load i32, ptr %i.af, align 8, !tbaa !142
  %.not153 = icmp eq i32 %i.cl, 0
  br i1 %.not153, label %._crit_edge, label %bb.ai

._crit_edge:                                      ; preds = %bb.ah
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !183
  br label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.cm = load i64, ptr %i.ae, align 8, !tbaa !108
  %i.cn = and i64 %i.cm, 16777216
  %i.co = icmp eq i64 %i.cn, 0
  %.pre345 = load ptr, ptr %i.a, align 8, !tbaa !183 ; 2 uses
  br i1 %i.co, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cp = load ptr, ptr %i.ag, align 8, !tbaa !135
  %i.cq = call i32 @SSL_CTX_remove_session(ptr noundef %i.cp, ptr noundef %.pre345) #12
  %.not154 = icmp eq i32 %i.cq, 0
  %.pre344 = load ptr, ptr %i.a, align 8, !tbaa !183 ; 2 uses
  br i1 %.not154, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @SSL_SESSION_free(ptr noundef %.pre344) #12
  store ptr null, ptr %i.a, align 8, !tbaa !183
  br label %.thread246.thread

bb.al:                                            ; preds = %._crit_edge, %bb.aj, %bb.ai
  %i.cr = phi ptr [ %.pre, %._crit_edge ], [ %.pre344, %bb.aj ], [ %.pre345, %bb.ai ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 832
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !189
  %i.cu = call i64 @ossl_time_now() #12
  %i.cv = icmp eq i32 %.0114, 0
  %.pre346 = load ptr, ptr %i.a, align 8, !tbaa !183 ; 5 uses
  br i1 %i.cv, label %bb.am, label %.thread251

bb.am:                                            ; preds = %bb.al
  %i.cw = getelementptr inbounds nuw i8, ptr %.pre346, i64 736
  %i.cx = load i64, ptr %i.cw, align 8
  %..i184 = call i64 @llvm.usub.sat.i64(i64 %i.cu, i64 %i.cx) ; 2 uses
  %.sroa.03.0.i = call i64 @llvm.uadd.sat.i64(i64 %..i184, i64 1000000000) ; 2 uses
  %i.cy = mul nuw nsw i64 %20, 1000000
  %i.cz = zext i32 %i.ct to i64
  %i.da = mul nuw nsw i64 %i.cz, 1000000
  %..i = call i64 @llvm.usub.sat.i64(i64 %i.cy, i64 %i.da) ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.pre346, i64 728
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = icmp ult i64 %i.dc, %..i184
  %i.de = icmp ugt i64 %..i, %.sroa.03.0.i
  %or.cond304.not327 = select i1 %i.dd, i1 true, i1 %i.de
  %.sroa.03.0.i187303 = add nuw nsw i64 %..i, 10000000000
  %.not305 = icmp ult i64 %.sroa.03.0.i187303, %.sroa.03.0.i
  %or.cond306 = select i1 %or.cond304.not327, i1 true, i1 %.not305
  br i1 %or.cond306, label %.thread251, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 1, ptr %i.ad, align 4, !tbaa !188
  br label %.thread251

.thread251:                                       ; preds = %bb.al, %bb.am, %bb.an, %bb.ab
  %i.df = phi ptr [ %i.bv, %bb.ab ], [ %.pre346, %bb.an ], [ %.pre346, %bb.am ], [ %.pre346, %bb.al ]
  %.2118 = phi i32 [ 1, %bb.ab ], [ %.0116, %bb.an ], [ %.0116, %bb.am ], [ %.0116, %bb.al ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 760
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !190
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !191
  %i.dk = call ptr @ssl_md(ptr noundef %i.e, i32 noundef %i.dj) #12 ; 4 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread251
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1500, ptr noundef nonnull @__func__.tls_parse_ctos_psk) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %.thread255

bb.ap:                                            ; preds = %.thread251
  %i.dm = load ptr, ptr %i.ah, align 8, !tbaa !136
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !191
  %i.dp = call ptr @ssl_md(ptr noundef %i.e, i32 noundef %i.do) #12
  %i.dq = call ptr @EVP_MD_get0_name(ptr noundef %i.dp) #12
  %i.dr = call i32 @EVP_MD_is_a(ptr noundef nonnull %i.dk, ptr noundef %i.dq) #12
  %.not156 = icmp eq i32 %i.dr, 0
  %.pre348 = load ptr, ptr %i.a, align 8, !tbaa !183 ; 2 uses
  br i1 %.not156, label %bb.aq, label %.thread279

bb.aq:                                            ; preds = %bb.ap
  call void @SSL_SESSION_free(ptr noundef %.pre348) #12
  store ptr null, ptr %i.a, align 8, !tbaa !183
  store i32 0, ptr %i.ad, align 4, !tbaa !188
  store i32 1, ptr %i.y, align 8, !tbaa !141
  br label %.thread246.thread

.thread286:                                       ; preds = %bb.q, %bb.p
  %.sink = phi i32 [ 1367, %bb.p ], [ 1374, %bb.q ]
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @__func__.tls_parse_ctos_psk) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread262

split:                                            ; preds = %bb.u, %bb.v, %bb.w, %bb.t
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef %.pre350) #12
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1400, ptr noundef nonnull @__func__.tls_parse_ctos_psk) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread255

.thread246.thread:                                ; preds = %bb.ad, %bb.ae, %.thread246, %.thread246, %bb.aq, %bb.ak
  %.1122.ph = phi ptr [ %.0121, %bb.ak ], [ %i.dk, %bb.aq ], [ %.0121, %.thread246 ], [ %.0121, %.thread246 ], [ %.0121, %bb.ae ], [ %.0121, %bb.ad ]
  %.3119.ph = phi i32 [ %.0116, %bb.ak ], [ %.2118, %bb.aq ], [ %.0116, %.thread246 ], [ %.0116, %.thread246 ], [ %.0116, %bb.ae ], [ %.0116, %bb.ad ]
  %i.ds = add i32 %.0114, 1
  br label %bb.f, !llvm.loop !181

.thread279:                                       ; preds = %bb.ap, %..thread279_crit_edge
  %i.dt = phi ptr [ %.pre347, %..thread279_crit_edge ], [ %.pre348, %bb.ap ]
  %.2123 = phi ptr [ %.0121, %..thread279_crit_edge ], [ %i.dk, %bb.ap ] ; 2 uses
  %.4120 = phi i32 [ %.0116, %..thread279_crit_edge ], [ %.2118, %bb.ap ]
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %.thread262, label %bb.ar

bb.ar:                                            ; preds = %.thread279
  %.val168 = load ptr, ptr %1, align 8, !tbaa !14
  %.val174 = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !84
  %i.dv = ptrtoint ptr %.val168 to i64
  %i.dw = ptrtoint ptr %.val174 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = call i32 @EVP_MD_get_size(ptr noundef %.2123) #12 ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 1
  br i1 %i.dz, label %.thread255, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.sroa.8.0.copyload.i190 = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !82
  %.sroa.813.0.copyload.i192 = load i64, ptr %.sroa.813.0..sroa_idx.i, align 8, !tbaa !83 ; 2 uses
  %i.ea = icmp ult i64 %.sroa.813.0.copyload.i192, 2
  br i1 %i.ea, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.0.0.copyload.i193 = load ptr, ptr %1, align 8, !tbaa !82 ; 3 uses
  %i.eb = load i8, ptr %.sroa.0.0.copyload.i193, align 1, !tbaa !15
  %i.ec = zext i8 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i193, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !15
  %i.eg = zext i8 %i.ef to i64
  %i.eh = or disjoint i64 %i.ed, %i.eg            ; 4 uses
  %i.ei = add i64 %.sroa.813.0.copyload.i192, -2  ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  br i1 %i.ej, label %bb.au, label %PACKET_get_length_prefixed_2.exit195

PACKET_get_length_prefixed_2.exit195:             ; preds = %bb.at
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i193, i64 2 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.eh
  %i.em = sub nuw i64 %i.ei, %i.eh
  store ptr %i.el, ptr %1, align 8, !tbaa !82
  store i64 %i.em, ptr %.sroa.813.0..sroa_idx.i, align 8, !tbaa !83
  br label %bb.av

bb.au:                                            ; preds = %bb.as, %bb.at
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1530, ptr noundef nonnull @__func__.tls_parse_ctos_psk) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 50, i32 noundef 110, ptr noundef null) #12
  br label %.thread255

bb.av:                                            ; preds = %PACKET_get_length_prefixed_2.exit195, %bb.ay
  %.0115324 = phi i32 [ 0, %PACKET_get_length_prefixed_2.exit195 ], [ %i.eu, %bb.ay ]
  %.sroa.0208.0323 = phi ptr [ %i.ek, %PACKET_get_length_prefixed_2.exit195 ], [ %i.es, %bb.ay ] ; 2 uses
  %.sroa.7210.0322 = phi i64 [ %i.eh, %PACKET_get_length_prefixed_2.exit195 ], [ %i.et, %bb.ay ] ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.7210.0322, 0
  br i1 %.not.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.en = load i8, ptr %.sroa.0208.0323, align 1, !tbaa !15 ; 2 uses
  %i.eo = add nsw i64 %.sroa.7210.0322, -1        ; 2 uses
  %i.ep = zext i8 %i.en to i64                    ; 3 uses
  %i.eq = icmp ult i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.av, %bb.aw
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1536, ptr noundef nonnull @__func__.tls_parse_ctos_psk) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 110, ptr noundef null) #12
  br label %.thread255

bb.ay:                                            ; preds = %bb.aw
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0208.0323, i64 1 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep
  %i.et = sub nuw nsw i64 %i.eo, %i.ep
  %i.eu = add i32 %.0115324, 1                    ; 2 uses
  %.not158 = icmp ugt i32 %i.eu, %.0114
  br i1 %.not158, label %bb.az, label %bb.av, !llvm.loop !182

bb.az:                                            ; preds = %bb.ay
  %i.ev = zext i8 %i.en to i32
  %.not159 = icmp eq i32 %i.dy, %i.ev
  br i1 %.not159, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1542, ptr noundef nonnull @__func__.tls_parse_ctos_psk) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 110, ptr noundef null) #12
  br label %.thread255

bb.bb:                                            ; preds = %bb.az
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !183
  %i.ex = call i32 @tls_psk_do_binder(ptr noundef %0, ptr noundef %.2123, ptr noundef %.sroa.8.0.copyload.i190, i64 noundef %i.dx, ptr noundef nonnull %i.er, ptr noundef null, ptr noundef %i.ew, i32 noundef 0, i32 noundef %.4120) #12
  %.not160 = icmp eq i32 %i.ex, 1
  br i1 %.not160, label %bb.bc, label %.thread255

bb.bc:                                            ; preds = %bb.bb
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2880
  store i32 %.0114, ptr %i.ey, align 8, !tbaa !144
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !94
  call void @SSL_SESSION_free(ptr noundef %i.fa) #12
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !183
  store ptr %i.fb, ptr %i.ez, align 8, !tbaa !94
  br label %.thread262

.thread255:                                       ; preds = %bb.ag, %tls_get_stateful_ticket.exit.thread244, %.thread239, %bb.ao, %split, %bb.bb, %bb.ar, %bb.ba, %bb.ax, %bb.au
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !183
  call void @SSL_SESSION_free(ptr noundef %i.fc) #12
  br label %.thread262

.thread262:                                       ; preds = %bb.m, %PACKET_get_length_prefixed_2.exit181.thread, %bb.j, %.thread288, %.thread286, %.thread279, %bb.a, %.thread255, %bb.bc, %bb.d
  %.6 = phi i32 [ 0, %bb.d ], [ 0, %.thread288 ], [ 1, %bb.a ], [ 0, %.thread255 ], [ 1, %bb.bc ], [ 1, %.thread279 ], [ 0, %.thread286 ], [ 0, %bb.j ], [ 0, %PACKET_get_length_prefixed_2.exit181.thread ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.6
}

declare ptr @SSL_CIPHER_find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SSL_SESSION_new() local_unnamed_addr #2

declare i32 @SSL_SESSION_set1_master_key(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_SESSION_set_cipher(ptr noundef, ptr noundef) local_unnamed_addr #2
end_hunk_0
begin_hunk_1_@tls_construct_stoc_ech:bb.a

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !157
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.o = load i16, ptr %i.n, align 8, !tbaa !155
  %i.p = icmp eq i16 %i.o, -499
  br i1 %i.p, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i64 0, ptr %i.c, align 8
  %i.q = tail call i32 @WPACKET_put_bytes__(ptr noundef %1, i64 noundef 65037, i64 noundef 2) #12
  %.not37 = icmp eq i32 %i.q, 0
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 @WPACKET_sub_memcpy__(ptr noundef %1, ptr noundef nonnull %i.c, i64 noundef 8, i64 noundef 2) #12
  %.not38 = icmp eq i32 %i.r, 0
  br i1 %.not38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2532, ptr noundef nonnull @__func__.tls_construct_stoc_ech) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.critedge

bb.i:                                             ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %.pre = load i16, ptr %.phi.trans.insert, align 8, !tbaa !155
  %i.s = icmp eq i16 %.pre, -499
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3104
  br i1 %i.s, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.v = load i32, ptr %i.u, align 8, !tbaa !216
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !133
  %i.y = call i32 @RAND_bytes_ex(ptr noundef %i.x, ptr noundef nonnull %i.d, i64 noundef 8, i32 noundef 256) #12
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load i16, ptr %i.t, align 8, !tbaa !155
  %i.ab = zext i16 %i.aa to i64
  %i.ac = call i32 @WPACKET_put_bytes__(ptr noundef %1, i64 noundef %i.ab, i64 noundef 2) #12
  %.not35 = icmp eq i32 %i.ac, 0
  br i1 %.not35, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = call i32 @WPACKET_sub_memcpy__(ptr noundef %1, ptr noundef nonnull %i.d, i64 noundef 8, i64 noundef 2) #12
  %.not36 = icmp eq i32 %i.ad, 0
  br i1 %.not36, label %.sink.split, label %bb.n

.sink.split:                                      ; preds = %bb.l, %bb.m, %bb.k
  %.sink = phi i32 [ 2551, %bb.k ], [ 2556, %bb.m ], [ 2556, %bb.l ]
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @__func__.tls_construct_stoc_ech) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m
  %.1 = phi i32 [ 1, %bb.m ], [ 0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.critedge

.critedge39:                                      ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3132
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !153
  %.not = icmp eq i32 %i.ag, 1
  br i1 %.not, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.critedge39
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !155
  %.not29 = icmp eq i16 %i.ai, -499
  br i1 %.not29, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !154
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = call i32 @ossl_ech_get_retry_configs(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %.not30 = icmp eq i32 %i.al, 1
  br i1 %.not30, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2589, ptr noundef nonnull @__func__.tls_construct_stoc_ech) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.am = load i64, ptr %i.b, align 8, !tbaa !83
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !82
  call void @CRYPTO_free(ptr noundef %i.ao, ptr noundef nonnull @.str, i32 noundef 2600) #12
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  %i.ap = call i32 @WPACKET_put_bytes__(ptr noundef %1, i64 noundef 65037, i64 noundef 2) #12
  %.not31 = icmp eq i32 %i.ap, 0
  br i1 %.not31, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = call i32 @WPACKET_start_sub_packet_len__(ptr noundef %1, i64 noundef 2) #12
  %.not32 = icmp eq i32 %i.aq, 0
  br i1 %.not32, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.as = load i64, ptr %i.b, align 8, !tbaa !83
  %i.at = call i32 @WPACKET_sub_memcpy__(ptr noundef %1, ptr noundef %i.ar, i64 noundef %i.as, i64 noundef 2) #12
  %.not33 = icmp eq i32 %i.at, 0
  br i1 %.not33, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = call i32 @WPACKET_close(ptr noundef %1) #12
  %.not34 = icmp eq i32 %i.au, 0
  br i1 %.not34, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  call void @ERR_new() #12
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2607, ptr noundef nonnull @__func__.tls_construct_stoc_ech) #12
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #12
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !82
  call void @CRYPTO_free(ptr noundef %i.av, ptr noundef nonnull @.str, i32 noundef 2608) #12
  br label %.critedge

bb.z:                                             ; preds = %bb.x
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !82
  call void @CRYPTO_free(ptr noundef %i.aw, ptr noundef nonnull @.str, i32 noundef 2611) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.i, %bb.j, %bb.p, %.critedge39, %bb.o, %bb.z, %bb.y, %bb.t, %bb.r, %bb.n, %bb.h
  %.2 = phi i32 [ %.0, %bb.h ], [ %.1, %bb.n ], [ 0, %bb.y ], [ 2, %bb.p ], [ 2, %.critedge39 ], [ 0, %bb.r ], [ 2, %bb.t ], [ 1, %bb.z ], [ 2, %bb.o ], [ 2, %bb.j ], [ 2, %bb.i ], [ 2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_ech_get_retry_configs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @CRYPTO_strndup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CRYPTO_memdup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc_array(i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @check_in_list(ptr noundef, i16 noundef zeroext, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ssl_generate_param_group(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @tls13_set_encoded_pub_key(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lookup_sess_in_cache(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !101}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"", !10, i64 0, !10, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 16}
!14 = !{!12, !10, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!"p1 _ZTS10ssl_ctx_st", !9, i64 0}
!17 = !{!"p1 _ZTS13ssl_method_st", !9, i64 0}
!18 = !{!"", !5, i64 0}
!19 = !{!"p1 _ZTS15ossl_lib_ctx_st", !9, i64 0}
!20 = !{!"p1 _ZTS13stack_st_void", !9, i64 0}
!21 = !{!"crypto_ex_data_st", !19, i64 0, !20, i64 8}
!22 = !{!"ssl_st", !6, i64 0, !16, i64 8, !17, i64 16, !17, i64 24, !18, i64 32, !9, i64 40, !21, i64 48}
!23 = !{!"p1 _ZTS6ssl_st", !9, i64 0}
!24 = !{!"p1 _ZTS6bio_st", !9, i64 0}
!25 = !{!"", !11, i64 0}
!26 = !{!"ossl_statem_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !9, i64 56, !9, i64 64, !9, i64 72, !6, i64 80}
!27 = !{!"p1 _ZTS10buf_mem_st", !9, i64 0}
!28 = !{!"ossl_quic_tls_callbacks_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!29 = !{!"p1 _ZTS11quic_tls_st", !9, i64 0}
!30 = !{!"p1 _ZTS13evp_md_ctx_st", !9, i64 0}
!31 = !{!"p1 _ZTS13ssl_cipher_st", !9, i64 0}
!32 = !{!"p1 _ZTS11evp_pkey_st", !9, i64 0}
!33 = !{!"p1 _ZTS18stack_st_X509_NAME", !9, i64 0}
!34 = !{!"p1 _ZTS13evp_cipher_st", !9, i64 0}
!35 = !{!"p1 _ZTS9evp_md_st", !9, i64 0}
!36 = !{!"p1 _ZTS11ssl_comp_st", !9, i64 0}
!37 = !{!"p1 _ZTS16sigalg_lookup_st", !9, i64 0}
!38 = !{!"p1 _ZTS12cert_pkey_st", !9, i64 0}
!39 = !{!"p1 short", !9, i64 0}
!40 = !{!"p1 int", !9, i64 0}
!41 = !{!"", !5, i64 0, !11, i64 128, !5, i64 136, !11, i64 264, !11, i64 272, !6, i64 280, !31, i64 288, !32, i64 296, !5, i64 304, !5, i64 336, !11, i64 344, !6, i64 352, !10, i64 360, !11, i64 368, !33, i64 376, !11, i64 384, !10, i64 392, !34, i64 400, !35, i64 408, !6, i64 416, !11, i64 424, !36, i64 432, !6, i64 440, !10, i64 448, !11, i64 456, !10, i64 464, !11, i64 472, !10, i64 480, !11, i64 488, !37, i64 496, !38, i64 504, !39, i64 512, !39, i64 520, !11, i64 528, !11, i64 536, !37, i64 544, !40, i64 552, !6, i64 560, !6, i64 564, !6, i64 568, !6, i64 572}
!42 = !{!"short", !5, i64 0}
!43 = !{!"", !11, i64 0, !5, i64 8, !5, i64 40, !24, i64 72, !30, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !5, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !41, i64 128, !5, i64 704, !11, i64 768, !5, i64 776, !11, i64 840, !6, i64 848, !6, i64 852, !10, i64 856, !11, i64 864, !10, i64 872, !11, i64 880, !6, i64 888, !5, i64 892, !5, i64 893, !42, i64 894, !32, i64 896, !42, i64 904}
!44 = !{!"p1 _ZTS14dtls1_state_st", !9, i64 0}
!45 = !{!"p1 _ZTS20X509_VERIFY_PARAM_st", !9, i64 0}
!46 = !{!"p1 _ZTS11dane_ctx_st", !9, i64 0}
!47 = !{!"p1 _ZTS23stack_st_danetls_record", !9, i64 0}
!48 = !{!"p1 _ZTS13stack_st_X509", !9, i64 0}
!49 = !{!"p1 _ZTS17danetls_record_st", !9, i64 0}
!50 = !{!"p1 _ZTS7x509_st", !9, i64 0}
!51 = !{!"ssl_dane_st", !46, i64 0, !47, i64 8, !48, i64 16, !49, i64 24, !50, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !11, i64 56}
!52 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !9, i64 0}
!53 = !{!"p1 _ZTS7cert_st", !9, i64 0}
!54 = !{!"p1 _ZTS14ssl_session_st", !9, i64 0}
!55 = !{!"p1 _ZTS20stack_st_OCSP_RESPID", !9, i64 0}
!56 = !{!"p1 _ZTS23stack_st_X509_EXTENSION", !9, i64 0}
!57 = !{!"p1 _ZTS22stack_st_OCSP_RESPONSE", !9, i64 0}
!58 = !{!"", !55, i64 0, !56, i64 8, !10, i64 16, !11, i64 24, !57, i64 32}
!59 = !{!"p1 long", !9, i64 0}
!60 = !{!"p1 _ZTS25tls_session_ticket_ext_st", !9, i64 0}
!61 = !{!"p1 _ZTS16ossl_echstore_st", !9, i64 0}
!62 = !{!"p1 _ZTS16ossl_hpke_ctx_st", !9, i64 0}
!63 = !{!"ossl_ech_conn_st", !61, i64 0, !6, i64 8, !10, i64 16, !10, i64 24, !11, i64 32, !9, i64 40, !10, i64 48, !10, i64 56, !11, i64 64, !10, i64 72, !11, i64 80, !10, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !5, i64 128, !11, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !42, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !10, i64 224, !10, i64 232, !11, i64 240, !10, i64 248, !11, i64 256, !10, i64 264, !11, i64 272, !62, i64 280, !6, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !6, i64 328, !6, i64 332, !10, i64 336, !5, i64 344, !5, i64 352, !5, i64 384, !11, i64 392, !5, i64 400}
!64 = !{!"", !5, i64 0, !9, i64 32, !9, i64 40, !10, i64 48, !6, i64 56, !10, i64 64, !42, i64 72, !6, i64 76, !58, i64 80, !6, i64 120, !6, i64 124, !11, i64 128, !10, i64 136, !11, i64 144, !10, i64 152, !11, i64 160, !39, i64 168, !11, i64 176, !39, i64 184, !11, i64 192, !39, i64 200, !11, i64 208, !59, i64 216, !60, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !10, i64 264, !11, i64 272, !10, i64 280, !11, i64 288, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !10, i64 312, !11, i64 320, !6, i64 328, !5, i64 332, !6, i64 336, !5, i64 340, !6, i64 356, !5, i64 360, !5, i64 361, !5, i64 362, !5, i64 363, !63, i64 368}
!65 = !{!"p1 _ZTS12stack_st_SCT", !9, i64 0}
!66 = !{!"p1 _ZTS32stack_st_SRTP_PROTECTION_PROFILE", !9, i64 0}
!67 = !{!"p1 _ZTS26srtp_protection_profile_st", !9, i64 0}
!68 = !{!"p1 _ZTS9bignum_st", !9, i64 0}
!69 = !{!"srp_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !10, i64 32, !68, i64 40, !68, i64 48, !68, i64 56, !68, i64 64, !68, i64 72, !68, i64 80, !68, i64 88, !68, i64 96, !10, i64 104, !6, i64 112, !11, i64 120}
!70 = !{!"p1 _ZTS17ssl_connection_st", !9, i64 0}
!71 = !{!"p1 _ZTS21ossl_record_method_st", !9, i64 0}
!72 = !{!"p1 _ZTS20ossl_record_layer_st", !9, i64 0}
!73 = !{!"p1 _ZTS20dtls_record_layer_st", !9, i64 0}
!74 = !{!"record_layer_st", !70, i64 0, !71, i64 8, !9, i64 16, !71, i64 24, !71, i64 32, !72, i64 40, !72, i64 48, !24, i64 56, !11, i64 64, !6, i64 72, !11, i64 80, !5, i64 88, !11, i64 96, !11, i64 104, !5, i64 112, !10, i64 120, !6, i64 128, !73, i64 136, !9, i64 144, !9, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !5, i64 192}
!75 = !{!"p1 _ZTS12async_job_st", !9, i64 0}
!76 = !{!"p1 _ZTS17async_wait_ctx_st", !9, i64 0}
!77 = !{!"any p2 pointer", !9, i64 0}
!78 = !{!"p2 _ZTS16sigalg_lookup_st", !77, i64 0}
!79 = !{!"ssl_connection_st", !22, i64 0, !23, i64 64, !6, i64 72, !24, i64 80, !24, i64 88, !24, i64 96, !6, i64 104, !9, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !25, i64 136, !25, i64 144, !26, i64 152, !6, i64 240, !27, i64 248, !9, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !28, i64 288, !9, i64 336, !29, i64 344, !43, i64 352, !44, i64 1264, !9, i64 1272, !9, i64 1280, !6, i64 1288, !45, i64 1296, !51, i64 1304, !52, i64 1368, !52, i64 1376, !52, i64 1384, !52, i64 1392, !6, i64 1400, !5, i64 1404, !5, i64 1468, !5, i64 1532, !5, i64 1596, !5, i64 1660, !5, i64 1724, !5, i64 1788, !5, i64 1852, !5, i64 1916, !5, i64 1980, !5, i64 2044, !5, i64 2108, !53, i64 2176, !5, i64 2184, !11, i64 2248, !6, i64 2256, !11, i64 2264, !5, i64 2272, !54, i64 2304, !54, i64 2312, !10, i64 2320, !11, i64 2328, !9, i64 2336, !5, i64 2344, !11, i64 2376, !6, i64 2384, !9, i64 2392, !9, i64 2400, !6, i64 2408, !6, i64 2412, !9, i64 2416, !9, i64 2424, !9, i64 2432, !9, i64 2440, !48, i64 2448, !11, i64 2456, !33, i64 2464, !33, i64 2472, !11, i64 2480, !6, i64 2488, !6, i64 2492, !6, i64 2496, !11, i64 2504, !6, i64 2512, !6, i64 2516, !11, i64 2520, !11, i64 2528, !11, i64 2536, !64, i64 2544, !9, i64 3344, !6, i64 3352, !9, i64 3360, !9, i64 3368, !65, i64 3376, !6, i64 3384, !16, i64 3392, !66, i64 3400, !67, i64 3408, !6, i64 3416, !6, i64 3420, !6, i64 3424, !6, i64 3428, !10, i64 3432, !11, i64 3440, !6, i64 3448, !30, i64 3456, !69, i64 3464, !9, i64 3592, !74, i64 3600, !9, i64 5840, !9, i64 5848, !75, i64 5856, !76, i64 5864, !11, i64 5872, !6, i64 5880, !6, i64 5884, !6, i64 5888, !11, i64 5896, !11, i64 5904, !11, i64 5912, !9, i64 5920, !9, i64 5928, !9, i64 5936, !9, i64 5944, !78, i64 5952, !11, i64 5960, !10, i64 5968, !11, i64 5976, !10, i64 5984, !11, i64 5992}
!80 = !{!79, !11, i64 1120}
!81 = !{!79, !6, i64 1200}
!82 = !{!10, !10, i64 0}
!83 = !{!11, !11, i64 0}
!84 = !{!12, !10, i64 8}
!85 = !{!79, !6, i64 1288}
!86 = !{!79, !17, i64 24}
!87 = !{!"p1 _ZTS15ssl3_enc_method", !9, i64 0}
!88 = !{!"ssl_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !87, i64 216, !9, i64 224, !9, i64 232, !9, i64 240}
!89 = !{!88, !87, i64 216}
!90 = !{!"ssl3_enc_method", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !10, i64 32, !11, i64 40, !10, i64 48, !11, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !9, i64 88, !9, i64 96, !9, i64 104}
!91 = !{!90, !6, i64 80}
!92 = !{!88, !6, i64 0}
!93 = !{!79, !6, i64 3352}
!94 = !{!79, !54, i64 2304}
!95 = !{!"", !10, i64 0, !10, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !10, i64 40, !11, i64 48, !5, i64 56}
!96 = !{!"ssl_session_st", !6, i64 0, !11, i64 8, !5, i64 16, !5, i64 80, !11, i64 592, !5, i64 600, !11, i64 632, !5, i64 640, !10, i64 672, !10, i64 680, !6, i64 688, !32, i64 696, !50, i64 704, !48, i64 712, !11, i64 720, !25, i64 728, !25, i64 736, !25, i64 744, !6, i64 752, !31, i64 760, !11, i64 768, !6, i64 776, !21, i64 784, !95, i64 800, !10, i64 864, !10, i64 872, !11, i64 880, !6, i64 888, !16, i64 896, !54, i64 904, !54, i64 912, !18, i64 920}
!97 = !{!96, !5, i64 856}
!98 = !{!79, !23, i64 64}
!99 = !{!79, !6, i64 120}
!100 = !{!6, !6, i64 0}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!79, !11, i64 608}
!103 = !{!79, !11, i64 744}
!104 = !{!79, !6, i64 1204}
!105 = !{!79, !67, i64 3408}
!106 = !{!"srtp_protection_profile_st", !10, i64 0, !11, i64 8}
!107 = !{!106, !11, i64 8}
!108 = !{!79, !11, i64 2480}
!109 = !{!79, !6, i64 2844}
!110 = !{!79, !6, i64 2840}
!111 = !{!79, !42, i64 1256}
!112 = !{!79, !32, i64 1248}
!113 = !{!79, !39, i64 2728}
!114 = !{!79, !42, i64 1246}
!115 = !{!39, !39, i64 0}
!116 = !{!42, !42, i64 0}
!117 = !{!79, !16, i64 8}
!118 = !{!"p1 _ZTS13x509_store_st", !9, i64 0}
!119 = !{!"p1 _ZTS20lhash_st_SSL_SESSION", !9, i64 0}
!120 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40}
!121 = !{!"p1 _ZTS17stack_st_SSL_COMP", !9, i64 0}
!122 = !{!"p1 _ZTS14ctlog_store_st", !9, i64 0}
!123 = !{!"p1 _ZTS21ssl_ctx_ext_secure_st", !9, i64 0}
!124 = !{!"ossl_ech_ctx_st", !61, i64 0, !10, i64 8, !11, i64 16, !9, i64 24}
!125 = !{!"", !9, i64 0, !9, i64 8, !5, i64 16, !123, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !5, i64 76, !11, i64 80, !10, i64 88, !11, i64 96, !39, i64 104, !11, i64 112, !39, i64 120, !11, i64 128, !59, i64 136, !9, i64 144, !9, i64 152, !10, i64 160, !11, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !5, i64 208, !124, i64 240}
!126 = !{!"p2 _ZTS9evp_md_st", !77, i64 0}
!127 = !{!"dane_ctx_st", !126, i64 0, !10, i64 8, !5, i64 16, !11, i64 24}
!128 = !{!"p1 _ZTS17tls_group_info_st", !9, i64 0}
!129 = !{!"p1 _ZTS18tls_sigalg_info_st", !9, i64 0}
!130 = !{!"p1 _ZTS18ssl_token_store_st", !9, i64 0}
!131 = !{!"ssl_ctx_st", !19, i64 0, !17, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !118, i64 40, !119, i64 48, !11, i64 56, !54, i64 64, !54, i64 72, !6, i64 80, !25, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !120, i64 120, !18, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !21, i64 240, !35, i64 256, !35, i64 264, !48, i64 272, !121, i64 280, !9, i64 288, !33, i64 296, !33, i64 304, !11, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !53, i64 344, !9, i64 352, !6, i64 360, !9, i64 368, !9, i64 376, !6, i64 384, !11, i64 392, !5, i64 400, !9, i64 432, !9, i64 440, !45, i64 448, !6, i64 456, !122, i64 464, !9, i64 472, !9, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !11, i64 512, !9, i64 520, !9, i64 528, !9, i64 536, !9, i64 544, !125, i64 552, !9, i64 824, !9, i64 832, !9, i64 840, !9, i64 848, !69, i64 856, !127, i64 984, !66, i64 1016, !9, i64 1024, !9, i64 1032, !9, i64 1040, !6, i64 1048, !6, i64 1052, !9, i64 1056, !9, i64 1064, !11, i64 1072, !11, i64 1080, !9, i64 1088, !9, i64 1096, !9, i64 1104, !11, i64 1112, !9, i64 1120, !9, i64 1128, !6, i64 1136, !9, i64 1144, !9, i64 1152, !10, i64 1160, !5, i64 1168, !5, i64 1232, !5, i64 1440, !5, i64 1560, !11, i64 1680, !11, i64 1688, !37, i64 1696, !39, i64 1704, !128, i64 1712, !11, i64 1720, !11, i64 1728, !129, i64 1736, !11, i64 1744, !11, i64 1752, !6, i64 1760, !6, i64 1764, !6, i64 1768, !6, i64 1772, !10, i64 1776, !11, i64 1784, !10, i64 1792, !11, i64 1800, !11, i64 1808, !130, i64 1816, !10, i64 1824}
!132 = !{!79, !11, i64 352}
!133 = !{!131, !19, i64 0}
!134 = !{!131, !10, i64 1160}
!135 = !{!79, !16, i64 3392}
!136 = !{!79, !31, i64 768}
!137 = !{!22, !17, i64 24}
!138 = !{!88, !9, i64 176}
!139 = !{!79, !6, i64 72}
!140 = !{!79, !6, i64 2256}
!141 = !{!79, !6, i64 2664}
!142 = !{!79, !6, i64 5880}
!143 = !{!"ssl_cipher_st", !6, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72}
!144 = !{!79, !6, i64 2880}
!145 = !{!79, !6, i64 3424}
!146 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!147 = !{!79, !5, i64 2905}
!148 = !{!79, !5, i64 2904}
!149 = !{!79, !10, i64 5968}
!150 = !{!79, !5, i64 2906}
!151 = !{!79, !5, i64 2907}
!152 = !{!79, !10, i64 5984}
!153 = !{!79, !6, i64 3132}
!154 = !{!79, !61, i64 2912}
!155 = !{!79, !42, i64 3104}
!156 = !{!79, !6, i64 3120}
!157 = !{!79, !6, i64 3112}
!158 = !{!79, !10, i64 2592}
!159 = !{!96, !10, i64 800}
!160 = !{!79, !9, i64 2776}
!161 = !{!79, !9, i64 2784}
!162 = distinct !{!162, !101}
!163 = !{!79, !6, i64 2600}
!164 = !{!79, !55, i64 2624}
!165 = !{!79, !56, i64 2632}
!166 = distinct !{!166, !101}
!167 = !{!79, !10, i64 1224}
!168 = distinct !{!168, !101}
!169 = distinct !{!169, !101}
!170 = distinct !{!170, !101}
!171 = distinct !{!171, !101}
!172 = distinct !{!172, !101}
!173 = distinct !{!173, !101}
!174 = !{!79, !11, i64 2720}
!175 = !{i64 0, i64 8, !82, i64 8, i64 8, !82, i64 16, i64 8, !83}
!176 = !{!59, !59, i64 0}
!177 = !{!96, !6, i64 776}
!178 = !{!131, !9, i64 232}
!179 = !{!79, !11, i64 2376}
!180 = !{!79, !6, i64 2872}
end_hunk_1
