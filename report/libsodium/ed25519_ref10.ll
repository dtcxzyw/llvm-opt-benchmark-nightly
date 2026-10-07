Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/ed25519_ref10?download=true
inline.NumInlined: 477
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 30
begin_hunk_0_@ge25519_from_hash:bb.a
  %i.p = load <16 x i8>, ptr %1, align 1
  %i.q = and <16 x i8> %i.p, <i8 127, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %.16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <16 x i8> %i.r, ptr %.16..16..sroa_idx, align 16
  %.0..0.23 = load i64, ptr %i.a, align 16
  %i.s = and i64 %.0..0.23, 2251799813685247
  %.6..6..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.6..6.30 = load i64, ptr %.6..6..sroa_idx66, align 2
  %i.t = lshr i64 %.6..6.30, 3
  %i.u = and i64 %i.t, 2251799813685247
  %.12..12..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.12..12.38 = load i64, ptr %.12..12..sroa_idx67, align 4
  %i.v = lshr i64 %.12..12.38, 6
  %i.w = and i64 %i.v, 2251799813685247
  %.19..19..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %.19..19.47 = load i64, ptr %.19..19..sroa_idx69, align 1
  %i.x = lshr i64 %.19..19.47, 1
  %i.y = and i64 %i.x, 2251799813685247
  %.24..24..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.24..24.54 = load i64, ptr %.24..24..sroa_idx70, align 8
  %i.z = lshr i64 %.24..24.54, 12
  %i.aa = and i64 %i.z, 2251799813685247
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.0..0. = load i64, ptr %i.b, align 16
  %i.af = and i64 %.0..0., 2251799813685247
  %.6..6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.6..6. = load i64, ptr %.6..6..sroa_idx, align 2
  %i.ag = lshr i64 %.6..6., 3
  %i.ah = and i64 %i.ag, 2251799813685247
  %.12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.12..12. = load i64, ptr %.12..12..sroa_idx, align 4
  %i.ai = lshr i64 %.12..12., 6
  %i.aj = and i64 %i.ai, 2251799813685247
  %.19..19..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  %.19..19. = load i64, ptr %.19..19..sroa_idx, align 1
  %i.ak = lshr i64 %.19..19., 1
  %i.al = and i64 %i.ak, 2251799813685247
  %.24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.24..24. = load i64, ptr %.24..24..sroa_idx, align 8
  %i.am = lshr i64 %.24..24., 12
  %i.an = and i64 %i.am, 2251799813685247
  %i.ao = load volatile i8, ptr @optblocker_u8, align 1
  %i.ap = lshr i8 %i.l, 7
  %i.aq = lshr i8 %i.ao, 2
  %i.ar = xor i8 %i.aq, %i.ap
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = mul nuw nsw i64 %i.as, 19
  %i.au = add nuw nsw i64 %i.at, %i.s
  %i.av = mul nuw nsw i64 %i.af, 38
  %i.aw = add nuw nsw i64 %i.au, %i.av
  %i.ax = mul nuw nsw i64 %i.ah, 38
  %i.ay = add nuw nsw i64 %i.u, %i.ax
  %i.az = mul nuw nsw i64 %i.aj, 38
  %i.ba = add nuw nsw i64 %i.w, %i.az
  %i.bb = mul nuw nsw i64 %i.al, 38
  %i.bc = add nuw nsw i64 %i.y, %i.bb
  %i.bd = mul nuw nsw i64 %i.an, 38
  %i.be = add nuw nsw i64 %i.aa, %i.bd
  %i.bf = and i8 %i.d, -128
  %i.bg = zext nneg i64 %i.aw to i128             ; 2 uses
  %i.bh = zext nneg i64 %i.ay to i128
  %i.bi = zext nneg i64 %i.ba to i128
  %i.bj = zext nneg i64 %i.bc to i128
  %i.bk = zext nneg i64 %i.be to i128
  %i.bl = lshr i128 %i.bg, 51
  %i.bm = add nuw nsw i128 %i.bl, %i.bh           ; 2 uses
  %i.bn = and i128 %i.bg, 2251799813685247
  %i.bo = lshr i128 %i.bm, 51
  %i.bp = add nuw nsw i128 %i.bo, %i.bi           ; 2 uses
  %i.bq = and i128 %i.bm, 2251799813685247
  %i.br = lshr i128 %i.bp, 51
  %i.bs = add nuw nsw i128 %i.br, %i.bj           ; 2 uses
  %i.bt = and i128 %i.bp, 2251799813685247
  %i.bu = lshr i128 %i.bs, 51
  %i.bv = add nuw nsw i128 %i.bu, %i.bk           ; 2 uses
  %i.bw = and i128 %i.bs, 2251799813685247
  %i.bx = lshr i128 %i.bv, 51
  %i.by = mul nuw nsw i128 %i.bx, 19
  %i.bz = add nuw nsw i128 %i.by, %i.bn           ; 2 uses
  %i.ca = and i128 %i.bv, 2251799813685247
  %i.cb = lshr i128 %i.bz, 51
  %i.cc = add nuw nsw i128 %i.cb, %i.bq           ; 2 uses
  %i.cd = and i128 %i.bz, 2251799813685247
  %i.ce = lshr i128 %i.cc, 51
  %i.cf = add nuw nsw i128 %i.ce, %i.bt           ; 2 uses
  %i.cg = and i128 %i.cc, 2251799813685247
  %i.ch = lshr i128 %i.cf, 51
  %i.ci = add nuw nsw i128 %i.ch, %i.bw           ; 2 uses
  %i.cj = and i128 %i.cf, 2251799813685247
  %i.ck = lshr i128 %i.ci, 51
  %i.cl = add nuw nsw i128 %i.ck, %i.ca           ; 2 uses
  %i.cm = and i128 %i.ci, 2251799813685247
  %i.cn = lshr i128 %i.cl, 51
  %i.co = mul nuw nsw i128 %i.cn, 19
  %i.cp = and i128 %i.cl, 2251799813685247
  %i.cq = add nuw nsw i128 %i.cd, 19
  %i.cr = add nuw nsw i128 %i.cq, %i.co           ; 2 uses
  %i.cs = lshr i128 %i.cr, 51
  %i.ct = add nuw nsw i128 %i.cs, %i.cg           ; 2 uses
  %i.cu = and i128 %i.cr, 2251799813685247
  %i.cv = lshr i128 %i.ct, 51
  %i.cw = add nuw nsw i128 %i.cv, %i.cj           ; 2 uses
  %i.cx = and i128 %i.ct, 2251799813685247
  %i.cy = lshr i128 %i.cw, 51
  %i.cz = add nuw nsw i128 %i.cy, %i.cm           ; 2 uses
  %i.da = and i128 %i.cw, 2251799813685247
  %i.db = lshr i128 %i.cz, 51
  %i.dc = add nuw nsw i128 %i.db, %i.cp           ; 2 uses
  %i.dd = and i128 %i.cz, 2251799813685247
  %i.de = lshr i128 %i.dc, 51
  %i.df = mul nuw nsw i128 %i.de, 19
  %i.dg = add nuw nsw i128 %i.cu, 2251799813685229
  %i.dh = add nuw nsw i128 %i.dg, %i.df           ; 2 uses
  %i.di = add nuw nsw i128 %i.cx, 2251799813685247
  %i.dj = add nuw nsw i128 %i.da, 2251799813685247
  %i.dk = add nuw nsw i128 %i.dd, 2251799813685247
  %i.dl = add nuw nsw i128 %i.dc, 2251799813685247
  %i.dm = lshr i128 %i.dh, 51
  %i.dn = add nuw nsw i128 %i.di, %i.dm           ; 2 uses
  %i.do = lshr i128 %i.dn, 51
  %i.dp = add nuw nsw i128 %i.dj, %i.do           ; 2 uses
  %i.dq = lshr i128 %i.dp, 51
  %i.dr = add nuw nsw i128 %i.dk, %i.dq           ; 2 uses
  %i.ds = lshr i128 %i.dr, 51
  %i.dt = add nuw nsw i128 %i.dl, %i.ds
  %i.du = trunc nuw nsw i128 %i.dh to i64
  %i.dv = and i64 %i.du, 2251799813685247
  store i64 %i.dv, ptr %i.c, align 16
  %i.dw = trunc nuw nsw i128 %i.dn to i64
  %i.dx = and i64 %i.dw, 2251799813685247
  store i64 %i.dx, ptr %i.ab, align 8
  %i.dy = trunc nuw nsw i128 %i.dp to i64
  %i.dz = and i64 %i.dy, 2251799813685247
  store i64 %i.dz, ptr %i.ac, align 16
  %i.ea = trunc nuw nsw i128 %i.dr to i64
  %i.eb = and i64 %i.ea, 2251799813685247
  store i64 %i.eb, ptr %i.ad, align 8
  %i.ec = trunc nuw nsw i128 %i.dt to i64
  %i.ed = and i64 %i.ec, 2251799813685247
  store i64 %i.ed, ptr %i.ae, align 16
  call fastcc void @ge25519_elligator2(ptr noundef %0, ptr noundef %i.c, i8 noundef zeroext %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define hidden i32 @ristretto255_frombytes(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca [5 x i64], align 16               ; 5 uses
  %i.e = alloca [5 x i64], align 16               ; 5 uses
  %i.f = alloca [5 x i64], align 16               ; 8 uses
  %i.g = alloca [5 x i64], align 16               ; 8 uses
  %i.h = alloca [5 x i64], align 16               ; 8 uses
  %i.i = alloca [5 x i64], align 16               ; 8 uses
  %i.j = alloca [5 x i64], align 16               ; 8 uses
  %i.k = alloca [5 x i64], align 16               ; 11 uses
  %i.l = alloca [5 x i64], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  %i.m = getelementptr i8, ptr %1, i64 31
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = and i8 %i.n, 127
  %i.p = xor i8 %i.o, 127
  %i.q = getelementptr i8, ptr %1, i64 15
  %i.r = load <16 x i8>, ptr %i.q, align 1        ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 7
  %i.t = load <8 x i8>, ptr %i.s, align 1
  %i.u = getelementptr i8, ptr %1, i64 3
  %i.v = load <4 x i8>, ptr %i.u, align 1
  %i.w = getelementptr i8, ptr %1, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = getelementptr i8, ptr %1, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = shufflevector <8 x i8> %i.t, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ab = and <16 x i8> %i.r, %i.aa               ; 2 uses
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> %i.r, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ad = shufflevector <4 x i8> %i.v, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ae = and <16 x i8> %i.ab, %i.ad
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ag = tail call i8 @llvm.vector.reduce.and.v16i8(<16 x i8> %i.af)
  %op.rdx = and i8 %i.ag, %i.x
  %op.rdx45 = and i8 %op.rdx, %i.z
  %i.ah = xor i8 %op.rdx45, -1
  %i.ai = or i8 %i.p, %i.ah
  %2 = zext i8 %i.ai to i32
  %3 = add nuw nsw i32 %2, 511
  %i.aj = load i8, ptr %1, align 1                ; 2 uses
  %4 = zext i8 %i.aj to i32
  %5 = sub nsw i32 236, %4
  %i.ak = load volatile i8, ptr @optblocker_u8, align 1
  %i.al = lshr i8 %i.n, 7
  %i.am = lshr i8 %i.ak, 2
  %i.an = xor i8 %i.am, %i.al
  %6 = and i32 %3, %5
  %7 = lshr i32 %6, 8
  %i.ao = or i8 %i.an, %i.aj
  %8 = zext i8 %i.ao to i32
  %9 = or i32 %7, %8
  %10 = and i32 %9, 1
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = getelementptr i8, ptr %1, i64 6
  %i.aq = getelementptr i8, ptr %1, i64 12
  %i.ar = getelementptr i8, ptr %1, i64 19
  %i.as = getelementptr i8, ptr %1, i64 24
  %i.at = load i64, ptr %1, align 1
  %i.au = and i64 %i.at, 2251799813685247         ; 3 uses
  %i.av = load i64, ptr %i.ap, align 1
  %i.aw = lshr i64 %i.av, 3
  %i.ax = and i64 %i.aw, 2251799813685247         ; 4 uses
  %i.ay = load i64, ptr %i.aq, align 1
  %i.az = lshr i64 %i.ay, 6
  %i.ba = and i64 %i.az, 2251799813685247         ; 3 uses
  %i.bb = load i64, ptr %i.ar, align 1
  %i.bc = lshr i64 %i.bb, 1
  %i.bd = and i64 %i.bc, 2251799813685247         ; 4 uses
  %i.be = load i64, ptr %i.as, align 1
  %i.bf = lshr i64 %i.be, 12
  %i.bg = and i64 %i.bf, 2251799813685247         ; 3 uses
  store i64 %i.au, ptr %i.f, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ax, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.ba, ptr %i.bi, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.bd, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.bg, ptr %i.bk, align 16
  %i.bl = shl nuw nsw i64 %i.au, 1
  %i.bm = shl nuw nsw i64 %i.ax, 1
  %i.bn = mul nuw nsw i64 %i.ax, 38
  %i.bo = mul nuw nsw i64 %i.ba, 38
  %i.bp = mul nuw nsw i64 %i.bd, 38
  %i.bq = mul nuw nsw i64 %i.bd, 19
  %i.br = mul nuw nsw i64 %i.bg, 19
  %i.bs = zext nneg i64 %i.au to i128             ; 2 uses
  %i.bt = mul nuw nsw i128 %i.bs, %i.bs
  %i.bu = zext nneg i64 %i.bn to i128
  %i.bv = zext nneg i64 %i.bg to i128             ; 5 uses
  %i.bw = mul nuw nsw i128 %i.bv, %i.bu
  %i.bx = zext nneg i64 %i.bo to i128             ; 2 uses
  %i.by = zext nneg i64 %i.bd to i128             ; 4 uses
  %i.bz = mul nuw nsw i128 %i.bx, %i.by
  %i.ca = add nuw nsw i128 %i.bz, %i.bt
  %i.cb = add nuw nsw i128 %i.ca, %i.bw           ; 2 uses
  %i.cc = zext nneg i64 %i.bl to i128             ; 4 uses
  %i.cd = zext nneg i64 %i.ax to i128             ; 3 uses
  %i.ce = mul nuw nsw i128 %i.cd, %i.cc
  %i.cf = mul nuw nsw i128 %i.bv, %i.bx
  %i.cg = add nuw nsw i128 %i.cf, %i.ce
  %i.ch = zext nneg i64 %i.bq to i128
  %i.ci = mul nuw nsw i128 %i.ch, %i.by
  %i.cj = add nuw nsw i128 %i.cg, %i.ci
  %i.ck = zext nneg i64 %i.ba to i128             ; 4 uses
  %i.cl = mul nuw nsw i128 %i.ck, %i.cc
  %i.cm = mul nuw nsw i128 %i.cd, %i.cd
  %i.cn = add nuw nsw i128 %i.cl, %i.cm
  %i.co = zext nneg i64 %i.bp to i128
  %i.cp = mul nuw nsw i128 %i.co, %i.bv
  %i.cq = add nuw nsw i128 %i.cn, %i.cp
  %i.cr = mul nuw nsw i128 %i.by, %i.cc
  %i.cs = zext nneg i64 %i.bm to i128             ; 2 uses
  %i.ct = mul nuw nsw i128 %i.cs, %i.ck
  %i.cu = add nuw nsw i128 %i.cr, %i.ct
  %i.cv = zext nneg i64 %i.br to i128
  %i.cw = mul nuw nsw i128 %i.cv, %i.bv
  %i.cx = add nuw nsw i128 %i.cu, %i.cw
  %i.cy = mul nuw nsw i128 %i.bv, %i.cc
  %i.cz = mul nuw nsw i128 %i.by, %i.cs
  %i.da = mul nuw nsw i128 %i.ck, %i.ck
  %i.db = trunc i128 %i.cb to i64
  %i.dc = and i64 %i.db, 2251799813685247
  %i.dd = lshr i128 %i.cb, 51
  %i.de = add nuw nsw i128 %i.cj, %i.dd           ; 2 uses
  %i.df = trunc i128 %i.de to i64
  %i.dg = and i64 %i.df, 2251799813685247
  %i.dh = lshr i128 %i.de, 51
  %i.di = add nuw nsw i128 %i.cq, %i.dh           ; 2 uses
  %i.dj = trunc i128 %i.di to i64
  %i.dk = and i64 %i.dj, 2251799813685247
  %i.dl = lshr i128 %i.di, 51
  %i.dm = add nuw nsw i128 %i.cx, %i.dl           ; 3 uses
  %i.dn = trunc i128 %i.dm to i64
  %i.do = and i64 %i.dn, 2251799813685247         ; 4 uses
  %i.dp = lshr i128 %i.dm, 51
  %i.dq = add nuw nsw i128 %i.cz, %i.da
  %i.dr = add nuw nsw i128 %i.dq, %i.cy
  %i.ds = add nuw nsw i128 %i.dr, %i.dp           ; 3 uses
  %i.dt = trunc i128 %i.ds to i64
  %i.du = and i64 %i.dt, 2251799813685247         ; 3 uses
  %i.dv = lshr i128 %i.ds, 51
  %i.dw = trunc nuw nsw i128 %i.dv to i64
  %i.dx = mul nuw nsw i64 %i.dw, 19
  %i.dy = add nuw nsw i64 %i.dx, %i.dc            ; 2 uses
  %i.dz = lshr i64 %i.dy, 51
  %i.ea = and i64 %i.dy, 2251799813685247         ; 2 uses
  %i.eb = add nuw nsw i64 %i.dz, %i.dg            ; 2 uses
  %i.ec = lshr i64 %i.eb, 51
  %i.ed = and i64 %i.eb, 2251799813685247         ; 5 uses
  %i.ee = add nuw nsw i64 %i.ec, %i.dk            ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.eg = lshr i64 %i.ee, 51
  %i.eh = add nuw nsw i64 %i.eg, %i.do            ; 2 uses
  %i.ei = and i64 %i.ee, 2251799813685247
  %i.ej = lshr i64 %i.eh, 51
  %i.ek = add nuw nsw i64 %i.ej, %i.du            ; 2 uses
  %i.el = and i64 %i.eh, 2251799813685247
  %i.em = lshr i64 %i.ek, 51
  %i.en = and i64 %i.ek, 2251799813685247
  %.neg39.i = mul nuw nsw i64 %i.em, -19
  %reass.sub = sub nsw i64 %.neg39.i, %i.ea
  %i.eo = add nsw i64 %reass.sub, 4503599627370459 ; 3 uses
  %i.ep = sub nuw nsw i64 4503599627370494, %i.ed ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.er = sub nuw nsw i64 4503599627370494, %i.ei ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.et = sub nuw nsw i64 4503599627370494, %i.el ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ev = sub nuw nsw i64 4503599627370494, %i.en ; 3 uses
  store i64 %i.eo, ptr %i.g, align 16
  store i64 %i.ep, ptr %i.ef, align 8
  store i64 %i.er, ptr %i.eq, align 16
  store i64 %i.et, ptr %i.es, align 8
  store i64 %i.ev, ptr %i.eu, align 16
  %i.ew = shl nuw nsw i64 %i.eo, 1
  %i.ex = shl nuw nsw i64 %i.ep, 1
  %i.ey = mul nuw nsw i64 %i.ep, 38
  %i.ez = mul nuw nsw i64 %i.er, 38
  %i.fa = mul nuw nsw i64 %i.et, 38
  %i.fb = mul nuw nsw i64 %i.et, 19
  %i.fc = mul nuw nsw i64 %i.ev, 19
  %i.fd = zext nneg i64 %i.eo to i128             ; 2 uses
  %i.fe = mul nuw nsw i128 %i.fd, %i.fd
  %i.ff = zext nneg i64 %i.ey to i128
  %i.fg = zext nneg i64 %i.ev to i128             ; 5 uses
  %i.fh = mul nuw nsw i128 %i.fg, %i.ff
  %i.fi = zext nneg i64 %i.ez to i128             ; 2 uses
  %i.fj = zext nneg i64 %i.et to i128             ; 4 uses
  %i.fk = mul nuw nsw i128 %i.fj, %i.fi
  %i.fl = add nuw nsw i128 %i.fh, %i.fk
  %i.fm = add nuw nsw i128 %i.fl, %i.fe           ; 2 uses
  %i.fn = zext nneg i64 %i.ew to i128             ; 4 uses
  %i.fo = zext nneg i64 %i.ep to i128             ; 3 uses
  %i.fp = mul nuw nsw i128 %i.fn, %i.fo
  %i.fq = mul nuw nsw i128 %i.fg, %i.fi
  %i.fr = zext nneg i64 %i.fb to i128
  %i.fs = mul nuw nsw i128 %i.fr, %i.fj
  %i.ft = zext nneg i64 %i.er to i128             ; 4 uses
  %i.fu = mul nuw nsw i128 %i.fn, %i.ft
  %i.fv = mul nuw nsw i128 %i.fo, %i.fo
  %i.fw = zext nneg i64 %i.fa to i128
  %i.fx = mul nuw nsw i128 %i.fw, %i.fg
  %i.fy = mul nuw nsw i128 %i.fn, %i.fj
  %i.fz = zext nneg i64 %i.ex to i128             ; 2 uses
  %i.ga = mul nuw nsw i128 %i.ft, %i.fz
  %i.gb = zext nneg i64 %i.fc to i128
  %i.gc = mul nuw nsw i128 %i.gb, %i.fg
  %i.gd = mul nuw nsw i128 %i.fn, %i.fg
  %i.ge = mul nuw nsw i128 %i.fj, %i.fz
  %i.gf = mul nuw nsw i128 %i.ft, %i.ft
  %i.gg = trunc i128 %i.fm to i64
  %i.gh = and i64 %i.gg, 2251799813685247
  %i.gi = lshr i128 %i.fm, 51
  %i.gj = add nuw nsw i128 %i.fs, %i.fq
  %i.gk = add nuw nsw i128 %i.gj, %i.fp
  %i.gl = add nuw nsw i128 %i.gk, %i.gi           ; 2 uses
  %i.gm = trunc i128 %i.gl to i64
  %i.gn = and i64 %i.gm, 2251799813685247
  %i.go = lshr i128 %i.gl, 51
  %i.gp = add nuw nsw i128 %i.fx, %i.fv
  %i.gq = add nuw nsw i128 %i.gp, %i.fu
  %i.gr = add nuw nsw i128 %i.gq, %i.go           ; 2 uses
  %i.gs = trunc i128 %i.gr to i64
  %i.gt = and i64 %i.gs, 2251799813685247
  %i.gu = lshr i128 %i.gr, 51
  %i.gv = add nuw nsw i128 %i.gc, %i.ga
  %i.gw = add nuw nsw i128 %i.gv, %i.fy
  %i.gx = add nuw nsw i128 %i.gw, %i.gu           ; 2 uses
  %i.gy = trunc i128 %i.gx to i64
  %i.gz = and i64 %i.gy, 2251799813685247
  %i.ha = lshr i128 %i.gx, 51
  %i.hb = add nuw nsw i128 %i.ge, %i.gf
  %i.hc = add nuw nsw i128 %i.hb, %i.gd
  %i.hd = add nuw nsw i128 %i.hc, %i.ha           ; 2 uses
  %i.he = trunc i128 %i.hd to i64
  %i.hf = and i64 %i.he, 2251799813685247
  %i.hg = lshr i128 %i.hd, 51
  %i.hh = trunc nuw nsw i128 %i.hg to i64
  %i.hi = mul nuw nsw i64 %i.hh, 19
  %i.hj = add nuw nsw i64 %i.hi, %i.gh            ; 2 uses
  %i.hk = lshr i64 %i.hj, 51
  %i.hl = and i64 %i.hj, 2251799813685247
  %i.hm = add nuw nsw i64 %i.hk, %i.gn            ; 2 uses
  %i.hn = lshr i64 %i.hm, 51
  %i.ho = and i64 %i.hm, 2251799813685247
  %i.hp = add nuw nsw i64 %i.hn, %i.gt
  store i64 %i.hl, ptr %i.i, align 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.ho, ptr %i.hq, align 8
end_hunk_0
