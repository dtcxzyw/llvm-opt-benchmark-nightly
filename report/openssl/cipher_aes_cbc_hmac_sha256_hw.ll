Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cipher_aes_cbc_hmac_sha256_hw?download=true
inline.NumInlined: 19
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aesni_cbc_hmac_sha256_set_tls1_aad:bb.a
  %i.an = and i32 %.0, 15
  %i.ao = sub nuw nsw i32 48, %i.an
  %i.ap = zext nneg i32 %i.ao to i64
  br label %.sink.split

bb.h:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.aq, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 13, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 13, ptr %i.ar, align 8, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %sha256_update.exit, %bb.h
  %.sink = phi i64 [ 32, %bb.h ], [ %i.ap, %sha256_update.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %.sink, ptr %i.as, align 8, !tbaa !49
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.d, %bb.a
  %.038 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483579, -2147483648) i32 @aesni_cbc_hmac_sha256_tls1_multiblock_max_bufsize(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_die(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 753) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, -16
  %i.e = add nsw i32 %i.d, 69
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @aesni_cbc_hmac_sha256_tls1_multiblock_aad(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.d = load i8, ptr %i.c, align 1, !tbaa !18    ; 3 uses
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i8, ptr %i.g, align 1, !tbaa !18
  %i.i = zext i8 %i.h to i32
  %i.j = or disjoint i32 %i.f, %i.i               ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 2
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.s = load i8, ptr %i.r, align 1, !tbaa !18
  %i.t = zext i8 %i.s to i32
  %i.u = or disjoint i32 %i.q, %i.t
  %i.v = icmp samesign ult i32 %i.u, 770
  br i1 %i.v, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not55 = icmp eq i32 %i.j, 0
  br i1 %.not55, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = icmp ult i8 %i.d, 16
  br i1 %i.w, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp ugt i8 %i.d, 31
  br i1 %i.x, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 4, !tbaa !8
  %i.z = and i32 %i.y, 32
  %.not56 = icmp eq i32 %i.z, 0
  %spec.select = select i1 %.not56, i32 1, i32 2
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !28 ; 2 uses
  %i.ac = lshr i32 %i.ab, 2                       ; 2 uses
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = icmp ult i32 %i.ab, 12
  %or.cond = and i1 %i.ae, %i.ad
  br i1 %or.cond, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !29
  %i.ah = trunc i64 %i.ag to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.h
  %.047 = phi i32 [ %i.ac, %bb.h ], [ %spec.select, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %.0 = phi i32 [ %i.ah, %bb.h ], [ %i.j, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ai, ptr noundef nonnull align 8 dereferenceable(112) %i.aj, i64 112, i1 false), !tbaa.struct !19
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !27  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.am = load i32, ptr %i.al, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %.thread60, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = zext i32 %i.am to i64
  %i.ao = sub nsw i64 64, %i.an                   ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 13) ; 3 uses
  %i.ap = tail call i32 @SHA256_Update(ptr noundef nonnull %i.ai, ptr noundef %i.ak, i64 noundef %spec.select.i) #7 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %spec.select.i
  %i.ar = sub nuw nsw i64 13, %spec.select.i
  %.not40.i = icmp ugt i64 %i.ao, 12
  br i1 %.not40.i, label %sha256_update.exit, label %.thread60

.thread60:                                        ; preds = %bb.i, %bb.j
  %.1.i63 = phi ptr [ %i.aq, %bb.j ], [ %i.ak, %bb.i ]
  %i.as = phi i64 [ %i.ar, %bb.j ], [ 13, %bb.i ]
  %i.at = tail call i32 @SHA256_Update(ptr noundef nonnull %i.ai, ptr noundef %.1.i63, i64 noundef %i.as) #7 ; 0 uses
  br label %sha256_update.exit

sha256_update.exit:                               ; preds = %bb.j, %.thread60
  %i.au = shl nuw nsw i32 %.047, 2                ; 3 uses
  %i.av = add nuw nsw i32 %.047, 1                ; 3 uses
  %i.aw = lshr i32 %.0, %i.av                     ; 6 uses
  %i.ax = add i32 %i.aw, %.0
  %i.ay = shl i32 %i.aw, %i.av
  %i.az = sub i32 %i.ax, %i.ay                    ; 5 uses
  %i.ba = icmp ugt i32 %i.az, %i.aw
  br i1 %i.ba, label %bb.k, label %bb.m

bb.k:                                             ; preds = %sha256_update.exit
  %i.bb = add i32 %i.az, 22
  %i.bc = and i32 %i.bb, 63
  %i.bd = add nsw i32 %i.au, -1                   ; 2 uses
  %i.be = icmp samesign ult i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = add nuw nsw i32 %i.aw, 1
  %i.bg = sub i32 %i.az, %i.bd
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %sha256_update.exit
  %.046 = phi i32 [ %i.bf, %bb.l ], [ %i.aw, %bb.k ], [ %i.aw, %sha256_update.exit ]
  %.045 = phi i32 [ %i.bg, %bb.l ], [ %i.az, %bb.k ], [ %i.az, %sha256_update.exit ]
  %i.bh = and i32 %.046, -16                      ; 2 uses
  %i.bi = add nuw nsw i32 %i.bh, 69
  %i.bj = shl i32 %i.bi, %i.av
  %i.bk = and i32 %.045, -16
  %i.bl = sub i32 %i.bk, %i.bh
  %i.bm = add i32 %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.au, ptr %i.bn, align 8, !tbaa !28
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 %i.au, ptr %i.bo, align 8, !tbaa !51
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 %i.bm, ptr %i.bp, align 4, !tbaa !52
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.g, %bb.d, %bb.b, %bb.m
  %.048 = phi i32 [ -1, %bb.g ], [ -1, %bb.b ], [ 1, %bb.m ], [ 0, %bb.d ], [ -1, %bb.a ]
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define internal i32 @aesni_cbc_hmac_sha256_tls1_multiblock_encrypt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca [8 x %struct.HASH_DESC], align 16   ; 13 uses
  %3 = alloca [8 x %struct.HASH_DESC], align 16   ; 17 uses
  %4 = alloca [8 x %struct.CIPH_DESC], align 16   ; 14 uses
  %i.a = alloca [288 x i8], align 16              ; 4 uses
  %5 = alloca [8 x %union.anon.3], align 16       ; 18 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !61     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.i = lshr i32 %i.h, 2                         ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.j = and i32 %i.h, -4                         ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = shl i32 %i.i, 6
  %i.n = zext i32 %i.m to i64
  %i.o = call i32 @RAND_bytes_ex(ptr noundef %i.l, ptr noundef nonnull %5, i64 noundef %i.n, i32 noundef 0) #7
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %tls1_multi_block_encrypt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = and i64 %i.r, 16
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 29 uses
  %i.v = trunc i64 %i.f to i32                    ; 2 uses
  %i.w = add nuw nsw i32 %i.i, 1                  ; 2 uses
  %i.x = lshr i32 %i.v, %i.w                      ; 6 uses
  %i.y = add i32 %i.x, %i.v
  %i.z = shl i32 %i.x, %i.w
  %i.aa = sub i32 %i.y, %i.z                      ; 5 uses
  %i.ab = icmp ugt i32 %i.aa, %i.x
  br i1 %i.ab, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ac = add i32 %i.aa, 22
  %i.ad = and i32 %i.ac, 63
  %i.ae = add nsw i32 %i.j, -1                    ; 2 uses
  %i.af = icmp ult i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = add nuw i32 %i.x, 1
  %i.ah = sub i32 %i.aa, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0357.i = phi i32 [ %i.ah, %bb.d ], [ %i.aa, %bb.c ], [ %i.aa, %bb.b ] ; 7 uses
  %.0356.i = phi i32 [ %i.ag, %bb.d ], [ %i.x, %bb.c ], [ %i.x, %bb.b ] ; 9 uses
  store ptr %i.d, ptr %2, align 16, !tbaa !64
  store ptr %i.d, ptr %4, align 16, !tbaa !66
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ak, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false)
  %.not407.i = icmp eq i32 %i.i, 0                ; 3 uses
  br i1 %.not407.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  store i64 %i.an, ptr %5, align 16
  %i.ao = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.an) #8, !srcloc !68 ; 0 uses
  br label %._crit_edge384.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ap = and i32 %.0356.i, -16
  %i.aq = add nuw i32 %i.ap, 69
  %i.ar = zext i32 %.0356.i to i64
  %i.as = zext i32 %i.aq to i64
  %wide.trip.count.i = zext i32 %i.j to i64       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %i.at = phi ptr [ %i.d, %.lr.ph.i ], [ %i.au, %bb.f ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %.pn379.i = phi ptr [ %5, %.lr.ph.i ], [ %.0364.i, %bb.f ]
  %.0364.i = getelementptr inbounds nuw i8, ptr %.pn379.i, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar ; 3 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i
  store ptr %i.au, ptr %i.av, align 16, !tbaa !64
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.i ; 4 uses
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !66
  %i.ax = getelementptr i8, ptr %i.aw, i64 -32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !67
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bb, ptr noundef nonnull align 1 dereferenceable(16) %.0364.i, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 1 dereferenceable(16) %.0364.i, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph383.split.i, label %bb.f, !llvm.loop !53

.lr.ph383.split.i:                                ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  store i64 %i.be, ptr %5, align 16
  %i.bf = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.be) #8, !srcloc !68 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !8  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !8  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !8  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !8  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !8  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !8  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 224 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 777
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 778
  %6 = add nsw i64 %wide.trip.count.i, -2
  %7 = lshr i32 %.0356.i, 8
  %8 = trunc i32 %7 to i8
  %9 = trunc i32 %.0356.i to i8
  %10 = add i32 %.0356.i, -51
  %11 = lshr i32 %10, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph383.split.i
  %indvars.iv419.i = phi i64 [ 0, %.lr.ph383.split.i ], [ %indvars.iv.next420.i, %bb.g ] ; 14 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv419.i
  store i32 %i.bh, ptr %i.cg, align 4, !tbaa !8
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv419.i
  store i32 %i.bj, ptr %i.ch, align 4, !tbaa !8
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv419.i
  store i32 %i.bm, ptr %i.ci, align 4, !tbaa !8
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv419.i
  store i32 %i.bp, ptr %i.cj, align 4, !tbaa !8
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv419.i
  store i32 %i.bs, ptr %i.ck, align 4, !tbaa !8
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv419.i
  store i32 %i.bv, ptr %i.cl, align 4, !tbaa !8
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv419.i
  store i32 %i.by, ptr %i.cm, align 4, !tbaa !8
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv419.i
  store i32 %i.cb, ptr %i.cn, align 4, !tbaa !8
  %i.co = add i64 %indvars.iv419.i, %i.bf
  %i.cp = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.co) #8, !srcloc !69
  %i.cq = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv419.i ; 8 uses
  store i64 %i.cp, ptr %i.cq, align 16, !tbaa !18
  %i.cr = load i8, ptr %i.cd, align 8, !tbaa !18  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i8 %i.cr, ptr %i.cs, align 8, !tbaa !18
  %i.ct = load i8, ptr %i.ce, align 1, !tbaa !18  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !18
  %i.cv = load i8, ptr %i.cf, align 2, !tbaa !18  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 10
  store i8 %i.cv, ptr %i.cw, align 2, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 11
  store i8 %8, ptr %i.cx, align 1, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i8 %9, ptr %i.cy, align 4, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 13
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv419.i ; 3 uses
  %i.db = load ptr, ptr %i.da, align 16, !tbaa !64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.cz, ptr noundef nonnull align 1 dereferenceable(51) %i.db, i64 51, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 51
  store ptr %i.dc, ptr %i.da, align 16, !tbaa !64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i32 %11, ptr %i.dd, align 8, !tbaa !70
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv419.i ; 2 uses
  store ptr %i.cq, ptr %i.de, align 16, !tbaa !64
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 1, ptr %i.df, align 8, !tbaa !70
  %indvars.iv.next420.i = add nuw nsw i64 %indvars.iv419.i, 1 ; 13 uses
  %exitcond423.not.i = icmp eq i64 %indvars.iv419.i, %6
  br i1 %exitcond423.not.i, label %._crit_edge384.loopexit.peel.begin.i, label %bb.g, !llvm.loop !54

