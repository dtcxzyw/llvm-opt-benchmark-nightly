inline.NumInlined: 19
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aesni_cbc_hmac_sha256_set_tls1_aad:bb.a

bb.g:                                             ; preds = %bb.f
  %i.ag = zext i32 %i.af to i64
  %i.ah = sub nsw i64 64, %i.ag                   ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 13) ; 3 uses
  %i.ai = tail call i32 @SHA256_Update(ptr noundef nonnull %i.ac, ptr noundef nonnull %1, i64 noundef %spec.select.i) #7 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.i
  %i.ak = sub nuw nsw i64 13, %spec.select.i
  %.not40.i = icmp ugt i64 %i.ah, 12
  br i1 %.not40.i, label %sha256_update.exit, label %.thread45

.thread45:                                        ; preds = %bb.f, %bb.g
  %.1.i48 = phi ptr [ %i.aj, %bb.g ], [ %1, %bb.f ]
  %i.al = phi i64 [ %i.ak, %bb.g ], [ 13, %bb.f ]
  %i.am = tail call i32 @SHA256_Update(ptr noundef nonnull %i.ac, ptr noundef nonnull %.1.i48, i64 noundef %i.al) #7 ; 0 uses
  br label %sha256_update.exit

sha256_update.exit:                               ; preds = %bb.g, %.thread45
  %i.an = and i32 %.0, 15
  %i.ao = sub nuw nsw i32 48, %i.an
  %i.ap = zext nneg i32 %i.ao to i64
  br label %.sink.split

bb.h:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.aq, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 13, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 13, ptr %i.ar, align 8, !tbaa !21
  br label %.sink.split

