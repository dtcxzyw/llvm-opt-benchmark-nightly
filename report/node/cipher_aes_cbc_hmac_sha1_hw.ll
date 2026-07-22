inline.NumInlined: 19
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aesni_cbc_hmac_sha1_set_tls1_aad:bb.a
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 13) ; 3 uses
  %i.ai = tail call i32 @SHA1_Update(ptr noundef nonnull %i.ac, ptr noundef nonnull %1, i64 noundef %spec.select.i) #8 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.i
  %i.ak = sub nuw nsw i64 13, %spec.select.i
  %.not40.i = icmp ugt i64 %i.ah, 12
  br i1 %.not40.i, label %sha1_update.exit, label %.thread45

.thread45:                                        ; preds = %bb.f, %bb.g
  %.1.i48 = phi ptr [ %i.aj, %bb.g ], [ %1, %bb.f ]
  %i.al = phi i64 [ %i.ak, %bb.g ], [ 13, %bb.f ]
  %i.am = tail call i32 @SHA1_Update(ptr noundef nonnull %i.ac, ptr noundef nonnull %.1.i48, i64 noundef %i.al) #8 ; 0 uses
  br label %sha1_update.exit

sha1_update.exit:                                 ; preds = %bb.g, %.thread45
  %i.an = add nuw nsw i32 %.0, 36
  %i.ao = and i32 %i.an, -16
  %i.ap = sub nsw i32 %i.ao, %.0
  %i.aq = sext i32 %i.ap to i64
  br label %.sink.split

bb.h:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ar, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 13, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 13, ptr %i.as, align 8, !tbaa !11
  br label %.sink.split

