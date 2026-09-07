Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_blendfillrect?download=true
begin_hunk_0_@SDL_BlendFillRect_RGB555:bb.a
  %spec.store.select27 = tail call i32 @llvm.umin.i32(i32 %i.ik, i32 255)
  %i.il = mul nuw nsw i32 %i.ic, %i.b
  %i.im = udiv i32 %i.il, 255
  %i.in = add nuw nsw i32 %i.im, %i.hk
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.in, i32 255)
  %i.io = mul nuw nsw i32 %i.ih, %i.b
  %i.ip = udiv i32 %i.io, 255
  %i.iq = add nuw nsw i32 %i.ip, %i.hl
  %spec.store.select39 = tail call i32 @llvm.umin.i32(i32 %i.iq, i32 255)
  %i.ir = shl nuw nsw i32 %spec.store.select27, 7
  %i.is = and i32 %i.ir, 31744
  %i.it = shl nuw nsw i32 %spec.store.select, 2
  %i.iu = and i32 %i.it, 992
  %i.iv = or disjoint i32 %i.iu, %i.is
  %i.iw = lshr i32 %spec.store.select39, 3
  %i.ix = or disjoint i32 %i.iv, %i.iw
  %i.iy = trunc nuw nsw i32 %i.ix to i16
  store i16 %i.iy, ptr %.1576, align 2
  %i.iz = getelementptr inbounds nuw i8, ptr %.1576, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.1581 = phi i32 [ %.0580, %bb.j ], [ %i.hh, %bb.i ]
  %.2577 = phi ptr [ %i.iz, %bb.j ], [ %.0575676, %bb.i ] ; 3 uses
  %i.ja = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.jb = load i16, ptr %.2577, align 2
  %i.jc = zext i16 %i.jb to i32                   ; 3 uses
  %i.jd = lshr i32 %i.jc, 10
  %i.je = and i32 %i.jd, 31
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1
  %i.ji = zext i8 %i.jh to i32
  %i.jj = lshr i32 %i.jc, 5
  %i.jk = and i32 %i.jj, 31
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = zext i8 %i.jn to i32
  %i.jp = and i32 %i.jc, 31
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = zext i8 %i.js to i32
  %i.ju = mul nuw nsw i32 %i.ji, %i.b
  %i.jv = udiv i32 %i.ju, 255
  %i.jw = add nuw nsw i32 %i.jv, %i.hj
  %spec.store.select3 = tail call i32 @llvm.umin.i32(i32 %i.jw, i32 255)
  %i.jx = mul nuw nsw i32 %i.jo, %i.b
  %i.jy = udiv i32 %i.jx, 255
  %i.jz = add nuw nsw i32 %i.jy, %i.hk
  %spec.store.select28 = tail call i32 @llvm.umin.i32(i32 %i.jz, i32 255)
  %i.ka = mul nuw nsw i32 %i.jt, %i.b
  %i.kb = udiv i32 %i.ka, 255
  %i.kc = add nuw nsw i32 %i.kb, %i.hl
  %spec.store.select4 = tail call i32 @llvm.umin.i32(i32 %i.kc, i32 255)
  %i.kd = shl nuw nsw i32 %spec.store.select3, 7
  %i.ke = and i32 %i.kd, 31744
  %i.kf = shl nuw nsw i32 %spec.store.select28, 2
  %i.kg = and i32 %i.kf, 992
  %i.kh = or disjoint i32 %i.kg, %i.ke
  %i.ki = lshr i32 %spec.store.select4, 3
  %i.kj = or disjoint i32 %i.kh, %i.ki
  %i.kk = trunc nuw nsw i32 %i.kj to i16
  store i16 %i.kk, ptr %.2577, align 2
  %i.kl = getelementptr inbounds nuw i8, ptr %.2577, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.2582 = phi i32 [ %.1581, %bb.k ], [ %i.hh, %bb.i ]
  %.3578 = phi ptr [ %i.kl, %bb.k ], [ %.0575676, %bb.i ] ; 3 uses
  %i.km = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.kn = load i16, ptr %.3578, align 2
  %i.ko = zext i16 %i.kn to i32                   ; 3 uses
  %i.kp = lshr i32 %i.ko, 10
  %i.kq = and i32 %i.kp, 31
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1
  %i.ku = zext i8 %i.kt to i32
  %i.kv = lshr i32 %i.ko, 5
  %i.kw = and i32 %i.kv, 31
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1
  %i.la = zext i8 %i.kz to i32
  %i.lb = and i32 %i.ko, 31
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1
  %i.lf = zext i8 %i.le to i32
  %i.lg = mul nuw nsw i32 %i.ku, %i.b
  %i.lh = udiv i32 %i.lg, 255
  %i.li = add nuw nsw i32 %i.lh, %i.hj
  %spec.store.select5 = tail call i32 @llvm.umin.i32(i32 %i.li, i32 255)
  %i.lj = mul nuw nsw i32 %i.la, %i.b
  %i.lk = udiv i32 %i.lj, 255
  %i.ll = add nuw nsw i32 %i.lk, %i.hk
  %spec.store.select29 = tail call i32 @llvm.umin.i32(i32 %i.ll, i32 255)
  %i.lm = mul nuw nsw i32 %i.lf, %i.b
  %i.ln = udiv i32 %i.lm, 255
  %i.lo = add nuw nsw i32 %i.ln, %i.hl
  %spec.store.select6 = tail call i32 @llvm.umin.i32(i32 %i.lo, i32 255)
  %i.lp = shl nuw nsw i32 %spec.store.select5, 7
  %i.lq = and i32 %i.lp, 31744
  %i.lr = shl nuw nsw i32 %spec.store.select29, 2
  %i.ls = and i32 %i.lr, 992
  %i.lt = or disjoint i32 %i.ls, %i.lq
  %i.lu = lshr i32 %spec.store.select6, 3
  %i.lv = or disjoint i32 %i.lt, %i.lu
  %i.lw = trunc nuw nsw i32 %i.lv to i16
  store i16 %i.lw, ptr %.3578, align 2
  %i.lx = getelementptr inbounds nuw i8, ptr %.3578, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.3583 = phi i32 [ %.2582, %bb.l ], [ %i.hh, %bb.i ] ; 2 uses
  %.4579 = phi ptr [ %i.lx, %bb.l ], [ %.0575676, %bb.i ] ; 3 uses
  %i.ly = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.lz = load i16, ptr %.4579, align 2
  %i.ma = zext i16 %i.lz to i32                   ; 3 uses
  %i.mb = lshr i32 %i.ma, 10
  %i.mc = and i32 %i.mb, 31
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1
  %i.mg = zext i8 %i.mf to i32
  %i.mh = lshr i32 %i.ma, 5
  %i.mi = and i32 %i.mh, 31
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1
  %i.mm = zext i8 %i.ml to i32
  %i.mn = and i32 %i.ma, 31
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1
  %i.mr = zext i8 %i.mq to i32
  %i.ms = mul nuw nsw i32 %i.mg, %i.b
  %i.mt = udiv i32 %i.ms, 255
  %i.mu = add nuw nsw i32 %i.mt, %i.hj
  %spec.store.select7 = tail call i32 @llvm.umin.i32(i32 %i.mu, i32 255)
  %i.mv = mul nuw nsw i32 %i.mm, %i.b
  %i.mw = udiv i32 %i.mv, 255
  %i.mx = add nuw nsw i32 %i.mw, %i.hk
  %spec.store.select30 = tail call i32 @llvm.umin.i32(i32 %i.mx, i32 255)
  %i.my = mul nuw nsw i32 %i.mr, %i.b
  %i.mz = udiv i32 %i.my, 255
  %i.na = add nuw nsw i32 %i.mz, %i.hl
  %spec.store.select8 = tail call i32 @llvm.umin.i32(i32 %i.na, i32 255)
  %i.nb = shl nuw nsw i32 %spec.store.select7, 7
  %i.nc = and i32 %i.nb, 31744
  %i.nd = shl nuw nsw i32 %spec.store.select30, 2
  %i.ne = and i32 %i.nd, 992
  %i.nf = or disjoint i32 %i.ne, %i.nc
  %i.ng = lshr i32 %spec.store.select8, 3
  %i.nh = or disjoint i32 %i.nf, %i.ng
  %i.ni = trunc nuw nsw i32 %i.nh to i16
  store i16 %i.ni, ptr %.4579, align 2
  %i.nj = getelementptr inbounds nuw i8, ptr %.4579, i64 2 ; 2 uses
  %i.nk = add nsw i32 %.3583, -1
  %i.nl = icmp sgt i32 %.3583, 1
  br i1 %i.nl, label %bb.j, label %bb.n, !llvm.loop !6

bb.n:                                             ; preds = %bb.m
  %i.nm = getelementptr inbounds [2 x i8], ptr %i.nj, i64 %i.hm
  %.not632 = icmp eq i32 %i.hn, 0
  br i1 %.not632, label %.loopexit, label %bb.i, !llvm.loop !7

bb.o:                                             ; preds = %.split, %.split
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.no = load i32, ptr %i.nn, align 4            ; 2 uses
  %.not631672 = icmp eq i32 %i.no, 0
  br i1 %.not631672, label %.loopexit, label %.lr.ph674