.sink.split:                                      ; preds = %sha256_update.exit, %bb.h
  %.sink = phi i64 [ 32, %bb.h ], [ %i.ap, %sha256_update.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %.sink, ptr %i.as, align 8, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.d, %bb.a
  %.038 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483579, -2147483648) i32 @aesni_cbc_hmac_sha256_tls1_multiblock_max_bufsize(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.d = load i8, ptr %i.c, align 1, !tbaa !20    ; 3 uses
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20
  %i.i = zext i8 %i.h to i32
  %i.j = or disjoint i32 %i.f, %i.i               ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 2
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.o = load i8, ptr %i.n, align 1, !tbaa !20
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.s = load i8, ptr %i.r, align 1, !tbaa !20
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
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 4, !tbaa !5
  %i.z = and i32 %i.y, 32
  %.not56 = icmp eq i32 %i.z, 0
  %spec.select = select i1 %.not56, i32 1, i32 2
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !49 ; 2 uses
  %i.ac = lshr i32 %i.ab, 2                       ; 2 uses
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = icmp ult i32 %i.ab, 12
  %or.cond = and i1 %i.ae, %i.ad
  br i1 %or.cond, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !50
  %i.ah = trunc i64 %i.ag to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.h
  %.048 = phi i32 [ %i.ac, %bb.h ], [ %spec.select, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %.0 = phi i32 [ %i.ah, %bb.h ], [ %i.j, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ai, ptr noundef nonnull align 8 dereferenceable(112) %i.aj, i64 112, i1 false), !tbaa.struct !19
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !47  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.am = load i32, ptr %i.al, align 4, !tbaa !31 ; 2 uses
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
  %i.au = shl nuw nsw i32 %.048, 2                ; 3 uses
  %i.av = add nuw nsw i32 %.048, 1                ; 3 uses
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
  %.047 = phi i32 [ %i.bf, %bb.l ], [ %i.aw, %bb.k ], [ %i.aw, %sha256_update.exit ]
  %.046 = phi i32 [ %i.bg, %bb.l ], [ %i.az, %bb.k ], [ %i.az, %sha256_update.exit ]
  %i.bh = and i32 %.047, -16                      ; 2 uses
  %i.bi = add nuw nsw i32 %i.bh, 69
  %i.bj = shl i32 %i.bi, %i.av
  %i.bk = and i32 %.046, -16
  %i.bl = sub i32 %i.bk, %i.bh
  %i.bm = add i32 %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.au, ptr %i.bn, align 8, !tbaa !49
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 %i.au, ptr %i.bo, align 8, !tbaa !51
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 %i.bm, ptr %i.bp, align 4, !tbaa !52
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.g, %bb.d, %bb.b, %bb.m
  %.045 = phi i32 [ -1, %bb.g ], [ -1, %bb.b ], [ 1, %bb.m ], [ 0, %bb.d ], [ -1, %bb.a ]
  ret i32 %.045
}

; Function Attrs: nounwind uwtable
define internal i32 @aesni_cbc_hmac_sha256_tls1_multiblock_encrypt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca [8 x %struct.HASH_DESC], align 16   ; 11 uses
  %3 = alloca [8 x %struct.HASH_DESC], align 16   ; 15 uses
  %4 = alloca [8 x %struct.CIPH_DESC], align 16   ; 13 uses
  %i.a = alloca [288 x i8], align 16              ; 4 uses
  %5 = alloca [8 x %union.anon.3], align 16       ; 16 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !53     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %i.i = lshr i32 %i.h, 2                         ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.j = and i32 %i.h, -4                         ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
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
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 27 uses
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
  %.0357.i = phi i32 [ %i.ah, %bb.d ], [ %i.aa, %bb.c ], [ %i.aa, %bb.b ] ; 4 uses
  %.0356.i = phi i32 [ %i.ag, %bb.d ], [ %i.x, %bb.c ], [ %i.x, %bb.b ] ; 6 uses
  store ptr %i.d, ptr %2, align 16, !tbaa !55
  store ptr %i.d, ptr %4, align 16, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 21 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !59
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
  %i.ao = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.an) #8, !srcloc !60 ; 0 uses
  br label %._crit_edge384.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ap = and i32 %.0356.i, -16
  %i.aq = add nuw i32 %i.ap, 69
  %i.ar = zext i32 %.0356.i to i64
  %i.as = zext i32 %i.aq to i64
  %wide.trip.count.i = zext i32 %i.j to i64       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %6 = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.ax, %bb.f ]
  %i.at = phi ptr [ %i.d, %.lr.ph.i ], [ %i.au, %bb.f ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %.pn379.i = phi ptr [ %5, %.lr.ph.i ], [ %.0364.i, %bb.f ]
  %.0364.i = getelementptr inbounds nuw i8, ptr %.pn379.i, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar ; 3 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i
  store ptr %i.au, ptr %i.av, align 16, !tbaa !55
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.i ; 3 uses
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 %i.as ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !59
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.az, ptr noundef nonnull align 1 dereferenceable(16) %.0364.i, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 1 dereferenceable(16) %.0364.i, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph383.split.i, label %bb.f, !llvm.loop !61

.lr.ph383.split.i:                                ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  store i64 %i.bc, ptr %5, align 16
  %i.bd = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bc) #8, !srcloc !60
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.bf = add nsw i32 %i.j, -1
  %i.bg = load i32, ptr %i.be, align 8, !tbaa !5
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !5
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !5
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !5
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.u, i64 224
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 777
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 778
  %i.cf = zext i32 %i.bf to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph383.split.i
  %indvars.iv419.i = phi i64 [ 0, %.lr.ph383.split.i ], [ %indvars.iv.next420.i, %bb.g ] ; 14 uses
  %i.cg = icmp eq i64 %indvars.iv419.i, %i.cf
  %i.ch = select i1 %i.cg, i32 %.0357.i, i32 %.0356.i ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv419.i
  store i32 %i.bg, ptr %i.ci, align 4, !tbaa !5
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv419.i
  store i32 %i.bi, ptr %i.cj, align 4, !tbaa !5
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv419.i
  store i32 %i.bl, ptr %i.ck, align 4, !tbaa !5
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv419.i
  store i32 %i.bo, ptr %i.cl, align 4, !tbaa !5
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv419.i
  store i32 %i.br, ptr %i.cm, align 4, !tbaa !5
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv419.i
  store i32 %i.bu, ptr %i.cn, align 4, !tbaa !5
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv419.i
  store i32 %i.bx, ptr %i.co, align 4, !tbaa !5
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv419.i
  store i32 %i.ca, ptr %i.cp, align 4, !tbaa !5
  %i.cq = add i64 %indvars.iv419.i, %i.bd
  %i.cr = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cq) #8, !srcloc !62
  %i.cs = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv419.i ; 8 uses
  store i64 %i.cr, ptr %i.cs, align 16, !tbaa !20
  %i.ct = load i8, ptr %i.cc, align 8, !tbaa !20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i8 %i.ct, ptr %i.cu, align 8, !tbaa !20
  %i.cv = load i8, ptr %i.cd, align 1, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 9
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !20
  %i.cx = load i8, ptr %i.ce, align 2, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  store i8 %i.cx, ptr %i.cy, align 2, !tbaa !20
  %i.cz = lshr i32 %i.ch, 8
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 11
  store i8 %i.da, ptr %i.db, align 1, !tbaa !20
  %i.dc = trunc i32 %i.ch to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i8 %i.dc, ptr %i.dd, align 4, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 13
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv419.i ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 16, !tbaa !55 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.de, ptr noundef nonnull align 1 dereferenceable(51) %i.dg, i64 51, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 51
  store ptr %i.dh, ptr %i.df, align 16, !tbaa !55
  %i.di = add i32 %i.ch, -51
  %i.dj = lshr i32 %i.di, 6
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !63
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv419.i ; 2 uses
  store ptr %i.cs, ptr %i.dl, align 16, !tbaa !55
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 1, ptr %i.dm, align 8, !tbaa !63
  %indvars.iv.next420.i = add nuw nsw i64 %indvars.iv419.i, 1 ; 2 uses
  %exitcond423.not.i = icmp eq i64 %indvars.iv.next420.i, %wide.trip.count.i
  br i1 %exitcond423.not.i, label %._crit_edge384.i, label %bb.g, !llvm.loop !64

