Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 333
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 552
begin_hunk_0_@CRYPTO_xts128_encrypt:bb.a
  %i.df = add nuw i64 %indvars.iv, 16             ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !76
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !76
  %i.dk = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.df
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !76
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !76
  %i.dl = add nuw i64 %indvars.iv, 17             ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !76
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !76
  %i.dr = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.dl
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !76
  store i8 %i.dn, ptr %i.dp, align 1, !tbaa !76
  %indvars.iv.next.1 = add nuw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %.1.lcssa
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph72, !llvm.loop !2290

._crit_edge.loopexit:                             ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72, %vec.epilog.middle.block
  %.pre87 = load i64, ptr %7, align 16, !tbaa !76
  %.pre88 = load i64, ptr %i.cd, align 8, !tbaa !76
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.ds = phi i64 [ %.pre88, %._crit_edge.loopexit ], [ %i.cm, %bb.d ]
  %i.dt = phi i64 [ %.pre87, %._crit_edge.loopexit ], [ %i.ck, %bb.d ]
  %i.du = load i64, ptr %6, align 16, !tbaa !76
  %i.dv = xor i64 %i.dt, %i.du
  store i64 %i.dv, ptr %7, align 16, !tbaa !76
  %i.dw = load i64, ptr %i.bu, align 8, !tbaa !76
  %i.dx = xor i64 %i.ds, %i.dw
  store i64 %i.dx, ptr %i.cd, align 8, !tbaa !76
  %i.dy = load ptr, ptr %i.cg, align 8, !tbaa !2293
  %i.dz = load ptr, ptr %0, align 8, !tbaa !2294
  call void %i.dy(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.dz) #46
  %i.ea = load <2 x i64>, ptr %6, align 16, !tbaa !76
  %i.eb = load <2 x i64>, ptr %7, align 16, !tbaa !76
  %i.ec = xor <2 x i64> %i.eb, %i.ea
  store <2 x i64> %i.ec, ptr %7, align 16, !tbaa !76
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %._crit_edge, %._crit_edge75
  %.sink = phi ptr [ %i.bt, %._crit_edge75 ], [ %.053.lcssa, %._crit_edge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sink, ptr noundef nonnull readonly align 16 dereferenceable(16) %7, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.loopexit.sink.split, %bb.a
  %.0 = phi i64 [ 1, %.loopexit.sink.split ], [ 0, %bb.a ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_POLYVAL_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %.0.copyload.i.i = load i64, ptr %i.a, align 8  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.0.copyload.i12.i = load i64, ptr %i.c, align 8 ; 2 uses
  %i.d = and i64 %.0.copyload.i.i, 1              ; 2 uses
  %.neg.i.i.i.i = sub nsw i64 0, %i.d
  %i.e = tail call i64 @llvm.fshl.i64(i64 %.0.copyload.i12.i, i64 %.0.copyload.i.i, i64 63)
  %i.f = lshr i64 %.0.copyload.i12.i, 1
  %i.g = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i.i) #47, !srcloc !81
  %i.h = add nsw i64 %i.d, -1
  %i.i = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.h) #47, !srcloc !81 ; 0 uses
  %i.j = shl i64 %i.g, 56
  %i.k = and i64 %i.j, -2233785415175766016
  %i.l = xor i64 %i.k, %i.f
  %i.m = tail call noundef i64 @llvm.bswap.i64(i64 %i.l)
  store i64 %i.m, ptr %i.a, align 8
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.e)
  store i64 %i.n, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @CRYPTO_ghash_init(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_POLYVAL_update_blocks(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %.not20 = icmp eq i64 %2, 0
  br i1 %.not20, label %._crit_edge23, label %OPENSSL_memcpy.exit.lr.ph

OPENSSL_memcpy.exit.lr.ph:                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %OPENSSL_memcpy.exit.lr.ph, %._crit_edge
  %.01722 = phi i64 [ %2, %OPENSSL_memcpy.exit.lr.ph ], [ %i.e, %._crit_edge ] ; 2 uses
  %.01821 = phi ptr [ %1, %OPENSSL_memcpy.exit.lr.ph ], [ %i.d, %._crit_edge ] ; 2 uses
  %spec.store.select = call i64 @llvm.umin.i64(i64 %.01722, i64 512) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr readonly align 1 %.01821, i64 %spec.store.select, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.01821, i64 %spec.store.select
  %i.e = sub nuw i64 %.01722, %spec.store.select  ; 2 uses
  %i.f = lshr i64 %spec.store.select, 4           ; 3 uses
  switch i64 %i.f, label %.lr.ph.preheader.new [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %OPENSSL_memcpy.exit
  %unroll_iter = and i64 %i.f, 62
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.g = and i64 %spec.store.select, 16
  %lcmp.mod.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %OPENSSL_memcpy.exit, %._crit_edge.loopexit.unr-lcssa
  %.019.epil.init = phi i64 [ 0, %OPENSSL_memcpy.exit ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i64 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod27)
  %i.h = shl nuw nsw i64 %.019.epil.init, 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h ; 3 uses
  %.0.copyload.i.i.epil = load i64, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.0.copyload.i5.i.epil = load i64, ptr %i.j, align 8
  %i.k = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5.i.epil)
  store i64 %i.k, ptr %i.i, align 8
  %i.l = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.epil)
  store i64 %i.l, ptr %i.j, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %OPENSSL_memcpy.exit
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !2306
  call void %i.m(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef %spec.store.select) #46
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge23, label %OPENSSL_memcpy.exit, !llvm.loop !2303

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.019 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = shl nuw nsw i64 %.019, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n ; 3 uses
  %.0.copyload.i.i = load i64, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.0.copyload.i5.i = load i64, ptr %i.p, align 8
  %i.q = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5.i)
  store i64 %i.q, ptr %i.o, align 8
  %i.r = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i)
  store i64 %i.r, ptr %i.p, align 8
  %i.s = shl i64 %.019, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.0.copyload.i.i.1 = load i64, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %.0.copyload.i5.i.1 = load i64, ptr %i.v, align 8
  %i.w = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5.i.1)
  store i64 %i.w, ptr %i.u, align 8
  %i.x = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.1)
  store i64 %i.x, ptr %i.v, align 8
  %i.y = add nuw nsw i64 %.019, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2304

