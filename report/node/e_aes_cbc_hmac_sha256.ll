inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aesni_cbc_hmac_sha256_cipher:bb.a
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !5
  %i.nd = load i32, ptr %i.hs, align 4, !tbaa !10
  %i.ne = and i32 %i.nc, %i.my
  %i.nf = or i32 %i.ne, %i.nd                     ; 2 uses
  store i32 %i.nf, ptr %i.hs, align 4, !tbaa !10
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 476
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !5
  %i.ni = load i32, ptr %i.ht, align 8, !tbaa !10
  %i.nj = and i32 %i.nh, %i.my
  %i.nk = or i32 %i.nj, %i.ni                     ; 2 uses
  store i32 %i.nk, ptr %i.ht, align 8, !tbaa !10
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !5
  %i.nn = load i32, ptr %i.hu, align 4, !tbaa !10
  %i.no = and i32 %i.nm, %i.my
  %i.np = or i32 %i.no, %i.nn                     ; 2 uses
  store i32 %i.np, ptr %i.hu, align 4, !tbaa !10
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 484
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !5
  %i.ns = load i32, ptr %i.hv, align 16, !tbaa !10
  %i.nt = and i32 %i.nr, %i.my
  %i.nu = or i32 %i.nt, %i.ns                     ; 2 uses
  store i32 %i.nu, ptr %i.hv, align 16, !tbaa !10
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !5
  %i.nx = load i32, ptr %i.hw, align 4, !tbaa !10
  %i.ny = and i32 %i.nw, %i.my
  %i.nz = or i32 %i.ny, %i.nx                     ; 2 uses
  store i32 %i.nz, ptr %i.hw, align 4, !tbaa !10
  %i.oa = getelementptr inbounds nuw i8, ptr %i.a, i64 492
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !5
  %i.oc = load i32, ptr %i.hx, align 8, !tbaa !10
  %i.od = and i32 %i.ob, %i.my
  %i.oe = or i32 %i.od, %i.oc                     ; 2 uses
  store i32 %i.oe, ptr %i.hx, align 8, !tbaa !10
  %i.of = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.og = load i32, ptr %i.of, align 8, !tbaa !5
  %i.oh = load i32, ptr %i.hy, align 4, !tbaa !10
  %i.oi = and i32 %i.og, %i.my
  %i.oj = or i32 %i.oi, %i.oh
  %i.ok = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.na) #6, !srcloc !26
  store i32 %i.ok, ptr %i.dt, align 64, !tbaa !10
  %i.ol = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nf) #6, !srcloc !27
  store i32 %i.ol, ptr %i.hs, align 4, !tbaa !10
  %i.om = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nk) #6, !srcloc !28
  store i32 %i.om, ptr %i.ht, align 8, !tbaa !10
  %i.on = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.np) #6, !srcloc !29
  store i32 %i.on, ptr %i.hu, align 4, !tbaa !10
  %i.oo = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nu) #6, !srcloc !30
  store i32 %i.oo, ptr %i.hv, align 16, !tbaa !10
  %i.op = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nz) #6, !srcloc !31
  store i32 %i.op, ptr %i.hw, align 4, !tbaa !10
  %i.oq = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.oe) #6, !srcloc !32
  store i32 %i.oq, ptr %i.hx, align 8, !tbaa !10
  %i.or = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.oj) #6, !srcloc !33
  store i32 %i.or, ptr %i.hy, align 4, !tbaa !10
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.d, ptr noundef nonnull align 4 dereferenceable(112) %i.os, i64 112, i1 false), !tbaa.struct !9
  %i.ot = load i32, ptr %i.e, align 4, !tbaa !17  ; 2 uses
  %.not.i462 = icmp eq i32 %i.ot, 0
  br i1 %.not.i462, label %.thread491, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ou = zext i32 %i.ot to i64
  %i.ov = sub nsw i64 64, %i.ou                   ; 2 uses
  %spec.select.i463 = call i64 @llvm.umin.i64(i64 %i.ov, i64 32) ; 3 uses
  %i.ow = call i32 @SHA256_Update(ptr noundef nonnull %i.d, ptr noundef nonnull %i.dt, i64 noundef %spec.select.i463) #5 ; 0 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.dt, i64 %spec.select.i463
  %i.oy = sub nuw nsw i64 32, %spec.select.i463
  %.not40.i469 = icmp ugt i64 %i.ov, 31
  br i1 %.not40.i469, label %sha256_update.exit470, label %.thread491

.thread491:                                       ; preds = %bb.ay, %bb.az
  %.1.i468494 = phi ptr [ %i.ox, %bb.az ], [ %i.dt, %bb.ay ]
  %i.oz = phi i64 [ %i.oy, %bb.az ], [ 32, %bb.ay ]
  %i.pa = call i32 @SHA256_Update(ptr noundef nonnull %i.d, ptr noundef nonnull %.1.i468494, i64 noundef %i.oz) #5 ; 0 uses
  br label %sha256_update.exit470

sha256_update.exit470:                            ; preds = %bb.az, %.thread491
  %i.pb = call i32 @SHA256_Final(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.d) #5 ; 0 uses
  %i.pc = xor i32 %i.et, -1
  %i.pd = sext i32 %i.pc to i64
  %i.pe = add i64 %.0377, %i.pd                   ; 2 uses
  %i.pf = getelementptr i8, ptr %.0376, i64 %i.pe
  %gepdiff = sub i64 %.0386, %i.pe                ; 2 uses
  %i.pg = add nuw nsw i32 %i.et, 32
  %i.ph = zext nneg i32 %i.pg to i64
  br label %bb.ba

bb.ba:                                            ; preds = %sha256_update.exit470, %bb.ba
  %.3513 = phi i64 [ 0, %sha256_update.exit470 ], [ %i.qe, %bb.ba ] ; 4 uses
  %.1391512 = phi i64 [ 0, %sha256_update.exit470 ], [ %i.qd, %bb.ba ] ; 2 uses
  %.2394511 = phi i32 [ 0, %sha256_update.exit470 ], [ %i.qa, %bb.ba ]
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.3513
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !10  ; 2 uses
  %i.pk = zext i8 %i.pj to i32
  %i.pl = sub i64 %.3513, %gepdiff
  %i.pm = trunc i64 %i.pl to i32
  %i.pn = add i32 %i.pm, -32                      ; 2 uses
  %i.po = xor i32 %i.fb, %i.pk
  %isneg = icmp slt i32 %i.pn, 0
  %i.pp = select i1 %isneg, i32 0, i32 %i.po
  %i.pq = xor i64 %.3513, -1
  %i.pr = add i64 %gepdiff, %i.pq
  %i.ps = trunc i64 %i.pr to i32
  %i.pt = and i32 %i.pn, %i.ps                    ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.1391512
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !10
  %i.pw = xor i8 %i.pv, %i.pj
  %i.px = zext i8 %i.pw to i32
  %isneg413 = icmp slt i32 %i.pt, 0
  %i.py = select i1 %isneg413, i32 %i.px, i32 0
  %i.pz = or i32 %i.pp, %.2394511
  %i.qa = or i32 %i.pz, %i.py                     ; 2 uses
  %i.qb = lshr i32 %i.pt, 31
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = add i64 %.1391512, %i.qc
  %i.qe = add nuw nsw i64 %.3513, 1               ; 2 uses
  %exitcond520.not = icmp eq i64 %i.qe, %i.ph
  br i1 %exitcond520.not, label %sha256_update.exit479, label %bb.ba, !llvm.loop !34

