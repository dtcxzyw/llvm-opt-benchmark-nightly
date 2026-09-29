Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cipher_aes_cbc_hmac_sha1_hw?download=true
inline.NumInlined: 19
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aesni_cbc_hmac_sha1_tls1_multiblock_max_bufsize:bb.a
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @aesni_cbc_hmac_sha1_tls1_multiblock_aad(ptr noundef initializes((472, 476)) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9     ; 3 uses
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9
  %i.i = zext i8 %i.h to i32
  %i.j = or disjoint i32 %i.f, %i.i               ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !34   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  store i32 %i.l, ptr %i.m, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 2
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w
  %i.y = icmp samesign ult i32 %i.x, 770
  br i1 %i.y, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not57 = icmp eq i32 %i.j, 0
  br i1 %.not57, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp ult i8 %i.d, 16
  br i1 %i.z, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp ugt i8 %i.d, 31
  br i1 %i.aa, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 4, !tbaa !8
  %i.ac = and i32 %i.ab, 32
  %.not58 = icmp eq i32 %i.ac, 0
  %spec.select = select i1 %.not58, i32 1, i32 2
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.ad = lshr i32 %i.l, 2                        ; 2 uses
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = icmp ult i32 %i.l, 12
  %or.cond = and i1 %i.af, %i.ae
  br i1 %or.cond, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !35
  %i.ai = trunc i64 %i.ah to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.h
  %.049 = phi i32 [ %i.ad, %bb.h ], [ %spec.select, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %.0 = phi i32 [ %i.ai, %bb.h ], [ %i.j, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr noundef nonnull align 8 dereferenceable(96) %i.ak, i64 96, i1 false), !tbaa.struct !10
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !33  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25 ; 2 uses
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %.thread62, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = zext i32 %i.an to i64
  %i.ap = sub nsw i64 64, %i.ao                   ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 13) ; 3 uses
  %i.aq = tail call i32 @SHA1_Update(ptr noundef nonnull %i.aj, ptr noundef %i.al, i64 noundef %spec.select.i) #8 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %spec.select.i
  %i.as = sub nuw nsw i64 13, %spec.select.i
  %.not40.i = icmp ugt i64 %i.ap, 12
  br i1 %.not40.i, label %sha1_update.exit, label %.thread62

.thread62:                                        ; preds = %bb.i, %bb.j
  %.1.i65 = phi ptr [ %i.ar, %bb.j ], [ %i.al, %bb.i ]
  %i.at = phi i64 [ %i.as, %bb.j ], [ 13, %bb.i ]
  %i.au = tail call i32 @SHA1_Update(ptr noundef nonnull %i.aj, ptr noundef %.1.i65, i64 noundef %i.at) #8 ; 0 uses
  br label %sha1_update.exit

sha1_update.exit:                                 ; preds = %bb.j, %.thread62
  %i.av = shl nuw nsw i32 %.049, 2                ; 3 uses
  %i.aw = add nuw nsw i32 %.049, 1                ; 3 uses
  %i.ax = lshr i32 %.0, %i.aw                     ; 6 uses
  %i.ay = add i32 %i.ax, %.0
  %i.az = shl i32 %i.ax, %i.aw
  %i.ba = sub i32 %i.ay, %i.az                    ; 5 uses
  %i.bb = icmp ugt i32 %i.ba, %i.ax
  br i1 %i.bb, label %bb.k, label %bb.m

bb.k:                                             ; preds = %sha1_update.exit
  %i.bc = add i32 %i.ba, 22
  %i.bd = and i32 %i.bc, 63
  %i.be = add nsw i32 %i.av, -1                   ; 2 uses
  %i.bf = icmp samesign ult i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = add nuw nsw i32 %i.ax, 1
  %i.bh = sub i32 %i.ba, %i.be
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %sha1_update.exit
  %.048 = phi i32 [ %i.bg, %bb.l ], [ %i.ax, %bb.k ], [ %i.ax, %sha1_update.exit ]
  %.047 = phi i32 [ %i.bh, %bb.l ], [ %i.ba, %bb.k ], [ %i.ba, %sha1_update.exit ]
  %i.bi = add nuw nsw i32 %.048, 36
  %i.bj = and i32 %i.bi, -16                      ; 2 uses
  %i.bk = add nuw nsw i32 %i.bj, 21
  %i.bl = shl i32 %i.bk, %i.aw
  %i.bm = add i32 %.047, 36
  %i.bn = and i32 %i.bm, -16
  %i.bo = sub i32 %i.bn, %i.bj
  %i.bp = add i32 %i.bo, %i.bl
  store i32 %i.av, ptr %i.k, align 8, !tbaa !34
  store i32 %i.av, ptr %i.m, align 8, !tbaa !52
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !53
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.g, %bb.d, %bb.b, %bb.m
  %.050 = phi i32 [ -1, %bb.g ], [ -1, %bb.b ], [ 1, %bb.m ], [ 0, %bb.d ], [ -1, %bb.a ]
  ret i32 %.050
}

