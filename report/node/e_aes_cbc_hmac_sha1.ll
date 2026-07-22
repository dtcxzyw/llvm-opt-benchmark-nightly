inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aesni_cbc_hmac_sha1_cipher:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.dl, i8 0, i64 60, i1 false)
  %i.lf = add i64 %.1351.lcssa511, 64
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge469.thread, %._crit_edge469
  %.2352 = phi i64 [ %i.lf, %._crit_edge469.thread ], [ %i.jv, %._crit_edge469 ]
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 524
  store i32 %i.hk, ptr %i.lg, align 4, !tbaa !10
  call void @sha1_block_data_order(ptr noundef nonnull %i.d, ptr noundef nonnull %i.dl, i64 noundef 1) #6
  %reass.sub476 = sub i64 %.2352, %.0349
  %i.lh = add i64 %reass.sub476, -73
  %.neg374 = ashr i64 %i.lh, 63
  %i.li = load i32, ptr %i.d, align 4, !tbaa !24
  %i.lj = load i32, ptr %i.dk, align 32, !tbaa !10
  %i.lk = trunc nsw i64 %.neg374 to i32           ; 5 uses
  %i.ll = and i32 %i.li, %i.lk
  %i.lm = or i32 %i.ll, %i.lj                     ; 2 uses
  store i32 %i.lm, ptr %i.dk, align 32, !tbaa !10
  %i.ln = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !25
  %i.lp = load i32, ptr %i.hl, align 4, !tbaa !10
  %i.lq = and i32 %i.lo, %i.lk
  %i.lr = or i32 %i.lq, %i.lp                     ; 2 uses
  store i32 %i.lr, ptr %i.hl, align 4, !tbaa !10
  %i.ls = getelementptr inbounds nuw i8, ptr %i.a, i64 444
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !26
  %i.lu = load i32, ptr %i.hm, align 8, !tbaa !10
  %i.lv = and i32 %i.lt, %i.lk
  %i.lw = or i32 %i.lv, %i.lu                     ; 2 uses
  store i32 %i.lw, ptr %i.hm, align 8, !tbaa !10
  %i.lx = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !27
  %i.lz = load i32, ptr %i.hn, align 4, !tbaa !10
  %i.ma = and i32 %i.ly, %i.lk
  %i.mb = or i32 %i.ma, %i.lz                     ; 2 uses
  store i32 %i.mb, ptr %i.hn, align 4, !tbaa !10
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 452
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !28
  %i.me = load i32, ptr %i.ho, align 16, !tbaa !10
  %i.mf = and i32 %i.md, %i.lk
  %i.mg = or i32 %i.mf, %i.me
  %i.mh = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lm) #7, !srcloc !31
  store i32 %i.mh, ptr %i.dk, align 32, !tbaa !10
  %i.mi = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lr) #7, !srcloc !32
  store i32 %i.mi, ptr %i.hl, align 4, !tbaa !10
  %i.mj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lw) #7, !srcloc !33
  store i32 %i.mj, ptr %i.hm, align 8, !tbaa !10
  %i.mk = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.mb) #7, !srcloc !34
  store i32 %i.mk, ptr %i.hn, align 4, !tbaa !10
  %i.ml = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.mg) #7, !srcloc !35
  store i32 %i.ml, ptr %i.ho, align 16, !tbaa !10
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.d, ptr noundef nonnull align 4 dereferenceable(96) %i.mm, i64 96, i1 false), !tbaa.struct !9
  %i.mn = load i32, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %.not.i421 = icmp eq i32 %i.mn, 0
  br i1 %.not.i421, label %.thread450, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mo = zext i32 %i.mn to i64
  %i.mp = sub nsw i64 64, %i.mo                   ; 2 uses
  %spec.select.i422 = call i64 @llvm.umin.i64(i64 %i.mp, i64 20) ; 3 uses
  %i.mq = call i32 @SHA1_Update(ptr noundef nonnull %i.d, ptr noundef nonnull %i.dk, i64 noundef %spec.select.i422) #6 ; 0 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.dk, i64 %spec.select.i422
  %i.ms = sub nuw nsw i64 20, %spec.select.i422
  %.not40.i428 = icmp ugt i64 %i.mp, 19
  br i1 %.not40.i428, label %sha1_update.exit429, label %.thread450

.thread450:                                       ; preds = %bb.ay, %bb.az
  %.1.i427453 = phi ptr [ %i.mr, %bb.az ], [ %i.dk, %bb.ay ]
  %i.mt = phi i64 [ %i.ms, %bb.az ], [ 20, %bb.ay ]
  %i.mu = call i32 @SHA1_Update(ptr noundef nonnull %i.d, ptr noundef nonnull %.1.i427453, i64 noundef %i.mt) #6 ; 0 uses
  br label %sha1_update.exit429

sha1_update.exit429:                              ; preds = %bb.az, %.thread450
  %i.mv = call i32 @SHA1_Final(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.d) #6 ; 0 uses
  %i.mw = xor i32 %i.em, -1
  %i.mx = sext i32 %i.mw to i64
  %i.my = add i64 %.1341, %i.mx                   ; 2 uses
  %i.mz = getelementptr i8, ptr %.1338, i64 %i.my
  %gepdiff = sub i64 %.0349, %i.my                ; 2 uses
  %i.na = add nuw nsw i32 %i.em, 20
  %i.nb = zext nneg i32 %i.na to i64
  br label %bb.ba

bb.ba:                                            ; preds = %sha1_update.exit429, %bb.ba
  %.3473 = phi i64 [ 0, %sha1_update.exit429 ], [ %i.ny, %bb.ba ] ; 4 uses
  %.1354472 = phi i64 [ 0, %sha1_update.exit429 ], [ %i.nx, %bb.ba ] ; 2 uses
  %.2357471 = phi i32 [ 0, %sha1_update.exit429 ], [ %i.nu, %bb.ba ]
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 %.3473
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !10  ; 2 uses
  %i.ne = zext i8 %i.nd to i32
  %i.nf = sub i64 %.3473, %gepdiff
  %i.ng = trunc i64 %i.nf to i32
  %i.nh = add i32 %i.ng, -20                      ; 2 uses
  %i.ni = xor i32 %i.eu, %i.ne
  %isneg = icmp slt i32 %i.nh, 0
  %i.nj = select i1 %isneg, i32 0, i32 %i.ni
  %i.nk = xor i64 %.3473, -1
  %i.nl = add i64 %gepdiff, %i.nk
  %i.nm = trunc i64 %i.nl to i32
  %i.nn = and i32 %i.nh, %i.nm                    ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.1354472
  %i.np = load i8, ptr %i.no, align 1, !tbaa !10
  %i.nq = xor i8 %i.np, %i.nd
  %i.nr = zext i8 %i.nq to i32
  %isneg376 = icmp slt i32 %i.nn, 0
  %i.ns = select i1 %isneg376, i32 %i.nr, i32 0
  %i.nt = or i32 %i.nj, %.2357471
  %i.nu = or i32 %i.nt, %i.ns                     ; 2 uses
  %i.nv = lshr i32 %i.nn, 31
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = add i64 %.1354472, %i.nw
  %i.ny = add nuw nsw i64 %.3473, 1               ; 2 uses
  %exitcond480.not = icmp eq i64 %i.ny, %i.nb
  br i1 %exitcond480.not, label %sha1_update.exit438, label %bb.ba, !llvm.loop !36