bb.bb:                                            ; preds = %bb.ae
  %i.qf = load i32, ptr %i.e, align 4, !tbaa !17  ; 2 uses
  %.not.i471 = icmp eq i32 %i.qf, 0
  br i1 %.not.i471, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qg = zext i32 %i.qf to i64
  %i.qh = sub nsw i64 64, %i.qg
  %spec.select.i472 = call i64 @llvm.umin.i64(i64 %3, i64 %i.qh) ; 3 uses
  %i.qi = call i32 @SHA256_Update(ptr noundef nonnull %i.d, ptr noundef %1, i64 noundef %spec.select.i472) #5 ; 0 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.i472
  %i.qk = sub i64 %3, %spec.select.i472
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.033.i473 = phi i64 [ %i.qk, %bb.bc ], [ %3, %bb.bb ] ; 4 uses
  %.032.i474 = phi ptr [ %i.qj, %bb.bc ], [ %1, %bb.bb ] ; 3 uses
  %i.ql = and i64 %.033.i473, 63                  ; 2 uses
  %i.qm = and i64 %.033.i473, -64                 ; 3 uses
  %.not39.i475 = icmp eq i64 %i.qm, 0
  br i1 %.not39.i475, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.qn = lshr i64 %.033.i473, 6
  call void @sha256_block_data_order(ptr noundef nonnull %i.d, ptr noundef %.032.i474, i64 noundef %i.qn) #5
  %i.qo = getelementptr inbounds nuw i8, ptr %.032.i474, i64 %i.qm ; 2 uses
  %i.qp = lshr i64 %.033.i473, 29
  %i.qq = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 3 uses
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !18
  %i.qs = trunc i64 %i.qp to i32
  %i.qt = add i32 %i.qr, %i.qs                    ; 2 uses
  store i32 %i.qt, ptr %i.qq, align 8, !tbaa !18
  %i.qu = getelementptr inbounds nuw i8, ptr %i.a, i64 500 ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !19
  %.tr.i476 = trunc i64 %i.qm to i32
  %i.qw = shl i32 %.tr.i476, 3                    ; 2 uses
  %i.qx = add i32 %i.qv, %i.qw                    ; 2 uses
  store i32 %i.qx, ptr %i.qu, align 4, !tbaa !19
  %i.qy = icmp ult i32 %i.qx, %i.qw
  br i1 %i.qy, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.qz = add i32 %i.qt, 1
  store i32 %i.qz, ptr %i.qq, align 8, !tbaa !18
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %.1.i477 = phi ptr [ %i.qo, %bb.bf ], [ %i.qo, %bb.be ], [ %.032.i474, %bb.bd ]
  %.not40.i478 = icmp eq i64 %i.ql, 0
  br i1 %.not40.i478, label %sha256_update.exit479.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ra = call i32 @SHA256_Update(ptr noundef nonnull %i.d, ptr noundef %.1.i477, i64 noundef %i.ql) #5 ; 0 uses
  br label %sha256_update.exit479.thread

sha256_update.exit479.thread:                     ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.bi

sha256_update.exit479:                            ; preds = %bb.ba
  %.inv = icmp slt i32 %i.qa, 1
  %narrow = select i1 %.inv, i1 %i.eu, i1 false
  %i.rb = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.bi

bb.bi:                                            ; preds = %bb.ad, %._crit_edge, %sha256_update.exit479.thread, %sha256_update.exit479, %sha256_update.exit479.thread496, %bb.d, %bb.a
  %.2 = phi i32 [ %i.rb, %sha256_update.exit479 ], [ 0, %sha256_update.exit479.thread496 ], [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %sha256_update.exit479.thread ], [ 1, %._crit_edge ], [ 1, %bb.ad ]
  ret i32 %.2
}

declare i32 @EVP_CIPHER_set_asn1_iv(ptr noundef, ptr noundef) #1

