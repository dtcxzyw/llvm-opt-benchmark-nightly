Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/chacha20_dolbeau-avx2?download=true
inline.NumInlined: 27
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@chacha20_encrypt_bytes:bb.a
  %i.ii = bitcast <8 x i32> %i.ih to <4 x i64>    ; 2 uses
  %i.ij = shufflevector <8 x i32> %i.ib, <8 x i32> %i.ic, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ik = bitcast <8 x i32> %i.ij to <4 x i64>    ; 2 uses
  %i.il = shufflevector <8 x i32> %i.id, <8 x i32> %i.ie, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.im = bitcast <8 x i32> %i.il to <4 x i64>    ; 2 uses
  %i.in = shufflevector <4 x i64> %i.ig, <4 x i64> %i.ii, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.io = shufflevector <4 x i64> %i.ig, <4 x i64> %i.ii, <4 x i32> <i32 1, i32 5, i32 3, i32 7> ; 2 uses
  %i.ip = shufflevector <4 x i64> %i.ik, <4 x i64> %i.im, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.iq = shufflevector <4 x i64> %i.ik, <4 x i64> %i.im, <4 x i32> <i32 1, i32 5, i32 3, i32 7> ; 2 uses
  %i.ir = shufflevector <4 x i64> %i.hx, <4 x i64> %i.in, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.is = shufflevector <4 x i64> %i.hx, <4 x i64> %i.in, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.it = shufflevector <4 x i64> %i.hy, <4 x i64> %i.io, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.iu = shufflevector <4 x i64> %i.hy, <4 x i64> %i.io, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.iv = shufflevector <4 x i64> %i.hz, <4 x i64> %i.ip, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.iw = shufflevector <4 x i64> %i.hz, <4 x i64> %i.ip, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ix = shufflevector <4 x i64> %i.ia, <4 x i64> %i.iq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.iy = shufflevector <4 x i64> %i.ia, <4 x i64> %i.iq, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.iz = load <4 x i64>, ptr %.010961171, align 1
  %i.ja = xor <4 x i64> %i.iz, %i.ir
  %i.jb = getelementptr i8, ptr %.010961171, i64 64
  %i.jc = load <4 x i64>, ptr %i.jb, align 1
  %i.jd = xor <4 x i64> %i.jc, %i.it
  %i.je = getelementptr i8, ptr %.010961171, i64 128
  %i.jf = load <4 x i64>, ptr %i.je, align 1
  %i.jg = xor <4 x i64> %i.jf, %i.iv
  %i.jh = getelementptr i8, ptr %.010961171, i64 192
  %i.ji = load <4 x i64>, ptr %i.jh, align 1
  %i.jj = xor <4 x i64> %i.ji, %i.ix
  %i.jk = getelementptr i8, ptr %.010961171, i64 256
  %i.jl = load <4 x i64>, ptr %i.jk, align 1
  %i.jm = xor <4 x i64> %i.jl, %i.is
  %i.jn = getelementptr i8, ptr %.010961171, i64 320
  %i.jo = load <4 x i64>, ptr %i.jn, align 1
  %i.jp = xor <4 x i64> %i.jo, %i.iu
  %i.jq = getelementptr i8, ptr %.010961171, i64 384
  %i.jr = load <4 x i64>, ptr %i.jq, align 1
  %i.js = xor <4 x i64> %i.jr, %i.iw
  %i.jt = getelementptr i8, ptr %.010961171, i64 448
  %i.ju = load <4 x i64>, ptr %i.jt, align 1
  %i.jv = xor <4 x i64> %i.ju, %i.iy
  store <4 x i64> %i.ja, ptr %.010981170, align 1
  %i.jw = getelementptr i8, ptr %.010981170, i64 64
  store <4 x i64> %i.jd, ptr %i.jw, align 1
  %i.jx = getelementptr i8, ptr %.010981170, i64 128
  store <4 x i64> %i.jg, ptr %i.jx, align 1
  %i.jy = getelementptr i8, ptr %.010981170, i64 192
  store <4 x i64> %i.jj, ptr %i.jy, align 1
  %i.jz = getelementptr i8, ptr %.010981170, i64 256
  store <4 x i64> %i.jm, ptr %i.jz, align 1
  %i.ka = getelementptr i8, ptr %.010981170, i64 320
  store <4 x i64> %i.jp, ptr %i.ka, align 1
  %i.kb = getelementptr i8, ptr %.010981170, i64 384
  store <4 x i64> %i.js, ptr %i.kb, align 1
  %i.kc = getelementptr i8, ptr %.010981170, i64 448
  store <4 x i64> %i.jv, ptr %i.kc, align 1
  %i.kd = getelementptr i8, ptr %.010961171, i64 32
  %i.ke = getelementptr i8, ptr %.010981170, i64 32
  %i.kf = add <8 x i32> %i.hc, %i.al              ; 2 uses
  %i.kg = add <8 x i32> %i.hg, %i.ap              ; 2 uses
  %i.kh = add <8 x i32> %i.gu, %i.at              ; 2 uses
  %i.ki = add <8 x i32> %i.gy, %i.ax              ; 2 uses
  %i.kj = shufflevector <8 x i32> %i.kf, <8 x i32> %i.kg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.kk = bitcast <8 x i32> %i.kj to <4 x i64>    ; 2 uses
  %i.kl = shufflevector <8 x i32> %i.kh, <8 x i32> %i.ki, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.km = bitcast <8 x i32> %i.kl to <4 x i64>    ; 2 uses
  %i.kn = shufflevector <8 x i32> %i.kf, <8 x i32> %i.kg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ko = bitcast <8 x i32> %i.kn to <4 x i64>    ; 2 uses
  %i.kp = shufflevector <8 x i32> %i.kh, <8 x i32> %i.ki, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.kq = bitcast <8 x i32> %i.kp to <4 x i64>    ; 2 uses
  %i.kr = shufflevector <4 x i64> %i.kk, <4 x i64> %i.km, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.ks = shufflevector <4 x i64> %i.kk, <4 x i64> %i.km, <4 x i32> <i32 1, i32 5, i32 3, i32 7> ; 2 uses
  %i.kt = shufflevector <4 x i64> %i.ko, <4 x i64> %i.kq, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.ku = shufflevector <4 x i64> %i.ko, <4 x i64> %i.kq, <4 x i32> <i32 1, i32 5, i32 3, i32 7> ; 2 uses
  %i.kv = add <8 x i32> %i.bq, %i.gx              ; 2 uses
  %i.kw = add <8 x i32> %i.bs, %i.hb              ; 2 uses
  %i.kx = add <8 x i32> %i.bb, %i.hf              ; 2 uses
  %i.ky = add <8 x i32> %i.bg, %i.gt              ; 2 uses
  %i.kz = shufflevector <8 x i32> %i.kv, <8 x i32> %i.kw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.la = bitcast <8 x i32> %i.kz to <4 x i64>    ; 2 uses
  %i.lb = shufflevector <8 x i32> %i.kx, <8 x i32> %i.ky, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.lc = bitcast <8 x i32> %i.lb to <4 x i64>    ; 2 uses
  %i.ld = shufflevector <8 x i32> %i.kv, <8 x i32> %i.kw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.le = bitcast <8 x i32> %i.ld to <4 x i64>    ; 2 uses
  %i.lf = shufflevector <8 x i32> %i.kx, <8 x i32> %i.ky, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.lg = bitcast <8 x i32> %i.lf to <4 x i64>    ; 2 uses
  %i.lh = shufflevector <4 x i64> %i.la, <4 x i64> %i.lc, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.li = shufflevector <4 x i64> %i.la, <4 x i64> %i.lc, <4 x i32> <i32 1, i32 5, i32 3, i32 7> ; 2 uses
  %i.lj = shufflevector <4 x i64> %i.le, <4 x i64> %i.lg, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.lk = shufflevector <4 x i64> %i.le, <4 x i64> %i.lg, <4 x i32> <i32 1, i32 5, i32 3, i32 7> ; 2 uses
  %i.ll = shufflevector <4 x i64> %i.kr, <4 x i64> %i.lh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lm = shufflevector <4 x i64> %i.kr, <4 x i64> %i.lh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ln = shufflevector <4 x i64> %i.ks, <4 x i64> %i.li, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lo = shufflevector <4 x i64> %i.ks, <4 x i64> %i.li, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.lp = shufflevector <4 x i64> %i.kt, <4 x i64> %i.lj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lq = shufflevector <4 x i64> %i.kt, <4 x i64> %i.lj, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.lr = shufflevector <4 x i64> %i.ku, <4 x i64> %i.lk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ls = shufflevector <4 x i64> %i.ku, <4 x i64> %i.lk, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.lt = load <4 x i64>, ptr %i.kd, align 1
  %i.lu = xor <4 x i64> %i.lt, %i.ll
  %i.lv = getelementptr i8, ptr %.010961171, i64 96
  %i.lw = load <4 x i64>, ptr %i.lv, align 1
  %i.lx = xor <4 x i64> %i.lw, %i.ln
  %i.ly = getelementptr i8, ptr %.010961171, i64 160
  %i.lz = load <4 x i64>, ptr %i.ly, align 1
  %i.ma = xor <4 x i64> %i.lz, %i.lp
  %i.mb = getelementptr i8, ptr %.010961171, i64 224
  %i.mc = load <4 x i64>, ptr %i.mb, align 1
  %i.md = xor <4 x i64> %i.mc, %i.lr
  %i.me = getelementptr i8, ptr %.010961171, i64 288
  %i.mf = load <4 x i64>, ptr %i.me, align 1
  %i.mg = xor <4 x i64> %i.mf, %i.lm
  %i.mh = getelementptr i8, ptr %.010961171, i64 352
  %i.mi = load <4 x i64>, ptr %i.mh, align 1
  %i.mj = xor <4 x i64> %i.mi, %i.lo
  %i.mk = getelementptr i8, ptr %.010961171, i64 416
  %i.ml = load <4 x i64>, ptr %i.mk, align 1
  %i.mm = xor <4 x i64> %i.ml, %i.lq
  %i.mn = getelementptr i8, ptr %.010961171, i64 480
  %i.mo = load <4 x i64>, ptr %i.mn, align 1
  %i.mp = xor <4 x i64> %i.mo, %i.ls
  store <4 x i64> %i.lu, ptr %i.ke, align 1
  %i.mq = getelementptr i8, ptr %.010981170, i64 96
  store <4 x i64> %i.lx, ptr %i.mq, align 1
  %i.mr = getelementptr i8, ptr %.010981170, i64 160
  store <4 x i64> %i.ma, ptr %i.mr, align 1
  %i.ms = getelementptr i8, ptr %.010981170, i64 224
  store <4 x i64> %i.md, ptr %i.ms, align 1
  %i.mt = getelementptr i8, ptr %.010981170, i64 288
  store <4 x i64> %i.mg, ptr %i.mt, align 1
  %i.mu = getelementptr i8, ptr %.010981170, i64 352
  store <4 x i64> %i.mj, ptr %i.mu, align 1
  %i.mv = getelementptr i8, ptr %.010981170, i64 416
  store <4 x i64> %i.mm, ptr %i.mv, align 1
  %i.mw = getelementptr i8, ptr %.010981170, i64 480
  store <4 x i64> %i.mp, ptr %i.mw, align 1
  %i.mx = add i64 %.011031169, -512               ; 3 uses
  %i.my = getelementptr i8, ptr %.010981170, i64 512 ; 2 uses
  %i.mz = getelementptr i8, ptr %.010961171, i64 512 ; 2 uses
  %i.na = icmp ugt i64 %i.mx, 511
  br i1 %i.na, label %bb.c, label %.loopexit1144, !llvm.loop !5