bb.bb:                                            ; preds = %bb.ab
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @aesni_cbc_encrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.nz, i32 noundef 0) #6
  %i.oa = load i32, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %.not.i430 = icmp eq i32 %i.oa, 0
  br i1 %.not.i430, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ob = zext i32 %i.oa to i64
  %i.oc = sub nsw i64 64, %i.ob
  %spec.select.i431 = call i64 @llvm.umin.i64(i64 %3, i64 %i.oc) ; 3 uses
  %i.od = call i32 @SHA1_Update(ptr noundef nonnull %i.d, ptr noundef %1, i64 noundef %spec.select.i431) #6 ; 0 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.i431
  %i.of = sub i64 %3, %spec.select.i431
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.033.i432 = phi i64 [ %i.of, %bb.bc ], [ %3, %bb.bb ] ; 4 uses
  %.032.i433 = phi ptr [ %i.oe, %bb.bc ], [ %1, %bb.bb ] ; 3 uses
  %i.og = and i64 %.033.i432, 63                  ; 2 uses
  %i.oh = and i64 %.033.i432, -64                 ; 3 uses
  %.not39.i434 = icmp eq i64 %i.oh, 0
  br i1 %.not39.i434, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.oi = lshr i64 %.033.i432, 6
  call void @sha1_block_data_order(ptr noundef nonnull %i.d, ptr noundef %.032.i433, i64 noundef %i.oi) #6
  %i.oj = getelementptr inbounds nuw i8, ptr %.032.i433, i64 %i.oh ; 2 uses
  %i.ok = lshr i64 %.033.i432, 29
  %i.ol = getelementptr inbounds nuw i8, ptr %i.a, i64 460 ; 3 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !18
  %i.on = trunc i64 %i.ok to i32
  %i.oo = add i32 %i.om, %i.on                    ; 2 uses
  store i32 %i.oo, ptr %i.ol, align 4, !tbaa !18
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 456 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !19
  %.tr.i435 = trunc i64 %i.oh to i32
  %i.or = shl i32 %.tr.i435, 3                    ; 2 uses
  %i.os = add i32 %i.oq, %i.or                    ; 2 uses
  store i32 %i.os, ptr %i.op, align 8, !tbaa !19
  %i.ot = icmp ult i32 %i.os, %i.or
  br i1 %i.ot, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ou = add i32 %i.oo, 1
  store i32 %i.ou, ptr %i.ol, align 4, !tbaa !18
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %.1.i436 = phi ptr [ %i.oj, %bb.bf ], [ %i.oj, %bb.be ], [ %.032.i433, %bb.bd ]
  %.not40.i437 = icmp eq i64 %i.og, 0
  br i1 %.not40.i437, label %sha1_update.exit438.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ov = call i32 @SHA1_Update(ptr noundef nonnull %i.d, ptr noundef %.1.i436, i64 noundef %i.og) #6 ; 0 uses
  br label %sha1_update.exit438.thread

sha1_update.exit438.thread:                       ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.bi

sha1_update.exit438.thread456:                    ; preds = %bb.ad, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.bi

sha1_update.exit438:                              ; preds = %bb.ba
  %.inv = icmp slt i32 %i.nu, 1
  %narrow = select i1 %.inv, i1 %i.en, i1 false
  %i.ow = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.bi

bb.bi:                                            ; preds = %bb.aa, %._crit_edge, %sha1_update.exit438.thread, %sha1_update.exit438, %sha1_update.exit438.thread456, %bb.d, %bb.a
  %.2 = phi i32 [ %i.ow, %sha1_update.exit438 ], [ 0, %sha1_update.exit438.thread456 ], [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %sha1_update.exit438.thread ], [ 1, %._crit_edge ], [ 1, %bb.aa ]
  ret i32 %.2
}

declare i32 @EVP_CIPHER_set_asn1_iv(ptr noundef, ptr noundef) #2