declare i32 @EVP_CIPHER_get_asn1_iv(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @aesni_cbc_hmac_sha256_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca [8 x %struct.HASH_DESC], align 16   ; 11 uses
  %5 = alloca [8 x %struct.HASH_DESC], align 16   ; 15 uses
  %6 = alloca [8 x %struct.CIPH_DESC], align 16   ; 13 uses
  %i.a = alloca [288 x i8], align 16              ; 4 uses
  %7 = alloca [8 x %union.anon.2], align 16       ; 16 uses
  %i.b = alloca [64 x i8], align 16               ; 22 uses
  %i.c = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #5 ; 48 uses
  switch i32 %1, label %bb.bb [
    i32 23, label %bb.b
    i32 22, label %bb.u
    i32 28, label %bb.ac
    i32 25, label %bb.ad
    i32 26, label %bb.aq
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i32 %2, 64
  br i1 %i.e, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 244 ; 5 uses
  %i.g = tail call i32 @SHA256_Init(ptr noundef nonnull %i.f) #5 ; 0 uses
  %i.h = zext nneg i32 %2 to i64                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 348
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17   ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = zext i32 %i.j to i64
  %i.l = sub nsw i64 64, %i.k
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.l) ; 3 uses
  %i.m = tail call i32 @SHA256_Update(ptr noundef nonnull %i.f, ptr noundef %3, i64 noundef %spec.select.i) #5 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select.i
  %i.o = sub nsw i64 %i.h, %spec.select.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.033.i = phi i64 [ %i.o, %bb.e ], [ %i.h, %bb.d ] ; 4 uses
  %.032.i = phi ptr [ %i.n, %bb.e ], [ %3, %bb.d ] ; 3 uses
  %i.p = and i64 %.033.i, 63                      ; 2 uses
  %i.q = and i64 %.033.i, -64                     ; 3 uses
  %.not39.i = icmp eq i64 %i.q, 0
  br i1 %.not39.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = lshr i64 %.033.i, 6
  tail call void @sha256_block_data_order(ptr noundef nonnull %i.f, ptr noundef %.032.i, i64 noundef %i.r) #5
  %i.s = getelementptr inbounds nuw i8, ptr %.032.i, i64 %i.q ; 2 uses
  %i.t = lshr i64 %.033.i, 29
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18
  %i.w = trunc i64 %i.t to i32
  %i.x = add i32 %i.v, %i.w                       ; 2 uses
  store i32 %i.x, ptr %i.u, align 4, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 276 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19
  %.tr.i = trunc i64 %i.q to i32
  %i.aa = shl i32 %.tr.i, 3                       ; 2 uses
  %i.ab = add i32 %i.z, %i.aa                     ; 2 uses
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !19
  %i.ac = icmp ult i32 %i.ab, %i.aa
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = add i32 %i.x, 1
  store i32 %i.ad, ptr %i.u, align 4, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.1.i = phi ptr [ %i.s, %bb.h ], [ %i.s, %bb.g ], [ %.032.i, %bb.f ]
  %.not40.i = icmp eq i64 %i.p, 0
  br i1 %.not40.i, label %sha256_update.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 @SHA256_Update(ptr noundef nonnull %i.f, ptr noundef %.1.i, i64 noundef %i.p) #5 ; 0 uses
  br label %sha256_update.exit

sha256_update.exit:                               ; preds = %bb.i, %bb.j
  %i.af = call i32 @SHA256_Final(ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #5 ; 0 uses
  br label %vector.body

bb.k:                                             ; preds = %bb.c
  %i.ag = zext nneg i32 %2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %3, i64 %i.ag, i1 false)
  br label %vector.body

vector.body:                                      ; preds = %bb.k, %sha256_update.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.b, align 16, !tbaa !10
  %wide.load229 = load <16 x i8>, ptr %i.ah, align 16, !tbaa !10
  %i.ai = xor <16 x i8> %wide.load, splat (i8 54)
  %i.aj = xor <16 x i8> %wide.load229, splat (i8 54)
  store <16 x i8> %i.ai, ptr %i.b, align 16, !tbaa !10
  store <16 x i8> %i.aj, ptr %i.ah, align 16, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.ak, align 16, !tbaa !10
  %wide.load229.1 = load <16 x i8>, ptr %i.al, align 16, !tbaa !10
  %i.am = xor <16 x i8> %wide.load.1, splat (i8 54)
  %i.an = xor <16 x i8> %wide.load229.1, splat (i8 54)
  store <16 x i8> %i.am, ptr %i.ak, align 16, !tbaa !10
  store <16 x i8> %i.an, ptr %i.al, align 16, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 244 ; 4 uses
  %i.ap = call i32 @SHA256_Init(ptr noundef nonnull %i.ao) #5 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 348
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !17 ; 2 uses
  %.not.i131 = icmp eq i32 %i.ar, 0
  br i1 %.not.i131, label %.thread, label %bb.l

bb.l:                                             ; preds = %vector.body
  %i.as = zext i32 %i.ar to i64
  %i.at = sub nsw i64 64, %i.as
  %spec.select.i132 = call i64 @llvm.umin.i64(i64 %i.at, i64 64) ; 3 uses
  %i.au = call i32 @SHA256_Update(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.b, i64 noundef %spec.select.i132) #5 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.i132 ; 2 uses
  %i.aw = sub nuw nsw i64 64, %spec.select.i132   ; 2 uses
  %i.ax = and i64 %i.aw, 63                       ; 2 uses
  %i.ay = and i64 %i.aw, 64                       ; 2 uses
  %.not39.i135 = icmp eq i64 %i.ay, 0
  br i1 %.not39.i135, label %bb.n, label %.thread

.thread:                                          ; preds = %vector.body, %bb.l
  %i.az = phi i64 [ %i.ay, %bb.l ], [ 64, %vector.body ] ; 2 uses
  %i.ba = phi i64 [ %i.ax, %bb.l ], [ 0, %vector.body ] ; 2 uses
  %.032.i134165 = phi ptr [ %i.av, %bb.l ], [ %i.b, %vector.body ] ; 2 uses
  call void @sha256_block_data_order(ptr noundef nonnull %i.ao, ptr noundef nonnull %.032.i134165, i64 noundef 1) #5
  %i.bb = getelementptr inbounds nuw i8, ptr %.032.i134165, i64 %i.az ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 276 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !19
  %.tr.i136 = trunc nuw nsw i64 %i.az to i32
  %i.bg = shl nuw nsw i32 %.tr.i136, 3            ; 2 uses
  %i.bh = add i32 %i.bf, %i.bg                    ; 2 uses
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !19
  %i.bi = icmp ult i32 %i.bh, %i.bg
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread
  %i.bj = add i32 %i.bd, 1
  store i32 %i.bj, ptr %i.bc, align 4, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread, %bb.l
  %i.bk = phi i64 [ %i.ba, %bb.m ], [ %i.ba, %.thread ], [ %i.ax, %bb.l ] ; 2 uses
  %.1.i137 = phi ptr [ %i.bb, %bb.m ], [ %i.bb, %.thread ], [ %i.av, %bb.l ]
  %.not40.i138 = icmp eq i64 %i.bk, 0
  br i1 %.not40.i138, label %vector.body231, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = call i32 @SHA256_Update(ptr noundef nonnull %i.ao, ptr noundef nonnull %.1.i137, i64 noundef %i.bk) #5 ; 0 uses
  br label %vector.body231

vector.body231:                                   ; preds = %bb.n, %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load233 = load <16 x i8>, ptr %i.b, align 16, !tbaa !10
  %wide.load234 = load <16 x i8>, ptr %i.bm, align 16, !tbaa !10
  %i.bn = xor <16 x i8> %wide.load233, splat (i8 106)
  %i.bo = xor <16 x i8> %wide.load234, splat (i8 106)
  store <16 x i8> %i.bn, ptr %i.b, align 16, !tbaa !10
  store <16 x i8> %i.bo, ptr %i.bm, align 16, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load233.1 = load <16 x i8>, ptr %i.bp, align 16, !tbaa !10
  %wide.load234.1 = load <16 x i8>, ptr %i.bq, align 16, !tbaa !10
  %i.br = xor <16 x i8> %wide.load233.1, splat (i8 106)
  %i.bs = xor <16 x i8> %wide.load234.1, splat (i8 106)
  store <16 x i8> %i.br, ptr %i.bp, align 16, !tbaa !10
  store <16 x i8> %i.bs, ptr %i.bq, align 16, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 356 ; 4 uses
  %i.bu = call i32 @SHA256_Init(ptr noundef nonnull %i.bt) #5 ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 460
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !17 ; 2 uses
  %.not.i140 = icmp eq i32 %i.bw, 0
  br i1 %.not.i140, label %.thread166, label %bb.p

bb.p:                                             ; preds = %vector.body231
  %i.bx = zext i32 %i.bw to i64
  %i.by = sub nsw i64 64, %i.bx
  %spec.select.i141 = call i64 @llvm.umin.i64(i64 %i.by, i64 64) ; 3 uses
  %i.bz = call i32 @SHA256_Update(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.b, i64 noundef %spec.select.i141) #5 ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.i141 ; 2 uses
  %i.cb = sub nuw nsw i64 64, %spec.select.i141   ; 2 uses
  %i.cc = and i64 %i.cb, 63                       ; 2 uses
  %i.cd = and i64 %i.cb, 64                       ; 2 uses
  %.not39.i144 = icmp eq i64 %i.cd, 0
  br i1 %.not39.i144, label %bb.r, label %.thread166

.thread166:                                       ; preds = %vector.body231, %bb.p
  %i.ce = phi i64 [ %i.cd, %bb.p ], [ 64, %vector.body231 ] ; 2 uses
  %i.cf = phi i64 [ %i.cc, %bb.p ], [ 0, %vector.body231 ] ; 2 uses
  %.032.i143171 = phi ptr [ %i.ca, %bb.p ], [ %i.b, %vector.body231 ] ; 2 uses
  call void @sha256_block_data_order(ptr noundef nonnull %i.bt, ptr noundef nonnull %.032.i143171, i64 noundef 1) #5
  %i.cg = getelementptr inbounds nuw i8, ptr %.032.i143171, i64 %i.ce ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 392 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 388 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !19
end_hunk_0
begin_hunk_1_@aesni_cbc_hmac_sha256_ctrl:bb.a
  %i.de = zext i8 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 8
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !10
  %i.di = zext i8 %i.dh to i32
  %i.dj = or disjoint i32 %i.df, %i.di            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !10
  %i.dl = icmp samesign ugt i32 %i.dj, 769
  br i1 %i.dl, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dm = icmp samesign ult i32 %i.cy, 16
  br i1 %i.dm, label %bb.bb, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = add nsw i32 %i.cy, -16                  ; 3 uses
  %i.do = lshr i32 %i.dn, 8
  %i.dp = trunc nuw i32 %i.do to i8
  store i8 %i.dp, ptr %i.cr, align 1, !tbaa !10
  %i.dq = trunc i32 %i.dn to i8
  store i8 %i.dq, ptr %i.cv, align 1, !tbaa !10
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.0112 = phi i32 [ %i.dn, %bb.y ], [ %i.cy, %bb.w ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 468 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 244
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.dr, ptr noundef nonnull align 4 dereferenceable(112) %i.ds, i64 112, i1 false), !tbaa.struct !9
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 572
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !17 ; 2 uses
  %.not.i149 = icmp eq i32 %i.du, 0
  br i1 %.not.i149, label %.thread176, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = zext i32 %i.du to i64
  %i.dw = sub nsw i64 64, %i.dv                   ; 2 uses
  %spec.select.i150 = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 13) ; 3 uses
  %i.dx = tail call i32 @SHA256_Update(ptr noundef nonnull %i.dr, ptr noundef nonnull %3, i64 noundef %spec.select.i150) #5 ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select.i150
  %i.dz = sub nuw nsw i64 13, %spec.select.i150
  %.not40.i156 = icmp ugt i64 %i.dw, 12
  br i1 %.not40.i156, label %sha256_update.exit157, label %.thread176