._crit_edge23:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @CRYPTO_POLYVAL_finish(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 16)) %1) local_unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull readonly align 1 dereferenceable(16) %0, i64 16, i1 false)
  %.0.copyload.i.i = load i64, ptr %1, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.0.copyload.i5.i = load i64, ptr %i.a, align 1
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5.i)
  store i64 %i.b, ptr %1, align 1
  %i.c = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i)
  store i64 %i.c, ptr %i.a, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PKCS5_PBKDF2_HMAC(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  %8 = alloca %struct.hmac_ctx_st, align 8        ; 16 uses
  %i.c = alloca [64 x i8], align 16               ; 10 uses
  %i.d = alloca [4 x i8], align 1                 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !207  ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1224) %8, i8 0, i64 1224, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  %i.h = call i32 @HMAC_Init_ex(ptr noundef nonnull %8, ptr noundef %0, i64 noundef %1, ptr noundef %5, ptr poison)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not53112 = icmp eq i64 %6, 0
  br i1 %.not53112, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader
  %9 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %10 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %11 = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 1216 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 816 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 416 ; 2 uses
  %i.n = icmp eq i32 %i.f, 0                      ; 2 uses
  %.not61108 = icmp ugt i32 %4, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph116, %._crit_edge111
  %.044115 = phi i32 [ 1, %.lr.ph116 ], [ %i.cg, %._crit_edge111 ] ; 5 uses
  %.047114 = phi ptr [ %7, %.lr.ph116 ], [ %i.cf, %._crit_edge111 ] ; 5 uses
  %.049113 = phi i64 [ %6, %.lr.ph116 ], [ %i.ce, %._crit_edge111 ] ; 2 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %.049113, i64 %i.g) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  %12 = lshr i32 %.044115, 24
  %13 = trunc nuw i32 %12 to i8
  store i8 %13, ptr %i.d, align 1, !tbaa !76
  %14 = lshr i32 %.044115, 16
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr %9, align 1, !tbaa !76
  %16 = lshr i32 %.044115, 8
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %10, align 1, !tbaa !76
  %18 = trunc i32 %.044115 to i8
  store i8 %18, ptr %11, align 1, !tbaa !76
  %i.o = call i32 @HMAC_Init_ex(ptr noundef nonnull %8, ptr noundef null, i64 noundef 0, ptr noundef null, ptr poison)
  %.not54 = icmp eq i32 %i.o, 0
  br i1 %.not54, label %.thread101, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.i, align 8, !tbaa !248
  %.off.i = add i8 %i.p, -1
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %HMAC_Update.exit, label %.thread101