._crit_edge384.i:                                 ; preds = %bb.g, %._crit_edge.thread.i
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  %i.dn = call i32 @llvm.umin.i32(i32 %.0356.i, i32 %.0357.i)
  %i.do = add i32 %i.dn, -51                      ; 2 uses
  %i.dp = lshr i32 %i.do, 6                       ; 2 uses
  %i.dq = icmp ugt i32 %i.do, 2111
  br i1 %i.dq, label %.preheader378.i, label %.loopexit.i

.preheader378.i:                                  ; preds = %._crit_edge384.i
  br i1 %.not407.i, label %.preheader.split.preheader.i, label %.lr.ph386.preheader.i

.lr.ph386.preheader.i:                            ; preds = %.preheader378.i
  %wide.trip.count427.i = zext i32 %i.j to i64    ; 2 uses
  br label %.lr.ph386.i

.lr.ph389.us.preheader.i:                         ; preds = %.lr.ph386.i
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %.lr.ph389.us.i

.preheader.split.preheader.i:                     ; preds = %.preheader378.i
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %.preheader.split.i

.lr.ph389.us.i:                                   ; preds = %._crit_edge390.us.i, %.lr.ph389.us.preheader.i
  %.0361.us.i = phi i32 [ %i.ej, %._crit_edge390.us.i ], [ 0, %.lr.ph389.us.preheader.i ]
  %.0360.us.i = phi i32 [ %i.ek, %._crit_edge390.us.i ], [ %i.dp, %.lr.ph389.us.preheader.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.dr, i32 noundef range(i32 0, 1073741824) %i.i) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph389.us.i
  %indvars.iv429.i = phi i64 [ 0, %.lr.ph389.us.i ], [ %indvars.iv.next430.i, %bb.h ] ; 4 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv429.i ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 16, !tbaa !55
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2048 ; 2 uses
  store ptr %i.dv, ptr %i.dt, align 16, !tbaa !55
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv429.i ; 2 uses
  store ptr %i.dv, ptr %i.dw, align 16, !tbaa !55
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !63
  %i.dz = add nsw i32 %i.dy, -32
  store i32 %i.dz, ptr %i.dx, align 8, !tbaa !63
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 32, ptr %i.ea, align 8, !tbaa !63
  %i.eb = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv429.i ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !59
  %i.ee = load <2 x ptr>, ptr %i.eb, align 8, !tbaa !65
  %i.ef = getelementptr inbounds nuw i8, <2 x ptr> %i.ee, i64 2048
  store <2 x ptr> %i.ef, ptr %i.eb, align 8, !tbaa !65
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i32 128, ptr %i.eg, align 8, !tbaa !66
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 1 dereferenceable(16) %i.ei, i64 16, i1 false)
  %indvars.iv.next430.i = add nuw nsw i64 %indvars.iv429.i, 1 ; 2 uses
  %exitcond433.not.i = icmp eq i64 %indvars.iv.next430.i, %wide.trip.count427.i
  br i1 %exitcond433.not.i, label %._crit_edge390.us.i, label %bb.h, !llvm.loop !67