.thread176:                                       ; preds = %bb.z, %bb.aa
  %.1.i155179 = phi ptr [ %i.dy, %bb.aa ], [ %3, %bb.z ]
  %i.ea = phi i64 [ %i.dz, %bb.aa ], [ 13, %bb.z ]
  %i.eb = tail call i32 @SHA256_Update(ptr noundef nonnull %i.dr, ptr noundef nonnull %.1.i155179, i64 noundef %i.ea) #5 ; 0 uses
  br label %sha256_update.exit157

sha256_update.exit157:                            ; preds = %bb.aa, %.thread176
  %i.ec = and i32 %.0112, 15
  %i.ed = sub nuw nsw i32 48, %i.ec
  br label %bb.bb

bb.ab:                                            ; preds = %bb.v
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ee, ptr noundef nonnull align 1 dereferenceable(13) %3, i64 13, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  store i64 13, ptr %i.ef, align 8, !tbaa !11
  br label %bb.bb

bb.ac:                                            ; preds = %bb.a
  %i.eg = and i32 %2, -16
  %i.eh = add nsw i32 %i.eg, 69
  br label %bb.bb

bb.ad:                                            ; preds = %bb.a
  %or.cond130 = icmp slt i32 %2, 32
  br i1 %or.cond130, label %bb.bb, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !35 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 11
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !10  ; 3 uses
  %i.em = zext i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !10
  %i.eq = zext i8 %i.ep to i32
  %i.er = or disjoint i32 %i.en, %i.eq            ; 3 uses
  %i.es = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #5
  %.not = icmp eq i32 %i.es, 0
  br i1 %.not, label %bb.bb, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.et = load ptr, ptr %i.ei, align 8, !tbaa !35 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 9
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !10
  %i.ew = zext i8 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 10
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !10
  %i.fa = zext i8 %i.ez to i32
  %i.fb = or disjoint i32 %i.ex, %i.fa
  %i.fc = icmp samesign ult i32 %i.fb, 770
  br i1 %i.fc, label %bb.bb, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not126 = icmp eq i32 %i.er, 0
  br i1 %.not126, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fd = icmp ult i8 %i.el, 16
  br i1 %i.fd, label %bb.bb, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fe = icmp ugt i8 %i.el, 31
  br i1 %i.fe, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ff = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 4, !tbaa !5
  %i.fg = and i32 %i.ff, 32
  %.not127 = icmp eq i32 %i.fg, 0
  %spec.select = select i1 %.not127, i32 1, i32 2
  br label %bb.am

bb.ak:                                            ; preds = %bb.ag
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !39 ; 2 uses
  %i.fj = lshr i32 %i.fi, 2                       ; 2 uses
  %i.fk = icmp ne i32 %i.fj, 0
  %i.fl = icmp ult i32 %i.fi, 12
  %or.cond = and i1 %i.fl, %i.fk
  br i1 %or.cond, label %bb.al, label %bb.bb

bb.al:                                            ; preds = %bb.ak
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !40
  %i.fo = trunc i64 %i.fn to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.ai, %bb.al
  %.0111 = phi i32 [ %i.fj, %bb.al ], [ %spec.select, %bb.aj ], [ 1, %bb.ai ] ; 2 uses
  %.0106 = phi i32 [ %i.fo, %bb.al ], [ %i.er, %bb.aj ], [ %i.er, %bb.ai ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 468 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 244
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.fp, ptr noundef nonnull align 4 dereferenceable(112) %i.fq, i64 112, i1 false), !tbaa.struct !9
  %i.fr = load ptr, ptr %i.ei, align 8, !tbaa !35
  tail call fastcc void @sha256_update(ptr noundef nonnull %i.fp, ptr noundef %i.fr, i64 noundef 13)
  %i.fs = shl nuw nsw i32 %.0111, 2               ; 2 uses
  %i.ft = add nuw nsw i32 %.0111, 1               ; 3 uses
  %i.fu = lshr i32 %.0106, %i.ft                  ; 6 uses
  %i.fv = add i32 %i.fu, %.0106
  %i.fw = shl i32 %i.fu, %i.ft
  %i.fx = sub i32 %i.fv, %i.fw                    ; 5 uses
  %i.fy = icmp ugt i32 %i.fx, %i.fu
  br i1 %i.fy, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fz = add i32 %i.fx, 22
  %i.ga = and i32 %i.fz, 63
  %i.gb = add nsw i32 %i.fs, -1                   ; 2 uses
  %i.gc = icmp samesign ult i32 %i.ga, %i.gb
  br i1 %i.gc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gd = add nuw nsw i32 %i.fu, 1
  %i.ge = sub i32 %i.fx, %i.gb
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.0110 = phi i32 [ %i.gd, %bb.ao ], [ %i.fu, %bb.an ], [ %i.fu, %bb.am ]
  %.0109 = phi i32 [ %i.ge, %bb.ao ], [ %i.fx, %bb.an ], [ %i.fx, %bb.am ]
  %i.gf = and i32 %.0110, -16                     ; 2 uses
  %i.gg = add nuw nsw i32 %i.gf, 69
  %i.gh = shl i32 %i.gg, %i.ft
  %i.gi = and i32 %.0109, -16
  %i.gj = sub i32 %i.gi, %i.gf
  %i.gk = add i32 %i.gj, %i.gh
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.fs, ptr %i.gl, align 8, !tbaa !39
  br label %bb.bb

bb.aq:                                            ; preds = %bb.a
  %i.gm = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !35 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !40
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !39 ; 2 uses
  %i.gt = lshr i32 %i.gs, 2                       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.gu = and i32 %i.gs, -4                       ; 6 uses
  %i.gv = shl i32 %i.gt, 6
  %i.gw = call i32 @RAND_bytes(ptr noundef nonnull %7, i32 noundef %i.gv) #5
  %i.gx = icmp slt i32 %i.gw, 1
  br i1 %i.gx, label %tls1_1_multi_block_encrypt.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.gz = ptrtoint ptr %i.a to i64
  %i.ha = and i64 %i.gz, 16
  %i.hb = sub nsw i64 0, %i.ha
  %i.hc = getelementptr inbounds i8, ptr %i.gy, i64 %i.hb ; 27 uses
  %i.hd = trunc i64 %i.gq to i32                  ; 2 uses
  %i.he = add nuw nsw i32 %i.gt, 1                ; 2 uses
  %i.hf = lshr i32 %i.hd, %i.he                   ; 6 uses
  %i.hg = add i32 %i.hf, %i.hd
  %i.hh = shl i32 %i.hf, %i.he
  %i.hi = sub i32 %i.hg, %i.hh                    ; 5 uses
  %i.hj = icmp ugt i32 %i.hi, %i.hf
  br i1 %i.hj, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.hk = add i32 %i.hi, 22
  %i.hl = and i32 %i.hk, 63
  %i.hm = add nsw i32 %i.gu, -1                   ; 2 uses
  %i.hn = icmp ult i32 %i.hl, %i.hm
  br i1 %i.hn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ho = add nuw i32 %i.hf, 1
  %i.hp = sub i32 %i.hi, %i.hm
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.0352.i = phi i32 [ %i.hp, %bb.at ], [ %i.hi, %bb.as ], [ %i.hi, %bb.ar ] ; 4 uses
  %.0351.i = phi i32 [ %i.ho, %bb.at ], [ %i.hf, %bb.as ], [ %i.hf, %bb.ar ] ; 6 uses
  store ptr %i.go, ptr %4, align 16, !tbaa !42
  store ptr %i.go, ptr %6, align 16, !tbaa !44
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gm, i64 21 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !46
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gm, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hs, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  %.not402.i = icmp eq i32 %i.gt, 0               ; 3 uses
  br i1 %.not402.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.au
  %i.hu = getelementptr inbounds nuw i8, ptr %i.c, i64 508
  %i.hv = load i64, ptr %i.hu, align 4            ; 2 uses
  store i64 %i.hv, ptr %7, align 16
  %i.hw = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.hv) #6, !srcloc !47 ; 0 uses
  br label %._crit_edge379.i