; Function Attrs: nounwind uwtable
define internal i32 @aesni_cbc_hmac_sha1_tls1_multiblock_encrypt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %2 = alloca [8 x %struct.HASH_DESC], align 16   ; 13 uses
  %3 = alloca [8 x %struct.HASH_DESC], align 16   ; 17 uses
  %4 = alloca [8 x %struct.CIPH_DESC], align 16   ; 14 uses
  %i.a = alloca [192 x i8], align 16              ; 4 uses
  %5 = alloca [8 x %union.anon.3], align 16       ; 18 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !62     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.i = lshr i32 %i.h, 2                         ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.j = and i32 %i.h, -4                         ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = shl i32 %i.i, 6
  %i.n = zext i32 %i.m to i64
  %i.o = call i32 @RAND_bytes_ex(ptr noundef %i.l, ptr noundef nonnull %5, i64 noundef %i.n, i32 noundef 0) #8
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %tls1_multi_block_encrypt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = and i64 %i.r, 16
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 23 uses
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
  %.0303.i = phi i32 [ %i.ah, %bb.d ], [ %i.aa, %bb.c ], [ %i.aa, %bb.b ] ; 7 uses
  %.0302.i = phi i32 [ %i.ag, %bb.d ], [ %i.x, %bb.c ], [ %i.x, %bb.b ] ; 11 uses
  store ptr %i.d, ptr %2, align 16, !tbaa !65
  store ptr %i.d, ptr %4, align 16, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !68
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ak, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false)
  %.not353.i = icmp eq i32 %i.i, 0                ; 3 uses
  br i1 %.not353.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.an = load i64, ptr %i.am, align 4            ; 2 uses
  store i64 %i.an, ptr %5, align 16
  %i.ao = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.an) #9, !srcloc !69 ; 0 uses
  br label %._crit_edge330.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ap = add nuw i32 %.0302.i, 36
  %i.aq = and i32 %i.ap, -16
  %i.ar = add nuw i32 %i.aq, 21
  %i.as = zext i32 %.0302.i to i64
  %i.at = zext i32 %i.ar to i64
  %wide.trip.count.i = zext i32 %i.j to i64       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %i.au = phi ptr [ %i.d, %.lr.ph.i ], [ %i.av, %bb.f ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %.pn325.i = phi ptr [ %5, %.lr.ph.i ], [ %.0311.i, %bb.f ]
  %.0311.i = getelementptr inbounds nuw i8, ptr %.pn325.i, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i
  store ptr %i.av, ptr %i.aw, align 16, !tbaa !65
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.i ; 4 uses
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !67
  %i.ay = getelementptr i8, ptr %i.ax, i64 -32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !68
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.at ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !68
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bc, ptr noundef nonnull align 1 dereferenceable(16) %.0311.i, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 1 dereferenceable(16) %.0311.i, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph329.split.i, label %bb.f, !llvm.loop !54

.lr.ph329.split.i:                                ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.bf = load i64, ptr %i.be, align 4            ; 2 uses
  store i64 %i.bf, ptr %5, align 16
  %i.bg = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bf) #9, !srcloc !69 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.bi = add i32 %i.j, -1
  %i.bj = load i32, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 700
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !27 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !28 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !29 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !30 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 733
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 734
  %i.bz = zext i32 %i.bi to i64
  %i.ca = add nsw i64 %wide.trip.count.i, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph329.split.i
  %indvars.iv365.i = phi i64 [ 0, %.lr.ph329.split.i ], [ %indvars.iv.next366.i, %bb.g ] ; 12 uses
  %i.cb = icmp eq i64 %indvars.iv365.i, %i.bz
  %i.cc = select i1 %i.cb, i32 %.0303.i, i32 %.0302.i ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv365.i
  store i32 %i.bj, ptr %i.cd, align 4, !tbaa !8
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv365.i
  store i32 %i.bl, ptr %i.ce, align 4, !tbaa !8
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv365.i
  store i32 %i.bo, ptr %i.cf, align 4, !tbaa !8
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv365.i
  store i32 %i.br, ptr %i.cg, align 4, !tbaa !8
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv365.i
  store i32 %i.bu, ptr %i.ch, align 4, !tbaa !8
  %i.ci = add i64 %indvars.iv365.i, %i.bg
  %i.cj = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ci) #9, !srcloc !70
  %i.ck = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv365.i ; 8 uses
  store i64 %i.cj, ptr %i.ck, align 16, !tbaa !9
  %i.cl = load i8, ptr %i.bw, align 4, !tbaa !9   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i8 %i.cl, ptr %i.cm, align 8, !tbaa !9
  %i.cn = load i8, ptr %i.bx, align 1, !tbaa !9   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 9
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !9
  %i.cp = load i8, ptr %i.by, align 2, !tbaa !9   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 10
  store i8 %i.cp, ptr %i.cq, align 2, !tbaa !9
  %i.cr = lshr i32 %i.cc, 8
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 11
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !9
  %i.cu = trunc i32 %i.cc to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i8 %i.cu, ptr %i.cv, align 4, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 13
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv365.i ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 16, !tbaa !65 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.cw, ptr noundef nonnull align 1 dereferenceable(51) %i.cy, i64 51, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 51
  store ptr %i.cz, ptr %i.cx, align 16, !tbaa !65
  %i.da = add i32 %i.cc, -51
  %i.db = lshr i32 %i.da, 6
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !71
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv365.i ; 2 uses
  store ptr %i.ck, ptr %i.dd, align 16, !tbaa !65
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 1, ptr %i.de, align 8, !tbaa !71
  %indvars.iv.next366.i = add nuw nsw i64 %indvars.iv365.i, 1 ; 10 uses
  %exitcond369.not.i = icmp eq i64 %indvars.iv365.i, %i.ca
  br i1 %exitcond369.not.i, label %._crit_edge330.loopexit.peel.begin.i, label %bb.g, !llvm.loop !55