._crit_edge390.us.i:                              ; preds = %bb.h
  %i.ej = add i32 %.0361.us.i, 2048               ; 2 uses
  %i.ek = add nsw i32 %.0360.us.i, -32            ; 2 uses
  %i.el = icmp ugt i32 %i.ek, 32
  br i1 %i.el, label %.lr.ph389.us.i, label %.loopexit.i, !llvm.loop !68

.lr.ph386.i:                                      ; preds = %.lr.ph386.i, %.lr.ph386.preheader.i
  %indvars.iv424.i = phi i64 [ 0, %.lr.ph386.preheader.i ], [ %indvars.iv.next425.i.1, %.lr.ph386.i ] ; 5 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv424.i
  %i.en = load ptr, ptr %i.em, align 16, !tbaa !55
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv424.i ; 2 uses
  store ptr %i.en, ptr %i.eo, align 16, !tbaa !55
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i32 32, ptr %i.ep, align 8, !tbaa !63
  %i.eq = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv424.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i32 128, ptr %i.er, align 16, !tbaa !66
  %indvars.iv.next425.i = or disjoint i64 %indvars.iv424.i, 1 ; 3 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next425.i
  %i.et = load ptr, ptr %i.es, align 16, !tbaa !55
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next425.i ; 2 uses
  store ptr %i.et, ptr %i.eu, align 16, !tbaa !55
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i32 32, ptr %i.ev, align 8, !tbaa !63
  %i.ew = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.next425.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i32 128, ptr %i.ex, align 8, !tbaa !66
  %indvars.iv.next425.i.1 = add nuw nsw i64 %indvars.iv424.i, 2 ; 2 uses
  %exitcond428.not.i.1 = icmp eq i64 %indvars.iv.next425.i.1, %wide.trip.count427.i
  br i1 %exitcond428.not.i.1, label %.lr.ph389.us.preheader.i, label %.lr.ph386.i, !llvm.loop !69

.preheader.split.i:                               ; preds = %.preheader.split.i, %.preheader.split.preheader.i
  %.0360.i = phi i32 [ %i.ey, %.preheader.split.i ], [ %i.dp, %.preheader.split.preheader.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef 0) #7
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.ds, i32 noundef 0) #7
  %i.ey = add nsw i32 %.0360.i, -32               ; 2 uses
  %i.ez = icmp ugt i32 %i.ey, 32
  br i1 %i.ez, label %.preheader.split.i, label %.loopexit.thread.i, !llvm.loop !68

.loopexit.thread.i:                               ; preds = %.preheader.split.i
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef range(i32 0, 1073741824) 0) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  br label %._crit_edge394.thread.i

.loopexit.i:                                      ; preds = %._crit_edge390.us.i, %._crit_edge384.i
  %.1362.i = phi i32 [ 0, %._crit_edge384.i ], [ %i.ej, %._crit_edge390.us.i ] ; 3 uses
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  br i1 %.not407.i, label %._crit_edge394.thread.i, label %.lr.ph393.split.i