HMAC_Update.exit:                                 ; preds = %bb.c
  store i8 2, ptr %i.i, align 8, !tbaa !248
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !254
  %i.t = call i32 %i.s(ptr noundef nonnull %i.k, ptr noundef %2, i64 noundef %3) #46, !inline_history !423
  %.not55 = icmp eq i32 %i.t, 0
  br i1 %.not55, label %.thread101, label %bb.d

bb.d:                                             ; preds = %HMAC_Update.exit
  %i.u = load i8, ptr %i.i, align 8, !tbaa !248
  %.off.i65 = add i8 %i.u, -1
  %switch.i66 = icmp ult i8 %.off.i65, 2
  br i1 %switch.i66, label %HMAC_Update.exit68, label %.thread101

HMAC_Update.exit68:                               ; preds = %bb.d
  store i8 2, ptr %i.i, align 8, !tbaa !248
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !254
  %i.y = call i32 %i.x(ptr noundef nonnull %i.k, ptr noundef nonnull %i.d, i64 noundef 4) #46, !inline_history !423
  %.not56 = icmp eq i32 %i.y, 0
  br i1 %.not56, label %.thread101, label %bb.e

bb.e:                                             ; preds = %HMAC_Update.exit68
  %i.z = load i8, ptr %i.i, align 8, !tbaa !248
  %.off.i69 = add i8 %i.z, -1
  %switch.i70 = icmp ult i8 %.off.i69, 2
  br i1 %switch.i70, label %bb.f, label %.thread101

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.ab = load ptr, ptr %8, align 8, !tbaa !249
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !255
  %i.ag = call i32 %i.af(ptr noundef nonnull %i.b, ptr noundef nonnull %i.k) #46, !inline_history !424
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(400) %i.l, i64 400, i1 false)
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !254
  %i.ak = sext i32 %i.ad to i64
  %i.al = call i32 %i.aj(ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, i64 noundef %i.ak) #46, !inline_history !424
  %.not32.i = icmp eq i32 %i.al, 0
  br i1 %.not32.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !255
  %i.an = call i32 %i.am(ptr noundef nonnull %i.c, ptr noundef nonnull %i.k) #46, !inline_history !424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(400) %i.m, i64 400, i1 false)
  store i8 3, ptr %i.i, align 8, !tbaa !248
  %i.ao = icmp eq i32 %i.an, 0
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #46
  br i1 %i.ao, label %HMAC_Final.exit.thread89, label %bb.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #46
  br label %HMAC_Final.exit.thread89