._crit_edge330.loopexit.peel.begin.i:             ; preds = %bb.g
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next366.i
  store i32 %i.bj, ptr %i.df, align 4, !tbaa !8
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next366.i
  store i32 %i.bl, ptr %i.dg, align 4, !tbaa !8
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next366.i
  store i32 %i.bo, ptr %i.dh, align 4, !tbaa !8
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next366.i
  store i32 %i.br, ptr %i.di, align 4, !tbaa !8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next366.i
  store i32 %i.bu, ptr %i.dj, align 4, !tbaa !8
  %i.dk = add i64 %indvars.iv.next366.i, %i.bg
  %i.dl = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.dk) #9, !srcloc !70
  %i.dm = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv.next366.i ; 8 uses
  store i64 %i.dl, ptr %i.dm, align 16, !tbaa !9
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i8 %i.cl, ptr %i.dn, align 8, !tbaa !9
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 9
  store i8 %i.cn, ptr %i.do, align 1, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 10
  store i8 %i.cp, ptr %i.dp, align 2, !tbaa !9
  %i.dq = lshr i32 %.0303.i, 8
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 11
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !9
  %i.dt = trunc i32 %.0303.i to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i8 %i.dt, ptr %i.du, align 4, !tbaa !9
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 13
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next366.i ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 16, !tbaa !65 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.dv, ptr noundef nonnull align 1 dereferenceable(51) %i.dx, i64 51, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 51
  store ptr %i.dy, ptr %i.dw, align 16, !tbaa !65
  %i.dz = add i32 %.0303.i, -51
  %i.ea = lshr i32 %i.dz, 6
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 %i.ea, ptr %i.eb, align 8, !tbaa !71
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next366.i ; 2 uses
  store ptr %i.dm, ptr %i.ec, align 16, !tbaa !65
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i32 1, ptr %i.ed, align 8, !tbaa !71
  br label %._crit_edge330.i

._crit_edge330.i:                                 ; preds = %._crit_edge330.loopexit.peel.begin.i, %._crit_edge.thread.i
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  %i.ee = call i32 @llvm.umin.i32(i32 %.0302.i, i32 %.0303.i)
  %i.ef = add i32 %i.ee, -51                      ; 2 uses
  %i.eg = lshr i32 %i.ef, 6                       ; 2 uses
  %i.eh = icmp ugt i32 %i.ef, 2111
  br i1 %i.eh, label %.preheader324.i, label %.loopexit.i

.preheader324.i:                                  ; preds = %._crit_edge330.i
  br i1 %.not353.i, label %.preheader.split.preheader.i, label %.lr.ph332.preheader.i

.lr.ph332.preheader.i:                            ; preds = %.preheader324.i
  %wide.trip.count373.i = zext i32 %i.j to i64    ; 2 uses
  br label %.lr.ph332.i

.lr.ph335.us.preheader.i:                         ; preds = %.lr.ph332.i
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %.lr.ph335.us.i

.preheader.split.preheader.i:                     ; preds = %.preheader324.i
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %.preheader.split.i

