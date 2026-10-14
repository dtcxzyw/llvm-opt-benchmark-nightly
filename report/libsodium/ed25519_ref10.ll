Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/ed25519_ref10?download=true
inline.NumInlined: 477
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 30
begin_hunk_0_@ristretto255_frombytes:bb.a
  %i.kc = add nuw nsw i128 %i.kb, %i.jg
  %i.kd = add nuw nsw i128 %i.kc, %i.ka           ; 2 uses
  %i.ke = trunc i128 %i.kd to i64
  %i.kf = and i64 %i.ke, 2251799813685247
  %i.kg = lshr i128 %i.kd, 51
  %i.kh = add nuw nsw i128 %i.jk, %i.jo
  %i.ki = add nuw nsw i128 %i.kh, %i.jm
  %i.kj = add nuw nsw i128 %i.ki, %i.kg           ; 2 uses
  %i.kk = trunc i128 %i.kj to i64
  %i.kl = and i64 %i.kk, 2251799813685247         ; 2 uses
  %i.km = lshr i128 %i.kj, 51
  %i.kn = add nuw nsw i128 %i.jr, %i.jp
  %i.ko = add nuw nsw i128 %i.kn, %i.jq
  %i.kp = add nuw nsw i128 %i.ko, %i.km           ; 2 uses
  %i.kq = trunc i128 %i.kp to i64
  %i.kr = and i64 %i.kq, 2251799813685247         ; 2 uses
  %i.ks = lshr i128 %i.kp, 51
  %i.kt = trunc nuw nsw i128 %i.ks to i64
  %i.ku = mul nuw nsw i64 %i.kt, 19
  %i.kv = add nuw nsw i64 %i.ku, %i.jt            ; 2 uses
  %i.kw = lshr i64 %i.kv, 51
  %i.kx = and i64 %i.kv, 2251799813685247         ; 2 uses
  %i.ky = add nuw nsw i64 %i.kw, %i.jz            ; 2 uses
  %i.kz = lshr i64 %i.ky, 51
  %i.la = and i64 %i.ky, 2251799813685247         ; 2 uses
  %i.lb = add nuw nsw i64 %i.kz, %i.kf            ; 3 uses
  store i64 %i.kx, ptr %i.j, align 16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.la, ptr %i.lc, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.lb, ptr %i.ld, align 16
  %i.le = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.kl, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.kr, ptr %i.lf, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.k, ptr noundef nonnull @d, ptr noundef nonnull %i.i)
  %i.lg = load i64, ptr %i.k, align 16            ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.lo = load i64, ptr %i.ln, align 16
  %i.lp = lshr i64 %i.lg, 51
  %i.lq = add i64 %i.li, %i.lp                    ; 2 uses
  %i.lr = and i64 %i.lg, 2251799813685247
  %i.ls = lshr i64 %i.lq, 51
  %i.lt = add i64 %i.ls, %i.lk                    ; 2 uses
  %i.lu = and i64 %i.lq, 2251799813685247
  %i.lv = lshr i64 %i.lt, 51
  %i.lw = add i64 %i.lv, %i.lm                    ; 2 uses
  %i.lx = and i64 %i.lt, 2251799813685247
  %i.ly = lshr i64 %i.lw, 51
  %i.lz = add i64 %i.ly, %i.lo                    ; 2 uses
  %i.ma = and i64 %i.lw, 2251799813685247
  %i.mb = lshr i64 %i.lz, 51
  %i.mc = and i64 %i.lz, 2251799813685247
  %.neg39.i.i = mul nsw i64 %i.mb, -19
  %i.md = lshr i64 %i.lb, 51
  %i.me = add nuw nsw i64 %i.md, %i.kl            ; 2 uses
  %i.mf = and i64 %i.lb, 2251799813685247
  %i.mg = lshr i64 %i.me, 51
  %i.mh = add nuw nsw i64 %i.mg, %i.kr            ; 2 uses
  %i.mi = and i64 %i.me, 2251799813685247
  %i.mj = lshr i64 %i.mh, 51
  %i.mk = and i64 %i.mh, 2251799813685247
  %.neg39.i24 = mul nuw nsw i64 %i.mj, -19
  %i.ml = add nuw nsw i64 %i.lr, %i.kx
  %i.mm = sub nsw i64 %.neg39.i.i, %i.ml
  %i.mn = add nsw i64 %i.mm, 9007199254740916
  %i.mo = add nsw i64 %i.mn, %.neg39.i24
  %i.mp = add nuw nsw i64 %i.lu, %i.la
  %i.mq = sub nuw nsw i64 9007199254740988, %i.mp
  %i.mr = add nuw nsw i64 %i.lx, %i.mf
  %i.ms = sub nuw nsw i64 9007199254740988, %i.mr
  %i.mt = add nuw nsw i64 %i.ma, %i.mi
  %i.mu = sub nuw nsw i64 9007199254740988, %i.mt
  %i.mv = add nuw nsw i64 %i.mc, %i.mk
  %i.mw = sub nuw nsw i64 9007199254740988, %i.mv
  store i64 %i.mo, ptr %i.k, align 16
  store i64 %i.mq, ptr %i.lh, align 8
  store i64 %i.ms, ptr %i.lj, align 16
  store i64 %i.mu, ptr %i.ll, align 8
  store i64 %i.mw, ptr %i.ln, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, ptr noundef nonnull %i.j)
  store i64 1, ptr %i.e, align 16
  %i.mx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mx, i8 noundef 0, i64 noundef 32, i1 noundef false) #12
  %i.my = call fastcc i32 @ristretto255_sqrt_ratio_m1(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.l)
  call fastcc void @fe25519_mul(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h)
  %i.mz = getelementptr i8, ptr %0, i64 40        ; 7 uses
  call fastcc void @fe25519_mul(ptr noundef %i.mz, ptr noundef nonnull %i.d, ptr noundef %0)
  call fastcc void @fe25519_mul(ptr noundef %i.mz, ptr noundef %i.mz, ptr noundef nonnull %i.k)
  call fastcc void @fe25519_mul(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.f)
  %i.na = load i64, ptr %0, align 8
  %i.nb = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8
  %i.nd = shl i64 %i.nc, 1                        ; 2 uses
  %i.ne = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.nf = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ng = getelementptr i8, ptr %0, i64 32        ; 4 uses
  store i64 %i.nd, ptr %i.nb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.nh = load i64, ptr %i.ng, align 8
  %i.ni = load i64, ptr %i.ne, align 8
  %i.nj = shl i64 %i.ni, 1                        ; 2 uses
  store i64 %i.nj, ptr %i.ne, align 8
  %i.nk = shl i64 %i.na, 1                        ; 3 uses
  %i.nl = load i64, ptr %i.nf, align 8
  %i.nm = shl i64 %i.nl, 1                        ; 2 uses
  %i.nn = shl i64 %i.nh, 1                        ; 2 uses
  store i64 %i.nk, ptr %0, align 8
  store i64 %i.nm, ptr %i.nf, align 8
  store i64 %i.nn, ptr %i.ng, align 8
  call void @fe25519_tobytes(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %0)
  %i.no = load i8, ptr %i.c, align 16
  %i.np = and i8 %i.no, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.nq = lshr i64 %i.nk, 51
  %i.nr = add i64 %i.nd, %i.nq                    ; 2 uses
  %i.ns = and i64 %i.nk, 2251799813685246
  %i.nt = lshr i64 %i.nr, 51
  %i.nu = add i64 %i.nt, %i.nj                    ; 2 uses
  %i.nv = lshr i64 %i.nu, 51
  %i.nw = add i64 %i.nv, %i.nm                    ; 2 uses
  %i.nx = lshr i64 %i.nw, 51
  %i.ny = add i64 %i.nx, %i.nn                    ; 2 uses
  %i.nz = insertelement <4 x i64> <i64 -1, i64 poison, i64 poison, i64 poison>, i64 %i.nr, i64 1
  %i.oa = insertelement <4 x i64> %i.nz, i64 %i.nu, i64 2
  %i.ob = insertelement <4 x i64> %i.oa, i64 %i.nw, i64 3
  %i.oc = and <4 x i64> %i.ob, <i64 -4503599627370458, i64 2251799813685247, i64 2251799813685247, i64 2251799813685247>
  %i.od = lshr i64 %i.ny, 51
  %i.oe = and i64 %i.ny, 2251799813685247
  %.neg39.i.i.i.i = mul nsw i64 %i.od, -19
  %reass.sub43 = sub nsw i64 %.neg39.i.i.i.i, %i.ns
  %i.of = insertelement <4 x i64> <i64 poison, i64 4503599627370494, i64 4503599627370494, i64 4503599627370494>, i64 %reass.sub43, i64 0
  %i.og = sub nsw <4 x i64> %i.of, %i.oc
  %i.oh = sub nuw nsw i64 4503599627370494, %i.oe
  %i.oi = zext nneg i8 %i.np to i64
  %i.oj = sub nsw i64 0, %i.oi                    ; 2 uses
  %i.ok = load <4 x i64>, ptr %0, align 8         ; 2 uses
  %i.ol = load i64, ptr %i.ng, align 8            ; 2 uses
  %i.om = xor <4 x i64> %i.ok, %i.og
  %i.on = xor i64 %i.ol, %i.oh
  %i.oo = insertelement <4 x i64> poison, i64 %i.oj, i64 0
  %i.op = shufflevector <4 x i64> %i.oo, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.oq = and <4 x i64> %i.om, %i.op
  %i.or = and i64 %i.on, %i.oj
  %i.os = xor <4 x i64> %i.oq, %i.ok
  store <4 x i64> %i.os, ptr %0, align 8
  %i.ot = xor i64 %i.or, %i.ol
  store i64 %i.ot, ptr %i.ng, align 8
  call fastcc void @fe25519_mul(ptr noundef %i.mz, ptr noundef nonnull %i.g, ptr noundef %i.mz)
  %i.ou = getelementptr i8, ptr %0, i64 80
  store i64 1, ptr %i.ou, align 8
  %i.ov = getelementptr i8, ptr %0, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ov, i8 noundef 0, i64 noundef 32, i1 noundef false) #12
  %i.ow = getelementptr i8, ptr %0, i64 120       ; 2 uses
  call fastcc void @fe25519_mul(ptr noundef %i.ow, ptr noundef nonnull %0, ptr noundef %i.mz)
  %i.ox = sub i32 1, %i.my
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.b, ptr noundef readonly %i.ow)
  %i.oy = load i8, ptr %i.b, align 16
  %i.oz = and i8 %i.oy, 1
  %i.pa = zext nneg i8 %i.oz to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.pb = or i32 %i.ox, %i.pa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.a, ptr noundef readonly %i.mz)
  %i.pc = call i32 @sodium_is_zero(ptr noundef nonnull %i.a, i64 noundef 32) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.pd = or i32 %i.pb, %i.pc
  %i.pe = sub i32 0, %i.pd
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.pe, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc i32 @ristretto255_sqrt_ratio_m1(ptr noundef nonnull initializes((0, 40)) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca [5 x i64], align 16               ; 11 uses
  %i.f = alloca [5 x i64], align 16               ; 10 uses
  %i.g = alloca [5 x i64], align 16               ; 8 uses
  %i.h = alloca [5 x i64], align 16               ; 8 uses
  %i.i = alloca [5 x i64], align 16               ; 8 uses
  %i.j = alloca [5 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %i.k = load i64, ptr %2, align 8                ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 24
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr i8, ptr %2, i64 32
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = shl i64 %i.k, 1
  %i.u = shl i64 %i.m, 1
  %i.v = mul i64 %i.m, 38
  %i.w = mul i64 %i.o, 38
  %i.x = mul i64 %i.q, 38
  %i.y = mul i64 %i.q, 19
  %i.z = mul i64 %i.s, 19
  %i.aa = zext i64 %i.k to i128                   ; 2 uses
  %i.ab = mul nuw i128 %i.aa, %i.aa
  %i.ac = zext i64 %i.v to i128
  %i.ad = zext i64 %i.s to i128                   ; 5 uses
  %i.ae = mul nuw i128 %i.ad, %i.ac
  %i.af = zext i64 %i.w to i128                   ; 2 uses
  %i.ag = zext i64 %i.q to i128                   ; 4 uses
  %i.ah = mul nuw i128 %i.af, %i.ag
  %i.ai = add i128 %i.ah, %i.ab
  %i.aj = add i128 %i.ai, %i.ae                   ; 2 uses
  %i.ak = zext i64 %i.t to i128                   ; 4 uses
  %i.al = zext i64 %i.m to i128                   ; 3 uses
  %i.am = mul nuw i128 %i.ak, %i.al
  %i.an = mul nuw i128 %i.ad, %i.af
  %i.ao = add i128 %i.an, %i.am
  %i.ap = zext i64 %i.y to i128
  %i.aq = mul nuw i128 %i.ap, %i.ag
  %i.ar = add i128 %i.ao, %i.aq
  %i.as = zext i64 %i.o to i128                   ; 4 uses
  %i.at = mul nuw i128 %i.as, %i.ak
  %i.au = mul nuw i128 %i.al, %i.al
  %i.av = add i128 %i.at, %i.au
  %i.aw = zext i64 %i.x to i128
  %i.ax = mul nuw i128 %i.aw, %i.ad
  %i.ay = add i128 %i.av, %i.ax
  %i.az = mul nuw i128 %i.ag, %i.ak
  %i.ba = zext i64 %i.u to i128                   ; 2 uses
  %i.bb = mul nuw i128 %i.ba, %i.as
  %i.bc = add i128 %i.az, %i.bb
  %i.bd = zext i64 %i.z to i128
  %i.be = mul nuw i128 %i.bd, %i.ad
  %i.bf = add i128 %i.bc, %i.be
  %i.bg = mul nuw i128 %i.ad, %i.ak
  %i.bh = mul nuw i128 %i.ag, %i.ba
  %i.bi = mul nuw i128 %i.as, %i.as
  %i.bj = trunc i128 %i.aj to i64
  %i.bk = and i64 %i.bj, 2251799813685247
  %i.bl = lshr i128 %i.aj, 51
  %i.bm = add i128 %i.ar, %i.bl                   ; 2 uses
  %i.bn = trunc i128 %i.bm to i64
  %i.bo = and i64 %i.bn, 2251799813685247
  %i.bp = lshr i128 %i.bm, 51
  %i.bq = add i128 %i.ay, %i.bp                   ; 2 uses
  %i.br = trunc i128 %i.bq to i64
  %i.bs = and i64 %i.br, 2251799813685247
  %i.bt = lshr i128 %i.bq, 51
  %i.bu = add i128 %i.bf, %i.bt                   ; 2 uses
  %i.bv = trunc i128 %i.bu to i64
  %i.bw = and i64 %i.bv, 2251799813685247
  %i.bx = lshr i128 %i.bu, 51
  %i.by = add i128 %i.bh, %i.bi
  %i.bz = add i128 %i.by, %i.bg
  %i.ca = add i128 %i.bz, %i.bx                   ; 2 uses
  %i.cb = trunc i128 %i.ca to i64
  %i.cc = and i64 %i.cb, 2251799813685247
  %i.cd = lshr i128 %i.ca, 51
  %i.ce = trunc i128 %i.cd to i64
  %i.cf = mul i64 %i.ce, 19
  %i.cg = add i64 %i.cf, %i.bk                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 51
  %i.ci = and i64 %i.cg, 2251799813685247
  %i.cj = add nuw nsw i64 %i.ch, %i.bo            ; 2 uses
  %i.ck = lshr i64 %i.cj, 51
  %i.cl = and i64 %i.cj, 2251799813685247
  %i.cm = add nuw nsw i64 %i.ck, %i.bs
  store i64 %i.ci, ptr %i.e, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %i.cl, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %i.cm, ptr %i.co, align 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store i64 %i.bw, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store i64 %i.cc, ptr %i.cq, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef nonnull %2)
  %i.cr = load i64, ptr %i.e, align 16            ; 2 uses
  %i.cs = load i64, ptr %i.cn, align 8            ; 3 uses
  %i.ct = load i64, ptr %i.co, align 16           ; 2 uses
  %i.cu = load i64, ptr %i.cp, align 8            ; 3 uses
  %i.cv = load i64, ptr %i.cq, align 16           ; 2 uses
  %i.cw = shl i64 %i.cr, 1
  %i.cx = shl i64 %i.cs, 1
  %i.cy = mul i64 %i.cs, 38
  %i.cz = mul i64 %i.ct, 38
  %i.da = mul i64 %i.cu, 38
  %i.db = mul i64 %i.cu, 19
  %i.dc = mul i64 %i.cv, 19
  %i.dd = zext i64 %i.cr to i128                  ; 2 uses
  %i.de = mul nuw i128 %i.dd, %i.dd
  %i.df = zext i64 %i.cy to i128
  %i.dg = zext i64 %i.cv to i128                  ; 5 uses
  %i.dh = mul nuw i128 %i.dg, %i.df
  %i.di = zext i64 %i.cz to i128                  ; 2 uses
  %i.dj = zext i64 %i.cu to i128                  ; 4 uses
  %i.dk = mul nuw i128 %i.di, %i.dj
  %i.dl = add i128 %i.dk, %i.de
  %i.dm = add i128 %i.dl, %i.dh                   ; 2 uses
  %i.dn = zext i64 %i.cw to i128                  ; 4 uses
  %i.do = zext i64 %i.cs to i128                  ; 3 uses
  %i.dp = mul nuw i128 %i.dn, %i.do
  %i.dq = mul nuw i128 %i.dg, %i.di
  %i.dr = add i128 %i.dq, %i.dp
  %i.ds = zext i64 %i.db to i128
  %i.dt = mul nuw i128 %i.ds, %i.dj
  %i.du = add i128 %i.dr, %i.dt
  %i.dv = zext i64 %i.ct to i128                  ; 4 uses
  %i.dw = mul nuw i128 %i.dv, %i.dn
  %i.dx = mul nuw i128 %i.do, %i.do
  %i.dy = add i128 %i.dw, %i.dx
  %i.dz = zext i64 %i.da to i128
  %i.ea = mul nuw i128 %i.dz, %i.dg
  %i.eb = add i128 %i.dy, %i.ea
  %i.ec = mul nuw i128 %i.dj, %i.dn
  %i.ed = zext i64 %i.cx to i128                  ; 2 uses
  %i.ee = mul nuw i128 %i.ed, %i.dv
  %i.ef = add i128 %i.ec, %i.ee
  %i.eg = zext i64 %i.dc to i128
  %i.eh = mul nuw i128 %i.eg, %i.dg
  %i.ei = add i128 %i.ef, %i.eh
  %i.ej = mul nuw i128 %i.dg, %i.dn
  %i.ek = mul nuw i128 %i.dj, %i.ed
  %i.el = mul nuw i128 %i.dv, %i.dv
  %i.em = trunc i128 %i.dm to i64
  %i.en = and i64 %i.em, 2251799813685247
  %i.eo = lshr i128 %i.dm, 51
  %i.ep = add i128 %i.du, %i.eo                   ; 2 uses
  %i.eq = trunc i128 %i.ep to i64
  %i.er = and i64 %i.eq, 2251799813685247
  %i.es = lshr i128 %i.ep, 51
  %i.et = add i128 %i.eb, %i.es                   ; 2 uses
  %i.eu = trunc i128 %i.et to i64
  %i.ev = and i64 %i.eu, 2251799813685247
  %i.ew = lshr i128 %i.et, 51
  %i.ex = add i128 %i.ei, %i.ew                   ; 2 uses
  %i.ey = trunc i128 %i.ex to i64
  %i.ez = and i64 %i.ey, 2251799813685247
  %i.fa = lshr i128 %i.ex, 51
  %i.fb = add i128 %i.ek, %i.el
  %i.fc = add i128 %i.fb, %i.ej
  %i.fd = add i128 %i.fc, %i.fa                   ; 2 uses
  %i.fe = trunc i128 %i.fd to i64
  %i.ff = and i64 %i.fe, 2251799813685247
  %i.fg = lshr i128 %i.fd, 51
  %i.fh = trunc i128 %i.fg to i64
  %i.fi = mul i64 %i.fh, 19
  %i.fj = add i64 %i.fi, %i.en                    ; 2 uses
  %i.fk = lshr i64 %i.fj, 51
  %i.fl = and i64 %i.fj, 2251799813685247
  %i.fm = add nuw nsw i64 %i.fk, %i.er            ; 2 uses
  %i.fn = lshr i64 %i.fm, 51
  %i.fo = and i64 %i.fm, 2251799813685247
  %i.fp = add nuw nsw i64 %i.fn, %i.ev
  store i64 %i.fl, ptr %0, align 8
  %i.fq = getelementptr i8, ptr %0, i64 8         ; 4 uses
  store i64 %i.fo, ptr %i.fq, align 8
  %i.fr = getelementptr i8, ptr %0, i64 16        ; 6 uses
  store i64 %i.fp, ptr %i.fr, align 8
  %i.fs = getelementptr i8, ptr %0, i64 24        ; 2 uses
  store i64 %i.ez, ptr %i.fs, align 8
  %i.ft = getelementptr i8, ptr %0, i64 32        ; 6 uses
  store i64 %i.ff, ptr %i.ft, align 8
  tail call fastcc void @fe25519_mul(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %2)
  tail call fastcc void @fe25519_mul(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %1)
  tail call fastcc void @fe25519_pow22523(ptr noundef nonnull %0, ptr noundef nonnull %0)
  call fastcc void @fe25519_mul(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %i.e)
  tail call fastcc void @fe25519_mul(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.fu = load i64, ptr %0, align 8               ; 2 uses
  %i.fv = load i64, ptr %i.fq, align 8            ; 3 uses
  %i.fw = load i64, ptr %i.fr, align 8            ; 2 uses
  %i.fx = load i64, ptr %i.fs, align 8            ; 3 uses
  %i.fy = load i64, ptr %i.ft, align 8            ; 2 uses
  %i.fz = shl i64 %i.fu, 1
  %i.ga = shl i64 %i.fv, 1
  %i.gb = mul i64 %i.fv, 38
  %i.gc = mul i64 %i.fw, 38
  %i.gd = mul i64 %i.fx, 38
  %i.ge = mul i64 %i.fx, 19
  %i.gf = mul i64 %i.fy, 19
  %i.gg = zext i64 %i.fu to i128                  ; 2 uses
  %i.gh = mul nuw i128 %i.gg, %i.gg
  %i.gi = zext i64 %i.gb to i128
  %i.gj = zext i64 %i.fy to i128                  ; 5 uses
  %i.gk = mul nuw i128 %i.gj, %i.gi
  %i.gl = zext i64 %i.gc to i128                  ; 2 uses
  %i.gm = zext i64 %i.fx to i128                  ; 4 uses
  %i.gn = mul nuw i128 %i.gl, %i.gm
  %i.go = add i128 %i.gn, %i.gh
  %i.gp = add i128 %i.go, %i.gk                   ; 2 uses
  %i.gq = zext i64 %i.fz to i128                  ; 4 uses
  %i.gr = zext i64 %i.fv to i128                  ; 3 uses
  %i.gs = mul nuw i128 %i.gq, %i.gr
  %i.gt = mul nuw i128 %i.gj, %i.gl
  %i.gu = add i128 %i.gt, %i.gs
  %i.gv = zext i64 %i.ge to i128
  %i.gw = mul nuw i128 %i.gv, %i.gm
  %i.gx = add i128 %i.gu, %i.gw
  %i.gy = zext i64 %i.fw to i128                  ; 4 uses
  %i.gz = mul nuw i128 %i.gy, %i.gq
  %i.ha = mul nuw i128 %i.gr, %i.gr
  %i.hb = add i128 %i.gz, %i.ha
  %i.hc = zext i64 %i.gd to i128
  %i.hd = mul nuw i128 %i.hc, %i.gj
  %i.he = add i128 %i.hb, %i.hd
  %i.hf = mul nuw i128 %i.gm, %i.gq
  %i.hg = zext i64 %i.ga to i128                  ; 2 uses
  %i.hh = mul nuw i128 %i.hg, %i.gy
  %i.hi = add i128 %i.hf, %i.hh
  %i.hj = zext i64 %i.gf to i128
  %i.hk = mul nuw i128 %i.hj, %i.gj
  %i.hl = add i128 %i.hi, %i.hk
  %i.hm = mul nuw i128 %i.gj, %i.gq
  %i.hn = mul nuw i128 %i.gm, %i.hg
  %i.ho = mul nuw i128 %i.gy, %i.gy
  %i.hp = trunc i128 %i.gp to i64
  %i.hq = and i64 %i.hp, 2251799813685247
  %i.hr = lshr i128 %i.gp, 51
  %i.hs = add i128 %i.gx, %i.hr                   ; 2 uses
  %i.ht = trunc i128 %i.hs to i64
  %i.hu = and i64 %i.ht, 2251799813685247
  %i.hv = lshr i128 %i.hs, 51
  %i.hw = add i128 %i.he, %i.hv                   ; 2 uses
  %i.hx = trunc i128 %i.hw to i64
  %i.hy = and i64 %i.hx, 2251799813685247
  %i.hz = lshr i128 %i.hw, 51
  %i.ia = add i128 %i.hl, %i.hz                   ; 2 uses
  %i.ib = trunc i128 %i.ia to i64
  %i.ic = and i64 %i.ib, 2251799813685247
  %i.id = lshr i128 %i.ia, 51
  %i.ie = add i128 %i.hn, %i.ho
  %i.if = add i128 %i.ie, %i.hm
  %i.ig = add i128 %i.if, %i.id                   ; 2 uses
  %i.ih = trunc i128 %i.ig to i64
  %i.ii = and i64 %i.ih, 2251799813685247
  %i.ij = lshr i128 %i.ig, 51
  %i.ik = trunc i128 %i.ij to i64
  %i.il = mul i64 %i.ik, 19
  %i.im = add i64 %i.il, %i.hq                    ; 2 uses
  %i.in = lshr i64 %i.im, 51
  %i.io = and i64 %i.im, 2251799813685247
  %i.ip = add nuw nsw i64 %i.in, %i.hu            ; 2 uses
  %i.iq = lshr i64 %i.ip, 51
  %i.ir = and i64 %i.ip, 2251799813685247
  %i.is = add nuw nsw i64 %i.iq, %i.hy
  store i64 %i.io, ptr %i.f, align 16
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ir, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 %i.is, ptr %i.iu, align 16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.ic, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store i64 %i.ii, ptr %i.iw, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef nonnull %2)
  %3 = load i64, ptr %1, align 8                  ; 3 uses
  %i.ix = getelementptr i8, ptr %1, i64 8
  %i.iy = load i64, ptr %i.ix, align 8            ; 2 uses
  %4 = getelementptr i8, ptr %1, i64 16
  %i.iz = load i64, ptr %4, align 8               ; 2 uses
  %5 = getelementptr i8, ptr %1, i64 24
  %6 = load i64, ptr %5, align 8                  ; 2 uses
  %i.ja = getelementptr i8, ptr %1, i64 32
  %7 = load i64, ptr %i.ja, align 8               ; 2 uses
  %8 = lshr i64 %3, 51
  %i.jb = add i64 %i.iy, %8                       ; 2 uses
  %9 = and i64 %3, 2251799813685247
  %10 = lshr i64 %i.jb, 51
  %11 = add i64 %10, %i.iz                        ; 2 uses
  %12 = and i64 %i.jb, 2251799813685247
  %13 = lshr i64 %11, 51
  %14 = add i64 %13, %6                           ; 2 uses
  %15 = and i64 %11, 2251799813685247
  %16 = lshr i64 %14, 51
  %i.jc = add i64 %16, %7                         ; 2 uses
  %i.jd = and i64 %14, 2251799813685247
  %i.je = lshr i64 %i.jc, 51
  %i.jf = and i64 %i.jc, 2251799813685247
  %.neg39.i = mul nsw i64 %i.je, -19
  %i.jg = load i64, ptr %i.iw, align 16           ; 3 uses
  %i.jh = add i64 %i.jg, 4503599627370494
  %17 = sub i64 %i.jh, %i.jf
  %18 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %19 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %21 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %17, ptr %21, align 16
  %i.ji = add i64 %i.jg, %7
  %22 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %24 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %25 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.ji, ptr %25, align 16
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.i, ptr noundef nonnull %1, ptr noundef nonnull @sqrtm1)
  %26 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %28 = load i64, ptr %27, align 16
  %29 = add i64 %28, %i.jg
  %i.jj = load <2 x i64>, ptr %i.f, align 16      ; 3 uses
  %i.jk = extractelement <2 x i64> %i.jj, i64 0   ; 2 uses
  %reass.sub = sub i64 %i.jk, %9
  %i.jl = add i64 %reass.sub, 4503599627370458
  %30 = add i64 %i.jl, %.neg39.i
  %i.jm = extractelement <2 x i64> %i.jj, i64 1   ; 2 uses
  %reass.sub34 = sub i64 %i.jm, %12
  %i.jn = add i64 %reass.sub34, 4503599627370494
  store i64 %30, ptr %i.g, align 16
  store i64 %i.jn, ptr %18, align 8
  %31 = add i64 %i.jk, %3
  %i.jo = add i64 %i.jm, %i.iy
  store i64 %31, ptr %i.h, align 16
  store i64 %i.jo, ptr %22, align 8
  %32 = load <2 x i64>, ptr %i.i, align 16
  %33 = add <2 x i64> %32, %i.jj
  store <2 x i64> %33, ptr %i.i, align 16
  %34 = load <2 x i64>, ptr %i.iu, align 16       ; 3 uses
  %35 = extractelement <2 x i64> %34, i64 0       ; 2 uses
  %reass.sub35 = sub i64 %35, %15
  %36 = add i64 %reass.sub35, 4503599627370494
  %37 = extractelement <2 x i64> %34, i64 1       ; 2 uses
  %reass.sub36 = sub i64 %37, %i.jd
  %38 = add i64 %reass.sub36, 4503599627370494
  store i64 %36, ptr %19, align 16
  store i64 %38, ptr %20, align 8
  %39 = add i64 %35, %i.iz
  %40 = add i64 %37, %6
  store i64 %39, ptr %23, align 16
  store i64 %40, ptr %24, align 8
  %i.jp = load <2 x i64>, ptr %26, align 16
  %i.jq = add <2 x i64> %i.jp, %34
  store <2 x i64> %i.jq, ptr %26, align 16
  store i64 %29, ptr %27, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.d, ptr noundef nonnull readonly %i.g)
  %i.jr = call i32 @sodium_is_zero(ptr noundef nonnull %i.d, i64 noundef 32) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.h)
  %i.js = call i32 @sodium_is_zero(ptr noundef nonnull %i.c, i64 noundef 32) #12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.i)
  %i.jt = call i32 @sodium_is_zero(ptr noundef nonnull %i.b, i64 noundef 32) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.j, ptr noundef nonnull %0, ptr noundef nonnull @sqrtm1)
  %i.ju = or i32 %i.jt, %i.js
  %i.jv = zext i32 %i.ju to i64
  %i.jw = sub nsw i64 0, %i.jv                    ; 2 uses
  %i.jx = load i64, ptr %i.ft, align 8            ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ka = load i64, ptr %i.jz, align 16
  %i.kb = xor i64 %i.ka, %i.jx
  %i.kc = and i64 %i.kb, %i.jw
  %i.kd = load <2 x i64>, ptr %0, align 8         ; 2 uses
  %i.ke = load <2 x i64>, ptr %i.j, align 16
  %i.kf = xor <2 x i64> %i.ke, %i.kd
  %i.kg = insertelement <2 x i64> poison, i64 %i.jw, i64 0
  %i.kh = shufflevector <2 x i64> %i.kg, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ki = and <2 x i64> %i.kf, %i.kh
  %i.kj = xor <2 x i64> %i.ki, %i.kd              ; 3 uses
  store <2 x i64> %i.kj, ptr %0, align 8
  %i.kk = load <2 x i64>, ptr %i.fr, align 8      ; 2 uses
  %i.kl = load <2 x i64>, ptr %i.jy, align 16
  %i.km = xor <2 x i64> %i.kl, %i.kk
  %i.kn = and <2 x i64> %i.km, %i.kh
  %i.ko = xor <2 x i64> %i.kn, %i.kk              ; 3 uses
  store <2 x i64> %i.ko, ptr %i.fr, align 8
  %i.kp = xor i64 %i.kc, %i.jx                    ; 2 uses
  store i64 %i.kp, ptr %i.ft, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %0)
  %i.kq = load i8, ptr %i.a, align 16
  %i.kr = and i8 %i.kq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ks = extractelement <2 x i64> %i.kj, i64 0   ; 2 uses
  %i.kt = lshr i64 %i.ks, 51
  %i.ku = extractelement <2 x i64> %i.kj, i64 1
  %i.kv = add i64 %i.ku, %i.kt                    ; 2 uses
  %i.kw = and i64 %i.ks, 2251799813685247
  %i.kx = lshr i64 %i.kv, 51
  %i.ky = and i64 %i.kv, 2251799813685247
  %i.kz = sub nuw nsw i64 4503599627370494, %i.ky
  %i.la = zext nneg i8 %i.kr to i64
  %i.lb = sub nsw i64 0, %i.la                    ; 4 uses
  %i.lc = load i64, ptr %0, align 8               ; 2 uses
  %i.ld = load i64, ptr %i.fq, align 8            ; 2 uses
  %i.le = load i64, ptr %i.ft, align 8            ; 2 uses
  %i.lf = xor i64 %i.ld, %i.kz
  %i.lg = and i64 %i.lf, %i.lb
  %i.lh = xor i64 %i.lg, %i.ld
  store i64 %i.lh, ptr %i.fq, align 8
  %i.li = extractelement <2 x i64> %i.ko, i64 0
  %i.lj = add i64 %i.kx, %i.li                    ; 2 uses
  %i.lk = lshr i64 %i.lj, 51
  %i.ll = extractelement <2 x i64> %i.ko, i64 1
  %i.lm = add i64 %i.lk, %i.ll                    ; 2 uses
  %i.ln = lshr i64 %i.lm, 51
  %i.lo = add i64 %i.ln, %i.kp                    ; 2 uses
  %i.lp = insertelement <2 x i64> poison, i64 %i.lj, i64 0
  %i.lq = insertelement <2 x i64> %i.lp, i64 %i.lm, i64 1
  %i.lr = and <2 x i64> %i.lq, splat (i64 2251799813685247)
  %i.ls = lshr i64 %i.lo, 51
  %i.lt = and i64 %i.lo, 2251799813685247
  %.neg39.i.i.i.i = mul nsw i64 %i.ls, -19
  %reass.sub37 = sub nsw i64 %.neg39.i.i.i.i, %i.kw
  %i.lu = add nsw i64 %reass.sub37, 4503599627370458
  %i.lv = sub nuw nsw <2 x i64> splat (i64 4503599627370494), %i.lr
  %i.lw = sub nuw nsw i64 4503599627370494, %i.lt
  %i.lx = load <2 x i64>, ptr %i.fr, align 8      ; 2 uses
  %i.ly = xor i64 %i.lc, %i.lu
  %i.lz = xor <2 x i64> %i.lx, %i.lv
  %i.ma = xor i64 %i.le, %i.lw
  %i.mb = and i64 %i.ly, %i.lb
  %i.mc = insertelement <2 x i64> poison, i64 %i.lb, i64 0
  %i.md = shufflevector <2 x i64> %i.mc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.me = and <2 x i64> %i.lz, %i.md
  %i.mf = and i64 %i.ma, %i.lb
  %i.mg = xor i64 %i.mb, %i.lc
  store i64 %i.mg, ptr %0, align 8
  %i.mh = xor <2 x i64> %i.me, %i.lx
  store <2 x i64> %i.mh, ptr %i.fr, align 8
  %i.mi = xor i64 %i.mf, %i.le
  store i64 %i.mi, ptr %i.ft, align 8
  %i.mj = or i32 %i.js, %i.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  ret i32 %i.mj
}

