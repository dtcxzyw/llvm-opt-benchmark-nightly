Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/poly1305_sse2?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@poly1305_blocks:bb.a
  %i.iz = add nuw <2 x i64> %i.eu, %.1718
  %i.ja = add <2 x i64> %i.iz, %i.fd
  %i.jb = add <2 x i64> %i.ja, %i.fp
  %i.jc = add <2 x i64> %i.jb, %i.gc
  %i.jd = add <2 x i64> %i.jc, %i.gf
  %i.je = add <2 x i64> %i.jd, %i.ih
  %i.jf = add <2 x i64> %i.je, %i.ig
  %i.jg = add <2 x i64> %i.jf, %i.ho
  %i.jh = add <2 x i64> %i.jg, %i.hz
  %i.ji = add <2 x i64> %i.jh, %i.id
  %i.jj = add <2 x i64> %i.ji, %i.ip              ; 2 uses
  %i.jk = lshr <2 x i64> %i.iy, splat (i64 26)
  %i.jl = lshr <2 x i64> %i.jj, splat (i64 26)
  %i.jm = and <2 x i64> %i.iy, splat (i64 67108863)
  %i.jn = and <2 x i64> %i.jj, splat (i64 67108863)
  %i.jo = add <2 x i64> %i.gg, %i.ie
  %i.jp = add <2 x i64> %i.jo, %i.ib
  %i.jq = add <2 x i64> %i.jp, %i.hh
  %i.jr = add <2 x i64> %i.jq, %i.hm
  %i.js = add <2 x i64> %i.jr, %i.hr
  %i.jt = add <2 x i64> %i.js, %i.hb
  %i.ju = add <2 x i64> %i.jt, %i.jk              ; 2 uses
  %i.jv = and <2 x i64> %i.jl, splat (i64 4294967295)
  %i.jw = mul nuw nsw <2 x i64> %i.jv, splat (i64 5)
  %i.jx = add nuw nsw <2 x i64> %i.jw, %i.iq      ; 2 uses
  %i.jy = lshr <2 x i64> %i.ju, splat (i64 26)
  %i.jz = lshr <2 x i64> %i.jx, splat (i64 26)
  %i.ka = and <2 x i64> %i.ju, splat (i64 67108863) ; 2 uses
  %i.kb = and <2 x i64> %i.jx, splat (i64 67108863) ; 2 uses
  %i.kc = add nuw nsw <2 x i64> %i.jy, %i.ir      ; 2 uses
  %i.kd = add nuw nsw <2 x i64> %i.jz, %i.jm      ; 2 uses
  %i.ke = lshr <2 x i64> %i.kc, splat (i64 26)
  %i.kf = and <2 x i64> %i.kc, splat (i64 67108863) ; 2 uses
  %i.kg = add nuw nsw <2 x i64> %i.ke, %i.jn      ; 2 uses
  %i.kh = getelementptr i8, ptr %.1765, i64 64    ; 2 uses
  %i.ki = add i64 %.1715764, -64                  ; 3 uses
  %i.kj = icmp ugt i64 %i.ki, 63
  br i1 %i.kj, label %bb.l, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %bb.l, %bb.j
  %.2736 = phi <2 x i64> [ %.0734, %bb.j ], [ %i.kg, %bb.l ] ; 2 uses
  %.2732 = phi <2 x i64> [ %.0730, %bb.j ], [ %i.kf, %bb.l ] ; 2 uses
  %.2728 = phi <2 x i64> [ %.0726, %bb.j ], [ %i.ka, %bb.l ] ; 2 uses
  %.2724 = phi <2 x i64> [ %.0722, %bb.j ], [ %i.kd, %bb.l ] ; 2 uses
  %.2721 = phi <2 x i64> [ %.0719, %bb.j ], [ %i.kb, %bb.l ] ; 2 uses
  %.2716 = phi i64 [ %.0714, %bb.j ], [ %i.ki, %bb.l ]
  %.2 = phi ptr [ %.0, %bb.j ], [ %i.kh, %bb.l ]  ; 3 uses
  %i.kk = icmp samesign ugt i64 %.2716, 31
  br i1 %i.kk, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.loopexit
  %i.kl = and <2 x i64> %.2736, splat (i64 4294967295) ; 5 uses
  %i.km = and <2 x i64> %i.ce, splat (i64 4294967295)
  %i.kn = mul nuw <2 x i64> %i.kl, %i.km
  %i.ko = and <2 x i64> %.2732, splat (i64 4294967295) ; 5 uses
  %i.kp = and <2 x i64> %i.ch, splat (i64 4294967295) ; 2 uses
  %i.kq = mul nuw <2 x i64> %i.ko, %i.kp
  %i.kr = mul nuw <2 x i64> %i.kl, %i.kp
  %i.ks = and <2 x i64> %i.ck, splat (i64 4294967295) ; 3 uses
  %i.kt = mul nuw <2 x i64> %i.ko, %i.ks
  %i.ku = mul nuw <2 x i64> %i.kl, %i.ks
  %i.kv = add <2 x i64> %i.kq, %i.kn
  %i.kw = and <2 x i64> %.2728, splat (i64 4294967295) ; 5 uses
  %i.kx = mul nuw <2 x i64> %i.kw, %i.ks
  %i.ky = and <2 x i64> %i.cm, splat (i64 4294967295) ; 4 uses
  %i.kz = mul nuw <2 x i64> %i.kl, %i.ky
  %i.la = add <2 x i64> %i.kt, %i.kr
  %i.lb = and <2 x i64> %.2724, splat (i64 4294967295) ; 5 uses
  %i.lc = mul nuw <2 x i64> %i.lb, %i.ky
  %i.ld = mul nuw <2 x i64> %i.kw, %i.ky
  %i.le = add <2 x i64> %i.kv, %i.kx
  %i.lf = mul nuw <2 x i64> %i.ko, %i.ky
  %i.lg = bitcast <4 x i32> %.0745.in to <2 x i64>
  %i.lh = and <2 x i64> %i.lg, splat (i64 4294967295) ; 5 uses
  %i.li = mul nuw <2 x i64> %i.ko, %i.lh
  %i.lj = add <2 x i64> %i.le, %i.lc
  %i.lk = mul nuw <2 x i64> %i.kl, %i.lh
  %i.ll = add <2 x i64> %i.la, %i.ld
  %i.lm = and <2 x i64> %.2721, splat (i64 4294967295) ; 5 uses
  %i.ln = mul nuw <2 x i64> %i.lm, %i.lh
  %i.lo = add <2 x i64> %i.lf, %i.ku
  %i.lp = mul nuw <2 x i64> %i.lb, %i.lh
  %i.lq = add <2 x i64> %i.li, %i.kz
  %i.lr = mul nuw <2 x i64> %i.kw, %i.lh
  %i.ls = mul nuw <2 x i64> %i.kw, %i.cd
  %i.lt = add <2 x i64> %i.lj, %i.ln              ; 2 uses
  %i.lu = mul nuw <2 x i64> %i.ko, %i.cd
  %i.lv = add <2 x i64> %i.ll, %i.lp
  %i.lw = mul nuw <2 x i64> %i.lm, %i.cd
  %i.lx = add <2 x i64> %i.lo, %i.lr
  %i.ly = mul nuw <2 x i64> %i.lb, %i.cd
  %i.lz = add <2 x i64> %i.lq, %i.ls
  %i.ma = mul nuw <2 x i64> %i.lb, %i.cg
  %i.mb = add <2 x i64> %i.lu, %i.lk
  %i.mc = mul nuw <2 x i64> %i.kw, %i.cg
  %i.md = add <2 x i64> %i.lv, %i.lw              ; 2 uses
  %i.me = mul nuw <2 x i64> %i.lm, %i.cg
  %i.mf = add <2 x i64> %i.lx, %i.ly
  %i.mg = mul nuw <2 x i64> %i.lm, %i.cj
  %i.mh = add <2 x i64> %i.lz, %i.ma
  %i.mi = mul nuw <2 x i64> %i.lb, %i.cj
  %i.mj = add <2 x i64> %i.mb, %i.mc
  %i.mk = mul nuw <2 x i64> %i.lm, %i.cl
  %i.ml = add <2 x i64> %i.mf, %i.me              ; 2 uses
  %i.mm = add <2 x i64> %i.mh, %i.mg              ; 2 uses
  %i.mn = add <2 x i64> %i.mj, %i.mi
  %i.mo = add <2 x i64> %i.mn, %i.mk              ; 2 uses
  %.not755 = icmp eq ptr %.2, null
  br i1 %.not755, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.mp = load <8 x i32>, ptr %.2, align 1        ; 2 uses
  %i.mq = shufflevector <8 x i32> %i.mp, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.mr = shufflevector <8 x i32> %i.mp, <8 x i32> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ms = shufflevector <4 x i32> %i.mq, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.mt = bitcast <4 x i32> %i.ms to <2 x i64>
  %i.mu = shufflevector <4 x i32> %i.mq, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.mv = bitcast <4 x i32> %i.mu to <2 x i64>
  %i.mw = shufflevector <4 x i32> %i.mr, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.mx = bitcast <4 x i32> %i.mw to <2 x i64>
  %i.my = shufflevector <4 x i32> %i.mr, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.mz = bitcast <4 x i32> %i.my to <2 x i64>
  %i.na = shl nuw nsw <2 x i64> %i.mv, splat (i64 6)
  %i.nb = shl nuw nsw <2 x i64> %i.mx, splat (i64 12)
  %i.nc = shl nuw nsw <2 x i64> %i.mz, splat (i64 18)
  %i.nd = add <2 x i64> %i.lt, %i.mt
  %i.ne = add <2 x i64> %i.na, %i.md
  %i.nf = add <2 x i64> %i.nb, %i.ml
  %i.ng = add <2 x i64> %i.nc, %i.mm
  %i.nh = add <2 x i64> %i.mo, %.1718
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1743 = phi <2 x i64> [ %i.nh, %bb.n ], [ %i.mo, %bb.m ]
  %.0741 = phi <2 x i64> [ %i.ng, %bb.n ], [ %i.mm, %bb.m ] ; 2 uses
  %.0740 = phi <2 x i64> [ %i.nf, %bb.n ], [ %i.ml, %bb.m ]
  %.0739 = phi <2 x i64> [ %i.ne, %bb.n ], [ %i.md, %bb.m ]
  %.0738 = phi <2 x i64> [ %i.nd, %bb.n ], [ %i.lt, %bb.m ] ; 2 uses
  %i.ni = lshr <2 x i64> %.0738, splat (i64 26)
  %i.nj = lshr <2 x i64> %.0741, splat (i64 26)
  %i.nk = and <2 x i64> %.0738, splat (i64 67108863)
  %i.nl = and <2 x i64> %.0741, splat (i64 67108863)
  %i.nm = add <2 x i64> %i.ni, %.0739             ; 2 uses
  %i.nn = add <2 x i64> %i.nj, %.1743             ; 2 uses
  %i.no = lshr <2 x i64> %i.nm, splat (i64 26)
  %i.np = lshr <2 x i64> %i.nn, splat (i64 26)
  %i.nq = and <2 x i64> %i.nm, splat (i64 67108863)
  %i.nr = and <2 x i64> %i.nn, splat (i64 67108863)
  %i.ns = add <2 x i64> %i.no, %.0740             ; 2 uses
  %i.nt = and <2 x i64> %i.np, splat (i64 4294967295)
  %i.nu = mul nuw nsw <2 x i64> %i.nt, splat (i64 5)
  %i.nv = add nuw nsw <2 x i64> %i.nu, %i.nk      ; 2 uses
  %i.nw = lshr <2 x i64> %i.ns, splat (i64 26)
  %i.nx = lshr <2 x i64> %i.nv, splat (i64 26)
  %i.ny = and <2 x i64> %i.ns, splat (i64 67108863)
  %i.nz = and <2 x i64> %i.nv, splat (i64 67108863)
  %i.oa = add nuw nsw <2 x i64> %i.nw, %i.nl      ; 2 uses
  %i.ob = add nuw nsw <2 x i64> %i.nx, %i.nq
  %i.oc = lshr <2 x i64> %i.oa, splat (i64 26)
  %i.od = and <2 x i64> %i.oa, splat (i64 67108863)
  %i.oe = add nuw nsw <2 x i64> %i.oc, %i.nr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  %.3737 = phi <2 x i64> [ %i.oe, %bb.o ], [ %.2736, %.loopexit ] ; 3 uses
  %.3733 = phi <2 x i64> [ %i.od, %bb.o ], [ %.2732, %.loopexit ] ; 3 uses
  %.3729 = phi <2 x i64> [ %i.ny, %bb.o ], [ %.2728, %.loopexit ] ; 3 uses
  %.3725 = phi <2 x i64> [ %i.ob, %bb.o ], [ %.2724, %.loopexit ] ; 3 uses
  %.3 = phi <2 x i64> [ %i.nz, %bb.o ], [ %.2721, %.loopexit ] ; 3 uses
  %.not756 = icmp eq ptr %.2, null
  br i1 %.not756, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.of = bitcast <2 x i64> %.3 to <4 x i32>
  %i.og = shufflevector <4 x i32> %i.of, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.oh = bitcast <4 x i32> %i.og to <2 x i64>
  %i.oi = bitcast <2 x i64> %.3725 to <4 x i32>
  %i.oj = shufflevector <4 x i32> %i.oi, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ok = bitcast <4 x i32> %i.oj to <2 x i64>
  %i.ol = bitcast <2 x i64> %.3729 to <4 x i32>
  %i.om = shufflevector <4 x i32> %i.ol, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.on = bitcast <4 x i32> %i.om to <2 x i64>
  %i.oo = bitcast <2 x i64> %.3733 to <4 x i32>
  %i.op = shufflevector <4 x i32> %i.oo, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.oq = bitcast <4 x i32> %i.op to <2 x i64>
  %i.or = bitcast <2 x i64> %.3737 to <4 x i32>
  %i.os = shufflevector <4 x i32> %i.or, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ot = bitcast <4 x i32> %i.os to <2 x i64>
  %i.ou = shufflevector <2 x i64> %i.oh, <2 x i64> %i.ok, <2 x i32> <i32 0, i32 2>
  %i.ov = shufflevector <2 x i64> %i.on, <2 x i64> %i.oq, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.ou, ptr %0, align 8
  %i.ow = getelementptr i8, ptr %0, i64 16
  store <2 x i64> %i.ov, ptr %i.ow, align 8
  %i.ox = getelementptr i8, ptr %0, i64 32
  %i.oy = extractelement <2 x i64> %i.ot, i64 0
  store i64 %i.oy, ptr %i.ox, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.oz = shufflevector <2 x i64> %.3, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pa = add <2 x i64> %.3, %i.oz
  %i.pb = shufflevector <2 x i64> %.3725, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pc = add <2 x i64> %.3725, %i.pb
  %i.pd = shufflevector <2 x i64> %.3729, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pe = add <2 x i64> %.3729, %i.pd
  %i.pf = shufflevector <2 x i64> %.3733, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pg = add <2 x i64> %.3733, %i.pf
  %i.ph = shufflevector <2 x i64> %.3737, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pi = add <2 x i64> %.3737, %i.ph
  %i.pj = bitcast <2 x i64> %i.pa to <4 x i32>
  %i.pk = extractelement <4 x i32> %i.pj, i64 0   ; 2 uses
  %i.pl = lshr i32 %i.pk, 26
  %i.pm = and i32 %i.pk, 67108863
  %i.pn = bitcast <2 x i64> %i.pc to <4 x i32>
  %i.po = extractelement <4 x i32> %i.pn, i64 0
  %i.pp = add i32 %i.pl, %i.po                    ; 2 uses
  %i.pq = lshr i32 %i.pp, 26
  %i.pr = and i32 %i.pp, 67108863
  %i.ps = bitcast <2 x i64> %i.pe to <4 x i32>
  %i.pt = extractelement <4 x i32> %i.ps, i64 0
  %i.pu = add i32 %i.pq, %i.pt                    ; 2 uses
  %i.pv = lshr i32 %i.pu, 26
  %i.pw = and i32 %i.pu, 67108863
  %i.px = bitcast <2 x i64> %i.pg to <4 x i32>
  %i.py = extractelement <4 x i32> %i.px, i64 0
  %i.pz = add i32 %i.pv, %i.py                    ; 2 uses
  %i.qa = lshr i32 %i.pz, 26
  %i.qb = and i32 %i.pz, 67108863
  %i.qc = bitcast <2 x i64> %i.pi to <4 x i32>
  %i.qd = extractelement <4 x i32> %i.qc, i64 0
  %i.qe = add i32 %i.qa, %i.qd
  %i.qf = zext nneg i32 %i.pm to i64
  %i.qg = zext nneg i32 %i.pr to i64              ; 2 uses
  %i.qh = shl nuw nsw i64 %i.qg, 26
  %.masked = and i64 %i.qh, 17592118935552
  %i.qi = or disjoint i64 %.masked, %i.qf
  %i.qj = lshr i64 %i.qg, 18
  %i.qk = zext nneg i32 %i.pw to i64
  %i.ql = shl nuw nsw i64 %i.qk, 8
  %i.qm = or disjoint i64 %i.ql, %i.qj
  %i.qn = zext nneg i32 %i.qb to i64              ; 2 uses
  %i.qo = shl nuw nsw i64 %i.qn, 34
  %.masked757 = and i64 %i.qo, 17575006175232
  %i.qp = or disjoint i64 %i.qm, %.masked757
  %i.qq = lshr i64 %i.qn, 10
  %i.qr = zext i32 %i.qe to i64                   ; 2 uses
  %i.qs = shl nuw nsw i64 %i.qr, 16
  %i.qt = lshr i64 %i.qr, 26
  %.masked758 = and i64 %i.qs, 4398046445568
  %i.qu = or disjoint i64 %.masked758, %i.qq
  %i.qv = mul nuw nsw i64 %i.qt, 5
  %i.qw = add nuw nsw i64 %i.qv, %i.qi            ; 2 uses
  %i.qx = lshr i64 %i.qw, 44
  %i.qy = and i64 %i.qw, 17592186044415
  %i.qz = add nuw nsw i64 %i.qp, %i.qx            ; 2 uses
  %i.ra = lshr i64 %i.qz, 44
  %i.rb = and i64 %i.qz, 17592186044415
  %i.rc = add nuw nsw i64 %i.ra, %i.qu            ; 3 uses
  %i.rd = lshr i64 %i.rc, 42
  %i.re = and i64 %i.rc, 4398046511103
  %i.rf = mul nuw nsw i64 %i.rd, 5
  %i.rg = add nuw nsw i64 %i.rf, %i.qy            ; 2 uses
  %i.rh = lshr i64 %i.rg, 44
  %i.ri = and i64 %i.rg, 17592186044415           ; 2 uses
  %i.rj = add nuw nsw i64 %i.rh, %i.rb            ; 2 uses
  %i.rk = add nuw nsw i64 %i.ri, 5                ; 2 uses
  %i.rl = lshr i64 %i.rk, 44
  %i.rm = add nuw nsw i64 %i.rl, %i.rj            ; 2 uses
  %i.rn = lshr i64 %i.rm, 44
  %i.ro = or i64 %i.rc, -4398046511104
  %i.rp = add nsw i64 %i.ro, %i.rn                ; 2 uses
  %i.rq = load volatile i64, ptr @optblocker_u64, align 8
  %i.rr = lshr i64 %i.rp, 63
  %i.rs = lshr i64 %i.rq, 2
  %i.rt = xor i64 %i.rs, %i.rr                    ; 2 uses
  %i.ru = add nsw i64 %i.rt, -1                   ; 2 uses
  %i.rv = sub nsw i64 0, %i.rt                    ; 3 uses
  %i.rw = and i64 %i.ri, %i.rv
  %i.rx = and i64 %i.ru, 17592186044415           ; 2 uses
  %i.ry = and i64 %i.rx, %i.rk
  %i.rz = or i64 %i.rw, %i.ry
  %i.sa = and i64 %i.rj, %i.rv
  %i.sb = and i64 %i.rx, %i.rm
  %i.sc = or i64 %i.sa, %i.sb
  %i.sd = and i64 %i.re, %i.rv
  %i.se = and i64 %i.ru, %i.rp
  %i.sf = or i64 %i.se, %i.sd
  store i64 %i.rz, ptr %0, align 8
  %i.sg = getelementptr i8, ptr %0, i64 8
  store i64 %i.sc, ptr %i.sg, align 8
  %i.sh = getelementptr i8, ptr %0, i64 16
  store i64 %i.sf, ptr %i.sh, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @poly1305_finish_ext(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 8 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = and i64 %2, 16
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load <2 x i64>, ptr %1, align 1
  store <2 x i64> %i.c, ptr %i.a, align 16
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.022.i = phi ptr [ %i.d, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.neg = phi i64 [ 16, %bb.c ], [ 32, %bb.b ]
  %i.f = phi i64 [ 16, %bb.c ], [ 0, %bb.b ]      ; 2 uses
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %i.g = and i64 %2, 8
  %.not26.i = icmp eq i64 %i.g, 0
  br i1 %.not26.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call ptr @__memcpy_chk(ptr noundef nonnull %.0.i, ptr noundef nonnull %.022.i, i64 noundef 8, i64 noundef %.neg) #12, !alias.scope !20 ; 0 uses
  %i.i = getelementptr i8, ptr %.022.i, i64 8
  %i.j = or disjoint i64 %i.f, 8
  %i.k = getelementptr i8, ptr %.0.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.123.i = phi ptr [ %i.i, %bb.e ], [ %.022.i, %bb.d ] ; 3 uses
  %i.l = phi i64 [ %i.j, %bb.e ], [ %i.f, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %i.k, %bb.e ], [ %.0.i, %bb.d ] ; 3 uses
  %i.m = and i64 %2, 4
  %.not27.i = icmp eq i64 %i.m, 0
  br i1 %.not27.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 32, %i.l
  %i.o = call ptr @__memcpy_chk(ptr noundef nonnull %.1.i, ptr noundef nonnull %.123.i, i64 noundef 4, i64 noundef %i.n) #12, !alias.scope !21 ; 0 uses
  %i.p = getelementptr i8, ptr %.123.i, i64 4
  %i.q = add nuw nsw i64 %i.l, 4
  %i.r = getelementptr i8, ptr %.1.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.224.i = phi ptr [ %i.p, %bb.g ], [ %.123.i, %bb.f ] ; 3 uses
  %i.s = phi i64 [ %i.q, %bb.g ], [ %i.l, %bb.f ]
  %.2.i = phi ptr [ %i.r, %bb.g ], [ %.1.i, %bb.f ] ; 3 uses
  %i.t = and i64 %2, 2
  %.not28.i = icmp eq i64 %i.t, 0
  br i1 %.not28.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = sub nuw nsw i64 32, %i.s
  %i.v = call ptr @__memcpy_chk(ptr noundef nonnull %.2.i, ptr noundef nonnull %.224.i, i64 noundef 2, i64 noundef %i.u) #12, !alias.scope !22 ; 0 uses
  %i.w = getelementptr i8, ptr %.224.i, i64 2
  %i.x = getelementptr i8, ptr %.2.i, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.325.i = phi ptr [ %i.w, %bb.i ], [ %.224.i, %bb.h ]
  %.3.i = phi ptr [ %i.x, %bb.i ], [ %.2.i, %bb.h ]
  %i.y = and i64 %2, 1
  %.not29.i = icmp eq i64 %i.y, 0
  br i1 %.not29.i, label %poly1305_block_copy31.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = load i8, ptr %.325.i, align 1
  store i8 %i.z, ptr %.3.i, align 1
  br label %poly1305_block_copy31.exit

poly1305_block_copy31.exit:                       ; preds = %bb.j, %bb.k
  %.not31 = icmp eq i64 %2, 16
  br i1 %.not31, label %bb.m, label %bb.l

bb.l:                                             ; preds = %poly1305_block_copy31.exit
  %i.aa = getelementptr i8, ptr %i.a, i64 %2
  store i8 1, ptr %i.aa, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %poly1305_block_copy31.exit
  %i.ab = icmp ugt i64 %2, 15
  %i.ac = select i1 %i.ab, i64 4, i64 8
  %i.ad = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = or i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8
  call fastcc void @poly1305_blocks(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.a
  %i.ag = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %.not32 = icmp eq i64 %i.ai, 0
  br i1 %.not32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = add i64 %2, -17
  %or.cond = icmp ult i64 %i.aj, -16
  %storemerge.v = select i1 %or.cond, i64 16, i64 32
end_hunk_0
