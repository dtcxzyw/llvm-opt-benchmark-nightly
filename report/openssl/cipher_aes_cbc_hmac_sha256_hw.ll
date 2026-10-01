Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cipher_aes_cbc_hmac_sha256_hw?download=true
inline.NumInlined: 19
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aesni_cbc_hmac_sha256_tls1_multiblock_max_bufsize:bb.a
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
  store i32 %i.au, ptr %i.bo, align 8, !tbaa !52
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 %i.bm, ptr %i.bp, align 4, !tbaa !53
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
  %i.b = load ptr, ptr %1, align 8, !tbaa !62     ; 3 uses
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
  %i.j = and i32 %i.h, -4                         ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
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
  %.0356.i = phi i32 [ %i.ag, %bb.d ], [ %i.x, %bb.c ], [ %i.x, %bb.b ] ; 11 uses
  store ptr %i.d, ptr %2, align 16, !tbaa !65
  store ptr %i.d, ptr %4, align 16, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !68
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
  %i.ao = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.an) #8, !srcloc !69 ; 0 uses
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
  store ptr %i.au, ptr %i.av, align 16, !tbaa !65
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.i ; 4 uses
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !67
  %i.ax = getelementptr i8, ptr %i.aw, i64 -32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !68
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !68
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bb, ptr noundef nonnull align 1 dereferenceable(16) %.0364.i, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 1 dereferenceable(16) %.0364.i, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph383.split.i, label %bb.f, !llvm.loop !54

.lr.ph383.split.i:                                ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  store i64 %i.be, ptr %5, align 16
  %i.bf = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.be) #8, !srcloc !69 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.bh = add i32 %i.j, -1
  %i.bi = load i32, ptr %i.bg, align 8, !tbaa !8  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !8  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !8  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !8  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !8  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !8  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 224 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 777
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 778
  %i.ch = zext i32 %i.bh to i64
  %i.ci = add nsw i64 %wide.trip.count.i, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph383.split.i
  %indvars.iv419.i = phi i64 [ 0, %.lr.ph383.split.i ], [ %indvars.iv.next420.i, %bb.g ] ; 15 uses
  %i.cj = icmp eq i64 %indvars.iv419.i, %i.ch
  %i.ck = select i1 %i.cj, i32 %.0357.i, i32 %.0356.i ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv419.i
  store i32 %i.bi, ptr %i.cl, align 4, !tbaa !8
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv419.i
  store i32 %i.bk, ptr %i.cm, align 4, !tbaa !8
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv419.i
  store i32 %i.bn, ptr %i.cn, align 4, !tbaa !8
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv419.i
  store i32 %i.bq, ptr %i.co, align 4, !tbaa !8
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv419.i
  store i32 %i.bt, ptr %i.cp, align 4, !tbaa !8
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv419.i
  store i32 %i.bw, ptr %i.cq, align 4, !tbaa !8
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv419.i
  store i32 %i.bz, ptr %i.cr, align 4, !tbaa !8
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv419.i
  store i32 %i.cc, ptr %i.cs, align 4, !tbaa !8
  %i.ct = add i64 %indvars.iv419.i, %i.bf
  %i.cu = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ct) #8, !srcloc !70
  %i.cv = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv419.i ; 8 uses
  store i64 %i.cu, ptr %i.cv, align 16, !tbaa !18
  %i.cw = load i8, ptr %i.ce, align 8, !tbaa !18  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i8 %i.cw, ptr %i.cx, align 8, !tbaa !18
  %i.cy = load i8, ptr %i.cf, align 1, !tbaa !18  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 9
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !18
  %i.da = load i8, ptr %i.cg, align 2, !tbaa !18  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 10
  store i8 %i.da, ptr %i.db, align 2, !tbaa !18
  %i.dc = lshr i32 %i.ck, 8
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 11
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !18
  %i.df = trunc i32 %i.ck to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i8 %i.df, ptr %i.dg, align 4, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 13
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv419.i ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 16, !tbaa !65 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.dh, ptr noundef nonnull align 1 dereferenceable(51) %i.dj, i64 51, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 51
  store ptr %i.dk, ptr %i.di, align 16, !tbaa !65
  %i.dl = add i32 %i.ck, -51
  %i.dm = lshr i32 %i.dl, 6
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !71
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv419.i ; 2 uses
  store ptr %i.cv, ptr %i.do, align 16, !tbaa !65
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i32 1, ptr %i.dp, align 8, !tbaa !71
  %indvars.iv.next420.i = add nuw nsw i64 %indvars.iv419.i, 1 ; 13 uses
  %exitcond423.not.i = icmp eq i64 %indvars.iv419.i, %i.ci
  br i1 %exitcond423.not.i, label %._crit_edge384.loopexit.peel.begin.i, label %bb.g, !llvm.loop !55