.sink.split:                                      ; preds = %sha1_update.exit, %bb.h
  %.sink = phi i64 [ 20, %bb.h ], [ %i.aq, %sha1_update.exit ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %.sink, ptr %i.at, align 8, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.d, %bb.a
  %.038 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483627, -2147483648) i32 @aesni_cbc_hmac_sha1_tls1_multiblock_max_bufsize(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_die(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 701) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = trunc i64 %i.b to i32
  %i.d = add nsw i32 %i.c, 36
  %i.e = and i32 %i.d, -16
  %i.f = add nsw i32 %i.e, 21
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @aesni_cbc_hmac_sha1_tls1_multiblock_aad(ptr noundef initializes((472, 476)) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10    ; 3 uses
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10
  %i.i = zext i8 %i.h to i32
  %i.j = or disjoint i32 %i.f, %i.i               ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !50   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  store i32 %i.l, ptr %i.m, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 2
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !10
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.v = load i8, ptr %i.u, align 1, !tbaa !10
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
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 4, !tbaa !5
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
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.ai = trunc i64 %i.ah to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.h
  %.050 = phi i32 [ %i.ad, %bb.h ], [ %spec.select, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %.0 = phi i32 [ %i.ai, %bb.h ], [ %i.j, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr noundef nonnull align 8 dereferenceable(96) %i.ak, i64 96, i1 false), !tbaa.struct !9
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !48  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.an = load i32, ptr %i.am, align 4, !tbaa !30 ; 2 uses
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
  %i.av = shl nuw nsw i32 %.050, 2                ; 3 uses
  %i.aw = add nuw nsw i32 %.050, 1                ; 3 uses
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
  %.049 = phi i32 [ %i.bg, %bb.l ], [ %i.ax, %bb.k ], [ %i.ax, %sha1_update.exit ]
  %.048 = phi i32 [ %i.bh, %bb.l ], [ %i.ba, %bb.k ], [ %i.ba, %sha1_update.exit ]
  %i.bi = add nuw nsw i32 %.049, 36
  %i.bj = and i32 %i.bi, -16                      ; 2 uses
  %i.bk = add nuw nsw i32 %i.bj, 21
  %i.bl = shl i32 %i.bk, %i.aw
  %i.bm = add i32 %.048, 36
  %i.bn = and i32 %i.bm, -16
  %i.bo = sub i32 %i.bn, %i.bj
  %i.bp = add i32 %i.bo, %i.bl
  store i32 %i.av, ptr %i.k, align 8, !tbaa !50
  store i32 %i.av, ptr %i.m, align 8, !tbaa !51
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !53
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.g, %bb.d, %bb.b, %bb.m
  %.047 = phi i32 [ -1, %bb.g ], [ -1, %bb.b ], [ 1, %bb.m ], [ 0, %bb.d ], [ -1, %bb.a ]
  ret i32 %.047
}

; Function Attrs: nounwind uwtable
define internal i32 @aesni_cbc_hmac_sha1_tls1_multiblock_encrypt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %2 = alloca [8 x %struct.HASH_DESC], align 16   ; 13 uses
  %3 = alloca [8 x %struct.HASH_DESC], align 16   ; 17 uses
  %4 = alloca [8 x %struct.CIPH_DESC], align 16   ; 14 uses
  %i.a = alloca [192 x i8], align 16              ; 4 uses
  %5 = alloca [8 x %union.anon.3], align 16       ; 18 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !54     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = lshr i32 %i.h, 2                         ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.j = and i32 %i.h, -4                         ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
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
  %.0303.i = phi i32 [ %i.ah, %bb.d ], [ %i.aa, %bb.c ], [ %i.aa, %bb.b ] ; 6 uses
  %.0302.i = phi i32 [ %i.ag, %bb.d ], [ %i.x, %bb.c ], [ %i.x, %bb.b ] ; 8 uses
  store ptr %i.d, ptr %2, align 16, !tbaa !56
  store ptr %i.d, ptr %4, align 16, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !60
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
  %i.ao = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.an) #9, !srcloc !61 ; 0 uses
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
  %.pn325.i = phi ptr [ %5, %.lr.ph.i ], [ %.0310.i, %bb.f ]
  %.0310.i = getelementptr inbounds nuw i8, ptr %.pn325.i, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i
  store ptr %i.av, ptr %i.aw, align 16, !tbaa !56
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.i ; 4 uses
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !58
  %6 = getelementptr i8, ptr %i.ax, i64 -32
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 %i.at ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !60
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ba, ptr noundef nonnull align 1 dereferenceable(16) %.0310.i, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 1 dereferenceable(16) %.0310.i, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph329.split.i, label %bb.f, !llvm.loop !62

.lr.ph329.split.i:                                ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.bd = load i64, ptr %i.bc, align 4            ; 2 uses
  store i64 %i.bd, ptr %5, align 16
  %i.be = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bd) #9, !srcloc !61 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.bg = add i32 %i.j, -1
  %i.bh = load i32, ptr %i.bf, align 8, !tbaa !33 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 700
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !34 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !35 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !36 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !37 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 733
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 734
  %i.bx = zext i32 %i.bg to i64                   ; 2 uses
  %8 = add nsw i64 %wide.trip.count.i, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph329.split.i
  %indvars.iv365.i = phi i64 [ 0, %.lr.ph329.split.i ], [ %indvars.iv.next366.i, %bb.g ] ; 12 uses
  %i.by = icmp eq i64 %indvars.iv365.i, %i.bx
  %i.bz = select i1 %i.by, i32 %.0303.i, i32 %.0302.i ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv365.i
  store i32 %i.bh, ptr %i.ca, align 4, !tbaa !5
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv365.i
  store i32 %i.bj, ptr %i.cb, align 4, !tbaa !5
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv365.i
  store i32 %i.bm, ptr %i.cc, align 4, !tbaa !5
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv365.i
  store i32 %i.bp, ptr %i.cd, align 4, !tbaa !5
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv365.i
  store i32 %i.bs, ptr %i.ce, align 4, !tbaa !5
  %i.cf = add i64 %indvars.iv365.i, %i.be
  %i.cg = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cf) #9, !srcloc !63
  %i.ch = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv365.i ; 8 uses
  store i64 %i.cg, ptr %i.ch, align 16, !tbaa !10
  %i.ci = load i8, ptr %i.bu, align 4, !tbaa !10  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %i.ci, ptr %i.cj, align 8, !tbaa !10
  %i.ck = load i8, ptr %i.bv, align 1, !tbaa !10  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 9
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !10
  %i.cm = load i8, ptr %i.bw, align 2, !tbaa !10  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 10
  store i8 %i.cm, ptr %i.cn, align 2, !tbaa !10
  %i.co = lshr i32 %i.bz, 8
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 11
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !10
  %i.cr = trunc i32 %i.bz to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i8 %i.cr, ptr %i.cs, align 4, !tbaa !10
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 13
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv365.i ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 16, !tbaa !56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.ct, ptr noundef nonnull align 1 dereferenceable(51) %i.cv, i64 51, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 51
  store ptr %i.cw, ptr %i.cu, align 16, !tbaa !56
  %i.cx = add i32 %i.bz, -51
  %i.cy = lshr i32 %i.cx, 6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !64
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv365.i ; 2 uses
  store ptr %i.ch, ptr %i.da, align 16, !tbaa !56
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i32 1, ptr %i.db, align 8, !tbaa !64
  %indvars.iv.next366.i = add nuw nsw i64 %indvars.iv365.i, 1 ; 11 uses
  %exitcond369.not.i = icmp eq i64 %indvars.iv365.i, %8
  br i1 %exitcond369.not.i, label %._crit_edge330.loopexit.peel.begin.i, label %bb.g, !llvm.loop !65