.lr.ph.i:                                         ; preds = %bb.au
  %i.hx = and i32 %.0351.i, -16
  %i.hy = add nuw i32 %i.hx, 69
  %i.hz = zext i32 %.0351.i to i64
  %i.ia = zext i32 %i.hy to i64
  %wide.trip.count.i = zext i32 %i.gu to i64      ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.i
  %8 = phi ptr [ %i.hq, %.lr.ph.i ], [ %i.if, %bb.av ]
  %i.ib = phi ptr [ %i.go, %.lr.ph.i ], [ %i.ic, %bb.av ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.av ] ; 3 uses
  %.pn374.i = phi ptr [ %7, %.lr.ph.i ], [ %.0359.i, %bb.av ]
  %.0359.i = getelementptr inbounds nuw i8, ptr %.pn374.i, i64 16 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz ; 3 uses
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i
  store ptr %i.ic, ptr %i.id, align 16, !tbaa !42
  %i.ie = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv.i ; 3 uses
  store ptr %i.ic, ptr %i.ie, align 8, !tbaa !44
  %i.if = getelementptr inbounds nuw i8, ptr %8, i64 %i.ia ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !46
  %i.ih = getelementptr inbounds i8, ptr %i.if, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ih, ptr noundef nonnull align 1 dereferenceable(16) %.0359.i, i64 16, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, ptr noundef nonnull align 1 dereferenceable(16) %.0359.i, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph378.split.i, label %bb.av, !llvm.loop !48

.lr.ph378.split.i:                                ; preds = %bb.av
  %i.ij = getelementptr inbounds nuw i8, ptr %i.c, i64 508
  %i.ik = load i64, ptr %i.ij, align 4            ; 2 uses
  store i64 %i.ik, ptr %7, align 16
  %i.il = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ik) #6, !srcloc !47
  %i.im = getelementptr inbounds nuw i8, ptr %i.c, i64 468
  %i.in = add nsw i32 %i.gu, -1
  %i.io = load i32, ptr %i.im, align 4, !tbaa !5
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !5
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 476
  %i.it = load i32, ptr %i.is, align 4, !tbaa !5
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !5
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hc, i64 96
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 484
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !5
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hc, i64 128
  %i.jb = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !5
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hc, i64 160
  %i.je = getelementptr inbounds nuw i8, ptr %i.c, i64 492
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !5
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hc, i64 192
  %i.jh = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !5
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hc, i64 224
  %i.jk = getelementptr inbounds nuw i8, ptr %i.c, i64 516
  %i.jl = getelementptr inbounds nuw i8, ptr %i.c, i64 517
  %i.jm = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.jn = zext i32 %i.in to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph378.split.i
  %indvars.iv414.i = phi i64 [ 0, %.lr.ph378.split.i ], [ %indvars.iv.next415.i, %bb.aw ] ; 14 uses
  %i.jo = icmp eq i64 %indvars.iv414.i, %i.jn
  %i.jp = select i1 %i.jo, i32 %.0352.i, i32 %.0351.i ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv414.i
  store i32 %i.io, ptr %i.jq, align 4, !tbaa !5
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv414.i
  store i32 %i.iq, ptr %i.jr, align 4, !tbaa !5
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv414.i
  store i32 %i.it, ptr %i.js, align 4, !tbaa !5
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv414.i
  store i32 %i.iw, ptr %i.jt, align 4, !tbaa !5
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv414.i
  store i32 %i.iz, ptr %i.ju, align 4, !tbaa !5
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv414.i
  store i32 %i.jc, ptr %i.jv, align 4, !tbaa !5
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv414.i
  store i32 %i.jf, ptr %i.jw, align 4, !tbaa !5
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %indvars.iv414.i
  store i32 %i.ji, ptr %i.jx, align 4, !tbaa !5
  %i.jy = add i64 %indvars.iv414.i, %i.il
  %i.jz = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.jy) #6, !srcloc !49
  %i.ka = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv414.i ; 8 uses
  store i64 %i.jz, ptr %i.ka, align 16, !tbaa !10
  %i.kb = load i8, ptr %i.jk, align 4, !tbaa !10
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i8 %i.kb, ptr %i.kc, align 8, !tbaa !10
  %i.kd = load i8, ptr %i.jl, align 1, !tbaa !10
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 9
  store i8 %i.kd, ptr %i.ke, align 1, !tbaa !10
  %i.kf = load i8, ptr %i.jm, align 2, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 10
  store i8 %i.kf, ptr %i.kg, align 2, !tbaa !10
  %i.kh = lshr i32 %i.jp, 8
  %i.ki = trunc i32 %i.kh to i8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ka, i64 11
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !10
  %i.kk = trunc i32 %i.jp to i8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  store i8 %i.kk, ptr %i.kl, align 4, !tbaa !10
  %i.km = getelementptr inbounds nuw i8, ptr %i.ka, i64 13
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv414.i ; 3 uses
  %i.ko = load ptr, ptr %i.kn, align 16, !tbaa !42 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.km, ptr noundef nonnull align 1 dereferenceable(51) %i.ko, i64 51, i1 false)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 51
  store ptr %i.kp, ptr %i.kn, align 16, !tbaa !42
  %i.kq = add i32 %i.jp, -51
  %i.kr = lshr i32 %i.kq, 6
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  store i32 %i.kr, ptr %i.ks, align 8, !tbaa !50
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv414.i ; 2 uses
  store ptr %i.ka, ptr %i.kt, align 16, !tbaa !42
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store i32 1, ptr %i.ku, align 8, !tbaa !50
  %indvars.iv.next415.i = add nuw nsw i64 %indvars.iv414.i, 1 ; 2 uses
  %exitcond418.not.i = icmp eq i64 %indvars.iv.next415.i, %wide.trip.count.i
  br i1 %exitcond418.not.i, label %._crit_edge379.i, label %bb.aw, !llvm.loop !51

._crit_edge379.i:                                 ; preds = %bb.aw, %._crit_edge.thread.i
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  %i.kv = call i32 @llvm.umin.i32(i32 %.0351.i, i32 %.0352.i)
  %i.kw = add i32 %i.kv, -51                      ; 2 uses
  %i.kx = lshr i32 %i.kw, 6                       ; 2 uses
  %i.ky = icmp ugt i32 %i.kw, 2111
  br i1 %i.ky, label %.preheader373.i, label %.loopexit.i

.preheader373.i:                                  ; preds = %._crit_edge379.i
  br i1 %.not402.i, label %.preheader.split.i, label %.lr.ph381.preheader.i

.lr.ph381.preheader.i:                            ; preds = %.preheader373.i
  %wide.trip.count422.i = zext i32 %i.gu to i64   ; 2 uses
  br label %.lr.ph381.i