declare i32 @EVP_CIPHER_get_asn1_iv(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @aesni_cbc_hmac_sha1_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %4 = alloca [8 x %struct.HASH_DESC], align 16   ; 11 uses
  %5 = alloca [8 x %struct.HASH_DESC], align 16   ; 15 uses
  %6 = alloca [8 x %struct.CIPH_DESC], align 16   ; 13 uses
  %i.a = alloca [192 x i8], align 16              ; 4 uses
  %7 = alloca [8 x %union.anon.2], align 16       ; 16 uses
  %i.b = alloca [64 x i8], align 16               ; 22 uses
  %i.c = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #6 ; 42 uses
  switch i32 %1, label %bb.az [
    i32 23, label %bb.b
    i32 22, label %bb.s
    i32 28, label %bb.aa
    i32 25, label %bb.ab
    i32 26, label %bb.ao
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.d = icmp sgt i32 %2, 64
  br i1 %i.d, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 244 ; 5 uses
  %i.f = tail call i32 @SHA1_Init(ptr noundef nonnull %i.e) #6 ; 0 uses
  %i.g = zext nneg i32 %2 to i64                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17   ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext i32 %i.i to i64
  %i.k = sub nsw i64 64, %i.j
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.k) ; 3 uses
  %i.l = tail call i32 @SHA1_Update(ptr noundef nonnull %i.e, ptr noundef %3, i64 noundef %spec.select.i) #6 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select.i
  %i.n = sub nsw i64 %i.g, %spec.select.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.033.i = phi i64 [ %i.n, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %.032.i = phi ptr [ %i.m, %bb.d ], [ %3, %bb.c ] ; 3 uses
  %i.o = and i64 %.033.i, 63                      ; 2 uses
  %i.p = and i64 %.033.i, -64                     ; 3 uses
  %.not39.i = icmp eq i64 %i.p, 0
  br i1 %.not39.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = lshr i64 %.033.i, 6
  tail call void @sha1_block_data_order(ptr noundef nonnull %i.e, ptr noundef %.032.i, i64 noundef %i.q) #6
  %i.r = getelementptr inbounds nuw i8, ptr %.032.i, i64 %i.p ; 2 uses
  %i.s = lshr i64 %.033.i, 29
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 268 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18
  %i.v = trunc i64 %i.s to i32
  %i.w = add i32 %i.u, %i.v                       ; 2 uses
  store i32 %i.w, ptr %i.t, align 4, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19
  %.tr.i = trunc i64 %i.p to i32
  %i.z = shl i32 %.tr.i, 3                        ; 2 uses
  %i.aa = add i32 %i.y, %i.z                      ; 2 uses
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !19
  %i.ab = icmp ult i32 %i.aa, %i.z
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = add i32 %i.w, 1
  store i32 %i.ac, ptr %i.t, align 4, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.1.i = phi ptr [ %i.r, %bb.g ], [ %i.r, %bb.f ], [ %.032.i, %bb.e ]
  %.not40.i = icmp eq i64 %i.o, 0
  br i1 %.not40.i, label %sha1_update.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call i32 @SHA1_Update(ptr noundef nonnull %i.e, ptr noundef %.1.i, i64 noundef %i.o) #6 ; 0 uses
  br label %sha1_update.exit

sha1_update.exit:                                 ; preds = %bb.h, %bb.i
  %i.ae = call i32 @SHA1_Final(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e) #6 ; 0 uses
  br label %vector.body

bb.j:                                             ; preds = %bb.b
  %i.af = sext i32 %2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %3, i64 %i.af, i1 false)
  br label %vector.body

vector.body:                                      ; preds = %bb.j, %sha1_update.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.b, align 16, !tbaa !10
  %wide.load230 = load <16 x i8>, ptr %i.ag, align 16, !tbaa !10
  %i.ah = xor <16 x i8> %wide.load, splat (i8 54)
  %i.ai = xor <16 x i8> %wide.load230, splat (i8 54)
  store <16 x i8> %i.ah, ptr %i.b, align 16, !tbaa !10
  store <16 x i8> %i.ai, ptr %i.ag, align 16, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.aj, align 16, !tbaa !10
  %wide.load230.1 = load <16 x i8>, ptr %i.ak, align 16, !tbaa !10
  %i.al = xor <16 x i8> %wide.load.1, splat (i8 54)
  %i.am = xor <16 x i8> %wide.load230.1, splat (i8 54)
  store <16 x i8> %i.al, ptr %i.aj, align 16, !tbaa !10
  store <16 x i8> %i.am, ptr %i.ak, align 16, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 244 ; 4 uses
  %i.ao = call i32 @SHA1_Init(ptr noundef nonnull %i.an) #6 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !17 ; 2 uses
  %.not.i127 = icmp eq i32 %i.aq, 0
  br i1 %.not.i127, label %.thread, label %bb.k

bb.k:                                             ; preds = %vector.body
  %i.ar = zext i32 %i.aq to i64
  %i.as = sub nsw i64 64, %i.ar
  %spec.select.i128 = call i64 @llvm.umin.i64(i64 %i.as, i64 64) ; 3 uses
  %i.at = call i32 @SHA1_Update(ptr noundef nonnull %i.an, ptr noundef nonnull %i.b, i64 noundef %spec.select.i128) #6 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.i128 ; 2 uses
  %i.av = sub nuw nsw i64 64, %spec.select.i128   ; 2 uses
  %i.aw = and i64 %i.av, 63                       ; 2 uses
  %i.ax = and i64 %i.av, 64                       ; 2 uses
  %.not39.i131 = icmp eq i64 %i.ax, 0
  br i1 %.not39.i131, label %bb.m, label %.thread

.thread:                                          ; preds = %vector.body, %bb.k
  %i.ay = phi i64 [ %i.ax, %bb.k ], [ 64, %vector.body ] ; 2 uses
  %i.az = phi i64 [ %i.aw, %bb.k ], [ 0, %vector.body ] ; 2 uses
  %.032.i130161 = phi ptr [ %i.au, %bb.k ], [ %i.b, %vector.body ] ; 2 uses
  call void @sha1_block_data_order(ptr noundef nonnull %i.an, ptr noundef nonnull %.032.i130161, i64 noundef 1) #6
  %i.ba = getelementptr inbounds nuw i8, ptr %.032.i130161, i64 %i.ay ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 268 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !19
  %.tr.i132 = trunc nuw nsw i64 %i.ay to i32
  %i.bf = shl nuw nsw i32 %.tr.i132, 3            ; 2 uses
  %i.bg = add i32 %i.be, %i.bf                    ; 2 uses
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !19
  %i.bh = icmp ult i32 %i.bg, %i.bf
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread
  %i.bi = add i32 %i.bc, 1
  store i32 %i.bi, ptr %i.bb, align 4, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread, %bb.k
  %i.bj = phi i64 [ %i.az, %bb.l ], [ %i.az, %.thread ], [ %i.aw, %bb.k ] ; 2 uses
  %.1.i133 = phi ptr [ %i.ba, %bb.l ], [ %i.ba, %.thread ], [ %i.au, %bb.k ]
  %.not40.i134 = icmp eq i64 %i.bj, 0
  br i1 %.not40.i134, label %vector.body232, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = call i32 @SHA1_Update(ptr noundef nonnull %i.an, ptr noundef nonnull %.1.i133, i64 noundef %i.bj) #6 ; 0 uses
  br label %vector.body232

vector.body232:                                   ; preds = %bb.m, %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load234 = load <16 x i8>, ptr %i.b, align 16, !tbaa !10
  %wide.load235 = load <16 x i8>, ptr %i.bl, align 16, !tbaa !10
  %i.bm = xor <16 x i8> %wide.load234, splat (i8 106)
  %i.bn = xor <16 x i8> %wide.load235, splat (i8 106)
  store <16 x i8> %i.bm, ptr %i.b, align 16, !tbaa !10
  store <16 x i8> %i.bn, ptr %i.bl, align 16, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load234.1 = load <16 x i8>, ptr %i.bo, align 16, !tbaa !10
  %wide.load235.1 = load <16 x i8>, ptr %i.bp, align 16, !tbaa !10
  %i.bq = xor <16 x i8> %wide.load234.1, splat (i8 106)
  %i.br = xor <16 x i8> %wide.load235.1, splat (i8 106)
  store <16 x i8> %i.bq, ptr %i.bo, align 16, !tbaa !10
  store <16 x i8> %i.br, ptr %i.bp, align 16, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 340 ; 4 uses
  %i.bt = call i32 @SHA1_Init(ptr noundef nonnull %i.bs) #6 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !17 ; 2 uses
  %.not.i136 = icmp eq i32 %i.bv, 0
  br i1 %.not.i136, label %.thread162, label %bb.o

bb.o:                                             ; preds = %vector.body232
  %i.bw = zext i32 %i.bv to i64
  %i.bx = sub nsw i64 64, %i.bw
  %spec.select.i137 = call i64 @llvm.umin.i64(i64 %i.bx, i64 64) ; 3 uses
  %i.by = call i32 @SHA1_Update(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.b, i64 noundef %spec.select.i137) #6 ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.i137 ; 2 uses
  %i.ca = sub nuw nsw i64 64, %spec.select.i137   ; 2 uses
  %i.cb = and i64 %i.ca, 63                       ; 2 uses
  %i.cc = and i64 %i.ca, 64                       ; 2 uses
  %.not39.i140 = icmp eq i64 %i.cc, 0
  br i1 %.not39.i140, label %bb.q, label %.thread162

.thread162:                                       ; preds = %vector.body232, %bb.o
  %i.cd = phi i64 [ %i.cc, %bb.o ], [ 64, %vector.body232 ] ; 2 uses
  %i.ce = phi i64 [ %i.cb, %bb.o ], [ 0, %vector.body232 ] ; 2 uses
  %.032.i139167 = phi ptr [ %i.bz, %bb.o ], [ %i.b, %vector.body232 ] ; 2 uses
  call void @sha1_block_data_order(ptr noundef nonnull %i.bs, ptr noundef nonnull %.032.i139167, i64 noundef 1) #6
  %i.cf = getelementptr inbounds nuw i8, ptr %.032.i139167, i64 %i.cd ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 364 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 360 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !19
  %.tr.i141 = trunc nuw nsw i64 %i.cd to i32
  %i.ck = shl nuw nsw i32 %.tr.i141, 3            ; 2 uses
  %i.cl = add i32 %i.cj, %i.ck                    ; 2 uses
  store i32 %i.cl, ptr %i.ci, align 4, !tbaa !19
end_hunk_0
begin_hunk_1_@aesni_cbc_hmac_sha1_ctrl:bb.a
  %i.dh = zext i8 %i.dg to i32
  %i.di = or disjoint i32 %i.de, %i.dh            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !10
  %i.dk = icmp samesign ugt i32 %i.di, 769
  br i1 %i.dk, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dl = icmp samesign ult i32 %i.cx, 16
  br i1 %i.dl, label %bb.az, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = add nsw i32 %i.cx, -16                  ; 3 uses
  %i.dn = lshr i32 %i.dm, 8
  %i.do = trunc nuw i32 %i.dn to i8
  store i8 %i.do, ptr %i.cq, align 1, !tbaa !10
  %i.dp = trunc i32 %i.dm to i8
  store i8 %i.dp, ptr %i.cu, align 1, !tbaa !10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.0109 = phi i32 [ %i.dm, %bb.w ], [ %i.cx, %bb.u ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 436 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 244
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.dq, ptr noundef nonnull align 4 dereferenceable(96) %i.dr, i64 96, i1 false), !tbaa.struct !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !17 ; 2 uses
  %.not.i145 = icmp eq i32 %i.dt, 0
  br i1 %.not.i145, label %.thread172, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.du = zext i32 %i.dt to i64
  %i.dv = sub nsw i64 64, %i.du                   ; 2 uses
  %spec.select.i146 = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 13) ; 3 uses
  %i.dw = tail call i32 @SHA1_Update(ptr noundef nonnull %i.dq, ptr noundef nonnull %3, i64 noundef %spec.select.i146) #6 ; 0 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select.i146
  %i.dy = sub nuw nsw i64 13, %spec.select.i146
  %.not40.i152 = icmp ugt i64 %i.dv, 12
  br i1 %.not40.i152, label %sha1_update.exit153, label %.thread172