; Function Attrs: nounwind ssp uwtable
define hidden void @ristretto255_p3_tobytes(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca [5 x i64], align 16               ; 5 uses
  %i.e = alloca [5 x i64], align 16               ; 7 uses
  %i.f = alloca [5 x i64], align 16               ; 6 uses
  %i.g = alloca [5 x i64], align 16               ; 5 uses
  %i.h = alloca [5 x i64], align 16               ; 8 uses
  %i.i = alloca [5 x i64], align 16               ; 6 uses
  %i.j = alloca [5 x i64], align 16               ; 5 uses
  %i.k = alloca [5 x i64], align 16               ; 13 uses
  %i.l = alloca [5 x i64], align 16               ; 4 uses
  %i.m = alloca [5 x i64], align 16               ; 11 uses
  %i.n = alloca [5 x i64], align 16               ; 9 uses
  %i.o = alloca [5 x i64], align 16               ; 10 uses
  %i.p = alloca [5 x i64], align 16               ; 8 uses
  %i.q = alloca [5 x i64], align 16               ; 4 uses
  %i.r = alloca [5 x i64], align 16               ; 7 uses
  %i.s = alloca [5 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #12
  %i.t = getelementptr i8, ptr %1, i64 80         ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 40         ; 4 uses
  %i.v = load i64, ptr %i.t, align 8              ; 2 uses
  %i.w = load i64, ptr %i.u, align 8              ; 3 uses
  %i.x = add i64 %i.w, %i.v
  %i.y = getelementptr i8, ptr %1, i64 88         ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 48
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = add i64 %i.ab, %i.z
  %i.ad = getelementptr i8, ptr %1, i64 96
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr i8, ptr %1, i64 56
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = add i64 %i.ag, %i.ae
  %i.ai = getelementptr i8, ptr %1, i64 104       ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr i8, ptr %1, i64 64
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = add i64 %i.al, %i.aj
  %i.an = getelementptr i8, ptr %1, i64 112
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr i8, ptr %1, i64 72
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = add i64 %i.aq, %i.ao
  store i64 %i.x, ptr %i.m, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.ac, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.ah, ptr %i.at, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.am, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.ar, ptr %i.av, align 16
  %i.aw = lshr i64 %i.w, 51
  %i.ax = add i64 %i.ab, %i.aw                    ; 2 uses
  %i.ay = and i64 %i.w, 2251799813685247
  %i.az = lshr i64 %i.ax, 51
  %i.ba = add i64 %i.az, %i.ag                    ; 2 uses
  %i.bb = and i64 %i.ax, 2251799813685247
  %i.bc = lshr i64 %i.ba, 51
  %i.bd = add i64 %i.bc, %i.al                    ; 2 uses
  %i.be = and i64 %i.ba, 2251799813685247
  %i.bf = lshr i64 %i.bd, 51
  %i.bg = add i64 %i.bf, %i.aq                    ; 2 uses
  %i.bh = and i64 %i.bd, 2251799813685247
  %i.bi = lshr i64 %i.bg, 51
  %i.bj = and i64 %i.bg, 2251799813685247
  %.neg39.i = mul nsw i64 %i.bi, -19
  %reass.sub.i = add i64 %i.v, 4503599627370458
  %i.bk = sub i64 %reass.sub.i, %i.ay
  %i.bl = add i64 %i.bk, %.neg39.i
  %reass.sub45.i = add i64 %i.z, 4503599627370494
  %i.bm = sub i64 %reass.sub45.i, %i.bb
  %reass.sub46.i = add i64 %i.ae, 4503599627370494
  %i.bn = sub i64 %reass.sub46.i, %i.be
  %reass.sub47.i = add i64 %i.aj, 4503599627370494
  %i.bo = sub i64 %reass.sub47.i, %i.bh
  %i.bp = add i64 %i.ao, 4503599627370494
  %i.bq = sub i64 %i.bp, %i.bj
  store i64 %i.bl, ptr %i.s, align 16
end_hunk_0