.loopexit1144:                                    ; preds = %bb.e, %bb.a
  %.11104 = phi i64 [ %3, %bb.a ], [ %i.mx, %bb.e ] ; 3 uses
  %.11099 = phi ptr [ %2, %bb.a ], [ %i.my, %bb.e ] ; 18 uses
  %.11097 = phi ptr [ %1, %bb.a ], [ %i.mz, %bb.e ] ; 18 uses
  %i.nb = icmp samesign ugt i64 %.11104, 255
  br i1 %i.nb, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.loopexit1144
  %i.nc = load i32, ptr %0, align 4
  %i.nd = insertelement <4 x i32> poison, i32 %i.nc, i64 0
  %i.ne = shufflevector <4 x i32> %i.nd, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nf = getelementptr i8, ptr %0, i64 4
  %i.ng = load i32, ptr %i.nf, align 4
  %i.nh = insertelement <4 x i32> poison, i32 %i.ng, i64 0
  %i.ni = shufflevector <4 x i32> %i.nh, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nj = getelementptr i8, ptr %0, i64 8
  %i.nk = load i32, ptr %i.nj, align 4
  %i.nl = insertelement <4 x i32> poison, i32 %i.nk, i64 0
  %i.nm = shufflevector <4 x i32> %i.nl, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nn = getelementptr i8, ptr %0, i64 12
  %i.no = load i32, ptr %i.nn, align 4
  %i.np = insertelement <4 x i32> poison, i32 %i.no, i64 0
  %i.nq = shufflevector <4 x i32> %i.np, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nr = getelementptr i8, ptr %0, i64 16
  %i.ns = load i32, ptr %i.nr, align 4
  %i.nt = insertelement <4 x i32> poison, i32 %i.ns, i64 0
  %i.nu = shufflevector <4 x i32> %i.nt, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nv = getelementptr i8, ptr %0, i64 20
  %i.nw = load i32, ptr %i.nv, align 4
  %i.nx = insertelement <4 x i32> poison, i32 %i.nw, i64 0
  %i.ny = shufflevector <4 x i32> %i.nx, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nz = getelementptr i8, ptr %0, i64 24
  %i.oa = load i32, ptr %i.nz, align 4
  %i.ob = insertelement <4 x i32> poison, i32 %i.oa, i64 0
  %i.oc = shufflevector <4 x i32> %i.ob, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.od = getelementptr i8, ptr %0, i64 28
  %i.oe = load i32, ptr %i.od, align 4
  %i.of = insertelement <4 x i32> poison, i32 %i.oe, i64 0
  %i.og = shufflevector <4 x i32> %i.of, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.oh = getelementptr i8, ptr %0, i64 32
  %i.oi = load i32, ptr %i.oh, align 4
  %i.oj = insertelement <4 x i32> poison, i32 %i.oi, i64 0
  %i.ok = shufflevector <4 x i32> %i.oj, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ol = getelementptr i8, ptr %0, i64 36
  %i.om = load i32, ptr %i.ol, align 4
  %i.on = insertelement <4 x i32> poison, i32 %i.om, i64 0
  %i.oo = shufflevector <4 x i32> %i.on, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.op = getelementptr i8, ptr %0, i64 40
  %i.oq = load i32, ptr %i.op, align 4
  %i.or = insertelement <4 x i32> poison, i32 %i.oq, i64 0
  %i.os = shufflevector <4 x i32> %i.or, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ot = getelementptr i8, ptr %0, i64 44
  %i.ou = load i32, ptr %i.ot, align 4
  %i.ov = insertelement <4 x i32> poison, i32 %i.ou, i64 0
  %i.ow = shufflevector <4 x i32> %i.ov, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ox = getelementptr i8, ptr %0, i64 56
  %i.oy = load i32, ptr %i.ox, align 4
  %i.oz = insertelement <4 x i32> poison, i32 %i.oy, i64 0
  %i.pa = shufflevector <4 x i32> %i.oz, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %4 = bitcast <4 x i32> %i.pa to <2 x i64>
  %i.pb = getelementptr i8, ptr %0, i64 60
  %i.pc = load i32, ptr %i.pb, align 4
  %i.pd = insertelement <4 x i32> poison, i32 %i.pc, i64 0
  %i.pe = shufflevector <4 x i32> %i.pd, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %5 = bitcast <4 x i32> %i.pe to <2 x i64>
  %i.pf = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %6 = getelementptr i8, ptr %.11099, i64 256
  %7 = getelementptr i8, ptr %.11097, i64 256
  %i.pg = load i64, ptr %i.pf, align 4            ; 2 uses
  %i.ph = insertelement <2 x i64> poison, i64 %i.pg, i64 0
  %i.pi = shufflevector <2 x i64> %i.ph, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pj = add <2 x i64> %i.pi, <i64 0, i64 1>
  %i.pk = add <2 x i64> %i.pi, <i64 2, i64 3>
  %i.pl = bitcast <2 x i64> %i.pj to <4 x i32>    ; 2 uses
  %i.pm = bitcast <2 x i64> %i.pk to <4 x i32>    ; 2 uses
  %i.pn = shufflevector <4 x i32> %i.pl, <4 x i32> %i.pm, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.po = bitcast <4 x i32> %i.pn to <2 x i64>
  %i.pp = shufflevector <4 x i32> %i.pl, <4 x i32> %i.pm, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.pq = bitcast <4 x i32> %i.pp to <2 x i64>
  %i.pr = add i64 %i.pg, 4
  store i64 %i.pr, ptr %i.pf, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.g
  %.011151180 = phi i32 [ 0, %bb.f ], [ %i.vg, %bb.g ] ; 2 uses
  %.011161179 = phi <2 x i64> [ %5, %bb.f ], [ %i.tc, %bb.g ]
  %.011171178 = phi <2 x i64> [ %4, %bb.f ], [ %i.vb, %bb.g ]
  %.011181177 = phi <2 x i64> [ %i.pq, %bb.f ], [ %i.uk, %bb.g ]
  %.011191176 = phi <2 x i64> [ %i.po, %bb.f ], [ %i.tt, %bb.g ]
  %i.ps = phi <4 x i32> [ %i.ow, %bb.f ], [ %i.tv, %bb.g ]
  %i.pt = phi <4 x i32> [ %i.os, %bb.f ], [ %i.te, %bb.g ]
  %i.pu = phi <4 x i32> [ %i.oo, %bb.f ], [ %i.vd, %bb.g ]
  %i.pv = phi <4 x i32> [ %i.ok, %bb.f ], [ %i.um, %bb.g ]
  %.01124.in1175 = phi <4 x i32> [ %i.og, %bb.f ], [ %i.uo, %bb.g ] ; 2 uses
  %.01125.in1174 = phi <4 x i32> [ %i.oc, %bb.f ], [ %i.tx, %bb.g ] ; 2 uses
  %.01126.in1173 = phi <4 x i32> [ %i.ny, %bb.f ], [ %i.tg, %bb.g ] ; 2 uses
  %.01127.in1172 = phi <4 x i32> [ %i.nu, %bb.f ], [ %i.vf, %bb.g ] ; 2 uses
  %i.pw = phi <4 x i32> [ %i.nq, %bb.f ], [ %i.ux, %bb.g ]
  %i.px = phi <4 x i32> [ %i.nm, %bb.f ], [ %i.ug, %bb.g ]
  %i.py = phi <4 x i32> [ %i.ni, %bb.f ], [ %i.tp, %bb.g ]
  %i.pz = phi <4 x i32> [ %i.ne, %bb.f ], [ %i.sy, %bb.g ]
  %i.qa = add <4 x i32> %.01127.in1172, %i.pz     ; 2 uses
  %i.qb = bitcast <4 x i32> %i.qa to <2 x i64>
  %i.qc = xor <2 x i64> %.011191176, %i.qb
  %i.qd = bitcast <2 x i64> %i.qc to <16 x i8>
  %i.qe = shufflevector <16 x i8> %i.qd, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.qf = bitcast <16 x i8> %i.qe to <4 x i32>
  %i.qg = add <4 x i32> %i.pv, %i.qf              ; 2 uses
  %i.qh = xor <4 x i32> %i.qg, %.01127.in1172     ; 2 uses
  %i.qi = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.qh, <4 x i32> %i.qh, <4 x i32> splat (i32 12)) ; 2 uses
  %i.qj = add <4 x i32> %i.qi, %i.qa              ; 2 uses
  %i.qk = bitcast <4 x i32> %i.qj to <16 x i8>
  %i.ql = xor <16 x i8> %i.qe, %i.qk
  %i.qm = shufflevector <16 x i8> %i.ql, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  %i.qn = bitcast <16 x i8> %i.qm to <4 x i32>
  %i.qo = add <4 x i32> %i.qg, %i.qn              ; 2 uses
  %i.qp = xor <4 x i32> %i.qo, %i.qi              ; 2 uses
  %i.qq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.qp, <4 x i32> %i.qp, <4 x i32> splat (i32 7)) ; 2 uses
  %i.qr = add <4 x i32> %.01126.in1173, %i.py     ; 2 uses
  %i.qs = bitcast <4 x i32> %i.qr to <2 x i64>
  %i.qt = xor <2 x i64> %.011181177, %i.qs
  %i.qu = bitcast <2 x i64> %i.qt to <16 x i8>
  %i.qv = shufflevector <16 x i8> %i.qu, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.qw = bitcast <16 x i8> %i.qv to <4 x i32>
  %i.qx = add <4 x i32> %i.pu, %i.qw              ; 2 uses
  %i.qy = xor <4 x i32> %i.qx, %.01126.in1173     ; 2 uses
  %i.qz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.qy, <4 x i32> %i.qy, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ra = add <4 x i32> %i.qz, %i.qr              ; 2 uses
  %i.rb = bitcast <4 x i32> %i.ra to <16 x i8>
  %i.rc = xor <16 x i8> %i.qv, %i.rb
  %i.rd = shufflevector <16 x i8> %i.rc, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  %i.re = bitcast <16 x i8> %i.rd to <4 x i32>
  %i.rf = add <4 x i32> %i.qx, %i.re              ; 2 uses
  %i.rg = xor <4 x i32> %i.rf, %i.qz              ; 2 uses
  %i.rh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.rg, <4 x i32> %i.rg, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ri = add <4 x i32> %.01125.in1174, %i.px     ; 2 uses
  %i.rj = bitcast <4 x i32> %i.ri to <2 x i64>
  %i.rk = xor <2 x i64> %.011171178, %i.rj
  %i.rl = bitcast <2 x i64> %i.rk to <16 x i8>
  %i.rm = shufflevector <16 x i8> %i.rl, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.rn = bitcast <16 x i8> %i.rm to <4 x i32>
  %i.ro = add <4 x i32> %i.pt, %i.rn              ; 2 uses
  %i.rp = xor <4 x i32> %i.ro, %.01125.in1174     ; 2 uses
  %i.rq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.rp, <4 x i32> %i.rp, <4 x i32> splat (i32 12)) ; 2 uses
  %i.rr = add <4 x i32> %i.rq, %i.ri              ; 2 uses
  %i.rs = bitcast <4 x i32> %i.rr to <16 x i8>
  %i.rt = xor <16 x i8> %i.rm, %i.rs
  %i.ru = shufflevector <16 x i8> %i.rt, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  %i.rv = bitcast <16 x i8> %i.ru to <4 x i32>
  %i.rw = add <4 x i32> %i.ro, %i.rv              ; 2 uses
  %i.rx = xor <4 x i32> %i.rw, %i.rq              ; 2 uses
  %i.ry = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.rx, <4 x i32> %i.rx, <4 x i32> splat (i32 7)) ; 2 uses
  %i.rz = add <4 x i32> %.01124.in1175, %i.pw     ; 2 uses
  %i.sa = bitcast <4 x i32> %i.rz to <2 x i64>
  %i.sb = xor <2 x i64> %.011161179, %i.sa
  %i.sc = bitcast <2 x i64> %i.sb to <16 x i8>
  %i.sd = shufflevector <16 x i8> %i.sc, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.se = bitcast <16 x i8> %i.sd to <4 x i32>
  %i.sf = add <4 x i32> %i.ps, %i.se              ; 2 uses
  %i.sg = xor <4 x i32> %i.sf, %.01124.in1175     ; 2 uses
  %i.sh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.sg, <4 x i32> %i.sg, <4 x i32> splat (i32 12)) ; 2 uses
  %i.si = add <4 x i32> %i.sh, %i.rz              ; 2 uses
  %i.sj = bitcast <4 x i32> %i.si to <16 x i8>
  %i.sk = xor <16 x i8> %i.sd, %i.sj
  %i.sl = shufflevector <16 x i8> %i.sk, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  %i.sm = bitcast <16 x i8> %i.sl to <4 x i32>
  %i.sn = add <4 x i32> %i.sf, %i.sm              ; 2 uses
  %i.so = xor <4 x i32> %i.sn, %i.sh              ; 2 uses
  %i.sp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.so, <4 x i32> %i.so, <4 x i32> splat (i32 7)) ; 2 uses
  %i.sq = add <4 x i32> %i.rh, %i.qj              ; 2 uses
  %i.sr = bitcast <4 x i32> %i.sq to <16 x i8>
  %i.ss = xor <16 x i8> %i.sl, %i.sr
  %i.st = shufflevector <16 x i8> %i.ss, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.su = bitcast <16 x i8> %i.st to <4 x i32>
  %i.sv = add <4 x i32> %i.rw, %i.su              ; 2 uses
  %i.sw = xor <4 x i32> %i.sv, %i.rh              ; 2 uses
  %i.sx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.sw, <4 x i32> %i.sw, <4 x i32> splat (i32 12)) ; 2 uses
  %i.sy = add <4 x i32> %i.sx, %i.sq              ; 3 uses
  %i.sz = bitcast <4 x i32> %i.sy to <16 x i8>
  %i.ta = xor <16 x i8> %i.st, %i.sz
  %i.tb = shufflevector <16 x i8> %i.ta, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  %i.tc = bitcast <16 x i8> %i.tb to <2 x i64>
  %i.td = bitcast <16 x i8> %i.tb to <4 x i32>    ; 2 uses
  %i.te = add <4 x i32> %i.sv, %i.td              ; 3 uses
  %i.tf = xor <4 x i32> %i.te, %i.sx              ; 2 uses
  %i.tg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.tf, <4 x i32> %i.tf, <4 x i32> splat (i32 7)) ; 2 uses
  %i.th = add <4 x i32> %i.ry, %i.ra              ; 2 uses
  %i.ti = bitcast <4 x i32> %i.th to <16 x i8>
  %i.tj = xor <16 x i8> %i.qm, %i.ti
  %i.tk = shufflevector <16 x i8> %i.tj, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.tl = bitcast <16 x i8> %i.tk to <4 x i32>
  %i.tm = add <4 x i32> %i.sn, %i.tl              ; 2 uses
  %i.tn = xor <4 x i32> %i.tm, %i.ry              ; 2 uses
  %i.to = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.tn, <4 x i32> %i.tn, <4 x i32> splat (i32 12)) ; 2 uses
  %i.tp = add <4 x i32> %i.to, %i.th              ; 3 uses
  %i.tq = bitcast <4 x i32> %i.tp to <16 x i8>
  %i.tr = xor <16 x i8> %i.tk, %i.tq
  %i.ts = shufflevector <16 x i8> %i.tr, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  %i.tt = bitcast <16 x i8> %i.ts to <2 x i64>
  %i.tu = bitcast <16 x i8> %i.ts to <4 x i32>    ; 2 uses
  %i.tv = add <4 x i32> %i.tm, %i.tu              ; 3 uses
  %i.tw = xor <4 x i32> %i.tv, %i.to              ; 2 uses
  %i.tx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.tw, <4 x i32> %i.tw, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ty = add <4 x i32> %i.sp, %i.rr              ; 2 uses
  %i.tz = bitcast <4 x i32> %i.ty to <16 x i8>
  %i.ua = xor <16 x i8> %i.rd, %i.tz
  %i.ub = shufflevector <16 x i8> %i.ua, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.uc = bitcast <16 x i8> %i.ub to <4 x i32>
  %i.ud = add <4 x i32> %i.qo, %i.uc              ; 2 uses
  %i.ue = xor <4 x i32> %i.ud, %i.sp              ; 2 uses
  %i.uf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ue, <4 x i32> %i.ue, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ug = add <4 x i32> %i.uf, %i.ty              ; 3 uses
  %i.uh = bitcast <4 x i32> %i.ug to <16 x i8>
  %i.ui = xor <16 x i8> %i.ub, %i.uh
  %i.uj = shufflevector <16 x i8> %i.ui, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  %i.uk = bitcast <16 x i8> %i.uj to <2 x i64>
  %i.ul = bitcast <16 x i8> %i.uj to <4 x i32>    ; 2 uses
  %i.um = add <4 x i32> %i.ud, %i.ul              ; 3 uses
  %i.un = xor <4 x i32> %i.um, %i.uf              ; 2 uses
  %i.uo = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.un, <4 x i32> %i.un, <4 x i32> splat (i32 7)) ; 2 uses
  %i.up = add <4 x i32> %i.qq, %i.si              ; 2 uses
  %i.uq = bitcast <4 x i32> %i.up to <16 x i8>
  %i.ur = xor <16 x i8> %i.ru, %i.uq
  %i.us = shufflevector <16 x i8> %i.ur, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.ut = bitcast <16 x i8> %i.us to <4 x i32>
  %i.uu = add <4 x i32> %i.rf, %i.ut              ; 2 uses
  %i.uv = xor <4 x i32> %i.uu, %i.qq              ; 2 uses
  %i.uw = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.uv, <4 x i32> %i.uv, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ux = add <4 x i32> %i.uw, %i.up              ; 3 uses
  %i.uy = bitcast <4 x i32> %i.ux to <16 x i8>
  %i.uz = xor <16 x i8> %i.us, %i.uy
  %i.va = shufflevector <16 x i8> %i.uz, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  %i.vb = bitcast <16 x i8> %i.va to <2 x i64>
  %i.vc = bitcast <16 x i8> %i.va to <4 x i32>    ; 2 uses
  %i.vd = add <4 x i32> %i.uu, %i.vc              ; 3 uses
  %i.ve = xor <4 x i32> %i.vd, %i.uw              ; 2 uses
  %i.vf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ve, <4 x i32> %i.ve, <4 x i32> splat (i32 7)) ; 2 uses
  %i.vg = add nuw nsw i32 %.011151180, 2
  %i.vh = icmp samesign ult i32 %.011151180, 18
  br i1 %i.vh, label %bb.g, label %.loopexit.loopexit, !llvm.loop !6