.lr.ph384.us.i:                                   ; preds = %.lr.ph381.i, %._crit_edge385.us.i
  %.0356.us.i = phi i32 [ %i.lp, %._crit_edge385.us.i ], [ 0, %.lr.ph381.i ]
  %.0355.us.i = phi i32 [ %i.lq, %._crit_edge385.us.i ], [ %i.kx, %.lr.ph381.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef %i.c, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph384.us.i
  %indvars.iv424.i = phi i64 [ 0, %.lr.ph384.us.i ], [ %indvars.iv.next425.i, %bb.ax ] ; 4 uses
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv424.i ; 3 uses
  %i.la = load ptr, ptr %i.kz, align 16, !tbaa !42
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2048 ; 2 uses
  store ptr %i.lb, ptr %i.kz, align 16, !tbaa !42
  %i.lc = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv424.i ; 2 uses
  store ptr %i.lb, ptr %i.lc, align 16, !tbaa !42
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !50
  %i.lf = add nsw i32 %i.le, -32
  store i32 %i.lf, ptr %i.ld, align 8, !tbaa !50
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store i32 32, ptr %i.lg, align 8, !tbaa !50
  %i.lh = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv424.i ; 5 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !46
  %i.lk = load <2 x ptr>, ptr %i.lh, align 8, !tbaa !52
  %i.ll = getelementptr inbounds nuw i8, <2 x ptr> %i.lk, i64 2048
  store <2 x ptr> %i.ll, ptr %i.lh, align 8, !tbaa !52
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store i32 128, ptr %i.lm, align 8, !tbaa !53
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ln, ptr noundef nonnull align 1 dereferenceable(16) %i.lo, i64 16, i1 false)
  %indvars.iv.next425.i = add nuw nsw i64 %indvars.iv424.i, 1 ; 2 uses
  %exitcond428.not.i = icmp eq i64 %indvars.iv.next425.i, %wide.trip.count422.i
  br i1 %exitcond428.not.i, label %._crit_edge385.us.i, label %bb.ax, !llvm.loop !54

._crit_edge385.us.i:                              ; preds = %bb.ax
  %i.lp = add i32 %.0356.us.i, 2048               ; 2 uses
  %i.lq = add nsw i32 %.0355.us.i, -32            ; 2 uses
  %i.lr = icmp ugt i32 %i.lq, 32
  br i1 %i.lr, label %.lr.ph384.us.i, label %.loopexit.i, !llvm.loop !55

.lr.ph381.i:                                      ; preds = %.lr.ph381.i, %.lr.ph381.preheader.i
  %indvars.iv419.i = phi i64 [ 0, %.lr.ph381.preheader.i ], [ %indvars.iv.next420.i.1, %.lr.ph381.i ] ; 5 uses
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv419.i
  %i.lt = load ptr, ptr %i.ls, align 16, !tbaa !42
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv419.i ; 2 uses
  store ptr %i.lt, ptr %i.lu, align 16, !tbaa !42
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i32 32, ptr %i.lv, align 8, !tbaa !50
  %i.lw = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv419.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store i32 128, ptr %i.lx, align 16, !tbaa !53
  %indvars.iv.next420.i = or disjoint i64 %indvars.iv419.i, 1 ; 3 uses
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.next420.i
  %i.lz = load ptr, ptr %i.ly, align 16, !tbaa !42
  %i.ma = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next420.i ; 2 uses
  store ptr %i.lz, ptr %i.ma, align 16, !tbaa !42
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i32 32, ptr %i.mb, align 8, !tbaa !50
  %i.mc = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv.next420.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store i32 128, ptr %i.md, align 8, !tbaa !53
  %indvars.iv.next420.i.1 = add nuw nsw i64 %indvars.iv419.i, 2 ; 2 uses
  %exitcond423.not.i.1 = icmp eq i64 %indvars.iv.next420.i.1, %wide.trip.count422.i
  br i1 %exitcond423.not.i.1, label %.lr.ph384.us.i, label %.lr.ph381.i, !llvm.loop !56

.preheader.split.i:                               ; preds = %.preheader373.i, %.preheader.split.i
  %.0355.i = phi i32 [ %i.me, %.preheader.split.i ], [ %i.kx, %.preheader373.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef 0) #5
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef nonnull %i.c, i32 noundef 0) #5
  %i.me = add nsw i32 %.0355.i, -32               ; 2 uses
  %i.mf = icmp ugt i32 %i.me, 32
  br i1 %i.mf, label %.preheader.split.i, label %.loopexit.thread.i, !llvm.loop !55

.loopexit.thread.i:                               ; preds = %.preheader.split.i
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %4, i32 noundef range(i32 0, 1073741824) 0) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  br label %._crit_edge389.thread.i

.loopexit.i:                                      ; preds = %._crit_edge385.us.i, %._crit_edge379.i
  %.1357.i = phi i32 [ 0, %._crit_edge379.i ], [ %i.lp, %._crit_edge385.us.i ] ; 3 uses
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %4, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  br i1 %.not402.i, label %._crit_edge389.thread.i, label %.lr.ph388.split.i

.lr.ph388.split.i:                                ; preds = %.loopexit.i
  %i.mg = add nsw i32 %i.gu, -1
  %i.mh = zext i32 %i.mg to i64                   ; 2 uses
  %wide.trip.count432.i = zext i32 %i.gu to i64   ; 3 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph388.split.i
  %indvars.iv429.i = phi i64 [ 0, %.lr.ph388.split.i ], [ %indvars.iv.next430.i, %bb.ay ] ; 5 uses
  %i.mi = icmp eq i64 %indvars.iv429.i, %i.mh
  %i.mj = select i1 %i.mi, i32 %.0352.i, i32 %.0351.i ; 2 uses
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv429.i ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !50
  %i.mn = shl nsw i32 %i.mm, 6                    ; 2 uses
  %i.mo = load ptr, ptr %i.mk, align 16, !tbaa !42
  %i.mp = zext i32 %i.mn to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mp
  %i.mr = add i32 %i.mj, -51
  %i.ms = add i32 %.1357.i, %i.mn
  %i.mt = sub i32 %i.mr, %i.ms                    ; 2 uses
  %i.mu = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv429.i ; 4 uses
  %i.mv = zext i32 %i.mt to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.mu, ptr align 1 %i.mq, i64 %i.mv, i1 false)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mv
  store i8 -128, ptr %i.mw, align 1, !tbaa !10
  %i.mx = shl i32 %i.mj, 3
  %i.my = add i32 %i.mx, 616
  %i.mz = icmp ult i32 %i.mt, 56                  ; 2 uses
  %i.na = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.my) #6
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv429.i ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %.472.i = select i1 %i.mz, i32 1, i32 2
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.mz, i64 60, i64 124
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.mu, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.na, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !10
  store i32 %.472.i, ptr %i.nc, align 8, !tbaa !50
  store ptr %i.mu, ptr %i.nb, align 16, !tbaa !42
  %indvars.iv.next430.i = add nuw nsw i64 %indvars.iv429.i, 1 ; 2 uses
  %exitcond433.not.i = icmp eq i64 %indvars.iv.next430.i, %wide.trip.count432.i
  br i1 %exitcond433.not.i, label %._crit_edge389.loopexit.peel.begin.i, label %bb.ay, !llvm.loop !57

._crit_edge389.thread.i:                          ; preds = %.loopexit.i, %.loopexit.thread.i
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  br label %._crit_edge401.i