.lr.ph674:                                        ; preds = %bb.o
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ns = load i32, ptr %i.nr, align 4
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nu = load i32, ptr %i.nt, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 5
  %i.ny = load i8, ptr %i.nx, align 1
  %i.nz = zext i8 %i.ny to i32
  %i.oa = sdiv i32 %i.nu, %i.nz                   ; 2 uses
  %i.ob = mul nsw i32 %i.ns, %i.oa
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [2 x i8], ptr %i.nq, i64 %i.oc
  %i.oe = load i32, ptr %1, align 4
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [2 x i8], ptr %i.od, i64 %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oi = load i32, ptr %i.oh, align 4            ; 3 uses
  %i.oj = sub nsw i32 %i.oa, %i.oi
  %i.ok = add nsw i32 %i.oi, 3
  %i.ol = sdiv i32 %i.ok, 4                       ; 4 uses
  %i.om = and i32 %i.oi, 3
  %7 = sext i32 %i.oj to i64
  %8 = insertelement <2 x i8> poison, i8 %4, i64 0
  %9 = insertelement <2 x i8> %8, i8 %3, i64 1    ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph674, %bb.u
  %.in689 = phi i32 [ %i.no, %.lr.ph674 ], [ %i.on, %bb.u ]
  %.0595673 = phi ptr [ %i.og, %.lr.ph674 ], [ %i.ro, %bb.u ] ; 4 uses
  %i.on = add nsw i32 %.in689, -1                 ; 2 uses
  switch i32 %i.om, label %default.unreachable [
    i32 0, label %bb.q
    i32 3, label %bb.r
    i32 2, label %bb.s
    i32 1, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p, %bb.t
  %.0600 = phi i32 [ %i.ol, %bb.p ], [ %i.rm, %bb.t ]
  %.1596 = phi ptr [ %.0595673, %bb.p ], [ %i.rl, %bb.t ] ; 3 uses
  %i.oo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.op = load i16, ptr %.1596, align 2
  %i.oq = zext i16 %i.op to i32                   ; 3 uses
  %i.or = lshr i32 %i.oq, 10
  %i.os = and i32 %i.or, 31
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1
  %i.ow = lshr i32 %i.oq, 5
  %i.ox = and i32 %i.ow, 31
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1
  %i.pb = and i32 %i.oq, 31
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1
  %narrow633 = tail call i8 @llvm.uadd.sat.i8(i8 %i.pe, i8 %5)
  %10 = insertelement <2 x i8> poison, i8 %i.pa, i64 0
  %11 = insertelement <2 x i8> %10, i8 %i.ov, i64 1
  %12 = tail call <2 x i8> @llvm.uadd.sat.v2i8(<2 x i8> %11, <2 x i8> %9)
  %13 = lshr <2 x i8> %12, splat (i8 3)
  %14 = zext nneg <2 x i8> %13 to <2 x i16>
  %15 = shl nuw nsw <2 x i16> %14, <i16 5, i16 10> ; 2 uses
  %shift = shufflevector <2 x i16> %15, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i16> %15, %shift
  %16 = extractelement <2 x i16> %foldExtExtBinop, i64 0
  %17 = lshr i8 %narrow633, 3
  %18 = zext nneg i8 %17 to i16
  %i.pf = or disjoint i16 %16, %18
  store i16 %i.pf, ptr %.1596, align 2
  %i.pg = getelementptr inbounds nuw i8, ptr %.1596, i64 2
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1601 = phi i32 [ %.0600, %bb.q ], [ %i.ol, %bb.p ]
  %.2597 = phi ptr [ %i.pg, %bb.q ], [ %.0595673, %bb.p ] ; 3 uses
  %i.ph = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.pi = load i16, ptr %.2597, align 2
  %i.pj = zext i16 %i.pi to i32                   ; 3 uses
  %i.pk = lshr i32 %i.pj, 10
  %i.pl = and i32 %i.pk, 31
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1
  %i.pp = lshr i32 %i.pj, 5
  %i.pq = and i32 %i.pp, 31
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1
  %i.pu = and i32 %i.pj, 31
  %i.pv = zext nneg i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pv
  %i.px = load i8, ptr %i.pw, align 1
  %narrow636 = tail call i8 @llvm.uadd.sat.i8(i8 %i.px, i8 %5)
  %19 = insertelement <2 x i8> poison, i8 %i.pt, i64 0
  %20 = insertelement <2 x i8> %19, i8 %i.po, i64 1
  %21 = tail call <2 x i8> @llvm.uadd.sat.v2i8(<2 x i8> %20, <2 x i8> %9)
  %22 = lshr <2 x i8> %21, splat (i8 3)
  %23 = zext nneg <2 x i8> %22 to <2 x i16>
  %24 = shl nuw nsw <2 x i16> %23, <i16 5, i16 10> ; 2 uses
  %shift740 = shufflevector <2 x i16> %24, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop741 = or disjoint <2 x i16> %24, %shift740
  %25 = extractelement <2 x i16> %foldExtExtBinop741, i64 0
  %26 = lshr i8 %narrow636, 3
  %27 = zext nneg i8 %26 to i16
  %i.py = or disjoint i16 %25, %27
  store i16 %i.py, ptr %.2597, align 2
  %i.pz = getelementptr inbounds nuw i8, ptr %.2597, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %.2602 = phi i32 [ %.1601, %bb.r ], [ %i.ol, %bb.p ]
  %.3598 = phi ptr [ %i.pz, %bb.r ], [ %.0595673, %bb.p ] ; 3 uses
  %i.qa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.qb = load i16, ptr %.3598, align 2
  %i.qc = zext i16 %i.qb to i32                   ; 3 uses
  %i.qd = lshr i32 %i.qc, 10
  %i.qe = and i32 %i.qd, 31
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1
  %i.qi = lshr i32 %i.qc, 5
  %i.qj = and i32 %i.qi, 31
  %i.qk = zext nneg i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1
  %i.qn = and i32 %i.qc, 31
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.qo
  %i.qq = load i8, ptr %i.qp, align 1
  %narrow639 = tail call i8 @llvm.uadd.sat.i8(i8 %i.qq, i8 %5)
  %28 = insertelement <2 x i8> poison, i8 %i.qm, i64 0
  %29 = insertelement <2 x i8> %28, i8 %i.qh, i64 1
  %30 = tail call <2 x i8> @llvm.uadd.sat.v2i8(<2 x i8> %29, <2 x i8> %9)
  %31 = lshr <2 x i8> %30, splat (i8 3)
  %32 = zext nneg <2 x i8> %31 to <2 x i16>
  %33 = shl nuw nsw <2 x i16> %32, <i16 5, i16 10> ; 2 uses
  %shift743 = shufflevector <2 x i16> %33, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop744 = or disjoint <2 x i16> %33, %shift743
  %34 = extractelement <2 x i16> %foldExtExtBinop744, i64 0
  %35 = lshr i8 %narrow639, 3
  %36 = zext nneg i8 %35 to i16
  %i.qr = or disjoint i16 %34, %36
  store i16 %i.qr, ptr %.3598, align 2
  %i.qs = getelementptr inbounds nuw i8, ptr %.3598, i64 2
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s
  %.3603 = phi i32 [ %.2602, %bb.s ], [ %i.ol, %bb.p ] ; 2 uses
  %.4599 = phi ptr [ %i.qs, %bb.s ], [ %.0595673, %bb.p ] ; 3 uses
  %i.qt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.qu = load i16, ptr %.4599, align 2
  %i.qv = zext i16 %i.qu to i32                   ; 3 uses
  %i.qw = lshr i32 %i.qv, 10
  %i.qx = and i32 %i.qw, 31
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1
  %i.rb = lshr i32 %i.qv, 5
  %i.rc = and i32 %i.rb, 31
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.rd
  %i.rf = load i8, ptr %i.re, align 1
  %i.rg = and i32 %i.qv, 31
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1
  %narrow642 = tail call i8 @llvm.uadd.sat.i8(i8 %i.rj, i8 %5)
  %37 = insertelement <2 x i8> poison, i8 %i.rf, i64 0
  %38 = insertelement <2 x i8> %37, i8 %i.ra, i64 1
  %39 = tail call <2 x i8> @llvm.uadd.sat.v2i8(<2 x i8> %38, <2 x i8> %9)
  %40 = lshr <2 x i8> %39, splat (i8 3)
  %41 = zext nneg <2 x i8> %40 to <2 x i16>
  %42 = shl nuw nsw <2 x i16> %41, <i16 5, i16 10> ; 2 uses
  %shift746 = shufflevector <2 x i16> %42, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop747 = or disjoint <2 x i16> %42, %shift746
  %43 = extractelement <2 x i16> %foldExtExtBinop747, i64 0
  %44 = lshr i8 %narrow642, 3
  %45 = zext nneg i8 %44 to i16
  %i.rk = or disjoint i16 %43, %45
  store i16 %i.rk, ptr %.4599, align 2
  %i.rl = getelementptr inbounds nuw i8, ptr %.4599, i64 2 ; 2 uses
  %i.rm = add nsw i32 %.3603, -1
  %i.rn = icmp sgt i32 %.3603, 1
  br i1 %i.rn, label %bb.q, label %bb.u, !llvm.loop !8

bb.u:                                             ; preds = %bb.t
  %i.ro = getelementptr inbounds [2 x i8], ptr %i.rl, i64 %7
  %.not631 = icmp eq i32 %i.on, 0
  br i1 %.not631, label %.loopexit, label %bb.p, !llvm.loop !9

bb.v:                                             ; preds = %.split
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.rq = load i32, ptr %i.rp, align 4            ; 2 uses
  %.not630669 = icmp eq i32 %i.rq, 0
  br i1 %.not630669, label %.loopexit, label %.lr.ph671

.lr.ph671:                                        ; preds = %bb.v
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8
  %i.rt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ru = load i32, ptr %i.rt, align 4
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rw = load i32, ptr %i.rv, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ry = load ptr, ptr %i.rx, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 5
  %i.sa = load i8, ptr %i.rz, align 1
  %i.sb = zext i8 %i.sa to i32
  %i.sc = sdiv i32 %i.rw, %i.sb                   ; 2 uses
  %i.sd = mul nsw i32 %i.ru, %i.sc
  %i.se = sext i32 %i.sd to i64
  %i.sf = getelementptr inbounds [2 x i8], ptr %i.rs, i64 %i.se
  %i.sg = load i32, ptr %1, align 4
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [2 x i8], ptr %i.sf, i64 %i.sh
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sk = load i32, ptr %i.sj, align 4            ; 3 uses
  %i.sl = sub nsw i32 %i.sc, %i.sk
  %i.sm = add nsw i32 %i.sk, 3
  %i.sn = sdiv i32 %i.sm, 4                       ; 4 uses
  %i.so = and i32 %i.sk, 3
  %i.sp = insertelement <2 x i8> poison, i8 %4, i64 0
  %i.sq = insertelement <2 x i8> %i.sp, i8 %3, i64 1
  %i.sr = zext <2 x i8> %i.sq to <2 x i16>        ; 4 uses
  %i.ss = zext i8 %5 to i16                       ; 4 uses
  %i.st = sext i32 %i.sl to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph671, %bb.ab
  %.in688 = phi i32 [ %i.rq, %.lr.ph671 ], [ %i.su, %bb.ab ]
  %.0605670 = phi ptr [ %i.si, %.lr.ph671 ], [ %i.xv, %bb.ab ] ; 4 uses
  %i.su = add nsw i32 %.in688, -1                 ; 2 uses
  switch i32 %i.so, label %default.unreachable [
    i32 0, label %bb.x
    i32 3, label %bb.y
    i32 2, label %bb.z
    i32 1, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w, %bb.aa
  %.0610 = phi i32 [ %i.sn, %bb.w ], [ %i.xt, %bb.aa ]
  %.1606 = phi ptr [ %.0605670, %bb.w ], [ %i.xs, %bb.aa ] ; 3 uses
  %i.sv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.sw = load i16, ptr %.1606, align 2
  %i.sx = zext i16 %i.sw to i32                   ; 3 uses
  %i.sy = lshr i32 %i.sx, 10
  %i.sz = and i32 %i.sy, 31
  %i.ta = zext nneg i32 %i.sz to i64
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1
  %i.td = lshr i32 %i.sx, 5
  %i.te = and i32 %i.td, 31
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1
  %i.ti = and i32 %i.sx, 31
  %i.tj = zext nneg i32 %i.ti to i64
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1
  %i.tm = zext i8 %i.tl to i16
  %i.tn = mul nuw i16 %i.tm, %i.ss
  %i.to = udiv i16 %i.tn, 255
  %i.tp = zext i8 %i.tc to i16
  %i.tq = zext i8 %i.th to i16
  %i.tr = insertelement <2 x i16> poison, i16 %i.tq, i64 0
  %i.ts = insertelement <2 x i16> %i.tr, i16 %i.tp, i64 1
  %i.tt = mul nuw <2 x i16> %i.ts, %i.sr
  %i.tu = udiv <2 x i16> %i.tt, splat (i16 255)
  %i.tv = shl nuw nsw <2 x i16> %i.tu, <i16 2, i16 7>
  %i.tw = and <2 x i16> %i.tv, <i16 2016, i16 31744> ; 2 uses
  %shift.a = shufflevector <2 x i16> %i.tw, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = or <2 x i16> %i.tw, %shift.a
  %i.tx = extractelement <2 x i16> %foldExtExtBinop.a, i64 0
  %i.ty = lshr i16 %i.to, 3
  %i.tz = or i16 %i.tx, %i.ty
  store i16 %i.tz, ptr %.1606, align 2
  %i.ua = getelementptr inbounds nuw i8, ptr %.1606, i64 2
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.1611 = phi i32 [ %.0610, %bb.x ], [ %i.sn, %bb.w ]
  %.2607 = phi ptr [ %i.ua, %bb.x ], [ %.0605670, %bb.w ] ; 3 uses
  %i.ub = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.uc = load i16, ptr %.2607, align 2
  %i.ud = zext i16 %i.uc to i32                   ; 3 uses
  %i.ue = lshr i32 %i.ud, 10
  %i.uf = and i32 %i.ue, 31
  %i.ug = zext nneg i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.ug
  %i.ui = load i8, ptr %i.uh, align 1
  %i.uj = lshr i32 %i.ud, 5
  %i.uk = and i32 %i.uj, 31
  %i.ul = zext nneg i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1
  %i.uo = and i32 %i.ud, 31
  %i.up = zext nneg i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.up
  %i.ur = load i8, ptr %i.uq, align 1
  %i.us = zext i8 %i.ur to i16
  %i.ut = mul nuw i16 %i.us, %i.ss
  %i.uu = udiv i16 %i.ut, 255
  %i.uv = zext i8 %i.ui to i16
  %i.uw = zext i8 %i.un to i16
  %i.ux = insertelement <2 x i16> poison, i16 %i.uw, i64 0
  %i.uy = insertelement <2 x i16> %i.ux, i16 %i.uv, i64 1
  %i.uz = mul nuw <2 x i16> %i.uy, %i.sr
  %i.va = udiv <2 x i16> %i.uz, splat (i16 255)
  %i.vb = shl nuw nsw <2 x i16> %i.va, <i16 2, i16 7>
  %i.vc = and <2 x i16> %i.vb, <i16 2016, i16 31744> ; 2 uses
  %shift729 = shufflevector <2 x i16> %i.vc, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop730 = or <2 x i16> %i.vc, %shift729
  %i.vd = extractelement <2 x i16> %foldExtExtBinop730, i64 0
  %i.ve = lshr i16 %i.uu, 3
  %i.vf = or i16 %i.vd, %i.ve
  store i16 %i.vf, ptr %.2607, align 2
  %i.vg = getelementptr inbounds nuw i8, ptr %.2607, i64 2
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  %.2612 = phi i32 [ %.1611, %bb.y ], [ %i.sn, %bb.w ]
  %.3608 = phi ptr [ %i.vg, %bb.y ], [ %.0605670, %bb.w ] ; 3 uses
  %i.vh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.vi = load i16, ptr %.3608, align 2
  %i.vj = zext i16 %i.vi to i32                   ; 3 uses
  %i.vk = lshr i32 %i.vj, 10
  %i.vl = and i32 %i.vk, 31
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vm
  %i.vo = load i8, ptr %i.vn, align 1
  %i.vp = lshr i32 %i.vj, 5
  %i.vq = and i32 %i.vp, 31
  %i.vr = zext nneg i32 %i.vq to i64
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vr
  %i.vt = load i8, ptr %i.vs, align 1
  %i.vu = and i32 %i.vj, 31
  %i.vv = zext nneg i32 %i.vu to i64
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vv
  %i.vx = load i8, ptr %i.vw, align 1
  %i.vy = zext i8 %i.vx to i16
  %i.vz = mul nuw i16 %i.vy, %i.ss
  %i.wa = udiv i16 %i.vz, 255
  %i.wb = zext i8 %i.vo to i16
  %i.wc = zext i8 %i.vt to i16
  %i.wd = insertelement <2 x i16> poison, i16 %i.wc, i64 0
  %i.we = insertelement <2 x i16> %i.wd, i16 %i.wb, i64 1
  %i.wf = mul nuw <2 x i16> %i.we, %i.sr
  %i.wg = udiv <2 x i16> %i.wf, splat (i16 255)
  %i.wh = shl nuw nsw <2 x i16> %i.wg, <i16 2, i16 7>
  %i.wi = and <2 x i16> %i.wh, <i16 2016, i16 31744> ; 2 uses
  %shift732 = shufflevector <2 x i16> %i.wi, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop733 = or <2 x i16> %i.wi, %shift732
  %i.wj = extractelement <2 x i16> %foldExtExtBinop733, i64 0
  %i.wk = lshr i16 %i.wa, 3
  %i.wl = or i16 %i.wj, %i.wk
  store i16 %i.wl, ptr %.3608, align 2
  %i.wm = getelementptr inbounds nuw i8, ptr %.3608, i64 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.z
  %.3613 = phi i32 [ %.2612, %bb.z ], [ %i.sn, %bb.w ] ; 2 uses
  %.4609 = phi ptr [ %i.wm, %bb.z ], [ %.0605670, %bb.w ] ; 3 uses
  %i.wn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 3 uses
  %i.wo = load i16, ptr %.4609, align 2
  %i.wp = zext i16 %i.wo to i32                   ; 3 uses
  %i.wq = lshr i32 %i.wp, 10
  %i.wr = and i32 %i.wq, 31
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1
  %i.wv = lshr i32 %i.wp, 5
  %i.ww = and i32 %i.wv, 31
  %i.wx = zext nneg i32 %i.ww to i64
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.wx
  %i.wz = load i8, ptr %i.wy, align 1
  %i.xa = and i32 %i.wp, 31
  %i.xb = zext nneg i32 %i.xa to i64
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 1
  %i.xe = zext i8 %i.xd to i16
  %i.xf = mul nuw i16 %i.xe, %i.ss
  %i.xg = udiv i16 %i.xf, 255
  %i.xh = zext i8 %i.wu to i16
  %i.xi = zext i8 %i.wz to i16
  %i.xj = insertelement <2 x i16> poison, i16 %i.xi, i64 0
  %i.xk = insertelement <2 x i16> %i.xj, i16 %i.xh, i64 1
  %i.xl = mul nuw <2 x i16> %i.xk, %i.sr
end_hunk_0
begin_hunk_1_@SDL_BlendFillRect_RGB565:bb.a
  %i.it = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1
  %i.iv = zext i8 %i.iu to i32
  %i.iw = mul nuw nsw i32 %i.iv, %i.b
  %i.ix = udiv i32 %i.iw, 255
  %i.iy = add nuw nsw i32 %i.ix, %i.hm
  %spec.store.select39 = tail call i32 @llvm.umin.i32(i32 %i.iy, i32 255)
  %i.iz = zext i8 %i.iq to i16
  %i.ja = insertelement <2 x i16> poison, i16 %i.iz, i64 0
  %i.jb = zext i8 %i.ik to i16
  %i.jc = insertelement <2 x i16> %i.ja, i16 %i.jb, i64 1
  %i.jd = mul nuw <2 x i16> %i.jc, %i.hq
  %i.je = udiv <2 x i16> %i.jd, splat (i16 255)
  %i.jf = add nuw nsw <2 x i16> %i.je, %i.hl
  %i.jg = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.jf, <2 x i16> splat (i16 255))
  %i.jh = shl <2 x i16> %i.jg, <i16 3, i16 8>
  %i.ji = and <2 x i16> %i.jh, <i16 2016, i16 -2048> ; 2 uses
  %i.jj = extractelement <2 x i16> %i.ji, i64 0
  %i.jk = extractelement <2 x i16> %i.ji, i64 1
  %i.jl = or disjoint i16 %i.jj, %i.jk
  %i.jm = lshr i32 %spec.store.select39, 3
  %i.jn = trunc nuw nsw i32 %i.jm to i16
  %i.jo = or disjoint i16 %i.jl, %i.jn
  store i16 %i.jo, ptr %.1576, align 2
  %i.jp = getelementptr inbounds nuw i8, ptr %.1576, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.1581 = phi i32 [ %.0580, %bb.j ], [ %i.hh, %bb.i ]
  %.2577 = phi ptr [ %i.jp, %bb.j ], [ %.0575676, %bb.i ] ; 3 uses
  %i.jq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.jr = load i16, ptr %.2577, align 2
  %i.js = zext i16 %i.jr to i32                   ; 3 uses
  %i.jt = lshr i32 %i.js, 11
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1
  %i.jx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.jy = lshr i32 %i.js, 5
  %i.jz = and i32 %i.jy, 63
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1
  %i.kd = and i32 %i.js, 31
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1
  %i.kh = zext i8 %i.kg to i32
  %i.ki = mul nuw nsw i32 %i.kh, %i.b
  %i.kj = udiv i32 %i.ki, 255
  %i.kk = add nuw nsw i32 %i.kj, %i.hm
  %spec.store.select4 = tail call i32 @llvm.umin.i32(i32 %i.kk, i32 255)
  %i.kl = zext i8 %i.kc to i16
  %i.km = insertelement <2 x i16> poison, i16 %i.kl, i64 0
  %i.kn = zext i8 %i.jw to i16
  %i.ko = insertelement <2 x i16> %i.km, i16 %i.kn, i64 1
  %i.kp = mul nuw <2 x i16> %i.ko, %i.ht
  %i.kq = udiv <2 x i16> %i.kp, splat (i16 255)
  %i.kr = add nuw nsw <2 x i16> %i.kq, %i.hu
  %i.ks = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.kr, <2 x i16> splat (i16 255))
  %i.kt = shl <2 x i16> %i.ks, <i16 3, i16 8>
  %i.ku = and <2 x i16> %i.kt, <i16 2016, i16 -2048> ; 2 uses
  %i.kv = extractelement <2 x i16> %i.ku, i64 0
  %i.kw = extractelement <2 x i16> %i.ku, i64 1
  %i.kx = or disjoint i16 %i.kv, %i.kw
  %i.ky = lshr i32 %spec.store.select4, 3
  %i.kz = trunc nuw nsw i32 %i.ky to i16
  %i.la = or disjoint i16 %i.kx, %i.kz
  store i16 %i.la, ptr %.2577, align 2
  %i.lb = getelementptr inbounds nuw i8, ptr %.2577, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.2582 = phi i32 [ %.1581, %bb.k ], [ %i.hh, %bb.i ]
  %.3578 = phi ptr [ %i.lb, %bb.k ], [ %.0575676, %bb.i ] ; 3 uses
  %i.lc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.ld = load i16, ptr %.3578, align 2
  %i.le = zext i16 %i.ld to i32                   ; 3 uses
  %i.lf = lshr i32 %i.le, 11
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1
  %i.lj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.lk = lshr i32 %i.le, 5
  %i.ll = and i32 %i.lk, 63
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1
  %i.lp = and i32 %i.le, 31
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1
  %i.lt = zext i8 %i.ls to i32
  %i.lu = mul nuw nsw i32 %i.lt, %i.b
  %i.lv = udiv i32 %i.lu, 255
  %i.lw = add nuw nsw i32 %i.lv, %i.hm
  %spec.store.select6 = tail call i32 @llvm.umin.i32(i32 %i.lw, i32 255)
  %i.lx = zext i8 %i.lo to i16
  %i.ly = insertelement <2 x i16> poison, i16 %i.lx, i64 0
  %i.lz = zext i8 %i.li to i16
  %i.ma = insertelement <2 x i16> %i.ly, i16 %i.lz, i64 1
  %i.mb = mul nuw <2 x i16> %i.ma, %i.hx
  %i.mc = udiv <2 x i16> %i.mb, splat (i16 255)
  %i.md = add nuw nsw <2 x i16> %i.mc, %i.hy
  %i.me = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.md, <2 x i16> splat (i16 255))
  %i.mf = shl <2 x i16> %i.me, <i16 3, i16 8>
  %i.mg = and <2 x i16> %i.mf, <i16 2016, i16 -2048> ; 2 uses
  %i.mh = extractelement <2 x i16> %i.mg, i64 0
  %i.mi = extractelement <2 x i16> %i.mg, i64 1
  %i.mj = or disjoint i16 %i.mh, %i.mi
  %i.mk = lshr i32 %spec.store.select6, 3
  %i.ml = trunc nuw nsw i32 %i.mk to i16
  %i.mm = or disjoint i16 %i.mj, %i.ml
  store i16 %i.mm, ptr %.3578, align 2
  %i.mn = getelementptr inbounds nuw i8, ptr %.3578, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %.3583 = phi i32 [ %.2582, %bb.l ], [ %i.hh, %bb.i ] ; 2 uses
  %.4579 = phi ptr [ %i.mn, %bb.l ], [ %.0575676, %bb.i ] ; 3 uses
  %i.mo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.mp = load i16, ptr %.4579, align 2
  %i.mq = zext i16 %i.mp to i32                   ; 3 uses
  %i.mr = lshr i32 %i.mq, 11
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1
  %i.mv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.mw = lshr i32 %i.mq, 5
  %i.mx = and i32 %i.mw, 63
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.my
  %i.na = load i8, ptr %i.mz, align 1
  %i.nb = and i32 %i.mq, 31
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1
  %i.nf = zext i8 %i.ne to i32
  %i.ng = mul nuw nsw i32 %i.nf, %i.b
  %i.nh = udiv i32 %i.ng, 255
  %i.ni = add nuw nsw i32 %i.nh, %i.hm
  %spec.store.select8 = tail call i32 @llvm.umin.i32(i32 %i.ni, i32 255)
  %i.nj = zext i8 %i.na to i16
  %i.nk = insertelement <2 x i16> poison, i16 %i.nj, i64 0
  %i.nl = zext i8 %i.mu to i16
  %i.nm = insertelement <2 x i16> %i.nk, i16 %i.nl, i64 1
  %i.nn = mul nuw <2 x i16> %i.nm, %i.ib
  %i.no = udiv <2 x i16> %i.nn, splat (i16 255)
  %i.np = add nuw nsw <2 x i16> %i.no, %i.ic
  %i.nq = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.np, <2 x i16> splat (i16 255))
  %i.nr = shl <2 x i16> %i.nq, <i16 3, i16 8>
  %i.ns = and <2 x i16> %i.nr, <i16 2016, i16 -2048> ; 2 uses
  %i.nt = extractelement <2 x i16> %i.ns, i64 0
  %i.nu = extractelement <2 x i16> %i.ns, i64 1
  %i.nv = or disjoint i16 %i.nt, %i.nu
  %i.nw = lshr i32 %spec.store.select8, 3
  %i.nx = trunc nuw nsw i32 %i.nw to i16
  %i.ny = or disjoint i16 %i.nv, %i.nx
  store i16 %i.ny, ptr %.4579, align 2
  %i.nz = getelementptr inbounds nuw i8, ptr %.4579, i64 2 ; 2 uses
  %i.oa = add nsw i32 %.3583, -1
  %i.ob = icmp sgt i32 %.3583, 1
  br i1 %i.ob, label %bb.j, label %bb.n, !llvm.loop !18

bb.n:                                             ; preds = %bb.m
  %i.oc = getelementptr inbounds [2 x i8], ptr %i.nz, i64 %i.hn
  %.not632 = icmp eq i32 %i.id, 0
  br i1 %.not632, label %.loopexit, label %bb.i, !llvm.loop !19

bb.o:                                             ; preds = %.split, %.split
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.oe = load i32, ptr %i.od, align 4            ; 2 uses
  %.not631672 = icmp eq i32 %i.oe, 0
  br i1 %.not631672, label %.loopexit, label %.lr.ph674