._crit_edge384.loopexit.peel.begin.i:             ; preds = %bb.g
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next420.i
  store i32 %i.bi, ptr %i.dq, align 4, !tbaa !8
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next420.i
  store i32 %i.bk, ptr %i.dr, align 4, !tbaa !8
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next420.i
  store i32 %i.bn, ptr %i.ds, align 4, !tbaa !8
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next420.i
  store i32 %i.bq, ptr %i.dt, align 4, !tbaa !8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next420.i
  store i32 %i.bt, ptr %i.du, align 4, !tbaa !8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next420.i
  store i32 %i.bw, ptr %i.dv, align 4, !tbaa !8
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.next420.i
  store i32 %i.bz, ptr %i.dw, align 4, !tbaa !8
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next420.i
  store i32 %i.cc, ptr %i.dx, align 4, !tbaa !8
  %i.dy = add i64 %indvars.iv.next420.i, %i.bf
  %i.dz = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.dy) #8, !srcloc !70
  %i.ea = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv.next420.i ; 8 uses
  store i64 %i.dz, ptr %i.ea, align 16, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i8 %i.cw, ptr %i.eb, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 9
  store i8 %i.cy, ptr %i.ec, align 1, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 10
  store i8 %i.da, ptr %i.ed, align 2, !tbaa !18
  %i.ee = lshr i32 %.0357.i, 8
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 11
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !18
  %i.eh = trunc i32 %.0357.i to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i8 %i.eh, ptr %i.ei, align 4, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 13
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next420.i ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 16, !tbaa !65 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.ej, ptr noundef nonnull align 1 dereferenceable(51) %i.el, i64 51, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 51
  store ptr %i.em, ptr %i.ek, align 16, !tbaa !65
  %i.en = add i32 %.0357.i, -51
  %i.eo = lshr i32 %i.en, 6
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i32 %i.eo, ptr %i.ep, align 8, !tbaa !71
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next420.i ; 2 uses
  store ptr %i.ea, ptr %i.eq, align 16, !tbaa !65
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i32 1, ptr %i.er, align 8, !tbaa !71
  br label %._crit_edge384.i

._crit_edge384.i:                                 ; preds = %._crit_edge384.loopexit.peel.begin.i, %._crit_edge.thread.i
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  %i.es = call i32 @llvm.umin.i32(i32 %.0356.i, i32 %.0357.i)
  %i.et = add i32 %i.es, -51                      ; 2 uses
  %i.eu = lshr i32 %i.et, 6                       ; 2 uses
  %i.ev = icmp ugt i32 %i.et, 2111
  br i1 %i.ev, label %.preheader378.i, label %.loopexit.i

.preheader378.i:                                  ; preds = %._crit_edge384.i
  br i1 %.not407.i, label %.preheader.split.preheader.i, label %.lr.ph386.preheader.i

.lr.ph386.preheader.i:                            ; preds = %.preheader378.i
  %wide.trip.count427.i = zext i32 %i.j to i64    ; 2 uses
  br label %.lr.ph386.i

.lr.ph389.us.preheader.i:                         ; preds = %.lr.ph386.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %.lr.ph389.us.i

.preheader.split.preheader.i:                     ; preds = %.preheader378.i
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %.preheader.split.i