.lr.ph393.split.i:                                ; preds = %.loopexit.i
  %i.fa = add nsw i32 %i.j, -1
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %wide.trip.count437.i = zext i32 %i.j to i64    ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph393.split.i
  %indvars.iv434.i = phi i64 [ 0, %.lr.ph393.split.i ], [ %indvars.iv.next435.i, %bb.i ] ; 5 uses
  %i.fc = icmp eq i64 %indvars.iv434.i, %i.fb
  %i.fd = select i1 %i.fc, i32 %.0357.i, i32 %.0356.i ; 2 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv434.i ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !63
  %i.fh = shl nsw i32 %i.fg, 6                    ; 2 uses
  %i.fi = load ptr, ptr %i.fe, align 16, !tbaa !55
  %i.fj = zext i32 %i.fh to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fj
  %i.fl = add i32 %i.fd, -51
  %i.fm = add i32 %.1362.i, %i.fh
  %i.fn = sub i32 %i.fl, %i.fm                    ; 2 uses
  %i.fo = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv434.i ; 4 uses
  %i.fp = zext i32 %i.fn to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.fo, ptr align 1 %i.fk, i64 %i.fp, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fp
  store i8 -128, ptr %i.fq, align 1, !tbaa !20
  %i.fr = shl i32 %i.fd, 3
  %i.fs = add i32 %i.fr, 616
  %i.ft = icmp ult i32 %i.fn, 56                  ; 2 uses
  %i.fu = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fs) #8
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv434.i ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.477.i = select i1 %i.ft, i32 1, i32 2
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ft, i64 60, i64 124
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.fo, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.fu, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !20
  store i32 %.477.i, ptr %i.fw, align 8, !tbaa !63
  store ptr %i.fo, ptr %i.fv, align 16, !tbaa !55
  %indvars.iv.next435.i = add nuw nsw i64 %indvars.iv434.i, 1 ; 2 uses
  %exitcond438.not.i = icmp eq i64 %indvars.iv.next435.i, %wide.trip.count437.i
  br i1 %exitcond438.not.i, label %._crit_edge394.loopexit.peel.begin.i, label %bb.i, !llvm.loop !70

._crit_edge394.thread.i:                          ; preds = %.loopexit.i, %.loopexit.thread.i
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  br label %._crit_edge406.i