.thread172:                                       ; preds = %bb.x, %bb.y
  %.1.i151175 = phi ptr [ %i.dx, %bb.y ], [ %3, %bb.x ]
  %i.dz = phi i64 [ %i.dy, %bb.y ], [ 13, %bb.x ]
  %i.ea = tail call i32 @SHA1_Update(ptr noundef nonnull %i.dq, ptr noundef nonnull %.1.i151175, i64 noundef %i.dz) #6 ; 0 uses
  br label %sha1_update.exit153

sha1_update.exit153:                              ; preds = %bb.y, %.thread172
  %i.eb = add nuw nsw i32 %.0109, 36
  %i.ec = and i32 %i.eb, -16
  %i.ed = sub nsw i32 %i.ec, %.0109
  br label %bb.az

bb.z:                                             ; preds = %bb.t
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ee, ptr noundef nonnull align 1 dereferenceable(13) %3, i64 13, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 536
  store i64 13, ptr %i.ef, align 8, !tbaa !11
  br label %bb.az

bb.aa:                                            ; preds = %bb.a
  %i.eg = add nsw i32 %2, 36
  %i.eh = and i32 %i.eg, -16
  %i.ei = add nsw i32 %i.eh, 21
  br label %bb.az

bb.ab:                                            ; preds = %bb.a
  %i.ej = icmp slt i32 %2, 32
  br i1 %i.ej, label %bb.az, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !37 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 11
  %i.en = load i8, ptr %i.em, align 1, !tbaa !10  ; 3 uses
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !10
  %i.es = zext i8 %i.er to i32
  %i.et = or disjoint i32 %i.ep, %i.es            ; 3 uses
  %i.eu = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #6
  %.not = icmp eq i32 %i.eu, 0
  br i1 %.not, label %bb.az, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = load ptr, ptr %i.ek, align 8, !tbaa !37 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 9
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !10
  %i.ey = zext i8 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 10
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !10
  %i.fc = zext i8 %i.fb to i32
  %i.fd = or disjoint i32 %i.ez, %i.fc
  %i.fe = icmp samesign ult i32 %i.fd, 770
  br i1 %i.fe, label %bb.az, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not123 = icmp eq i32 %i.et, 0
  br i1 %.not123, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ff = icmp ult i8 %i.en, 16
  br i1 %i.ff, label %bb.az, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fg = icmp ugt i8 %i.en, 31
  br i1 %i.fg, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 4, !tbaa !5
  %i.fi = and i32 %i.fh, 32
  %.not124 = icmp eq i32 %i.fi, 0
  %spec.select = select i1 %.not124, i32 1, i32 2
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !41 ; 2 uses
  %i.fl = lshr i32 %i.fk, 2                       ; 2 uses
  %i.fm = icmp ne i32 %i.fl, 0
  %i.fn = icmp ult i32 %i.fk, 12
  %or.cond = and i1 %i.fn, %i.fm
  br i1 %or.cond, label %bb.aj, label %bb.az

bb.aj:                                            ; preds = %bb.ai
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !42
  %i.fq = trunc i64 %i.fp to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.ag, %bb.aj
  %.0108 = phi i32 [ %i.fl, %bb.aj ], [ %spec.select, %bb.ah ], [ 1, %bb.ag ] ; 2 uses
  %.0103 = phi i32 [ %i.fq, %bb.aj ], [ %i.et, %bb.ah ], [ %i.et, %bb.ag ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 436 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 244
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.fr, ptr noundef nonnull align 4 dereferenceable(96) %i.fs, i64 96, i1 false), !tbaa.struct !9
  %i.ft = load ptr, ptr %i.ek, align 8, !tbaa !37
  tail call fastcc void @sha1_update(ptr noundef nonnull %i.fr, ptr noundef %i.ft, i64 noundef 13)
  %i.fu = shl nuw nsw i32 %.0108, 2               ; 2 uses
  %i.fv = add nuw nsw i32 %.0108, 1               ; 3 uses
  %i.fw = lshr i32 %.0103, %i.fv                  ; 6 uses
  %i.fx = add i32 %i.fw, %.0103
  %i.fy = shl i32 %i.fw, %i.fv
  %i.fz = sub i32 %i.fx, %i.fy                    ; 5 uses
  %i.ga = icmp ugt i32 %i.fz, %i.fw
  br i1 %i.ga, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.gb = add i32 %i.fz, 22
  %i.gc = and i32 %i.gb, 63
  %i.gd = add nsw i32 %i.fu, -1                   ; 2 uses
  %i.ge = icmp samesign ult i32 %i.gc, %i.gd
  br i1 %i.ge, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gf = add nuw nsw i32 %i.fw, 1
  %i.gg = sub i32 %i.fz, %i.gd
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.0107 = phi i32 [ %i.gf, %bb.am ], [ %i.fw, %bb.al ], [ %i.fw, %bb.ak ]
  %.0106 = phi i32 [ %i.gg, %bb.am ], [ %i.fz, %bb.al ], [ %i.fz, %bb.ak ]
  %i.gh = add nuw nsw i32 %.0107, 36
  %i.gi = and i32 %i.gh, -16                      ; 2 uses
  %i.gj = add nuw nsw i32 %i.gi, 21
  %i.gk = shl i32 %i.gj, %i.fv
  %i.gl = add i32 %.0106, 36
  %i.gm = and i32 %i.gl, -16
  %i.gn = sub i32 %i.gm, %i.gi
  %i.go = add i32 %i.gn, %i.gk
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.fu, ptr %i.gp, align 8, !tbaa !41
  br label %bb.az