._crit_edge384.loopexit.peel.begin.i:             ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next420.i
  store i32 %i.bh, ptr %i.dg, align 4, !tbaa !8
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next420.i
  store i32 %i.bj, ptr %i.dh, align 4, !tbaa !8
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next420.i
  store i32 %i.bm, ptr %i.di, align 4, !tbaa !8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next420.i
  store i32 %i.bp, ptr %i.dj, align 4, !tbaa !8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next420.i
  store i32 %i.bs, ptr %i.dk, align 4, !tbaa !8
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next420.i
  store i32 %i.bv, ptr %i.dl, align 4, !tbaa !8
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next420.i
  store i32 %i.by, ptr %i.dm, align 4, !tbaa !8
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next420.i
  store i32 %i.cb, ptr %i.dn, align 4, !tbaa !8
  %i.do = add i64 %indvars.iv.next420.i, %i.bf
  %i.dp = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.do) #8, !srcloc !69
  %i.dq = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv.next420.i ; 8 uses
  store i64 %i.dp, ptr %i.dq, align 16, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i8 %i.cr, ptr %i.dr, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 9
  store i8 %i.ct, ptr %i.ds, align 1, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 10
  store i8 %i.cv, ptr %i.dt, align 2, !tbaa !18
  %i.du = lshr i32 %.0357.i, 8
  %i.dv = trunc i32 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 11
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !18
  %i.dx = trunc i32 %.0357.i to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i8 %i.dx, ptr %i.dy, align 4, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 13
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next420.i ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 16, !tbaa !64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.dz, ptr noundef nonnull align 1 dereferenceable(51) %i.eb, i64 51, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 51
  store ptr %i.ec, ptr %i.ea, align 16, !tbaa !64
  %i.ed = add i32 %.0357.i, -51
  %i.ee = lshr i32 %i.ed, 6
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i32 %i.ee, ptr %i.ef, align 8, !tbaa !70
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next420.i ; 2 uses
  store ptr %i.dq, ptr %i.eg, align 16, !tbaa !64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i32 1, ptr %i.eh, align 8, !tbaa !70
  br label %._crit_edge384.i