._crit_edge330.loopexit.peel.begin.i:             ; preds = %bb.g
  %9 = icmp eq i64 %indvars.iv.next366.i, %i.bx
  %10 = select i1 %9, i32 %.0303.i, i32 %.0302.i  ; 3 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next366.i
  store i32 %i.bh, ptr %11, align 4, !tbaa !5
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next366.i
  store i32 %i.bj, ptr %12, align 4, !tbaa !5
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next366.i
  store i32 %i.bm, ptr %13, align 4, !tbaa !5
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next366.i
  store i32 %i.bp, ptr %14, align 4, !tbaa !5
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next366.i
  store i32 %i.bs, ptr %15, align 4, !tbaa !5
  %16 = add i64 %indvars.iv.next366.i, %i.be
  %17 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %16) #9, !srcloc !63
  %18 = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv.next366.i ; 8 uses
  store i64 %17, ptr %18, align 16, !tbaa !10
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i8 %i.ci, ptr %19, align 8, !tbaa !10
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 9
  store i8 %i.ck, ptr %20, align 1, !tbaa !10
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 10
  store i8 %i.cm, ptr %21, align 2, !tbaa !10
  %22 = lshr i32 %10, 8
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 11
  store i8 %23, ptr %24, align 1, !tbaa !10
  %25 = trunc i32 %10 to i8
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i8 %25, ptr %26, align 4, !tbaa !10
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 13
  %28 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next366.i ; 3 uses
  %29 = load ptr, ptr %28, align 16, !tbaa !56    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %27, ptr noundef nonnull align 1 dereferenceable(51) %29, i64 51, i1 false)
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 51
  store ptr %30, ptr %28, align 16, !tbaa !56
  %31 = add i32 %10, -51
  %32 = lshr i32 %31, 6
  %33 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %32, ptr %33, align 8, !tbaa !64
  %34 = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next366.i ; 2 uses
  store ptr %18, ptr %34, align 16, !tbaa !56
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 1, ptr %35, align 8, !tbaa !64
  br label %._crit_edge330.i

._crit_edge330.i:                                 ; preds = %._crit_edge330.loopexit.peel.begin.i, %._crit_edge.thread.i
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  %i.dc = call i32 @llvm.umin.i32(i32 %.0302.i, i32 %.0303.i)
  %i.dd = add i32 %i.dc, -51                      ; 2 uses
  %i.de = lshr i32 %i.dd, 6                       ; 2 uses
  %i.df = icmp ugt i32 %i.dd, 2111
  br i1 %i.df, label %.preheader324.i, label %.loopexit.i

.preheader324.i:                                  ; preds = %._crit_edge330.i
  br i1 %.not353.i, label %.preheader.split.preheader.i, label %.lr.ph332.preheader.i

.lr.ph332.preheader.i:                            ; preds = %.preheader324.i
  %wide.trip.count373.i = zext i32 %i.j to i64    ; 2 uses
  br label %.lr.ph332.i

.lr.ph335.us.preheader.i:                         ; preds = %.lr.ph332.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %.lr.ph335.us.i

.preheader.split.preheader.i:                     ; preds = %.preheader324.i
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %.preheader.split.i

.lr.ph335.us.i:                                   ; preds = %._crit_edge336.us.i, %.lr.ph335.us.preheader.i
  %.0307.us.i = phi i32 [ %i.dy, %._crit_edge336.us.i ], [ 0, %.lr.ph335.us.preheader.i ]
  %.0306.us.i = phi i32 [ %i.dz, %._crit_edge336.us.i ], [ %i.de, %.lr.ph335.us.preheader.i ]
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.dg, i32 noundef range(i32 0, 1073741824) %i.i) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph335.us.i
  %indvars.iv375.i = phi i64 [ 0, %.lr.ph335.us.i ], [ %indvars.iv.next376.i, %bb.h ] ; 4 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv375.i ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 16, !tbaa !56
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2048 ; 2 uses
  store ptr %i.dk, ptr %i.di, align 16, !tbaa !56
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv375.i ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 16, !tbaa !56
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !64
  %i.do = add nsw i32 %i.dn, -32
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 32, ptr %i.dp, align 8, !tbaa !64
  %i.dq = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv375.i ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !60
  %i.dt = load <2 x ptr>, ptr %i.dq, align 8, !tbaa !67
  %i.du = getelementptr inbounds nuw i8, <2 x ptr> %i.dt, i64 2048
  store <2 x ptr> %i.du, ptr %i.dq, align 8, !tbaa !67
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i32 128, ptr %i.dv, align 8, !tbaa !68
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 1 dereferenceable(16) %i.dx, i64 16, i1 false)
  %indvars.iv.next376.i = add nuw nsw i64 %indvars.iv375.i, 1 ; 2 uses
  %exitcond379.not.i = icmp eq i64 %indvars.iv.next376.i, %wide.trip.count373.i
  br i1 %exitcond379.not.i, label %._crit_edge336.us.i, label %bb.h, !llvm.loop !69