.lr.ph389.us.i:                                   ; preds = %._crit_edge390.us.i, %.lr.ph389.us.preheader.i
  %.0361.us.i = phi i32 [ %i.fo, %._crit_edge390.us.i ], [ 0, %.lr.ph389.us.preheader.i ]
  %.0360.us.i = phi i32 [ %i.fp, %._crit_edge390.us.i ], [ %i.eu, %.lr.ph389.us.preheader.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.ew, i32 noundef range(i32 0, 1073741824) %i.i) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph389.us.i
  %indvars.iv429.i = phi i64 [ 0, %.lr.ph389.us.i ], [ %indvars.iv.next430.i, %bb.h ] ; 4 uses
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv429.i ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 16, !tbaa !65
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 2048 ; 2 uses
  store ptr %i.fa, ptr %i.ey, align 16, !tbaa !65
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv429.i ; 2 uses
  store ptr %i.fa, ptr %i.fb, align 16, !tbaa !65
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !71
  %i.fe = add nsw i32 %i.fd, -32
  store i32 %i.fe, ptr %i.fc, align 8, !tbaa !71
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i32 32, ptr %i.ff, align 8, !tbaa !71
  %i.fg = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv429.i ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !68
  %i.fj = load <2 x ptr>, ptr %i.fg, align 8, !tbaa !73
  %i.fk = getelementptr inbounds nuw i8, <2 x ptr> %i.fj, i64 2048
  store <2 x ptr> %i.fk, ptr %i.fg, align 8, !tbaa !73
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i32 128, ptr %i.fl, align 8, !tbaa !74
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull align 1 dereferenceable(16) %i.fn, i64 16, i1 false)
  %indvars.iv.next430.i = add nuw nsw i64 %indvars.iv429.i, 1 ; 2 uses
  %exitcond433.not.i = icmp eq i64 %indvars.iv.next430.i, %wide.trip.count427.i
  br i1 %exitcond433.not.i, label %._crit_edge390.us.i, label %bb.h, !llvm.loop !56

._crit_edge390.us.i:                              ; preds = %bb.h
  %i.fo = add i32 %.0361.us.i, 2048               ; 2 uses
  %i.fp = add nsw i32 %.0360.us.i, -32            ; 2 uses
  %i.fq = icmp ugt i32 %i.fp, 32
  br i1 %i.fq, label %.lr.ph389.us.i, label %.loopexit.i, !llvm.loop !57

.lr.ph386.i:                                      ; preds = %.lr.ph386.i, %.lr.ph386.preheader.i
  %indvars.iv424.i = phi i64 [ 0, %.lr.ph386.preheader.i ], [ %indvars.iv.next425.i.1, %.lr.ph386.i ] ; 5 uses
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv424.i
  %i.fs = load ptr, ptr %i.fr, align 16, !tbaa !65
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv424.i ; 2 uses
  store ptr %i.fs, ptr %i.ft, align 16, !tbaa !65
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i32 32, ptr %i.fu, align 8, !tbaa !71
  %i.fv = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv424.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store i32 128, ptr %i.fw, align 16, !tbaa !74
  %indvars.iv.next425.i = or disjoint i64 %indvars.iv424.i, 1 ; 3 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next425.i
  %i.fy = load ptr, ptr %i.fx, align 16, !tbaa !65
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next425.i ; 2 uses
  store ptr %i.fy, ptr %i.fz, align 16, !tbaa !65
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i32 32, ptr %i.ga, align 8, !tbaa !71
  %i.gb = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.next425.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i32 128, ptr %i.gc, align 8, !tbaa !74
  %indvars.iv.next425.i.1 = add nuw nsw i64 %indvars.iv424.i, 2 ; 2 uses
  %exitcond428.not.i.1 = icmp eq i64 %indvars.iv.next425.i.1, %wide.trip.count427.i
  br i1 %exitcond428.not.i.1, label %.lr.ph389.us.preheader.i, label %.lr.ph386.i, !llvm.loop !58

