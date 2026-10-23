Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/ed25519_ref10?download=true
inline.NumInlined: 477
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 30
begin_hunk_0_@ristretto255_p3_tobytes:bb.a
  %i.ly = xor i64 %i.lt, %i.ko
  store i64 %i.ly, ptr %i.jm, align 16
  %i.lz = xor i64 %i.lu, %i.kp
  store i64 %i.lz, ptr %i.jx, align 8
  %i.ma = xor i64 %i.lv, %i.kq
  store i64 %i.ma, ptr %i.jy, align 16
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
  %i.h = alloca [5 x i64], align 16               ; 9 uses
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
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.cu, ptr %i.cx, align 16
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %4 = add i64 %i.cu, 1442794654840575
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dk = load <4 x i64>, ptr %i.d, align 16      ; 7 uses
  %i.dl = extractelement <4 x i64> %i.dk, i64 0   ; 2 uses
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.h, align 16
  %i.dn = extractelement <4 x i64> %i.dk, i64 1   ; 2 uses
  store i64 %i.dn, ptr %i.cv, align 8
  %i.do = extractelement <4 x i64> %i.dk, i64 2
  %i.dp = extractelement <4 x i64> %i.dk, i64 3
  %i.dq = shufflevector <4 x i64> %i.dk, <4 x i64> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  store <2 x i64> %i.dq, ptr %i.cw, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, ptr noundef nonnull @onemsqd)
  store i64 4503599627370494, ptr %2, align 8
  store i64 4503599627370494, ptr %i.cy, align 16
  store i64 4503599627370494, ptr %3, align 8
  store i64 4503599627370494, ptr %i.cz, align 16
  %i.dr = shufflevector <4 x i64> %i.dk, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ds = add <2 x i64> %i.dr, <i64 929955233495203, i64 466365720129213>
  store <2 x i64> %i.ds, ptr %i.e, align 16
  %i.dt = add <2 x i64> %i.dq, <i64 1662059464998953, i64 2033849074728123>
  store <2 x i64> %i.dt, ptr %i.da, align 16
  store i64 %4, ptr %i.db, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull @d)
  %i.du = load i64, ptr %i.i, align 16            ; 2 uses
  %i.dv = load i64, ptr %i.dc, align 8
  %i.dw = load i64, ptr %i.dd, align 16
  %i.dx = load i64, ptr %i.de, align 8
  %i.dy = load i64, ptr %i.df, align 16
  %i.dz = lshr i64 %i.du, 51
  %i.ea = add i64 %i.dv, %i.dz                    ; 2 uses
  %i.eb = and i64 %i.du, 2251799813685247
  %i.ec = lshr i64 %i.ea, 51
  %i.ed = add i64 %i.ec, %i.dw                    ; 2 uses
  %i.ee = and i64 %i.ea, 2251799813685247
  %i.ef = lshr i64 %i.ed, 51
  %i.eg = add i64 %i.ef, %i.dx                    ; 2 uses
  %i.eh = and i64 %i.ed, 2251799813685247
  %i.ei = lshr i64 %i.eg, 51
  %i.ej = add i64 %i.ei, %i.dy                    ; 2 uses
  %i.ek = and i64 %i.eg, 2251799813685247
  %i.el = lshr i64 %i.ej, 51
  %i.em = and i64 %i.ej, 2251799813685247
  %.neg39.i = mul nsw i64 %i.el, -19
  %reass.sub47 = sub nsw i64 %.neg39.i, %i.eb
  %i.en = add nsw i64 %reass.sub47, 9007199254740915
  %i.eo = sub nuw nsw i64 9007199254740988, %i.ee
  %i.ep = sub nuw nsw i64 9007199254740988, %i.eh
  %i.eq = sub nuw nsw i64 9007199254740988, %i.ek
  %i.er = sub nuw nsw i64 9007199254740988, %i.em
  store i64 %i.en, ptr %i.i, align 16
  store i64 %i.eo, ptr %i.dc, align 8
  store i64 %i.ep, ptr %i.dd, align 16
  store i64 %i.eq, ptr %i.de, align 8
  store i64 %i.er, ptr %i.df, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e)
  %i.es = call fastcc i32 @ristretto255_sqrt_ratio_m1(ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.i)
  %i.et = sub i32 1, %i.es
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.g)
  %i.eu = load i8, ptr %i.a, align 16
  %i.ev = and i8 %i.eu, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ew = load i64, ptr %i.g, align 16            ; 4 uses
  %i.ex = load i64, ptr %i.dg, align 8            ; 3 uses
  %i.ey = load i64, ptr %i.dh, align 16           ; 3 uses
  %i.ez = load i64, ptr %i.di, align 8            ; 3 uses
  %i.fa = load i64, ptr %i.dj, align 16           ; 3 uses
  %i.fb = lshr i64 %i.ew, 51
  %i.fc = add i64 %i.ex, %i.fb                    ; 2 uses
  %i.fd = and i64 %i.ew, 2251799813685247
  %i.fe = lshr i64 %i.fc, 51
  %i.ff = add i64 %i.fe, %i.ey                    ; 2 uses
  %i.fg = and i64 %i.fc, 2251799813685247
  %i.fh = lshr i64 %i.ff, 51
  %i.fi = add i64 %i.fh, %i.ez                    ; 2 uses
  %i.fj = and i64 %i.ff, 2251799813685247
  %i.fk = lshr i64 %i.fi, 51
  %i.fl = add i64 %i.fk, %i.fa                    ; 2 uses
  %i.fm = and i64 %i.fi, 2251799813685247
  %i.fn = lshr i64 %i.fl, 51
  %i.fo = and i64 %i.fl, 2251799813685247
  %.neg39.i.i.i.i = mul nsw i64 %i.fn, -19
  %reass.sub = sub nsw i64 %.neg39.i.i.i.i, %i.fd
  %i.fp = add nsw i64 %reass.sub, 4503599627370458
  %i.fq = sub nuw nsw i64 4503599627370494, %i.fg
  %i.fr = sub nuw nsw i64 4503599627370494, %i.fj
  %i.fs = sub nuw nsw i64 4503599627370494, %i.fm
  %i.ft = sub nuw nsw i64 4503599627370494, %i.fo
  %i.fu = zext nneg i8 %i.ev to i64
  %i.fv = sub nsw i64 0, %i.fu                    ; 5 uses
  %i.fw = xor i64 %i.fp, %i.ew
  %i.fx = xor i64 %i.ex, %i.fq
  %i.fy = xor i64 %i.ey, %i.fr
  %i.fz = xor i64 %i.ez, %i.fs
  %i.ga = xor i64 %i.ft, %i.fa
  %i.gb = and i64 %i.fw, %i.fv
  %i.gc = and i64 %i.fx, %i.fv
  %i.gd = and i64 %i.fy, %i.fv
  %i.ge = and i64 %i.fz, %i.fv
  %i.gf = and i64 %i.ga, %i.fv
  %i.gg = xor i64 %i.gb, %i.ew                    ; 2 uses
  %i.gh = xor i64 %i.gc, %i.ex
  %i.gi = xor i64 %i.gd, %i.ey
  %i.gj = xor i64 %i.ge, %i.ez
  %i.gk = xor i64 %i.gf, %i.fa
  %i.gl = lshr i64 %i.gg, 51
  %i.gm = and i64 %i.gg, 2251799813685247
  %i.gn = zext i32 %i.et to i64
  %i.go = sub nsw i64 0, %i.gn                    ; 3 uses
  %6 = load i64, ptr %i.f, align 16               ; 2 uses
  %i.gp = load i64, ptr %2, align 8
  %7 = load <2 x i64>, ptr %i.cy, align 16
  %8 = insertelement <4 x i64> <i64 4503599627370457, i64 poison, i64 poison, i64 poison>, i64 %i.gp, i64 1
  %9 = shufflevector <2 x i64> %7, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x i64> %8, <4 x i64> %9, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.gq = xor <4 x i64> %i.dk, %10
  %11 = xor i64 %i.cu, 4503599627370494
  %i.gr = insertelement <4 x i64> poison, i64 %i.go, i64 0
  %i.gs = shufflevector <4 x i64> %i.gr, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gt = and <4 x i64> %i.gq, %i.gs
  %i.gu = and i64 %11, %i.go
  %i.gv = xor <4 x i64> %i.gt, %10
  store <4 x i64> %i.gv, ptr %i.b, align 16
  %i.gw = xor i64 %i.gu, 4503599627370494
  store i64 %i.gw, ptr %i.cz, align 16
  %i.gx = add i64 %i.dl, 4503599627370457
  %reass.sub45.i13 = add i64 %i.dn, 4503599627370494
  %reass.sub46.i14 = add i64 %i.do, 4503599627370494
  %reass.sub47.i15 = add i64 %i.dp, 4503599627370494
  %i.gy = add i64 %i.cu, 4503599627370494
  store i64 %i.gx, ptr %i.c, align 16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i64 %reass.sub45.i13, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %reass.sub46.i14, ptr %i.ha, align 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i64 %reass.sub47.i15, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store i64 %i.gy, ptr %i.hc, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull @sqdmone)
  %i.hd = load i64, ptr %i.i, align 16            ; 2 uses
  %i.he = load i64, ptr %i.dc, align 8
  %i.hf = load i64, ptr %i.dd, align 16
  %i.hg = load i64, ptr %i.de, align 8
  %i.hh = load i64, ptr %i.df, align 16
  %i.hi = lshr i64 %i.hd, 51
  %i.hj = and i64 %i.hd, 2251799813685247
  %i.hk = load i64, ptr %i.c, align 16
  %reass.sub48 = sub i64 %i.hk, %i.hj
  %i.hl = add i64 %reass.sub48, 4503599627370458
  %i.hm = load i64, ptr %i.hb, align 8
  %i.hn = load i64, ptr %i.hc, align 16
  %i.ho = add i64 %i.hn, 4503599627370494
  %i.hp = add i64 %i.he, %i.hi                    ; 2 uses
  %i.hq = lshr i64 %i.hp, 51
  %i.hr = add i64 %i.hq, %i.hf                    ; 2 uses
  %i.hs = lshr i64 %i.hr, 51
  %i.ht = add i64 %i.hs, %i.hg                    ; 2 uses
  %i.hu = insertelement <2 x i64> poison, i64 %i.hp, i64 0
  %i.hv = insertelement <2 x i64> %i.hu, i64 %i.hr, i64 1
  %i.hw = and <2 x i64> %i.hv, splat (i64 2251799813685247)
  %i.hx = lshr i64 %i.ht, 51
  %i.hy = add i64 %i.hx, %i.hh                    ; 2 uses
  %i.hz = and i64 %i.ht, 2251799813685247
  %i.ia = lshr i64 %i.hy, 51
  %i.ib = and i64 %i.hy, 2251799813685247
  %.neg39.i16 = mul nsw i64 %i.ia, -19
  %i.ic = add i64 %i.hl, %.neg39.i16
  %i.id = load <2 x i64>, ptr %i.gz, align 8
  %i.ie = sub <2 x i64> %i.id, %i.hw
  %i.if = add <2 x i64> %i.ie, splat (i64 4503599627370494)
  %reass.sub51 = sub i64 %i.hm, %i.hz
  %i.ig = add i64 %reass.sub51, 4503599627370494
  %i.ih = sub i64 %i.ho, %i.ib
  store i64 %i.ic, ptr %i.c, align 16
  store <2 x i64> %i.if, ptr %i.gz, align 8
  store i64 %i.ig, ptr %i.hb, align 8
  store i64 %i.ih, ptr %i.hc, align 16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ij = add i64 %i.gl, %i.gh                    ; 2 uses
  %i.ik = lshr i64 %i.ij, 51
  %i.il = add i64 %i.ik, %i.gi                    ; 2 uses
  %i.im = lshr i64 %i.il, 51
  %i.in = add i64 %i.im, %i.gj                    ; 2 uses
  %i.io = lshr i64 %i.in, 51
  %i.ip = add i64 %i.io, %i.gk                    ; 2 uses
  %i.iq = lshr i64 %i.ip, 51
  %i.ir = insertelement <4 x i64> poison, i64 %i.ij, i64 0
  %i.is = insertelement <4 x i64> %i.ir, i64 %i.il, i64 1
  %i.it = insertelement <4 x i64> %i.is, i64 %i.in, i64 2
  %i.iu = insertelement <4 x i64> %i.it, i64 %i.ip, i64 3
  %i.iv = and <4 x i64> %i.iu, splat (i64 2251799813685247)
  %.neg39.i.i9 = mul nsw i64 %i.iq, -19
  %reass.sub.i10 = sub nsw i64 %.neg39.i.i9, %i.gm
  %i.iw = add nsw i64 %reass.sub.i10, 4503599627370458
  %i.ix = sub nuw nsw <4 x i64> splat (i64 4503599627370494), %i.iv
  %i.iy = load <4 x i64>, ptr %5, align 8         ; 2 uses
  %i.iz = xor i64 %i.iw, %6
  %i.ja = xor <4 x i64> %i.ix, %i.iy
  %i.jb = and i64 %i.iz, %i.go
  %i.jc = and <4 x i64> %i.ja, %i.gs
  %i.jd = xor i64 %i.jb, %6                       ; 2 uses
  %i.je = xor <4 x i64> %i.jc, %i.iy              ; 5 uses
  %i.jf = extractelement <4 x i64> %i.je, i64 0   ; 3 uses
  %i.jg = shl i64 %i.jd, 1                        ; 2 uses
  %i.jh = shl <4 x i64> %i.je, splat (i64 1)
  %i.ji = shl i64 %i.jf, 1
  store i64 %i.jg, ptr %i.j, align 16
  store <4 x i64> %i.jh, ptr %i.ii, align 8
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.j, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.k, ptr noundef nonnull %i.c, ptr noundef nonnull @sqrtadm1)
  %i.jj = mul i64 %i.jf, 38
  %i.jk = extractelement <4 x i64> %i.je, i64 1   ; 2 uses
  %i.jl = mul i64 %i.jk, 38
  %i.jm = extractelement <4 x i64> %i.je, i64 2   ; 3 uses
  %i.jn = mul i64 %i.jm, 38
  %i.jo = mul i64 %i.jm, 19
  %i.jp = extractelement <4 x i64> %i.je, i64 3   ; 2 uses
  %i.jq = mul i64 %i.jp, 19
  %i.jr = zext i64 %i.jd to i128                  ; 2 uses
  %i.js = mul nuw i128 %i.jr, %i.jr
  %i.jt = zext i64 %i.jj to i128
  %i.ju = zext i64 %i.jp to i128                  ; 5 uses
  %i.jv = mul nuw i128 %i.ju, %i.jt
  %i.jw = zext i64 %i.jl to i128                  ; 2 uses
  %i.jx = zext i64 %i.jm to i128                  ; 4 uses
  %i.jy = mul nuw i128 %i.jw, %i.jx
  %i.jz = add i128 %i.jv, %i.jy
  %i.ka = add i128 %i.jz, %i.js                   ; 2 uses
  %i.kb = zext i64 %i.jg to i128                  ; 4 uses
  %i.kc = zext i64 %i.jf to i128                  ; 3 uses
  %i.kd = mul nuw i128 %i.kb, %i.kc
  %i.ke = mul nuw i128 %i.ju, %i.jw
  %i.kf = zext i64 %i.jo to i128
  %i.kg = mul nuw i128 %i.kf, %i.jx
  %i.kh = zext i64 %i.jk to i128                  ; 4 uses
  %i.ki = mul nuw i128 %i.kb, %i.kh
  %i.kj = mul nuw i128 %i.kc, %i.kc
  %i.kk = zext i64 %i.jn to i128
  %i.kl = mul nuw i128 %i.kk, %i.ju
  %i.km = mul nuw i128 %i.kb, %i.jx
  %i.kn = zext i64 %i.ji to i128                  ; 2 uses
  %i.ko = mul nuw i128 %i.kn, %i.kh
  %i.kp = zext i64 %i.jq to i128
  %i.kq = mul nuw i128 %i.kp, %i.ju
  %i.kr = mul nuw i128 %i.kb, %i.ju
  %i.ks = mul nuw i128 %i.jx, %i.kn
  %i.kt = mul nuw i128 %i.kh, %i.kh
  %i.ku = trunc i128 %i.ka to i64
  %i.kv = and i64 %i.ku, 2251799813685247
  %i.kw = lshr i128 %i.ka, 51
  %i.kx = add i128 %i.kg, %i.ke
  %i.ky = add i128 %i.kx, %i.kd
  %i.kz = add i128 %i.ky, %i.kw                   ; 2 uses
  %i.la = trunc i128 %i.kz to i64
  %i.lb = and i64 %i.la, 2251799813685247
  %i.lc = lshr i128 %i.kz, 51
  %i.ld = add i128 %i.kl, %i.kj
  %i.le = add i128 %i.ld, %i.ki
  %i.lf = add i128 %i.le, %i.lc                   ; 2 uses
  %i.lg = trunc i128 %i.lf to i64
  %i.lh = and i64 %i.lg, 2251799813685247
  %i.li = lshr i128 %i.lf, 51
  %i.lj = add i128 %i.kq, %i.ko
  %i.lk = add i128 %i.lj, %i.km
  %i.ll = add i128 %i.lk, %i.li                   ; 2 uses
  %i.lm = trunc i128 %i.ll to i64
  %i.ln = and i64 %i.lm, 2251799813685247         ; 2 uses
  %i.lo = lshr i128 %i.ll, 51
  %i.lp = add i128 %i.ks, %i.kt
  %i.lq = add i128 %i.lp, %i.kr
  %i.lr = add i128 %i.lq, %i.lo                   ; 2 uses
  %i.ls = trunc i128 %i.lr to i64
  %i.lt = and i64 %i.ls, 2251799813685247         ; 2 uses
  %i.lu = lshr i128 %i.lr, 51
  %i.lv = trunc i128 %i.lu to i64
  %i.lw = mul i64 %i.lv, 19
  %i.lx = add i64 %i.lw, %i.kv                    ; 2 uses
  %i.ly = lshr i64 %i.lx, 51
  %i.lz = and i64 %i.lx, 2251799813685247         ; 2 uses
  %i.ma = add nuw nsw i64 %i.ly, %i.lb            ; 2 uses
  %i.mb = lshr i64 %i.ma, 51
  %i.mc = and i64 %i.ma, 2251799813685247         ; 2 uses
  %i.md = add nuw nsw i64 %i.mb, %i.lh            ; 3 uses
  %i.me = lshr i64 %i.md, 51
  %i.mf = add nuw nsw i64 %i.me, %i.ln            ; 2 uses
  %i.mg = and i64 %i.md, 2251799813685247
  %i.mh = lshr i64 %i.mf, 51
  %i.mi = add nuw nsw i64 %i.mh, %i.lt            ; 2 uses
  %i.mj = and i64 %i.mf, 2251799813685247
  %i.mk = lshr i64 %i.mi, 51
  %i.ml = and i64 %i.mi, 2251799813685247
  %.neg39.i21 = mul nuw nsw i64 %i.mk, -19
  %reass.sub59 = sub nsw i64 %.neg39.i21, %i.lz
  %i.mm = add nsw i64 %reass.sub59, 4503599627370459
  %i.mn = sub nuw nsw i64 4503599627370494, %i.mc
  %i.mo = sub nuw nsw i64 4503599627370494, %i.mg
  %i.mp = sub nuw nsw i64 4503599627370494, %i.mj
  %i.mq = sub nuw nsw i64 4503599627370494, %i.ml
  store i64 %i.mm, ptr %i.l, align 16
  %i.mr = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.mn, ptr %i.mr, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.mo, ptr %i.ms, align 16
  %i.mt = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.mp, ptr %i.mt, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.mq, ptr %i.mu, align 16
  %i.mv = add nuw nsw i64 %i.lz, 1
  store i64 %i.mv, ptr %i.m, align 16
  %i.mw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.mc, ptr %i.mw, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.md, ptr %i.mx, align 16
  %i.my = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.ln, ptr %i.my, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.lt, ptr %i.mz, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.m)
  %i.na = getelementptr i8, ptr %0, i64 40
  call fastcc void @fe25519_mul(ptr noundef %i.na, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k)
  %i.nb = getelementptr i8, ptr %0, i64 80
  call fastcc void @fe25519_mul(ptr noundef %i.nb, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m)
  %i.nc = getelementptr i8, ptr %0, i64 120
  call fastcc void @fe25519_mul(ptr noundef %i.nc, ptr noundef nonnull %i.j, ptr noundef nonnull %i.l)
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
  %i.ad = getelementptr i8, ptr %1, i64 72
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = xor i64 %i.ae, %i.ab
  %i.ag = and i64 %i.af, %i.b
  %i.ah = load <2 x i64>, ptr %i.x, align 8       ; 2 uses
  %i.ai = load <2 x i64>, ptr %i.y, align 8
  %i.aj = xor <2 x i64> %i.ai, %i.ah
  %i.ak = and <2 x i64> %i.aj, %i.o
  %i.al = xor <2 x i64> %i.ak, %i.ah
  %i.am = load <2 x i64>, ptr %i.z, align 8       ; 2 uses
  %i.an = load <2 x i64>, ptr %i.ac, align 8
  %i.ao = xor <2 x i64> %i.an, %i.am
  %i.ap = and <2 x i64> %i.ao, %i.o
  store <2 x i64> %i.al, ptr %i.x, align 8
  %i.aq = xor <2 x i64> %i.ap, %i.am
  store <2 x i64> %i.aq, ptr %i.z, align 8
  %i.ar = xor i64 %i.ag, %i.ab
  store i64 %i.ar, ptr %i.aa, align 8
  %i.as = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 80
  %i.au = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.av = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 96
  %i.ay = getelementptr i8, ptr %1, i64 112
end_hunk_0