.lr.ph335.us.i:                                   ; preds = %._crit_edge336.us.i, %.lr.ph335.us.preheader.i
  %.0308.us.i = phi i32 [ %i.fa, %._crit_edge336.us.i ], [ 0, %.lr.ph335.us.preheader.i ]
  %.0307.us.i = phi i32 [ %i.fb, %._crit_edge336.us.i ], [ %i.eg, %.lr.ph335.us.preheader.i ]
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.ei, i32 noundef range(i32 0, 1073741824) %i.i) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph335.us.i
  %indvars.iv375.i = phi i64 [ 0, %.lr.ph335.us.i ], [ %indvars.iv.next376.i, %bb.h ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv375.i ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 16, !tbaa !65
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 2048 ; 2 uses
  store ptr %i.em, ptr %i.ek, align 16, !tbaa !65
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv375.i ; 2 uses
  store ptr %i.em, ptr %i.en, align 16, !tbaa !65
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !71
  %i.eq = add nsw i32 %i.ep, -32
  store i32 %i.eq, ptr %i.eo, align 8, !tbaa !71
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i32 32, ptr %i.er, align 8, !tbaa !71
  %i.es = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv375.i ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !68
  %i.ev = load <2 x ptr>, ptr %i.es, align 8, !tbaa !73
  %i.ew = getelementptr inbounds nuw i8, <2 x ptr> %i.ev, i64 2048
  store <2 x ptr> %i.ew, ptr %i.es, align 8, !tbaa !73
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i32 128, ptr %i.ex, align 8, !tbaa !74
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 1 dereferenceable(16) %i.ez, i64 16, i1 false)
  %indvars.iv.next376.i = add nuw nsw i64 %indvars.iv375.i, 1 ; 2 uses
  %exitcond379.not.i = icmp eq i64 %indvars.iv.next376.i, %wide.trip.count373.i
  br i1 %exitcond379.not.i, label %._crit_edge336.us.i, label %bb.h, !llvm.loop !56

._crit_edge336.us.i:                              ; preds = %bb.h
  %i.fa = add i32 %.0308.us.i, 2048               ; 2 uses
  %i.fb = add nsw i32 %.0307.us.i, -32            ; 2 uses
  %i.fc = icmp ugt i32 %i.fb, 32
  br i1 %i.fc, label %.lr.ph335.us.i, label %.loopexit.i, !llvm.loop !57

.lr.ph332.i:                                      ; preds = %.lr.ph332.i, %.lr.ph332.preheader.i
  %indvars.iv370.i = phi i64 [ 0, %.lr.ph332.preheader.i ], [ %indvars.iv.next371.i.1, %.lr.ph332.i ] ; 5 uses
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv370.i
  %i.fe = load ptr, ptr %i.fd, align 16, !tbaa !65
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv370.i ; 2 uses
  store ptr %i.fe, ptr %i.ff, align 16, !tbaa !65
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i32 32, ptr %i.fg, align 8, !tbaa !71
  %i.fh = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv370.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i32 128, ptr %i.fi, align 16, !tbaa !74
  %indvars.iv.next371.i = or disjoint i64 %indvars.iv370.i, 1 ; 3 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next371.i
  %i.fk = load ptr, ptr %i.fj, align 16, !tbaa !65
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next371.i ; 2 uses
  store ptr %i.fk, ptr %i.fl, align 16, !tbaa !65
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i32 32, ptr %i.fm, align 8, !tbaa !71
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.next371.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i32 128, ptr %i.fo, align 8, !tbaa !74
  %indvars.iv.next371.i.1 = add nuw nsw i64 %indvars.iv370.i, 2 ; 2 uses
  %exitcond374.not.i.1 = icmp eq i64 %indvars.iv.next371.i.1, %wide.trip.count373.i
  br i1 %exitcond374.not.i.1, label %.lr.ph335.us.preheader.i, label %.lr.ph332.i, !llvm.loop !58

.preheader.split.i:                               ; preds = %.preheader.split.i, %.preheader.split.preheader.i
  %.0307.i = phi i32 [ %i.fp, %.preheader.split.i ], [ %i.eg, %.preheader.split.preheader.i ]
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef 0) #8
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.ej, i32 noundef 0) #8
  %i.fp = add nsw i32 %.0307.i, -32               ; 2 uses
  %i.fq = icmp ugt i32 %i.fp, 32
  br i1 %i.fq, label %.preheader.split.i, label %.loopexit.thread.i, !llvm.loop !57

.loopexit.thread.i:                               ; preds = %.preheader.split.i
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef range(i32 0, 1073741824) 0) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  br label %._crit_edge340.thread.i

.loopexit.i:                                      ; preds = %._crit_edge336.us.i, %._crit_edge330.i
  %.1309.i = phi i32 [ 0, %._crit_edge330.i ], [ %i.fa, %._crit_edge336.us.i ] ; 6 uses
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  br i1 %.not353.i, label %._crit_edge340.thread.i, label %.lr.ph339.split.i