._crit_edge394.loopexit.peel.begin.i:             ; preds = %bb.i
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.fy = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ga = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.gc = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.ge = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.gg = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.gi = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.gk = getelementptr inbounds nuw i8, ptr %i.u, i64 224 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 644
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge394.loopexit.peel.begin.i
  %indvars.iv441.i = phi i64 [ 0, %._crit_edge394.loopexit.peel.begin.i ], [ %indvars.iv.next442.i, %bb.j ] ; 11 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv441.i ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !5
  %i.go = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gn) #8, !srcloc !71
  %i.gp = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv441.i ; 11 uses
  store i32 %i.go, ptr %i.gp, align 16, !tbaa !20
  %i.gq = load i32, ptr %i.fx, align 8, !tbaa !5
  store i32 %i.gq, ptr %i.gm, align 4, !tbaa !5
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv441.i ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !5
  %i.gt = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gs) #8, !srcloc !72
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !20
  %i.gv = load i32, ptr %i.fz, align 4, !tbaa !5
  store i32 %i.gv, ptr %i.gr, align 4, !tbaa !5
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv441.i ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !5
  %i.gy = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gx) #8, !srcloc !73
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i32 %i.gy, ptr %i.gz, align 8, !tbaa !20
  %i.ha = load i32, ptr %i.gb, align 8, !tbaa !5
  store i32 %i.ha, ptr %i.gw, align 4, !tbaa !5
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv441.i ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !5
  %i.hd = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hc) #8, !srcloc !74
  %i.he = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !20
  %i.hf = load i32, ptr %i.gd, align 4, !tbaa !5
  store i32 %i.hf, ptr %i.hb, align 4, !tbaa !5
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv441.i ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !5
  %i.hi = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hh) #8, !srcloc !75
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store i32 %i.hi, ptr %i.hj, align 16, !tbaa !20
  %i.hk = load i32, ptr %i.gf, align 8, !tbaa !5
  store i32 %i.hk, ptr %i.hg, align 4, !tbaa !5
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv441.i ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !5
  %i.hn = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hm) #8, !srcloc !76
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !20
  %i.hp = load i32, ptr %i.gh, align 4, !tbaa !5
  store i32 %i.hp, ptr %i.hl, align 4, !tbaa !5
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv441.i ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !5
  %i.hs = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hr) #8, !srcloc !77
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store i32 %i.hs, ptr %i.ht, align 8, !tbaa !20
  %i.hu = load i32, ptr %i.gj, align 8, !tbaa !5
  store i32 %i.hu, ptr %i.hq, align 4, !tbaa !5
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv441.i ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !5
  %i.hx = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hw) #8, !srcloc !78
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gp, i64 28
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !20
  %i.hz = load i32, ptr %i.gl, align 4, !tbaa !5
  store i32 %i.hz, ptr %i.hv, align 4, !tbaa !5
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  store i8 -128, ptr %i.ia, align 16, !tbaa !20
  %i.ib = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 768) #8, !srcloc !79
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gp, i64 60
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !20
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv441.i ; 2 uses
  store ptr %i.gp, ptr %i.id, align 16, !tbaa !55
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i32 1, ptr %i.ie, align 8, !tbaa !63
  %indvars.iv.next442.i = add nuw nsw i64 %indvars.iv441.i, 1 ; 2 uses
  %exitcond445.not.i = icmp eq i64 %indvars.iv.next442.i, %wide.trip.count437.i
  br i1 %exitcond445.not.i, label %.lr.ph405.split.i, label %bb.j, !llvm.loop !80