.preheader.split.i:                               ; preds = %.preheader.split.i, %.preheader.split.preheader.i
  %.0360.i = phi i32 [ %i.gd, %.preheader.split.i ], [ %i.eu, %.preheader.split.preheader.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef 0) #7
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.ex, i32 noundef 0) #7
  %i.gd = add nsw i32 %.0360.i, -32               ; 2 uses
  %i.ge = icmp ugt i32 %i.gd, 32
  br i1 %i.ge, label %.preheader.split.i, label %.loopexit.thread.i, !llvm.loop !57

.loopexit.thread.i:                               ; preds = %.preheader.split.i
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef range(i32 0, 1073741824) 0) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  br label %._crit_edge394.thread.i

.loopexit.i:                                      ; preds = %._crit_edge390.us.i, %._crit_edge384.i
  %.1362.i = phi i32 [ 0, %._crit_edge384.i ], [ %i.fo, %._crit_edge390.us.i ] ; 6 uses
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  br i1 %.not407.i, label %._crit_edge394.thread.i, label %.lr.ph393.split.i

.lr.ph393.split.i:                                ; preds = %.loopexit.i
  %i.gf = add nsw i32 %i.j, -1
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %wide.trip.count437.i = zext i32 %i.j to i64    ; 2 uses
  %i.gh = add nsw i64 %wide.trip.count437.i, -1   ; 15 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph393.split.i
  %indvars.iv434.i = phi i64 [ 0, %.lr.ph393.split.i ], [ %indvars.iv.next435.i, %bb.i ] ; 5 uses
  %i.gi = icmp eq i64 %indvars.iv434.i, %i.gg
  %i.gj = select i1 %i.gi, i32 %.0357.i, i32 %.0356.i ; 2 uses
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv434.i ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !71
  %i.gn = shl nsw i32 %i.gm, 6                    ; 2 uses
  %i.go = load ptr, ptr %i.gk, align 16, !tbaa !65
  %i.gp = zext i32 %i.gn to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gp
  %i.gr = add i32 %i.gj, -51
  %i.gs = add i32 %.1362.i, %i.gn
  %i.gt = sub i32 %i.gr, %i.gs                    ; 2 uses
  %i.gu = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv434.i ; 4 uses
  %i.gv = zext i32 %i.gt to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.gu, ptr align 1 %i.gq, i64 %i.gv, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gv
  store i8 -128, ptr %i.gw, align 1, !tbaa !18
  %i.gx = shl i32 %i.gj, 3
  %i.gy = add i32 %i.gx, 616
  %i.gz = icmp ult i32 %i.gt, 56                  ; 2 uses
  %i.ha = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gy) #8
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv434.i ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %.477.i = select i1 %i.gz, i32 1, i32 2
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gz, i64 60, i64 124
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.gu, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.ha, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !18
  store i32 %.477.i, ptr %i.hc, align 8, !tbaa !71
  store ptr %i.gu, ptr %i.hb, align 16, !tbaa !65
  %indvars.iv.next435.i = add nuw nsw i64 %indvars.iv434.i, 1 ; 2 uses
  %exitcond438.not.i = icmp eq i64 %indvars.iv.next435.i, %i.gh
  br i1 %exitcond438.not.i, label %._crit_edge394.loopexit.peel.begin.i, label %bb.i, !llvm.loop !59