.lr.ph339.split.i:                                ; preds = %.loopexit.i
  %i.fr = add nsw i32 %i.j, -1
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %wide.trip.count383.i = zext i32 %i.j to i64    ; 2 uses
  %i.ft = add nsw i64 %wide.trip.count383.i, -1   ; 13 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph339.split.i
  %indvars.iv380.i = phi i64 [ 0, %.lr.ph339.split.i ], [ %indvars.iv.next381.i, %bb.i ] ; 5 uses
  %i.fu = icmp eq i64 %indvars.iv380.i, %i.fs
  %i.fv = select i1 %i.fu, i32 %.0303.i, i32 %.0302.i ; 2 uses
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv380.i ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !71
  %i.fz = shl nsw i32 %i.fy, 6                    ; 2 uses
  %i.ga = load ptr, ptr %i.fw, align 16, !tbaa !65
  %i.gb = zext i32 %i.fz to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gb
  %i.gd = add i32 %i.fv, -51
  %i.ge = add i32 %.1309.i, %i.fz
  %i.gf = sub i32 %i.gd, %i.ge                    ; 2 uses
  %i.gg = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv380.i ; 4 uses
  %i.gh = zext i32 %i.gf to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.gg, ptr align 1 %i.gc, i64 %i.gh, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gh
  store i8 -128, ptr %i.gi, align 1, !tbaa !9
  %i.gj = shl i32 %i.fv, 3
  %i.gk = add i32 %i.gj, 616
  %i.gl = icmp ult i32 %i.gf, 56                  ; 2 uses
  %i.gm = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gk) #9
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv380.i ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.423.i = select i1 %i.gl, i32 1, i32 2
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gl, i64 60, i64 124
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.gg, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.gm, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !9
  store i32 %.423.i, ptr %i.go, align 8, !tbaa !71
  store ptr %i.gg, ptr %i.gn, align 16, !tbaa !65
  %indvars.iv.next381.i = add nuw nsw i64 %indvars.iv380.i, 1 ; 2 uses
  %exitcond384.not.i = icmp eq i64 %indvars.iv.next381.i, %i.ft
  br i1 %exitcond384.not.i, label %._crit_edge340.loopexit.peel.begin.i, label %bb.i, !llvm.loop !59

._crit_edge340.loopexit.peel.begin.i:             ; preds = %bb.i
  %i.gp = icmp eq i64 %i.ft, %i.fs
  %i.gq = select i1 %i.gp, i32 %.0303.i, i32 %.0302.i ; 7 uses
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ft ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !71
  %i.gu = shl nsw i32 %i.gt, 6                    ; 2 uses
  %i.gv = load ptr, ptr %i.gr, align 16, !tbaa !65
  %i.gw = zext i32 %i.gu to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gw
  %.neg11 = add i32 %i.gq, -51
  %i.gy = add i32 %.1309.i, %i.gu
  %i.gz = sub i32 %.neg11, %i.gy                  ; 2 uses
  %i.ha = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %i.ft ; 4 uses
  %i.hb = zext i32 %i.gz to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ha, ptr align 1 %i.gx, i64 %i.hb, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hb
  store i8 -128, ptr %i.hc, align 1, !tbaa !9
  %i.hd = shl i32 %i.gq, 3
  %i.he = add i32 %i.hd, 616
  %i.hf = icmp ult i32 %i.gz, 56                  ; 2 uses
  %i.hg = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.he) #9
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ft ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %.425.i = select i1 %i.hf, i32 1, i32 2
  %.424.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.hf, i64 60, i64 124
  %.424.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.424.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.hg, ptr %.424.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !9
  store i32 %.425.i, ptr %i.hi, align 8, !tbaa !71
  store ptr %i.ha, ptr %i.hh, align 16, !tbaa !65
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.hk = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.hm = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ho = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.hq = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 616
  br label %bb.j

._crit_edge340.thread.i:                          ; preds = %.loopexit.i, %.loopexit.thread.i
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  br label %._crit_edge352.i

bb.j:                                             ; preds = %bb.j, %._crit_edge340.loopexit.peel.begin.i
  %indvars.iv387.i = phi i64 [ 0, %._crit_edge340.loopexit.peel.begin.i ], [ %indvars.iv.next388.i, %bb.j ] ; 8 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv387.i ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !8
  %i.hu = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ht) #9, !srcloc !75
  %i.hv = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv387.i ; 8 uses
  store i32 %i.hu, ptr %i.hv, align 16, !tbaa !9
  %i.hw = load i32, ptr %i.hj, align 8, !tbaa !76
  store i32 %i.hw, ptr %i.hs, align 4, !tbaa !8
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv387.i ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !8
  %i.hz = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hy) #9, !srcloc !77
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  store i32 %i.hz, ptr %i.ia, align 4, !tbaa !9
  %i.ib = load i32, ptr %i.hl, align 4, !tbaa !78
  store i32 %i.ib, ptr %i.hx, align 4, !tbaa !8
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv387.i ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !8
  %i.ie = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.id) #9, !srcloc !79
  %i.if = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i32 %i.ie, ptr %i.if, align 8, !tbaa !9
  %i.ig = load i32, ptr %i.hn, align 8, !tbaa !80
  store i32 %i.ig, ptr %i.ic, align 4, !tbaa !8
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv387.i ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !8
  %i.ij = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ii) #9, !srcloc !81
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !9
  %i.il = load i32, ptr %i.hp, align 4, !tbaa !82
  store i32 %i.il, ptr %i.ih, align 4, !tbaa !8
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv387.i ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !8
  %i.io = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.in) #9, !srcloc !83
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store i32 %i.io, ptr %i.ip, align 16, !tbaa !9
  %i.iq = load i32, ptr %i.hr, align 8, !tbaa !84
  store i32 %i.iq, ptr %i.im, align 4, !tbaa !8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hv, i64 20
  store i8 -128, ptr %i.ir, align 4, !tbaa !9
  %i.is = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 672) #9, !srcloc !85
  %i.it = getelementptr inbounds nuw i8, ptr %i.hv, i64 60
  store i32 %i.is, ptr %i.it, align 4, !tbaa !9
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv387.i ; 2 uses
  store ptr %i.hv, ptr %i.iu, align 16, !tbaa !65
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i32 1, ptr %i.iv, align 8, !tbaa !71
  %indvars.iv.next388.i = add nuw nsw i64 %indvars.iv387.i, 1 ; 2 uses
  %exitcond391.not.i = icmp eq i64 %indvars.iv.next388.i, %wide.trip.count383.i
  br i1 %exitcond391.not.i, label %.lr.ph351.split.i, label %bb.j, !llvm.loop !60