.lr.ph405.split.i:                                ; preds = %bb.j
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 777
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 778
  %invariant.op = sub i32 48, %.1362.i
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph405.split.i
  %indvars.iv447.i = phi i64 [ 0, %.lr.ph405.split.i ], [ %indvars.iv.next448.i, %bb.k ] ; 11 uses
  %.0354403.i = phi ptr [ %i.b, %.lr.ph405.split.i ], [ %scevgep446.i, %bb.k ] ; 7 uses
  %.0363401.i = phi i64 [ 0, %.lr.ph405.split.i ], [ %i.ky, %bb.k ]
  %i.ii = icmp eq i64 %indvars.iv447.i, %i.fb
  %i.ij = select i1 %i.ii, i32 %.0357.i, i32 %.0356.i ; 5 uses
  %i.ik = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv447.i ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !59
  %i.in = load ptr, ptr %i.ik, align 8, !tbaa !57
  %i.io = sub i32 %i.ij, %.1362.i
  %i.ip = zext i32 %i.io to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.im, ptr align 1 %i.in, i64 %i.ip, i1 false)
  %i.iq = load ptr, ptr %i.il, align 8, !tbaa !59
  store ptr %i.iq, ptr %i.ik, align 8, !tbaa !57
  %i.ir = add i32 %i.ij, 21
  %i.is = zext i32 %i.ir to i64                   ; 2 uses
  %i.it = getelementptr i8, ptr %.0354403.i, i64 %i.is ; 9 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv447.i
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !5
  %i.iw = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.iv) #8, !srcloc !81
  store i32 %i.iw, ptr %i.it, align 4, !tbaa !5
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv447.i
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !5
  %i.iz = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.iy) #8, !srcloc !82
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !5
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv447.i
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !5
  %i.jd = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jc) #8, !srcloc !83
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store i32 %i.jd, ptr %i.je, align 4, !tbaa !5
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv447.i
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !5
  %i.jh = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jg) #8, !srcloc !84
  %i.ji = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !5
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv447.i
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !5
  %i.jl = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jk) #8, !srcloc !85
  %i.jm = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !5
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv447.i
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !5
  %i.jp = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jo) #8, !srcloc !86
  %i.jq = getelementptr inbounds nuw i8, ptr %i.it, i64 20
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !5
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv447.i
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !5
  %i.jt = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.js) #8, !srcloc !87
  %i.ju = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !5
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv447.i
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !5
  %i.jx = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jw) #8, !srcloc !88
  %i.jy = getelementptr inbounds nuw i8, ptr %i.it, i64 28
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !5
  %i.jz = getelementptr i8, ptr %i.it, i64 32
  %i.ka = trunc i32 %i.ij to i8
  %i.kb = and i8 %i.ka, 15
  %i.kc = xor i8 %i.kb, 15
  %i.kd = and i32 %i.ij, 15
  %i.ke = xor i32 %i.kd, 15
  %i.kf = zext nneg i32 %i.ke to i64              ; 2 uses
  %i.kg = add nuw nsw i64 %i.kf, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jz, i8 %i.kc, i64 %i.kg, i1 false), !tbaa !20
  %scevgep.i = getelementptr i8, ptr %.0354403.i, i64 33
  %i.kh = getelementptr i8, ptr %scevgep.i, i64 %i.is
  %scevgep446.i = getelementptr i8, ptr %i.kh, i64 %i.kf
  %i.ki = and i32 %i.ij, -16                      ; 3 uses
  %.reass.i.reass.reass = add i32 %i.ki, %invariant.op
  %i.kj = lshr i32 %.reass.i.reass.reass, 4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store i32 %i.kj, ptr %i.kk, align 8, !tbaa !66
  %i.kl = add i32 %i.ki, 64                       ; 2 uses
  %i.km = load i8, ptr %i.if, align 8, !tbaa !20
  store i8 %i.km, ptr %.0354403.i, align 1, !tbaa !20
  %i.kn = load i8, ptr %i.ig, align 1, !tbaa !20
  %i.ko = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 1
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !20
  %i.kp = load i8, ptr %i.ih, align 2, !tbaa !20
  %i.kq = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 2
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !20
  %i.kr = lshr i32 %i.kl, 8
  %i.ks = trunc i32 %i.kr to i8
  %i.kt = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 3
  store i8 %i.ks, ptr %i.kt, align 1, !tbaa !20
  %i.ku = trunc i32 %i.kl to i8
  %i.kv = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 4
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !20
  %i.kw = add i32 %i.ki, 69
  %i.kx = zext i32 %i.kw to i64
  %i.ky = add i64 %.0363401.i, %i.kx              ; 2 uses
  %indvars.iv.next448.i = add nuw nsw i64 %indvars.iv447.i, 1 ; 2 uses
  %exitcond451.not.i = icmp eq i64 %indvars.iv.next448.i, %wide.trip.count437.i
  br i1 %exitcond451.not.i, label %._crit_edge406.i, label %bb.k, !llvm.loop !89

._crit_edge406.i:                                 ; preds = %bb.k, %._crit_edge394.thread.i
  %.0363.lcssa.i = phi i64 [ 0, %._crit_edge394.thread.i ], [ %i.ky, %bb.k ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.kz, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @OPENSSL_cleanse(ptr noundef nonnull %5, i64 noundef 1024) #7
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.u, i64 noundef 256) #7
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 %.0363.lcssa.i, ptr %i.la, align 8, !tbaa !90
  %i.lb = trunc i64 %.0363.lcssa.i to i32
  br label %tls1_multi_block_encrypt.exit