._crit_edge384.i:                                 ; preds = %._crit_edge384.loopexit.peel.begin.i, %._crit_edge.thread.i
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  %i.ei = call i32 @llvm.umin.i32(i32 %.0356.i, i32 %.0357.i)
  %i.ej = add i32 %i.ei, -51                      ; 2 uses
  %i.ek = lshr i32 %i.ej, 6                       ; 2 uses
  %i.el = icmp ugt i32 %i.ej, 2111
  br i1 %i.el, label %.preheader378.i, label %.loopexit.i

.preheader378.i:                                  ; preds = %._crit_edge384.i
  br i1 %.not407.i, label %.preheader.split.preheader.i, label %.lr.ph386.preheader.i

.lr.ph386.preheader.i:                            ; preds = %.preheader378.i
  %wide.trip.count427.i = zext i32 %i.j to i64    ; 2 uses
  br label %.lr.ph386.i

.lr.ph389.us.preheader.i:                         ; preds = %.lr.ph386.i
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %.lr.ph389.us.i

.preheader.split.preheader.i:                     ; preds = %.preheader378.i
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %.preheader.split.i

.lr.ph389.us.i:                                   ; preds = %._crit_edge390.us.i, %.lr.ph389.us.preheader.i
  %.0361.us.i = phi i32 [ %i.fe, %._crit_edge390.us.i ], [ 0, %.lr.ph389.us.preheader.i ]
  %.0360.us.i = phi i32 [ %i.ff, %._crit_edge390.us.i ], [ %i.ek, %.lr.ph389.us.preheader.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.em, i32 noundef range(i32 0, 1073741824) %i.i) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph389.us.i
  %indvars.iv429.i = phi i64 [ 0, %.lr.ph389.us.i ], [ %indvars.iv.next430.i, %bb.h ] ; 4 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv429.i ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 16, !tbaa !64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2048 ; 2 uses
  store ptr %i.eq, ptr %i.eo, align 16, !tbaa !64
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv429.i ; 2 uses
  store ptr %i.eq, ptr %i.er, align 16, !tbaa !64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !70
  %i.eu = add nsw i32 %i.et, -32
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !70
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i32 32, ptr %i.ev, align 8, !tbaa !70
  %i.ew = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv429.i ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !67
  %i.ez = load <2 x ptr>, ptr %i.ew, align 8, !tbaa !72
  %i.fa = getelementptr inbounds nuw i8, <2 x ptr> %i.ez, i64 2048
  store <2 x ptr> %i.fa, ptr %i.ew, align 8, !tbaa !72
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i32 128, ptr %i.fb, align 8, !tbaa !73
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 1 dereferenceable(16) %i.fd, i64 16, i1 false)
  %indvars.iv.next430.i = add nuw nsw i64 %indvars.iv429.i, 1 ; 2 uses
  %exitcond433.not.i = icmp eq i64 %indvars.iv.next430.i, %wide.trip.count427.i
  br i1 %exitcond433.not.i, label %._crit_edge390.us.i, label %bb.h, !llvm.loop !55

