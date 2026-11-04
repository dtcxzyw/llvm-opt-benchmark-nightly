Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/extensions_clnt?download=true
inline.NumInlined: 114
inline.NumDeleted: 34
begin_hunk_0_@tls_construct_ctos_srp:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %.not22 = icmp eq ptr %i.h, null
  br i1 %.not22, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3132
  %i.j = load i32, ptr %i.i, align 4, !tbaa !83
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @ossl_ech_same_ext(ptr noundef nonnull %0, ptr noundef %1) #10 ; 2 uses
  %switch = icmp ult i32 %i.l, 2
  br i1 %switch, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.m = tail call i32 @WPACKET_put_bytes__(ptr noundef %1, i64 noundef 12, i64 noundef 2) #10
  %.not23 = icmp eq i32 %i.m, 0
  br i1 %.not23, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @WPACKET_start_sub_packet_len__(ptr noundef %1, i64 noundef 2) #10
  %.not24 = icmp eq i32 %i.n, 0
  br i1 %.not24, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call i32 @WPACKET_start_sub_packet_len__(ptr noundef %1, i64 noundef 1) #10
  %.not25 = icmp eq i32 %i.o, 0
  br i1 %.not25, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i32 @WPACKET_set_flags(ptr noundef %1, i32 noundef 1) #10
  %.not26 = icmp eq i32 %i.p, 0
  br i1 %.not26, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !174  ; 2 uses
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #11
  %i.s = tail call i32 @WPACKET_memcpy(ptr noundef %1, ptr noundef nonnull %i.q, i64 noundef %i.r) #10
  %.not27 = icmp eq i32 %i.s, 0
  br i1 %.not27, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = tail call i32 @WPACKET_close(ptr noundef %1) #10
  %.not28 = icmp eq i32 %i.t, 0
  br i1 %.not28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = tail call i32 @WPACKET_close(ptr noundef %1) #10
  %.not29 = icmp eq i32 %i.u, 0
  br i1 %.not29, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 177, ptr noundef nonnull @__func__.tls_construct_ctos_srp) #10
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #10
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.m, %bb.a, %bb.n
  %.1 = phi i32 [ 1, %bb.m ], [ 2, %bb.a ], [ 0, %bb.n ], [ %i.l, %bb.f ]
  ret i32 %.1
}

declare i32 @WPACKET_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @WPACKET_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @tls_construct_ctos_ec_pt_formats(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.e = call i32 @ssl_get_min_max_version(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null) #10 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.c, align 4, !tbaa !93
  %i.g = load i32, ptr %i.d, align 4, !tbaa !93
  %i.h = call fastcc i32 @negotiate_dhe(ptr noundef %0, i32 noundef 2, i32 noundef %i.f, i32 noundef %i.g)
  %.not23 = icmp eq i32 %i.h, 0
  br i1 %.not23, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @tls1_get_formatlist(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %i.i = load i64, ptr %i.b, align 8, !tbaa !94
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %2, 128
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load i32, ptr %i.l, align 8, !tbaa !81
  %.not24 = icmp eq i32 %i.m, 0
  br i1 %.not24, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %.not25 = icmp eq ptr %i.o, null
  br i1 %.not25, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3132
  %i.q = load i32, ptr %i.p, align 4, !tbaa !83
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = call i32 @ossl_ech_same_ext(ptr noundef nonnull %0, ptr noundef %1) #10 ; 2 uses
  %switch = icmp ult i32 %i.s, 2
  br i1 %switch, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.t = call i32 @WPACKET_put_bytes__(ptr noundef %1, i64 noundef 11, i64 noundef 2) #10
  %.not26 = icmp eq i32 %i.t, 0
  br i1 %.not26, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = call i32 @WPACKET_start_sub_packet_len__(ptr noundef %1, i64 noundef 2) #10
  %.not27 = icmp eq i32 %i.u, 0
  br i1 %.not27, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.w = load i64, ptr %i.b, align 8, !tbaa !94
  %i.x = call i32 @WPACKET_sub_memcpy__(ptr noundef %1, ptr noundef %i.v, i64 noundef %i.w, i64 noundef 1) #10
  %.not28 = icmp eq i32 %i.x, 0
  br i1 %.not28, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = call i32 @WPACKET_close(ptr noundef %1) #10
  %.not29 = icmp eq i32 %i.y, 0
  br i1 %.not29, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.a
  %.sink32 = phi i32 [ 270, %bb.a ], [ 289, %bb.l ], [ 289, %bb.k ], [ 289, %bb.j ], [ 289, %bb.i ]
  %.sink = phi i32 [ %i.e, %bb.a ], [ 786691, %bb.l ], [ 786691, %bb.k ], [ 786691, %bb.j ], [ 786691, %bb.i ]
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink32, ptr noundef nonnull @__func__.tls_construct_ctos_ec_pt_formats) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef %.sink, ptr noundef null) #10
  br label %.thread