._crit_edge389.loopexit.peel.begin.i:             ; preds = %bb.ay
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  %i.ne = getelementptr inbounds nuw i8, ptr %i.hc, i64 32 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.ng = getelementptr inbounds nuw i8, ptr %i.hc, i64 64 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.c, i64 364
  %i.ni = getelementptr inbounds nuw i8, ptr %i.hc, i64 96 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.nk = getelementptr inbounds nuw i8, ptr %i.hc, i64 128 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.c, i64 372
  %i.nm = getelementptr inbounds nuw i8, ptr %i.hc, i64 160 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.no = getelementptr inbounds nuw i8, ptr %i.hc, i64 192 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  %i.nq = getelementptr inbounds nuw i8, ptr %i.hc, i64 224 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %._crit_edge389.loopexit.peel.begin.i
  %indvars.iv436.i = phi i64 [ 0, %._crit_edge389.loopexit.peel.begin.i ], [ %indvars.iv.next437.i, %bb.az ] ; 11 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv436.i ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !5
  %i.nu = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nt) #6, !srcloc !58
  %i.nv = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv436.i ; 11 uses
  store i32 %i.nu, ptr %i.nv, align 16, !tbaa !10
  %i.nw = load i32, ptr %i.nd, align 4, !tbaa !5
  store i32 %i.nw, ptr %i.ns, align 4, !tbaa !5
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv436.i ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !5
  %i.nz = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ny) #6, !srcloc !59
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  store i32 %i.nz, ptr %i.oa, align 4, !tbaa !10
  %i.ob = load i32, ptr %i.nf, align 4, !tbaa !5
  store i32 %i.ob, ptr %i.nx, align 4, !tbaa !5
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv436.i ; 2 uses
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !5
  %i.oe = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.od) #6, !srcloc !60
  %i.of = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store i32 %i.oe, ptr %i.of, align 8, !tbaa !10
  %i.og = load i32, ptr %i.nh, align 4, !tbaa !5
  store i32 %i.og, ptr %i.oc, align 4, !tbaa !5
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv436.i ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !5
  %i.oj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.oi) #6, !srcloc !61
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  store i32 %i.oj, ptr %i.ok, align 4, !tbaa !10
  %i.ol = load i32, ptr %i.nj, align 4, !tbaa !5
  store i32 %i.ol, ptr %i.oh, align 4, !tbaa !5
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv436.i ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !5
  %i.oo = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.on) #6, !srcloc !62
  %i.op = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  store i32 %i.oo, ptr %i.op, align 16, !tbaa !10
  %i.oq = load i32, ptr %i.nl, align 4, !tbaa !5
  store i32 %i.oq, ptr %i.om, align 4, !tbaa !5
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv436.i ; 2 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !5
  %i.ot = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.os) #6, !srcloc !63
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nv, i64 20
  store i32 %i.ot, ptr %i.ou, align 4, !tbaa !10
  %i.ov = load i32, ptr %i.nn, align 4, !tbaa !5
  store i32 %i.ov, ptr %i.or, align 4, !tbaa !5
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv436.i ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !5
  %i.oy = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ox) #6, !srcloc !64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  store i32 %i.oy, ptr %i.oz, align 8, !tbaa !10
  %i.pa = load i32, ptr %i.np, align 4, !tbaa !5
  store i32 %i.pa, ptr %i.ow, align 4, !tbaa !5
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv436.i ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !5
  %i.pd = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pc) #6, !srcloc !65
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nv, i64 28
  store i32 %i.pd, ptr %i.pe, align 4, !tbaa !10
  %i.pf = load i32, ptr %i.nr, align 4, !tbaa !5
  store i32 %i.pf, ptr %i.pb, align 4, !tbaa !5
  %i.pg = getelementptr inbounds nuw i8, ptr %i.nv, i64 32
  store i8 -128, ptr %i.pg, align 16, !tbaa !10
  %i.ph = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 768) #6, !srcloc !66
  %i.pi = getelementptr inbounds nuw i8, ptr %i.nv, i64 60
  store i32 %i.ph, ptr %i.pi, align 4, !tbaa !10
  %i.pj = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv436.i ; 2 uses
  store ptr %i.nv, ptr %i.pj, align 16, !tbaa !42
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  store i32 1, ptr %i.pk, align 8, !tbaa !50
  %indvars.iv.next437.i = add nuw nsw i64 %indvars.iv436.i, 1 ; 2 uses
  %exitcond440.not.i = icmp eq i64 %indvars.iv.next437.i, %wide.trip.count432.i
  br i1 %exitcond440.not.i, label %.lr.ph400.split.i, label %bb.az, !llvm.loop !67

.lr.ph400.split.i:                                ; preds = %bb.az
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  %i.pl = getelementptr inbounds nuw i8, ptr %i.c, i64 516
  %i.pm = getelementptr inbounds nuw i8, ptr %i.c, i64 517
  %i.pn = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %invariant.op = sub i32 48, %.1357.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.lr.ph400.split.i
  %indvars.iv442.i = phi i64 [ 0, %.lr.ph400.split.i ], [ %indvars.iv.next443.i, %bb.ba ] ; 11 uses
  %.0349398.i = phi ptr [ %i.gm, %.lr.ph400.split.i ], [ %scevgep441.i, %bb.ba ] ; 7 uses
  %.0358396.i = phi i32 [ 0, %.lr.ph400.split.i ], [ %i.sd, %bb.ba ]
  %i.po = icmp eq i64 %indvars.iv442.i, %i.mh
  %i.pp = select i1 %i.po, i32 %.0352.i, i32 %.0351.i ; 5 uses
  %i.pq = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv442.i ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8 ; 2 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !46
  %i.pt = load ptr, ptr %i.pq, align 8, !tbaa !44
  %i.pu = sub i32 %i.pp, %.1357.i
  %i.pv = zext i32 %i.pu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ps, ptr align 1 %i.pt, i64 %i.pv, i1 false)
  %i.pw = load ptr, ptr %i.pr, align 8, !tbaa !46
  store ptr %i.pw, ptr %i.pq, align 8, !tbaa !44
  %i.px = add i32 %i.pp, 21
  %i.py = zext i32 %i.px to i64                   ; 2 uses
  %i.pz = getelementptr i8, ptr %.0349398.i, i64 %i.py ; 9 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv442.i
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !5
  %i.qc = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qb) #6, !srcloc !68
  store i32 %i.qc, ptr %i.pz, align 4, !tbaa !5
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv442.i
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !5
  %i.qf = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qe) #6, !srcloc !69
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pz, i64 4
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !5
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv442.i
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !5
  %i.qj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qi) #6, !srcloc !70
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  store i32 %i.qj, ptr %i.qk, align 4, !tbaa !5
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv442.i
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !5
  %i.qn = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qm) #6, !srcloc !71
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pz, i64 12
  store i32 %i.qn, ptr %i.qo, align 4, !tbaa !5
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv442.i
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !5
  %i.qr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qq) #6, !srcloc !72
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  store i32 %i.qr, ptr %i.qs, align 4, !tbaa !5
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv442.i
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !5
  %i.qv = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qu) #6, !srcloc !73
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pz, i64 20
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !5
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv442.i
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !5
  %i.qz = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qy) #6, !srcloc !74
  %i.ra = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  store i32 %i.qz, ptr %i.ra, align 4, !tbaa !5
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv442.i
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !5
  %i.rd = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.rc) #6, !srcloc !75
  %i.re = getelementptr inbounds nuw i8, ptr %i.pz, i64 28
  store i32 %i.rd, ptr %i.re, align 4, !tbaa !5
  %i.rf = getelementptr i8, ptr %i.pz, i64 32
  %i.rg = trunc i32 %i.pp to i8
  %i.rh = and i8 %i.rg, 15
  %i.ri = xor i8 %i.rh, 15
  %i.rj = and i32 %i.pp, 15
  %i.rk = xor i32 %i.rj, 15
  %i.rl = zext nneg i32 %i.rk to i64              ; 2 uses
  %i.rm = add nuw nsw i64 %i.rl, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.rf, i8 %i.ri, i64 %i.rm, i1 false), !tbaa !10
  %scevgep.i = getelementptr i8, ptr %.0349398.i, i64 33
  %i.rn = getelementptr i8, ptr %scevgep.i, i64 %i.py
  %scevgep441.i = getelementptr i8, ptr %i.rn, i64 %i.rl
  %i.ro = and i32 %i.pp, -16                      ; 3 uses
  %.reass.i.reass.reass = add i32 %i.ro, %invariant.op
  %i.rp = lshr i32 %.reass.i.reass.reass, 4
  %i.rq = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  store i32 %i.rp, ptr %i.rq, align 8, !tbaa !53
  %i.rr = add i32 %i.ro, 64                       ; 2 uses
  %i.rs = load i8, ptr %i.pl, align 4, !tbaa !10
  store i8 %i.rs, ptr %.0349398.i, align 1, !tbaa !10
  %i.rt = load i8, ptr %i.pm, align 1, !tbaa !10
  %i.ru = getelementptr inbounds nuw i8, ptr %.0349398.i, i64 1
  store i8 %i.rt, ptr %i.ru, align 1, !tbaa !10
  %i.rv = load i8, ptr %i.pn, align 2, !tbaa !10
  %i.rw = getelementptr inbounds nuw i8, ptr %.0349398.i, i64 2
  store i8 %i.rv, ptr %i.rw, align 1, !tbaa !10
  %i.rx = lshr i32 %i.rr, 8
  %i.ry = trunc i32 %i.rx to i8
  %i.rz = getelementptr inbounds nuw i8, ptr %.0349398.i, i64 3
  store i8 %i.ry, ptr %i.rz, align 1, !tbaa !10
  %i.sa = trunc i32 %i.rr to i8
  %i.sb = getelementptr inbounds nuw i8, ptr %.0349398.i, i64 4
  store i8 %i.sa, ptr %i.sb, align 1, !tbaa !10
  %i.sc = add i32 %.0358396.i, 69
  %i.sd = add i32 %i.sc, %i.ro                    ; 2 uses
  %indvars.iv.next443.i = add nuw nsw i64 %indvars.iv442.i, 1 ; 2 uses
  %exitcond446.not.i = icmp eq i64 %indvars.iv.next443.i, %wide.trip.count432.i
  br i1 %exitcond446.not.i, label %._crit_edge401.i, label %bb.ba, !llvm.loop !76