.loopexit.loopexit:                               ; preds = %bb.g
  %i.vi = add <4 x i32> %i.sy, %i.ne              ; 2 uses
  %i.vj = add <4 x i32> %i.tp, %i.ni              ; 2 uses
  %i.vk = add <4 x i32> %i.ug, %i.nm              ; 2 uses
  %i.vl = add <4 x i32> %i.ux, %i.nq              ; 2 uses
  %i.vm = shufflevector <4 x i32> %i.vi, <4 x i32> %i.vj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.vn = bitcast <4 x i32> %i.vm to <2 x i64>    ; 2 uses
  %i.vo = shufflevector <4 x i32> %i.vk, <4 x i32> %i.vl, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.vp = bitcast <4 x i32> %i.vo to <2 x i64>    ; 2 uses
  %i.vq = shufflevector <4 x i32> %i.vi, <4 x i32> %i.vj, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.vr = bitcast <4 x i32> %i.vq to <2 x i64>    ; 2 uses
  %i.vs = shufflevector <4 x i32> %i.vk, <4 x i32> %i.vl, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.vt = bitcast <4 x i32> %i.vs to <2 x i64>    ; 2 uses
  %i.vu = shufflevector <2 x i64> %i.vn, <2 x i64> %i.vp, <2 x i32> <i32 0, i32 2>
  %i.vv = shufflevector <2 x i64> %i.vn, <2 x i64> %i.vp, <2 x i32> <i32 1, i32 3>
  %i.vw = shufflevector <2 x i64> %i.vr, <2 x i64> %i.vt, <2 x i32> <i32 0, i32 2>
  %i.vx = shufflevector <2 x i64> %i.vr, <2 x i64> %i.vt, <2 x i32> <i32 1, i32 3>
  %i.vy = load <2 x i64>, ptr %.11097, align 1
  %i.vz = xor <2 x i64> %i.vy, %i.vu
  store <2 x i64> %i.vz, ptr %.11099, align 1
  %i.wa = getelementptr i8, ptr %.11097, i64 64
  %i.wb = load <2 x i64>, ptr %i.wa, align 1
  %i.wc = xor <2 x i64> %i.wb, %i.vv
  %i.wd = getelementptr i8, ptr %.11099, i64 64
  store <2 x i64> %i.wc, ptr %i.wd, align 1
  %i.we = getelementptr i8, ptr %.11097, i64 128
  %i.wf = load <2 x i64>, ptr %i.we, align 1
  %i.wg = xor <2 x i64> %i.wf, %i.vw
  %i.wh = getelementptr i8, ptr %.11099, i64 128
  store <2 x i64> %i.wg, ptr %i.wh, align 1
  %i.wi = getelementptr i8, ptr %.11097, i64 192
  %i.wj = load <2 x i64>, ptr %i.wi, align 1
  %i.wk = xor <2 x i64> %i.wj, %i.vx
  %i.wl = getelementptr i8, ptr %.11099, i64 192
  store <2 x i64> %i.wk, ptr %i.wl, align 1
  %i.wm = getelementptr i8, ptr %.11097, i64 16
  %i.wn = getelementptr i8, ptr %.11099, i64 16
  %i.wo = add <4 x i32> %i.vf, %i.nu              ; 2 uses
  %i.wp = add <4 x i32> %i.tg, %i.ny              ; 2 uses
  %i.wq = add <4 x i32> %i.tx, %i.oc              ; 2 uses
  %i.wr = add <4 x i32> %i.uo, %i.og              ; 2 uses
  %i.ws = shufflevector <4 x i32> %i.wo, <4 x i32> %i.wp, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.wt = bitcast <4 x i32> %i.ws to <2 x i64>    ; 2 uses
  %i.wu = shufflevector <4 x i32> %i.wq, <4 x i32> %i.wr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.wv = bitcast <4 x i32> %i.wu to <2 x i64>    ; 2 uses
  %i.ww = shufflevector <4 x i32> %i.wo, <4 x i32> %i.wp, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.wx = bitcast <4 x i32> %i.ww to <2 x i64>    ; 2 uses
  %i.wy = shufflevector <4 x i32> %i.wq, <4 x i32> %i.wr, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.wz = bitcast <4 x i32> %i.wy to <2 x i64>    ; 2 uses
  %i.xa = shufflevector <2 x i64> %i.wt, <2 x i64> %i.wv, <2 x i32> <i32 0, i32 2>
  %i.xb = shufflevector <2 x i64> %i.wt, <2 x i64> %i.wv, <2 x i32> <i32 1, i32 3>
  %i.xc = shufflevector <2 x i64> %i.wx, <2 x i64> %i.wz, <2 x i32> <i32 0, i32 2>
  %i.xd = shufflevector <2 x i64> %i.wx, <2 x i64> %i.wz, <2 x i32> <i32 1, i32 3>
  %i.xe = load <2 x i64>, ptr %i.wm, align 1
  %i.xf = xor <2 x i64> %i.xe, %i.xa
  store <2 x i64> %i.xf, ptr %i.wn, align 1
  %i.xg = getelementptr i8, ptr %.11097, i64 80
  %i.xh = load <2 x i64>, ptr %i.xg, align 1
  %i.xi = xor <2 x i64> %i.xh, %i.xb
  %i.xj = getelementptr i8, ptr %.11099, i64 80
  store <2 x i64> %i.xi, ptr %i.xj, align 1
  %i.xk = getelementptr i8, ptr %.11097, i64 144
  %i.xl = load <2 x i64>, ptr %i.xk, align 1
  %i.xm = xor <2 x i64> %i.xl, %i.xc
  %i.xn = getelementptr i8, ptr %.11099, i64 144
  store <2 x i64> %i.xm, ptr %i.xn, align 1
  %i.xo = getelementptr i8, ptr %.11097, i64 208
  %i.xp = load <2 x i64>, ptr %i.xo, align 1
  %i.xq = xor <2 x i64> %i.xp, %i.xd
  %i.xr = getelementptr i8, ptr %.11099, i64 208
  store <2 x i64> %i.xq, ptr %i.xr, align 1
  %i.xs = getelementptr i8, ptr %.11097, i64 32
  %i.xt = getelementptr i8, ptr %.11099, i64 32
  %i.xu = add <4 x i32> %i.um, %i.ok              ; 2 uses
  %i.xv = add <4 x i32> %i.vd, %i.oo              ; 2 uses
  %i.xw = add <4 x i32> %i.te, %i.os              ; 2 uses
  %i.xx = add <4 x i32> %i.tv, %i.ow              ; 2 uses
  %i.xy = shufflevector <4 x i32> %i.xu, <4 x i32> %i.xv, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.xz = bitcast <4 x i32> %i.xy to <2 x i64>    ; 2 uses
  %i.ya = shufflevector <4 x i32> %i.xw, <4 x i32> %i.xx, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.yb = bitcast <4 x i32> %i.ya to <2 x i64>    ; 2 uses
  %i.yc = shufflevector <4 x i32> %i.xu, <4 x i32> %i.xv, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.yd = bitcast <4 x i32> %i.yc to <2 x i64>    ; 2 uses
  %i.ye = shufflevector <4 x i32> %i.xw, <4 x i32> %i.xx, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.yf = bitcast <4 x i32> %i.ye to <2 x i64>    ; 2 uses
  %i.yg = shufflevector <2 x i64> %i.xz, <2 x i64> %i.yb, <2 x i32> <i32 0, i32 2>
  %i.yh = shufflevector <2 x i64> %i.xz, <2 x i64> %i.yb, <2 x i32> <i32 1, i32 3>
  %i.yi = shufflevector <2 x i64> %i.yd, <2 x i64> %i.yf, <2 x i32> <i32 0, i32 2>
  %i.yj = shufflevector <2 x i64> %i.yd, <2 x i64> %i.yf, <2 x i32> <i32 1, i32 3>
  %i.yk = load <2 x i64>, ptr %i.xs, align 1
  %i.yl = xor <2 x i64> %i.yk, %i.yg
  store <2 x i64> %i.yl, ptr %i.xt, align 1
  %i.ym = getelementptr i8, ptr %.11097, i64 96
  %i.yn = load <2 x i64>, ptr %i.ym, align 1
  %i.yo = xor <2 x i64> %i.yn, %i.yh
  %i.yp = getelementptr i8, ptr %.11099, i64 96
  store <2 x i64> %i.yo, ptr %i.yp, align 1
  %i.yq = getelementptr i8, ptr %.11097, i64 160
  %i.yr = load <2 x i64>, ptr %i.yq, align 1
  %i.ys = xor <2 x i64> %i.yr, %i.yi
  %i.yt = getelementptr i8, ptr %.11099, i64 160
  store <2 x i64> %i.ys, ptr %i.yt, align 1
  %i.yu = getelementptr i8, ptr %.11097, i64 224
  %i.yv = load <2 x i64>, ptr %i.yu, align 1
  %i.yw = xor <2 x i64> %i.yv, %i.yj
  %i.yx = getelementptr i8, ptr %.11099, i64 224
  store <2 x i64> %i.yw, ptr %i.yx, align 1
  %i.yy = getelementptr i8, ptr %.11097, i64 48
  %i.yz = getelementptr i8, ptr %.11099, i64 48
  %i.za = add <4 x i32> %i.pn, %i.tu              ; 2 uses
  %i.zb = add <4 x i32> %i.pp, %i.ul              ; 2 uses
  %i.zc = add <4 x i32> %i.pa, %i.vc              ; 2 uses
  %i.zd = add <4 x i32> %i.pe, %i.td              ; 2 uses
  %i.ze = shufflevector <4 x i32> %i.za, <4 x i32> %i.zb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.zf = bitcast <4 x i32> %i.ze to <2 x i64>    ; 2 uses
  %i.zg = shufflevector <4 x i32> %i.zc, <4 x i32> %i.zd, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.zh = bitcast <4 x i32> %i.zg to <2 x i64>    ; 2 uses
  %i.zi = shufflevector <4 x i32> %i.za, <4 x i32> %i.zb, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.zj = bitcast <4 x i32> %i.zi to <2 x i64>    ; 2 uses
  %i.zk = shufflevector <4 x i32> %i.zc, <4 x i32> %i.zd, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.zl = bitcast <4 x i32> %i.zk to <2 x i64>    ; 2 uses
  %i.zm = shufflevector <2 x i64> %i.zf, <2 x i64> %i.zh, <2 x i32> <i32 0, i32 2>
  %i.zn = shufflevector <2 x i64> %i.zf, <2 x i64> %i.zh, <2 x i32> <i32 1, i32 3>
  %i.zo = shufflevector <2 x i64> %i.zj, <2 x i64> %i.zl, <2 x i32> <i32 0, i32 2>
  %i.zp = shufflevector <2 x i64> %i.zj, <2 x i64> %i.zl, <2 x i32> <i32 1, i32 3>
  %i.zq = load <2 x i64>, ptr %i.yy, align 1
  %i.zr = xor <2 x i64> %i.zq, %i.zm
  store <2 x i64> %i.zr, ptr %i.yz, align 1
  %i.zs = getelementptr i8, ptr %.11097, i64 112
  %i.zt = load <2 x i64>, ptr %i.zs, align 1
  %i.zu = xor <2 x i64> %i.zt, %i.zn
  %i.zv = getelementptr i8, ptr %.11099, i64 112
  store <2 x i64> %i.zu, ptr %i.zv, align 1
  %i.zw = getelementptr i8, ptr %.11097, i64 176
  %i.zx = load <2 x i64>, ptr %i.zw, align 1
  %i.zy = xor <2 x i64> %i.zx, %i.zo
  %i.zz = getelementptr i8, ptr %.11099, i64 176
  store <2 x i64> %i.zy, ptr %i.zz, align 1
  %i.aaa = getelementptr i8, ptr %.11097, i64 240
  %i.aab = load <2 x i64>, ptr %i.aaa, align 1
  %i.aac = xor <2 x i64> %i.aab, %i.zp
  %i.aad = getelementptr i8, ptr %.11099, i64 240
  store <2 x i64> %i.aac, ptr %i.aad, align 1
  %i.aae = add nsw i64 %.11104, -256
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit1144
  %.31106 = phi i64 [ %.11104, %.loopexit1144 ], [ %i.aae, %.loopexit.loopexit ] ; 3 uses
  %.31101 = phi ptr [ %.11099, %.loopexit1144 ], [ %6, %.loopexit.loopexit ] ; 2 uses
  %.3 = phi ptr [ %.11097, %.loopexit1144 ], [ %7, %.loopexit.loopexit ] ; 2 uses
  %i.aaf = icmp samesign ugt i64 %.31106, 63
  br i1 %i.aaf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.aag = getelementptr i8, ptr %0, i64 16
  %i.aah = getelementptr i8, ptr %0, i64 32
  %i.aai = getelementptr i8, ptr %0, i64 48       ; 3 uses
  %i.aaj = getelementptr i8, ptr %0, i64 52       ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.41191 = phi ptr [ %.3, %.lr.ph ], [ %i.adi, %bb.j ] ; 5 uses
  %.411021190 = phi ptr [ %.31101, %.lr.ph ], [ %i.adh, %bb.j ] ; 5 uses
  %.411071189 = phi i64 [ %.31106, %.lr.ph ], [ %i.adg, %bb.j ]
  %i.aak = load <4 x i32>, ptr %0, align 1        ; 2 uses
  %i.aal = load <4 x i32>, ptr %i.aag, align 1    ; 2 uses
  %i.aam = load <4 x i32>, ptr %i.aah, align 1    ; 2 uses
  %i.aan = load <2 x i64>, ptr %i.aai, align 1    ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %.010901188 = phi i32 [ 0, %bb.h ], [ %i.acc, %bb.i ] ; 2 uses
  %.010921187 = phi <2 x i64> [ %i.aan, %bb.h ], [ %i.aby, %bb.i ]
  %.010931186 = phi <4 x i32> [ %i.aam, %bb.h ], [ %i.aca, %bb.i ]
  %.010941185 = phi <4 x i32> [ %i.aal, %bb.h ], [ %i.acb, %bb.i ] ; 2 uses
  %.010951184 = phi <4 x i32> [ %i.aak, %bb.h ], [ %i.abr, %bb.i ]
  %i.aao = add <4 x i32> %.010941185, %.010951184 ; 2 uses
  %i.aap = bitcast <4 x i32> %i.aao to <2 x i64>
  %i.aaq = xor <2 x i64> %.010921187, %i.aap
  %i.aar = bitcast <2 x i64> %i.aaq to <16 x i8>
  %i.aas = shufflevector <16 x i8> %i.aar, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.aat = bitcast <16 x i8> %i.aas to <4 x i32>
  %i.aau = add <4 x i32> %.010931186, %i.aat      ; 2 uses
  %i.aav = xor <4 x i32> %i.aau, %.010941185      ; 2 uses
  %i.aaw = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aav, <4 x i32> %i.aav, <4 x i32> splat (i32 12)) ; 2 uses
  %i.aax = add <4 x i32> %i.aaw, %i.aao           ; 2 uses
  %i.aay = shufflevector <4 x i32> %i.aax, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aaz = bitcast <4 x i32> %i.aax to <16 x i8>
  %i.aba = xor <16 x i8> %i.aas, %i.aaz
  %i.abb = shufflevector <16 x i8> %i.aba, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.abc = bitcast <16 x i8> %i.abb to <4 x i32>  ; 2 uses
  %i.abd = add <4 x i32> %i.aau, %i.abc           ; 2 uses
  %i.abe = shufflevector <4 x i32> %i.abc, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.abf = xor <4 x i32> %i.abd, %i.aaw           ; 2 uses
  %i.abg = shufflevector <4 x i32> %i.abd, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.abh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.abf, <4 x i32> %i.abf, <4 x i32> splat (i32 7)) ; 2 uses
  %i.abi = add <4 x i32> %i.abh, %i.aay           ; 2 uses
  %i.abj = xor <4 x i32> %i.abi, %i.abe
  %i.abk = bitcast <4 x i32> %i.abj to <16 x i8>
  %i.abl = shufflevector <16 x i8> %i.abk, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.abm = bitcast <16 x i8> %i.abl to <4 x i32>
  %i.abn = add <4 x i32> %i.abg, %i.abm           ; 2 uses
  %i.abo = xor <4 x i32> %i.abn, %i.abh           ; 2 uses
  %i.abp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.abo, <4 x i32> %i.abo, <4 x i32> splat (i32 12)) ; 2 uses
  %i.abq = add <4 x i32> %i.abp, %i.abi           ; 2 uses
  %i.abr = shufflevector <4 x i32> %i.abq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.abs = bitcast <4 x i32> %i.abq to <16 x i8>
  %i.abt = xor <16 x i8> %i.abl, %i.abs
  %i.abu = shufflevector <16 x i8> %i.abt, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.abv = bitcast <16 x i8> %i.abu to <4 x i32>  ; 2 uses
  %i.abw = add <4 x i32> %i.abn, %i.abv           ; 2 uses
  %i.abx = shufflevector <4 x i32> %i.abv, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.aby = bitcast <4 x i32> %i.abx to <2 x i64>
  %i.abz = xor <4 x i32> %i.abw, %i.abp           ; 2 uses
  %i.aca = shufflevector <4 x i32> %i.abw, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.acb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.abz, <4 x i32> %i.abz, <4 x i32> splat (i32 7)) ; 2 uses
  %i.acc = add nuw nsw i32 %.010901188, 2
  %i.acd = icmp samesign ult i32 %.010901188, 18
  br i1 %i.acd, label %bb.i, label %bb.j, !llvm.loop !7