.lr.ph351.split.i:                                ; preds = %bb.j
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 733 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 734 ; 2 uses
  %6 = sub i32 %.0302.i, %.1309.i
  %7 = zext i32 %6 to i64
  %8 = add nuw i32 %.0302.i, 21
  %9 = zext i32 %8 to i64                         ; 2 uses
  %10 = add nuw i32 %.0302.i, 4
  %11 = and i32 %10, 15                           ; 2 uses
  %12 = trunc nuw nsw i32 %11 to i8
  %13 = xor i8 %12, 15
  %14 = sub i32 11, %.0302.i
  %15 = and i32 %14, 15
  %16 = zext nneg i32 %15 to i64                  ; 2 uses
  %17 = add nuw nsw i64 %16, 1
  %18 = sub i32 %.0302.i, %11                     ; 3 uses
  %invariant.op = sub i32 %18, %.1309.i
  %.reass.i = add i32 %invariant.op, 36
  %19 = lshr i32 %.reass.i, 4
  %20 = add i32 %18, 52                           ; 2 uses
  %21 = lshr i32 %20, 8
  %22 = trunc i32 %21 to i8
  %23 = trunc i32 %20 to i8
  %24 = add i32 %18, 57
  %25 = zext i32 %24 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph351.split.i
  %indvars.iv393.i = phi i64 [ 0, %.lr.ph351.split.i ], [ %indvars.iv.next394.i, %bb.k ] ; 7 uses
  %.0300349.i = phi ptr [ %i.b, %.lr.ph351.split.i ], [ %scevgep392.i, %bb.k ] ; 7 uses
  %i.iz = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv393.i ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !68
  %i.jc = load ptr, ptr %i.iz, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jb, ptr align 1 %i.jc, i64 %7, i1 false)
  %i.jd = load ptr, ptr %i.ja, align 8, !tbaa !68
  store ptr %i.jd, ptr %i.iz, align 8, !tbaa !67
  %i.je = getelementptr i8, ptr %.0300349.i, i64 %9 ; 6 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv393.i
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !8
  %i.jh = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jg) #9, !srcloc !86
  store i32 %i.jh, ptr %i.je, align 4, !tbaa !8
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv393.i
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !8
  %i.jk = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jj) #9, !srcloc !87
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !8
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv393.i
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !8
  %i.jo = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jn) #9, !srcloc !88
  %i.jp = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !8
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv393.i
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !8
  %i.js = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jr) #9, !srcloc !89
  %i.jt = getelementptr inbounds nuw i8, ptr %i.je, i64 12
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !8
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv393.i
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !8
  %i.jw = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jv) #9, !srcloc !90
  %i.jx = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !8
  %i.jy = getelementptr i8, ptr %i.je, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.jy, i8 %13, i64 %17, i1 false), !tbaa !9
  %scevgep.i = getelementptr i8, ptr %.0300349.i, i64 21
  %i.jz = getelementptr i8, ptr %scevgep.i, i64 %9
  %scevgep392.i = getelementptr i8, ptr %i.jz, i64 %16 ; 7 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store i32 %19, ptr %i.ka, align 8, !tbaa !74
  %i.kb = load i8, ptr %i.iw, align 4, !tbaa !9
  store i8 %i.kb, ptr %.0300349.i, align 1, !tbaa !9
  %i.kc = load i8, ptr %i.ix, align 1, !tbaa !9
  %i.kd = getelementptr inbounds nuw i8, ptr %.0300349.i, i64 1
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !9
  %i.ke = load i8, ptr %i.iy, align 2, !tbaa !9
  %i.kf = getelementptr inbounds nuw i8, ptr %.0300349.i, i64 2
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !9
  %i.kg = getelementptr inbounds nuw i8, ptr %.0300349.i, i64 3
  store i8 %22, ptr %i.kg, align 1, !tbaa !9
  %i.kh = getelementptr inbounds nuw i8, ptr %.0300349.i, i64 4
  store i8 %23, ptr %i.kh, align 1, !tbaa !9
  %indvars.iv.next394.i = add nuw nsw i64 %indvars.iv393.i, 1 ; 2 uses
  %exitcond397.not.i = icmp eq i64 %indvars.iv.next394.i, %i.ft
  br i1 %exitcond397.not.i, label %._crit_edge352.loopexit.peel.begin.i, label %bb.k, !llvm.loop !61