bb.ao:                                            ; preds = %bb.a
  %i.gq = load ptr, ptr %3, align 8, !tbaa !43    ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !37 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !42
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !41 ; 2 uses
  %i.gx = lshr i32 %i.gw, 2                       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.gy = and i32 %i.gw, -4                       ; 6 uses
  %i.gz = shl i32 %i.gx, 6
  %i.ha = call i32 @RAND_bytes(ptr noundef nonnull %7, i32 noundef %i.gz) #6
  %i.hb = icmp slt i32 %i.ha, 1
  br i1 %i.hb, label %tls1_1_multi_block_encrypt.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.hd = ptrtoint ptr %i.a to i64
  %i.he = and i64 %i.hd, 16
  %i.hf = sub nsw i64 0, %i.he
  %i.hg = getelementptr inbounds i8, ptr %i.hc, i64 %i.hf ; 21 uses
  %i.hh = trunc i64 %i.gu to i32                  ; 2 uses
  %i.hi = add nuw nsw i32 %i.gx, 1                ; 2 uses
  %i.hj = lshr i32 %i.hh, %i.hi                   ; 6 uses
  %i.hk = add i32 %i.hj, %i.hh
  %i.hl = shl i32 %i.hj, %i.hi
  %i.hm = sub i32 %i.hk, %i.hl                    ; 5 uses
  %i.hn = icmp ugt i32 %i.hm, %i.hj
  br i1 %i.hn, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ho = add i32 %i.hm, 22
  %i.hp = and i32 %i.ho, 63
  %i.hq = add nsw i32 %i.gy, -1                   ; 2 uses
  %i.hr = icmp ult i32 %i.hp, %i.hq
  br i1 %i.hr, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hs = add nuw i32 %i.hj, 1
  %i.ht = sub i32 %i.hm, %i.hq
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.0298.i = phi i32 [ %i.ht, %bb.ar ], [ %i.hm, %bb.aq ], [ %i.hm, %bb.ap ] ; 4 uses
  %.0297.i = phi i32 [ %i.hs, %bb.ar ], [ %i.hj, %bb.aq ], [ %i.hj, %bb.ap ] ; 6 uses
  store ptr %i.gs, ptr %4, align 16, !tbaa !44
  store ptr %i.gs, ptr %6, align 16, !tbaa !46
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gq, i64 21 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !48
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gq, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hw, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  %.not348.i = icmp eq i32 %i.gx, 0               ; 3 uses
  br i1 %.not348.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.as
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.hz = load i64, ptr %i.hy, align 4            ; 2 uses
  store i64 %i.hz, ptr %7, align 16
  %i.ia = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.hz) #7, !srcloc !49 ; 0 uses
  br label %._crit_edge325.i

.lr.ph.i:                                         ; preds = %bb.as
  %i.ib = add nuw i32 %.0297.i, 36
  %i.ic = and i32 %i.ib, -16
  %i.id = add nuw i32 %i.ic, 21
  %i.ie = zext i32 %.0297.i to i64
  %i.if = zext i32 %i.id to i64
  %wide.trip.count.i = zext i32 %i.gy to i64      ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i
  %8 = phi ptr [ %i.hu, %.lr.ph.i ], [ %i.ik, %bb.at ]
  %i.ig = phi ptr [ %i.gs, %.lr.ph.i ], [ %i.ih, %bb.at ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.at ] ; 3 uses
  %.pn320.i = phi ptr [ %7, %.lr.ph.i ], [ %.0305.i, %bb.at ]
  %.0305.i = getelementptr inbounds nuw i8, ptr %.pn320.i, i64 16 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie ; 3 uses
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i
  store ptr %i.ih, ptr %i.ii, align 16, !tbaa !44
  %i.ij = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv.i ; 3 uses
  store ptr %i.ih, ptr %i.ij, align 8, !tbaa !46
  %i.ik = getelementptr inbounds nuw i8, ptr %8, i64 %i.if ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !48
  %i.im = getelementptr inbounds i8, ptr %i.ik, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.im, ptr noundef nonnull align 1 dereferenceable(16) %.0305.i, i64 16, i1 false)
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.in, ptr noundef nonnull align 1 dereferenceable(16) %.0305.i, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph324.split.i, label %bb.at, !llvm.loop !50

.lr.ph324.split.i:                                ; preds = %bb.at
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.ip = load i64, ptr %i.io, align 4            ; 2 uses
  store i64 %i.ip, ptr %7, align 16
  %i.iq = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ip) #7, !srcloc !49
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 436
  %i.is = add nsw i32 %i.gy, -1
  %i.it = load i32, ptr %i.ir, align 4, !tbaa !24
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !25
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 444
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !26
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hg, i64 64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !27
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hg, i64 96
  %i.jd = getelementptr inbounds nuw i8, ptr %i.c, i64 452
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !28
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.jh = getelementptr inbounds nuw i8, ptr %i.c, i64 473
  %i.ji = getelementptr inbounds nuw i8, ptr %i.c, i64 474
  %i.jj = zext i32 %i.is to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph324.split.i
  %indvars.iv360.i = phi i64 [ 0, %.lr.ph324.split.i ], [ %indvars.iv.next361.i, %bb.au ] ; 11 uses
  %i.jk = icmp eq i64 %indvars.iv360.i, %i.jj
  %i.jl = select i1 %i.jk, i32 %.0298.i, i32 %.0297.i ; 3 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv360.i
  store i32 %i.it, ptr %i.jm, align 4, !tbaa !5
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv360.i
  store i32 %i.iv, ptr %i.jn, align 4, !tbaa !5
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv360.i
  store i32 %i.iy, ptr %i.jo, align 4, !tbaa !5
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv360.i
  store i32 %i.jb, ptr %i.jp, align 4, !tbaa !5
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv360.i
  store i32 %i.je, ptr %i.jq, align 4, !tbaa !5
  %i.jr = add i64 %indvars.iv360.i, %i.iq
  %i.js = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.jr) #7, !srcloc !51
  %i.jt = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv360.i ; 8 uses
  store i64 %i.js, ptr %i.jt, align 16, !tbaa !10
  %i.ju = load i8, ptr %i.jg, align 4, !tbaa !10
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i8 %i.ju, ptr %i.jv, align 8, !tbaa !10
  %i.jw = load i8, ptr %i.jh, align 1, !tbaa !10
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 9
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !10
  %i.jy = load i8, ptr %i.ji, align 2, !tbaa !10
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 10
  store i8 %i.jy, ptr %i.jz, align 2, !tbaa !10
  %i.ka = lshr i32 %i.jl, 8
  %i.kb = trunc i32 %i.ka to i8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jt, i64 11
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !10
  %i.kd = trunc i32 %i.jl to i8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store i8 %i.kd, ptr %i.ke, align 4, !tbaa !10
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jt, i64 13
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv360.i ; 3 uses
  %i.kh = load ptr, ptr %i.kg, align 16, !tbaa !44 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.kf, ptr noundef nonnull align 1 dereferenceable(51) %i.kh, i64 51, i1 false)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 51
  store ptr %i.ki, ptr %i.kg, align 16, !tbaa !44
  %i.kj = add i32 %i.jl, -51
  %i.kk = lshr i32 %i.kj, 6
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i32 %i.kk, ptr %i.kl, align 8, !tbaa !52
  %i.km = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv360.i ; 2 uses
  store ptr %i.jt, ptr %i.km, align 16, !tbaa !44
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store i32 1, ptr %i.kn, align 8, !tbaa !52
  %indvars.iv.next361.i = add nuw nsw i64 %indvars.iv360.i, 1 ; 2 uses
  %exitcond364.not.i = icmp eq i64 %indvars.iv.next361.i, %wide.trip.count.i
  br i1 %exitcond364.not.i, label %._crit_edge325.i, label %bb.au, !llvm.loop !53

._crit_edge325.i:                                 ; preds = %bb.au, %._crit_edge.thread.i
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  %i.ko = call i32 @llvm.umin.i32(i32 %.0297.i, i32 %.0298.i)
  %i.kp = add i32 %i.ko, -51                      ; 2 uses
  %i.kq = lshr i32 %i.kp, 6                       ; 2 uses
  %i.kr = icmp ugt i32 %i.kp, 2111
  br i1 %i.kr, label %.preheader319.i, label %.loopexit.i

.preheader319.i:                                  ; preds = %._crit_edge325.i
  br i1 %.not348.i, label %.preheader.split.i, label %.lr.ph327.preheader.i