._crit_edge336.us.i:                              ; preds = %bb.h
  %i.dy = add i32 %.0307.us.i, 2048               ; 2 uses
  %i.dz = add nsw i32 %.0306.us.i, -32            ; 2 uses
  %i.ea = icmp ugt i32 %i.dz, 32
  br i1 %i.ea, label %.lr.ph335.us.i, label %.loopexit.i, !llvm.loop !70

.lr.ph332.i:                                      ; preds = %.lr.ph332.i, %.lr.ph332.preheader.i
  %indvars.iv370.i = phi i64 [ 0, %.lr.ph332.preheader.i ], [ %indvars.iv.next371.i.1, %.lr.ph332.i ] ; 5 uses
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv370.i
  %i.ec = load ptr, ptr %i.eb, align 16, !tbaa !56
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv370.i ; 2 uses
  store ptr %i.ec, ptr %i.ed, align 16, !tbaa !56
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 32, ptr %i.ee, align 8, !tbaa !64
  %i.ef = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv370.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i32 128, ptr %i.eg, align 16, !tbaa !68
  %indvars.iv.next371.i = or disjoint i64 %indvars.iv370.i, 1 ; 3 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next371.i
  %i.ei = load ptr, ptr %i.eh, align 16, !tbaa !56
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next371.i ; 2 uses
  store ptr %i.ei, ptr %i.ej, align 16, !tbaa !56
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 32, ptr %i.ek, align 8, !tbaa !64
  %i.el = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.next371.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i32 128, ptr %i.em, align 8, !tbaa !68
  %indvars.iv.next371.i.1 = add nuw nsw i64 %indvars.iv370.i, 2 ; 2 uses
  %exitcond374.not.i.1 = icmp eq i64 %indvars.iv.next371.i.1, %wide.trip.count373.i
  br i1 %exitcond374.not.i.1, label %.lr.ph335.us.preheader.i, label %.lr.ph332.i, !llvm.loop !71

.preheader.split.i:                               ; preds = %.preheader.split.i, %.preheader.split.preheader.i
  %.0306.i = phi i32 [ %i.en, %.preheader.split.i ], [ %i.de, %.preheader.split.preheader.i ]
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef 0) #8
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.dh, i32 noundef 0) #8
  %i.en = add nsw i32 %.0306.i, -32               ; 2 uses
  %i.eo = icmp ugt i32 %i.en, 32
  br i1 %i.eo, label %.preheader.split.i, label %.loopexit.thread.i, !llvm.loop !70

.loopexit.thread.i:                               ; preds = %.preheader.split.i
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef range(i32 0, 1073741824) 0) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  br label %._crit_edge340.thread.i

.loopexit.i:                                      ; preds = %._crit_edge336.us.i, %._crit_edge330.i
  %.1308.i = phi i32 [ 0, %._crit_edge330.i ], [ %i.dy, %._crit_edge336.us.i ] ; 6 uses
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  br i1 %.not353.i, label %._crit_edge340.thread.i, label %.lr.ph339.split.i

.lr.ph339.split.i:                                ; preds = %.loopexit.i
  %i.ep = add nsw i32 %i.j, -1
  %i.eq = zext i32 %i.ep to i64                   ; 3 uses
  %wide.trip.count383.i = zext i32 %i.j to i64    ; 2 uses
  %36 = add nsw i64 %wide.trip.count383.i, -1     ; 12 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph339.split.i
  %indvars.iv380.i = phi i64 [ 0, %.lr.ph339.split.i ], [ %indvars.iv.next381.i, %bb.i ] ; 5 uses
  %i.er = icmp eq i64 %indvars.iv380.i, %i.eq
  %i.es = select i1 %i.er, i32 %.0303.i, i32 %.0302.i ; 2 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv380.i ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !64
  %i.ew = shl nsw i32 %i.ev, 6                    ; 2 uses
  %i.ex = load ptr, ptr %i.et, align 16, !tbaa !56
  %i.ey = zext i32 %i.ew to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ey
  %i.fa = add i32 %i.es, -51
  %i.fb = add i32 %.1308.i, %i.ew
  %i.fc = sub i32 %i.fa, %i.fb                    ; 2 uses
  %i.fd = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv380.i ; 4 uses
  %i.fe = zext i32 %i.fc to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.fd, ptr align 1 %i.ez, i64 %i.fe, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  store i8 -128, ptr %i.ff, align 1, !tbaa !10
  %i.fg = shl i32 %i.es, 3
  %i.fh = add i32 %i.fg, 616
  %i.fi = icmp ult i32 %i.fc, 56                  ; 2 uses
  %i.fj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fh) #9
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv380.i ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.423.i = select i1 %i.fi, i32 1, i32 2
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fi, i64 60, i64 124
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.fd, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.fj, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !10
  store i32 %.423.i, ptr %i.fl, align 8, !tbaa !64
  store ptr %i.fd, ptr %i.fk, align 16, !tbaa !56
  %indvars.iv.next381.i = add nuw nsw i64 %indvars.iv380.i, 1 ; 2 uses
  %exitcond384.not.i = icmp eq i64 %indvars.iv.next381.i, %36
  br i1 %exitcond384.not.i, label %._crit_edge340.loopexit.peel.begin.i, label %bb.i, !llvm.loop !72