HMAC_Final.exit.thread89:                         ; preds = %bb.h, %.critedge.i
  call void @OPENSSL_cleanse(ptr noundef nonnull %8, i64 noundef 1224) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %.thread101

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br i1 %i.n, label %OPENSSL_memcpy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.047114, ptr nonnull readonly align 16 %i.c, i64 %spec.select, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.i, %bb.j
  br i1 %.not61108, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %OPENSSL_memcpy.exit
  %umax = call i64 @llvm.umax.i64(i64 %spec.select, i64 1) ; 4 uses
  %min.iters.check = icmp samesign ult i64 %spec.select, 4
  %min.iters.check126 = icmp samesign ult i64 %spec.select, 32
  %i.ap = and i64 %umax, 28
  %n.vec = and i64 %umax, 4294967264              ; 4 uses
  %cmp.n = icmp eq i64 %spec.select, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  %n.vec130 = and i64 %umax, 4294967292           ; 3 uses
  %cmp.n135 = icmp eq i64 %spec.select, %n.vec130
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph110, %._crit_edge
  %.042109 = phi i32 [ 1, %.lr.ph110 ], [ %i.bx, %._crit_edge ]
  %i.aq = call i32 @HMAC_Init_ex(ptr noundef nonnull %8, ptr noundef null, i64 noundef 0, ptr noundef null, ptr poison)
  %.not58 = icmp eq i32 %i.aq, 0
  br i1 %.not58, label %.thread101, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load i8, ptr %i.i, align 8, !tbaa !248
  %.off.i71 = add i8 %i.ar, -1
  %switch.i72 = icmp ult i8 %.off.i71, 2
  br i1 %switch.i72, label %HMAC_Update.exit74, label %.thread101

HMAC_Update.exit74:                               ; preds = %bb.l
  store i8 2, ptr %i.i, align 8, !tbaa !248
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !254
  %i.av = call i32 %i.au(ptr noundef nonnull %i.k, ptr noundef nonnull %i.c, i64 noundef %i.g) #46, !inline_history !423
  %.not59 = icmp eq i32 %i.av, 0
  br i1 %.not59, label %.thread101, label %bb.m

bb.m:                                             ; preds = %HMAC_Update.exit74
  %i.aw = load i8, ptr %i.i, align 8, !tbaa !248
  %.off.i75 = add i8 %i.aw, -1
  %switch.i76 = icmp ult i8 %.off.i75, 2
  br i1 %switch.i76, label %bb.n, label %.thread101

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.ay = load ptr, ptr %8, align 8, !tbaa !249
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !255
  %i.bd = call i32 %i.bc(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k) #46, !inline_history !424
  %.not.i78 = icmp eq i32 %i.bd, 0
  br i1 %.not.i78, label %.critedge.i81, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(400) %i.l, i64 400, i1 false)
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !250
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !254
  %i.bh = sext i32 %i.ba to i64
  %i.bi = call i32 %i.bg(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i64 noundef %i.bh) #46, !inline_history !424
  %.not32.i79 = icmp eq i32 %i.bi, 0
  br i1 %.not32.i79, label %.critedge.i81, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !255
  %i.bk = call i32 %i.bj(ptr noundef nonnull %i.c, ptr noundef nonnull %i.k) #46, !inline_history !424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(400) %i.m, i64 400, i1 false)
  store i8 3, ptr %i.i, align 8, !tbaa !248
  %i.bl = icmp eq i32 %i.bk, 0
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #46
  br i1 %i.bl, label %HMAC_Final.exit82.thread96, label %HMAC_Final.exit82

.critedge.i81:                                    ; preds = %bb.o, %bb.n
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #46
  br label %HMAC_Final.exit82.thread96

HMAC_Final.exit82.thread96:                       ; preds = %bb.p, %.critedge.i81
  call void @OPENSSL_cleanse(ptr noundef nonnull %8, i64 noundef 1224) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %.thread101

HMAC_Final.exit82:                                ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br i1 %i.n, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %HMAC_Final.exit82
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <16 x i8>, ptr %i.bm, align 16, !tbaa !76
  %wide.load127 = load <16 x i8>, ptr %i.bn, align 16, !tbaa !76
  %i.bo = getelementptr inbounds nuw i8, ptr %.047114, i64 %index ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load128 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !76
  %wide.load129 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !76
  %i.bq = xor <16 x i8> %wide.load128, %wide.load
  %i.br = xor <16 x i8> %wide.load129, %wide.load127
  store <16 x i8> %i.bq, ptr %i.bo, align 1, !tbaa !76
  store <16 x i8> %i.br, ptr %i.bp, align 1, !tbaa !76
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !2307

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check
end_hunk_0
begin_hunk_1_@BN_BLINDING_convert:bb.a

