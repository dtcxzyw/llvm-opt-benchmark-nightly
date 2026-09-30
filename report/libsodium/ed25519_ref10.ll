Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/ed25519_ref10?download=true
inline.NumInlined: 477
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 30
begin_hunk_0_@ristretto255_p3_tobytes:bb.a
  call void @fe25519_tobytes(ptr noundef %0, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define hidden void @ristretto255_from_hash(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [5 x i64], align 16               ; 8 uses
  %i.b = alloca [5 x i64], align 16               ; 8 uses
  %2 = alloca %struct.ge25519_cached, align 8     ; 15 uses
  %3 = alloca %struct.ge25519_p1p1, align 8       ; 8 uses
  %4 = alloca %struct.ge25519_p3, align 8         ; 4 uses
  %5 = alloca %struct.ge25519_p3, align 8         ; 15 uses
  %6 = alloca %struct.ge25519_p3, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.c = load i64, ptr %1, align 1
  %i.d = and i64 %i.c, 2251799813685247
  %i.e = getelementptr i8, ptr %1, i64 6
  %i.f = load i64, ptr %i.e, align 1
  %i.g = lshr i64 %i.f, 3
  %i.h = and i64 %i.g, 2251799813685247
  %i.i = getelementptr i8, ptr %1, i64 12
  %i.j = load i64, ptr %i.i, align 1
  %i.k = lshr i64 %i.j, 6
  %i.l = and i64 %i.k, 2251799813685247
  %i.m = getelementptr i8, ptr %1, i64 19
  %i.n = load i64, ptr %i.m, align 1
  %i.o = lshr i64 %i.n, 1
  %i.p = and i64 %i.o, 2251799813685247
  %i.q = getelementptr i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 1
  %i.s = lshr i64 %i.r, 12
  %i.t = and i64 %i.s, 2251799813685247
  store i64 %i.d, ptr %i.a, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.v, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.p, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.t, ptr %i.x, align 16
  %i.y = getelementptr i8, ptr %1, i64 32
  %i.z = load i64, ptr %i.y, align 1
  %i.aa = and i64 %i.z, 2251799813685247
  %i.ab = getelementptr i8, ptr %1, i64 38
  %i.ac = load i64, ptr %i.ab, align 1
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 2251799813685247
  %i.af = getelementptr i8, ptr %1, i64 44
  %i.ag = load i64, ptr %i.af, align 1
  %i.ah = lshr i64 %i.ag, 6
  %i.ai = and i64 %i.ah, 2251799813685247
  %i.aj = getelementptr i8, ptr %1, i64 51
  %i.ak = load i64, ptr %i.aj, align 1
  %i.al = lshr i64 %i.ak, 1
  %i.am = and i64 %i.al, 2251799813685247
  %i.an = getelementptr i8, ptr %1, i64 56
  %i.ao = load i64, ptr %i.an, align 1
  %i.ap = lshr i64 %i.ao, 12
  %i.aq = and i64 %i.ap, 2251799813685247
  store i64 %i.aa, ptr %i.b, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ae, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ai, ptr %i.as, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.am, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.aq, ptr %i.au, align 16
  call fastcc void @ristretto255_elligator(ptr noundef %4, ptr noundef %i.a)
  call fastcc void @ristretto255_elligator(ptr noundef %5, ptr noundef %i.b)
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = load i64, ptr %5, align 8               ; 3 uses
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = add i64 %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = add i64 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = add i64 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = add i64 %i.br, %i.bp
  store i64 %i.ay, ptr %2, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bd, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bi, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.bn, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.bs, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.by = lshr i64 %i.ax, 51
  %i.bz = add i64 %i.bc, %i.by                    ; 2 uses
  %i.ca = and i64 %i.ax, 2251799813685247
  %i.cb = lshr i64 %i.bz, 51
  %i.cc = add i64 %i.cb, %i.bh                    ; 2 uses
  %i.cd = and i64 %i.bz, 2251799813685247
  %i.ce = lshr i64 %i.cc, 51
  %i.cf = add i64 %i.ce, %i.bm                    ; 2 uses
  %i.cg = and i64 %i.cc, 2251799813685247
  %i.ch = lshr i64 %i.cf, 51
  %i.ci = add i64 %i.ch, %i.br                    ; 2 uses
  %i.cj = and i64 %i.cf, 2251799813685247
  %i.ck = lshr i64 %i.ci, 51
  %i.cl = and i64 %i.ci, 2251799813685247
  %.neg39.i.i = mul nsw i64 %i.ck, -19
  %reass.sub.i = add i64 %i.aw, 4503599627370458
  %i.cm = sub i64 %reass.sub.i, %i.ca
  %i.cn = add i64 %i.cm, %.neg39.i.i
  %reass.sub14.i = add i64 %i.ba, 4503599627370494
  %i.co = sub i64 %reass.sub14.i, %i.cd
  %reass.sub15.i = add i64 %i.bf, 4503599627370494
  %i.cp = sub i64 %reass.sub15.i, %i.cg
  %reass.sub16.i = add i64 %i.bk, 4503599627370494
  %i.cq = sub i64 %reass.sub16.i, %i.cj
  %i.cr = add i64 %i.bp, 4503599627370494
  %i.cs = sub i64 %i.cr, %i.cl
  store i64 %i.cn, ptr %i.bx, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.co, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %i.cp, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.cq, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %i.cs, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cx, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cy, i64 noundef 40, i1 noundef false) #12
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 120
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.cz, ptr noundef nonnull readonly %i.da, ptr noundef nonnull @d2)
  call void @ge25519_add(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %2)
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  call fastcc void @fe25519_mul(ptr noundef nonnull %6, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.db)
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.dc, ptr noundef nonnull readonly %i.dd, ptr noundef nonnull readonly %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 80
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.df, ptr noundef nonnull readonly %i.de, ptr noundef nonnull readonly %i.db)
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 120
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.dg, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.dd)
  call void @ristretto255_p3_tobytes(ptr noundef %0, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ristretto255_elligator(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 160)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [5 x i64], align 16               ; 8 uses
  %i.c = alloca [5 x i64], align 16               ; 14 uses
  %i.d = alloca [5 x i64], align 16               ; 11 uses
  %i.e = alloca [5 x i64], align 16               ; 6 uses
  %i.f = alloca [5 x i64], align 16               ; 6 uses
  %i.g = alloca [5 x i64], align 16               ; 9 uses
  %i.h = alloca [5 x i64], align 16               ; 10 uses
  %i.i = alloca [5 x i64], align 16               ; 14 uses
  %i.j = alloca [5 x i64], align 16               ; 8 uses
  %i.k = alloca [5 x i64], align 16               ; 5 uses
  %i.l = alloca [5 x i64], align 16               ; 9 uses
  %i.m = alloca [5 x i64], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.n = load i64, ptr %1, align 8                ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr i8, ptr %1, i64 32
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = shl i64 %i.n, 1
  %i.x = shl i64 %i.p, 1
  %i.y = mul i64 %i.p, 38
  %i.z = mul i64 %i.r, 38
  %i.aa = mul i64 %i.t, 38
  %i.ab = mul i64 %i.t, 19
  %i.ac = mul i64 %i.v, 19
  %i.ad = zext i64 %i.n to i128                   ; 2 uses
  %i.ae = mul nuw i128 %i.ad, %i.ad
  %i.af = zext i64 %i.y to i128
  %i.ag = zext i64 %i.v to i128                   ; 5 uses
  %i.ah = mul nuw i128 %i.ag, %i.af
  %i.ai = zext i64 %i.z to i128                   ; 2 uses
  %i.aj = zext i64 %i.t to i128                   ; 4 uses
  %i.ak = mul nuw i128 %i.ai, %i.aj
  %i.al = add i128 %i.ak, %i.ae
  %i.am = add i128 %i.al, %i.ah                   ; 2 uses
  %i.an = zext i64 %i.w to i128                   ; 4 uses
  %i.ao = zext i64 %i.p to i128                   ; 3 uses
  %i.ap = mul nuw i128 %i.an, %i.ao
  %i.aq = mul nuw i128 %i.ag, %i.ai
  %i.ar = add i128 %i.aq, %i.ap
  %i.as = zext i64 %i.ab to i128
  %i.at = mul nuw i128 %i.as, %i.aj
  %i.au = add i128 %i.ar, %i.at
  %i.av = zext i64 %i.r to i128                   ; 4 uses
  %i.aw = mul nuw i128 %i.av, %i.an
  %i.ax = mul nuw i128 %i.ao, %i.ao
  %i.ay = add i128 %i.aw, %i.ax
  %i.az = zext i64 %i.aa to i128
  %i.ba = mul nuw i128 %i.az, %i.ag
  %i.bb = add i128 %i.ay, %i.ba
  %i.bc = mul nuw i128 %i.aj, %i.an
  %i.bd = zext i64 %i.x to i128                   ; 2 uses
  %i.be = mul nuw i128 %i.bd, %i.av
  %i.bf = add i128 %i.bc, %i.be
  %i.bg = zext i64 %i.ac to i128
  %i.bh = mul nuw i128 %i.bg, %i.ag
  %i.bi = add i128 %i.bf, %i.bh
  %i.bj = mul nuw i128 %i.ag, %i.an
  %i.bk = mul nuw i128 %i.aj, %i.bd
  %i.bl = mul nuw i128 %i.av, %i.av
  %i.bm = trunc i128 %i.am to i64
  %i.bn = and i64 %i.bm, 2251799813685247
  %i.bo = lshr i128 %i.am, 51
  %i.bp = add i128 %i.au, %i.bo                   ; 2 uses
  %i.bq = trunc i128 %i.bp to i64
  %i.br = and i64 %i.bq, 2251799813685247
  %i.bs = lshr i128 %i.bp, 51
  %i.bt = add i128 %i.bb, %i.bs                   ; 2 uses
  %i.bu = trunc i128 %i.bt to i64
  %i.bv = and i64 %i.bu, 2251799813685247
  %i.bw = lshr i128 %i.bt, 51
  %i.bx = add i128 %i.bi, %i.bw                   ; 2 uses
  %i.by = trunc i128 %i.bx to i64
  %i.bz = and i64 %i.by, 2251799813685247
  %i.ca = lshr i128 %i.bx, 51
  %i.cb = add i128 %i.bk, %i.bl
  %i.cc = add i128 %i.cb, %i.bj
  %i.cd = add i128 %i.cc, %i.ca                   ; 2 uses
  %i.ce = trunc i128 %i.cd to i64
  %i.cf = and i64 %i.ce, 2251799813685247
  %i.cg = lshr i128 %i.cd, 51
  %i.ch = trunc i128 %i.cg to i64
  %i.ci = mul i64 %i.ch, 19
  %i.cj = add i64 %i.ci, %i.bn                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 51
  %i.cl = and i64 %i.cj, 2251799813685247
  %i.cm = add nuw nsw i64 %i.ck, %i.br            ; 2 uses
  %i.cn = lshr i64 %i.cm, 51
  %i.co = and i64 %i.cm, 2251799813685247
  %i.cp = add nuw nsw i64 %i.cn, %i.bv
  store i64 %i.cl, ptr %i.d, align 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.co, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.cp, ptr %i.cr, align 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.bz, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %i.cf, ptr %i.ct, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.d, ptr noundef nonnull @sqrtm1, ptr noundef nonnull %i.d)
  %i.cu = load i64, ptr %i.ct, align 16           ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.cu, ptr %i.cx, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dc = add i64 %i.cu, 1442794654840575
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.do = load <4 x i64>, ptr %i.d, align 16      ; 7 uses
  %i.dp = extractelement <4 x i64> %i.do, i64 0
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %i.h, align 16
  %i.dr = extractelement <4 x i64> %i.do, i64 1
  store i64 %i.dr, ptr %2, align 8
  %i.ds = extractelement <4 x i64> %i.do, i64 2
  store i64 %i.ds, ptr %i.cv, align 16
  %3 = extractelement <4 x i64> %i.do, i64 3
  store i64 %3, ptr %i.cw, align 8
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, ptr noundef nonnull @onemsqd)
  store i64 4503599627370494, ptr %i.cy, align 8
  store i64 4503599627370494, ptr %i.cz, align 16
  store i64 4503599627370494, ptr %i.da, align 8
  store i64 4503599627370494, ptr %i.db, align 16
  %i.dt = shufflevector <4 x i64> %i.do, <4 x i64> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.du = add <2 x i64> %i.dt, <i64 929955233495203, i64 466365720129213>
  store <2 x i64> %i.du, ptr %i.e, align 16
  %4 = shufflevector <4 x i64> %i.do, <4 x i64> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.dv = add <2 x i64> %4, <i64 1662059464998953, i64 2033849074728123>
  store <2 x i64> %i.dv, ptr %i.dd, align 16
  store i64 %i.dc, ptr %i.de, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull @d)
  %i.dw = load i64, ptr %i.i, align 16            ; 2 uses
  %i.dx = load i64, ptr %i.df, align 8
  %i.dy = load i64, ptr %i.dg, align 16
  %i.dz = load i64, ptr %i.dh, align 8
  %i.ea = load i64, ptr %i.di, align 16
  %i.eb = lshr i64 %i.dw, 51
  %i.ec = add i64 %i.dx, %i.eb                    ; 2 uses
  %i.ed = and i64 %i.dw, 2251799813685247
  %i.ee = lshr i64 %i.ec, 51
  %i.ef = add i64 %i.ee, %i.dy                    ; 2 uses
  %i.eg = and i64 %i.ec, 2251799813685247
  %i.eh = lshr i64 %i.ef, 51
  %i.ei = add i64 %i.eh, %i.dz                    ; 2 uses
  %i.ej = and i64 %i.ef, 2251799813685247
  %i.ek = lshr i64 %i.ei, 51
  %i.el = add i64 %i.ek, %i.ea                    ; 2 uses
  %i.em = and i64 %i.ei, 2251799813685247
  %i.en = lshr i64 %i.el, 51
  %i.eo = and i64 %i.el, 2251799813685247
  %.neg39.i = mul nsw i64 %i.en, -19
  %reass.sub47 = sub nsw i64 %.neg39.i, %i.ed
  %i.ep = add nsw i64 %reass.sub47, 9007199254740915
  %i.eq = sub nuw nsw i64 9007199254740988, %i.eg
  %i.er = sub nuw nsw i64 9007199254740988, %i.ej
  %i.es = sub nuw nsw i64 9007199254740988, %i.em
  %i.et = sub nuw nsw i64 9007199254740988, %i.eo
  store i64 %i.ep, ptr %i.i, align 16
  store i64 %i.eq, ptr %i.df, align 8
  store i64 %i.er, ptr %i.dg, align 16
  store i64 %i.es, ptr %i.dh, align 8
  store i64 %i.et, ptr %i.di, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e)
  %i.eu = call fastcc i32 @ristretto255_sqrt_ratio_m1(ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.i)
  %i.ev = sub i32 1, %i.eu
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.g)
  %i.ew = load i8, ptr %i.a, align 16
  %i.ex = and i8 %i.ew, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ey = load i64, ptr %i.g, align 16            ; 4 uses
  %i.ez = load i64, ptr %i.dj, align 8            ; 3 uses
  %i.fa = load i64, ptr %i.dk, align 16           ; 3 uses
  %i.fb = load i64, ptr %i.dl, align 8            ; 3 uses
  %i.fc = load i64, ptr %i.dm, align 16           ; 3 uses
  %i.fd = lshr i64 %i.ey, 51
  %i.fe = add i64 %i.ez, %i.fd                    ; 2 uses
  %i.ff = and i64 %i.ey, 2251799813685247
  %i.fg = lshr i64 %i.fe, 51
  %i.fh = add i64 %i.fg, %i.fa                    ; 2 uses
  %i.fi = and i64 %i.fe, 2251799813685247
  %i.fj = lshr i64 %i.fh, 51
  %i.fk = add i64 %i.fj, %i.fb                    ; 2 uses
  %i.fl = and i64 %i.fh, 2251799813685247
  %i.fm = lshr i64 %i.fk, 51
  %i.fn = add i64 %i.fm, %i.fc                    ; 2 uses
  %i.fo = and i64 %i.fk, 2251799813685247
  %i.fp = lshr i64 %i.fn, 51
  %i.fq = and i64 %i.fn, 2251799813685247
  %.neg39.i.i.i.i = mul nsw i64 %i.fp, -19
  %reass.sub = sub nsw i64 %.neg39.i.i.i.i, %i.ff
  %i.fr = add nsw i64 %reass.sub, 4503599627370458
  %i.fs = sub nuw nsw i64 4503599627370494, %i.fi
  %i.ft = sub nuw nsw i64 4503599627370494, %i.fl
  %i.fu = sub nuw nsw i64 4503599627370494, %i.fo
  %i.fv = sub nuw nsw i64 4503599627370494, %i.fq
  %i.fw = zext nneg i8 %i.ex to i64
  %i.fx = sub nsw i64 0, %i.fw                    ; 5 uses
  %i.fy = xor i64 %i.fr, %i.ey
  %i.fz = xor i64 %i.ez, %i.fs
  %i.ga = xor i64 %i.fa, %i.ft
  %i.gb = xor i64 %i.fb, %i.fu
  %i.gc = xor i64 %i.fv, %i.fc
  %i.gd = and i64 %i.fy, %i.fx
  %i.ge = and i64 %i.fz, %i.fx
  %i.gf = and i64 %i.ga, %i.fx
  %i.gg = and i64 %i.gb, %i.fx
  %i.gh = and i64 %i.gc, %i.fx
  %i.gi = xor i64 %i.gd, %i.ey                    ; 2 uses
  %i.gj = xor i64 %i.ge, %i.ez
  %i.gk = xor i64 %i.gf, %i.fa
  %i.gl = xor i64 %i.gg, %i.fb
  %i.gm = xor i64 %i.gh, %i.fc
  %i.gn = lshr i64 %i.gi, 51
  %i.go = and i64 %i.gi, 2251799813685247
  %i.gp = zext i32 %i.ev to i64
  %i.gq = sub nsw i64 0, %i.gp                    ; 3 uses
  %i.gr = load i64, ptr %i.f, align 16            ; 2 uses
  %i.gs = load i64, ptr %i.cy, align 8
  %i.gt = load <2 x i64>, ptr %i.cz, align 16
  %i.gu = insertelement <4 x i64> <i64 4503599627370457, i64 poison, i64 poison, i64 poison>, i64 %i.gs, i64 1
  %i.gv = shufflevector <2 x i64> %i.gt, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gw = shufflevector <4 x i64> %i.gu, <4 x i64> %i.gv, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.gx = xor <4 x i64> %i.do, %i.gw
  %i.gy = xor i64 %i.cu, 4503599627370494
  %i.gz = insertelement <4 x i64> poison, i64 %i.gq, i64 0
  %i.ha = shufflevector <4 x i64> %i.gz, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hb = and <4 x i64> %i.gx, %i.ha
  %i.hc = and i64 %i.gy, %i.gq
  %i.hd = xor <4 x i64> %i.hb, %i.gw
  store <4 x i64> %i.hd, ptr %i.b, align 16
  %i.he = xor i64 %i.hc, 4503599627370494
  store i64 %i.he, ptr %i.db, align 16
  %i.hf = add i64 %i.cu, 4503599627370494
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %6 = add <2 x i64> %i.dt, <i64 4503599627370457, i64 4503599627370494>
  store <2 x i64> %6, ptr %i.c, align 16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %7 = add <2 x i64> %4, splat (i64 4503599627370494)
  store <2 x i64> %7, ptr %i.hg, align 16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store i64 %i.hf, ptr %i.hi, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull @sqdmone)
  %i.hj = load i64, ptr %i.i, align 16            ; 2 uses
  %i.hk = load i64, ptr %i.df, align 8
  %i.hl = load i64, ptr %i.dg, align 16
  %i.hm = load i64, ptr %i.dh, align 8
  %i.hn = load i64, ptr %i.di, align 16
  %i.ho = lshr i64 %i.hj, 51
  %i.hp = and i64 %i.hj, 2251799813685247
  %i.hq = load i64, ptr %i.c, align 16
  %reass.sub48 = sub i64 %i.hq, %i.hp
  %i.hr = add i64 %reass.sub48, 4503599627370458
  %i.hs = load i64, ptr %i.hh, align 8
  %i.ht = load i64, ptr %i.hi, align 16
  %i.hu = add i64 %i.ht, 4503599627370494
  %i.hv = add i64 %i.hk, %i.ho                    ; 2 uses
  %i.hw = lshr i64 %i.hv, 51
  %i.hx = add i64 %i.hw, %i.hl                    ; 2 uses
  %i.hy = lshr i64 %i.hx, 51
  %i.hz = add i64 %i.hy, %i.hm                    ; 2 uses
  %i.ia = insertelement <2 x i64> poison, i64 %i.hv, i64 0
  %i.ib = insertelement <2 x i64> %i.ia, i64 %i.hx, i64 1
  %i.ic = and <2 x i64> %i.ib, splat (i64 2251799813685247)
  %i.id = lshr i64 %i.hz, 51
  %i.ie = add i64 %i.id, %i.hn                    ; 2 uses
  %i.if = and i64 %i.hz, 2251799813685247
  %i.ig = lshr i64 %i.ie, 51
  %i.ih = and i64 %i.ie, 2251799813685247
  %.neg39.i16 = mul nsw i64 %i.ig, -19
  %i.ii = add i64 %i.hr, %.neg39.i16
  %i.ij = load <2 x i64>, ptr %5, align 8
  %i.ik = sub <2 x i64> %i.ij, %i.ic
  %i.il = add <2 x i64> %i.ik, splat (i64 4503599627370494)
  %reass.sub51 = sub i64 %i.hs, %i.if
  %i.im = add i64 %reass.sub51, 4503599627370494
  %i.in = sub i64 %i.hu, %i.ih
  store i64 %i.ii, ptr %i.c, align 16
  store <2 x i64> %i.il, ptr %5, align 8
  store i64 %i.im, ptr %i.hh, align 8
  store i64 %i.in, ptr %i.hi, align 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ip = add i64 %i.gn, %i.gj                    ; 2 uses
  %i.iq = lshr i64 %i.ip, 51
  %i.ir = add i64 %i.iq, %i.gk                    ; 2 uses
  %i.is = lshr i64 %i.ir, 51
  %i.it = add i64 %i.is, %i.gl                    ; 2 uses
  %i.iu = lshr i64 %i.it, 51
  %i.iv = add i64 %i.iu, %i.gm                    ; 2 uses
  %i.iw = lshr i64 %i.iv, 51
  %i.ix = insertelement <4 x i64> poison, i64 %i.ip, i64 0
  %i.iy = insertelement <4 x i64> %i.ix, i64 %i.ir, i64 1
  %i.iz = insertelement <4 x i64> %i.iy, i64 %i.it, i64 2
  %i.ja = insertelement <4 x i64> %i.iz, i64 %i.iv, i64 3
  %i.jb = and <4 x i64> %i.ja, splat (i64 2251799813685247)
  %.neg39.i.i9 = mul nsw i64 %i.iw, -19
  %reass.sub.i10 = sub nsw i64 %.neg39.i.i9, %i.go
  %i.jc = add nsw i64 %reass.sub.i10, 4503599627370458
  %i.jd = sub nuw nsw <4 x i64> splat (i64 4503599627370494), %i.jb
  %i.je = load <4 x i64>, ptr %i.dn, align 8      ; 2 uses
  %i.jf = xor i64 %i.jc, %i.gr
  %i.jg = xor <4 x i64> %i.jd, %i.je
  %i.jh = and i64 %i.jf, %i.gq
  %i.ji = and <4 x i64> %i.jg, %i.ha
  %i.jj = xor i64 %i.jh, %i.gr                    ; 2 uses
  %i.jk = xor <4 x i64> %i.ji, %i.je              ; 5 uses
  %i.jl = extractelement <4 x i64> %i.jk, i64 0   ; 3 uses
  %i.jm = shl i64 %i.jj, 1                        ; 2 uses
  %i.jn = shl <4 x i64> %i.jk, splat (i64 1)
  %i.jo = shl i64 %i.jl, 1
  store i64 %i.jm, ptr %i.j, align 16
  store <4 x i64> %i.jn, ptr %i.io, align 8
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.j, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.k, ptr noundef nonnull %i.c, ptr noundef nonnull @sqrtadm1)
  %i.jp = mul i64 %i.jl, 38
  %i.jq = extractelement <4 x i64> %i.jk, i64 1   ; 2 uses
  %i.jr = mul i64 %i.jq, 38
  %i.js = extractelement <4 x i64> %i.jk, i64 2   ; 3 uses
  %i.jt = mul i64 %i.js, 38
  %i.ju = mul i64 %i.js, 19
  %i.jv = extractelement <4 x i64> %i.jk, i64 3   ; 2 uses
  %i.jw = mul i64 %i.jv, 19
  %i.jx = zext i64 %i.jj to i128                  ; 2 uses
  %i.jy = mul nuw i128 %i.jx, %i.jx
  %i.jz = zext i64 %i.jp to i128
  %i.ka = zext i64 %i.jv to i128                  ; 5 uses
  %i.kb = mul nuw i128 %i.ka, %i.jz
  %i.kc = zext i64 %i.jr to i128                  ; 2 uses
  %i.kd = zext i64 %i.js to i128                  ; 4 uses
  %i.ke = mul nuw i128 %i.kc, %i.kd
  %i.kf = add i128 %i.kb, %i.ke
  %i.kg = add i128 %i.kf, %i.jy                   ; 2 uses
  %i.kh = zext i64 %i.jm to i128                  ; 4 uses
  %i.ki = zext i64 %i.jl to i128                  ; 3 uses
  %i.kj = mul nuw i128 %i.kh, %i.ki
  %i.kk = mul nuw i128 %i.ka, %i.kc
  %i.kl = zext i64 %i.ju to i128
  %i.km = mul nuw i128 %i.kl, %i.kd
  %i.kn = zext i64 %i.jq to i128                  ; 4 uses
  %i.ko = mul nuw i128 %i.kh, %i.kn
  %i.kp = mul nuw i128 %i.ki, %i.ki
  %i.kq = zext i64 %i.jt to i128
  %i.kr = mul nuw i128 %i.kq, %i.ka
  %i.ks = mul nuw i128 %i.kh, %i.kd
  %i.kt = zext i64 %i.jo to i128                  ; 2 uses
  %i.ku = mul nuw i128 %i.kt, %i.kn
  %i.kv = zext i64 %i.jw to i128
  %i.kw = mul nuw i128 %i.kv, %i.ka
  %i.kx = mul nuw i128 %i.kh, %i.ka
  %i.ky = mul nuw i128 %i.kd, %i.kt
  %i.kz = mul nuw i128 %i.kn, %i.kn
  %i.la = trunc i128 %i.kg to i64
  %i.lb = and i64 %i.la, 2251799813685247
  %i.lc = lshr i128 %i.kg, 51
  %i.ld = add i128 %i.km, %i.kk
  %i.le = add i128 %i.ld, %i.kj
  %i.lf = add i128 %i.le, %i.lc                   ; 2 uses
  %i.lg = trunc i128 %i.lf to i64
  %i.lh = and i64 %i.lg, 2251799813685247
  %i.li = lshr i128 %i.lf, 51
  %i.lj = add i128 %i.kr, %i.kp
  %i.lk = add i128 %i.lj, %i.ko
  %i.ll = add i128 %i.lk, %i.li                   ; 2 uses
  %i.lm = trunc i128 %i.ll to i64
  %i.ln = and i64 %i.lm, 2251799813685247
  %i.lo = lshr i128 %i.ll, 51
  %i.lp = add i128 %i.kw, %i.ku
  %i.lq = add i128 %i.lp, %i.ks
  %i.lr = add i128 %i.lq, %i.lo                   ; 2 uses
  %i.ls = trunc i128 %i.lr to i64
  %i.lt = and i64 %i.ls, 2251799813685247         ; 2 uses
  %i.lu = lshr i128 %i.lr, 51
  %i.lv = add i128 %i.ky, %i.kz
  %i.lw = add i128 %i.lv, %i.kx
  %i.lx = add i128 %i.lw, %i.lu                   ; 2 uses
  %i.ly = trunc i128 %i.lx to i64
  %i.lz = and i64 %i.ly, 2251799813685247         ; 2 uses
  %i.ma = lshr i128 %i.lx, 51
  %i.mb = trunc i128 %i.ma to i64
  %i.mc = mul i64 %i.mb, 19
  %i.md = add i64 %i.mc, %i.lb                    ; 2 uses
  %i.me = lshr i64 %i.md, 51
  %i.mf = and i64 %i.md, 2251799813685247         ; 2 uses
  %i.mg = add nuw nsw i64 %i.me, %i.lh            ; 2 uses
  %i.mh = lshr i64 %i.mg, 51
  %i.mi = and i64 %i.mg, 2251799813685247         ; 2 uses
  %i.mj = add nuw nsw i64 %i.mh, %i.ln            ; 3 uses
  %i.mk = lshr i64 %i.mj, 51
  %i.ml = add nuw nsw i64 %i.mk, %i.lt            ; 2 uses
  %i.mm = and i64 %i.mj, 2251799813685247
  %i.mn = lshr i64 %i.ml, 51
  %i.mo = add nuw nsw i64 %i.mn, %i.lz            ; 2 uses
  %i.mp = and i64 %i.ml, 2251799813685247
  %i.mq = lshr i64 %i.mo, 51
  %i.mr = and i64 %i.mo, 2251799813685247
  %.neg39.i21 = mul nuw nsw i64 %i.mq, -19
  %reass.sub59 = sub nsw i64 %.neg39.i21, %i.mf
  %i.ms = add nsw i64 %reass.sub59, 4503599627370459
  %i.mt = sub nuw nsw i64 4503599627370494, %i.mi
  %i.mu = sub nuw nsw i64 4503599627370494, %i.mm
  %i.mv = sub nuw nsw i64 4503599627370494, %i.mp
  %i.mw = sub nuw nsw i64 4503599627370494, %i.mr
  store i64 %i.ms, ptr %i.l, align 16
  %i.mx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.mt, ptr %i.mx, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.mu, ptr %i.my, align 16
  %i.mz = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.mv, ptr %i.mz, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.mw, ptr %i.na, align 16
  %i.nb = add nuw nsw i64 %i.mf, 1
  store i64 %i.nb, ptr %i.m, align 16
  %i.nc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.mi, ptr %i.nc, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.mj, ptr %i.nd, align 16
  %i.ne = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.lt, ptr %i.ne, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.lz, ptr %i.nf, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.m)
  %i.ng = getelementptr i8, ptr %0, i64 40
  call fastcc void @fe25519_mul(ptr noundef %i.ng, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k)
  %i.nh = getelementptr i8, ptr %0, i64 80
  call fastcc void @fe25519_mul(ptr noundef %i.nh, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m)
  %i.ni = getelementptr i8, ptr %0, i64 120
  call fastcc void @fe25519_mul(ptr noundef %i.ni, ptr noundef nonnull %i.j, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret void
}