._crit_edge340.loopexit.peel.begin.i:             ; preds = %bb.i
  %37 = icmp eq i64 %36, %i.eq
  %38 = select i1 %37, i32 %.0303.i, i32 %.0302.i ; 7 uses
  %39 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %36 ; 2 uses
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %41 = load i32, ptr %40, align 8, !tbaa !64
  %42 = shl nsw i32 %41, 6                        ; 2 uses
  %43 = load ptr, ptr %39, align 16, !tbaa !56
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 %44
  %.neg11 = add i32 %38, -51
  %46 = add i32 %.1308.i, %42
  %47 = sub i32 %.neg11, %46                      ; 2 uses
  %48 = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %36 ; 4 uses
  %49 = zext i32 %47 to i64                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %48, ptr align 1 %45, i64 %49, i1 false)
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 %49
  store i8 -128, ptr %50, align 1, !tbaa !10
  %51 = shl i32 %38, 3
  %52 = add i32 %51, 616
  %53 = icmp ult i32 %47, 56                      ; 2 uses
  %54 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %52) #9
  %55 = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %36 ; 2 uses
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 8
  %.425.i = select i1 %53, i32 1, i32 2
  %.424.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %53, i64 60, i64 124
  %.424.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %48, i64 %.424.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %54, ptr %.424.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !10
  store i32 %.425.i, ptr %56, align 8, !tbaa !64
  store ptr %48, ptr %55, align 16, !tbaa !56
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.fn = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.fp = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.fr = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.ft = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 616
  br label %bb.j

._crit_edge340.thread.i:                          ; preds = %.loopexit.i, %.loopexit.thread.i
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  br label %._crit_edge352.i

bb.j:                                             ; preds = %bb.j, %._crit_edge340.loopexit.peel.begin.i
  %indvars.iv387.i = phi i64 [ 0, %._crit_edge340.loopexit.peel.begin.i ], [ %indvars.iv.next388.i, %bb.j ] ; 8 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv387.i ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !5
  %i.fx = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fw) #9, !srcloc !73
  %i.fy = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv387.i ; 8 uses
  store i32 %i.fx, ptr %i.fy, align 16, !tbaa !10
  %i.fz = load i32, ptr %i.fm, align 8, !tbaa !74
  store i32 %i.fz, ptr %i.fv, align 4, !tbaa !5
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv387.i ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !5
  %i.gc = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gb) #9, !srcloc !75
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !10
  %i.ge = load i32, ptr %i.fo, align 4, !tbaa !76
  store i32 %i.ge, ptr %i.ga, align 4, !tbaa !5
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv387.i ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !5
  %i.gh = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gg) #9, !srcloc !77
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 %i.gh, ptr %i.gi, align 8, !tbaa !10
  %i.gj = load i32, ptr %i.fq, align 8, !tbaa !78
  store i32 %i.gj, ptr %i.gf, align 4, !tbaa !5
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv387.i ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !5
  %i.gm = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gl) #9, !srcloc !79
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !10
  %i.go = load i32, ptr %i.fs, align 4, !tbaa !80
  store i32 %i.go, ptr %i.gk, align 4, !tbaa !5
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv387.i ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !5
  %i.gr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gq) #9, !srcloc !81
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i32 %i.gr, ptr %i.gs, align 16, !tbaa !10
  %i.gt = load i32, ptr %i.fu, align 8, !tbaa !82
  store i32 %i.gt, ptr %i.gp, align 4, !tbaa !5
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fy, i64 20
  store i8 -128, ptr %i.gu, align 4, !tbaa !10
  %i.gv = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 672) #9, !srcloc !83
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fy, i64 60
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !10
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv387.i ; 2 uses
  store ptr %i.fy, ptr %i.gx, align 16, !tbaa !56
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i32 1, ptr %i.gy, align 8, !tbaa !64
  %indvars.iv.next388.i = add nuw nsw i64 %indvars.iv387.i, 1 ; 2 uses
  %exitcond391.not.i = icmp eq i64 %indvars.iv.next388.i, %wide.trip.count383.i
  br i1 %exitcond391.not.i, label %.lr.ph351.split.i, label %bb.j, !llvm.loop !84