.thread:                                          ; preds = %bb.h, %.thread.sink.split, %bb.l, %bb.c, %bb.b
  %.1 = phi i32 [ 0, %.thread.sink.split ], [ 2, %bb.b ], [ 2, %bb.c ], [ %i.s, %bb.h ], [ 1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.1
}

declare i32 @ssl_get_min_max_version(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @negotiate_dhe(ptr noundef %0, i32 noundef range(i32 0, 3) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !80
  %i.j = tail call ptr @SSL_get1_supported_ciphers(ptr noundef %0) #10 ; 7 uses
  %i.k = tail call i32 @OPENSSL_sk_num(ptr noundef %i.j) #10 ; 5 uses
  %.not7476 = icmp sgt i32 %i.k, 0
  br i1 %.not7476, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %.fr88 = freeze i32 %i.i
  %i.l = and i32 %.fr88, 8
  %.not = icmp eq i32 %i.l, 0
  %i.m = icmp eq i32 %1, 0                        ; 3 uses
  %i.n = icmp eq i32 %1, 1                        ; 2 uses
  %i.o = icmp eq i32 %1, 2                        ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.m, label %.lr.ph.split.us.split, label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.b
  %.05277.us.us = phi i32 [ %i.v, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.p = tail call ptr @OPENSSL_sk_value(ptr noundef %i.j, i32 noundef %.05277.us.us) #10 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load <2 x i32>, ptr %i.q, align 4, !tbaa !93
  %.fr125 = freeze <2 x i32> %i.r
  %4 = and <2 x i32> %.fr125, <i32 132, i32 8>
  %.scalar126 = bitcast <2 x i32> %4 to i64
  %5 = icmp ne i64 %.scalar126, 0                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !177
  %i.u = icmp sgt i32 %i.t, 771
  %or.cond64.us.us = select i1 %5, i1 true, i1 %i.u
  %or.cond5.us.us = and i1 %i.o, %5
  %or.cond65.us.us = select i1 %i.n, i1 %or.cond64.us.us, i1 %or.cond5.us.us
  br i1 %or.cond65.us.us, label %.thread.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.v = add nuw nsw i32 %.05277.us.us, 1         ; 2 uses
  %exitcond100.not = icmp eq i32 %i.v, %i.k
  br i1 %exitcond100.not, label %.critedge, label %.lr.ph.split.us.split.us, !llvm.loop !175

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.c
  %.05277.us = phi i32 [ %i.ae, %bb.c ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.w = tail call ptr @OPENSSL_sk_value(ptr noundef %i.j, i32 noundef %.05277.us) #10 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !178
  %i.z = and i32 %i.y, 258
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !177
  %i.ac = icmp sgt i32 %i.ab, 771
  %i.ad = icmp ne i32 %i.z, 0
  %or.cond.us = select i1 %i.ad, i1 true, i1 %i.ac
  br i1 %or.cond.us, label %.thread.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.split
  %i.ae = add nuw nsw i32 %.05277.us, 1           ; 2 uses
  %exitcond101.not = icmp eq i32 %i.ae, %i.k
  br i1 %exitcond101.not, label %.critedge, label %.lr.ph.split.us.split, !llvm.loop !175

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.m, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.d
  %.05277.us78 = phi i32 [ %i.am, %bb.d ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.af = tail call ptr @OPENSSL_sk_value(ptr noundef %i.j, i32 noundef %.05277.us78) #10 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.ah = load <2 x i32>, ptr %i.ag, align 4, !tbaa !93
  %.fr123 = freeze <2 x i32> %i.ah
  %6 = and <2 x i32> %.fr123, <i32 132, i32 8>
  %.scalar = bitcast <2 x i32> %6 to i64
  %7 = icmp ne i64 %.scalar, 0                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !179 ; 2 uses
  %i.ak = icmp ne i32 %i.aj, 256
  %i.al = icmp slt i32 %i.aj, 65277
  %spec.select.us = and i1 %i.ak, %i.al
  %or.cond64.us82 = select i1 %7, i1 true, i1 %spec.select.us
  %or.cond5.us83 = and i1 %i.o, %7
  %or.cond65.us84 = select i1 %i.n, i1 %or.cond64.us82, i1 %or.cond5.us83
  br i1 %or.cond65.us84, label %.thread.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.split.us
  %i.am = add nuw nsw i32 %.05277.us78, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, %i.k
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split.split.us, !llvm.loop !175

bb.e:                                             ; preds = %.lr.ph.split.split
  %i.an = add nuw nsw i32 %.05277, 1              ; 2 uses
  %exitcond99.not = icmp eq i32 %i.an, %i.k
  br i1 %exitcond99.not, label %.critedge, label %.lr.ph.split.split, !llvm.loop !175

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.e
  %.05277 = phi i32 [ %i.an, %bb.e ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ao = tail call ptr @OPENSSL_sk_value(ptr noundef %i.j, i32 noundef %.05277) #10 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !178
  %i.ar = and i32 %i.aq, 258
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  %i.at = load i32, ptr %i.as, align 4, !tbaa !179 ; 2 uses
  %i.au = icmp ne i32 %i.at, 256
  %i.av = icmp slt i32 %i.at, 65277
  %spec.select = and i1 %i.au, %i.av
  %i.aw = icmp ne i32 %i.ar, 0
  %or.cond = select i1 %i.aw, i1 true, i1 %spec.select
  br i1 %or.cond, label %.thread.thread, label %bb.e

.thread.thread:                                   ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us.split.us, %.lr.ph.split.us.split
  tail call void @OPENSSL_sk_free(ptr noundef %i.j) #10
  call void @tls1_get_supported_groups(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !94
  %.not89 = icmp eq i64 %i.ax, 0
  br i1 %.not89, label %.loopexit, label %.lr.ph87

.lr.ph87:                                         ; preds = %.thread.thread
  br i1 %i.m, label %.lr.ph87.split.us, label %.lr.ph87.split

.lr.ph87.split.us:                                ; preds = %.lr.ph87, %bb.h
  %.04986.us = phi i64 [ %i.bh, %bb.h ], [ 0, %.lr.ph87 ] ; 2 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %.04986.us
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !99 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8, !tbaa !101
  %i.bb = call i32 @tls_valid_group(ptr noundef %0, i16 noundef zeroext %i.ba, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef nonnull %i.c) #10
  %.not57.us = icmp eq i32 %i.bb, 0
  br i1 %.not57.us, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph87.split.us
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %i.be = load i16, ptr %i.bd, align 4, !tbaa !103
  %i.bf = and i16 %i.be, -256
  %.not75.us = icmp eq i16 %i.bf, 256
  br i1 %.not75.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = call i32 @tls_group_allowed(ptr noundef %0, i16 noundef zeroext %i.ba, i32 noundef 131076) #10
  %.not59.us = icmp eq i32 %i.bg, 0
  br i1 %.not59.us, label %bb.h, label %.thread71

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph87.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.bh = add nuw i64 %.04986.us, 1               ; 2 uses
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !94
  %i.bj = icmp ult i64 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph87.split.us, label %.loopexit, !llvm.loop !176

.lr.ph87.split:                                   ; preds = %.lr.ph87, %bb.k
  %.04986 = phi i64 [ %i.bt, %bb.k ], [ 0, %.lr.ph87 ] ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %.04986
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !99 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8, !tbaa !101
  %i.bn = call i32 @tls_valid_group(ptr noundef %0, i16 noundef zeroext %i.bm, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef nonnull %i.c) #10
  %.not57 = icmp eq i32 %i.bn, 0
  br i1 %.not57, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph87.split
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !103
  %i.br = icmp ugt i16 %i.bq, 255
  br i1 %i.br, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = call i32 @tls_group_allowed(ptr noundef %0, i16 noundef zeroext %i.bm, i32 noundef 131076) #10
  %.not62 = icmp eq i32 %i.bs, 0
  br i1 %.not62, label %bb.k, label %.thread71

.thread71:                                        ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %.loopexit

bb.k:                                             ; preds = %bb.i, %bb.j, %.lr.ph87.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.bt = add nuw i64 %.04986, 1                  ; 2 uses
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !94
  %i.bv = icmp ult i64 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph87.split, label %.loopexit, !llvm.loop !176

.critedge:                                        ; preds = %bb.d, %bb.e, %bb.b, %bb.c, %bb.a
  tail call void @OPENSSL_sk_free(ptr noundef %i.j) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.h, %.thread.thread, %.critedge, %.thread71
  %.255 = phi i32 [ 0, %.critedge ], [ 1, %.thread71 ], [ 0, %.thread.thread ], [ 0, %bb.h ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.255
}

declare void @tls1_get_formatlist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @tls_construct_ctos_supported_groups(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 15 uses
  %i.e = alloca ptr, align 8                      ; 20 uses
  %i.f = alloca i32, align 4                      ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i64 0, ptr %i.b, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !80
  %i.m = and i32 %i.l, 8
  %i.n = call i32 @ssl_get_min_max_version(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null) #10 ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 308, ptr noundef nonnull @__func__.tls_construct_ctos_supported_groups) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef %i.n, ptr noundef null) #10
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.c, align 4, !tbaa !93
  %i.p = load i32, ptr %i.d, align 4, !tbaa !93
  %i.q = call fastcc i32 @negotiate_dhe(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.o, i32 noundef %i.p)
  %.fr = freeze i32 %i.q                          ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !93
  %i.s = load i32, ptr %i.d, align 4, !tbaa !93
  %i.t = call fastcc i32 @negotiate_dhe(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.r, i32 noundef %i.s)
  %.not116 = icmp eq i32 %.fr, 0                  ; 2 uses
  %.fr114 = freeze i32 %i.t                       ; 2 uses
  %.not115 = icmp eq i32 %.fr114, 0
  %i.u = or i32 %.fr, %.fr114
  %or.cond.not = icmp eq i32 %i.u, 0
  br i1 %or.cond.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not62 = icmp eq i32 %i.m, 0
  %i.v = load i32, ptr %i.d, align 4, !tbaa !93   ; 3 uses
  br i1 %.not62, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = icmp eq i32 %i.v, 256
  %i.x = icmp sgt i32 %i.v, 65276
  %i.y = or i1 %i.w, %i.x
  br i1 %i.y, label %.thread, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = icmp slt i32 %i.v, 772
  br i1 %i.z, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.aa = icmp eq i32 %2, 128
  br i1 %i.aa, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !81
  %.not63 = icmp eq i32 %i.ac, 0
  br i1 %.not63, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !82
  %.not64 = icmp eq ptr %i.ae, null
  br i1 %.not64, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3132
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !83
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
end_hunk_0