bn_blinding_update.exit.thread12:                 ; preds = %bb.g, %bb.h
  store i32 31, ptr %i.b, align 8, !tbaa !515
  br label %bb.i

bn_blinding_update.exit:                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  store i32 0, ptr %i.b, align 8, !tbaa !515
  br label %bn_blinding_update.exit.thread

bn_blinding_update.exit.thread:                   ; preds = %bb.h, %bn_blinding_update.exit
  %i.x = load ptr, ptr %1, align 8, !tbaa !513
  %i.y = tail call i32 @BN_mod_mul_montgomery(ptr noundef %0, ptr noundef %0, ptr noundef %i.x, ptr noundef %3, ptr noundef %4)
  br label %bb.i

bb.i:                                             ; preds = %bn_blinding_update.exit.thread16, %bn_blinding_update.exit.thread12, %bn_blinding_update.exit.thread
  %.0 = phi i32 [ 0, %bn_blinding_update.exit.thread16 ], [ %i.y, %bn_blinding_update.exit.thread ], [ 0, %bn_blinding_update.exit.thread12 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @BN_BLINDING_invert(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !514
  %i.c = tail call i32 @BN_mod_mul_montgomery(ptr noundef %0, ptr noundef %0, ptr noundef %i.b, ptr noundef %2, ptr noundef %3)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @RSA_padding_add_PKCS1_type_1(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 11
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 126, ptr noundef nonnull @.str.50, i32 noundef 26) #46
  br label %OPENSSL_memcpy.exit

bb.c:                                             ; preds = %bb.a
  %i.b = add i64 %1, -11
  %i.c = icmp ugt i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %OPENSSL_memset.exit

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 118, ptr noundef nonnull @.str.50, i32 noundef 31) #46
  br label %OPENSSL_memcpy.exit

OPENSSL_memset.exit:                              ; preds = %bb.c
  store i8 0, ptr %0, align 1, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.d, align 1, !tbaa !76
  %i.e = add i64 %1, -3
  %i.f = sub nuw i64 %i.e, %3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 -1, i64 %i.f, i1 false)
  %i.h = xor i64 %3, -1
  %i.i = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !76
  %i.k = icmp eq i64 %3, 0
  br i1 %i.k, label %OPENSSL_memcpy.exit, label %bb.e

bb.e:                                             ; preds = %OPENSSL_memset.exit
  %i.l = sub i64 0, %3
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.e, %OPENSSL_memset.exit, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %OPENSSL_memset.exit ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @RSA_padding_check_PKCS1_type_1(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %4, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 116, ptr noundef nonnull @.str.50, i32 noundef 49) #46
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %3, align 1, !tbaa !76
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !76
  %.not29 = icmp eq i8 %i.d, 1
  br i1 %.not29, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %.not35 = icmp eq i64 %4, 2
  br i1 %.not35, label %._crit_edge.thread, label %.lr.ph

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 107, ptr noundef nonnull @.str.50, i32 noundef 55) #46
  br label %bb.n

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.032 = phi i64 [ %i.g, %bb.g ], [ 2, %.preheader ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.032
  %i.f = load i8, ptr %i.e, align 1, !tbaa !76
  switch i8 %i.f, label %bb.f [
    i8 0, label %._crit_edge
    i8 -1, label %bb.g
  ]

bb.f:                                             ; preds = %.lr.ph
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.50, i32 noundef 67) #46
  br label %bb.n

bb.g:                                             ; preds = %.lr.ph
  %i.g = add nuw i64 %.032, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %4
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !2326

._crit_edge:                                      ; preds = %.lr.ph
  %i.h = icmp eq i64 %.032, %4
  br i1 %i.h, label %._crit_edge.thread, label %bb.h

._crit_edge.thread:                               ; preds = %bb.g, %.preheader, %._crit_edge
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 131, ptr noundef nonnull @.str.50, i32 noundef 73) #46
  br label %bb.n