.lr.ph327.preheader.i:                            ; preds = %.preheader319.i
  %wide.trip.count368.i = zext i32 %i.gy to i64   ; 2 uses
  br label %.lr.ph327.i

.lr.ph330.us.i:                                   ; preds = %.lr.ph327.i, %._crit_edge331.us.i
  %.0302.us.i = phi i32 [ %i.li, %._crit_edge331.us.i ], [ 0, %.lr.ph327.i ]
  %.0301.us.i = phi i32 [ %i.lj, %._crit_edge331.us.i ], [ %i.kq, %.lr.ph327.i ]
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef %i.c, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph330.us.i
  %indvars.iv370.i = phi i64 [ 0, %.lr.ph330.us.i ], [ %indvars.iv.next371.i, %bb.av ] ; 4 uses
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv370.i ; 3 uses
  %i.kt = load ptr, ptr %i.ks, align 16, !tbaa !44
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 2048 ; 2 uses
  store ptr %i.ku, ptr %i.ks, align 16, !tbaa !44
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv370.i ; 2 uses
  store ptr %i.ku, ptr %i.kv, align 16, !tbaa !44
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !52
  %i.ky = add nsw i32 %i.kx, -32
  store i32 %i.ky, ptr %i.kw, align 8, !tbaa !52
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i32 32, ptr %i.kz, align 8, !tbaa !52
  %i.la = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv370.i ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !48
  %i.ld = load <2 x ptr>, ptr %i.la, align 8, !tbaa !54
  %i.le = getelementptr inbounds nuw i8, <2 x ptr> %i.ld, i64 2048
  store <2 x ptr> %i.le, ptr %i.la, align 8, !tbaa !54
  %i.lf = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store i32 128, ptr %i.lf, align 8, !tbaa !55
  %i.lg = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, ptr noundef nonnull align 1 dereferenceable(16) %i.lh, i64 16, i1 false)
  %indvars.iv.next371.i = add nuw nsw i64 %indvars.iv370.i, 1 ; 2 uses
  %exitcond374.not.i = icmp eq i64 %indvars.iv.next371.i, %wide.trip.count368.i
  br i1 %exitcond374.not.i, label %._crit_edge331.us.i, label %bb.av, !llvm.loop !56

._crit_edge331.us.i:                              ; preds = %bb.av
  %i.li = add i32 %.0302.us.i, 2048               ; 2 uses
  %i.lj = add nsw i32 %.0301.us.i, -32            ; 2 uses
  %i.lk = icmp ugt i32 %i.lj, 32
  br i1 %i.lk, label %.lr.ph330.us.i, label %.loopexit.i, !llvm.loop !57

.lr.ph327.i:                                      ; preds = %.lr.ph327.i, %.lr.ph327.preheader.i
  %indvars.iv365.i = phi i64 [ 0, %.lr.ph327.preheader.i ], [ %indvars.iv.next366.i.1, %.lr.ph327.i ] ; 5 uses
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv365.i
  %i.lm = load ptr, ptr %i.ll, align 16, !tbaa !44
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv365.i ; 2 uses
  store ptr %i.lm, ptr %i.ln, align 16, !tbaa !44
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store i32 32, ptr %i.lo, align 8, !tbaa !52
  %i.lp = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv365.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store i32 128, ptr %i.lq, align 16, !tbaa !55
  %indvars.iv.next366.i = or disjoint i64 %indvars.iv365.i, 1 ; 3 uses
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.next366.i
  %i.ls = load ptr, ptr %i.lr, align 16, !tbaa !44
  %i.lt = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next366.i ; 2 uses
  store ptr %i.ls, ptr %i.lt, align 16, !tbaa !44
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i32 32, ptr %i.lu, align 8, !tbaa !52
  %i.lv = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv.next366.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store i32 128, ptr %i.lw, align 8, !tbaa !55
  %indvars.iv.next366.i.1 = add nuw nsw i64 %indvars.iv365.i, 2 ; 2 uses
  %exitcond369.not.i.1 = icmp eq i64 %indvars.iv.next366.i.1, %wide.trip.count368.i
  br i1 %exitcond369.not.i.1, label %.lr.ph330.us.i, label %.lr.ph327.i, !llvm.loop !58

.preheader.split.i:                               ; preds = %.preheader319.i, %.preheader.split.i
  %.0301.i = phi i32 [ %i.lx, %.preheader.split.i ], [ %i.kq, %.preheader319.i ]
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef 0) #6
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef nonnull %i.c, i32 noundef 0) #6
  %i.lx = add nsw i32 %.0301.i, -32               ; 2 uses
  %i.ly = icmp ugt i32 %i.lx, 32
  br i1 %i.ly, label %.preheader.split.i, label %.loopexit.thread.i, !llvm.loop !57

.loopexit.thread.i:                               ; preds = %.preheader.split.i
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %4, i32 noundef range(i32 0, 1073741824) 0) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  br label %._crit_edge335.thread.i

.loopexit.i:                                      ; preds = %._crit_edge331.us.i, %._crit_edge325.i
  %.1303.i = phi i32 [ 0, %._crit_edge325.i ], [ %i.li, %._crit_edge331.us.i ] ; 3 uses
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %4, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  br i1 %.not348.i, label %._crit_edge335.thread.i, label %.lr.ph334.split.i

.lr.ph334.split.i:                                ; preds = %.loopexit.i
  %i.lz = add nsw i32 %i.gy, -1
  %i.ma = zext i32 %i.lz to i64                   ; 2 uses
  %wide.trip.count378.i = zext i32 %i.gy to i64   ; 3 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph334.split.i
  %indvars.iv375.i = phi i64 [ 0, %.lr.ph334.split.i ], [ %indvars.iv.next376.i, %bb.aw ] ; 5 uses
  %i.mb = icmp eq i64 %indvars.iv375.i, %i.ma
  %i.mc = select i1 %i.mb, i32 %.0298.i, i32 %.0297.i ; 2 uses
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv375.i ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !52
  %i.mg = shl nsw i32 %i.mf, 6                    ; 2 uses
  %i.mh = load ptr, ptr %i.md, align 16, !tbaa !44
  %i.mi = zext i32 %i.mg to i64
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mi
  %i.mk = add i32 %i.mc, -51
  %i.ml = add i32 %.1303.i, %i.mg
  %i.mm = sub i32 %i.mk, %i.ml                    ; 2 uses
  %i.mn = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv375.i ; 4 uses
  %i.mo = zext i32 %i.mm to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.mn, ptr align 1 %i.mj, i64 %i.mo, i1 false)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mo
  store i8 -128, ptr %i.mp, align 1, !tbaa !10
  %i.mq = shl i32 %i.mc, 3
  %i.mr = add i32 %i.mq, 616
  %i.ms = icmp ult i32 %i.mm, 56                  ; 2 uses
  %i.mt = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.mr) #7
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv375.i ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %.418.i = select i1 %i.ms, i32 1, i32 2
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ms, i64 60, i64 124
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.mn, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.mt, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !10
  store i32 %.418.i, ptr %i.mv, align 8, !tbaa !52
  store ptr %i.mn, ptr %i.mu, align 16, !tbaa !44
  %indvars.iv.next376.i = add nuw nsw i64 %indvars.iv375.i, 1 ; 2 uses
  %exitcond379.not.i = icmp eq i64 %indvars.iv.next376.i, %wide.trip.count378.i
  br i1 %exitcond379.not.i, label %._crit_edge335.loopexit.peel.begin.i, label %bb.aw, !llvm.loop !59