._crit_edge401.i:                                 ; preds = %bb.ba, %._crit_edge389.thread.i
  %.0358.lcssa.i = phi i32 [ 0, %._crit_edge389.thread.i ], [ %i.sd, %bb.ba ]
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef %i.c, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @OPENSSL_cleanse(ptr noundef nonnull %7, i64 noundef 1024) #5
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.hc, i64 noundef 256) #5
  br label %tls1_1_multi_block_encrypt.exit

tls1_1_multi_block_encrypt.exit:                  ; preds = %bb.aq, %._crit_edge401.i
  %.0.i = phi i32 [ %.0358.lcssa.i, %._crit_edge401.i ], [ 0, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %bb.ap, %bb.ad, %bb.af, %bb.ah, %bb.ak, %bb.ae, %sha256_update.exit157, %bb.ab, %bb.u, %bb.x, %tls1_1_multi_block_encrypt.exit, %bb.ac, %bb.t
  %.3 = phi i32 [ -1, %bb.ae ], [ %.0, %bb.t ], [ %.0.i, %tls1_1_multi_block_encrypt.exit ], [ %i.eh, %bb.ac ], [ 0, %bb.x ], [ 32, %bb.ab ], [ -1, %bb.u ], [ %i.ed, %sha256_update.exit157 ], [ -1, %bb.ak ], [ -1, %bb.ad ], [ -1, %bb.a ], [ -1, %bb.af ], [ %i.gk, %bb.ap ], [ 0, %bb.ah ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef) local_unnamed_addr #1

declare i32 @aesni_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef) local_unnamed_addr #1

declare i32 @aesni_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SHA256_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @sha256_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  %i.d = sub nsw i64 64, %i.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.d) ; 3 uses
  %i.e = tail call i32 @SHA256_Update(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %spec.select) #5 ; 0 uses
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
  tail call void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %.032, i64 noundef %i.j) #5
  %i.k = getelementptr inbounds nuw i8, ptr %.032, i64 %i.i ; 2 uses
  %i.l = lshr i64 %.033, 29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18
  %i.o = trunc i64 %i.l to i32
  %i.p = add i32 %i.n, %i.o                       ; 2 uses
  store i32 %i.p, ptr %i.m, align 4, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
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
  %i.w = tail call i32 @SHA256_Update(ptr noundef nonnull %0, ptr noundef %.1, i64 noundef %i.h) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare i32 @SHA256_Final(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @aesni_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @sha256_block_data_order(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @SHA256_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @RAND_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @sha256_multi_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @aesni_multi_cbc_encrypt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind memory(none) }

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
!9 = !{i64 0, i64 32, !10, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 64, !10, i64 104, i64 4, !5, i64 108, i64 4, !5}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !15, i64 584}
!12 = !{!"", !13, i64 0, !14, i64 244, !14, i64 356, !14, i64 468, !15, i64 584, !7, i64 592}
!13 = !{!"aes_key_st", !7, i64 0, !6, i64 240}
!14 = !{!"SHA256state_st", !7, i64 0, !6, i64 32, !6, i64 36, !7, i64 40, !6, i64 104, !6, i64 108}
!15 = !{!"long", !7, i64 0}
!16 = !{!12, !6, i64 572}
!17 = !{!14, !6, i64 104}
!18 = !{!14, !6, i64 36}
!19 = !{!14, !6, i64 32}
!20 = !{!12, !6, i64 504}
!21 = !{!12, !6, i64 500}
!22 = !{i64 2156373}
!23 = !{i64 2149828382}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{i64 2149828623}
!27 = !{i64 2149828779}
!28 = !{i64 2149828935}
!29 = !{i64 2149829091}
!30 = !{i64 2149829247}
!31 = !{i64 2149829403}
!32 = !{i64 2149829559}
!33 = !{i64 2149829715}
!34 = distinct !{!34, !25}
!35 = !{!36, !37, i64 8}
!36 = !{!"", !37, i64 0, !37, i64 8, !15, i64 16, !6, i64 24}
!37 = !{!"p1 omnipotent char", !38, i64 0}
!38 = !{!"any pointer", !7, i64 0}
!39 = !{!36, !6, i64 24}
!40 = !{!36, !15, i64 16}
!41 = !{!36, !37, i64 0}
!42 = !{!43, !37, i64 0}
!43 = !{!"", !37, i64 0, !6, i64 8}
!44 = !{!45, !37, i64 0}
!45 = !{!"", !37, i64 0, !37, i64 8, !6, i64 16, !7, i64 24}
!46 = !{!45, !37, i64 8}
!47 = !{i64 2149824325}
!48 = distinct !{!48, !25}
!49 = !{i64 2149824485}
!50 = !{!43, !6, i64 8}
!51 = distinct !{!51, !25}
!52 = !{!37, !37, i64 0}
!53 = !{!45, !6, i64 16}
!54 = distinct !{!54, !25}
!55 = distinct !{!55, !25}
!56 = distinct !{!56, !25}
!57 = distinct !{!57, !25}
!58 = !{i64 2149825009}
!59 = !{i64 2149825164}
!60 = !{i64 2149825319}
!61 = !{i64 2149825474}
!62 = !{i64 2149825629}
!63 = !{i64 2149825784}
!64 = !{i64 2149825939}
!65 = !{i64 2149826094}
!66 = !{i64 2149826249}
!67 = distinct !{!67, !25}
!68 = !{i64 2149826450}
!69 = !{i64 2149826647}
!70 = !{i64 2149826844}
!71 = !{i64 2149827042}
!72 = !{i64 2149827240}
!73 = !{i64 2149827438}
!74 = !{i64 2149827636}
!75 = !{i64 2149827834}
!76 = distinct !{!76, !25}
end_hunk_1