._crit_edge390.us.i:                              ; preds = %bb.h
  %i.fe = add i32 %.0361.us.i, 2048               ; 2 uses
  %i.ff = add nsw i32 %.0360.us.i, -32            ; 2 uses
  %i.fg = icmp ugt i32 %i.ff, 32
  br i1 %i.fg, label %.lr.ph389.us.i, label %.loopexit.i, !llvm.loop !56

.lr.ph386.i:                                      ; preds = %.lr.ph386.i, %.lr.ph386.preheader.i
  %indvars.iv424.i = phi i64 [ 0, %.lr.ph386.preheader.i ], [ %indvars.iv.next425.i.1, %.lr.ph386.i ] ; 5 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv424.i
  %i.fi = load ptr, ptr %i.fh, align 16, !tbaa !64
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv424.i ; 2 uses
  store ptr %i.fi, ptr %i.fj, align 16, !tbaa !64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i32 32, ptr %i.fk, align 8, !tbaa !70
  %i.fl = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv424.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store i32 128, ptr %i.fm, align 16, !tbaa !73
  %indvars.iv.next425.i = or disjoint i64 %indvars.iv424.i, 1 ; 3 uses
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next425.i
  %i.fo = load ptr, ptr %i.fn, align 16, !tbaa !64
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next425.i ; 2 uses
  store ptr %i.fo, ptr %i.fp, align 16, !tbaa !64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 32, ptr %i.fq, align 8, !tbaa !70
  %i.fr = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.next425.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store i32 128, ptr %i.fs, align 8, !tbaa !73
  %indvars.iv.next425.i.1 = add nuw nsw i64 %indvars.iv424.i, 2 ; 2 uses
  %exitcond428.not.i.1 = icmp eq i64 %indvars.iv.next425.i.1, %wide.trip.count427.i
  br i1 %exitcond428.not.i.1, label %.lr.ph389.us.preheader.i, label %.lr.ph386.i, !llvm.loop !57