.lr.ph351.split.i:                                ; preds = %bb.j
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 733 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 734 ; 2 uses
  %invariant.op = sub i32 36, %.1308.i
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph351.split.i
  %indvars.iv393.i = phi i64 [ 0, %.lr.ph351.split.i ], [ %indvars.iv.next394.i, %bb.k ] ; 8 uses
  %.0300349.i = phi ptr [ %i.b, %.lr.ph351.split.i ], [ %scevgep392.i, %bb.k ] ; 7 uses
  %.0309347.i = phi i64 [ 0, %.lr.ph351.split.i ], [ %i.jh, %bb.k ]
  %i.hc = icmp eq i64 %indvars.iv393.i, %i.eq
  %i.hd = select i1 %i.hc, i32 %.0303.i, i32 %.0302.i ; 5 uses
  %i.he = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv393.i ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !60
  %i.hh = load ptr, ptr %i.he, align 8, !tbaa !58
  %i.hi = sub i32 %i.hd, %.1308.i
  %i.hj = zext i32 %i.hi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hg, ptr align 1 %i.hh, i64 %i.hj, i1 false)
  %i.hk = load ptr, ptr %i.hf, align 8, !tbaa !60
  store ptr %i.hk, ptr %i.he, align 8, !tbaa !58
  %i.hl = add i32 %i.hd, 21
  %i.hm = zext i32 %i.hl to i64                   ; 2 uses
  %i.hn = getelementptr i8, ptr %.0300349.i, i64 %i.hm ; 6 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv393.i
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !5
  %i.hq = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hp) #9, !srcloc !85
  store i32 %i.hq, ptr %i.hn, align 4, !tbaa !5
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv393.i
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !5
  %i.ht = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hs) #9, !srcloc !86
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !5
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv393.i
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !5
  %i.hx = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hw) #9, !srcloc !87
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !5
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv393.i
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !5
  %i.ib = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ia) #9, !srcloc !88
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !5
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv393.i
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !5
  %i.if = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ie) #9, !srcloc !89
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !5
  %i.ih = getelementptr i8, ptr %i.hn, i64 20
  %i.ii = add i32 %i.hd, 4
  %i.ij = and i32 %i.ii, 15                       ; 2 uses
  %i.ik = trunc nuw nsw i32 %i.ij to i8
  %i.il = xor i8 %i.ik, 15
  %i.im = sub i32 11, %i.hd
  %i.in = and i32 %i.im, 15
  %i.io = zext nneg i32 %i.in to i64              ; 2 uses
  %i.ip = add nuw nsw i64 %i.io, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ih, i8 %i.il, i64 %i.ip, i1 false), !tbaa !10
  %scevgep.i = getelementptr i8, ptr %.0300349.i, i64 21
  %i.iq = getelementptr i8, ptr %scevgep.i, i64 %i.hm
  %scevgep392.i = getelementptr i8, ptr %i.iq, i64 %i.io ; 7 uses
  %i.ir = sub i32 %i.hd, %i.ij                    ; 3 uses
  %.reass.i.reass.reass = add i32 %i.ir, %invariant.op
  %i.is = lshr i32 %.reass.i.reass.reass, 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i32 %i.is, ptr %i.it, align 8, !tbaa !68
  %i.iu = add i32 %i.ir, 52                       ; 2 uses
  %i.iv = load i8, ptr %i.gz, align 4, !tbaa !10
  store i8 %i.iv, ptr %.0300349.i, align 1, !tbaa !10
  %i.iw = load i8, ptr %i.ha, align 1, !tbaa !10
  %i.ix = getelementptr inbounds nuw i8, ptr %.0300349.i, i64 1
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !10
  %i.iy = load i8, ptr %i.hb, align 2, !tbaa !10
  %i.iz = getelementptr inbounds nuw i8, ptr %.0300349.i, i64 2
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !10
  %i.ja = lshr i32 %i.iu, 8
  %i.jb = trunc i32 %i.ja to i8
  %i.jc = getelementptr inbounds nuw i8, ptr %.0300349.i, i64 3
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !10
  %i.jd = trunc i32 %i.iu to i8
  %i.je = getelementptr inbounds nuw i8, ptr %.0300349.i, i64 4
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !10
  %i.jf = add i32 %i.ir, 57
  %i.jg = zext i32 %i.jf to i64
  %i.jh = add i64 %.0309347.i, %i.jg              ; 2 uses
  %indvars.iv.next394.i = add nuw nsw i64 %indvars.iv393.i, 1 ; 2 uses
  %exitcond397.not.i = icmp eq i64 %indvars.iv.next394.i, %36
  br i1 %exitcond397.not.i, label %._crit_edge352.loopexit.peel.begin.i, label %bb.k, !llvm.loop !90

