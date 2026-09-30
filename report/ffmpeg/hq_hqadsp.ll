Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hq_hqadsp?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@hq_idct_put:vector.ph
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.fi = load i16, ptr %i.fa, align 2, !tbaa !14
  %i.fj = load i16, ptr %i.fb, align 2, !tbaa !14
  %i.fk = load i16, ptr %i.fc, align 2, !tbaa !14
  %i.fl = load i16, ptr %i.fd, align 2, !tbaa !14
  %i.fm = load i16, ptr %i.fe, align 2, !tbaa !14
  %i.fn = load i16, ptr %i.ff, align 2, !tbaa !14
  %i.fo = load i16, ptr %i.fg, align 2, !tbaa !14
  %i.fp = load i16, ptr %i.fh, align 2, !tbaa !14
  %i.fq = insertelement <8 x i16> poison, i16 %i.fi, i64 0
  %i.fr = insertelement <8 x i16> %i.fq, i16 %i.fj, i64 1
  %i.fs = insertelement <8 x i16> %i.fr, i16 %i.fk, i64 2
  %i.ft = insertelement <8 x i16> %i.fs, i16 %i.fl, i64 3
  %i.fu = insertelement <8 x i16> %i.ft, i16 %i.fm, i64 4
  %i.fv = insertelement <8 x i16> %i.fu, i16 %i.fn, i64 5
  %i.fw = insertelement <8 x i16> %i.fv, i16 %i.fo, i64 6
  %i.fx = insertelement <8 x i16> %i.fw, i16 %i.fp, i64 7
  %i.fy = sext <8 x i16> %i.fx to <8 x i32>       ; 2 uses
  %i.fz = add nsw <8 x i32> %i.fy, %i.ez          ; 3 uses
  %i.ga = sub nsw <8 x i32> %i.ez, %i.fy
  %i.gb = load i16, ptr %2, align 2, !tbaa !14
  %i.gc = load i16, ptr %i.a, align 2, !tbaa !14
  %i.gd = load i16, ptr %i.b, align 2, !tbaa !14
  %i.ge = load i16, ptr %i.c, align 2, !tbaa !14
  %i.gf = load i16, ptr %i.d, align 2, !tbaa !14
  %i.gg = load i16, ptr %i.e, align 2, !tbaa !14
  %i.gh = load i16, ptr %i.f, align 2, !tbaa !14
  %i.gi = load i16, ptr %i.g, align 2, !tbaa !14
  %i.gj = insertelement <8 x i16> poison, i16 %i.gb, i64 0
  %i.gk = insertelement <8 x i16> %i.gj, i16 %i.gc, i64 1
  %i.gl = insertelement <8 x i16> %i.gk, i16 %i.gd, i64 2
  %i.gm = insertelement <8 x i16> %i.gl, i16 %i.ge, i64 3
  %i.gn = insertelement <8 x i16> %i.gm, i16 %i.gf, i64 4
  %i.go = insertelement <8 x i16> %i.gn, i16 %i.gg, i64 5
  %i.gp = insertelement <8 x i16> %i.go, i16 %i.gh, i64 6
  %i.gq = insertelement <8 x i16> %i.gp, i16 %i.gi, i64 7
  %i.gr = zext <8 x i16> %i.gq to <8 x i32>       ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ha = load i16, ptr %i.gs, align 2, !tbaa !14
  %i.hb = load i16, ptr %i.gt, align 2, !tbaa !14
  %i.hc = load i16, ptr %i.gu, align 2, !tbaa !14
  %i.hd = load i16, ptr %i.gv, align 2, !tbaa !14
  %i.he = load i16, ptr %i.gw, align 2, !tbaa !14
  %i.hf = load i16, ptr %i.gx, align 2, !tbaa !14
  %i.hg = load i16, ptr %i.gy, align 2, !tbaa !14
  %i.hh = load i16, ptr %i.gz, align 2, !tbaa !14
  %i.hi = insertelement <8 x i16> poison, i16 %i.ha, i64 0
  %i.hj = insertelement <8 x i16> %i.hi, i16 %i.hb, i64 1
  %i.hk = insertelement <8 x i16> %i.hj, i16 %i.hc, i64 2
  %i.hl = insertelement <8 x i16> %i.hk, i16 %i.hd, i64 3
  %i.hm = insertelement <8 x i16> %i.hl, i16 %i.he, i64 4
  %i.hn = insertelement <8 x i16> %i.hm, i16 %i.hf, i64 5
  %i.ho = insertelement <8 x i16> %i.hn, i16 %i.hg, i64 6
  %i.hp = insertelement <8 x i16> %i.ho, i16 %i.hh, i64 7
  %i.hq = zext <8 x i16> %i.hp to <8 x i32>       ; 2 uses
  %i.hr = sub nsw <8 x i32> %i.gr, %i.hq          ; 2 uses
  %i.hs = add nuw nsw <8 x i32> %i.hq, %i.gr      ; 2 uses
  %i.ht = mul nsw <8 x i32> %i.ga, splat (i32 23170)
  %i.hu = ashr <8 x i32> %i.ht, splat (i32 14)
  %i.hv = and <8 x i32> %i.hu, splat (i32 -4)
  %i.hw = sub nsw <8 x i32> %i.hv, %i.fz          ; 2 uses
  %i.hx = sub nsw <8 x i32> %i.hr, %i.hw          ; 2 uses
  %i.hy = sub nsw <8 x i32> %i.hs, %i.fz          ; 2 uses
  %i.hz = add nsw <8 x i32> %i.hw, %i.hr          ; 2 uses
  %i.ia = add nsw <8 x i32> %i.hs, %i.fz          ; 2 uses
  %i.ib = add nsw <8 x i32> %i.ia, %i.ds
  %i.ic = add nsw <8 x i32> %i.hz, %i.du
  %i.id = add nsw <8 x i32> %i.hx, %i.dy
  %i.ie = sub <8 x i32> %i.hy, %i.ea
  %i.if = add <8 x i32> %i.ea, %i.hy
  %i.ig = sub nsw <8 x i32> %i.hx, %i.dy
  %i.ih = sub nsw <8 x i32> %i.hz, %i.du
  %i.ii = sub nsw <8 x i32> %i.ia, %i.ds
  %i.ij = shufflevector <8 x i32> %i.ib, <8 x i32> %i.ic, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ik = shufflevector <8 x i32> %i.id, <8 x i32> %i.ie, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.il = shufflevector <16 x i32> %i.ij, <16 x i32> %i.ik, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.im = shufflevector <8 x i32> %i.if, <8 x i32> %i.ig, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.in = shufflevector <8 x i32> %i.ih, <8 x i32> %i.ii, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.io = shufflevector <16 x i32> %i.im, <16 x i32> %i.in, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ip = shufflevector <32 x i32> %i.il, <32 x i32> %i.io, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %interleaved.vec = trunc <64 x i32> %i.ip to <64 x i16>
  store <64 x i16> %interleaved.vec, ptr %2, align 2, !tbaa !14
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.iq, align 2, !tbaa !14
  %i.ir = sext <8 x i16> %wide.load to <8 x i32>  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load42 = load <8 x i16>, ptr %i.is, align 2, !tbaa !14
  %i.it = sext <8 x i16> %wide.load42 to <8 x i32> ; 2 uses
  %i.iu = sub nsw <8 x i32> %i.ir, %i.it          ; 2 uses
  %i.iv = add nsw <8 x i32> %i.it, %i.ir          ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load43 = load <8 x i16>, ptr %i.iw, align 2, !tbaa !14
  %i.ix = sext <8 x i16> %wide.load43 to <8 x i32>
  %i.iy = shl nsw <8 x i32> %i.ix, splat (i32 1)  ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load44 = load <8 x i16>, ptr %i.iz, align 2, !tbaa !14
  %i.ja = ashr <8 x i16> %wide.load44, splat (i16 2)
  %i.jb = sext <8 x i16> %i.ja to <8 x i32>       ; 2 uses
  %i.jc = sub nsw <8 x i32> %i.iy, %i.jb          ; 2 uses
  %i.jd = add nsw <8 x i32> %i.iy, %i.jb          ; 2 uses
  %i.je = sub nsw <8 x i32> %i.jd, %i.iv
  %i.jf = add nsw <8 x i32> %i.jc, %i.iu
  %i.jg = mul <8 x i32> %i.jf, splat (i32 30274)
  %i.jh = ashr <8 x i32> %i.jg, splat (i32 16)    ; 2 uses
  %i.ji = mul nsw <8 x i32> %i.jc, splat (i32 17734)
  %i.jj = ashr <8 x i32> %i.ji, splat (i32 16)
  %i.jk = sub nsw <8 x i32> %i.jj, %i.jh
  %i.jl = mul nsw <8 x i32> %i.iu, splat (i32 21407)
  %i.jm = ashr <8 x i32> %i.jl, splat (i32 15)
  %i.jn = and <8 x i32> %i.jm, splat (i32 -2)
  %i.jo = sub nsw <8 x i32> %i.jh, %i.jn
  %i.jp = add nsw <8 x i32> %i.jd, %i.iv
  %i.jq = ashr <8 x i32> %i.jp, splat (i32 1)     ; 3 uses
  %i.jr = shl nsw <8 x i32> %i.jo, splat (i32 1)
  %i.js = sub nsw <8 x i32> %i.jr, %i.jq          ; 3 uses
  %i.jt = mul <8 x i32> %i.je, splat (i32 23170)
  %i.ju = ashr <8 x i32> %i.jt, splat (i32 15)
  %i.jv = and <8 x i32> %i.ju, splat (i32 -2)
  %i.jw = sub nsw <8 x i32> %i.jv, %i.js          ; 3 uses
  %i.jx = shl nsw <8 x i32> %i.jk, splat (i32 1)
  %i.jy = add nsw <8 x i32> %i.jw, %i.jx          ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load45 = load <8 x i16>, ptr %i.jz, align 2, !tbaa !14
  %i.ka = sext <8 x i16> %wide.load45 to <8 x i32> ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.load46 = load <8 x i16>, ptr %i.kb, align 2, !tbaa !14
  %i.kc = ashr <8 x i16> %wide.load46, splat (i16 1)
  %i.kd = sext <8 x i16> %i.kc to <8 x i32>       ; 2 uses
  %i.ke = add nsw <8 x i32> %i.kd, %i.ka
  %i.kf = ashr <8 x i32> %i.ke, splat (i32 1)     ; 3 uses
  %i.kg = sub nsw <8 x i32> %i.ka, %i.kd
  %wide.load47 = load <8 x i16>, ptr %2, align 2, !tbaa !14
  %i.kh = ashr <8 x i16> %wide.load47, splat (i16 1)
  %i.ki = sext <8 x i16> %i.kh to <8 x i32>       ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %wide.load48 = load <8 x i16>, ptr %i.kj, align 2, !tbaa !14
  %i.kk = ashr <8 x i16> %wide.load48, splat (i16 1)
  %i.kl = sext <8 x i16> %i.kk to <8 x i32>       ; 2 uses
  %i.km = sub nsw <8 x i32> %i.ki, %i.kl
  %i.kn = add nsw <8 x i32> %i.km, splat (i32 8224) ; 2 uses
  %i.ko = add nsw <8 x i32> %i.ki, splat (i32 8224)
  %i.kp = add nsw <8 x i32> %i.ko, %i.kl          ; 2 uses
  %i.kq = mul nsw <8 x i32> %i.kg, splat (i32 23170)
  %i.kr = ashr <8 x i32> %i.kq, splat (i32 15)
  %i.ks = and <8 x i32> %i.kr, splat (i32 -2)
  %i.kt = sub nsw <8 x i32> %i.ks, %i.kf          ; 2 uses
  %i.ku = sub nsw <8 x i32> %i.kn, %i.kt          ; 2 uses
  %i.kv = sub nsw <8 x i32> %i.kp, %i.kf          ; 2 uses
  %i.kw = add nsw <8 x i32> %i.kt, %i.kn          ; 2 uses
  %i.kx = add nsw <8 x i32> %i.kp, %i.kf          ; 2 uses
  %i.ky = add nsw <8 x i32> %i.kx, %i.jq
  %i.kz = lshr <8 x i32> %i.ky, splat (i32 6)
  %i.la = trunc <8 x i32> %i.kz to <8 x i16>
  store <8 x i16> %i.la, ptr %2, align 2, !tbaa !14
  %i.lb = add nsw <8 x i32> %i.kw, %i.js
  %i.lc = lshr <8 x i32> %i.lb, splat (i32 6)
  %i.ld = trunc <8 x i32> %i.lc to <8 x i16>
  store <8 x i16> %i.ld, ptr %i.iw, align 2, !tbaa !14
  %i.le = add nsw <8 x i32> %i.ku, %i.jw
  %i.lf = lshr <8 x i32> %i.le, splat (i32 6)
  %i.lg = trunc <8 x i32> %i.lf to <8 x i16>
  store <8 x i16> %i.lg, ptr %i.jz, align 2, !tbaa !14
  %i.lh = sub nsw <8 x i32> %i.kv, %i.jy
  %i.li = lshr <8 x i32> %i.lh, splat (i32 6)
  %i.lj = trunc <8 x i32> %i.li to <8 x i16>
  store <8 x i16> %i.lj, ptr %i.is, align 2, !tbaa !14
  %i.lk = add nsw <8 x i32> %i.jy, %i.kv
  %i.ll = lshr <8 x i32> %i.lk, splat (i32 6)
  %i.lm = trunc <8 x i32> %i.ll to <8 x i16>
  store <8 x i16> %i.lm, ptr %i.kj, align 2, !tbaa !14
  %i.ln = sub nsw <8 x i32> %i.ku, %i.jw
  %i.lo = lshr <8 x i32> %i.ln, splat (i32 6)
  %i.lp = trunc <8 x i32> %i.lo to <8 x i16>
  store <8 x i16> %i.lp, ptr %i.iq, align 2, !tbaa !14
  %i.lq = sub nsw <8 x i32> %i.kw, %i.js
  %i.lr = lshr <8 x i32> %i.lq, splat (i32 6)
  %i.ls = trunc <8 x i32> %i.lr to <8 x i16>
  store <8 x i16> %i.ls, ptr %i.kb, align 2, !tbaa !14
  %i.lt = sub nsw <8 x i32> %i.kx, %i.jq
  %i.lu = lshr <8 x i32> %i.lt, splat (i32 6)
  %i.lv = trunc <8 x i32> %i.lu to <8 x i16>
  store <8 x i16> %i.lv, ptr %i.iz, align 2, !tbaa !14
  %i.lw = sext i32 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %vector.ph, %.preheader
  %indvars.iv36 = phi i64 [ 0, %vector.ph ], [ %indvars.iv.next37, %.preheader ] ; 2 uses
  %.01925 = phi ptr [ %0, %vector.ph ], [ %i.nk, %.preheader ] ; 9 uses
  %i.lx = shl nuw nsw i64 %indvars.iv36, 3        ; 8 uses
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lx
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !14 ; 3 uses
  %3 = icmp ugt i16 %i.lz, 255
  %isnotneg.i = icmp sgt i16 %i.lz, -1
  %4 = sext i1 %isnotneg.i to i8
  %i.ma = trunc i16 %i.lz to i8
  %.0.i = select i1 %3, i8 %4, i8 %i.ma
  store i8 %.0.i, ptr %.01925, align 1, !tbaa !15
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lx
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 2
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !14 ; 3 uses
  %5 = icmp ugt i16 %i.md, 255
  %isnotneg.i.1 = icmp sgt i16 %i.md, -1
  %6 = sext i1 %isnotneg.i.1 to i8
  %i.me = trunc i16 %i.md to i8
  %.0.i.1 = select i1 %5, i8 %6, i8 %i.me
  %i.mf = getelementptr inbounds nuw i8, ptr %.01925, i64 1
  store i8 %.0.i.1, ptr %i.mf, align 1, !tbaa !15
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lx
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !14 ; 3 uses
  %7 = icmp ugt i16 %i.mi, 255
  %isnotneg.i.2 = icmp sgt i16 %i.mi, -1
  %8 = sext i1 %isnotneg.i.2 to i8
  %i.mj = trunc i16 %i.mi to i8
  %.0.i.2 = select i1 %7, i8 %8, i8 %i.mj
  %i.mk = getelementptr inbounds nuw i8, ptr %.01925, i64 2
  store i8 %.0.i.2, ptr %i.mk, align 1, !tbaa !15
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lx
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 6
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !14 ; 3 uses
  %9 = icmp ugt i16 %i.mn, 255
  %isnotneg.i.3 = icmp sgt i16 %i.mn, -1
  %10 = sext i1 %isnotneg.i.3 to i8
  %i.mo = trunc i16 %i.mn to i8
  %.0.i.3 = select i1 %9, i8 %10, i8 %i.mo
  %i.mp = getelementptr inbounds nuw i8, ptr %.01925, i64 3
  store i8 %.0.i.3, ptr %i.mp, align 1, !tbaa !15
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lx
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !14 ; 3 uses
  %11 = icmp ugt i16 %i.ms, 255
  %isnotneg.i.4 = icmp sgt i16 %i.ms, -1
  %12 = sext i1 %isnotneg.i.4 to i8
  %i.mt = trunc i16 %i.ms to i8
  %.0.i.4 = select i1 %11, i8 %12, i8 %i.mt
  %i.mu = getelementptr inbounds nuw i8, ptr %.01925, i64 4
  store i8 %.0.i.4, ptr %i.mu, align 1, !tbaa !15
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lx
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 10
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !14 ; 3 uses
  %13 = icmp ugt i16 %i.mx, 255
  %isnotneg.i.5 = icmp sgt i16 %i.mx, -1
  %14 = sext i1 %isnotneg.i.5 to i8
  %i.my = trunc i16 %i.mx to i8
  %.0.i.5 = select i1 %13, i8 %14, i8 %i.my
  %i.mz = getelementptr inbounds nuw i8, ptr %.01925, i64 5
  store i8 %.0.i.5, ptr %i.mz, align 1, !tbaa !15
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lx
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 12
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !14 ; 3 uses
  %15 = icmp ugt i16 %i.nc, 255
  %isnotneg.i.6 = icmp sgt i16 %i.nc, -1
  %16 = sext i1 %isnotneg.i.6 to i8
  %i.nd = trunc i16 %i.nc to i8
  %.0.i.6 = select i1 %15, i8 %16, i8 %i.nd
  %i.ne = getelementptr inbounds nuw i8, ptr %.01925, i64 6
  store i8 %.0.i.6, ptr %i.ne, align 1, !tbaa !15
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.lx
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 14
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !14 ; 3 uses
  %17 = icmp ugt i16 %i.nh, 255
  %isnotneg.i.7 = icmp sgt i16 %i.nh, -1
  %18 = sext i1 %isnotneg.i.7 to i8
  %i.ni = trunc i16 %i.nh to i8
  %.0.i.7 = select i1 %17, i8 %18, i8 %i.ni
  %i.nj = getelementptr inbounds nuw i8, ptr %.01925, i64 7
  store i8 %.0.i.7, ptr %i.nj, align 1, !tbaa !15
  %i.nk = getelementptr inbounds i8, ptr %.01925, i64 %i.lw
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next37, 8
  br i1 %exitcond39.not, label %bb.a, label %.preheader, !llvm.loop !12

bb.a:                                             ; preds = %.preheader
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"HQDSPContext", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = distinct !{!12, !16}
!13 = !{!"short", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
end_hunk_0