.lr.ph674:                                        ; preds = %bb.o
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.oi = load i32, ptr %i.oh, align 4
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ok = load i32, ptr %i.oj, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 5
  %i.oo = load i8, ptr %i.on, align 1
  %i.op = zext i8 %i.oo to i32
  %i.oq = sdiv i32 %i.ok, %i.op                   ; 2 uses
  %i.or = mul nsw i32 %i.oi, %i.oq
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds [2 x i8], ptr %i.og, i64 %i.os
  %i.ou = load i32, ptr %1, align 4
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [2 x i8], ptr %i.ot, i64 %i.ov
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oy = load i32, ptr %i.ox, align 4            ; 3 uses
  %i.oz = sub nsw i32 %i.oq, %i.oy
  %i.pa = add nsw i32 %i.oy, 3
  %i.pb = sdiv i32 %i.pa, 4                       ; 4 uses
  %i.pc = and i32 %i.oy, 3
  %i.pd = sext i32 %i.oz to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph674, %bb.u
  %.in689 = phi i32 [ %i.oe, %.lr.ph674 ], [ %i.pe, %bb.u ]
  %.0595673 = phi ptr [ %i.ow, %.lr.ph674 ], [ %i.sj, %bb.u ] ; 4 uses
  %i.pe = add nsw i32 %.in689, -1                 ; 2 uses
  switch i32 %i.pc, label %default.unreachable [
    i32 0, label %bb.q
    i32 3, label %bb.r
    i32 2, label %bb.s
    i32 1, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p, %bb.t
  %.0600 = phi i32 [ %i.pb, %bb.p ], [ %i.sh, %bb.t ]
  %.1596 = phi ptr [ %.0595673, %bb.p ], [ %i.sg, %bb.t ] ; 3 uses
  %i.pf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.pg = load i16, ptr %.1596, align 2
  %i.ph = zext i16 %i.pg to i32                   ; 3 uses
  %i.pi = lshr i32 %i.ph, 11
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1
  %i.pm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.pn = lshr i32 %i.ph, 5
  %i.po = and i32 %i.pn, 63
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.pp
  %i.pr = load i8, ptr %i.pq, align 1
  %i.ps = and i32 %i.ph, 31
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1
  %narrow = tail call i8 @llvm.uadd.sat.i8(i8 %i.pl, i8 %3)
  %narrow632 = tail call i8 @llvm.uadd.sat.i8(i8 %i.pr, i8 %4)
  %narrow633 = tail call i8 @llvm.uadd.sat.i8(i8 %i.pv, i8 %5)
  %7 = lshr i8 %narrow, 3
  %8 = zext nneg i8 %7 to i16
  %9 = shl nuw i16 %8, 11
  %10 = lshr i8 %narrow632, 2
  %11 = zext nneg i8 %10 to i16
  %i.pw = shl nuw nsw i16 %11, 5
  %12 = or disjoint i16 %i.pw, %9
  %13 = lshr i8 %narrow633, 3
  %14 = zext nneg i8 %13 to i16
  %i.px = or disjoint i16 %12, %14
  store i16 %i.px, ptr %.1596, align 2
  %i.py = getelementptr inbounds nuw i8, ptr %.1596, i64 2
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1601 = phi i32 [ %.0600, %bb.q ], [ %i.pb, %bb.p ]
  %.2597 = phi ptr [ %i.py, %bb.q ], [ %.0595673, %bb.p ] ; 3 uses
  %i.pz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.qa = load i16, ptr %.2597, align 2
  %i.qb = zext i16 %i.qa to i32                   ; 3 uses
  %i.qc = lshr i32 %i.qb, 11
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1
  %i.qg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.qh = lshr i32 %i.qb, 5
  %i.qi = and i32 %i.qh, 63
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1
  %i.qm = and i32 %i.qb, 31
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1
  %narrow634 = tail call i8 @llvm.uadd.sat.i8(i8 %i.qf, i8 %3)
  %narrow635 = tail call i8 @llvm.uadd.sat.i8(i8 %i.ql, i8 %4)
  %narrow636 = tail call i8 @llvm.uadd.sat.i8(i8 %i.qp, i8 %5)
  %15 = lshr i8 %narrow634, 3
  %16 = zext nneg i8 %15 to i16
  %17 = shl nuw i16 %16, 11
  %18 = lshr i8 %narrow635, 2
  %19 = zext nneg i8 %18 to i16
  %i.qq = shl nuw nsw i16 %19, 5
  %20 = or disjoint i16 %i.qq, %17
  %21 = lshr i8 %narrow636, 3
  %22 = zext nneg i8 %21 to i16
  %i.qr = or disjoint i16 %20, %22
  store i16 %i.qr, ptr %.2597, align 2
  %i.qs = getelementptr inbounds nuw i8, ptr %.2597, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %.2602 = phi i32 [ %.1601, %bb.r ], [ %i.pb, %bb.p ]
  %.3598 = phi ptr [ %i.qs, %bb.r ], [ %.0595673, %bb.p ] ; 3 uses
  %i.qt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.qu = load i16, ptr %.3598, align 2
  %i.qv = zext i16 %i.qu to i32                   ; 3 uses
  %i.qw = lshr i32 %i.qv, 11
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1
  %i.ra = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.rb = lshr i32 %i.qv, 5
  %i.rc = and i32 %i.rb, 63
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.rd
  %i.rf = load i8, ptr %i.re, align 1
  %i.rg = and i32 %i.qv, 31
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1
  %narrow637 = tail call i8 @llvm.uadd.sat.i8(i8 %i.qz, i8 %3)
  %narrow638 = tail call i8 @llvm.uadd.sat.i8(i8 %i.rf, i8 %4)
  %narrow639 = tail call i8 @llvm.uadd.sat.i8(i8 %i.rj, i8 %5)
  %23 = lshr i8 %narrow637, 3
  %24 = zext nneg i8 %23 to i16
  %25 = shl nuw i16 %24, 11
  %26 = lshr i8 %narrow638, 2
  %27 = zext nneg i8 %26 to i16
  %i.rk = shl nuw nsw i16 %27, 5
  %28 = or disjoint i16 %i.rk, %25
  %29 = lshr i8 %narrow639, 3
  %30 = zext nneg i8 %29 to i16
  %i.rl = or disjoint i16 %28, %30
  store i16 %i.rl, ptr %.3598, align 2
  %i.rm = getelementptr inbounds nuw i8, ptr %.3598, i64 2
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s
  %.3603 = phi i32 [ %.2602, %bb.s ], [ %i.pb, %bb.p ] ; 2 uses
  %.4599 = phi ptr [ %i.rm, %bb.s ], [ %.0595673, %bb.p ] ; 3 uses
  %i.rn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.ro = load i16, ptr %.4599, align 2
  %i.rp = zext i16 %i.ro to i32                   ; 3 uses
  %i.rq = lshr i32 %i.rp, 11
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rr
  %i.rt = load i8, ptr %i.rs, align 1
  %i.ru = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.rv = lshr i32 %i.rp, 5
  %i.rw = and i32 %i.rv, 63
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1
  %i.sa = and i32 %i.rp, 31
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.sb
  %i.sd = load i8, ptr %i.sc, align 1
  %narrow640 = tail call i8 @llvm.uadd.sat.i8(i8 %i.rt, i8 %3)
  %narrow641 = tail call i8 @llvm.uadd.sat.i8(i8 %i.rz, i8 %4)
  %narrow642 = tail call i8 @llvm.uadd.sat.i8(i8 %i.sd, i8 %5)
  %31 = lshr i8 %narrow640, 3
  %32 = zext nneg i8 %31 to i16
  %33 = shl nuw i16 %32, 11
  %34 = lshr i8 %narrow641, 2
  %35 = zext nneg i8 %34 to i16
  %i.se = shl nuw nsw i16 %35, 5
  %36 = or disjoint i16 %i.se, %33
  %37 = lshr i8 %narrow642, 3
  %38 = zext nneg i8 %37 to i16
  %i.sf = or disjoint i16 %36, %38
  store i16 %i.sf, ptr %.4599, align 2
  %i.sg = getelementptr inbounds nuw i8, ptr %.4599, i64 2 ; 2 uses
  %i.sh = add nsw i32 %.3603, -1
  %i.si = icmp sgt i32 %.3603, 1
  br i1 %i.si, label %bb.q, label %bb.u, !llvm.loop !20

bb.u:                                             ; preds = %bb.t
  %i.sj = getelementptr inbounds [2 x i8], ptr %i.sg, i64 %i.pd
  %.not631 = icmp eq i32 %i.pe, 0
  br i1 %.not631, label %.loopexit, label %bb.p, !llvm.loop !21

bb.v:                                             ; preds = %.split
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.sl = load i32, ptr %i.sk, align 4            ; 2 uses
  %.not630669 = icmp eq i32 %i.sl, 0
  br i1 %.not630669, label %.loopexit, label %.lr.ph671

.lr.ph671:                                        ; preds = %bb.v
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.sp = load i32, ptr %i.so, align 4
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sr = load i32, ptr %i.sq, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.st = load ptr, ptr %i.ss, align 8
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 5
  %i.sv = load i8, ptr %i.su, align 1
  %i.sw = zext i8 %i.sv to i32
  %i.sx = sdiv i32 %i.sr, %i.sw                   ; 2 uses
  %i.sy = mul nsw i32 %i.sp, %i.sx
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr inbounds [2 x i8], ptr %i.sn, i64 %i.sz
  %i.tb = load i32, ptr %1, align 4
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %i.tc
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tf = load i32, ptr %i.te, align 4            ; 3 uses
  %i.tg = sub nsw i32 %i.sx, %i.tf
  %i.th = add nsw i32 %i.tf, 3
  %i.ti = sdiv i32 %i.th, 4                       ; 4 uses
  %i.tj = and i32 %i.tf, 3
  %i.tk = insertelement <2 x i8> poison, i8 %4, i64 0
  %i.tl = insertelement <2 x i8> %i.tk, i8 %3, i64 1
  %i.tm = zext <2 x i8> %i.tl to <2 x i16>        ; 4 uses
  %i.tn = zext i8 %5 to i16                       ; 4 uses
  %i.to = sext i32 %i.tg to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph671, %bb.ab
  %.in688 = phi i32 [ %i.sl, %.lr.ph671 ], [ %i.tp, %bb.ab ]
  %.0605670 = phi ptr [ %i.td, %.lr.ph671 ], [ %i.yq, %bb.ab ] ; 4 uses
  %i.tp = add nsw i32 %.in688, -1                 ; 2 uses
  switch i32 %i.tj, label %default.unreachable [
    i32 0, label %bb.x
    i32 3, label %bb.y
    i32 2, label %bb.z
    i32 1, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w, %bb.aa
  %.0610 = phi i32 [ %i.ti, %bb.w ], [ %i.yo, %bb.aa ]
  %.1606 = phi ptr [ %.0605670, %bb.w ], [ %i.yn, %bb.aa ] ; 3 uses
  %i.tq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.tr = load i16, ptr %.1606, align 2
  %i.ts = zext i16 %i.tr to i32                   ; 3 uses
  %i.tt = lshr i32 %i.ts, 11
  %i.tu = zext nneg i32 %i.tt to i64
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.tu
  %i.tw = load i8, ptr %i.tv, align 1
  %i.tx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.ty = lshr i32 %i.ts, 5
  %i.tz = and i32 %i.ty, 63
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1
  %i.ud = and i32 %i.ts, 31
  %i.ue = zext nneg i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.ue
  %i.ug = load i8, ptr %i.uf, align 1
  %i.uh = zext i8 %i.ug to i16
  %i.ui = mul nuw i16 %i.uh, %i.tn
  %i.uj = udiv i16 %i.ui, 255
  %i.uk = zext i8 %i.tw to i16
  %i.ul = zext i8 %i.uc to i16
  %i.um = insertelement <2 x i16> poison, i16 %i.ul, i64 0
  %i.un = insertelement <2 x i16> %i.um, i16 %i.uk, i64 1
  %i.uo = mul nuw <2 x i16> %i.un, %i.tm
  %i.up = udiv <2 x i16> %i.uo, splat (i16 255)
  %i.uq = shl nuw <2 x i16> %i.up, <i16 3, i16 8>
  %i.ur = and <2 x i16> %i.uq, <i16 4064, i16 -2048> ; 2 uses
  %shift = shufflevector <2 x i16> %i.ur, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i16> %i.ur, %shift
  %i.us = extractelement <2 x i16> %foldExtExtBinop, i64 0
  %i.ut = lshr i16 %i.uj, 3
  %i.uu = or i16 %i.us, %i.ut
  store i16 %i.uu, ptr %.1606, align 2
  %i.uv = getelementptr inbounds nuw i8, ptr %.1606, i64 2
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.1611 = phi i32 [ %.0610, %bb.x ], [ %i.ti, %bb.w ]
  %.2607 = phi ptr [ %i.uv, %bb.x ], [ %.0605670, %bb.w ] ; 3 uses
  %i.uw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.ux = load i16, ptr %.2607, align 2
  %i.uy = zext i16 %i.ux to i32                   ; 3 uses
  %i.uz = lshr i32 %i.uy, 11
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.va
  %i.vc = load i8, ptr %i.vb, align 1
  %i.vd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.ve = lshr i32 %i.uy, 5
  %i.vf = and i32 %i.ve, 63
  %i.vg = zext nneg i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vd, i64 %i.vg
  %i.vi = load i8, ptr %i.vh, align 1
  %i.vj = and i32 %i.uy, 31
  %i.vk = zext nneg i32 %i.vj to i64
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.vk
  %i.vm = load i8, ptr %i.vl, align 1
  %i.vn = zext i8 %i.vm to i16
  %i.vo = mul nuw i16 %i.vn, %i.tn
  %i.vp = udiv i16 %i.vo, 255
  %i.vq = zext i8 %i.vc to i16
  %i.vr = zext i8 %i.vi to i16
  %i.vs = insertelement <2 x i16> poison, i16 %i.vr, i64 0
  %i.vt = insertelement <2 x i16> %i.vs, i16 %i.vq, i64 1
  %i.vu = mul nuw <2 x i16> %i.vt, %i.tm
  %i.vv = udiv <2 x i16> %i.vu, splat (i16 255)
  %i.vw = shl nuw <2 x i16> %i.vv, <i16 3, i16 8>
  %i.vx = and <2 x i16> %i.vw, <i16 4064, i16 -2048> ; 2 uses
  %shift729 = shufflevector <2 x i16> %i.vx, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop730 = or <2 x i16> %i.vx, %shift729
  %i.vy = extractelement <2 x i16> %foldExtExtBinop730, i64 0
  %i.vz = lshr i16 %i.vp, 3
  %i.wa = or i16 %i.vy, %i.vz
  store i16 %i.wa, ptr %.2607, align 2
  %i.wb = getelementptr inbounds nuw i8, ptr %.2607, i64 2
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  %.2612 = phi i32 [ %.1611, %bb.y ], [ %i.ti, %bb.w ]
  %.3608 = phi ptr [ %i.wb, %bb.y ], [ %.0605670, %bb.w ] ; 3 uses
  %i.wc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.wd = load i16, ptr %.3608, align 2
  %i.we = zext i16 %i.wd to i32                   ; 3 uses
  %i.wf = lshr i32 %i.we, 11
  %i.wg = zext nneg i32 %i.wf to i64
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.wg
  %i.wi = load i8, ptr %i.wh, align 1
  %i.wj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.wk = lshr i32 %i.we, 5
  %i.wl = and i32 %i.wk, 63
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.wm
  %i.wo = load i8, ptr %i.wn, align 1
  %i.wp = and i32 %i.we, 31
  %i.wq = zext nneg i32 %i.wp to i64
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.wq
  %i.ws = load i8, ptr %i.wr, align 1
  %i.wt = zext i8 %i.ws to i16
  %i.wu = mul nuw i16 %i.wt, %i.tn
  %i.wv = udiv i16 %i.wu, 255
  %i.ww = zext i8 %i.wi to i16
  %i.wx = zext i8 %i.wo to i16
  %i.wy = insertelement <2 x i16> poison, i16 %i.wx, i64 0
  %i.wz = insertelement <2 x i16> %i.wy, i16 %i.ww, i64 1
  %i.xa = mul nuw <2 x i16> %i.wz, %i.tm
  %i.xb = udiv <2 x i16> %i.xa, splat (i16 255)
  %i.xc = shl nuw <2 x i16> %i.xb, <i16 3, i16 8>
  %i.xd = and <2 x i16> %i.xc, <i16 4064, i16 -2048> ; 2 uses
  %shift732 = shufflevector <2 x i16> %i.xd, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop733 = or <2 x i16> %i.xd, %shift732
  %i.xe = extractelement <2 x i16> %foldExtExtBinop733, i64 0
  %i.xf = lshr i16 %i.wv, 3
  %i.xg = or i16 %i.xe, %i.xf
  store i16 %i.xg, ptr %.3608, align 2
  %i.xh = getelementptr inbounds nuw i8, ptr %.3608, i64 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.z
  %.3613 = phi i32 [ %.2612, %bb.z ], [ %i.ti, %bb.w ] ; 2 uses
  %.4609 = phi ptr [ %i.xh, %bb.z ], [ %.0605670, %bb.w ] ; 3 uses
  %i.xi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 40), align 8 ; 2 uses
  %i.xj = load i16, ptr %.4609, align 2
  %i.xk = zext i16 %i.xj to i32                   ; 3 uses
  %i.xl = lshr i32 %i.xk, 11
  %i.xm = zext nneg i32 %i.xl to i64
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xm
  %i.xo = load i8, ptr %i.xn, align 1
  %i.xp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 48), align 16
  %i.xq = lshr i32 %i.xk, 5
  %i.xr = and i32 %i.xq, 63
  %i.xs = zext nneg i32 %i.xr to i64
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xp, i64 %i.xs
  %i.xu = load i8, ptr %i.xt, align 1
  %i.xv = and i32 %i.xk, 31
  %i.xw = zext nneg i32 %i.xv to i64
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xi, i64 %i.xw
  %i.xy = load i8, ptr %i.xx, align 1
end_hunk_1
begin_hunk_2_@SDL_BlendFillRect_RGB:bb.a
  store i16 %i.rw, ptr %.21849, align 2
  %i.rx = getelementptr inbounds nuw i8, ptr %.21849, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.21854 = phi i32 [ %.11853, %bb.l ], [ %i.mb, %bb.j ]
  %.31850 = phi ptr [ %i.rx, %bb.l ], [ %.018472124, %bb.j ] ; 3 uses
  %i.ry = load i8, ptr %i.md, align 4             ; 2 uses
  %i.rz = zext i8 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.rz
  %i.sb = load ptr, ptr %i.sa, align 8
  %i.sc = load i16, ptr %.31850, align 2
  %i.sd = zext i16 %i.sc to i32                   ; 3 uses
  %i.se = load i32, ptr %i.me, align 4
  %i.sf = and i32 %i.se, %i.sd
  %i.sg = load i8, ptr %i.mf, align 4
  %i.sh = zext i8 %i.sg to i32                    ; 2 uses
  %i.si = lshr i32 %i.sf, %i.sh
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.sj
  %i.sl = load i8, ptr %i.sk, align 1
  %i.sm = zext i8 %i.sl to i32
  %i.sn = load i8, ptr %i.mg, align 1             ; 2 uses
  %i.so = zext i8 %i.sn to i64
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.so
  %i.sq = load ptr, ptr %i.sp, align 8
  %i.sr = load i32, ptr %i.mh, align 4
  %i.ss = and i32 %i.sr, %i.sd
  %i.st = load i8, ptr %i.mi, align 1
  %i.su = zext i8 %i.st to i32                    ; 2 uses
  %i.sv = lshr i32 %i.ss, %i.su
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1
  %i.sz = zext i8 %i.sy to i32
  %i.ta = load i8, ptr %i.mj, align 2             ; 2 uses
  %i.tb = zext i8 %i.ta to i64
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.tb
  %i.td = load ptr, ptr %i.tc, align 8
  %i.te = load i32, ptr %i.mk, align 4
  %i.tf = and i32 %i.te, %i.sd
  %i.tg = load i8, ptr %i.ml, align 2
  %i.th = zext i8 %i.tg to i32                    ; 2 uses
  %i.ti = lshr i32 %i.tf, %i.th
  %i.tj = zext nneg i32 %i.ti to i64
  %i.tk = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1
  %i.tm = zext i8 %i.tl to i32
  %i.tn = mul nuw nsw i32 %i.sm, %i.d
  %i.to = udiv i32 %i.tn, 255
  %i.tp = add nuw nsw i32 %i.to, %i.mm
  %spec.store.select5 = tail call i32 @llvm.umin.i32(i32 %i.tp, i32 255)
  %i.tq = mul nuw nsw i32 %i.sz, %i.d
  %i.tr = udiv i32 %i.tq, 255
  %i.ts = add nuw nsw i32 %i.tr, %i.mn
  %spec.store.select58 = tail call i32 @llvm.umin.i32(i32 %i.ts, i32 255)
  %i.tt = mul nuw nsw i32 %i.tm, %i.d
  %i.tu = udiv i32 %i.tt, 255
  %i.tv = add nuw nsw i32 %i.tu, %i.mo
  %spec.store.select6 = tail call i32 @llvm.umin.i32(i32 %i.tv, i32 255)
  %i.tw = zext i8 %i.ry to i32
  %i.tx = sub nsw i32 8, %i.tw
  %i.ty = lshr i32 %spec.store.select5, %i.tx
  %i.tz = shl i32 %i.ty, %i.sh
  %i.ua = zext i8 %i.sn to i32
  %i.ub = sub nsw i32 8, %i.ua
  %i.uc = lshr i32 %spec.store.select58, %i.ub
  %i.ud = shl i32 %i.uc, %i.su
  %i.ue = zext i8 %i.ta to i32
  %i.uf = sub nsw i32 8, %i.ue
  %i.ug = lshr i32 %spec.store.select6, %i.uf
  %i.uh = shl i32 %i.ug, %i.th
  %i.ui = load i32, ptr %i.mp, align 4
  %i.uj = or i32 %i.ui, %i.tz
  %i.uk = or i32 %i.uj, %i.ud
  %i.ul = or i32 %i.uk, %i.uh
  %i.um = trunc i32 %i.ul to i16
  store i16 %i.um, ptr %.31850, align 2
  %i.un = getelementptr inbounds nuw i8, ptr %.31850, i64 2
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m
  %.31855 = phi i32 [ %.21854, %bb.m ], [ %i.mb, %bb.j ] ; 2 uses
  %.41851 = phi ptr [ %i.un, %bb.m ], [ %.018472124, %bb.j ] ; 3 uses
  %i.uo = load i8, ptr %i.md, align 4             ; 2 uses
  %i.up = zext i8 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.up
  %i.ur = load ptr, ptr %i.uq, align 8
  %i.us = load i16, ptr %.41851, align 2
  %i.ut = zext i16 %i.us to i32                   ; 3 uses
  %i.uu = load i32, ptr %i.me, align 4
  %i.uv = and i32 %i.uu, %i.ut
  %i.uw = load i8, ptr %i.mf, align 4
  %i.ux = zext i8 %i.uw to i32                    ; 2 uses
  %i.uy = lshr i32 %i.uv, %i.ux
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.uz
  %i.vb = load i8, ptr %i.va, align 1
  %i.vc = zext i8 %i.vb to i32
  %i.vd = load i8, ptr %i.mg, align 1             ; 2 uses
  %i.ve = zext i8 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ve
  %i.vg = load ptr, ptr %i.vf, align 8
  %i.vh = load i32, ptr %i.mh, align 4
  %i.vi = and i32 %i.vh, %i.ut
  %i.vj = load i8, ptr %i.mi, align 1
  %i.vk = zext i8 %i.vj to i32                    ; 2 uses
  %i.vl = lshr i32 %i.vi, %i.vk
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.vm
  %i.vo = load i8, ptr %i.vn, align 1
  %i.vp = zext i8 %i.vo to i32
  %i.vq = load i8, ptr %i.mj, align 2             ; 2 uses
  %i.vr = zext i8 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.vr
  %i.vt = load ptr, ptr %i.vs, align 8
  %i.vu = load i32, ptr %i.mk, align 4
  %i.vv = and i32 %i.vu, %i.ut
  %i.vw = load i8, ptr %i.ml, align 2
  %i.vx = zext i8 %i.vw to i32                    ; 2 uses
  %i.vy = lshr i32 %i.vv, %i.vx
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vz
  %i.wb = load i8, ptr %i.wa, align 1
  %i.wc = zext i8 %i.wb to i32
  %i.wd = mul nuw nsw i32 %i.vc, %i.d
  %i.we = udiv i32 %i.wd, 255
  %i.wf = add nuw nsw i32 %i.we, %i.mm
  %spec.store.select7 = tail call i32 @llvm.umin.i32(i32 %i.wf, i32 255)
  %i.wg = mul nuw nsw i32 %i.vp, %i.d
  %i.wh = udiv i32 %i.wg, 255
  %i.wi = add nuw nsw i32 %i.wh, %i.mn
  %spec.store.select59 = tail call i32 @llvm.umin.i32(i32 %i.wi, i32 255)
  %i.wj = mul nuw nsw i32 %i.wc, %i.d
  %i.wk = udiv i32 %i.wj, 255
  %i.wl = add nuw nsw i32 %i.wk, %i.mo
  %spec.store.select8 = tail call i32 @llvm.umin.i32(i32 %i.wl, i32 255)
  %i.wm = zext i8 %i.uo to i32
  %i.wn = sub nsw i32 8, %i.wm
  %i.wo = lshr i32 %spec.store.select7, %i.wn
  %i.wp = shl i32 %i.wo, %i.ux
  %i.wq = zext i8 %i.vd to i32
  %i.wr = sub nsw i32 8, %i.wq
  %i.ws = lshr i32 %spec.store.select59, %i.wr
  %i.wt = shl i32 %i.ws, %i.vk
  %i.wu = zext i8 %i.vq to i32
  %i.wv = sub nsw i32 8, %i.wu
  %i.ww = lshr i32 %spec.store.select8, %i.wv
  %i.wx = shl i32 %i.ww, %i.vx
  %i.wy = load i32, ptr %i.mp, align 4
  %i.wz = or i32 %i.wy, %i.wp
  %i.xa = or i32 %i.wz, %i.wt
  %i.xb = or i32 %i.xa, %i.wx
  %i.xc = trunc i32 %i.xb to i16
  store i16 %i.xc, ptr %.41851, align 2
  %i.xd = getelementptr inbounds nuw i8, ptr %.41851, i64 2 ; 2 uses
  %i.xe = add nsw i32 %.31855, -1
  %i.xf = icmp sgt i32 %.31855, 1
  br i1 %i.xf, label %bb.k, label %bb.o, !llvm.loop !54

bb.o:                                             ; preds = %bb.n
  %i.xg = getelementptr inbounds [2 x i8], ptr %i.xd, i64 %i.mq
  %.not1978 = icmp eq i32 %i.mr, 0
  br i1 %.not1978, label %.loopexit, label %bb.j, !llvm.loop !55

bb.p:                                             ; preds = %.split, %.split
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.xi = load i32, ptr %i.xh, align 4            ; 2 uses
  %.not19772120 = icmp eq i32 %i.xi, 0
  br i1 %.not19772120, label %.loopexit, label %.lr.ph2122