._crit_edge352.loopexit.peel.begin.i:             ; preds = %bb.k
  %57 = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %36 ; 4 uses
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  %59 = load ptr, ptr %58, align 16, !tbaa !60
  %60 = load ptr, ptr %57, align 8, !tbaa !58
  %61 = sub i32 %38, %.1308.i
  %62 = zext i32 %61 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 1 %60, i64 %62, i1 false)
  %63 = load ptr, ptr %58, align 16, !tbaa !60
  store ptr %63, ptr %57, align 8, !tbaa !58
  %64 = add i32 %38, 21
  %65 = zext i32 %64 to i64
  %66 = getelementptr i8, ptr %scevgep392.i, i64 %65 ; 6 uses
  %67 = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %36
  %68 = load i32, ptr %67, align 4, !tbaa !5
  %69 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %68) #9, !srcloc !85
  store i32 %69, ptr %66, align 4, !tbaa !5
  %70 = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %36
  %71 = load i32, ptr %70, align 4, !tbaa !5
  %72 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %71) #9, !srcloc !86
  %73 = getelementptr inbounds nuw i8, ptr %66, i64 4
  store i32 %72, ptr %73, align 4, !tbaa !5
  %74 = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %36
  %75 = load i32, ptr %74, align 4, !tbaa !5
  %76 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %75) #9, !srcloc !87
  %77 = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i32 %76, ptr %77, align 4, !tbaa !5
  %78 = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %36
  %79 = load i32, ptr %78, align 4, !tbaa !5
  %80 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %79) #9, !srcloc !88
  %81 = getelementptr inbounds nuw i8, ptr %66, i64 12
  store i32 %80, ptr %81, align 4, !tbaa !5
  %82 = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %36
  %83 = load i32, ptr %82, align 4, !tbaa !5
  %84 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %83) #9, !srcloc !89
  %85 = getelementptr inbounds nuw i8, ptr %66, i64 16
  store i32 %84, ptr %85, align 4, !tbaa !5
  %86 = getelementptr i8, ptr %66, i64 20
  %87 = add i32 %38, 4
  %88 = and i32 %87, 15                           ; 2 uses
  %89 = trunc nuw nsw i32 %88 to i8
  %90 = xor i8 %89, 15
  %91 = sub i32 11, %38
  %92 = and i32 %91, 15
  %narrow.i = add nuw nsw i32 %92, 1
  %93 = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %86, i8 %90, i64 %93, i1 false), !tbaa !10
  %94 = sub i32 %38, %88                          ; 3 uses
  %reass.sub.peel.i = add i32 %94, 36
  %95 = sub i32 %reass.sub.peel.i, %.1308.i
  %96 = lshr i32 %95, 4
  %97 = getelementptr inbounds nuw i8, ptr %57, i64 16
  store i32 %96, ptr %97, align 8, !tbaa !68
  %98 = add i32 %94, 52                           ; 2 uses
  %99 = load i8, ptr %i.gz, align 4, !tbaa !10
  store i8 %99, ptr %scevgep392.i, align 1, !tbaa !10
  %100 = load i8, ptr %i.ha, align 1, !tbaa !10
  %101 = getelementptr inbounds nuw i8, ptr %scevgep392.i, i64 1
  store i8 %100, ptr %101, align 1, !tbaa !10
  %102 = load i8, ptr %i.hb, align 2, !tbaa !10
  %103 = getelementptr inbounds nuw i8, ptr %scevgep392.i, i64 2
  store i8 %102, ptr %103, align 1, !tbaa !10
  %104 = lshr i32 %98, 8
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds nuw i8, ptr %scevgep392.i, i64 3
  store i8 %105, ptr %106, align 1, !tbaa !10
  %107 = trunc i32 %98 to i8
  %108 = getelementptr inbounds nuw i8, ptr %scevgep392.i, i64 4
  store i8 %107, ptr %108, align 1, !tbaa !10
  %109 = add i32 %94, 57
  %110 = zext i32 %109 to i64
  %111 = add i64 %i.jh, %110
  br label %._crit_edge352.i

._crit_edge352.i:                                 ; preds = %._crit_edge352.loopexit.peel.begin.i, %._crit_edge340.thread.i
  %.0309.lcssa.i = phi i64 [ 0, %._crit_edge340.thread.i ], [ %111, %._crit_edge352.loopexit.peel.begin.i ] ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.ji, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %5, i64 noundef 1024) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.u, i64 noundef 160) #8
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 %.0309.lcssa.i, ptr %i.jj, align 8, !tbaa !91
  %i.jk = trunc i64 %.0309.lcssa.i to i32
  br label %tls1_multi_block_encrypt.exit