bb.h:                                             ; preds = %._crit_edge
  %i.i = icmp ult i64 %.032, 10
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.50, i32 noundef 78) #46
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.j = add nuw i64 %.032, 1                     ; 3 uses
  %i.k = sub nuw i64 %4, %i.j                     ; 3 uses
  %i.l = icmp ugt i64 %i.k, %2
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 113, ptr noundef nonnull @.str.50, i32 noundef 86) #46
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.m = icmp eq i64 %4, %i.j
  br i1 %i.m, label %OPENSSL_memcpy.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull readonly align 1 %i.n, i64 %i.k, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.l, %bb.m
  store i64 %i.k, ptr %1, align 8, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %._crit_edge.thread, %bb.i, %bb.k, %OPENSSL_memcpy.exit, %bb.e, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %._crit_edge.thread ], [ 0, %bb.i ], [ 0, %bb.k ], [ 1, %OPENSSL_memcpy.exit ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @RSA_padding_add_none(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %3, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 114, ptr noundef nonnull @.str.50, i32 noundef 98) #46
  br label %OPENSSL_memcpy.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %3, %1
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 116, ptr noundef nonnull @.str.50, i32 noundef 103) #46
  br label %OPENSSL_memcpy.exit

bb.e:                                             ; preds = %bb.c
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %OPENSSL_memcpy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PKCS1_MGF1(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.env_md_ctx_st, align 8      ; 18 uses
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !207
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %.not71 = icmp eq i64 %1, 0
  br i1 %.not71, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.02474 = phi i32 [ 0, %.lr.ph ], [ %i.am, %bb.l ] ; 5 uses
  %.02773 = phi ptr [ %0, %.lr.ph ], [ %i.ak, %bb.l ] ; 3 uses
  %.03072 = phi i64 [ %1, %.lr.ph ], [ %i.al, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %9 = lshr i32 %.02474, 24
  %10 = trunc nuw i32 %9 to i8
  store i8 %10, ptr %i.a, align 1, !tbaa !76
  %11 = lshr i32 %.02474, 16
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %6, align 1, !tbaa !76
  %13 = lshr i32 %.02474, 8
  %14 = trunc i32 %13 to i8
  store i8 %14, ptr %7, align 1, !tbaa !76
  %15 = trunc i32 %.02474 to i8
  store i8 %15, ptr %8, align 1, !tbaa !76
  %i.h = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %5, ptr noundef %4, ptr poison)
  %.not34 = icmp eq i32 %i.h, 0
  br i1 %.not34, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !213  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.loopexit.sink.split, label %EVP_DigestUpdate.exit

EVP_DigestUpdate.exit:                            ; preds = %bb.c
  %i.k = call i32 %i.i(ptr noundef nonnull %5, ptr noundef %2, i64 noundef %3) #46, !inline_history !214
  %.not35 = icmp eq i32 %i.k, 0
  br i1 %.not35, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %EVP_DigestUpdate.exit
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !213  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit.sink.split, label %EVP_DigestUpdate.exit41

EVP_DigestUpdate.exit41:                          ; preds = %bb.d
  %i.n = call i32 %i.l(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i64 noundef 4) #46, !inline_history !214
  %.not36 = icmp eq i32 %i.n, 0
  br i1 %.not36, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %EVP_DigestUpdate.exit41
  %.not37 = icmp ult i64 %.03072, %i.e
  br i1 %.not37, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %5, align 8, !tbaa !222    ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !208
  %i.s = and i32 %i.r, 4
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @ERR_put_error(i32 noundef 29, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.20, i32 noundef 258) #46
  br label %.loopexit.sink.split

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.t = load ptr, ptr %5, align 8, !tbaa !222    ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit70, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !208
  %i.x = and i32 %i.w, 4
  %.not.i43 = icmp eq i32 %i.x, 0
  br i1 %.not.i43, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @ERR_put_error(i32 noundef 29, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.20, i32 noundef 258) #46
  br label %.loopexit70

.thread:                                          ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !225
  call void %i.z(ptr noundef nonnull %5, ptr noundef nonnull %i.b) #46, !inline_history !256
  %.pre.i45 = load ptr, ptr %5, align 8, !tbaa !222
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !215
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !224
  %i.ad = zext i32 %i.ac to i64
  call void @OPENSSL_cleanse(ptr noundef %i.aa, i64 noundef %i.ad) #46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02773, ptr nonnull readonly align 16 %i.b, i64 %.03072, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %.loopexit.sink.split

.loopexit70:                                      ; preds = %bb.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %.loopexit.sink.split

bb.l:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !225
  call void %i.af(ptr noundef nonnull %5, ptr noundef %.02773) #46, !inline_history !256
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !222
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !215
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i, i64 44
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !224
  %i.aj = zext i32 %i.ai to i64
  call void @OPENSSL_cleanse(ptr noundef %i.ag, i64 noundef %i.aj) #46
  %i.ak = getelementptr inbounds nuw i8, ptr %.02773, i64 %i.e
  %i.al = sub nuw i64 %.03072, %i.e               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.am = add i32 %.02474, 1
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !2327

.loopexit.sink.split:                             ; preds = %EVP_DigestUpdate.exit, %EVP_DigestUpdate.exit41, %bb.b, %bb.c, %bb.d, %bb.f, %.loopexit70, %bb.h, %.thread
  %.025.ph = phi i32 [ 1, %.thread ], [ 0, %bb.h ], [ 0, %.loopexit70 ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %EVP_DigestUpdate.exit41 ], [ 0, %EVP_DigestUpdate.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.sink.split, %bb.a
  %.025 = phi i32 [ %.025.ph, %.loopexit.sink.split ], [ 1, %bb.a ], [ 1, %bb.l ]
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !215
  call void @OPENSSL_free(ptr noundef %i.ao) #46
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !216 ; 2 uses
  %.not.i47 = icmp eq ptr %i.aq, null
  br i1 %.not.i47, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !217
  %i.at = and i64 %i.as, 1024
  %.not8.i = icmp eq i64 %i.at, 0
  br i1 %.not8.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !219
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !220
  call void %i.au(ptr noundef %i.aw) #46, !inline_history !221
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_verify_PKCS1_PSS_mgf1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.env_md_ctx_st, align 8      ; 13 uses
  %i.a = alloca [64 x i8], align 16               ; 2 uses
  %i.b = icmp eq ptr %3, null
  %spec.select = select i1 %i.b, ptr %2, ptr %3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !207  ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 6 uses
  switch i32 %5, label %bb.c [
    i32 -1, label %bb.b
    i32 -2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %5, -2
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 138, ptr noundef nonnull @.str.50, i32 noundef 186) #46
  br label %EVP_DigestUpdate.exit.thread

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.069 = phi i32 [ %i.d, %bb.b ], [ %5, %bb.c ], [ %5, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !521  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !93   ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i, label %bn_minimal_width.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !92   ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.j, %.lr.ph.i.i ], [ %i.r, %bb.g ] ; 4 uses
  %i.m = zext nneg i32 %.05.i.i to i64
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !80
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %bn_minimal_width.exit.thread7.i

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %.05.i.i, -1
  %i.s = icmp sgt i32 %.05.i.i, 1
  br i1 %i.s, label %bb.f, label %BN_num_bits.exit, !llvm.loop !10

bn_minimal_width.exit.i:                          ; preds = %bb.e
  %i.t = icmp eq i32 %i.j, 0
  br i1 %i.t, label %BN_num_bits.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i: ; preds = %bn_minimal_width.exit.i
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !92
  br label %bn_minimal_width.exit.thread7.i

bn_minimal_width.exit.thread7.i:                  ; preds = %bb.f, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i
  %i.u = phi ptr [ %.pre.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %i.l, %bb.f ]
  %.0.lcssa.i9.i = phi i32 [ %i.j, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %.05.i.i, %bb.f ]
  %i.v = sext i32 %.0.lcssa.i9.i to i64
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80   ; 3 uses
end_hunk_1