._crit_edge394.loopexit.peel.begin.i:             ; preds = %bb.i
  %i.hd = icmp eq i64 %i.gh, %i.gg
  %i.he = select i1 %i.hd, i32 %.0357.i, i32 %.0356.i ; 7 uses
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.gh ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !71
  %i.hi = shl nsw i32 %i.hh, 6                    ; 2 uses
  %i.hj = load ptr, ptr %i.hf, align 16, !tbaa !65
  %i.hk = zext i32 %i.hi to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hk
  %.neg11 = add i32 %i.he, -51
  %i.hm = add i32 %.1362.i, %i.hi
  %i.hn = sub i32 %.neg11, %i.hm                  ; 2 uses
  %i.ho = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %i.gh ; 4 uses
  %i.hp = zext i32 %i.hn to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ho, ptr align 1 %i.hl, i64 %i.hp, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hp
  store i8 -128, ptr %i.hq, align 1, !tbaa !18
  %i.hr = shl i32 %i.he, 3
  %i.hs = add i32 %i.hr, 616
  %i.ht = icmp ult i32 %i.hn, 56                  ; 2 uses
  %i.hu = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hs) #8
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.gh ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %.479.i = select i1 %i.ht, i32 1, i32 2
  %.478.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ht, i64 60, i64 124
  %.478.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.478.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.hu, ptr %.478.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !18
  store i32 %.479.i, ptr %i.hw, align 8, !tbaa !71
  store ptr %i.ho, ptr %i.hv, align 16, !tbaa !65
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.hy = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ia = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ic = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.ie = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ig = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.ii = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ik = getelementptr inbounds nuw i8, ptr %i.u, i64 224 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 644
  br label %bb.j

._crit_edge394.thread.i:                          ; preds = %.loopexit.i, %.loopexit.thread.i
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  br label %._crit_edge406.i

bb.j:                                             ; preds = %bb.j, %._crit_edge394.loopexit.peel.begin.i
  %indvars.iv441.i = phi i64 [ 0, %._crit_edge394.loopexit.peel.begin.i ], [ %indvars.iv.next442.i, %bb.j ] ; 11 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv441.i ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !8
  %i.io = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.in) #8, !srcloc !75
  %i.ip = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv441.i ; 11 uses
  store i32 %i.io, ptr %i.ip, align 16, !tbaa !18
  %i.iq = load i32, ptr %i.hx, align 8, !tbaa !8
  store i32 %i.iq, ptr %i.im, align 4, !tbaa !8
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv441.i ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !8
  %i.it = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.is) #8, !srcloc !76
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !18
  %i.iv = load i32, ptr %i.hz, align 4, !tbaa !8
  store i32 %i.iv, ptr %i.ir, align 4, !tbaa !8
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv441.i ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !8
  %i.iy = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ix) #8, !srcloc !77
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store i32 %i.iy, ptr %i.iz, align 8, !tbaa !18
  %i.ja = load i32, ptr %i.ib, align 8, !tbaa !8
  store i32 %i.ja, ptr %i.iw, align 4, !tbaa !8
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv441.i ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !8
  %i.jd = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jc) #8, !srcloc !78
  %i.je = getelementptr inbounds nuw i8, ptr %i.ip, i64 12
  store i32 %i.jd, ptr %i.je, align 4, !tbaa !18
  %i.jf = load i32, ptr %i.id, align 4, !tbaa !8
  store i32 %i.jf, ptr %i.jb, align 4, !tbaa !8
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv441.i ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !8
  %i.ji = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jh) #8, !srcloc !79
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i32 %i.ji, ptr %i.jj, align 16, !tbaa !18
  %i.jk = load i32, ptr %i.if, align 8, !tbaa !8
  store i32 %i.jk, ptr %i.jg, align 4, !tbaa !8
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv441.i ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !8
  %i.jn = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jm) #8, !srcloc !80
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ip, i64 20
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !18
  %i.jp = load i32, ptr %i.ih, align 4, !tbaa !8
  store i32 %i.jp, ptr %i.jl, align 4, !tbaa !8
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv441.i ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !8
  %i.js = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jr) #8, !srcloc !81
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  store i32 %i.js, ptr %i.jt, align 8, !tbaa !18
  %i.ju = load i32, ptr %i.ij, align 8, !tbaa !8
  store i32 %i.ju, ptr %i.jq, align 4, !tbaa !8
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv441.i ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !8
  %i.jx = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jw) #8, !srcloc !82
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ip, i64 28
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !18
  %i.jz = load i32, ptr %i.il, align 4, !tbaa !8
  store i32 %i.jz, ptr %i.jv, align 4, !tbaa !8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  store i8 -128, ptr %i.ka, align 16, !tbaa !18
  %i.kb = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 768) #8, !srcloc !83
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ip, i64 60
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !18
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv441.i ; 2 uses
  store ptr %i.ip, ptr %i.kd, align 16, !tbaa !65
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i32 1, ptr %i.ke, align 8, !tbaa !71
  %indvars.iv.next442.i = add nuw nsw i64 %indvars.iv441.i, 1 ; 2 uses
  %exitcond445.not.i = icmp eq i64 %indvars.iv.next442.i, %wide.trip.count437.i
  br i1 %exitcond445.not.i, label %.lr.ph405.split.i, label %bb.j, !llvm.loop !60