tls1_multi_block_encrypt.exit:                    ; preds = %bb.a, %._crit_edge352.i
  %.0.i = phi i32 [ %i.jk, %._crit_edge352.i ], [ 0, %bb.a ]
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(none) }
attributes #10 = { noreturn nounwind }

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
!9 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 64, !10, i64 92, i64 4, !5}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !15, i64 440}
!12 = !{!"prov_aes_hmac_sha_ctx_st", !13, i64 0, !19, i64 192, !15, i64 440, !7, i64 448, !20, i64 464, !6, i64 472, !6, i64 476, !15, i64 480, !15, i64 488, !15, i64 496}
!13 = !{!"prov_cipher_ctx_st", !7, i64 0, !7, i64 16, !7, i64 32, !14, i64 48, !7, i64 56, !6, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !6, i64 104, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 112, !16, i64 120, !6, i64 128, !15, i64 136, !6, i64 144, !15, i64 152, !6, i64 160, !17, i64 168, !14, i64 176, !18, i64 184}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !14, i64 0}
!17 = !{!"p1 _ZTS17prov_cipher_hw_st", !14, i64 0}
!18 = !{!"p1 _ZTS15ossl_lib_ctx_st", !14, i64 0}
!19 = !{!"aes_key_st", !7, i64 0, !6, i64 240}
!20 = !{!"p1 _ZTS34prov_cipher_hw_aes_hmac_sha_ctx_st", !14, i64 0}
!21 = !{!13, !6, i64 144}
!22 = !{!13, !15, i64 152}
!23 = !{!24, !6, i64 788}
!24 = !{!"prov_aes_hmac_sha1_ctx_st", !12, i64 0, !25, i64 504, !25, i64 600, !25, i64 696}
!25 = !{!"SHAstate_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !7, i64 28, !6, i64 92}
!26 = !{!25, !6, i64 24}
!27 = !{!25, !6, i64 20}
!28 = !{!24, !6, i64 720}
!29 = !{!24, !6, i64 716}
!30 = !{!25, !6, i64 92}
!31 = !{i64 2371091}
!32 = !{i64 2149863052}
!33 = !{!24, !6, i64 696}
!34 = !{!24, !6, i64 700}
!35 = !{!24, !6, i64 704}
!36 = !{!24, !6, i64 708}
!37 = !{!24, !6, i64 712}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{i64 2149863293}
!41 = !{i64 2149863449}
!42 = !{i64 2149863605}
!43 = !{i64 2149863761}
!44 = !{i64 2149863917}
!45 = distinct !{!45, !39}
!46 = !{!12, !15, i64 496}
!47 = !{!12, !15, i64 480}
!48 = !{!49, !16, i64 8}
!49 = !{!"", !16, i64 0, !16, i64 8, !15, i64 16, !6, i64 24}
!50 = !{!49, !6, i64 24}
!51 = !{!12, !6, i64 472}
!52 = !{!49, !15, i64 16}
!53 = !{!12, !6, i64 476}
!54 = !{!49, !16, i64 0}
!55 = !{!12, !18, i64 184}
!56 = !{!57, !16, i64 0}
!57 = !{!"", !16, i64 0, !6, i64 8}
!58 = !{!59, !16, i64 0}
!59 = !{!"", !16, i64 0, !16, i64 8, !6, i64 16, !7, i64 24}
!60 = !{!59, !16, i64 8}
!61 = !{i64 2149860159}
!62 = distinct !{!62, !39}
!63 = !{i64 2149860319}
!64 = !{!57, !6, i64 8}
!65 = distinct !{!65, !39, !66}
!66 = !{!"llvm.loop.peeled.count", i32 1}
!67 = !{!16, !16, i64 0}
!68 = !{!59, !6, i64 16}
!69 = distinct !{!69, !39}
!70 = distinct !{!70, !39}
!71 = distinct !{!71, !39}
!72 = distinct !{!72, !39, !66}
!73 = !{i64 2149860843}
!74 = !{!24, !6, i64 600}
!75 = !{i64 2149860999}
!76 = !{!24, !6, i64 604}
!77 = !{i64 2149861155}
!78 = !{!24, !6, i64 608}
!79 = !{i64 2149861311}
!80 = !{!24, !6, i64 612}
!81 = !{i64 2149861467}
!82 = !{!24, !6, i64 616}
!83 = !{i64 2149861623}
!84 = distinct !{!84, !39}
!85 = !{i64 2149861825}
!86 = !{i64 2149862024}
!87 = !{i64 2149862223}
!88 = !{i64 2149862423}
!89 = !{i64 2149862623}
!90 = distinct !{!90, !39, !66}
!91 = !{!12, !15, i64 488}
end_hunk_0