bb.j:                                             ; preds = %bb.i
  %i.ace = add <4 x i32> %i.abr, %i.aak
  %i.acf = bitcast <4 x i32> %i.ace to <2 x i64>
  %i.acg = add <4 x i32> %i.acb, %i.aal
  %i.ach = bitcast <4 x i32> %i.acg to <2 x i64>
  %i.aci = add <4 x i32> %i.aca, %i.aam
  %i.acj = bitcast <4 x i32> %i.aci to <2 x i64>
  %i.ack = bitcast <2 x i64> %i.aan to <4 x i32>
  %i.acl = add <4 x i32> %i.abx, %i.ack
  %i.acm = bitcast <4 x i32> %i.acl to <2 x i64>
  %i.acn = load <2 x i64>, ptr %.41191, align 1
  %i.aco = xor <2 x i64> %i.acn, %i.acf
  %i.acp = getelementptr i8, ptr %.41191, i64 16
  %i.acq = load <2 x i64>, ptr %i.acp, align 1
  %i.acr = xor <2 x i64> %i.acq, %i.ach
  %i.acs = getelementptr i8, ptr %.41191, i64 32
  %i.act = load <2 x i64>, ptr %i.acs, align 1
  %i.acu = xor <2 x i64> %i.act, %i.acj
  %i.acv = getelementptr i8, ptr %.41191, i64 48
  %i.acw = load <2 x i64>, ptr %i.acv, align 1
  %i.acx = xor <2 x i64> %i.acw, %i.acm
  store <2 x i64> %i.aco, ptr %.411021190, align 1
  %i.acy = getelementptr i8, ptr %.411021190, i64 16
  store <2 x i64> %i.acr, ptr %i.acy, align 1
  %i.acz = getelementptr i8, ptr %.411021190, i64 32
  store <2 x i64> %i.acu, ptr %i.acz, align 1
  %i.ada = getelementptr i8, ptr %.411021190, i64 48
  store <2 x i64> %i.acx, ptr %i.ada, align 1
  %i.adb = load i32, ptr %i.aai, align 4
  %i.adc = load i32, ptr %i.aaj, align 4
  %i.add = add i32 %i.adb, 1                      ; 2 uses
  %i.ade = icmp eq i32 %i.add, 0
  %i.adf = zext i1 %i.ade to i32
  %spec.select = add i32 %i.adc, %i.adf
  store i32 %i.add, ptr %i.aai, align 4
  store i32 %spec.select, ptr %i.aaj, align 4
  %i.adg = add nsw i64 %.411071189, -64           ; 3 uses
  %i.adh = getelementptr i8, ptr %.411021190, i64 64 ; 2 uses
  %i.adi = getelementptr i8, ptr %.41191, i64 64  ; 2 uses
  %i.adj = icmp ugt i64 %i.adg, 63
  br i1 %i.adj, label %bb.h, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.j, %.loopexit
  %.41107.lcssa = phi i64 [ %.31106, %.loopexit ], [ %i.adg, %bb.j ] ; 11 uses
  %.41102.lcssa = phi ptr [ %.31101, %.loopexit ], [ %i.adh, %bb.j ] ; 13 uses
  %.4.lcssa = phi ptr [ %.3, %.loopexit ], [ %i.adi, %bb.j ] ; 13 uses
  %.41102.lcssa1345 = ptrtoaddr ptr %.41102.lcssa to i64 ; 2 uses
  %.4.lcssa1346 = ptrtoaddr ptr %.4.lcssa to i64
  %.not = icmp eq i64 %.41107.lcssa, 0
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.adk = load <4 x i32>, ptr %0, align 1        ; 2 uses
  %i.adl = getelementptr i8, ptr %0, i64 16
  %i.adm = load <4 x i32>, ptr %i.adl, align 1    ; 2 uses
  %i.adn = getelementptr i8, ptr %0, i64 32
  %i.ado = load <4 x i32>, ptr %i.adn, align 1    ; 2 uses
  %i.adp = getelementptr i8, ptr %0, i64 48
  %i.adq = load <2 x i64>, ptr %i.adp, align 1    ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.l
  %.01198 = phi i32 [ 0, %bb.k ], [ %i.aff, %bb.l ] ; 2 uses
  %.010861197 = phi <2 x i64> [ %i.adq, %bb.k ], [ %i.afb, %bb.l ]
  %.010871196 = phi <4 x i32> [ %i.ado, %bb.k ], [ %i.afd, %bb.l ]
  %.010881195 = phi <4 x i32> [ %i.adm, %bb.k ], [ %i.afe, %bb.l ] ; 2 uses
  %.010891194 = phi <4 x i32> [ %i.adk, %bb.k ], [ %i.aeu, %bb.l ]
  %i.adr = add <4 x i32> %.010881195, %.010891194 ; 2 uses
  %i.ads = bitcast <4 x i32> %i.adr to <2 x i64>
  %i.adt = xor <2 x i64> %.010861197, %i.ads
  %i.adu = bitcast <2 x i64> %i.adt to <16 x i8>
  %i.adv = shufflevector <16 x i8> %i.adu, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.adw = bitcast <16 x i8> %i.adv to <4 x i32>
  %i.adx = add <4 x i32> %.010871196, %i.adw      ; 2 uses
  %i.ady = xor <4 x i32> %i.adx, %.010881195      ; 2 uses
  %i.adz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ady, <4 x i32> %i.ady, <4 x i32> splat (i32 12)) ; 2 uses
  %i.aea = add <4 x i32> %i.adz, %i.adr           ; 2 uses
  %i.aeb = shufflevector <4 x i32> %i.aea, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aec = bitcast <4 x i32> %i.aea to <16 x i8>
  %i.aed = xor <16 x i8> %i.adv, %i.aec
  %i.aee = shufflevector <16 x i8> %i.aed, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.aef = bitcast <16 x i8> %i.aee to <4 x i32>  ; 2 uses
  %i.aeg = add <4 x i32> %i.adx, %i.aef           ; 2 uses
  %i.aeh = shufflevector <4 x i32> %i.aef, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.aei = xor <4 x i32> %i.aeg, %i.adz           ; 2 uses
  %i.aej = shufflevector <4 x i32> %i.aeg, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.aek = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aei, <4 x i32> %i.aei, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ael = add <4 x i32> %i.aek, %i.aeb           ; 2 uses
  %i.aem = xor <4 x i32> %i.ael, %i.aeh
  %i.aen = bitcast <4 x i32> %i.aem to <16 x i8>
  %i.aeo = shufflevector <16 x i8> %i.aen, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.aep = bitcast <16 x i8> %i.aeo to <4 x i32>
  %i.aeq = add <4 x i32> %i.aej, %i.aep           ; 2 uses
  %i.aer = xor <4 x i32> %i.aeq, %i.aek           ; 2 uses
  %i.aes = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aer, <4 x i32> %i.aer, <4 x i32> splat (i32 12)) ; 2 uses
  %i.aet = add <4 x i32> %i.aes, %i.ael           ; 2 uses
  %i.aeu = shufflevector <4 x i32> %i.aet, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.aev = bitcast <4 x i32> %i.aet to <16 x i8>
  %i.aew = xor <16 x i8> %i.aeo, %i.aev
  %i.aex = shufflevector <16 x i8> %i.aew, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.aey = bitcast <16 x i8> %i.aex to <4 x i32>  ; 2 uses
  %i.aez = add <4 x i32> %i.aeq, %i.aey           ; 2 uses
  %i.afa = shufflevector <4 x i32> %i.aey, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.afb = bitcast <4 x i32> %i.afa to <2 x i64>
  %i.afc = xor <4 x i32> %i.aez, %i.aes           ; 2 uses
  %i.afd = shufflevector <4 x i32> %i.aez, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.afe = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.afc, <4 x i32> %i.afc, <4 x i32> splat (i32 7)) ; 2 uses
  %i.aff = add nuw nsw i32 %.01198, 2
  %i.afg = icmp samesign ult i32 %.01198, 18
  br i1 %i.afg, label %bb.l, label %iter.check, !llvm.loop !9