.lr.ph405.split.i:                                ; preds = %bb.j
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 777 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 778 ; 2 uses
  %6 = sub i32 %.0356.i, %.1362.i
  %7 = zext i32 %6 to i64
  %8 = add nuw i32 %.0356.i, 21
  %9 = zext i32 %8 to i64                         ; 2 uses
  %10 = trunc i32 %.0356.i to i8
  %11 = and i8 %10, 15
  %12 = xor i8 %11, 15
  %13 = and i32 %.0356.i, 15
  %14 = xor i32 %13, 15
  %15 = zext nneg i32 %14 to i64                  ; 2 uses
  %16 = add nuw nsw i64 %15, 1
  %17 = and i32 %.0356.i, -16                     ; 3 uses
  %invariant.op = sub i32 %17, %.1362.i
  %.reass.i = add i32 %invariant.op, 48
  %18 = lshr i32 %.reass.i, 4
  %19 = add nuw i32 %17, 64                       ; 2 uses
  %20 = lshr i32 %19, 8
  %21 = trunc i32 %20 to i8
  %22 = trunc i32 %19 to i8
  %23 = add nuw i32 %17, 69
  %24 = zext i32 %23 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph405.split.i
  %indvars.iv447.i = phi i64 [ 0, %.lr.ph405.split.i ], [ %indvars.iv.next448.i, %bb.k ] ; 10 uses
  %.0354403.i = phi ptr [ %i.b, %.lr.ph405.split.i ], [ %scevgep446.i, %bb.k ] ; 7 uses
  %.0363401.i = phi i64 [ 0, %.lr.ph405.split.i ], [ %i.md, %bb.k ]
  %i.ki = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv447.i ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !68
  %i.kl = load ptr, ptr %i.ki, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kk, ptr align 1 %i.kl, i64 %7, i1 false)
  %i.km = load ptr, ptr %i.kj, align 8, !tbaa !68
  store ptr %i.km, ptr %i.ki, align 8, !tbaa !67
  %i.kn = getelementptr i8, ptr %.0354403.i, i64 %9 ; 9 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv447.i
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !8
  %i.kq = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.kp) #8, !srcloc !84
  store i32 %i.kq, ptr %i.kn, align 4, !tbaa !8
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv447.i
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !8
  %i.kt = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ks) #8, !srcloc !85
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  store i32 %i.kt, ptr %i.ku, align 4, !tbaa !8
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv447.i
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !8
  %i.kx = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.kw) #8, !srcloc !86
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !8
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv447.i
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !8
  %i.lb = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.la) #8, !srcloc !87
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  store i32 %i.lb, ptr %i.lc, align 4, !tbaa !8
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv447.i
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !8
  %i.lf = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.le) #8, !srcloc !88
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !8
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv447.i
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !8
  %i.lj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.li) #8, !srcloc !89
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kn, i64 20
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !8
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv447.i
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !8
  %i.ln = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lm) #8, !srcloc !90
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !8
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv447.i
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !8
  %i.lr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lq) #8, !srcloc !91
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kn, i64 28
  store i32 %i.lr, ptr %i.ls, align 4, !tbaa !8
  %i.lt = getelementptr i8, ptr %i.kn, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.lt, i8 %12, i64 %16, i1 false), !tbaa !18
  %scevgep.i = getelementptr i8, ptr %.0354403.i, i64 33
  %i.lu = getelementptr i8, ptr %scevgep.i, i64 %9
  %scevgep446.i = getelementptr i8, ptr %i.lu, i64 %15 ; 7 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store i32 %18, ptr %i.lv, align 8, !tbaa !74
  %i.lw = load i8, ptr %i.kf, align 8, !tbaa !18
  store i8 %i.lw, ptr %.0354403.i, align 1, !tbaa !18
  %i.lx = load i8, ptr %i.kg, align 1, !tbaa !18
  %i.ly = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 1
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !18
  %i.lz = load i8, ptr %i.kh, align 2, !tbaa !18
  %i.ma = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 2
  store i8 %i.lz, ptr %i.ma, align 1, !tbaa !18
  %i.mb = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 3
  store i8 %21, ptr %i.mb, align 1, !tbaa !18
  %i.mc = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 4
  store i8 %22, ptr %i.mc, align 1, !tbaa !18
  %i.md = add i64 %.0363401.i, %24                ; 2 uses
  %indvars.iv.next448.i = add nuw nsw i64 %indvars.iv447.i, 1 ; 2 uses
  %exitcond451.not.i = icmp eq i64 %indvars.iv.next448.i, %i.gh
  br i1 %exitcond451.not.i, label %._crit_edge406.loopexit.peel.begin.i, label %bb.k, !llvm.loop !61