._crit_edge335.thread.i:                          ; preds = %.loopexit.i, %.loopexit.thread.i
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  br label %._crit_edge347.i

._crit_edge335.loopexit.peel.begin.i:             ; preds = %bb.aw
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.c, i64 340
  %i.mx = getelementptr inbounds nuw i8, ptr %i.hg, i64 32 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.mz = getelementptr inbounds nuw i8, ptr %i.hg, i64 64 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.c, i64 348
  %i.nb = getelementptr inbounds nuw i8, ptr %i.hg, i64 96 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.nd = getelementptr inbounds nuw i8, ptr %i.hg, i64 128 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %._crit_edge335.loopexit.peel.begin.i
  %indvars.iv382.i = phi i64 [ 0, %._crit_edge335.loopexit.peel.begin.i ], [ %indvars.iv.next383.i, %bb.ax ] ; 8 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv382.i ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !5
  %i.nh = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ng) #7, !srcloc !60
  %i.ni = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv382.i ; 8 uses
  store i32 %i.nh, ptr %i.ni, align 16, !tbaa !10
  %i.nj = load i32, ptr %i.mw, align 4, !tbaa !61
  store i32 %i.nj, ptr %i.nf, align 4, !tbaa !5
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv382.i ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !5
  %i.nm = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nl) #7, !srcloc !62
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  store i32 %i.nm, ptr %i.nn, align 4, !tbaa !10
  %i.no = load i32, ptr %i.my, align 4, !tbaa !63
  store i32 %i.no, ptr %i.nk, align 4, !tbaa !5
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv382.i ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !5
  %i.nr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nq) #7, !srcloc !64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  store i32 %i.nr, ptr %i.ns, align 8, !tbaa !10
  %i.nt = load i32, ptr %i.na, align 4, !tbaa !65
  store i32 %i.nt, ptr %i.np, align 4, !tbaa !5
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv382.i ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !5
  %i.nw = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nv) #7, !srcloc !66
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ni, i64 12
  store i32 %i.nw, ptr %i.nx, align 4, !tbaa !10
  %i.ny = load i32, ptr %i.nc, align 4, !tbaa !67
  store i32 %i.ny, ptr %i.nu, align 4, !tbaa !5
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv382.i ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !5
  %i.ob = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.oa) #7, !srcloc !68
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  store i32 %i.ob, ptr %i.oc, align 16, !tbaa !10
  %i.od = load i32, ptr %i.ne, align 4, !tbaa !69
  store i32 %i.od, ptr %i.nz, align 4, !tbaa !5
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ni, i64 20
  store i8 -128, ptr %i.oe, align 4, !tbaa !10
  %i.of = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 672) #7, !srcloc !70
  %i.og = getelementptr inbounds nuw i8, ptr %i.ni, i64 60
  store i32 %i.of, ptr %i.og, align 4, !tbaa !10
  %i.oh = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv382.i ; 2 uses
  store ptr %i.ni, ptr %i.oh, align 16, !tbaa !44
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store i32 1, ptr %i.oi, align 8, !tbaa !52
  %indvars.iv.next383.i = add nuw nsw i64 %indvars.iv382.i, 1 ; 2 uses
  %exitcond386.not.i = icmp eq i64 %indvars.iv.next383.i, %wide.trip.count378.i
  br i1 %exitcond386.not.i, label %.lr.ph346.split.i, label %bb.ax, !llvm.loop !71

.lr.ph346.split.i:                                ; preds = %bb.ax
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  %i.oj = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.ok = getelementptr inbounds nuw i8, ptr %i.c, i64 473
  %i.ol = getelementptr inbounds nuw i8, ptr %i.c, i64 474
  %invariant.op = sub i32 36, %.1303.i
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph346.split.i
  %indvars.iv388.i = phi i64 [ 0, %.lr.ph346.split.i ], [ %indvars.iv.next389.i, %bb.ay ] ; 8 uses
  %.0295344.i = phi ptr [ %i.gq, %.lr.ph346.split.i ], [ %scevgep387.i, %bb.ay ] ; 7 uses
  %.0304342.i = phi i32 [ 0, %.lr.ph346.split.i ], [ %i.qq, %bb.ay ]
  %i.om = icmp eq i64 %indvars.iv388.i, %i.ma
  %i.on = select i1 %i.om, i32 %.0298.i, i32 %.0297.i ; 5 uses
  %i.oo = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv388.i ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8 ; 2 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !48
  %i.or = load ptr, ptr %i.oo, align 8, !tbaa !46
  %i.os = sub i32 %i.on, %.1303.i
  %i.ot = zext i32 %i.os to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oq, ptr align 1 %i.or, i64 %i.ot, i1 false)
  %i.ou = load ptr, ptr %i.op, align 8, !tbaa !48
  store ptr %i.ou, ptr %i.oo, align 8, !tbaa !46
  %i.ov = add i32 %i.on, 21
  %i.ow = zext i32 %i.ov to i64                   ; 2 uses
  %i.ox = getelementptr i8, ptr %.0295344.i, i64 %i.ow ; 6 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv388.i
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !5
  %i.pa = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.oz) #7, !srcloc !72
  store i32 %i.pa, ptr %i.ox, align 4, !tbaa !5
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv388.i
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !5
  %i.pd = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pc) #7, !srcloc !73
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  store i32 %i.pd, ptr %i.pe, align 4, !tbaa !5
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv388.i
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !5
  %i.ph = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pg) #7, !srcloc !74
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  store i32 %i.ph, ptr %i.pi, align 4, !tbaa !5
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv388.i
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !5
  %i.pl = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pk) #7, !srcloc !75
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ox, i64 12
  store i32 %i.pl, ptr %i.pm, align 4, !tbaa !5
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv388.i
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !5
  %i.pp = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.po) #7, !srcloc !76
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  store i32 %i.pp, ptr %i.pq, align 4, !tbaa !5
  %i.pr = getelementptr i8, ptr %i.ox, i64 20
  %i.ps = add i32 %i.on, 4
  %i.pt = and i32 %i.ps, 15                       ; 2 uses
  %i.pu = trunc nuw nsw i32 %i.pt to i8
  %i.pv = xor i8 %i.pu, 15
  %i.pw = sub i32 11, %i.on
  %i.px = and i32 %i.pw, 15
  %i.py = zext nneg i32 %i.px to i64              ; 2 uses
  %i.pz = add nuw nsw i64 %i.py, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.pr, i8 %i.pv, i64 %i.pz, i1 false), !tbaa !10
  %scevgep.i = getelementptr i8, ptr %.0295344.i, i64 21
  %i.qa = getelementptr i8, ptr %scevgep.i, i64 %i.ow
  %scevgep387.i = getelementptr i8, ptr %i.qa, i64 %i.py
  %i.qb = sub i32 %i.on, %i.pt                    ; 3 uses
  %.reass.i.reass.reass = add i32 %i.qb, %invariant.op
  %i.qc = lshr i32 %.reass.i.reass.reass, 4
  %i.qd = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  store i32 %i.qc, ptr %i.qd, align 8, !tbaa !55
  %i.qe = add i32 %i.qb, 52                       ; 2 uses
  %i.qf = load i8, ptr %i.oj, align 4, !tbaa !10
  store i8 %i.qf, ptr %.0295344.i, align 1, !tbaa !10
  %i.qg = load i8, ptr %i.ok, align 1, !tbaa !10
  %i.qh = getelementptr inbounds nuw i8, ptr %.0295344.i, i64 1
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !10
  %i.qi = load i8, ptr %i.ol, align 2, !tbaa !10
  %i.qj = getelementptr inbounds nuw i8, ptr %.0295344.i, i64 2
  store i8 %i.qi, ptr %i.qj, align 1, !tbaa !10
  %i.qk = lshr i32 %i.qe, 8
  %i.ql = trunc i32 %i.qk to i8
  %i.qm = getelementptr inbounds nuw i8, ptr %.0295344.i, i64 3
  store i8 %i.ql, ptr %i.qm, align 1, !tbaa !10
  %i.qn = trunc i32 %i.qe to i8
  %i.qo = getelementptr inbounds nuw i8, ptr %.0295344.i, i64 4
  store i8 %i.qn, ptr %i.qo, align 1, !tbaa !10
  %i.qp = add i32 %.0304342.i, 57
  %i.qq = add i32 %i.qp, %i.qb                    ; 2 uses
  %indvars.iv.next389.i = add nuw nsw i64 %indvars.iv388.i, 1 ; 2 uses
  %exitcond392.not.i = icmp eq i64 %indvars.iv.next389.i, %wide.trip.count378.i
  br i1 %exitcond392.not.i, label %._crit_edge347.i, label %bb.ay, !llvm.loop !77