tls1_multi_block_encrypt.exit:                    ; preds = %bb.a, %._crit_edge406.i
  %.0.i = phi i32 [ %i.lb, %._crit_edge406.i ], [ 0, %bb.a ]
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

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(none) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !13, i64 72}
!10 = !{!"prov_aes_hmac_sha_ctx_st", !11, i64 0, !17, i64 192, !13, i64 440, !7, i64 448, !18, i64 464, !6, i64 472, !6, i64 476, !13, i64 480, !13, i64 488, !13, i64 496}
!11 = !{!"prov_cipher_ctx_st", !7, i64 0, !7, i64 16, !7, i64 32, !12, i64 48, !7, i64 56, !6, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !6, i64 104, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 112, !14, i64 120, !6, i64 128, !13, i64 136, !6, i64 144, !13, i64 152, !6, i64 160, !15, i64 168, !12, i64 176, !16, i64 184}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS17prov_cipher_hw_st", !12, i64 0}
!16 = !{!"p1 _ZTS15ossl_lib_ctx_st", !12, i64 0}
!17 = !{!"aes_key_st", !7, i64 0, !6, i64 240}
!18 = !{!"p1 _ZTS34prov_cipher_hw_aes_hmac_sha_ctx_st", !12, i64 0}
!19 = !{i64 0, i64 32, !20, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 64, !20, i64 104, i64 4, !5, i64 108, i64 4, !5}
!20 = !{!7, !7, i64 0}
!21 = !{!10, !13, i64 440}
!22 = !{!11, !6, i64 144}
!23 = !{!11, !13, i64 152}
!24 = !{!25, !6, i64 832}
!25 = !{!"prov_aes_hmac_sha256_ctx_st", !10, i64 0, !26, i64 504, !26, i64 616, !26, i64 728}
!26 = !{!"SHA256state_st", !7, i64 0, !6, i64 32, !6, i64 36, !7, i64 40, !6, i64 104, !6, i64 108}
!27 = !{!26, !6, i64 36}
!28 = !{!26, !6, i64 32}
!29 = !{!25, !6, i64 764}
!30 = !{!25, !6, i64 760}
!31 = !{!26, !6, i64 104}
!32 = !{i64 2373500}
!33 = !{i64 2149866580}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{i64 2149866821}
!37 = !{i64 2149866977}
!38 = !{i64 2149867133}
!39 = !{i64 2149867289}
!40 = !{i64 2149867445}
!41 = !{i64 2149867601}
!42 = !{i64 2149867757}
!43 = !{i64 2149867913}
!44 = distinct !{!44, !35}
!45 = !{!10, !13, i64 496}
!46 = !{!10, !13, i64 480}
!47 = !{!48, !14, i64 8}
!48 = !{!"", !14, i64 0, !14, i64 8, !13, i64 16, !6, i64 24}
!49 = !{!48, !6, i64 24}
!50 = !{!48, !13, i64 16}
!51 = !{!10, !6, i64 472}
!52 = !{!10, !6, i64 476}
!53 = !{!48, !14, i64 0}
!54 = !{!10, !16, i64 184}
!55 = !{!56, !14, i64 0}
!56 = !{!"", !14, i64 0, !6, i64 8}
!57 = !{!58, !14, i64 0}
!58 = !{!"", !14, i64 0, !14, i64 8, !6, i64 16, !7, i64 24}
!59 = !{!58, !14, i64 8}
!60 = !{i64 2149862634}
!61 = distinct !{!61, !35}
!62 = !{i64 2149862794}
!63 = !{!56, !6, i64 8}
!64 = distinct !{!64, !35}
!65 = !{!14, !14, i64 0}
!66 = !{!58, !6, i64 16}
!67 = distinct !{!67, !35}
!68 = distinct !{!68, !35}
!69 = distinct !{!69, !35}
!70 = distinct !{!70, !35}
!71 = !{i64 2149863318}
!72 = !{i64 2149863474}
!73 = !{i64 2149863630}
!74 = !{i64 2149863786}
!75 = !{i64 2149863942}
!76 = !{i64 2149864098}
!77 = !{i64 2149864254}
!78 = !{i64 2149864410}
!79 = !{i64 2149864566}
!80 = distinct !{!80, !35}
!81 = !{i64 2149864768}
!82 = !{i64 2149864967}
!83 = !{i64 2149865166}
!84 = !{i64 2149865366}
!85 = !{i64 2149865566}
!86 = !{i64 2149865766}
!87 = !{i64 2149865966}
!88 = !{i64 2149866166}
!89 = distinct !{!89, !35}
!90 = !{!10, !13, i64 488}
end_hunk_0