.lr.ph2122:                                       ; preds = %bb.p
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.xk = load ptr, ptr %i.xj, align 8
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.xm = load i32, ptr %i.xl, align 4
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xo = load i32, ptr %i.xn, align 8
  %i.xp = sdiv i32 %i.xo, 2                       ; 2 uses
  %i.xq = mul nsw i32 %i.xm, %i.xp
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds [2 x i8], ptr %i.xk, i64 %i.xr
  %i.xt = load i32, ptr %1, align 4
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr inbounds [2 x i8], ptr %i.xs, i64 %i.xu
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xx = load i32, ptr %i.xw, align 4            ; 3 uses
  %i.xy = sub nsw i32 %i.xp, %i.xx
  %i.xz = add nsw i32 %i.xx, 3
  %i.ya = sdiv i32 %i.xz, 4                       ; 4 uses
  %i.yb = and i32 %i.xx, 3
  %i.yc = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.ym = sext i32 %i.xy to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph2122, %bb.v
  %.in2149 = phi i32 [ %i.xi, %.lr.ph2122 ], [ %i.yn, %bb.v ]
  %.018672121 = phi ptr [ %i.xv, %.lr.ph2122 ], [ %i.ahg, %bb.v ] ; 4 uses
  %i.yn = add nsw i32 %.in2149, -1                ; 2 uses
  switch i32 %i.yb, label %default.unreachable [
    i32 0, label %bb.r
    i32 3, label %bb.s
    i32 2, label %bb.t
    i32 1, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q, %bb.u
  %.01872 = phi i32 [ %i.ya, %bb.q ], [ %i.ahe, %bb.u ]
  %.11868 = phi ptr [ %.018672121, %bb.q ], [ %i.ahd, %bb.u ] ; 3 uses
  %i.yo = load i8, ptr %i.yc, align 4             ; 2 uses
  %i.yp = zext i8 %i.yo to i64
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.yp
  %i.yr = load ptr, ptr %i.yq, align 8
  %i.ys = load i16, ptr %.11868, align 2
  %i.yt = zext i16 %i.ys to i32                   ; 3 uses
  %i.yu = load i32, ptr %i.yd, align 4
  %i.yv = and i32 %i.yu, %i.yt
  %i.yw = load i8, ptr %i.ye, align 4
  %i.yx = zext i8 %i.yw to i32                    ; 2 uses
  %i.yy = lshr i32 %i.yv, %i.yx
  %i.yz = zext nneg i32 %i.yy to i64
  %i.za = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.yz
  %i.zb = load i8, ptr %i.za, align 1
  %i.zc = load i8, ptr %i.yf, align 1             ; 2 uses
  %i.zd = zext i8 %i.zc to i64
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.zd
  %i.zf = load ptr, ptr %i.ze, align 8
  %i.zg = load i32, ptr %i.yg, align 4
  %i.zh = and i32 %i.zg, %i.yt
  %i.zi = load i8, ptr %i.yh, align 1
  %i.zj = zext i8 %i.zi to i32                    ; 2 uses
  %i.zk = lshr i32 %i.zh, %i.zj
  %i.zl = zext nneg i32 %i.zk to i64
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zf, i64 %i.zl
  %i.zn = load i8, ptr %i.zm, align 1
  %i.zo = load i8, ptr %i.yi, align 2             ; 2 uses
  %i.zp = zext i8 %i.zo to i64
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.zp
  %i.zr = load ptr, ptr %i.zq, align 8
  %i.zs = load i32, ptr %i.yj, align 4
  %i.zt = and i32 %i.zs, %i.yt
  %i.zu = load i8, ptr %i.yk, align 2
  %i.zv = zext i8 %i.zu to i32                    ; 2 uses
  %i.zw = lshr i32 %i.zt, %i.zv
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zx
  %i.zz = load i8, ptr %i.zy, align 1
  %narrow1989 = tail call i8 @llvm.uadd.sat.i8(i8 %i.zb, i8 %3)
  %spec.store.select60 = zext i8 %narrow1989 to i32
  %narrow1990 = tail call i8 @llvm.uadd.sat.i8(i8 %i.zn, i8 %4)
  %spec.store.select10 = zext i8 %narrow1990 to i32
  %narrow1991 = tail call i8 @llvm.uadd.sat.i8(i8 %i.zz, i8 %5)
  %spec.store.select84 = zext i8 %narrow1991 to i32
  %i.aaa = zext i8 %i.yo to i32
  %i.aab = sub nsw i32 8, %i.aaa
  %i.aac = lshr i32 %spec.store.select60, %i.aab
  %i.aad = shl i32 %i.aac, %i.yx
  %i.aae = zext i8 %i.zc to i32
  %i.aaf = sub nsw i32 8, %i.aae
  %i.aag = lshr i32 %spec.store.select10, %i.aaf
  %i.aah = shl i32 %i.aag, %i.zj
  %i.aai = or i32 %i.aah, %i.aad
  %i.aaj = zext i8 %i.zo to i32
  %i.aak = sub nsw i32 8, %i.aaj
  %i.aal = lshr i32 %spec.store.select84, %i.aak
  %i.aam = shl i32 %i.aal, %i.zv
  %i.aan = load i32, ptr %i.yl, align 4
  %i.aao = or i32 %i.aai, %i.aan
  %i.aap = or i32 %i.aao, %i.aam
  %i.aaq = trunc i32 %i.aap to i16
  store i16 %i.aaq, ptr %.11868, align 2
  %i.aar = getelementptr inbounds nuw i8, ptr %.11868, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.11873 = phi i32 [ %.01872, %bb.r ], [ %i.ya, %bb.q ]
  %.21869 = phi ptr [ %i.aar, %bb.r ], [ %.018672121, %bb.q ] ; 3 uses
  %i.aas = load i8, ptr %i.yc, align 4            ; 2 uses
  %i.aat = zext i8 %i.aas to i64
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aat
  %i.aav = load ptr, ptr %i.aau, align 8
  %i.aaw = load i16, ptr %.21869, align 2
  %i.aax = zext i16 %i.aaw to i32                 ; 3 uses
  %i.aay = load i32, ptr %i.yd, align 4
  %i.aaz = and i32 %i.aay, %i.aax
  %i.aba = load i8, ptr %i.ye, align 4
  %i.abb = zext i8 %i.aba to i32                  ; 2 uses
  %i.abc = lshr i32 %i.aaz, %i.abb
  %i.abd = zext nneg i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aav, i64 %i.abd
  %i.abf = load i8, ptr %i.abe, align 1
  %i.abg = load i8, ptr %i.yf, align 1            ; 2 uses
  %i.abh = zext i8 %i.abg to i64
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.abh
  %i.abj = load ptr, ptr %i.abi, align 8
  %i.abk = load i32, ptr %i.yg, align 4
  %i.abl = and i32 %i.abk, %i.aax
  %i.abm = load i8, ptr %i.yh, align 1
  %i.abn = zext i8 %i.abm to i32                  ; 2 uses
  %i.abo = lshr i32 %i.abl, %i.abn
  %i.abp = zext nneg i32 %i.abo to i64
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.abp
  %i.abr = load i8, ptr %i.abq, align 1
  %i.abs = load i8, ptr %i.yi, align 2            ; 2 uses
  %i.abt = zext i8 %i.abs to i64
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.abt
  %i.abv = load ptr, ptr %i.abu, align 8
  %i.abw = load i32, ptr %i.yj, align 4
  %i.abx = and i32 %i.abw, %i.aax
  %i.aby = load i8, ptr %i.yk, align 2
  %i.abz = zext i8 %i.aby to i32                  ; 2 uses
  %i.aca = lshr i32 %i.abx, %i.abz
  %i.acb = zext nneg i32 %i.aca to i64
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abv, i64 %i.acb
  %i.acd = load i8, ptr %i.acc, align 1
  %narrow1992 = tail call i8 @llvm.uadd.sat.i8(i8 %i.abf, i8 %3)
  %spec.store.select11 = zext i8 %narrow1992 to i32
  %narrow1993 = tail call i8 @llvm.uadd.sat.i8(i8 %i.abr, i8 %4)
  %spec.store.select61 = zext i8 %narrow1993 to i32
  %narrow1994 = tail call i8 @llvm.uadd.sat.i8(i8 %i.acd, i8 %5)
  %spec.store.select12 = zext i8 %narrow1994 to i32
  %i.ace = zext i8 %i.aas to i32
  %i.acf = sub nsw i32 8, %i.ace
  %i.acg = lshr i32 %spec.store.select11, %i.acf
  %i.ach = shl i32 %i.acg, %i.abb
  %i.aci = zext i8 %i.abg to i32
  %i.acj = sub nsw i32 8, %i.aci
  %i.ack = lshr i32 %spec.store.select61, %i.acj
  %i.acl = shl i32 %i.ack, %i.abn
  %i.acm = or i32 %i.acl, %i.ach
  %i.acn = zext i8 %i.abs to i32
  %i.aco = sub nsw i32 8, %i.acn
  %i.acp = lshr i32 %spec.store.select12, %i.aco
  %i.acq = shl i32 %i.acp, %i.abz
  %i.acr = load i32, ptr %i.yl, align 4
  %i.acs = or i32 %i.acm, %i.acr
  %i.act = or i32 %i.acs, %i.acq
  %i.acu = trunc i32 %i.act to i16
  store i16 %i.acu, ptr %.21869, align 2
  %i.acv = getelementptr inbounds nuw i8, ptr %.21869, i64 2
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  %.21874 = phi i32 [ %.11873, %bb.s ], [ %i.ya, %bb.q ]
  %.31870 = phi ptr [ %i.acv, %bb.s ], [ %.018672121, %bb.q ] ; 3 uses
  %i.acw = load i8, ptr %i.yc, align 4            ; 2 uses
  %i.acx = zext i8 %i.acw to i64
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.acx
  %i.acz = load ptr, ptr %i.acy, align 8
  %i.ada = load i16, ptr %.31870, align 2
  %i.adb = zext i16 %i.ada to i32                 ; 3 uses
  %i.adc = load i32, ptr %i.yd, align 4
  %i.add = and i32 %i.adc, %i.adb
  %i.ade = load i8, ptr %i.ye, align 4
  %i.adf = zext i8 %i.ade to i32                  ; 2 uses
  %i.adg = lshr i32 %i.add, %i.adf
  %i.adh = zext nneg i32 %i.adg to i64
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.adh
  %i.adj = load i8, ptr %i.adi, align 1
  %i.adk = load i8, ptr %i.yf, align 1            ; 2 uses
  %i.adl = zext i8 %i.adk to i64
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.adl
  %i.adn = load ptr, ptr %i.adm, align 8
  %i.ado = load i32, ptr %i.yg, align 4
  %i.adp = and i32 %i.ado, %i.adb
  %i.adq = load i8, ptr %i.yh, align 1
  %i.adr = zext i8 %i.adq to i32                  ; 2 uses
  %i.ads = lshr i32 %i.adp, %i.adr
  %i.adt = zext nneg i32 %i.ads to i64
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.adt
  %i.adv = load i8, ptr %i.adu, align 1
  %i.adw = load i8, ptr %i.yi, align 2            ; 2 uses
  %i.adx = zext i8 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.adx
  %i.adz = load ptr, ptr %i.ady, align 8
  %i.aea = load i32, ptr %i.yj, align 4
  %i.aeb = and i32 %i.aea, %i.adb
  %i.aec = load i8, ptr %i.yk, align 2
  %i.aed = zext i8 %i.aec to i32                  ; 2 uses
  %i.aee = lshr i32 %i.aeb, %i.aed
  %i.aef = zext nneg i32 %i.aee to i64
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adz, i64 %i.aef
  %i.aeh = load i8, ptr %i.aeg, align 1
  %narrow1995 = tail call i8 @llvm.uadd.sat.i8(i8 %i.adj, i8 %3)
  %spec.store.select13 = zext i8 %narrow1995 to i32
  %narrow1996 = tail call i8 @llvm.uadd.sat.i8(i8 %i.adv, i8 %4)
  %spec.store.select62 = zext i8 %narrow1996 to i32
  %narrow1997 = tail call i8 @llvm.uadd.sat.i8(i8 %i.aeh, i8 %5)
  %spec.store.select14 = zext i8 %narrow1997 to i32
  %i.aei = zext i8 %i.acw to i32
  %i.aej = sub nsw i32 8, %i.aei
  %i.aek = lshr i32 %spec.store.select13, %i.aej
  %i.ael = shl i32 %i.aek, %i.adf
  %i.aem = zext i8 %i.adk to i32
  %i.aen = sub nsw i32 8, %i.aem
  %i.aeo = lshr i32 %spec.store.select62, %i.aen
  %i.aep = shl i32 %i.aeo, %i.adr
  %i.aeq = or i32 %i.aep, %i.ael
  %i.aer = zext i8 %i.adw to i32
  %i.aes = sub nsw i32 8, %i.aer
  %i.aet = lshr i32 %spec.store.select14, %i.aes
  %i.aeu = shl i32 %i.aet, %i.aed
  %i.aev = load i32, ptr %i.yl, align 4
  %i.aew = or i32 %i.aeq, %i.aev
  %i.aex = or i32 %i.aew, %i.aeu
  %i.aey = trunc i32 %i.aex to i16
  store i16 %i.aey, ptr %.31870, align 2
  %i.aez = getelementptr inbounds nuw i8, ptr %.31870, i64 2
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t
  %.31875 = phi i32 [ %.21874, %bb.t ], [ %i.ya, %bb.q ] ; 2 uses
  %.41871 = phi ptr [ %i.aez, %bb.t ], [ %.018672121, %bb.q ] ; 3 uses
  %i.afa = load i8, ptr %i.yc, align 4            ; 2 uses
  %i.afb = zext i8 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.afb
  %i.afd = load ptr, ptr %i.afc, align 8
  %i.afe = load i16, ptr %.41871, align 2
  %i.aff = zext i16 %i.afe to i32                 ; 3 uses
  %i.afg = load i32, ptr %i.yd, align 4
  %i.afh = and i32 %i.afg, %i.aff
  %i.afi = load i8, ptr %i.ye, align 4
  %i.afj = zext i8 %i.afi to i32                  ; 2 uses
  %i.afk = lshr i32 %i.afh, %i.afj
  %i.afl = zext nneg i32 %i.afk to i64
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afd, i64 %i.afl
  %i.afn = load i8, ptr %i.afm, align 1
  %i.afo = load i8, ptr %i.yf, align 1            ; 2 uses
  %i.afp = zext i8 %i.afo to i64
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.afp
  %i.afr = load ptr, ptr %i.afq, align 8
  %i.afs = load i32, ptr %i.yg, align 4
  %i.aft = and i32 %i.afs, %i.aff
  %i.afu = load i8, ptr %i.yh, align 1
  %i.afv = zext i8 %i.afu to i32                  ; 2 uses
  %i.afw = lshr i32 %i.aft, %i.afv
  %i.afx = zext nneg i32 %i.afw to i64
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afr, i64 %i.afx
  %i.afz = load i8, ptr %i.afy, align 1
  %i.aga = load i8, ptr %i.yi, align 2            ; 2 uses
  %i.agb = zext i8 %i.aga to i64
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.agb
  %i.agd = load ptr, ptr %i.agc, align 8
  %i.age = load i32, ptr %i.yj, align 4
  %i.agf = and i32 %i.age, %i.aff
  %i.agg = load i8, ptr %i.yk, align 2
  %i.agh = zext i8 %i.agg to i32                  ; 2 uses
  %i.agi = lshr i32 %i.agf, %i.agh
  %i.agj = zext nneg i32 %i.agi to i64
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.agj
  %i.agl = load i8, ptr %i.agk, align 1
  %narrow1998 = tail call i8 @llvm.uadd.sat.i8(i8 %i.afn, i8 %3)
  %spec.store.select15 = zext i8 %narrow1998 to i32
  %narrow1999 = tail call i8 @llvm.uadd.sat.i8(i8 %i.afz, i8 %4)
  %spec.store.select63 = zext i8 %narrow1999 to i32
  %narrow2000 = tail call i8 @llvm.uadd.sat.i8(i8 %i.agl, i8 %5)
  %spec.store.select16 = zext i8 %narrow2000 to i32
  %i.agm = zext i8 %i.afa to i32
  %i.agn = sub nsw i32 8, %i.agm
  %i.ago = lshr i32 %spec.store.select15, %i.agn
  %i.agp = shl i32 %i.ago, %i.afj
  %i.agq = zext i8 %i.afo to i32
  %i.agr = sub nsw i32 8, %i.agq
  %i.ags = lshr i32 %spec.store.select63, %i.agr
  %i.agt = shl i32 %i.ags, %i.afv
  %i.agu = or i32 %i.agt, %i.agp
  %i.agv = zext i8 %i.aga to i32
  %i.agw = sub nsw i32 8, %i.agv
  %i.agx = lshr i32 %spec.store.select16, %i.agw
  %i.agy = shl i32 %i.agx, %i.agh
  %i.agz = load i32, ptr %i.yl, align 4
  %i.aha = or i32 %i.agu, %i.agz
  %i.ahb = or i32 %i.aha, %i.agy
  %i.ahc = trunc i32 %i.ahb to i16
  store i16 %i.ahc, ptr %.41871, align 2
  %i.ahd = getelementptr inbounds nuw i8, ptr %.41871, i64 2 ; 2 uses
  %i.ahe = add nsw i32 %.31875, -1
  %i.ahf = icmp sgt i32 %.31875, 1
  br i1 %i.ahf, label %bb.r, label %bb.v, !llvm.loop !56

bb.v:                                             ; preds = %bb.u
  %i.ahg = getelementptr inbounds [2 x i8], ptr %i.ahd, i64 %i.ym
  %.not1977 = icmp eq i32 %i.yn, 0
  br i1 %.not1977, label %.loopexit, label %bb.q, !llvm.loop !57

bb.w:                                             ; preds = %.split
  %i.ahh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ahi = load i32, ptr %i.ahh, align 4          ; 2 uses
  %.not19762117 = icmp eq i32 %i.ahi, 0
  br i1 %.not19762117, label %.loopexit, label %.lr.ph2119

.lr.ph2119:                                       ; preds = %bb.w
  %i.ahj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ahk = load ptr, ptr %i.ahj, align 8
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ahm = load i32, ptr %i.ahl, align 4
  %i.ahn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aho = load i32, ptr %i.ahn, align 8
  %i.ahp = sdiv i32 %i.aho, 2                     ; 2 uses
  %i.ahq = mul nsw i32 %i.ahm, %i.ahp
  %i.ahr = sext i32 %i.ahq to i64
  %i.ahs = getelementptr inbounds [2 x i8], ptr %i.ahk, i64 %i.ahr
  %i.aht = load i32, ptr %1, align 4
  %i.ahu = sext i32 %i.aht to i64
  %i.ahv = getelementptr inbounds [2 x i8], ptr %i.ahs, i64 %i.ahu
  %i.ahw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ahx = load i32, ptr %i.ahw, align 4          ; 3 uses
  %i.ahy = sub nsw i32 %i.ahp, %i.ahx
  %i.ahz = add nsw i32 %i.ahx, 3
  %i.aia = sdiv i32 %i.ahz, 4                     ; 4 uses
  %i.aib = and i32 %i.ahx, 3
  %i.aic = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.ail = zext i8 %3 to i16                      ; 4 uses
  %i.aim = zext i8 %4 to i16                      ; 4 uses
  %i.ain = zext i8 %5 to i16                      ; 4 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.aip = sext i32 %i.ahy to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph2119, %bb.ac
  %.in2148 = phi i32 [ %i.ahi, %.lr.ph2119 ], [ %i.aiq, %bb.ac ]
  %.018772118 = phi ptr [ %i.ahv, %.lr.ph2119 ], [ %i.ash, %bb.ac ] ; 4 uses
  %i.aiq = add nsw i32 %.in2148, -1               ; 2 uses
  switch i32 %i.aib, label %default.unreachable [
    i32 0, label %bb.y
    i32 3, label %bb.z
    i32 2, label %bb.aa
    i32 1, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x, %bb.ab
  %.01882 = phi i32 [ %i.aia, %bb.x ], [ %i.asf, %bb.ab ]
  %.11878 = phi ptr [ %.018772118, %bb.x ], [ %i.ase, %bb.ab ] ; 3 uses
  %i.air = load i8, ptr %i.aic, align 4           ; 2 uses
  %i.ais = zext i8 %i.air to i64
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ais
  %i.aiu = load ptr, ptr %i.ait, align 8
  %i.aiv = load i16, ptr %.11878, align 2
  %i.aiw = zext i16 %i.aiv to i32                 ; 3 uses
  %i.aix = load i32, ptr %i.aid, align 4
  %i.aiy = and i32 %i.aix, %i.aiw
  %i.aiz = load i8, ptr %i.aie, align 4
  %i.aja = zext i8 %i.aiz to i32                  ; 2 uses
  %i.ajb = lshr i32 %i.aiy, %i.aja
  %i.ajc = zext nneg i32 %i.ajb to i64
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aiu, i64 %i.ajc
  %i.aje = load i8, ptr %i.ajd, align 1
  %i.ajf = zext i8 %i.aje to i16
  %i.ajg = load i8, ptr %i.aif, align 1           ; 2 uses
  %i.ajh = zext i8 %i.ajg to i64
  %i.aji = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ajh
  %i.ajj = load ptr, ptr %i.aji, align 8
  %i.ajk = load i32, ptr %i.aig, align 4
  %i.ajl = and i32 %i.ajk, %i.aiw
  %i.ajm = load i8, ptr %i.aih, align 1
  %i.ajn = zext i8 %i.ajm to i32                  ; 2 uses
  %i.ajo = lshr i32 %i.ajl, %i.ajn
  %i.ajp = zext nneg i32 %i.ajo to i64
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajj, i64 %i.ajp
  %i.ajr = load i8, ptr %i.ajq, align 1
  %i.ajs = zext i8 %i.ajr to i16
  %i.ajt = load i8, ptr %i.aii, align 2           ; 2 uses
  %i.aju = zext i8 %i.ajt to i64
  %i.ajv = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aju
  %i.ajw = load ptr, ptr %i.ajv, align 8
  %i.ajx = load i32, ptr %i.aij, align 4
  %i.ajy = and i32 %i.ajx, %i.aiw
  %i.ajz = load i8, ptr %i.aik, align 2
  %i.aka = zext i8 %i.ajz to i32                  ; 2 uses
  %i.akb = lshr i32 %i.ajy, %i.aka
  %i.akc = zext nneg i32 %i.akb to i64
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.akc
  %i.ake = load i8, ptr %i.akd, align 1
  %i.akf = zext i8 %i.ake to i16
  %.lhs.trunc = mul nuw i16 %i.ajf, %i.ail
  %i.akg = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.akg to i32
  %.lhs.trunc1981 = mul nuw i16 %i.ajs, %i.aim
  %i.akh = udiv i16 %.lhs.trunc1981, 255
  %.zext1982 = zext nneg i16 %i.akh to i32
  %.lhs.trunc1983 = mul nuw i16 %i.akf, %i.ain
  %i.aki = udiv i16 %.lhs.trunc1983, 255
  %.zext1984 = zext nneg i16 %i.aki to i32
  %i.akj = zext i8 %i.air to i32
  %i.akk = sub nsw i32 8, %i.akj
  %i.akl = lshr i32 %.zext, %i.akk
  %i.akm = shl i32 %i.akl, %i.aja
  %i.akn = zext i8 %i.ajg to i32
  %i.ako = sub nsw i32 8, %i.akn
  %i.akp = lshr i32 %.zext1982, %i.ako
  %i.akq = shl i32 %i.akp, %i.ajn
  %i.akr = or i32 %i.akq, %i.akm
  %i.aks = zext i8 %i.ajt to i32
  %i.akt = sub nsw i32 8, %i.aks
  %i.aku = lshr i32 %.zext1984, %i.akt
  %i.akv = shl i32 %i.aku, %i.aka
  %i.akw = load i32, ptr %i.aio, align 4
  %i.akx = or i32 %i.akr, %i.akw
  %i.aky = or i32 %i.akx, %i.akv
  %i.akz = trunc i32 %i.aky to i16
  store i16 %i.akz, ptr %.11878, align 2
  %i.ala = getelementptr inbounds nuw i8, ptr %.11878, i64 2
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.11883 = phi i32 [ %.01882, %bb.y ], [ %i.aia, %bb.x ]
  %.21879 = phi ptr [ %i.ala, %bb.y ], [ %.018772118, %bb.x ] ; 3 uses
  %i.alb = load i8, ptr %i.aic, align 4           ; 2 uses
  %i.alc = zext i8 %i.alb to i64
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.alc
  %i.ale = load ptr, ptr %i.ald, align 8
  %i.alf = load i16, ptr %.21879, align 2
  %i.alg = zext i16 %i.alf to i32                 ; 3 uses
  %i.alh = load i32, ptr %i.aid, align 4
  %i.ali = and i32 %i.alh, %i.alg
  %i.alj = load i8, ptr %i.aie, align 4
  %i.alk = zext i8 %i.alj to i32                  ; 2 uses
  %i.all = lshr i32 %i.ali, %i.alk
  %i.alm = zext nneg i32 %i.all to i64
  %i.aln = getelementptr inbounds nuw i8, ptr %i.ale, i64 %i.alm
  %i.alo = load i8, ptr %i.aln, align 1
  %i.alp = zext i8 %i.alo to i16
  %i.alq = load i8, ptr %i.aif, align 1           ; 2 uses
  %i.alr = zext i8 %i.alq to i64
  %i.als = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.alr
  %i.alt = load ptr, ptr %i.als, align 8
  %i.alu = load i32, ptr %i.aig, align 4
  %i.alv = and i32 %i.alu, %i.alg
  %i.alw = load i8, ptr %i.aih, align 1
  %i.alx = zext i8 %i.alw to i32                  ; 2 uses
  %i.aly = lshr i32 %i.alv, %i.alx
  %i.alz = zext nneg i32 %i.aly to i64
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alt, i64 %i.alz
  %i.amb = load i8, ptr %i.ama, align 1
  %i.amc = zext i8 %i.amb to i16
  %i.amd = load i8, ptr %i.aii, align 2           ; 2 uses
  %i.ame = zext i8 %i.amd to i64
  %i.amf = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ame
  %i.amg = load ptr, ptr %i.amf, align 8
  %i.amh = load i32, ptr %i.aij, align 4
  %i.ami = and i32 %i.amh, %i.alg
  %i.amj = load i8, ptr %i.aik, align 2
  %i.amk = zext i8 %i.amj to i32                  ; 2 uses
  %i.aml = lshr i32 %i.ami, %i.amk
  %i.amm = zext nneg i32 %i.aml to i64
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amg, i64 %i.amm
  %i.amo = load i8, ptr %i.amn, align 1
  %i.amp = zext i8 %i.amo to i16
  %.lhs.trunc1985 = mul nuw i16 %i.alp, %i.ail
end_hunk_2
begin_hunk_3_@SDL_BlendFillRect_RGB:bb.a
  %i.ccu = load i32, ptr %i.bxu, align 4
  %i.ccv = or i32 %i.ccu, %i.ccl
  %i.ccw = or i32 %i.ccv, %i.ccp
  %i.ccx = or i32 %i.ccw, %i.cct
  store i32 %i.ccx, ptr %.21939, align 4
  %i.ccy = getelementptr inbounds nuw i8, ptr %.21939, i64 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bc
  %.21944 = phi i32 [ %.11943, %bb.bc ], [ %i.bxg, %bb.ba ]
  %.31940 = phi ptr [ %i.ccy, %bb.bc ], [ %.019372106, %bb.ba ] ; 3 uses
  %i.ccz = load i8, ptr %i.bxi, align 4           ; 2 uses
  %i.cda = zext i8 %i.ccz to i64
  %i.cdb = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cda
  %i.cdc = load ptr, ptr %i.cdb, align 8
  %i.cdd = load i32, ptr %.31940, align 4         ; 3 uses
  %i.cde = load i32, ptr %i.bxj, align 4
  %i.cdf = and i32 %i.cde, %i.cdd
  %i.cdg = load i8, ptr %i.bxk, align 4
  %i.cdh = zext i8 %i.cdg to i32                  ; 2 uses
  %i.cdi = lshr i32 %i.cdf, %i.cdh
  %i.cdj = zext i32 %i.cdi to i64
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdc, i64 %i.cdj
  %i.cdl = load i8, ptr %i.cdk, align 1
  %i.cdm = zext i8 %i.cdl to i32
  %i.cdn = load i8, ptr %i.bxl, align 1           ; 2 uses
  %i.cdo = zext i8 %i.cdn to i64
  %i.cdp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cdo
  %i.cdq = load ptr, ptr %i.cdp, align 8
  %i.cdr = load i32, ptr %i.bxm, align 4
  %i.cds = and i32 %i.cdr, %i.cdd
  %i.cdt = load i8, ptr %i.bxn, align 1
  %i.cdu = zext i8 %i.cdt to i32                  ; 2 uses
  %i.cdv = lshr i32 %i.cds, %i.cdu
  %i.cdw = zext i32 %i.cdv to i64
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.cdq, i64 %i.cdw
  %i.cdy = load i8, ptr %i.cdx, align 1
  %i.cdz = zext i8 %i.cdy to i32
  %i.cea = load i8, ptr %i.bxo, align 2           ; 2 uses
  %i.ceb = zext i8 %i.cea to i64
  %i.cec = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ceb
  %i.ced = load ptr, ptr %i.cec, align 8
  %i.cee = load i32, ptr %i.bxp, align 4
  %i.cef = and i32 %i.cee, %i.cdd
  %i.ceg = load i8, ptr %i.bxq, align 2
  %i.ceh = zext i8 %i.ceg to i32                  ; 2 uses
  %i.cei = lshr i32 %i.cef, %i.ceh
  %i.cej = zext i32 %i.cei to i64
  %i.cek = getelementptr inbounds nuw i8, ptr %i.ced, i64 %i.cej
  %i.cel = load i8, ptr %i.cek, align 1
  %i.cem = zext i8 %i.cel to i32
  %i.cen = mul nuw nsw i32 %i.cdm, %i.d
  %i.ceo = udiv i32 %i.cen, 255
  %i.cep = add nuw nsw i32 %i.ceo, %i.bxr
  %spec.store.select34 = tail call i32 @llvm.umin.i32(i32 %i.cep, i32 255)
  %i.ceq = mul nuw nsw i32 %i.cdz, %i.d
  %i.cer = udiv i32 %i.ceq, 255
  %i.ces = add nuw nsw i32 %i.cer, %i.bxs
  %spec.store.select70 = tail call i32 @llvm.umin.i32(i32 %i.ces, i32 255)
  %i.cet = mul nuw nsw i32 %i.cem, %i.d
  %i.ceu = udiv i32 %i.cet, 255
  %i.cev = add nuw nsw i32 %i.ceu, %i.bxt
  %spec.store.select35 = tail call i32 @llvm.umin.i32(i32 %i.cev, i32 255)
  %i.cew = zext i8 %i.ccz to i32
  %i.cex = sub nsw i32 8, %i.cew
  %i.cey = lshr i32 %spec.store.select34, %i.cex
  %i.cez = shl i32 %i.cey, %i.cdh
  %i.cfa = zext i8 %i.cdn to i32
  %i.cfb = sub nsw i32 8, %i.cfa
  %i.cfc = lshr i32 %spec.store.select70, %i.cfb
  %i.cfd = shl i32 %i.cfc, %i.cdu
  %i.cfe = zext i8 %i.cea to i32
  %i.cff = sub nsw i32 8, %i.cfe
  %i.cfg = lshr i32 %spec.store.select35, %i.cff
  %i.cfh = shl i32 %i.cfg, %i.ceh
  %i.cfi = load i32, ptr %i.bxu, align 4
  %i.cfj = or i32 %i.cfi, %i.cez
  %i.cfk = or i32 %i.cfj, %i.cfd
  %i.cfl = or i32 %i.cfk, %i.cfh
  store i32 %i.cfl, ptr %.31940, align 4
  %i.cfm = getelementptr inbounds nuw i8, ptr %.31940, i64 4
  br label %bb.be

bb.be:                                            ; preds = %bb.ba, %bb.bd
  %.31945 = phi i32 [ %.21944, %bb.bd ], [ %i.bxg, %bb.ba ] ; 2 uses
  %.41941 = phi ptr [ %i.cfm, %bb.bd ], [ %.019372106, %bb.ba ] ; 3 uses
  %i.cfn = load i8, ptr %i.bxi, align 4           ; 2 uses
  %i.cfo = zext i8 %i.cfn to i64
  %i.cfp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cfo
  %i.cfq = load ptr, ptr %i.cfp, align 8
  %i.cfr = load i32, ptr %.41941, align 4         ; 3 uses
  %i.cfs = load i32, ptr %i.bxj, align 4
  %i.cft = and i32 %i.cfs, %i.cfr
  %i.cfu = load i8, ptr %i.bxk, align 4
  %i.cfv = zext i8 %i.cfu to i32                  ; 2 uses
  %i.cfw = lshr i32 %i.cft, %i.cfv
  %i.cfx = zext i32 %i.cfw to i64
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfq, i64 %i.cfx
  %i.cfz = load i8, ptr %i.cfy, align 1
  %i.cga = zext i8 %i.cfz to i32
  %i.cgb = load i8, ptr %i.bxl, align 1           ; 2 uses
  %i.cgc = zext i8 %i.cgb to i64
  %i.cgd = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cgc
  %i.cge = load ptr, ptr %i.cgd, align 8
  %i.cgf = load i32, ptr %i.bxm, align 4
  %i.cgg = and i32 %i.cgf, %i.cfr
  %i.cgh = load i8, ptr %i.bxn, align 1
  %i.cgi = zext i8 %i.cgh to i32                  ; 2 uses
  %i.cgj = lshr i32 %i.cgg, %i.cgi
  %i.cgk = zext i32 %i.cgj to i64
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.cge, i64 %i.cgk
  %i.cgm = load i8, ptr %i.cgl, align 1
  %i.cgn = zext i8 %i.cgm to i32
  %i.cgo = load i8, ptr %i.bxo, align 2           ; 2 uses
  %i.cgp = zext i8 %i.cgo to i64
  %i.cgq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cgp
  %i.cgr = load ptr, ptr %i.cgq, align 8
  %i.cgs = load i32, ptr %i.bxp, align 4
  %i.cgt = and i32 %i.cgs, %i.cfr
  %i.cgu = load i8, ptr %i.bxq, align 2
  %i.cgv = zext i8 %i.cgu to i32                  ; 2 uses
  %i.cgw = lshr i32 %i.cgt, %i.cgv
  %i.cgx = zext i32 %i.cgw to i64
  %i.cgy = getelementptr inbounds nuw i8, ptr %i.cgr, i64 %i.cgx
  %i.cgz = load i8, ptr %i.cgy, align 1
  %i.cha = zext i8 %i.cgz to i32
  %i.chb = mul nuw nsw i32 %i.cga, %i.d
  %i.chc = udiv i32 %i.chb, 255
  %i.chd = add nuw nsw i32 %i.chc, %i.bxr
  %spec.store.select36 = tail call i32 @llvm.umin.i32(i32 %i.chd, i32 255)
  %i.che = mul nuw nsw i32 %i.cgn, %i.d
  %i.chf = udiv i32 %i.che, 255
  %i.chg = add nuw nsw i32 %i.chf, %i.bxs
  %spec.store.select71 = tail call i32 @llvm.umin.i32(i32 %i.chg, i32 255)
  %i.chh = mul nuw nsw i32 %i.cha, %i.d
  %i.chi = udiv i32 %i.chh, 255
  %i.chj = add nuw nsw i32 %i.chi, %i.bxt
  %spec.store.select37 = tail call i32 @llvm.umin.i32(i32 %i.chj, i32 255)
  %i.chk = zext i8 %i.cfn to i32
  %i.chl = sub nsw i32 8, %i.chk
  %i.chm = lshr i32 %spec.store.select36, %i.chl
  %i.chn = shl i32 %i.chm, %i.cfv
  %i.cho = zext i8 %i.cgb to i32
  %i.chp = sub nsw i32 8, %i.cho
  %i.chq = lshr i32 %spec.store.select71, %i.chp
  %i.chr = shl i32 %i.chq, %i.cgi
  %i.chs = zext i8 %i.cgo to i32
  %i.cht = sub nsw i32 8, %i.chs
  %i.chu = lshr i32 %spec.store.select37, %i.cht
  %i.chv = shl i32 %i.chu, %i.cgv
  %i.chw = load i32, ptr %i.bxu, align 4
  %i.chx = or i32 %i.chw, %i.chn
  %i.chy = or i32 %i.chx, %i.chr
  %i.chz = or i32 %i.chy, %i.chv
  store i32 %i.chz, ptr %.41941, align 4
  %i.cia = getelementptr inbounds nuw i8, ptr %.41941, i64 4 ; 2 uses
  %i.cib = add nsw i32 %.31945, -1
  %i.cic = icmp sgt i32 %.31945, 1
  br i1 %i.cic, label %bb.bb, label %bb.bf, !llvm.loop !66

bb.bf:                                            ; preds = %bb.be
  %i.cid = getelementptr inbounds [4 x i8], ptr %i.cia, i64 %i.bxv
  %.not1972 = icmp eq i32 %i.bxw, 0
  br i1 %.not1972, label %.loopexit, label %bb.ba, !llvm.loop !67

bb.bg:                                            ; preds = %.split27, %.split27
  %i.cie = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cif = load i32, ptr %i.cie, align 4          ; 2 uses
  %.not19712102 = icmp eq i32 %i.cif, 0
  br i1 %.not19712102, label %.loopexit, label %.lr.ph2104

.lr.ph2104:                                       ; preds = %bb.bg
  %i.cig = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cih = load ptr, ptr %i.cig, align 8
  %i.cii = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cij = load i32, ptr %i.cii, align 4
  %i.cik = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cil = load i32, ptr %i.cik, align 8
  %i.cim = sdiv i32 %i.cil, 4                     ; 2 uses
  %i.cin = mul nsw i32 %i.cij, %i.cim
  %i.cio = sext i32 %i.cin to i64
  %i.cip = getelementptr inbounds [4 x i8], ptr %i.cih, i64 %i.cio
  %i.ciq = load i32, ptr %1, align 4
  %i.cir = sext i32 %i.ciq to i64
  %i.cis = getelementptr inbounds [4 x i8], ptr %i.cip, i64 %i.cir
  %i.cit = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ciu = load i32, ptr %i.cit, align 4          ; 3 uses
  %i.civ = sub nsw i32 %i.cim, %i.ciu
  %i.ciw = add nsw i32 %i.ciu, 3
  %i.cix = sdiv i32 %i.ciw, 4                     ; 4 uses
  %i.ciy = and i32 %i.ciu, 3
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.cja = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.cje = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.cji = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.cjj = sext i32 %i.civ to i64
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph2104, %bb.bm
  %.in2143 = phi i32 [ %i.cif, %.lr.ph2104 ], [ %i.cjk, %bb.bm ]
  %.019472103 = phi ptr [ %i.cis, %.lr.ph2104 ], [ %i.crv, %bb.bm ] ; 4 uses
  %i.cjk = add nsw i32 %.in2143, -1               ; 2 uses
  switch i32 %i.ciy, label %default.unreachable [
    i32 0, label %bb.bi
    i32 3, label %bb.bj
    i32 2, label %bb.bk
    i32 1, label %bb.bl
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bl
  %.01952 = phi i32 [ %i.cix, %bb.bh ], [ %i.crt, %bb.bl ]
  %.11948 = phi ptr [ %.019472103, %bb.bh ], [ %i.crs, %bb.bl ] ; 3 uses
  %i.cjl = load i8, ptr %i.ciz, align 4           ; 2 uses
  %i.cjm = zext i8 %i.cjl to i64
  %i.cjn = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cjm
  %i.cjo = load ptr, ptr %i.cjn, align 8
  %i.cjp = load i32, ptr %.11948, align 4         ; 3 uses
  %i.cjq = load i32, ptr %i.cja, align 4
  %i.cjr = and i32 %i.cjq, %i.cjp
  %i.cjs = load i8, ptr %i.cjb, align 4
  %i.cjt = zext i8 %i.cjs to i32                  ; 2 uses
  %i.cju = lshr i32 %i.cjr, %i.cjt
  %i.cjv = zext i32 %i.cju to i64
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cjo, i64 %i.cjv
  %i.cjx = load i8, ptr %i.cjw, align 1
  %i.cjy = load i8, ptr %i.cjc, align 1           ; 2 uses
  %i.cjz = zext i8 %i.cjy to i64
  %i.cka = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cjz
  %i.ckb = load ptr, ptr %i.cka, align 8
  %i.ckc = load i32, ptr %i.cjd, align 4
  %i.ckd = and i32 %i.ckc, %i.cjp
  %i.cke = load i8, ptr %i.cje, align 1
  %i.ckf = zext i8 %i.cke to i32                  ; 2 uses
  %i.ckg = lshr i32 %i.ckd, %i.ckf
  %i.ckh = zext i32 %i.ckg to i64
  %i.cki = getelementptr inbounds nuw i8, ptr %i.ckb, i64 %i.ckh
  %i.ckj = load i8, ptr %i.cki, align 1
  %i.ckk = load i8, ptr %i.cjf, align 2           ; 2 uses
  %i.ckl = zext i8 %i.ckk to i64
  %i.ckm = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ckl
  %i.ckn = load ptr, ptr %i.ckm, align 8
  %i.cko = load i32, ptr %i.cjg, align 4
  %i.ckp = and i32 %i.cko, %i.cjp
  %i.ckq = load i8, ptr %i.cjh, align 2
  %i.ckr = zext i8 %i.ckq to i32                  ; 2 uses
  %i.cks = lshr i32 %i.ckp, %i.ckr
  %i.ckt = zext i32 %i.cks to i64
  %i.cku = getelementptr inbounds nuw i8, ptr %i.ckn, i64 %i.ckt
  %i.ckv = load i8, ptr %i.cku, align 1
  %narrow = tail call i8 @llvm.uadd.sat.i8(i8 %i.cjx, i8 %3)
  %spec.store.select72 = zext i8 %narrow to i32
  %narrow1972 = tail call i8 @llvm.uadd.sat.i8(i8 %i.ckj, i8 %4)
  %spec.store.select39 = zext i8 %narrow1972 to i32
  %narrow1973 = tail call i8 @llvm.uadd.sat.i8(i8 %i.ckv, i8 %5)
  %spec.store.select90 = zext i8 %narrow1973 to i32
  %i.ckw = zext i8 %i.cjl to i32
  %i.ckx = sub nsw i32 8, %i.ckw
  %i.cky = lshr i32 %spec.store.select72, %i.ckx
  %i.ckz = shl i32 %i.cky, %i.cjt
  %i.cla = zext i8 %i.cjy to i32
  %i.clb = sub nsw i32 8, %i.cla
  %i.clc = lshr i32 %spec.store.select39, %i.clb
  %i.cld = shl i32 %i.clc, %i.ckf
  %i.cle = or i32 %i.cld, %i.ckz
  %i.clf = zext i8 %i.ckk to i32
  %i.clg = sub nsw i32 8, %i.clf
  %i.clh = lshr i32 %spec.store.select90, %i.clg
  %i.cli = shl i32 %i.clh, %i.ckr
  %i.clj = load i32, ptr %i.cji, align 4
  %i.clk = or i32 %i.cle, %i.clj
  %i.cll = or i32 %i.clk, %i.cli
  store i32 %i.cll, ptr %.11948, align 4
  %i.clm = getelementptr inbounds nuw i8, ptr %.11948, i64 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %.11953 = phi i32 [ %.01952, %bb.bi ], [ %i.cix, %bb.bh ]
  %.21949 = phi ptr [ %i.clm, %bb.bi ], [ %.019472103, %bb.bh ] ; 3 uses
  %i.cln = load i8, ptr %i.ciz, align 4           ; 2 uses
  %i.clo = zext i8 %i.cln to i64
  %i.clp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.clo
  %i.clq = load ptr, ptr %i.clp, align 8
  %i.clr = load i32, ptr %.21949, align 4         ; 3 uses
  %i.cls = load i32, ptr %i.cja, align 4
  %i.clt = and i32 %i.cls, %i.clr
  %i.clu = load i8, ptr %i.cjb, align 4
  %i.clv = zext i8 %i.clu to i32                  ; 2 uses
  %i.clw = lshr i32 %i.clt, %i.clv
  %i.clx = zext i32 %i.clw to i64
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clq, i64 %i.clx
  %i.clz = load i8, ptr %i.cly, align 1
  %i.cma = load i8, ptr %i.cjc, align 1           ; 2 uses
  %i.cmb = zext i8 %i.cma to i64
  %i.cmc = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cmb
  %i.cmd = load ptr, ptr %i.cmc, align 8
  %i.cme = load i32, ptr %i.cjd, align 4
  %i.cmf = and i32 %i.cme, %i.clr
  %i.cmg = load i8, ptr %i.cje, align 1
  %i.cmh = zext i8 %i.cmg to i32                  ; 2 uses
  %i.cmi = lshr i32 %i.cmf, %i.cmh
  %i.cmj = zext i32 %i.cmi to i64
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.cmd, i64 %i.cmj
  %i.cml = load i8, ptr %i.cmk, align 1
  %i.cmm = load i8, ptr %i.cjf, align 2           ; 2 uses
  %i.cmn = zext i8 %i.cmm to i64
  %i.cmo = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cmn
  %i.cmp = load ptr, ptr %i.cmo, align 8
  %i.cmq = load i32, ptr %i.cjg, align 4
  %i.cmr = and i32 %i.cmq, %i.clr
  %i.cms = load i8, ptr %i.cjh, align 2
  %i.cmt = zext i8 %i.cms to i32                  ; 2 uses
  %i.cmu = lshr i32 %i.cmr, %i.cmt
  %i.cmv = zext i32 %i.cmu to i64
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cmp, i64 %i.cmv
  %i.cmx = load i8, ptr %i.cmw, align 1
  %narrow1974 = tail call i8 @llvm.uadd.sat.i8(i8 %i.clz, i8 %3)
  %spec.store.select40 = zext i8 %narrow1974 to i32
  %narrow1975 = tail call i8 @llvm.uadd.sat.i8(i8 %i.cml, i8 %4)
  %spec.store.select73 = zext i8 %narrow1975 to i32
  %narrow1976 = tail call i8 @llvm.uadd.sat.i8(i8 %i.cmx, i8 %5)
  %spec.store.select41 = zext i8 %narrow1976 to i32
  %i.cmy = zext i8 %i.cln to i32
  %i.cmz = sub nsw i32 8, %i.cmy
  %i.cna = lshr i32 %spec.store.select40, %i.cmz
  %i.cnb = shl i32 %i.cna, %i.clv
  %i.cnc = zext i8 %i.cma to i32
  %i.cnd = sub nsw i32 8, %i.cnc
  %i.cne = lshr i32 %spec.store.select73, %i.cnd
  %i.cnf = shl i32 %i.cne, %i.cmh
  %i.cng = or i32 %i.cnf, %i.cnb
  %i.cnh = zext i8 %i.cmm to i32
  %i.cni = sub nsw i32 8, %i.cnh
  %i.cnj = lshr i32 %spec.store.select41, %i.cni
  %i.cnk = shl i32 %i.cnj, %i.cmt
  %i.cnl = load i32, ptr %i.cji, align 4
  %i.cnm = or i32 %i.cng, %i.cnl
  %i.cnn = or i32 %i.cnm, %i.cnk
  store i32 %i.cnn, ptr %.21949, align 4
  %i.cno = getelementptr inbounds nuw i8, ptr %.21949, i64 4
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bj
  %.21954 = phi i32 [ %.11953, %bb.bj ], [ %i.cix, %bb.bh ]
  %.31950 = phi ptr [ %i.cno, %bb.bj ], [ %.019472103, %bb.bh ] ; 3 uses
  %i.cnp = load i8, ptr %i.ciz, align 4           ; 2 uses
  %i.cnq = zext i8 %i.cnp to i64
  %i.cnr = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cnq
  %i.cns = load ptr, ptr %i.cnr, align 8
  %i.cnt = load i32, ptr %.31950, align 4         ; 3 uses
  %i.cnu = load i32, ptr %i.cja, align 4
  %i.cnv = and i32 %i.cnu, %i.cnt
  %i.cnw = load i8, ptr %i.cjb, align 4
  %i.cnx = zext i8 %i.cnw to i32                  ; 2 uses
  %i.cny = lshr i32 %i.cnv, %i.cnx
  %i.cnz = zext i32 %i.cny to i64
  %i.coa = getelementptr inbounds nuw i8, ptr %i.cns, i64 %i.cnz
  %i.cob = load i8, ptr %i.coa, align 1
  %i.coc = load i8, ptr %i.cjc, align 1           ; 2 uses
  %i.cod = zext i8 %i.coc to i64
  %i.coe = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cod
  %i.cof = load ptr, ptr %i.coe, align 8
  %i.cog = load i32, ptr %i.cjd, align 4
  %i.coh = and i32 %i.cog, %i.cnt
  %i.coi = load i8, ptr %i.cje, align 1
  %i.coj = zext i8 %i.coi to i32                  ; 2 uses
  %i.cok = lshr i32 %i.coh, %i.coj
  %i.col = zext i32 %i.cok to i64
  %i.com = getelementptr inbounds nuw i8, ptr %i.cof, i64 %i.col
  %i.con = load i8, ptr %i.com, align 1
  %i.coo = load i8, ptr %i.cjf, align 2           ; 2 uses
  %i.cop = zext i8 %i.coo to i64
  %i.coq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cop
  %i.cor = load ptr, ptr %i.coq, align 8
  %i.cos = load i32, ptr %i.cjg, align 4
  %i.cot = and i32 %i.cos, %i.cnt
  %i.cou = load i8, ptr %i.cjh, align 2
  %i.cov = zext i8 %i.cou to i32                  ; 2 uses
  %i.cow = lshr i32 %i.cot, %i.cov
  %i.cox = zext i32 %i.cow to i64
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cor, i64 %i.cox
  %i.coz = load i8, ptr %i.coy, align 1
  %narrow1977 = tail call i8 @llvm.uadd.sat.i8(i8 %i.cob, i8 %3)
  %spec.store.select42 = zext i8 %narrow1977 to i32
  %narrow1978 = tail call i8 @llvm.uadd.sat.i8(i8 %i.con, i8 %4)
  %spec.store.select74 = zext i8 %narrow1978 to i32
  %narrow1979 = tail call i8 @llvm.uadd.sat.i8(i8 %i.coz, i8 %5)
  %spec.store.select43 = zext i8 %narrow1979 to i32
  %i.cpa = zext i8 %i.cnp to i32
  %i.cpb = sub nsw i32 8, %i.cpa
  %i.cpc = lshr i32 %spec.store.select42, %i.cpb
  %i.cpd = shl i32 %i.cpc, %i.cnx
  %i.cpe = zext i8 %i.coc to i32
  %i.cpf = sub nsw i32 8, %i.cpe
  %i.cpg = lshr i32 %spec.store.select74, %i.cpf
  %i.cph = shl i32 %i.cpg, %i.coj
  %i.cpi = or i32 %i.cph, %i.cpd
  %i.cpj = zext i8 %i.coo to i32
  %i.cpk = sub nsw i32 8, %i.cpj
  %i.cpl = lshr i32 %spec.store.select43, %i.cpk
  %i.cpm = shl i32 %i.cpl, %i.cov
  %i.cpn = load i32, ptr %i.cji, align 4
  %i.cpo = or i32 %i.cpi, %i.cpn
  %i.cpp = or i32 %i.cpo, %i.cpm
  store i32 %i.cpp, ptr %.31950, align 4
  %i.cpq = getelementptr inbounds nuw i8, ptr %.31950, i64 4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bh, %bb.bk
  %.31955 = phi i32 [ %.21954, %bb.bk ], [ %i.cix, %bb.bh ] ; 2 uses
  %.41951 = phi ptr [ %i.cpq, %bb.bk ], [ %.019472103, %bb.bh ] ; 3 uses
  %i.cpr = load i8, ptr %i.ciz, align 4           ; 2 uses
  %i.cps = zext i8 %i.cpr to i64
  %i.cpt = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cps
  %i.cpu = load ptr, ptr %i.cpt, align 8
  %i.cpv = load i32, ptr %.41951, align 4         ; 3 uses
  %i.cpw = load i32, ptr %i.cja, align 4
  %i.cpx = and i32 %i.cpw, %i.cpv
  %i.cpy = load i8, ptr %i.cjb, align 4
  %i.cpz = zext i8 %i.cpy to i32                  ; 2 uses
  %i.cqa = lshr i32 %i.cpx, %i.cpz
  %i.cqb = zext i32 %i.cqa to i64
  %i.cqc = getelementptr inbounds nuw i8, ptr %i.cpu, i64 %i.cqb
  %i.cqd = load i8, ptr %i.cqc, align 1
  %i.cqe = load i8, ptr %i.cjc, align 1           ; 2 uses
  %i.cqf = zext i8 %i.cqe to i64
  %i.cqg = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cqf
  %i.cqh = load ptr, ptr %i.cqg, align 8
  %i.cqi = load i32, ptr %i.cjd, align 4
  %i.cqj = and i32 %i.cqi, %i.cpv
  %i.cqk = load i8, ptr %i.cje, align 1
  %i.cql = zext i8 %i.cqk to i32                  ; 2 uses
  %i.cqm = lshr i32 %i.cqj, %i.cql
  %i.cqn = zext i32 %i.cqm to i64
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cqh, i64 %i.cqn
  %i.cqp = load i8, ptr %i.cqo, align 1
  %i.cqq = load i8, ptr %i.cjf, align 2           ; 2 uses
  %i.cqr = zext i8 %i.cqq to i64
  %i.cqs = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cqr
  %i.cqt = load ptr, ptr %i.cqs, align 8
  %i.cqu = load i32, ptr %i.cjg, align 4
  %i.cqv = and i32 %i.cqu, %i.cpv
  %i.cqw = load i8, ptr %i.cjh, align 2
  %i.cqx = zext i8 %i.cqw to i32                  ; 2 uses
  %i.cqy = lshr i32 %i.cqv, %i.cqx
  %i.cqz = zext i32 %i.cqy to i64
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cqt, i64 %i.cqz
  %i.crb = load i8, ptr %i.cra, align 1
  %narrow1980 = tail call i8 @llvm.uadd.sat.i8(i8 %i.cqd, i8 %3)
  %spec.store.select44 = zext i8 %narrow1980 to i32
  %narrow1981 = tail call i8 @llvm.uadd.sat.i8(i8 %i.cqp, i8 %4)
  %spec.store.select75 = zext i8 %narrow1981 to i32
  %narrow1982 = tail call i8 @llvm.uadd.sat.i8(i8 %i.crb, i8 %5)
  %spec.store.select45 = zext i8 %narrow1982 to i32
  %i.crc = zext i8 %i.cpr to i32
  %i.crd = sub nsw i32 8, %i.crc
  %i.cre = lshr i32 %spec.store.select44, %i.crd
  %i.crf = shl i32 %i.cre, %i.cpz
  %i.crg = zext i8 %i.cqe to i32
  %i.crh = sub nsw i32 8, %i.crg
  %i.cri = lshr i32 %spec.store.select75, %i.crh
  %i.crj = shl i32 %i.cri, %i.cql
  %i.crk = or i32 %i.crj, %i.crf
  %i.crl = zext i8 %i.cqq to i32
  %i.crm = sub nsw i32 8, %i.crl
  %i.crn = lshr i32 %spec.store.select45, %i.crm
  %i.cro = shl i32 %i.crn, %i.cqx
  %i.crp = load i32, ptr %i.cji, align 4
  %i.crq = or i32 %i.crk, %i.crp
  %i.crr = or i32 %i.crq, %i.cro
  store i32 %i.crr, ptr %.41951, align 4
  %i.crs = getelementptr inbounds nuw i8, ptr %.41951, i64 4 ; 2 uses
  %i.crt = add nsw i32 %.31955, -1
  %i.cru = icmp sgt i32 %.31955, 1
  br i1 %i.cru, label %bb.bi, label %bb.bm, !llvm.loop !68

bb.bm:                                            ; preds = %bb.bl
  %i.crv = getelementptr inbounds [4 x i8], ptr %i.crs, i64 %i.cjj
  %.not1971 = icmp eq i32 %i.cjk, 0
  br i1 %.not1971, label %.loopexit, label %bb.bh, !llvm.loop !69

bb.bn:                                            ; preds = %.split27
  %i.crw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.crx = load i32, ptr %i.crw, align 4          ; 2 uses
  %.not19702099 = icmp eq i32 %i.crx, 0
  br i1 %.not19702099, label %.loopexit, label %.lr.ph2101

.lr.ph2101:                                       ; preds = %bb.bn
  %i.cry = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.crz = load ptr, ptr %i.cry, align 8
  %i.csa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.csb = load i32, ptr %i.csa, align 4
  %i.csc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.csd = load i32, ptr %i.csc, align 8
  %i.cse = sdiv i32 %i.csd, 4                     ; 2 uses
  %i.csf = mul nsw i32 %i.csb, %i.cse
  %i.csg = sext i32 %i.csf to i64
  %i.csh = getelementptr inbounds [4 x i8], ptr %i.crz, i64 %i.csg
  %i.csi = load i32, ptr %1, align 4
  %i.csj = sext i32 %i.csi to i64
  %i.csk = getelementptr inbounds [4 x i8], ptr %i.csh, i64 %i.csj
  %i.csl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.csm = load i32, ptr %i.csl, align 4          ; 3 uses
  %i.csn = sub nsw i32 %i.cse, %i.csm
  %i.cso = add nsw i32 %i.csm, 3
  %i.csp = sdiv i32 %i.cso, 4                     ; 4 uses
  %i.csq = and i32 %i.csm, 3
  %i.csr = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.css = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.cst = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.csu = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.csv = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.csw = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.csx = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.csy = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.csz = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.cta = zext i8 %3 to i16                      ; 4 uses
  %i.ctb = zext i8 %4 to i16                      ; 4 uses
  %i.ctc = zext i8 %5 to i16                      ; 4 uses
  %i.ctd = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.cte = sext i32 %i.csn to i64
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph2101, %bb.bt
  %.in2142 = phi i32 [ %i.crx, %.lr.ph2101 ], [ %i.ctf, %bb.bt ]
  %.019312100 = phi ptr [ %i.csk, %.lr.ph2101 ], [ %i.dco, %bb.bt ] ; 4 uses
  %i.ctf = add nsw i32 %.in2142, -1               ; 2 uses
  switch i32 %i.csq, label %default.unreachable [
    i32 0, label %bb.bp
    i32 3, label %bb.bq
    i32 2, label %bb.br
    i32 1, label %bb.bs
  ]

bb.bp:                                            ; preds = %bb.bo, %bb.bs
  %.11932 = phi ptr [ %.019312100, %bb.bo ], [ %i.dcl, %bb.bs ] ; 3 uses
  %.01927 = phi i32 [ %i.csp, %bb.bo ], [ %i.dcm, %bb.bs ]
  %i.ctg = load i8, ptr %i.csr, align 4           ; 2 uses
  %i.cth = zext i8 %i.ctg to i64
  %i.cti = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cth
  %i.ctj = load ptr, ptr %i.cti, align 8
  %i.ctk = load i32, ptr %.11932, align 4         ; 3 uses
  %i.ctl = load i32, ptr %i.css, align 4
  %i.ctm = and i32 %i.ctl, %i.ctk
  %i.ctn = load i8, ptr %i.cst, align 4
  %i.cto = zext i8 %i.ctn to i32                  ; 2 uses
  %i.ctp = lshr i32 %i.ctm, %i.cto
  %i.ctq = zext i32 %i.ctp to i64
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.ctj, i64 %i.ctq
  %i.cts = load i8, ptr %i.ctr, align 1
  %i.ctt = zext i8 %i.cts to i16
  %i.ctu = load i8, ptr %i.csu, align 1           ; 2 uses
  %i.ctv = zext i8 %i.ctu to i64
  %i.ctw = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ctv
  %i.ctx = load ptr, ptr %i.ctw, align 8
  %i.cty = load i32, ptr %i.csv, align 4
  %i.ctz = and i32 %i.cty, %i.ctk
  %i.cua = load i8, ptr %i.csw, align 1
  %i.cub = zext i8 %i.cua to i32                  ; 2 uses
  %i.cuc = lshr i32 %i.ctz, %i.cub
  %i.cud = zext i32 %i.cuc to i64
  %i.cue = getelementptr inbounds nuw i8, ptr %i.ctx, i64 %i.cud
  %i.cuf = load i8, ptr %i.cue, align 1
  %i.cug = zext i8 %i.cuf to i16
  %i.cuh = load i8, ptr %i.csx, align 2           ; 2 uses
  %i.cui = zext i8 %i.cuh to i64
  %i.cuj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cui
  %i.cuk = load ptr, ptr %i.cuj, align 8
  %i.cul = load i32, ptr %i.csy, align 4
  %i.cum = and i32 %i.cul, %i.ctk
  %i.cun = load i8, ptr %i.csz, align 2
  %i.cuo = zext i8 %i.cun to i32                  ; 2 uses
  %i.cup = lshr i32 %i.cum, %i.cuo
  %i.cuq = zext i32 %i.cup to i64
  %i.cur = getelementptr inbounds nuw i8, ptr %i.cuk, i64 %i.cuq
  %i.cus = load i8, ptr %i.cur, align 1
  %i.cut = zext i8 %i.cus to i16
  %.lhs.trunc2027 = mul nuw i16 %i.ctt, %i.cta
  %i.cuu = udiv i16 %.lhs.trunc2027, 255
  %.zext2028 = zext nneg i16 %i.cuu to i32
  %.lhs.trunc2029 = mul nuw i16 %i.cug, %i.ctb
  %i.cuv = udiv i16 %.lhs.trunc2029, 255
  %.zext2030 = zext nneg i16 %i.cuv to i32
  %.lhs.trunc2031 = mul nuw i16 %i.cut, %i.ctc
  %i.cuw = udiv i16 %.lhs.trunc2031, 255
  %.zext2032 = zext nneg i16 %i.cuw to i32
  %i.cux = zext i8 %i.ctg to i32
  %i.cuy = sub nsw i32 8, %i.cux
  %i.cuz = lshr i32 %.zext2028, %i.cuy
  %i.cva = shl i32 %i.cuz, %i.cto
  %i.cvb = zext i8 %i.ctu to i32
  %i.cvc = sub nsw i32 8, %i.cvb
  %i.cvd = lshr i32 %.zext2030, %i.cvc
  %i.cve = shl i32 %i.cvd, %i.cub
  %i.cvf = or i32 %i.cve, %i.cva
  %i.cvg = zext i8 %i.cuh to i32
  %i.cvh = sub nsw i32 8, %i.cvg
  %i.cvi = lshr i32 %.zext2032, %i.cvh
  %i.cvj = shl i32 %i.cvi, %i.cuo
  %i.cvk = load i32, ptr %i.ctd, align 4
  %i.cvl = or i32 %i.cvf, %i.cvk
  %i.cvm = or i32 %i.cvl, %i.cvj
  store i32 %i.cvm, ptr %.11932, align 4
  %i.cvn = getelementptr inbounds nuw i8, ptr %.11932, i64 4
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %.21933 = phi ptr [ %i.cvn, %bb.bp ], [ %.019312100, %bb.bo ] ; 3 uses
  %.11928 = phi i32 [ %.01927, %bb.bp ], [ %i.csp, %bb.bo ]
  %i.cvo = load i8, ptr %i.csr, align 4           ; 2 uses
  %i.cvp = zext i8 %i.cvo to i64
  %i.cvq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cvp
  %i.cvr = load ptr, ptr %i.cvq, align 8
  %i.cvs = load i32, ptr %.21933, align 4         ; 3 uses
  %i.cvt = load i32, ptr %i.css, align 4
  %i.cvu = and i32 %i.cvt, %i.cvs
  %i.cvv = load i8, ptr %i.cst, align 4
  %i.cvw = zext i8 %i.cvv to i32                  ; 2 uses
  %i.cvx = lshr i32 %i.cvu, %i.cvw
  %i.cvy = zext i32 %i.cvx to i64
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.cvr, i64 %i.cvy
  %i.cwa = load i8, ptr %i.cvz, align 1
  %i.cwb = zext i8 %i.cwa to i16
  %i.cwc = load i8, ptr %i.csu, align 1           ; 2 uses
  %i.cwd = zext i8 %i.cwc to i64
  %i.cwe = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cwd
  %i.cwf = load ptr, ptr %i.cwe, align 8
  %i.cwg = load i32, ptr %i.csv, align 4
  %i.cwh = and i32 %i.cwg, %i.cvs
  %i.cwi = load i8, ptr %i.csw, align 1
  %i.cwj = zext i8 %i.cwi to i32                  ; 2 uses
  %i.cwk = lshr i32 %i.cwh, %i.cwj
  %i.cwl = zext i32 %i.cwk to i64
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.cwf, i64 %i.cwl
  %i.cwn = load i8, ptr %i.cwm, align 1
  %i.cwo = zext i8 %i.cwn to i16
  %i.cwp = load i8, ptr %i.csx, align 2           ; 2 uses
  %i.cwq = zext i8 %i.cwp to i64
  %i.cwr = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.cwq
  %i.cws = load ptr, ptr %i.cwr, align 8
  %i.cwt = load i32, ptr %i.csy, align 4
  %i.cwu = and i32 %i.cwt, %i.cvs
  %i.cwv = load i8, ptr %i.csz, align 2
  %i.cww = zext i8 %i.cwv to i32                  ; 2 uses
  %i.cwx = lshr i32 %i.cwu, %i.cww
  %i.cwy = zext i32 %i.cwx to i64
  %i.cwz = getelementptr inbounds nuw i8, ptr %i.cws, i64 %i.cwy
  %i.cxa = load i8, ptr %i.cwz, align 1
  %i.cxb = zext i8 %i.cxa to i16
  %.lhs.trunc2033 = mul nuw i16 %i.cwb, %i.cta
  %i.cxc = udiv i16 %.lhs.trunc2033, 255
  %.zext2034 = zext nneg i16 %i.cxc to i32
  %.lhs.trunc2035 = mul nuw i16 %i.cwo, %i.ctb
  %i.cxd = udiv i16 %.lhs.trunc2035, 255
end_hunk_3
begin_hunk_4_@SDL_BlendFillRect_RGBA:bb.a
  %i.xg = and i32 %i.xf, %i.we
  %i.xh = load i8, ptr %i.pd, align 2
  %i.xi = zext i8 %i.xh to i32                    ; 2 uses
  %i.xj = lshr i32 %i.xg, %i.xi
  %i.xk = zext i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1
  %i.xn = zext i8 %i.xm to i32
  %i.xo = load i8, ptr %i.pe, align 1             ; 2 uses
  %i.xp = zext i8 %i.xo to i64
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.xp
  %i.xr = load ptr, ptr %i.xq, align 8
  %i.xs = load i32, ptr %i.pf, align 4
  %i.xt = and i32 %i.xs, %i.we
  %i.xu = load i8, ptr %i.pg, align 1
  %i.xv = zext i8 %i.xu to i32                    ; 2 uses
  %i.xw = lshr i32 %i.xt, %i.xv
  %i.xx = zext i32 %i.xw to i64
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xx
  %i.xz = load i8, ptr %i.xy, align 1
  %i.ya = zext i8 %i.xz to i32
  %i.yb = mul nuw nsw i32 %i.d, %i.wn
  %i.yc = udiv i32 %i.yb, 255
  %i.yd = add nuw nsw i32 %i.yc, %i.ph
  %spec.store.select5 = tail call i32 @llvm.umin.i32(i32 %i.yd, i32 255)
  %i.ye = mul nuw nsw i32 %i.d, %i.xa
  %i.yf = udiv i32 %i.ye, 255
  %i.yg = add nuw nsw i32 %i.yf, %i.pi
  %spec.store.select29 = tail call i32 @llvm.umin.i32(i32 %i.yg, i32 255)
  %i.yh = mul nuw nsw i32 %i.d, %i.xn
  %i.yi = udiv i32 %i.yh, 255
  %i.yj = add nuw nsw i32 %i.yi, %i.pj
  %spec.store.select6 = tail call i32 @llvm.umin.i32(i32 %i.yj, i32 255)
  %i.yk = mul nuw nsw i32 %i.d, %i.ya
  %i.yl = udiv i32 %i.yk, 255
  %i.ym = add nuw nsw i32 %i.yl, %i.c
  %spec.store.select41 = tail call i32 @llvm.umin.i32(i32 %i.ym, i32 255)
  %i.yn = zext i8 %i.wa to i32
  %i.yo = sub nsw i32 8, %i.yn
  %i.yp = lshr i32 %spec.store.select5, %i.yo
  %i.yq = shl i32 %i.yp, %i.wi
  %i.yr = zext i8 %i.wo to i32
  %i.ys = sub nsw i32 8, %i.yr
  %i.yt = lshr i32 %spec.store.select29, %i.ys
  %i.yu = shl i32 %i.yt, %i.wv
  %i.yv = or i32 %i.yu, %i.yq
  %i.yw = zext i8 %i.xb to i32
  %i.yx = sub nsw i32 8, %i.yw
  %i.yy = lshr i32 %spec.store.select6, %i.yx
  %i.yz = shl i32 %i.yy, %i.xi
  %i.za = or i32 %i.yv, %i.yz
  %i.zb = zext i8 %i.xo to i32
  %i.zc = sub nsw i32 8, %i.zb
  %i.zd = lshr i32 %spec.store.select41, %i.zc
  %i.ze = shl i32 %i.zd, %i.xv
  %i.zf = or i32 %i.za, %i.ze
  store i32 %i.zf, ptr %.31058, align 4
  %i.zg = getelementptr inbounds nuw i8, ptr %.31058, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m
  %.31063 = phi i32 [ %.21062, %bb.m ], [ %i.ot, %bb.j ] ; 2 uses
  %.41059 = phi ptr [ %i.zg, %bb.m ], [ %.010551181, %bb.j ] ; 3 uses
  %i.zh = load i8, ptr %i.ov, align 4             ; 2 uses
  %i.zi = zext i8 %i.zh to i64
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.zi
  %i.zk = load ptr, ptr %i.zj, align 8
  %i.zl = load i32, ptr %.41059, align 4          ; 4 uses
  %i.zm = load i32, ptr %i.ow, align 4
  %i.zn = and i32 %i.zm, %i.zl
  %i.zo = load i8, ptr %i.ox, align 4
  %i.zp = zext i8 %i.zo to i32                    ; 2 uses
  %i.zq = lshr i32 %i.zn, %i.zp
  %i.zr = zext i32 %i.zq to i64
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.zr
  %i.zt = load i8, ptr %i.zs, align 1
  %i.zu = zext i8 %i.zt to i32
  %i.zv = load i8, ptr %i.oy, align 1             ; 2 uses
  %i.zw = zext i8 %i.zv to i64
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.zw
  %i.zy = load ptr, ptr %i.zx, align 8
  %i.zz = load i32, ptr %i.oz, align 4
  %i.aaa = and i32 %i.zz, %i.zl
  %i.aab = load i8, ptr %i.pa, align 1
  %i.aac = zext i8 %i.aab to i32                  ; 2 uses
  %i.aad = lshr i32 %i.aaa, %i.aac
  %i.aae = zext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.aae
  %i.aag = load i8, ptr %i.aaf, align 1
  %i.aah = zext i8 %i.aag to i32
  %i.aai = load i8, ptr %i.pb, align 2            ; 2 uses
  %i.aaj = zext i8 %i.aai to i64
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aaj
  %i.aal = load ptr, ptr %i.aak, align 8
  %i.aam = load i32, ptr %i.pc, align 4
  %i.aan = and i32 %i.aam, %i.zl
  %i.aao = load i8, ptr %i.pd, align 2
  %i.aap = zext i8 %i.aao to i32                  ; 2 uses
  %i.aaq = lshr i32 %i.aan, %i.aap
  %i.aar = zext i32 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.aar
  %i.aat = load i8, ptr %i.aas, align 1
  %i.aau = zext i8 %i.aat to i32
  %i.aav = load i8, ptr %i.pe, align 1            ; 2 uses
  %i.aaw = zext i8 %i.aav to i64
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aaw
  %i.aay = load ptr, ptr %i.aax, align 8
  %i.aaz = load i32, ptr %i.pf, align 4
  %i.aba = and i32 %i.aaz, %i.zl
  %i.abb = load i8, ptr %i.pg, align 1
  %i.abc = zext i8 %i.abb to i32                  ; 2 uses
  %i.abd = lshr i32 %i.aba, %i.abc
  %i.abe = zext i32 %i.abd to i64
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aay, i64 %i.abe
  %i.abg = load i8, ptr %i.abf, align 1
  %i.abh = zext i8 %i.abg to i32
  %i.abi = mul nuw nsw i32 %i.d, %i.zu
  %i.abj = udiv i32 %i.abi, 255
  %i.abk = add nuw nsw i32 %i.abj, %i.ph
  %spec.store.select7 = tail call i32 @llvm.umin.i32(i32 %i.abk, i32 255)
  %i.abl = mul nuw nsw i32 %i.d, %i.aah
  %i.abm = udiv i32 %i.abl, 255
  %i.abn = add nuw nsw i32 %i.abm, %i.pi
  %spec.store.select30 = tail call i32 @llvm.umin.i32(i32 %i.abn, i32 255)
  %i.abo = mul nuw nsw i32 %i.d, %i.aau
  %i.abp = udiv i32 %i.abo, 255
  %i.abq = add nuw nsw i32 %i.abp, %i.pj
  %spec.store.select8 = tail call i32 @llvm.umin.i32(i32 %i.abq, i32 255)
  %i.abr = mul nuw nsw i32 %i.d, %i.abh
  %i.abs = udiv i32 %i.abr, 255
  %i.abt = add nuw nsw i32 %i.abs, %i.c
  %spec.store.select42 = tail call i32 @llvm.umin.i32(i32 %i.abt, i32 255)
  %i.abu = zext i8 %i.zh to i32
  %i.abv = sub nsw i32 8, %i.abu
  %i.abw = lshr i32 %spec.store.select7, %i.abv
  %i.abx = shl i32 %i.abw, %i.zp
  %i.aby = zext i8 %i.zv to i32
  %i.abz = sub nsw i32 8, %i.aby
  %i.aca = lshr i32 %spec.store.select30, %i.abz
  %i.acb = shl i32 %i.aca, %i.aac
  %i.acc = or i32 %i.acb, %i.abx
  %i.acd = zext i8 %i.aai to i32
  %i.ace = sub nsw i32 8, %i.acd
  %i.acf = lshr i32 %spec.store.select8, %i.ace
  %i.acg = shl i32 %i.acf, %i.aap
  %i.ach = or i32 %i.acc, %i.acg
  %i.aci = zext i8 %i.aav to i32
  %i.acj = sub nsw i32 8, %i.aci
  %i.ack = lshr i32 %spec.store.select42, %i.acj
  %i.acl = shl i32 %i.ack, %i.abc
  %i.acm = or i32 %i.ach, %i.acl
  store i32 %i.acm, ptr %.41059, align 4
  %i.acn = getelementptr inbounds nuw i8, ptr %.41059, i64 4 ; 2 uses
  %i.aco = add nsw i32 %.31063, -1
  %i.acp = icmp sgt i32 %.31063, 1
  br i1 %i.acp, label %bb.k, label %bb.o, !llvm.loop !78

bb.o:                                             ; preds = %bb.n
  %i.acq = getelementptr inbounds [4 x i8], ptr %i.acn, i64 %i.pk
  %.not1113 = icmp eq i32 %i.pl, 0
  br i1 %.not1113, label %.loopexit, label %bb.j, !llvm.loop !79

bb.p:                                             ; preds = %.split, %.split
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.acs = load i32, ptr %i.acr, align 4          ; 2 uses
  %.not11121177 = icmp eq i32 %i.acs, 0
  br i1 %.not11121177, label %.loopexit, label %.lr.ph1179

.lr.ph1179:                                       ; preds = %bb.p
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.acu = load ptr, ptr %i.act, align 8
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.acw = load i32, ptr %i.acv, align 4
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.acy = load i32, ptr %i.acx, align 8
  %i.acz = sdiv i32 %i.acy, 4                     ; 2 uses
  %i.ada = mul nsw i32 %i.acw, %i.acz
  %i.adb = sext i32 %i.ada to i64
  %i.adc = getelementptr inbounds [4 x i8], ptr %i.acu, i64 %i.adb
  %i.add = load i32, ptr %1, align 4
  %i.ade = sext i32 %i.add to i64
  %i.adf = getelementptr inbounds [4 x i8], ptr %i.adc, i64 %i.ade
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.adh = load i32, ptr %i.adg, align 4          ; 3 uses
  %i.adi = sub nsw i32 %i.acz, %i.adh
  %i.adj = add nsw i32 %i.adh, 3
  %i.adk = sdiv i32 %i.adj, 4                     ; 4 uses
  %i.adl = and i32 %i.adh, 3
  %i.adm = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.b, i64 27 ; 4 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.b, i64 31 ; 4 uses
  %i.ady = sext i32 %i.adi to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph1179, %bb.v
  %.in1194 = phi i32 [ %i.acs, %.lr.ph1179 ], [ %i.adz, %bb.v ]
  %.010751178 = phi ptr [ %i.adf, %.lr.ph1179 ], [ %i.aow, %bb.v ] ; 4 uses
  %i.adz = add nsw i32 %.in1194, -1               ; 2 uses
  switch i32 %i.adl, label %default.unreachable [
    i32 0, label %bb.r
    i32 3, label %bb.s
    i32 2, label %bb.t
    i32 1, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q, %bb.u
  %.01080 = phi i32 [ %i.adk, %bb.q ], [ %i.aou, %bb.u ]
  %.11076 = phi ptr [ %.010751178, %bb.q ], [ %i.aot, %bb.u ] ; 3 uses
  %i.aea = load i8, ptr %i.adm, align 4           ; 2 uses
  %i.aeb = zext i8 %i.aea to i64
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aeb
  %i.aed = load ptr, ptr %i.aec, align 8
  %i.aee = load i32, ptr %.11076, align 4         ; 4 uses
  %i.aef = load i32, ptr %i.adn, align 4
  %i.aeg = and i32 %i.aef, %i.aee
  %i.aeh = load i8, ptr %i.ado, align 4
  %i.aei = zext i8 %i.aeh to i32                  ; 2 uses
  %i.aej = lshr i32 %i.aeg, %i.aei
  %i.aek = zext i32 %i.aej to i64
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aed, i64 %i.aek
  %i.aem = load i8, ptr %i.ael, align 1
  %i.aen = load i8, ptr %i.adp, align 1           ; 2 uses
  %i.aeo = zext i8 %i.aen to i64
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aeo
  %i.aeq = load ptr, ptr %i.aep, align 8
  %i.aer = load i32, ptr %i.adq, align 4
  %i.aes = and i32 %i.aer, %i.aee
  %i.aet = load i8, ptr %i.adr, align 1
  %i.aeu = zext i8 %i.aet to i32                  ; 2 uses
  %i.aev = lshr i32 %i.aes, %i.aeu
  %i.aew = zext i32 %i.aev to i64
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %i.aew
  %i.aey = load i8, ptr %i.aex, align 1
  %i.aez = load i8, ptr %i.ads, align 2           ; 2 uses
  %i.afa = zext i8 %i.aez to i64
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.afa
  %i.afc = load ptr, ptr %i.afb, align 8
  %i.afd = load i32, ptr %i.adt, align 4
  %i.afe = and i32 %i.afd, %i.aee
  %i.aff = load i8, ptr %i.adu, align 2
  %i.afg = zext i8 %i.aff to i32                  ; 2 uses
  %i.afh = lshr i32 %i.afe, %i.afg
  %i.afi = zext i32 %i.afh to i64
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.afi
  %i.afk = load i8, ptr %i.afj, align 1
  %i.afl = load i8, ptr %i.adv, align 1           ; 2 uses
  %i.afm = zext i8 %i.afl to i64
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.afm
  %i.afo = load ptr, ptr %i.afn, align 8
  %i.afp = load i32, ptr %i.adw, align 4
  %i.afq = and i32 %i.afp, %i.aee
  %i.afr = load i8, ptr %i.adx, align 1
  %i.afs = zext i8 %i.afr to i32                  ; 2 uses
  %i.aft = lshr i32 %i.afq, %i.afs
  %i.afu = zext i32 %i.aft to i64
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afo, i64 %i.afu
  %i.afw = load i8, ptr %i.afv, align 1
  %i.afx = zext i8 %i.afw to i32
  %narrow = tail call i8 @llvm.uadd.sat.i8(i8 %i.aem, i8 %3)
  %spec.store.select31 = zext i8 %narrow to i32
  %narrow1113 = tail call i8 @llvm.uadd.sat.i8(i8 %i.aey, i8 %4)
  %spec.store.select10 = zext i8 %narrow1113 to i32
  %narrow1114 = tail call i8 @llvm.uadd.sat.i8(i8 %i.afk, i8 %5)
  %spec.store.select43 = zext i8 %narrow1114 to i32
  %i.afy = zext i8 %i.aea to i32
  %i.afz = sub nsw i32 8, %i.afy
  %i.aga = lshr i32 %spec.store.select31, %i.afz
  %i.agb = shl i32 %i.aga, %i.aei
  %i.agc = zext i8 %i.aen to i32
  %i.agd = sub nsw i32 8, %i.agc
  %i.age = lshr i32 %spec.store.select10, %i.agd
  %i.agf = shl i32 %i.age, %i.aeu
  %i.agg = or i32 %i.agf, %i.agb
  %i.agh = zext i8 %i.aez to i32
  %i.agi = sub nsw i32 8, %i.agh
  %i.agj = lshr i32 %spec.store.select43, %i.agi
  %i.agk = shl i32 %i.agj, %i.afg
  %i.agl = or i32 %i.agg, %i.agk
  %i.agm = zext i8 %i.afl to i32
  %i.agn = sub nsw i32 8, %i.agm
  %i.ago = lshr i32 %i.afx, %i.agn
  %i.agp = shl i32 %i.ago, %i.afs
  %i.agq = or i32 %i.agl, %i.agp
  store i32 %i.agq, ptr %.11076, align 4
  %i.agr = getelementptr inbounds nuw i8, ptr %.11076, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.11081 = phi i32 [ %.01080, %bb.r ], [ %i.adk, %bb.q ]
  %.21077 = phi ptr [ %i.agr, %bb.r ], [ %.010751178, %bb.q ] ; 3 uses
  %i.ags = load i8, ptr %i.adm, align 4           ; 2 uses
  %i.agt = zext i8 %i.ags to i64
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.agt
  %i.agv = load ptr, ptr %i.agu, align 8
  %i.agw = load i32, ptr %.21077, align 4         ; 4 uses
  %i.agx = load i32, ptr %i.adn, align 4
  %i.agy = and i32 %i.agx, %i.agw
  %i.agz = load i8, ptr %i.ado, align 4
  %i.aha = zext i8 %i.agz to i32                  ; 2 uses
  %i.ahb = lshr i32 %i.agy, %i.aha
  %i.ahc = zext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agv, i64 %i.ahc
  %i.ahe = load i8, ptr %i.ahd, align 1
  %i.ahf = load i8, ptr %i.adp, align 1           ; 2 uses
  %i.ahg = zext i8 %i.ahf to i64
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ahg
  %i.ahi = load ptr, ptr %i.ahh, align 8
  %i.ahj = load i32, ptr %i.adq, align 4
  %i.ahk = and i32 %i.ahj, %i.agw
  %i.ahl = load i8, ptr %i.adr, align 1
  %i.ahm = zext i8 %i.ahl to i32                  ; 2 uses
  %i.ahn = lshr i32 %i.ahk, %i.ahm
  %i.aho = zext i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %i.aho
  %i.ahq = load i8, ptr %i.ahp, align 1
  %i.ahr = load i8, ptr %i.ads, align 2           ; 2 uses
  %i.ahs = zext i8 %i.ahr to i64
  %i.aht = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ahs
  %i.ahu = load ptr, ptr %i.aht, align 8
  %i.ahv = load i32, ptr %i.adt, align 4
  %i.ahw = and i32 %i.ahv, %i.agw
  %i.ahx = load i8, ptr %i.adu, align 2
  %i.ahy = zext i8 %i.ahx to i32                  ; 2 uses
  %i.ahz = lshr i32 %i.ahw, %i.ahy
  %i.aia = zext i32 %i.ahz to i64
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.aia
  %i.aic = load i8, ptr %i.aib, align 1
  %i.aid = load i8, ptr %i.adv, align 1           ; 2 uses
  %i.aie = zext i8 %i.aid to i64
  %i.aif = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aie
  %i.aig = load ptr, ptr %i.aif, align 8
  %i.aih = load i32, ptr %i.adw, align 4
  %i.aii = and i32 %i.aih, %i.agw
  %i.aij = load i8, ptr %i.adx, align 1
  %i.aik = zext i8 %i.aij to i32                  ; 2 uses
  %i.ail = lshr i32 %i.aii, %i.aik
  %i.aim = zext i32 %i.ail to i64
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aig, i64 %i.aim
  %i.aio = load i8, ptr %i.ain, align 1
  %i.aip = zext i8 %i.aio to i32
  %narrow1115 = tail call i8 @llvm.uadd.sat.i8(i8 %i.ahe, i8 %3)
  %spec.store.select11 = zext i8 %narrow1115 to i32
  %narrow1116 = tail call i8 @llvm.uadd.sat.i8(i8 %i.ahq, i8 %4)
  %spec.store.select32 = zext i8 %narrow1116 to i32
  %narrow1117 = tail call i8 @llvm.uadd.sat.i8(i8 %i.aic, i8 %5)
  %spec.store.select12 = zext i8 %narrow1117 to i32
  %i.aiq = zext i8 %i.ags to i32
  %i.air = sub nsw i32 8, %i.aiq
  %i.ais = lshr i32 %spec.store.select11, %i.air
  %i.ait = shl i32 %i.ais, %i.aha
  %i.aiu = zext i8 %i.ahf to i32
  %i.aiv = sub nsw i32 8, %i.aiu
  %i.aiw = lshr i32 %spec.store.select32, %i.aiv
  %i.aix = shl i32 %i.aiw, %i.ahm
  %i.aiy = or i32 %i.aix, %i.ait
  %i.aiz = zext i8 %i.ahr to i32
  %i.aja = sub nsw i32 8, %i.aiz
  %i.ajb = lshr i32 %spec.store.select12, %i.aja
  %i.ajc = shl i32 %i.ajb, %i.ahy
  %i.ajd = or i32 %i.aiy, %i.ajc
  %i.aje = zext i8 %i.aid to i32
  %i.ajf = sub nsw i32 8, %i.aje
  %i.ajg = lshr i32 %i.aip, %i.ajf
  %i.ajh = shl i32 %i.ajg, %i.aik
  %i.aji = or i32 %i.ajd, %i.ajh
  store i32 %i.aji, ptr %.21077, align 4
  %i.ajj = getelementptr inbounds nuw i8, ptr %.21077, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  %.21082 = phi i32 [ %.11081, %bb.s ], [ %i.adk, %bb.q ]
  %.31078 = phi ptr [ %i.ajj, %bb.s ], [ %.010751178, %bb.q ] ; 3 uses
  %i.ajk = load i8, ptr %i.adm, align 4           ; 2 uses
  %i.ajl = zext i8 %i.ajk to i64
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ajl
  %i.ajn = load ptr, ptr %i.ajm, align 8
  %i.ajo = load i32, ptr %.31078, align 4         ; 4 uses
  %i.ajp = load i32, ptr %i.adn, align 4
  %i.ajq = and i32 %i.ajp, %i.ajo
  %i.ajr = load i8, ptr %i.ado, align 4
  %i.ajs = zext i8 %i.ajr to i32                  ; 2 uses
  %i.ajt = lshr i32 %i.ajq, %i.ajs
  %i.aju = zext i32 %i.ajt to i64
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %i.aju
  %i.ajw = load i8, ptr %i.ajv, align 1
  %i.ajx = load i8, ptr %i.adp, align 1           ; 2 uses
  %i.ajy = zext i8 %i.ajx to i64
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ajy
  %i.aka = load ptr, ptr %i.ajz, align 8
  %i.akb = load i32, ptr %i.adq, align 4
  %i.akc = and i32 %i.akb, %i.ajo
  %i.akd = load i8, ptr %i.adr, align 1
  %i.ake = zext i8 %i.akd to i32                  ; 2 uses
  %i.akf = lshr i32 %i.akc, %i.ake
  %i.akg = zext i32 %i.akf to i64
  %i.akh = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.akg
  %i.aki = load i8, ptr %i.akh, align 1
  %i.akj = load i8, ptr %i.ads, align 2           ; 2 uses
  %i.akk = zext i8 %i.akj to i64
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.akk
  %i.akm = load ptr, ptr %i.akl, align 8
  %i.akn = load i32, ptr %i.adt, align 4
  %i.ako = and i32 %i.akn, %i.ajo
  %i.akp = load i8, ptr %i.adu, align 2
  %i.akq = zext i8 %i.akp to i32                  ; 2 uses
  %i.akr = lshr i32 %i.ako, %i.akq
  %i.aks = zext i32 %i.akr to i64
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akm, i64 %i.aks
  %i.aku = load i8, ptr %i.akt, align 1
  %i.akv = load i8, ptr %i.adv, align 1           ; 2 uses
  %i.akw = zext i8 %i.akv to i64
  %i.akx = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.akw
  %i.aky = load ptr, ptr %i.akx, align 8
  %i.akz = load i32, ptr %i.adw, align 4
  %i.ala = and i32 %i.akz, %i.ajo
  %i.alb = load i8, ptr %i.adx, align 1
  %i.alc = zext i8 %i.alb to i32                  ; 2 uses
  %i.ald = lshr i32 %i.ala, %i.alc
  %i.ale = zext i32 %i.ald to i64
  %i.alf = getelementptr inbounds nuw i8, ptr %i.aky, i64 %i.ale
  %i.alg = load i8, ptr %i.alf, align 1
  %i.alh = zext i8 %i.alg to i32
  %narrow1118 = tail call i8 @llvm.uadd.sat.i8(i8 %i.ajw, i8 %3)
  %spec.store.select13 = zext i8 %narrow1118 to i32
  %narrow1119 = tail call i8 @llvm.uadd.sat.i8(i8 %i.aki, i8 %4)
  %spec.store.select33 = zext i8 %narrow1119 to i32
  %narrow1120 = tail call i8 @llvm.uadd.sat.i8(i8 %i.aku, i8 %5)
  %spec.store.select14 = zext i8 %narrow1120 to i32
  %i.ali = zext i8 %i.ajk to i32
  %i.alj = sub nsw i32 8, %i.ali
  %i.alk = lshr i32 %spec.store.select13, %i.alj
  %i.all = shl i32 %i.alk, %i.ajs
  %i.alm = zext i8 %i.ajx to i32
  %i.aln = sub nsw i32 8, %i.alm
  %i.alo = lshr i32 %spec.store.select33, %i.aln
  %i.alp = shl i32 %i.alo, %i.ake
  %i.alq = or i32 %i.alp, %i.all
  %i.alr = zext i8 %i.akj to i32
  %i.als = sub nsw i32 8, %i.alr
  %i.alt = lshr i32 %spec.store.select14, %i.als
  %i.alu = shl i32 %i.alt, %i.akq
  %i.alv = or i32 %i.alq, %i.alu
  %i.alw = zext i8 %i.akv to i32
  %i.alx = sub nsw i32 8, %i.alw
  %i.aly = lshr i32 %i.alh, %i.alx
  %i.alz = shl i32 %i.aly, %i.alc
  %i.ama = or i32 %i.alv, %i.alz
  store i32 %i.ama, ptr %.31078, align 4
  %i.amb = getelementptr inbounds nuw i8, ptr %.31078, i64 4
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t
  %.31083 = phi i32 [ %.21082, %bb.t ], [ %i.adk, %bb.q ] ; 2 uses
  %.41079 = phi ptr [ %i.amb, %bb.t ], [ %.010751178, %bb.q ] ; 3 uses
  %i.amc = load i8, ptr %i.adm, align 4           ; 2 uses
  %i.amd = zext i8 %i.amc to i64
  %i.ame = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.amd
  %i.amf = load ptr, ptr %i.ame, align 8
  %i.amg = load i32, ptr %.41079, align 4         ; 4 uses
  %i.amh = load i32, ptr %i.adn, align 4
  %i.ami = and i32 %i.amh, %i.amg
  %i.amj = load i8, ptr %i.ado, align 4
  %i.amk = zext i8 %i.amj to i32                  ; 2 uses
  %i.aml = lshr i32 %i.ami, %i.amk
  %i.amm = zext i32 %i.aml to i64
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amf, i64 %i.amm
  %i.amo = load i8, ptr %i.amn, align 1
  %i.amp = load i8, ptr %i.adp, align 1           ; 2 uses
  %i.amq = zext i8 %i.amp to i64
  %i.amr = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.amq
  %i.ams = load ptr, ptr %i.amr, align 8
  %i.amt = load i32, ptr %i.adq, align 4
  %i.amu = and i32 %i.amt, %i.amg
  %i.amv = load i8, ptr %i.adr, align 1
  %i.amw = zext i8 %i.amv to i32                  ; 2 uses
  %i.amx = lshr i32 %i.amu, %i.amw
  %i.amy = zext i32 %i.amx to i64
  %i.amz = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.amy
  %i.ana = load i8, ptr %i.amz, align 1
  %i.anb = load i8, ptr %i.ads, align 2           ; 2 uses
  %i.anc = zext i8 %i.anb to i64
  %i.and = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.anc
  %i.ane = load ptr, ptr %i.and, align 8
  %i.anf = load i32, ptr %i.adt, align 4
  %i.ang = and i32 %i.anf, %i.amg
  %i.anh = load i8, ptr %i.adu, align 2
  %i.ani = zext i8 %i.anh to i32                  ; 2 uses
  %i.anj = lshr i32 %i.ang, %i.ani
  %i.ank = zext i32 %i.anj to i64
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ane, i64 %i.ank
  %i.anm = load i8, ptr %i.anl, align 1
  %i.ann = load i8, ptr %i.adv, align 1           ; 2 uses
  %i.ano = zext i8 %i.ann to i64
  %i.anp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ano
  %i.anq = load ptr, ptr %i.anp, align 8
  %i.anr = load i32, ptr %i.adw, align 4
  %i.ans = and i32 %i.anr, %i.amg
  %i.ant = load i8, ptr %i.adx, align 1
  %i.anu = zext i8 %i.ant to i32                  ; 2 uses
  %i.anv = lshr i32 %i.ans, %i.anu
  %i.anw = zext i32 %i.anv to i64
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anq, i64 %i.anw
  %i.any = load i8, ptr %i.anx, align 1
  %i.anz = zext i8 %i.any to i32
  %narrow1121 = tail call i8 @llvm.uadd.sat.i8(i8 %i.amo, i8 %3)
  %spec.store.select15 = zext i8 %narrow1121 to i32
  %narrow1122 = tail call i8 @llvm.uadd.sat.i8(i8 %i.ana, i8 %4)
  %spec.store.select34 = zext i8 %narrow1122 to i32
  %narrow1123 = tail call i8 @llvm.uadd.sat.i8(i8 %i.anm, i8 %5)
  %spec.store.select16 = zext i8 %narrow1123 to i32
  %i.aoa = zext i8 %i.amc to i32
  %i.aob = sub nsw i32 8, %i.aoa
  %i.aoc = lshr i32 %spec.store.select15, %i.aob
  %i.aod = shl i32 %i.aoc, %i.amk
  %i.aoe = zext i8 %i.amp to i32
  %i.aof = sub nsw i32 8, %i.aoe
  %i.aog = lshr i32 %spec.store.select34, %i.aof
  %i.aoh = shl i32 %i.aog, %i.amw
  %i.aoi = or i32 %i.aoh, %i.aod
  %i.aoj = zext i8 %i.anb to i32
  %i.aok = sub nsw i32 8, %i.aoj
  %i.aol = lshr i32 %spec.store.select16, %i.aok
  %i.aom = shl i32 %i.aol, %i.ani
  %i.aon = or i32 %i.aoi, %i.aom
  %i.aoo = zext i8 %i.ann to i32
  %i.aop = sub nsw i32 8, %i.aoo
  %i.aoq = lshr i32 %i.anz, %i.aop
  %i.aor = shl i32 %i.aoq, %i.anu
  %i.aos = or i32 %i.aon, %i.aor
  store i32 %i.aos, ptr %.41079, align 4
  %i.aot = getelementptr inbounds nuw i8, ptr %.41079, i64 4 ; 2 uses
  %i.aou = add nsw i32 %.31083, -1
  %i.aov = icmp sgt i32 %.31083, 1
  br i1 %i.aov, label %bb.r, label %bb.v, !llvm.loop !80

bb.v:                                             ; preds = %bb.u
  %i.aow = getelementptr inbounds [4 x i8], ptr %i.aot, i64 %i.ady
  %.not1112 = icmp eq i32 %i.adz, 0
  br i1 %.not1112, label %.loopexit, label %bb.q, !llvm.loop !81

bb.w:                                             ; preds = %.split
  %i.aox = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aoy = load i32, ptr %i.aox, align 4          ; 2 uses
  %.not11111174 = icmp eq i32 %i.aoy, 0
  br i1 %.not11111174, label %.loopexit, label %.lr.ph1176

.lr.ph1176:                                       ; preds = %bb.w
  %i.aoz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.apa = load ptr, ptr %i.aoz, align 8
  %i.apb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.apc = load i32, ptr %i.apb, align 4
  %i.apd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ape = load i32, ptr %i.apd, align 8
  %i.apf = sdiv i32 %i.ape, 4                     ; 2 uses
  %i.apg = mul nsw i32 %i.apc, %i.apf
  %i.aph = sext i32 %i.apg to i64
  %i.api = getelementptr inbounds [4 x i8], ptr %i.apa, i64 %i.aph
  %i.apj = load i32, ptr %1, align 4
  %i.apk = sext i32 %i.apj to i64
  %i.apl = getelementptr inbounds [4 x i8], ptr %i.api, i64 %i.apk
  %i.apm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.apn = load i32, ptr %i.apm, align 4          ; 3 uses
  %i.apo = sub nsw i32 %i.apf, %i.apn
  %i.app = add nsw i32 %i.apn, 3
  %i.apq = sdiv i32 %i.app, 4                     ; 4 uses
  %i.apr = and i32 %i.apn, 3
  %i.aps = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.b, i64 25 ; 4 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %i.b, i64 29 ; 4 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 4 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 4 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.b, i64 27 ; 4 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 4 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.b, i64 31 ; 4 uses
  %i.aqe = zext i8 %3 to i16                      ; 4 uses
  %i.aqf = zext i8 %4 to i16                      ; 4 uses
  %i.aqg = zext i8 %5 to i16                      ; 4 uses
  %i.aqh = sext i32 %i.apo to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph1176, %bb.ac
  %.in1193 = phi i32 [ %i.aoy, %.lr.ph1176 ], [ %i.aqi, %bb.ac ]
  %.010851175 = phi ptr [ %i.apl, %.lr.ph1176 ], [ %i.bcd, %bb.ac ] ; 4 uses
  %i.aqi = add nsw i32 %.in1193, -1               ; 2 uses
  switch i32 %i.apr, label %default.unreachable [
    i32 0, label %bb.y
    i32 3, label %bb.z
    i32 2, label %bb.aa
    i32 1, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x, %bb.ab
  %.01090 = phi i32 [ %i.apq, %bb.x ], [ %i.bcb, %bb.ab ]
  %.11086 = phi ptr [ %.010851175, %bb.x ], [ %i.bca, %bb.ab ] ; 3 uses
  %i.aqj = load i8, ptr %i.aps, align 4           ; 2 uses
  %i.aqk = zext i8 %i.aqj to i64
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aqk
  %i.aqm = load ptr, ptr %i.aql, align 8
  %i.aqn = load i32, ptr %.11086, align 4         ; 4 uses
  %i.aqo = load i32, ptr %i.apt, align 4
  %i.aqp = and i32 %i.aqo, %i.aqn
  %i.aqq = load i8, ptr %i.apu, align 4
  %i.aqr = zext i8 %i.aqq to i32                  ; 2 uses
  %i.aqs = lshr i32 %i.aqp, %i.aqr
  %i.aqt = zext i32 %i.aqs to i64
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqm, i64 %i.aqt
  %i.aqv = load i8, ptr %i.aqu, align 1
  %i.aqw = zext i8 %i.aqv to i16
  %i.aqx = load i8, ptr %i.apv, align 1           ; 2 uses
  %i.aqy = zext i8 %i.aqx to i64
  %i.aqz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.aqy
  %i.ara = load ptr, ptr %i.aqz, align 8
  %i.arb = load i32, ptr %i.apw, align 4
  %i.arc = and i32 %i.arb, %i.aqn
  %i.ard = load i8, ptr %i.apx, align 1
  %i.are = zext i8 %i.ard to i32                  ; 2 uses
  %i.arf = lshr i32 %i.arc, %i.are
  %i.arg = zext i32 %i.arf to i64
  %i.arh = getelementptr inbounds nuw i8, ptr %i.ara, i64 %i.arg
  %i.ari = load i8, ptr %i.arh, align 1
  %i.arj = zext i8 %i.ari to i16
  %i.ark = load i8, ptr %i.apy, align 2           ; 2 uses
  %i.arl = zext i8 %i.ark to i64
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.arl
  %i.arn = load ptr, ptr %i.arm, align 8
  %i.aro = load i32, ptr %i.apz, align 4
  %i.arp = and i32 %i.aro, %i.aqn
  %i.arq = load i8, ptr %i.aqa, align 2
  %i.arr = zext i8 %i.arq to i32                  ; 2 uses
  %i.ars = lshr i32 %i.arp, %i.arr
  %i.art = zext i32 %i.ars to i64
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.art
  %i.arv = load i8, ptr %i.aru, align 1
  %i.arw = zext i8 %i.arv to i16
  %i.arx = load i8, ptr %i.aqb, align 1           ; 2 uses
  %i.ary = zext i8 %i.arx to i64
  %i.arz = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ary
  %i.asa = load ptr, ptr %i.arz, align 8
  %i.asb = load i32, ptr %i.aqc, align 4
  %i.asc = and i32 %i.asb, %i.aqn
  %i.asd = load i8, ptr %i.aqd, align 1
  %i.ase = zext i8 %i.asd to i32                  ; 2 uses
  %i.asf = lshr i32 %i.asc, %i.ase
  %i.asg = zext i32 %i.asf to i64
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asa, i64 %i.asg
  %i.asi = load i8, ptr %i.ash, align 1
  %i.asj = zext i8 %i.asi to i32
  %.lhs.trunc = mul nuw i16 %i.aqw, %i.aqe
  %i.ask = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.ask to i32
  %.lhs.trunc1116 = mul nuw i16 %i.arj, %i.aqf
  %i.asl = udiv i16 %.lhs.trunc1116, 255
  %.zext1117 = zext nneg i16 %i.asl to i32
  %.lhs.trunc1118 = mul nuw i16 %i.arw, %i.aqg
  %i.asm = udiv i16 %.lhs.trunc1118, 255
  %.zext1119 = zext nneg i16 %i.asm to i32
  %i.asn = zext i8 %i.aqj to i32
  %i.aso = sub nsw i32 8, %i.asn
  %i.asp = lshr i32 %.zext, %i.aso
  %i.asq = shl i32 %i.asp, %i.aqr
  %i.asr = zext i8 %i.aqx to i32
  %i.ass = sub nsw i32 8, %i.asr
  %i.ast = lshr i32 %.zext1117, %i.ass
  %i.asu = shl i32 %i.ast, %i.are
  %i.asv = or i32 %i.asu, %i.asq
  %i.asw = zext i8 %i.ark to i32
  %i.asx = sub nsw i32 8, %i.asw
  %i.asy = lshr i32 %.zext1119, %i.asx
  %i.asz = shl i32 %i.asy, %i.arr
  %i.ata = or i32 %i.asv, %i.asz
  %i.atb = zext i8 %i.arx to i32
  %i.atc = sub nsw i32 8, %i.atb
  %i.atd = lshr i32 %i.asj, %i.atc
  %i.ate = shl i32 %i.atd, %i.ase
  %i.atf = or i32 %i.ata, %i.ate
  store i32 %i.atf, ptr %.11086, align 4
  %i.atg = getelementptr inbounds nuw i8, ptr %.11086, i64 4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.11091 = phi i32 [ %.01090, %bb.y ], [ %i.apq, %bb.x ]
  %.21087 = phi ptr [ %i.atg, %bb.y ], [ %.010851175, %bb.x ] ; 3 uses
  %i.ath = load i8, ptr %i.aps, align 4           ; 2 uses
  %i.ati = zext i8 %i.ath to i64
  %i.atj = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ati
  %i.atk = load ptr, ptr %i.atj, align 8
  %i.atl = load i32, ptr %.21087, align 4         ; 4 uses
  %i.atm = load i32, ptr %i.apt, align 4
  %i.atn = and i32 %i.atm, %i.atl
  %i.ato = load i8, ptr %i.apu, align 4
  %i.atp = zext i8 %i.ato to i32                  ; 2 uses
  %i.atq = lshr i32 %i.atn, %i.atp
  %i.atr = zext i32 %i.atq to i64
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atk, i64 %i.atr
  %i.att = load i8, ptr %i.ats, align 1
  %i.atu = zext i8 %i.att to i16
  %i.atv = load i8, ptr %i.apv, align 1           ; 2 uses
  %i.atw = zext i8 %i.atv to i64
  %i.atx = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.atw
  %i.aty = load ptr, ptr %i.atx, align 8
  %i.atz = load i32, ptr %i.apw, align 4
  %i.aua = and i32 %i.atz, %i.atl
  %i.aub = load i8, ptr %i.apx, align 1
  %i.auc = zext i8 %i.aub to i32                  ; 2 uses
  %i.aud = lshr i32 %i.aua, %i.auc
  %i.aue = zext i32 %i.aud to i64
end_hunk_4
begin_hunk_5_@SDL_BlendFillRect_RGBA:bb.a
  %i.bwa = sub nsw i32 8, %i.bvz
  %i.bwb = lshr i32 %i.c, %i.bwa
  %i.bwc = load i8, ptr %i.bsm, align 1
  %i.bwd = zext nneg i8 %i.bwc to i32
  %i.bwe = shl i32 %i.bwb, %i.bwd
  %i.bwf = or i32 %i.bvx, %i.bwe
  store i32 %i.bwf, ptr %.31071, align 4
  %i.bwg = getelementptr inbounds nuw i8, ptr %.31071, i64 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.al, %bb.ao
  %.41072 = phi ptr [ %i.bwg, %bb.ao ], [ %.010681187, %bb.al ] ; 2 uses
  %.31067 = phi i32 [ %.21066, %bb.ao ], [ %i.bsa, %bb.al ] ; 2 uses
  %i.bwh = load i8, ptr %i.bsf, align 4
  %i.bwi = zext i8 %i.bwh to i32
  %i.bwj = sub nsw i32 8, %i.bwi
  %i.bwk = lshr i32 %i.bsc, %i.bwj
  %i.bwl = load i8, ptr %i.bsg, align 4
  %i.bwm = zext nneg i8 %i.bwl to i32
  %i.bwn = shl i32 %i.bwk, %i.bwm
  %i.bwo = load i8, ptr %i.bsh, align 1
  %i.bwp = zext i8 %i.bwo to i32
  %i.bwq = sub nsw i32 8, %i.bwp
  %i.bwr = lshr i32 %i.bsd, %i.bwq
  %i.bws = load i8, ptr %i.bsi, align 1
  %i.bwt = zext nneg i8 %i.bws to i32
  %i.bwu = shl i32 %i.bwr, %i.bwt
  %i.bwv = or i32 %i.bwu, %i.bwn
  %i.bww = load i8, ptr %i.bsj, align 2
  %i.bwx = zext i8 %i.bww to i32
  %i.bwy = sub nsw i32 8, %i.bwx
  %i.bwz = lshr i32 %i.bse, %i.bwy
  %i.bxa = load i8, ptr %i.bsk, align 2
  %i.bxb = zext nneg i8 %i.bxa to i32
  %i.bxc = shl i32 %i.bwz, %i.bxb
  %i.bxd = or i32 %i.bwv, %i.bxc
  %i.bxe = load i8, ptr %i.bsl, align 1
  %i.bxf = zext i8 %i.bxe to i32
  %i.bxg = sub nsw i32 8, %i.bxf
  %i.bxh = lshr i32 %i.c, %i.bxg
  %i.bxi = load i8, ptr %i.bsm, align 1
  %i.bxj = zext nneg i8 %i.bxi to i32
  %i.bxk = shl i32 %i.bxh, %i.bxj
  %i.bxl = or i32 %i.bxd, %i.bxk
  store i32 %i.bxl, ptr %.41072, align 4
  %i.bxm = getelementptr inbounds nuw i8, ptr %.41072, i64 4 ; 2 uses
  %i.bxn = add nsw i32 %.31067, -1
  %i.bxo = icmp sgt i32 %.31067, 1
  br i1 %i.bxo, label %bb.am, label %bb.aq, !llvm.loop !86

bb.aq:                                            ; preds = %bb.ap
  %i.bxp = getelementptr inbounds [4 x i8], ptr %i.bxm, i64 %i.bsn
  %.not1115 = icmp eq i32 %i.bso, 0
  br i1 %.not1115, label %.loopexit, label %bb.al, !llvm.loop !87

bb.ar:                                            ; preds = %bb.a
  %i.bxq = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.5) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aj, %bb.ac, %bb.v, %bb.o, %bb.h, %bb.aq, %bb.ad, %bb.w, %bb.p, %bb.i, %bb.c, %bb.ak, %bb.ar
  %.0 = phi i1 [ %i.bxq, %bb.ar ], [ true, %bb.w ], [ true, %bb.p ], [ true, %bb.i ], [ true, %bb.c ], [ true, %bb.ak ], [ true, %bb.ad ], [ true, %bb.v ], [ true, %bb.ac ], [ true, %bb.aq ], [ true, %bb.h ], [ true, %bb.o ], [ true, %bb.aj ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_BlendFillRects(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.SDL_Rect, align 4           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  %i.a = tail call zeroext i1 @SDL_SurfaceValid(ptr noundef %0) #6
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #6
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i8, ptr %i.e, align 4               ; 2 uses
  %i.g = icmp ult i8 %i.f, 8
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.4) #6
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.i = add i32 %3, -1
  %or.cond = icmp ult i32 %i.i, 2
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = zext i8 %4 to i32
  %i.k = zext i8 %7 to i32                        ; 3 uses
  %i.l = mul nuw nsw i32 %i.k, %i.j
  %.lhs.trunc = trunc nuw i32 %i.l to i16
  %i.m = udiv i16 %.lhs.trunc, 255
  %i.n = trunc nuw i16 %i.m to i8
  %i.o = zext i8 %5 to i32
  %i.p = mul nuw nsw i32 %i.k, %i.o
  %.lhs.trunc51 = trunc nuw i32 %i.p to i16
  %i.q = udiv i16 %.lhs.trunc51, 255
  %i.r = trunc nuw i16 %i.q to i8
  %i.s = zext i8 %6 to i32
  %i.t = mul nuw nsw i32 %i.k, %i.s
  %.lhs.trunc53 = trunc nuw i32 %i.t to i16
  %i.u = udiv i16 %.lhs.trunc53, 255
  %i.v = trunc nuw i16 %i.u to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.040 = phi i8 [ %i.n, %bb.f ], [ %4, %bb.e ]
  %.039 = phi i8 [ %i.r, %bb.f ], [ %5, %bb.e ]
  %.038 = phi i8 [ %i.v, %bb.f ], [ %6, %bb.e ]
  switch i8 %i.f, label %.thread [
    i8 15, label %.split
    i8 16, label %bb.i
    i8 32, label %bb.h
  ]

.split:                                           ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = load i32, ptr %i.w, align 4
  %cond2.not = icmp eq i32 %i.x, 31744
  br i1 %cond2.not, label %bb.j, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load i32, ptr %i.y, align 4
  %cond = icmp eq i32 %i.z, 16711680
  br i1 %cond, label %.thread48, label %.thread

.thread48:                                        ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ab = load i32, ptr %i.aa, align 4
  %.not = icmp eq i32 %i.ab, 0
  %SDL_BlendFillRect_XRGB8888.SDL_BlendFillRect_ARGB8888 = select i1 %.not, ptr @SDL_BlendFillRect_XRGB8888, ptr @SDL_BlendFillRect_ARGB8888
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load i32, ptr %i.ac, align 4
  %cond1.not = icmp eq i32 %i.ad, 63488
  br i1 %cond1.not, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %.split, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %.not42 = icmp eq i32 %i.af, 0
  %SDL_BlendFillRect_RGB.SDL_BlendFillRect_RGBA = select i1 %.not42, ptr @SDL_BlendFillRect_RGB, ptr @SDL_BlendFillRect_RGBA
  br label %bb.j

bb.j:                                             ; preds = %.split, %.thread48, %.thread, %bb.i
  %.135 = phi ptr [ @SDL_BlendFillRect_RGB565, %bb.i ], [ %SDL_BlendFillRect_RGB.SDL_BlendFillRect_RGBA, %.thread ], [ %SDL_BlendFillRect_XRGB8888.SDL_BlendFillRect_ARGB8888, %.thread48 ], [ @SDL_BlendFillRect_RGB555, %.split ]
  %i.ag = icmp sgt i32 %2, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 100
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.056 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.m ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.aj = call zeroext i1 @SDL_GetRectIntersection_REAL(ptr noundef %i.ai, ptr noundef nonnull %i.ah, ptr noundef nonnull %8) #6
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = call zeroext i1 %.135(ptr noundef nonnull %0, ptr noundef nonnull %8, i32 noundef %3, i8 noundef zeroext %.040, i8 noundef zeroext %.039, i8 noundef zeroext %.038, i8 noundef zeroext %7) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1 = phi i1 [ %i.ak, %bb.l ], [ %.056, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !88

.loopexit:                                        ; preds = %bb.m, %bb.j, %bb.d, %bb.b
  %.037 = phi i1 [ %i.h, %bb.d ], [ %i.b, %bb.b ], [ true, %bb.j ], [ %.1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  ret i1 %.037
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.uadd.sat.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i8> @llvm.uadd.sat.v2i8(<2 x i8>, <2 x i8>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.umin.v2i16(<2 x i16>, <2 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
!14 = distinct !{!14, !3}
!15 = distinct !{!15, !3}
!16 = distinct !{!16, !3}
!17 = distinct !{!17, !3}
!18 = distinct !{!18, !3}
!19 = distinct !{!19, !3}
!20 = distinct !{!20, !3}
!21 = distinct !{!21, !3}
!22 = distinct !{!22, !3}
!23 = distinct !{!23, !3}
!24 = distinct !{!24, !3}
!25 = distinct !{!25, !3}
!26 = distinct !{!26, !3}
!27 = distinct !{!27, !3}
!28 = distinct !{!28, !3}
!29 = distinct !{!29, !3}
!30 = distinct !{!30, !3}
!31 = distinct !{!31, !3}
!32 = distinct !{!32, !3}
!33 = distinct !{!33, !3}
!34 = distinct !{!34, !3}
!35 = distinct !{!35, !3}
!36 = distinct !{!36, !3}
!37 = distinct !{!37, !3}
!38 = distinct !{!38, !3}
!39 = distinct !{!39, !3}
!40 = distinct !{!40, !3}
!41 = distinct !{!41, !3}
!42 = distinct !{!42, !3}
!43 = distinct !{!43, !3}
!44 = distinct !{!44, !3}
!45 = distinct !{!45, !3}
!46 = distinct !{!46, !3}
!47 = distinct !{!47, !3}
!48 = distinct !{!48, !3}
!49 = distinct !{!49, !3}
!50 = distinct !{!50, !3}
!51 = distinct !{!51, !3}
!52 = distinct !{!52, !3}
!53 = distinct !{!53, !3}
!54 = distinct !{!54, !3}
!55 = distinct !{!55, !3}
!56 = distinct !{!56, !3}
!57 = distinct !{!57, !3}
!58 = distinct !{!58, !3}
!59 = distinct !{!59, !3}
!60 = distinct !{!60, !3}
!61 = distinct !{!61, !3}
!62 = distinct !{!62, !3}
!63 = distinct !{!63, !3}
!64 = distinct !{!64, !3}
!65 = distinct !{!65, !3}
!66 = distinct !{!66, !3}
!67 = distinct !{!67, !3}
!68 = distinct !{!68, !3}
!69 = distinct !{!69, !3}
!70 = distinct !{!70, !3}
!71 = distinct !{!71, !3}
!72 = distinct !{!72, !3}
!73 = distinct !{!73, !3}
!74 = distinct !{!74, !3}
!75 = distinct !{!75, !3}
!76 = distinct !{!76, !3}
!77 = distinct !{!77, !3}
!78 = distinct !{!78, !3}
!79 = distinct !{!79, !3}
!80 = distinct !{!80, !3}
!81 = distinct !{!81, !3}
!82 = distinct !{!82, !3}
!83 = distinct !{!83, !3}
!84 = distinct !{!84, !3}
!85 = distinct !{!85, !3}
!86 = distinct !{!86, !3}
!87 = distinct !{!87, !3}
!88 = distinct !{!88, !3}
end_hunk_5