._crit_edge406.loopexit.peel.begin.i:             ; preds = %bb.k
  %i.me = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %i.gh ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 16, !tbaa !68
  %i.mh = load ptr, ptr %i.me, align 8, !tbaa !67
  %i.mi = sub i32 %i.he, %.1362.i
  %i.mj = zext i32 %i.mi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mg, ptr align 1 %i.mh, i64 %i.mj, i1 false)
  %i.mk = load ptr, ptr %i.mf, align 16, !tbaa !68
  store ptr %i.mk, ptr %i.me, align 8, !tbaa !67
  %i.ml = add i32 %i.he, 21
  %i.mm = zext i32 %i.ml to i64
  %i.mn = getelementptr i8, ptr %scevgep446.i, i64 %i.mm ; 9 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.gh
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !8
  %i.mq = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.mp) #8, !srcloc !84
  store i32 %i.mq, ptr %i.mn, align 4, !tbaa !8
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.gh
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !8
  %i.mt = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ms) #8, !srcloc !85
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !8
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.gh
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !8
  %i.mx = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.mw) #8, !srcloc !86
  %i.my = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !8
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.gh
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !8
  %i.nb = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.na) #8, !srcloc !87
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mn, i64 12
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !8
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.gh
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !8
  %i.nf = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ne) #8, !srcloc !88
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !8
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.gh
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !8
  %i.nj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ni) #8, !srcloc !89
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mn, i64 20
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !8
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.gh
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !8
  %i.nn = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nm) #8, !srcloc !90
  %i.no = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  store i32 %i.nn, ptr %i.no, align 4, !tbaa !8
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.gh
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !8
  %i.nr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nq) #8, !srcloc !91
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mn, i64 28
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !8
  %i.nt = getelementptr i8, ptr %i.mn, i64 32
  %i.nu = trunc i32 %i.he to i8
  %i.nv = and i8 %i.nu, 15
  %i.nw = xor i8 %i.nv, 15
  %i.nx = and i32 %i.he, 15
  %narrow.i = sub nuw nsw i32 16, %i.nx
  %i.ny = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.nt, i8 %i.nw, i64 %i.ny, i1 false), !tbaa !18
  %i.nz = and i32 %i.he, -16                      ; 3 uses
  %reass.sub.peel.i = add i32 %i.nz, 48
  %i.oa = sub i32 %reass.sub.peel.i, %.1362.i
  %i.ob = lshr i32 %i.oa, 4
  %i.oc = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store i32 %i.ob, ptr %i.oc, align 8, !tbaa !74
  %i.od = add i32 %i.nz, 64                       ; 2 uses
  %i.oe = load i8, ptr %i.kf, align 8, !tbaa !18
  store i8 %i.oe, ptr %scevgep446.i, align 1, !tbaa !18
  %i.of = load i8, ptr %i.kg, align 1, !tbaa !18
  %i.og = getelementptr inbounds nuw i8, ptr %scevgep446.i, i64 1
  store i8 %i.of, ptr %i.og, align 1, !tbaa !18
  %i.oh = load i8, ptr %i.kh, align 2, !tbaa !18
  %i.oi = getelementptr inbounds nuw i8, ptr %scevgep446.i, i64 2
  store i8 %i.oh, ptr %i.oi, align 1, !tbaa !18
  %i.oj = lshr i32 %i.od, 8
  %i.ok = trunc i32 %i.oj to i8
  %i.ol = getelementptr inbounds nuw i8, ptr %scevgep446.i, i64 3
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !18
  %i.om = trunc i32 %i.od to i8
  %i.on = getelementptr inbounds nuw i8, ptr %scevgep446.i, i64 4
  store i8 %i.om, ptr %i.on, align 1, !tbaa !18
  %i.oo = add i32 %i.nz, 69
  %i.op = zext i32 %i.oo to i64
  %i.oq = add i64 %i.md, %i.op
  br label %._crit_edge406.i