._crit_edge347.i:                                 ; preds = %bb.ay, %._crit_edge335.thread.i
  %.0304.lcssa.i = phi i32 [ 0, %._crit_edge335.thread.i ], [ %i.qq, %bb.ay ]
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef %i.c, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @OPENSSL_cleanse(ptr noundef nonnull %7, i64 noundef 1024) #6
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.hg, i64 noundef 160) #6
  br label %tls1_1_multi_block_encrypt.exit

tls1_1_multi_block_encrypt.exit:                  ; preds = %bb.ao, %._crit_edge347.i
  %.0.i = phi i32 [ %.0304.lcssa.i, %._crit_edge347.i ], [ 0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.az

bb.az:                                            ; preds = %bb.a, %bb.an, %bb.ab, %bb.ad, %bb.af, %bb.ai, %bb.ac, %sha1_update.exit153, %bb.z, %bb.s, %bb.v, %tls1_1_multi_block_encrypt.exit, %bb.aa, %sha1_update.exit144
  %.2 = phi i32 [ -1, %bb.ac ], [ 1, %sha1_update.exit144 ], [ %.0.i, %tls1_1_multi_block_encrypt.exit ], [ %i.ei, %bb.aa ], [ 0, %bb.v ], [ 20, %bb.z ], [ -1, %bb.s ], [ %i.ed, %sha1_update.exit153 ], [ -1, %bb.ai ], [ -1, %bb.ab ], [ -1, %bb.ad ], [ %i.go, %bb.an ], [ 0, %bb.af ], [ -1, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @aesni_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @aesni_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SHA1_Init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sha1_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  %i.d = sub nsw i64 64, %i.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.d) ; 3 uses
  %i.e = tail call i32 @SHA1_Update(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %spec.select) #6 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.g = sub i64 %2, %spec.select
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.033 = phi i64 [ %i.g, %bb.b ], [ %2, %bb.a ]  ; 4 uses
  %.032 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.h = and i64 %.033, 63                        ; 2 uses
  %i.i = and i64 %.033, -64                       ; 3 uses
  %.not39 = icmp eq i64 %i.i, 0
  br i1 %.not39, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.033, 6
  tail call void @sha1_block_data_order(ptr noundef nonnull %0, ptr noundef %.032, i64 noundef %i.j) #6
  %i.k = getelementptr inbounds nuw i8, ptr %.032, i64 %i.i ; 2 uses
  %i.l = lshr i64 %.033, 29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18
  %i.o = trunc i64 %i.l to i32
  %i.p = add i32 %i.n, %i.o                       ; 2 uses
  store i32 %i.p, ptr %i.m, align 4, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !19
  %.tr = trunc i64 %i.i to i32
  %i.s = shl i32 %.tr, 3                          ; 2 uses
  %i.t = add i32 %i.r, %i.s                       ; 2 uses
  store i32 %i.t, ptr %i.q, align 4, !tbaa !19
  %i.u = icmp ult i32 %i.t, %i.s
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = add i32 %i.p, 1
  store i32 %i.v, ptr %i.m, align 4, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.1 = phi ptr [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %.032, %bb.c ]
  %.not40 = icmp eq i64 %i.h, 0
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @SHA1_Update(ptr noundef nonnull %0, ptr noundef %.1, i64 noundef %i.h) #6 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare void @aesni_cbc_sha1_enc(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SHA1_Final(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @aesni_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @sha1_block_data_order(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @SHA1_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @RAND_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @sha1_multi_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @aesni_multi_cbc_encrypt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind memory(none) }

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
!11 = !{!12, !15, i64 536}
!12 = !{!"", !13, i64 0, !14, i64 244, !14, i64 340, !14, i64 436, !15, i64 536, !7, i64 544}
!13 = !{!"aes_key_st", !7, i64 0, !6, i64 240}
!14 = !{!"SHAstate_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !7, i64 28, !6, i64 92}
!15 = !{!"long", !7, i64 0}
!16 = !{!12, !6, i64 528}
!17 = !{!14, !6, i64 92}
!18 = !{!14, !6, i64 24}
!19 = !{!14, !6, i64 20}
!20 = !{!12, !6, i64 460}
!21 = !{!12, !6, i64 456}
!22 = !{i64 2294062}
!23 = !{i64 2149827914}
!24 = !{!12, !6, i64 436}
!25 = !{!12, !6, i64 440}
!26 = !{!12, !6, i64 444}
!27 = !{!12, !6, i64 448}
!28 = !{!12, !6, i64 452}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{i64 2149828155}
!32 = !{i64 2149828311}
!33 = !{i64 2149828467}
!34 = !{i64 2149828623}
!35 = !{i64 2149828779}
!36 = distinct !{!36, !30}
!37 = !{!38, !39, i64 8}
!38 = !{!"", !39, i64 0, !39, i64 8, !15, i64 16, !6, i64 24}
!39 = !{!"p1 omnipotent char", !40, i64 0}
!40 = !{!"any pointer", !7, i64 0}
!41 = !{!38, !6, i64 24}
!42 = !{!38, !15, i64 16}
!43 = !{!38, !39, i64 0}
!44 = !{!45, !39, i64 0}
!45 = !{!"", !39, i64 0, !6, i64 8}
!46 = !{!47, !39, i64 0}
!47 = !{!"", !39, i64 0, !39, i64 8, !6, i64 16, !7, i64 24}
!48 = !{!47, !39, i64 8}
!49 = !{i64 2149824913}
!50 = distinct !{!50, !30}
!51 = !{i64 2149825073}
!52 = !{!45, !6, i64 8}
!53 = distinct !{!53, !30}
!54 = !{!39, !39, i64 0}
!55 = !{!47, !6, i64 16}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, !30}
!60 = !{i64 2149825597}
!61 = !{!12, !6, i64 340}
!62 = !{i64 2149825752}
!63 = !{!12, !6, i64 344}
!64 = !{i64 2149825907}
!65 = !{!12, !6, i64 348}
!66 = !{i64 2149826062}
!67 = !{!12, !6, i64 352}
!68 = !{i64 2149826217}
!69 = !{!12, !6, i64 356}
!70 = !{i64 2149826372}
!71 = distinct !{!71, !30}
!72 = !{i64 2149826573}
!73 = !{i64 2149826770}
!74 = !{i64 2149826967}
!75 = !{i64 2149827165}
!76 = !{i64 2149827363}
!77 = distinct !{!77, !30}
end_hunk_1
