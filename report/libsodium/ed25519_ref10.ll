Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/ed25519_ref10?download=true
inline.NumInlined: 477
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 30
begin_hunk_0_@ristretto255_frombytes:bb.a
  %i.gr = lshr i128 %i.fv, 51
  %i.gs = add nuw nsw i128 %i.gb, %i.fz
  %i.gt = add nuw nsw i128 %i.gs, %i.fy
  %i.gu = add nuw nsw i128 %i.gt, %i.gr           ; 2 uses
  %i.gv = trunc i128 %i.gu to i64
  %i.gw = and i64 %i.gv, 2251799813685247
  %i.gx = lshr i128 %i.gu, 51
  %i.gy = add nuw nsw i128 %i.gg, %i.ge
  %i.gz = add nuw nsw i128 %i.gy, %i.gd
  %i.ha = add nuw nsw i128 %i.gz, %i.gx           ; 2 uses
  %i.hb = trunc i128 %i.ha to i64
  %i.hc = and i64 %i.hb, 2251799813685247
  %i.hd = lshr i128 %i.ha, 51
  %i.he = add nuw nsw i128 %i.gl, %i.gj
  %i.hf = add nuw nsw i128 %i.he, %i.gh
  %i.hg = add nuw nsw i128 %i.hf, %i.hd           ; 2 uses
  %i.hh = trunc i128 %i.hg to i64
  %i.hi = and i64 %i.hh, 2251799813685247
  %i.hj = lshr i128 %i.hg, 51
  %i.hk = add nuw nsw i128 %i.gn, %i.go
  %i.hl = add nuw nsw i128 %i.hk, %i.gm
  %i.hm = add nuw nsw i128 %i.hl, %i.hj           ; 2 uses
  %i.hn = trunc i128 %i.hm to i64
  %i.ho = and i64 %i.hn, 2251799813685247
  %i.hp = lshr i128 %i.hm, 51
  %i.hq = trunc nuw nsw i128 %i.hp to i64
  %i.hr = mul nuw nsw i64 %i.hq, 19
  %i.hs = add nuw nsw i64 %i.hr, %i.gq            ; 2 uses
  %i.ht = lshr i64 %i.hs, 51
  %i.hu = and i64 %i.hs, 2251799813685247
  %i.hv = add nuw nsw i64 %i.ht, %i.gw            ; 2 uses
  %i.hw = lshr i64 %i.hv, 51
  %i.hx = and i64 %i.hv, 2251799813685247
  %i.hy = add nuw nsw i64 %i.hw, %i.hc
  store i64 %i.hu, ptr %i.i, align 16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.hx, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.hy, ptr %i.ia, align 16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.hi, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.ho, ptr %i.ic, align 16
  %i.id = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ie = add nuw nsw i64 %i.ej, 1                ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ih = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.ie, ptr %i.h, align 16
  store i64 %i.em, ptr %i.id, align 8
  store i64 %i.en, ptr %i.if, align 16
  store i64 %i.dx, ptr %i.ig, align 8
  store i64 %i.ed, ptr %i.ih, align 16
  %i.ii = shl nuw nsw i64 %i.ie, 1
  %i.ij = shl nuw nsw i64 %i.em, 1
  %i.ik = mul nuw nsw i64 %i.em, 38
  %i.il = mul nuw nsw i64 %i.en, 38
  %i.im = mul nuw nsw i64 %i.dx, 38
  %i.in = mul nuw nsw i64 %i.dx, 19
  %i.io = mul nuw nsw i64 %i.ed, 19
  %i.ip = zext nneg i64 %i.ie to i128             ; 2 uses
  %i.iq = mul nuw nsw i128 %i.ip, %i.ip
  %i.ir = zext nneg i64 %i.ik to i128
  %i.is = and i128 %i.eb, 2251799813685247        ; 5 uses
  %i.it = mul nuw nsw i128 %i.is, %i.ir
  %i.iu = zext nneg i64 %i.il to i128             ; 2 uses
  %i.iv = and i128 %i.dv, 2251799813685247        ; 4 uses
  %i.iw = mul nuw nsw i128 %i.iv, %i.iu
  %i.ix = add nuw nsw i128 %i.it, %i.iq
  %i.iy = add nuw nsw i128 %i.ix, %i.iw           ; 2 uses
  %i.iz = zext nneg i64 %i.ii to i128             ; 4 uses
  %i.ja = zext nneg i64 %i.em to i128             ; 3 uses
  %i.jb = mul nuw nsw i128 %i.iz, %i.ja
  %i.jc = mul nuw nsw i128 %i.is, %i.iu
  %i.jd = zext nneg i64 %i.in to i128
  %i.je = mul nuw nsw i128 %i.iv, %i.jd
  %i.jf = zext nneg i64 %i.en to i128             ; 4 uses
  %i.jg = mul nuw nsw i128 %i.jf, %i.iz
  %i.jh = mul nuw nsw i128 %i.ja, %i.ja
  %i.ji = zext nneg i64 %i.im to i128
  %i.jj = mul nuw nsw i128 %i.is, %i.ji
  %i.jk = mul nuw nsw i128 %i.iv, %i.iz
  %i.jl = zext nneg i64 %i.ij to i128             ; 2 uses
  %i.jm = mul nuw nsw i128 %i.jl, %i.jf
  %i.jn = zext nneg i64 %i.io to i128
  %i.jo = mul nuw nsw i128 %i.is, %i.jn
  %i.jp = mul nuw nsw i128 %i.is, %i.iz
  %i.jq = mul nuw nsw i128 %i.iv, %i.jl
  %i.jr = mul nuw nsw i128 %i.jf, %i.jf
  %i.js = trunc i128 %i.iy to i64
  %i.jt = and i64 %i.js, 2251799813685247
  %i.ju = lshr i128 %i.iy, 51
  %i.jv = add nuw nsw i128 %i.jb, %i.je
  %i.jw = add nuw nsw i128 %i.jv, %i.jc
  %i.jx = add nuw nsw i128 %i.jw, %i.ju           ; 2 uses
  %i.jy = trunc i128 %i.jx to i64
  %i.jz = and i64 %i.jy, 2251799813685247
  %i.ka = lshr i128 %i.jx, 51
  %i.kb = add nuw nsw i128 %i.jh, %i.jj
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
  %2 = load i64, ptr %i.ne, align 8
  %i.nf = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %3 = load i64, ptr %i.nf, align 8
  %i.ng = getelementptr i8, ptr %0, i64 32        ; 4 uses
  %4 = load i64, ptr %i.ng, align 8
  store i64 %i.nd, ptr %i.nb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.nh = shl i64 %2, 1                           ; 2 uses
  store i64 %i.nh, ptr %i.ne, align 8
  %i.ni = shl i64 %i.na, 1                        ; 3 uses
  %i.nj = shl i64 %3, 1                           ; 2 uses
  %i.nk = shl i64 %4, 1                           ; 2 uses
  store i64 %i.ni, ptr %0, align 8
  store i64 %i.nj, ptr %i.nf, align 8
  store i64 %i.nk, ptr %i.ng, align 8
  call void @fe25519_tobytes(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %0)
  %i.nl = load i8, ptr %i.c, align 16
  %i.nm = and i8 %i.nl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.nn = lshr i64 %i.ni, 51
  %i.no = add i64 %i.nd, %i.nn                    ; 2 uses
  %i.np = and i64 %i.ni, 2251799813685246
  %i.nq = lshr i64 %i.no, 51
  %i.nr = add i64 %i.nq, %i.nh                    ; 2 uses
  %i.ns = lshr i64 %i.nr, 51
  %i.nt = add i64 %i.ns, %i.nj                    ; 2 uses
  %i.nu = lshr i64 %i.nt, 51
  %i.nv = add i64 %i.nu, %i.nk                    ; 2 uses
  %i.nw = insertelement <4 x i64> <i64 -1, i64 poison, i64 poison, i64 poison>, i64 %i.no, i64 1
  %i.nx = insertelement <4 x i64> %i.nw, i64 %i.nr, i64 2
  %i.ny = insertelement <4 x i64> %i.nx, i64 %i.nt, i64 3
  %i.nz = and <4 x i64> %i.ny, <i64 -4503599627370458, i64 2251799813685247, i64 2251799813685247, i64 2251799813685247>
  %i.oa = lshr i64 %i.nv, 51
  %i.ob = and i64 %i.nv, 2251799813685247
  %.neg39.i.i.i.i = mul nsw i64 %i.oa, -19
  %reass.sub43 = sub nsw i64 %.neg39.i.i.i.i, %i.np
  %i.oc = insertelement <4 x i64> <i64 poison, i64 4503599627370494, i64 4503599627370494, i64 4503599627370494>, i64 %reass.sub43, i64 0
  %i.od = sub nsw <4 x i64> %i.oc, %i.nz
  %i.oe = sub nuw nsw i64 4503599627370494, %i.ob
  %i.of = zext nneg i8 %i.nm to i64
  %i.og = sub nsw i64 0, %i.of                    ; 2 uses
  %i.oh = load <4 x i64>, ptr %0, align 8         ; 2 uses
  %i.oi = load i64, ptr %i.ng, align 8            ; 2 uses
  %i.oj = xor <4 x i64> %i.oh, %i.od
  %i.ok = xor i64 %i.oi, %i.oe
  %i.ol = insertelement <4 x i64> poison, i64 %i.og, i64 0
  %i.om = shufflevector <4 x i64> %i.ol, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.on = and <4 x i64> %i.oj, %i.om
  %i.oo = and i64 %i.ok, %i.og
  %i.op = xor <4 x i64> %i.on, %i.oh
  store <4 x i64> %i.op, ptr %0, align 8
  %i.oq = xor i64 %i.oo, %i.oi
  store i64 %i.oq, ptr %i.ng, align 8
  call fastcc void @fe25519_mul(ptr noundef %i.mz, ptr noundef nonnull %i.g, ptr noundef %i.mz)
  %i.or = getelementptr i8, ptr %0, i64 80
  store i64 1, ptr %i.or, align 8
  %i.os = getelementptr i8, ptr %0, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.os, i8 noundef 0, i64 noundef 32, i1 noundef false) #12
  %i.ot = getelementptr i8, ptr %0, i64 120       ; 2 uses
  call fastcc void @fe25519_mul(ptr noundef %i.ot, ptr noundef nonnull %0, ptr noundef %i.mz)
  %i.ou = sub i32 1, %i.my
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.b, ptr noundef readonly %i.ot)
  %i.ov = load i8, ptr %i.b, align 16
  %i.ow = and i8 %i.ov, 1
  %i.ox = zext nneg i8 %i.ow to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.oy = or i32 %i.ou, %i.ox
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.a, ptr noundef readonly %i.mz)
  %i.oz = call i32 @sodium_is_zero(ptr noundef nonnull %i.a, i64 noundef 32) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.pa = or i32 %i.oy, %i.oz
  %i.pb = sub i32 0, %i.pa
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.pb, %bb.b ], [ -1, %bb.a ]
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
end_hunk_0