._crit_edge406.i:                                 ; preds = %._crit_edge406.loopexit.peel.begin.i, %._crit_edge394.thread.i
  %.0363.lcssa.i = phi i64 [ 0, %._crit_edge394.thread.i ], [ %i.oq, %._crit_edge406.loopexit.peel.begin.i ] ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.or, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @OPENSSL_cleanse(ptr noundef nonnull %5, i64 noundef 1024) #7
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.u, i64 noundef 256) #7
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 %.0363.lcssa.i, ptr %i.os, align 8, !tbaa !92
  %i.ot = trunc i64 %.0363.lcssa.i to i32
  br label %tls1_multi_block_encrypt.exit

tls1_multi_block_encrypt.exit:                    ; preds = %bb.a, %._crit_edge406.i
  %.0.i = phi i32 [ %i.ot, %._crit_edge406.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @aesni_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @aesni_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SHA256_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @SHA256_Final(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @aesni_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @sha256_block_data_order(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @SHA256_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @sha256_multi_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @aesni_multi_cbc_encrypt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(none) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"p1 _ZTS17prov_cipher_hw_st", !9, i64 0}
!13 = !{!"p1 _ZTS15ossl_lib_ctx_st", !9, i64 0}
!14 = !{!"prov_cipher_ctx_st", !4, i64 0, !4, i64 16, !4, i64 32, !9, i64 48, !4, i64 56, !5, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !5, i64 104, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 112, !11, i64 120, !5, i64 128, !10, i64 136, !5, i64 144, !10, i64 152, !5, i64 160, !12, i64 168, !9, i64 176, !13, i64 184}
!15 = !{!"aes_key_st", !4, i64 0, !5, i64 240}
!16 = !{!"p1 _ZTS34prov_cipher_hw_aes_hmac_sha_ctx_st", !9, i64 0}
!17 = !{!"prov_aes_hmac_sha_ctx_st", !14, i64 0, !15, i64 192, !10, i64 440, !4, i64 448, !16, i64 464, !5, i64 472, !5, i64 476, !10, i64 480, !10, i64 488, !10, i64 496}
!18 = !{!4, !4, i64 0}
!19 = !{i64 0, i64 32, !18, i64 32, i64 4, !8, i64 36, i64 4, !8, i64 40, i64 64, !18, i64 104, i64 4, !8, i64 108, i64 4, !8}
!20 = !{!17, !10, i64 440}
!21 = !{!"SHA256state_st", !4, i64 0, !5, i64 32, !5, i64 36, !4, i64 40, !5, i64 104, !5, i64 108}
!22 = !{!21, !5, i64 36}
!23 = !{!21, !5, i64 32}
!24 = !{!21, !5, i64 104}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"", !11, i64 0, !11, i64 8, !10, i64 16, !5, i64 24}
!27 = !{!26, !11, i64 8}
!28 = !{!26, !5, i64 24}
!29 = !{!26, !10, i64 16}
end_hunk_0