._crit_edge352.loopexit.peel.begin.i:             ; preds = %bb.k
  %26 = mul nuw i64 %i.ft, %25
  %i.ki = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %i.ft ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 16, !tbaa !68
  %i.kl = load ptr, ptr %i.ki, align 8, !tbaa !67
  %i.km = sub i32 %i.gq, %.1309.i
  %i.kn = zext i32 %i.km to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kk, ptr align 1 %i.kl, i64 %i.kn, i1 false)
  %i.ko = load ptr, ptr %i.kj, align 16, !tbaa !68
  store ptr %i.ko, ptr %i.ki, align 8, !tbaa !67
  %i.kp = add i32 %i.gq, 21
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr i8, ptr %scevgep392.i, i64 %i.kq ; 6 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ft
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !8
  %i.ku = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.kt) #9, !srcloc !86
  store i32 %i.ku, ptr %i.kr, align 4, !tbaa !8
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ft
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !8
  %i.kx = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.kw) #9, !srcloc !87
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !8
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.ft
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !8
  %i.lb = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.la) #9, !srcloc !88
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store i32 %i.lb, ptr %i.lc, align 4, !tbaa !8
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ft
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !8
  %i.lf = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.le) #9, !srcloc !89
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kr, i64 12
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !8
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.ft
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !8
  %i.lj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.li) #9, !srcloc !90
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !8
  %i.ll = getelementptr i8, ptr %i.kr, i64 20
  %i.lm = add i32 %i.gq, 4
  %i.ln = and i32 %i.lm, 15                       ; 2 uses
  %i.lo = trunc nuw nsw i32 %i.ln to i8
  %i.lp = xor i8 %i.lo, 15
  %i.lq = sub i32 11, %i.gq
  %i.lr = and i32 %i.lq, 15
  %narrow.i = add nuw nsw i32 %i.lr, 1
  %i.ls = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ll, i8 %i.lp, i64 %i.ls, i1 false), !tbaa !9
  %i.lt = sub i32 %i.gq, %i.ln                    ; 3 uses
  %reass.sub.peel.i = add i32 %i.lt, 36
  %i.lu = sub i32 %reass.sub.peel.i, %.1309.i
  %i.lv = lshr i32 %i.lu, 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store i32 %i.lv, ptr %i.lw, align 8, !tbaa !74
  %i.lx = add i32 %i.lt, 52                       ; 2 uses
  %i.ly = load i8, ptr %i.iw, align 4, !tbaa !9
  store i8 %i.ly, ptr %scevgep392.i, align 1, !tbaa !9
  %i.lz = load i8, ptr %i.ix, align 1, !tbaa !9
  %i.ma = getelementptr inbounds nuw i8, ptr %scevgep392.i, i64 1
  store i8 %i.lz, ptr %i.ma, align 1, !tbaa !9
  %i.mb = load i8, ptr %i.iy, align 2, !tbaa !9
  %i.mc = getelementptr inbounds nuw i8, ptr %scevgep392.i, i64 2
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !9
  %i.md = lshr i32 %i.lx, 8
  %i.me = trunc i32 %i.md to i8
  %i.mf = getelementptr inbounds nuw i8, ptr %scevgep392.i, i64 3
  store i8 %i.me, ptr %i.mf, align 1, !tbaa !9
  %i.mg = trunc i32 %i.lx to i8
  %i.mh = getelementptr inbounds nuw i8, ptr %scevgep392.i, i64 4
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !9
  %i.mi = add i32 %i.lt, 57
  %i.mj = zext i32 %i.mi to i64
  %i.mk = add nuw i64 %26, %i.mj
  br label %._crit_edge352.i

._crit_edge352.i:                                 ; preds = %._crit_edge352.loopexit.peel.begin.i, %._crit_edge340.thread.i
  %.0310.lcssa.i = phi i64 [ 0, %._crit_edge340.thread.i ], [ %i.mk, %._crit_edge352.loopexit.peel.begin.i ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.ml, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %5, i64 noundef 1024) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.u, i64 noundef 160) #8
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 %.0310.lcssa.i, ptr %i.mm, align 8, !tbaa !91
  %i.mn = trunc i64 %.0310.lcssa.i to i32
  br label %tls1_multi_block_encrypt.exit