.preheader.split.i:                               ; preds = %.preheader.split.i, %.preheader.split.preheader.i
  %.0360.i = phi i32 [ %i.ft, %.preheader.split.i ], [ %i.ek, %.preheader.split.preheader.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef 0) #7
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.en, i32 noundef 0) #7
  %i.ft = add nsw i32 %.0360.i, -32               ; 2 uses
  %i.fu = icmp ugt i32 %i.ft, 32
  br i1 %i.fu, label %.preheader.split.i, label %.loopexit.thread.i, !llvm.loop !56

.loopexit.thread.i:                               ; preds = %.preheader.split.i
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef range(i32 0, 1073741824) 0) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  br label %._crit_edge394.thread.i

.loopexit.i:                                      ; preds = %._crit_edge390.us.i, %._crit_edge384.i
  %.1362.i = phi i32 [ 0, %._crit_edge384.i ], [ %i.fe, %._crit_edge390.us.i ] ; 6 uses
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  br i1 %.not407.i, label %._crit_edge394.thread.i, label %.lr.ph393.split.i

.lr.ph393.split.i:                                ; preds = %.loopexit.i
  %i.fv = add nsw i32 %i.j, -1
  %i.fw = zext i32 %i.fv to i64                   ; 3 uses
  %wide.trip.count437.i = zext i32 %i.j to i64    ; 2 uses
  %i.fx = add nsw i64 %wide.trip.count437.i, -1   ; 15 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph393.split.i
  %indvars.iv434.i = phi i64 [ 0, %.lr.ph393.split.i ], [ %indvars.iv.next435.i, %bb.i ] ; 5 uses
  %i.fy = icmp eq i64 %indvars.iv434.i, %i.fw
  %i.fz = select i1 %i.fy, i32 %.0357.i, i32 %.0356.i ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv434.i ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !70
  %i.gd = shl nsw i32 %i.gc, 6                    ; 2 uses
  %i.ge = load ptr, ptr %i.ga, align 16, !tbaa !64
  %i.gf = zext i32 %i.gd to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gf
  %i.gh = add i32 %i.fz, -51
  %i.gi = add i32 %.1362.i, %i.gd
  %i.gj = sub i32 %i.gh, %i.gi                    ; 2 uses
  %i.gk = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv434.i ; 4 uses
  %i.gl = zext i32 %i.gj to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.gk, ptr align 1 %i.gg, i64 %i.gl, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gl
  store i8 -128, ptr %i.gm, align 1, !tbaa !18
  %i.gn = shl i32 %i.fz, 3
  %i.go = add i32 %i.gn, 616
  %i.gp = icmp ult i32 %i.gj, 56                  ; 2 uses
  %i.gq = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.go) #8
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv434.i ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %.477.i = select i1 %i.gp, i32 1, i32 2
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gp, i64 60, i64 124
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.gk, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.gq, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !18
  store i32 %.477.i, ptr %i.gs, align 8, !tbaa !70
  store ptr %i.gk, ptr %i.gr, align 16, !tbaa !64
  %indvars.iv.next435.i = add nuw nsw i64 %indvars.iv434.i, 1 ; 2 uses
end_hunk_0