declare i32 @sodium_is_zero(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ge25519_cmov_cached(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %2 to i64
  %i.b = sub nsw i64 0, %i.a                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8
  %i.i = xor i64 %i.h, %i.e
  %i.j = and i64 %i.i, %i.b
  %i.k = load <2 x i64>, ptr %0, align 8          ; 2 uses
  %i.l = load <2 x i64>, ptr %1, align 8
  %i.m = xor <2 x i64> %i.l, %i.k
  %i.n = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %i.o = shufflevector <2 x i64> %i.n, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.p = and <2 x i64> %i.m, %i.o
  %i.q = xor <2 x i64> %i.p, %i.k
  %i.r = load <2 x i64>, ptr %i.c, align 8        ; 2 uses
  %i.s = load <2 x i64>, ptr %i.f, align 8
  %i.t = xor <2 x i64> %i.s, %i.r
  %i.u = and <2 x i64> %i.t, %i.o
  store <2 x i64> %i.q, ptr %0, align 8
  %i.v = xor <2 x i64> %i.u, %i.r
  store <2 x i64> %i.v, ptr %i.c, align 8
  %i.w = xor i64 %i.j, %i.e
  store i64 %i.w, ptr %i.d, align 8
  %i.x = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 40
  %i.z = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 56
end_hunk_0