tls1_multi_block_encrypt.exit:                    ; preds = %bb.a, %._crit_edge352.i
  %.0.i = phi i32 [ %i.mn, %._crit_edge352.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @aesni_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @aesni_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SHA1_Init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @aesni_cbc_sha1_enc(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SHA1_Final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @aesni_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @sha1_block_data_order(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @SHA1_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @sha1_multi_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @aesni_multi_cbc_encrypt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(none) }
attributes #10 = { noreturn nounwind }

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
!9 = !{!4, !4, i64 0}
!10 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 4, !8, i64 12, i64 4, !8, i64 16, i64 4, !8, i64 20, i64 4, !8, i64 24, i64 4, !8, i64 28, i64 64, !9, i64 92, i64 4, !8}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"p1 _ZTS17prov_cipher_hw_st", !11, i64 0}
!15 = !{!"p1 _ZTS15ossl_lib_ctx_st", !11, i64 0}
!16 = !{!"prov_cipher_ctx_st", !4, i64 0, !4, i64 16, !4, i64 32, !11, i64 48, !4, i64 56, !5, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !5, i64 104, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 112, !13, i64 120, !5, i64 128, !12, i64 136, !5, i64 144, !12, i64 152, !5, i64 160, !14, i64 168, !11, i64 176, !15, i64 184}
!17 = !{!"aes_key_st", !4, i64 0, !5, i64 240}
!18 = !{!"p1 _ZTS34prov_cipher_hw_aes_hmac_sha_ctx_st", !11, i64 0}
!19 = !{!"prov_aes_hmac_sha_ctx_st", !16, i64 0, !17, i64 192, !12, i64 440, !4, i64 448, !18, i64 464, !5, i64 472, !5, i64 476, !12, i64 480, !12, i64 488, !12, i64 496}
!20 = !{!19, !12, i64 440}
!21 = !{!"SHAstate_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28, !5, i64 92}
!22 = !{!"prov_aes_hmac_sha1_ctx_st", !19, i64 0, !21, i64 504, !21, i64 600, !21, i64 696}
!23 = !{!21, !5, i64 24}
!24 = !{!21, !5, i64 20}
!25 = !{!21, !5, i64 92}
!26 = !{!22, !5, i64 696}
!27 = !{!22, !5, i64 700}
!28 = !{!22, !5, i64 704}
!29 = !{!22, !5, i64 708}
!30 = !{!22, !5, i64 712}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"", !13, i64 0, !13, i64 8, !12, i64 16, !5, i64 24}
!33 = !{!32, !13, i64 8}
!34 = !{!32, !5, i64 24}
!35 = !{!32, !12, i64 16}
!36 = !{!16, !5, i64 144}
!37 = !{!16, !12, i64 152}
!38 = distinct !{!38, !31}
!39 = distinct !{!39, !31}
!40 = !{!22, !5, i64 788}
!41 = !{!22, !5, i64 720}
!42 = !{!22, !5, i64 716}
!43 = !{i64 2304742}
!44 = !{i64 2149796465}
!45 = !{i64 2149796706}
!46 = !{i64 2149796862}
!47 = !{i64 2149797018}
!48 = !{i64 2149797174}
!49 = !{i64 2149797330}
!50 = !{!19, !12, i64 496}
!51 = !{!19, !12, i64 480}
!52 = !{!19, !5, i64 472}
!53 = !{!19, !5, i64 476}
!54 = distinct !{!54, !31}
!55 = distinct !{!55, !31, !72}
!56 = distinct !{!56, !31}
!57 = distinct !{!57, !31}
!58 = distinct !{!58, !31}
!59 = distinct !{!59, !31, !72}
!60 = distinct !{!60, !31}
!61 = distinct !{!61, !31, !72}
!62 = !{!32, !13, i64 0}
!63 = !{!19, !15, i64 184}
!64 = !{!"", !13, i64 0, !5, i64 8}
!65 = !{!64, !13, i64 0}
!66 = !{!"", !13, i64 0, !13, i64 8, !5, i64 16, !4, i64 24}
!67 = !{!66, !13, i64 0}
!68 = !{!66, !13, i64 8}
!69 = !{i64 2149793572}
!70 = !{i64 2149793732}
!71 = !{!64, !5, i64 8}
!72 = !{!"llvm.loop.peeled.count", i32 1}
!73 = !{!13, !13, i64 0}
!74 = !{!66, !5, i64 16}
!75 = !{i64 2149794256}
!76 = !{!22, !5, i64 600}
!77 = !{i64 2149794412}
!78 = !{!22, !5, i64 604}
!79 = !{i64 2149794568}
!80 = !{!22, !5, i64 608}
!81 = !{i64 2149794724}
!82 = !{!22, !5, i64 612}
!83 = !{i64 2149794880}
!84 = !{!22, !5, i64 616}
!85 = !{i64 2149795036}
!86 = !{i64 2149795238}
!87 = !{i64 2149795437}
!88 = !{i64 2149795636}
!89 = !{i64 2149795836}
!90 = !{i64 2149796036}
!91 = !{!19, !12, i64 488}
end_hunk_0