iter.check:                                       ; preds = %bb.l
  %i.afh = add <4 x i32> %i.aeu, %i.adk
  %i.afi = add <4 x i32> %i.afe, %i.adm
  %i.afj = add <4 x i32> %i.afd, %i.ado
  %i.afk = bitcast <2 x i64> %i.adq to <4 x i32>
  %i.afl = add <4 x i32> %i.afa, %i.afk
  store <4 x i32> %i.afh, ptr %i.a, align 16
  %i.afm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> %i.afi, ptr %i.afm, align 16
  %i.afn = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> %i.afj, ptr %i.afn, align 16
  %i.afo = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> %i.afl, ptr %i.afo, align 16
  %min.iters.check = icmp samesign ult i64 %.41107.lcssa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.afp = sub i64 %.4.lcssa1346, %.41102.lcssa1345
  %diff.check = icmp ugt i64 %i.afp, -16
  %i.afq = sub i64 %i.b, %.41102.lcssa1345
  %diff.check1347 = icmp ugt i64 %i.afq, -16
  %conflict.rdx = or i1 %diff.check, %diff.check1347
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1348 = icmp samesign ult i64 %.41107.lcssa, 16
  br i1 %min.iters.check1348, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.afr = and i64 %.41107.lcssa, 12
  %n.vec = and i64 %.41107.lcssa, 48              ; 5 uses
  %i.afs = getelementptr i8, ptr %.4.lcssa, i64 8
  %wide.load = load <8 x i8>, ptr %.4.lcssa, align 1
  %wide.load1349.a = load <8 x i8>, ptr %i.afs, align 1
  %i.aft = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.load1350 = load <8 x i8>, ptr %i.a, align 16
  %wide.load1351 = load <8 x i8>, ptr %i.aft, align 8
  %i.afu = xor <8 x i8> %wide.load1350, %wide.load
  %i.afv = xor <8 x i8> %wide.load1351, %wide.load1349.a
  %i.afw = getelementptr i8, ptr %.41102.lcssa, i64 8
  store <8 x i8> %i.afu, ptr %.41102.lcssa, align 1
  store <8 x i8> %i.afv, ptr %i.afw, align 1
  %i.afx = icmp eq i64 %n.vec, 16
  br i1 %i.afx, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.afy = getelementptr i8, ptr %.4.lcssa, i64 16
  %i.afz = getelementptr i8, ptr %.4.lcssa, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.afy, align 1
  %wide.load1349.1.a = load <8 x i8>, ptr %i.afz, align 1
  %i.aga = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.agb = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %wide.load1350.1 = load <8 x i8>, ptr %i.aga, align 16
  %wide.load1351.1 = load <8 x i8>, ptr %i.agb, align 8
  %i.agc = xor <8 x i8> %wide.load1350.1, %wide.load.1
  %i.agd = xor <8 x i8> %wide.load1351.1, %wide.load1349.1.a
  %i.age = getelementptr i8, ptr %.41102.lcssa, i64 16
  %i.agf = getelementptr i8, ptr %.41102.lcssa, i64 24
  store <8 x i8> %i.agc, ptr %i.age, align 1
  store <8 x i8> %i.agd, ptr %i.agf, align 1
  %i.agg = icmp eq i64 %n.vec, 32
  br i1 %i.agg, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.agh = getelementptr i8, ptr %.4.lcssa, i64 32
  %i.agi = getelementptr i8, ptr %.4.lcssa, i64 40
  %wide.load.2 = load <8 x i8>, ptr %i.agh, align 1
  %wide.load1349.2.a = load <8 x i8>, ptr %i.agi, align 1
  %i.agj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.agk = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %wide.load1350.2 = load <8 x i8>, ptr %i.agj, align 16
  %wide.load1351.2 = load <8 x i8>, ptr %i.agk, align 8
  %i.agl = xor <8 x i8> %wide.load1350.2, %wide.load.2
  %i.agm = xor <8 x i8> %wide.load1351.2, %wide.load1349.2.a
  %i.agn = getelementptr i8, ptr %.41102.lcssa, i64 32
  %i.ago = getelementptr i8, ptr %.41102.lcssa, i64 40
  store <8 x i8> %i.agl, ptr %i.agn, align 1
  store <8 x i8> %i.agm, ptr %i.ago, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %.41107.lcssa, %n.vec
  br i1 %cmp.n, label %.loopexit1358, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.afr, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1352 = and i64 %.41107.lcssa, 60          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1353 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1356, %vec.epilog.vector.body ] ; 4 uses
  %i.agp = getelementptr i8, ptr %.4.lcssa, i64 %index1353
  %wide.load1354 = load <4 x i8>, ptr %i.agp, align 1
  %i.agq = getelementptr i8, ptr %i.a, i64 %index1353
  %wide.load1355 = load <4 x i8>, ptr %i.agq, align 4
  %i.agr = xor <4 x i8> %wide.load1355, %wide.load1354
  %i.ags = getelementptr i8, ptr %.41102.lcssa, i64 %index1353
  store <4 x i8> %i.agr, ptr %i.ags, align 1
  %index.next1356 = add nuw i64 %index1353, 4     ; 2 uses
  %i.agt = icmp eq i64 %index.next1356, %n.vec1352
  br i1 %i.agt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1357 = icmp eq i64 %.41107.lcssa, %n.vec1352
  br i1 %cmp.n1357, label %.loopexit1358, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1352, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.41107.lcssa, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.agu = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.prol
  %i.agv = load i8, ptr %i.agu, align 1
  %i.agw = getelementptr i8, ptr %i.a, i64 %indvars.iv.prol
  %i.agx = load i8, ptr %i.agw, align 1
  %i.agy = xor i8 %i.agx, %i.agv
  %i.agz = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv.prol
  store i8 %i.agy, ptr %i.agz, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !11

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.aha = sub nsw i64 %indvars.iv.ph, %.41107.lcssa
  %i.ahb = icmp ugt i64 %i.aha, -4
  br i1 %i.ahb, label %.loopexit1358, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.ahc = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv
  %i.ahd = load i8, ptr %i.ahc, align 1
  %i.ahe = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.ahf = load i8, ptr %i.ahe, align 1
  %i.ahg = xor i8 %i.ahf, %i.ahd
  %i.ahh = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv
  store i8 %i.ahg, ptr %i.ahh, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ahi = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next
  %i.ahj = load i8, ptr %i.ahi, align 1
  %i.ahk = getelementptr i8, ptr %i.a, i64 %indvars.iv.next
  %i.ahl = load i8, ptr %i.ahk, align 1
  %i.ahm = xor i8 %i.ahl, %i.ahj
  %i.ahn = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv.next
  store i8 %i.ahm, ptr %i.ahn, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.aho = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next.1
  %i.ahp = load i8, ptr %i.aho, align 1
  %i.ahq = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.1
  %i.ahr = load i8, ptr %i.ahq, align 1
  %i.ahs = xor i8 %i.ahr, %i.ahp
  %i.aht = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv.next.1
  store i8 %i.ahs, ptr %i.aht, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.ahu = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next.2
  %i.ahv = load i8, ptr %i.ahu, align 1
  %i.ahw = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.2
  %i.ahx = load i8, ptr %i.ahw, align 1
  %i.ahy = xor i8 %i.ahx, %i.ahv
  %i.ahz = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv.next.2
  store i8 %i.ahy, ptr %i.ahz, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %.41107.lcssa
  br i1 %exitcond.not.3, label %.loopexit1358, label %vec.epilog.scalar.ph, !llvm.loop !12

.loopexit1358:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 64) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %.loopexit1358
  ret void
}

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind ssp uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = distinct !{!4, !13}
!5 = distinct !{!5, !13}
!6 = distinct !{!6, !13}
!7 = distinct !{!7, !13}
!8 = distinct !{!8, !13}
!9 = distinct !{!9, !13}
!10 = distinct !{!10, !13, !15, !16}
!11 = distinct !{!11, !17}
!12 = distinct !{!12, !13, !15}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"branch_weights", i32 4, i32 12}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
