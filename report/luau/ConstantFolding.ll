Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ConstantFolding?download=true
inline.NumInlined: 650
inline.NumDeleted: 342
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau7CompileL10foldBinaryERNS0_8ConstantENS_13AstExprBinary2OpERKS1_S6_RNS_12AstNameTableE:bb.a
  %i.hd = fptrunc double %i.hc to float
  %i.he = fmul float %i.hb, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.he, ptr %i.hf, align 4, !tbaa !70
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hh = load float, ptr %i.hg, align 8, !tbaa !70
  %i.hi = load double, ptr %i.gp, align 8, !tbaa !70
  %i.hj = fptrunc double %i.hi to float
  %i.hk = fmul float %i.hh, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.hk, ptr %i.hl, align 8, !tbaa !70
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.gs, ptr %i.hm, align 4, !tbaa !70
  br label %.thread629

bb.y:                                             ; preds = %bb.v
  %i.hn = icmp eq i32 %i.dx, 6                    ; 2 uses
  %i.ho = icmp eq i32 %i.dz, 6                    ; 2 uses
  %or.cond587 = select i1 %i.hn, i1 %i.ho, i1 false
  br i1 %or.cond587, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !70 ; 3 uses
  %i.hs = fcmp une double %i.hr, 0.000000e+00
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !70 ; 3 uses
  br i1 %i.hs, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.z
  %i.hv = fmul double %i.hr, %i.hu
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hw = fcmp une double %i.hu, 0.000000e+00
  %i.hx = fmul double %i.hr, %i.hu                ; 2 uses
  %i.hy = fcmp oeq double %i.hx, 0.000000e+00
  %or.cond7 = or i1 %i.hw, %i.hy
  br i1 %or.cond7, label %bb.ab, label %.thread629

bb.ab:                                            ; preds = %.thread, %bb.aa
  %i.hz = phi double [ %i.hv, %.thread ], [ %i.hx, %bb.aa ]
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.ib = load double, ptr %i.hp, align 8, !tbaa !70
  %i.ic = load double, ptr %i.ia, align 8, !tbaa !70
  %i.id = fmul double %i.ib, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.id, ptr %i.ie, align 8, !tbaa !70
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ig = load double, ptr %i.if, align 8, !tbaa !70
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !70
  %i.ij = fmul double %i.ig, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ij, ptr %i.ik, align 8, !tbaa !70
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.im = load double, ptr %i.il, align 8, !tbaa !70
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.io = load double, ptr %i.in, align 8, !tbaa !70
  %i.ip = fmul double %i.im, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ip, ptr %i.iq, align 8, !tbaa !70
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.hz, ptr %i.ir, align 8, !tbaa !70
  br label %.thread629

bb.ac:                                            ; preds = %bb.y
  br i1 %i.dy, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ho, label %bb.ae, label %.thread629

bb.ae:                                            ; preds = %bb.ad
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.it = load double, ptr %i.is, align 8, !tbaa !70 ; 2 uses
  %i.iu = fcmp une double %i.it, 0.000000e+00
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !70
  %i.ix = fmul double %i.it, %i.iw                ; 2 uses
  %i.iy = fcmp oeq double %i.ix, 0.000000e+00
  %or.cond9 = or i1 %i.iu, %i.iy
  br i1 %or.cond9, label %bb.af, label %.thread629

bb.af:                                            ; preds = %bb.ae
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.ja = load double, ptr %i.iv, align 8, !tbaa !70
  %i.jb = load double, ptr %i.iz, align 8, !tbaa !70
  %i.jc = fmul double %i.ja, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.jc, ptr %i.jd, align 8, !tbaa !70
  %i.je = load double, ptr %i.iv, align 8, !tbaa !70
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !70
  %i.jh = fmul double %i.je, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.jh, ptr %i.ji, align 8, !tbaa !70
  %i.jj = load double, ptr %i.iv, align 8, !tbaa !70
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !70
  %i.jm = fmul double %i.jj, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.jm, ptr %i.jn, align 8, !tbaa !70
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.ix, ptr %i.jo, align 8, !tbaa !70
  br label %.thread629

bb.ag:                                            ; preds = %bb.ac
  %i.jp = select i1 %i.hn, i1 %i.ea, i1 false
  br i1 %i.jp, label %bb.ah, label %.thread629

bb.ah:                                            ; preds = %bb.ag
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !70 ; 2 uses
  %i.js = fcmp une double %i.jr, 0.000000e+00
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !70
  %i.jv = fmul double %i.jr, %i.ju                ; 2 uses
  %i.jw = fcmp oeq double %i.jv, 0.000000e+00
  %or.cond11 = or i1 %i.js, %i.jw
  br i1 %or.cond11, label %bb.ai, label %.thread629

bb.ai:                                            ; preds = %bb.ah
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !70
  %i.jz = load double, ptr %i.jt, align 8, !tbaa !70
  %i.ka = fmul double %i.jy, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ka, ptr %i.kb, align 8, !tbaa !70
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !70
  %i.ke = load double, ptr %i.jt, align 8, !tbaa !70
  %i.kf = fmul double %i.kd, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.kf, ptr %i.kg, align 8, !tbaa !70
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !70
  %i.kj = load double, ptr %i.jt, align 8, !tbaa !70
  %i.kk = fmul double %i.ki, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.kk, ptr %i.kl, align 8, !tbaa !70
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.jv, ptr %i.km, align 8, !tbaa !70
  br label %.thread629

bb.aj:                                            ; preds = %bb.a
  %i.kn = load i32, ptr %2, align 8, !tbaa !68    ; 3 uses
  %i.ko = icmp eq i32 %i.kn, 3                    ; 3 uses
  %i.kp = load i32, ptr %3, align 8               ; 3 uses
  %i.kq = icmp eq i32 %i.kp, 3                    ; 3 uses
  %or.cond589 = select i1 %i.ko, i1 %i.kq, i1 false
  br i1 %or.cond589, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 3, ptr %0, align 8, !tbaa !68
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !70
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !70
  %i.kv = fdiv double %i.ks, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.kv, ptr %i.kw, align 8, !tbaa !70
  br label %.thread629

bb.al:                                            ; preds = %bb.aj
  %i.kx = icmp eq i32 %i.kn, 5                    ; 2 uses
  %i.ky = icmp eq i32 %i.kp, 5                    ; 2 uses
  %or.cond591 = select i1 %i.kx, i1 %i.ky, i1 false
  br i1 %or.cond591, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.la = load float, ptr %i.kz, align 4, !tbaa !70 ; 2 uses
  %i.lb = fcmp une float %i.la, 0.000000e+00
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ld = load float, ptr %i.lc, align 4          ; 2 uses
  %i.le = fcmp une float %i.ld, 0.000000e+00
  %i.lf = or i1 %i.lb, %i.le
  %i.lg = fdiv float %i.la, %i.ld                 ; 3 uses
  %i.lh = fcmp oeq float %i.lg, 0.000000e+00
  %or.cond13 = or i1 %i.lh, %i.lf
  br i1 %or.cond13, label %bb.an, label %.thread629

bb.an:                                            ; preds = %bb.am
  %i.li = add nuw i64 %i.c, 24                    ; 2 uses
  %i.lj = add nuw i64 %i.b, 8
  %i.lk = add nuw i64 %i.b, 20
  %i.ll = add nuw i64 %i.a, 8
  %i.lm = add nuw i64 %i.a, 20
  %rt.bound0 = icmp ugt i64 %i.lk, %i.c
  %rt.bound1 = icmp ult i64 %i.lj, %i.li
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound0656 = icmp ugt i64 %i.lm, %i.c
  %rt.bound1657 = icmp ult i64 %i.ll, %i.li
  %rt.conflict658 = and i1 %rt.bound0656, %rt.bound1657
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict658
  %rt.guard = freeze i1 %rt.conflict.all
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !292

bb.ao:                                            ; preds = %bb.al
  %or.cond593 = select i1 %i.ko, i1 %i.ky, i1 false
  br i1 %or.cond593, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !70 ; 2 uses
  %i.lp = fcmp une float %i.lo, 0.000000e+00
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !70
  %i.ls = fptrunc double %i.lr to float
  %i.lt = fdiv float %i.ls, %i.lo                 ; 3 uses
  %i.lu = fcmp oeq float %i.lt, 0.000000e+00
  %or.cond15 = or i1 %i.lp, %i.lu
  br i1 %or.cond15, label %bb.aq, label %.thread629

bb.aq:                                            ; preds = %bb.ap
  %i.lv = add nuw i64 %i.c, 24                    ; 2 uses
  %i.lw = add nuw i64 %i.b, 8
  %i.lx = add nuw i64 %i.b, 16
  %i.ly = add nuw i64 %i.a, 8
  %i.lz = add nuw i64 %i.a, 20
  %rt.bound0662 = icmp ugt i64 %i.lx, %i.c
  %rt.bound1663 = icmp ult i64 %i.lw, %i.lv
  %rt.conflict664 = and i1 %rt.bound0662, %rt.bound1663
  %rt.bound0665 = icmp ugt i64 %i.lz, %i.c
  %rt.bound1666 = icmp ult i64 %i.ly, %i.lv
  %rt.conflict667 = and i1 %rt.bound0665, %rt.bound1666
  %rt.conflict.all668 = or i1 %rt.conflict664, %rt.conflict667
  %rt.guard669 = freeze i1 %rt.conflict.all668
  br i1 %rt.guard669, label %.rtscalar660, label %.rtvec659, !prof !292

bb.ar:                                            ; preds = %bb.ao
  %or.cond595 = select i1 %i.kx, i1 %i.kq, i1 false
  br i1 %or.cond595, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !70 ; 2 uses
  %i.mc = fcmp une float %i.mb, 0.000000e+00
  %i.md = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.me = load double, ptr %i.md, align 8, !tbaa !70
  %i.mf = fptrunc double %i.me to float
  %i.mg = fdiv float %i.mb, %i.mf                 ; 3 uses
  %i.mh = fcmp oeq float %i.mg, 0.000000e+00
  %or.cond17 = or i1 %i.mc, %i.mh
  br i1 %or.cond17, label %bb.at, label %.thread629

bb.at:                                            ; preds = %bb.as
  %i.mi = add nuw i64 %i.c, 24                    ; 2 uses
  %i.mj = add nuw i64 %i.b, 8
  %i.mk = add nuw i64 %i.b, 20
  %i.ml = add nuw i64 %i.a, 8
  %i.mm = add nuw i64 %i.a, 16
  %rt.bound0673 = icmp ugt i64 %i.mk, %i.c
  %rt.bound1674 = icmp ult i64 %i.mj, %i.mi
  %rt.conflict675 = and i1 %rt.bound0673, %rt.bound1674
  %rt.bound0676 = icmp ugt i64 %i.mm, %i.c
  %rt.bound1677 = icmp ult i64 %i.ml, %i.mi
  %rt.conflict678 = and i1 %rt.bound0676, %rt.bound1677
  %rt.conflict.all679 = or i1 %rt.conflict675, %rt.conflict678
  %rt.guard680 = freeze i1 %rt.conflict.all679
  br i1 %rt.guard680, label %.rtscalar671, label %.rtvec670, !prof !292

bb.au:                                            ; preds = %bb.ar
  %i.mn = icmp eq i32 %i.kn, 6                    ; 2 uses
  %i.mo = icmp eq i32 %i.kp, 6                    ; 2 uses
  %or.cond597 = select i1 %i.mn, i1 %i.mo, i1 false
  br i1 %or.cond597, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !70 ; 3 uses
  %i.ms = fcmp une double %i.mr, 0.000000e+00
  %i.mt = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !70 ; 3 uses
  br i1 %i.ms, label %.thread630, label %bb.aw

.thread630:                                       ; preds = %bb.av
  %i.mv = fdiv double %i.mr, %i.mu
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.mw = fcmp une double %i.mu, 0.000000e+00
  %i.mx = fdiv double %i.mr, %i.mu                ; 2 uses
  %i.my = fcmp oeq double %i.mx, 0.000000e+00
  %or.cond19 = or i1 %i.mw, %i.my
  br i1 %or.cond19, label %bb.ax, label %.thread629

bb.ax:                                            ; preds = %.thread630, %bb.aw
  %i.mz = phi double [ %i.mv, %.thread630 ], [ %i.mx, %bb.aw ]
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.nb = load double, ptr %i.mp, align 8, !tbaa !70
  %i.nc = load double, ptr %i.na, align 8, !tbaa !70
  %i.nd = fdiv double %i.nb, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.nd, ptr %i.ne, align 8, !tbaa !70
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !70
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !70
  %i.nj = fdiv double %i.ng, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.nj, ptr %i.nk, align 8, !tbaa !70
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !70
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.no = load double, ptr %i.nn, align 8, !tbaa !70
  %i.np = fdiv double %i.nm, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.np, ptr %i.nq, align 8, !tbaa !70
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.mz, ptr %i.nr, align 8, !tbaa !70
  br label %.thread629

bb.ay:                                            ; preds = %bb.au
  br i1 %i.ko, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  br i1 %i.mo, label %bb.ba, label %.thread629

bb.ba:                                            ; preds = %bb.az
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !70 ; 2 uses
  %i.nu = fcmp une double %i.nt, 0.000000e+00
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !70
  %i.nx = fdiv double %i.nw, %i.nt                ; 2 uses
  %i.ny = fcmp oeq double %i.nx, 0.000000e+00
  %or.cond21 = or i1 %i.nu, %i.ny
  br i1 %or.cond21, label %bb.bb, label %.thread629

bb.bb:                                            ; preds = %bb.ba
  %i.nz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.oa = load double, ptr %i.nv, align 8, !tbaa !70
  %i.ob = load double, ptr %i.nz, align 8, !tbaa !70
  %i.oc = fdiv double %i.oa, %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.oc, ptr %i.od, align 8, !tbaa !70
  %i.oe = load double, ptr %i.nv, align 8, !tbaa !70
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.og = load double, ptr %i.of, align 8, !tbaa !70
  %i.oh = fdiv double %i.oe, %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.oh, ptr %i.oi, align 8, !tbaa !70
  %i.oj = load double, ptr %i.nv, align 8, !tbaa !70
  %i.ok = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !70
  %i.om = fdiv double %i.oj, %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.om, ptr %i.on, align 8, !tbaa !70
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.nx, ptr %i.oo, align 8, !tbaa !70
  br label %.thread629

bb.bc:                                            ; preds = %bb.ay
  %i.op = select i1 %i.mn, i1 %i.kq, i1 false
  br i1 %i.op, label %bb.bd, label %.thread629

bb.bd:                                            ; preds = %bb.bc
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.or = load double, ptr %i.oq, align 8, !tbaa !70 ; 2 uses
  %i.os = fcmp une double %i.or, 0.000000e+00
  %i.ot = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !70
  %i.ov = fdiv double %i.or, %i.ou                ; 2 uses
  %i.ow = fcmp oeq double %i.ov, 0.000000e+00
  %or.cond23 = or i1 %i.os, %i.ow
  br i1 %or.cond23, label %bb.be, label %.thread629

bb.be:                                            ; preds = %bb.bd
  %i.ox = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !70
  %i.oz = load double, ptr %i.ot, align 8, !tbaa !70
  %i.pa = fdiv double %i.oy, %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.pa, ptr %i.pb, align 8, !tbaa !70
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !70
  %i.pe = load double, ptr %i.ot, align 8, !tbaa !70
  %i.pf = fdiv double %i.pd, %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.pf, ptr %i.pg, align 8, !tbaa !70
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !70
  %i.pj = load double, ptr %i.ot, align 8, !tbaa !70
  %i.pk = fdiv double %i.pi, %i.pj
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.pk, ptr %i.pl, align 8, !tbaa !70
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.ov, ptr %i.pm, align 8, !tbaa !70
  br label %.thread629

bb.bf:                                            ; preds = %bb.a
  %i.pn = load i32, ptr %2, align 8, !tbaa !68    ; 3 uses
  %i.po = icmp eq i32 %i.pn, 3                    ; 3 uses
  %i.pp = load i32, ptr %3, align 8               ; 3 uses
  %i.pq = icmp eq i32 %i.pp, 3                    ; 3 uses
  %or.cond599 = select i1 %i.po, i1 %i.pq, i1 false
  br i1 %or.cond599, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 3, ptr %0, align 8, !tbaa !68
  %i.pr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !70
  %i.pt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !70
  %i.pv = fdiv double %i.ps, %i.pu
  %i.pw = tail call double @llvm.floor.f64(double %i.pv)
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.pw, ptr %i.px, align 8, !tbaa !70
  br label %.thread629

bb.bh:                                            ; preds = %bb.bf
  %i.py = icmp eq i32 %i.pn, 5                    ; 2 uses
  %i.pz = icmp eq i32 %i.pp, 5                    ; 2 uses
  %or.cond601 = select i1 %i.py, i1 %i.pz, i1 false
  br i1 %or.cond601, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !70 ; 2 uses
  %i.qc = fcmp une float %i.qb, 0.000000e+00
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.qe = load float, ptr %i.qd, align 4          ; 2 uses
  %i.qf = fcmp une float %i.qe, 0.000000e+00
  %i.qg = or i1 %i.qc, %i.qf
  %i.qh = fdiv float %i.qb, %i.qe
  %i.qi = tail call noundef float @llvm.floor.f32(float %i.qh) ; 2 uses
  %i.qj = fcmp oeq float %i.qi, 0.000000e+00
  %or.cond25 = or i1 %i.qg, %i.qj
  br i1 %or.cond25, label %bb.bj, label %.thread629

bb.bj:                                            ; preds = %bb.bi
  %i.qk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ql = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.qm = load float, ptr %i.qk, align 8, !tbaa !70
  %i.qn = load float, ptr %i.ql, align 8, !tbaa !70
  %i.qo = fdiv float %i.qm, %i.qn
  %i.qp = tail call noundef float @llvm.floor.f32(float %i.qo)
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.qp, ptr %i.qq, align 8, !tbaa !70
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !70
  %i.qt = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !70
  %i.qv = fdiv float %i.qs, %i.qu
  %i.qw = tail call noundef float @llvm.floor.f32(float %i.qv)
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.qw, ptr %i.qx, align 4, !tbaa !70
  %i.qy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qz = load float, ptr %i.qy, align 8, !tbaa !70
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.rb = load float, ptr %i.ra, align 8, !tbaa !70
  %i.rc = fdiv float %i.qz, %i.rb
  %i.rd = tail call noundef float @llvm.floor.f32(float %i.rc)
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.rd, ptr %i.re, align 8, !tbaa !70
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.qi, ptr %i.rf, align 4, !tbaa !70
  br label %.thread629

bb.bk:                                            ; preds = %bb.bh
  %or.cond603 = select i1 %i.po, i1 %i.pz, i1 false
  br i1 %or.cond603, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.rg = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !70 ; 2 uses
  %i.ri = fcmp une float %i.rh, 0.000000e+00
  %i.rj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !70
  %i.rl = fptrunc double %i.rk to float
  %i.rm = fdiv float %i.rl, %i.rh
  %i.rn = tail call noundef float @llvm.floor.f32(float %i.rm) ; 2 uses
  %i.ro = fcmp oeq float %i.rn, 0.000000e+00
  %or.cond27 = or i1 %i.ri, %i.ro
  br i1 %or.cond27, label %bb.bm, label %.thread629

bb.bm:                                            ; preds = %bb.bl
  %i.rp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.rq = load double, ptr %i.rj, align 8, !tbaa !70
  %i.rr = fptrunc double %i.rq to float
  %i.rs = load float, ptr %i.rp, align 8, !tbaa !70
  %i.rt = fdiv float %i.rr, %i.rs
  %i.ru = tail call noundef float @llvm.floor.f32(float %i.rt)
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ru, ptr %i.rv, align 8, !tbaa !70
  %i.rw = load double, ptr %i.rj, align 8, !tbaa !70
  %i.rx = fptrunc double %i.rw to float
  %i.ry = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !70
  %i.sa = fdiv float %i.rx, %i.rz
  %i.sb = tail call noundef float @llvm.floor.f32(float %i.sa)
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.sb, ptr %i.sc, align 4, !tbaa !70
  %i.sd = load double, ptr %i.rj, align 8, !tbaa !70
  %i.se = fptrunc double %i.sd to float
  %i.sf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.sg = load float, ptr %i.sf, align 8, !tbaa !70
  %i.sh = fdiv float %i.se, %i.sg
  %i.si = tail call noundef float @llvm.floor.f32(float %i.sh)
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.si, ptr %i.sj, align 8, !tbaa !70
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.rn, ptr %i.sk, align 4, !tbaa !70
  br label %.thread629

bb.bn:                                            ; preds = %bb.bk
  %or.cond605 = select i1 %i.py, i1 %i.pq, i1 false
  br i1 %or.cond605, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.sl = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !70 ; 2 uses
  %i.sn = fcmp une float %i.sm, 0.000000e+00
  %i.so = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.sp = load double, ptr %i.so, align 8, !tbaa !70
  %i.sq = fptrunc double %i.sp to float
  %i.sr = fdiv float %i.sm, %i.sq
  %i.ss = tail call noundef float @llvm.floor.f32(float %i.sr)
  %i.st = fcmp oeq float %i.ss, 0.000000e+00
  %or.cond29 = or i1 %i.sn, %i.st
  br i1 %or.cond29, label %bb.bp, label %.thread629

bb.bp:                                            ; preds = %bb.bo
  %i.su = add nuw i64 %i.c, 24                    ; 2 uses
  %i.sv = add nuw i64 %i.b, 8
  %i.sw = add nuw i64 %i.b, 24
  %i.sx = add nuw i64 %i.a, 8
  %i.sy = add nuw i64 %i.a, 16
  %rt.bound0684 = icmp ugt i64 %i.sw, %i.c
  %rt.bound1685 = icmp ult i64 %i.sv, %i.su
  %rt.conflict686 = and i1 %rt.bound0684, %rt.bound1685
  %rt.bound0687 = icmp ugt i64 %i.sy, %i.c
  %rt.bound1688 = icmp ult i64 %i.sx, %i.su
  %rt.conflict689 = and i1 %rt.bound0687, %rt.bound1688
  %rt.conflict.all690 = or i1 %rt.conflict686, %rt.conflict689
  %rt.guard691 = freeze i1 %rt.conflict.all690
  br i1 %rt.guard691, label %.rtscalar682, label %.rtvec681, !prof !292

bb.bq:                                            ; preds = %bb.bn
  %i.sz = icmp eq i32 %i.pn, 6                    ; 2 uses
  %i.ta = icmp eq i32 %i.pp, 6                    ; 2 uses
  %or.cond607 = select i1 %i.sz, i1 %i.ta, i1 false
  br i1 %or.cond607, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.tb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.tc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.td = load double, ptr %i.tc, align 8, !tbaa !70 ; 3 uses
  %i.te = fcmp une double %i.td, 0.000000e+00
  %i.tf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !70 ; 3 uses
  br i1 %i.te, label %.thread633, label %bb.bs

.thread633:                                       ; preds = %bb.br
  %i.th = fdiv double %i.td, %i.tg
  %i.ti = tail call double @llvm.floor.f64(double %i.th)
  br label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.tj = fcmp une double %i.tg, 0.000000e+00
  %i.tk = fdiv double %i.td, %i.tg
  %i.tl = tail call double @llvm.floor.f64(double %i.tk) ; 2 uses
  %i.tm = fcmp oeq double %i.tl, 0.000000e+00
  %or.cond31 = or i1 %i.tj, %i.tm
  br i1 %or.cond31, label %bb.bt, label %.thread629

bb.bt:                                            ; preds = %.thread633, %bb.bs
  %i.tn = phi double [ %i.ti, %.thread633 ], [ %i.tl, %bb.bs ]
  %i.to = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.tp = load double, ptr %i.tb, align 8, !tbaa !70
  %i.tq = load double, ptr %i.to, align 8, !tbaa !70
  %i.tr = fdiv double %i.tp, %i.tq
  %i.ts = tail call double @llvm.floor.f64(double %i.tr)
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ts, ptr %i.tt, align 8, !tbaa !70
  %i.tu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !70
  %i.tw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !70
  %i.ty = fdiv double %i.tv, %i.tx
  %i.tz = tail call double @llvm.floor.f64(double %i.ty)
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.tz, ptr %i.ua, align 8, !tbaa !70
  %i.ub = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !70
  %i.ud = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !70
  %i.uf = fdiv double %i.uc, %i.ue
  %i.ug = tail call double @llvm.floor.f64(double %i.uf)
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ug, ptr %i.uh, align 8, !tbaa !70
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.tn, ptr %i.ui, align 8, !tbaa !70
  br label %.thread629

bb.bu:                                            ; preds = %bb.bq
  br i1 %i.po, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.ta, label %bb.bw, label %.thread629

bb.bw:                                            ; preds = %bb.bv
  %i.uj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !70 ; 2 uses
  %i.ul = fcmp une double %i.uk, 0.000000e+00
  %i.um = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.un = load double, ptr %i.um, align 8, !tbaa !70
  %i.uo = fdiv double %i.un, %i.uk
  %i.up = tail call double @llvm.floor.f64(double %i.uo) ; 2 uses
  %i.uq = fcmp oeq double %i.up, 0.000000e+00
  %or.cond33 = or i1 %i.ul, %i.uq
  br i1 %or.cond33, label %bb.bx, label %.thread629

bb.bx:                                            ; preds = %bb.bw
  %i.ur = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.us = load double, ptr %i.um, align 8, !tbaa !70
  %i.ut = load double, ptr %i.ur, align 8, !tbaa !70
  %i.uu = fdiv double %i.us, %i.ut
  %i.uv = tail call double @llvm.floor.f64(double %i.uu)
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.uv, ptr %i.uw, align 8, !tbaa !70
  %i.ux = load double, ptr %i.um, align 8, !tbaa !70
  %i.uy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !70
  %i.va = fdiv double %i.ux, %i.uz
  %i.vb = tail call double @llvm.floor.f64(double %i.va)
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.vb, ptr %i.vc, align 8, !tbaa !70
  %i.vd = load double, ptr %i.um, align 8, !tbaa !70
  %i.ve = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !70
  %i.vg = fdiv double %i.vd, %i.vf
  %i.vh = tail call double @llvm.floor.f64(double %i.vg)
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.vh, ptr %i.vi, align 8, !tbaa !70
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.up, ptr %i.vj, align 8, !tbaa !70
  br label %.thread629

bb.by:                                            ; preds = %bb.bu
  %i.vk = select i1 %i.sz, i1 %i.pq, i1 false
  br i1 %i.vk, label %bb.bz, label %.thread629

bb.bz:                                            ; preds = %bb.by
  %i.vl = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !70 ; 2 uses
  %i.vn = fcmp une double %i.vm, 0.000000e+00
  %i.vo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !70
  %i.vq = fdiv double %i.vm, %i.vp
  %i.vr = tail call double @llvm.floor.f64(double %i.vq)
  %i.vs = fcmp oeq double %i.vr, 0.000000e+00
  %or.cond35 = or i1 %i.vn, %i.vs
  br i1 %or.cond35, label %bb.ca, label %.thread629

bb.ca:                                            ; preds = %bb.bz
  %i.vt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !70
  %i.vv = load double, ptr %i.vo, align 8, !tbaa !70
  %i.vw = fdiv double %i.vu, %i.vv
  %i.vx = tail call double @llvm.floor.f64(double %i.vw)
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.vx, ptr %i.vy, align 8, !tbaa !70
  %i.vz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !70
  %i.wb = load double, ptr %i.vo, align 8, !tbaa !70
  %i.wc = fdiv double %i.wa, %i.wb
  %i.wd = tail call double @llvm.floor.f64(double %i.wc)
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.wd, ptr %i.we, align 8, !tbaa !70
  %i.wf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !70
  %i.wh = load double, ptr %i.vo, align 8, !tbaa !70
  %i.wi = fdiv double %i.wg, %i.wh
  %i.wj = tail call double @llvm.floor.f64(double %i.wi)
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.wj, ptr %i.wk, align 8, !tbaa !70
  %i.wl = load double, ptr %i.vl, align 8, !tbaa !70
  %i.wm = load double, ptr %i.vo, align 8, !tbaa !70
  %i.wn = fdiv double %i.wl, %i.wm
  %i.wo = tail call double @llvm.floor.f64(double %i.wn)
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.wo, ptr %i.wp, align 8, !tbaa !70
  br label %.thread629

bb.cb:                                            ; preds = %bb.a
  %i.wq = load i32, ptr %2, align 8, !tbaa !68
  %i.wr = icmp eq i32 %i.wq, 3
  %i.ws = load i32, ptr %3, align 8
  %i.wt = icmp eq i32 %i.ws, 3
  %or.cond609 = select i1 %i.wr, i1 %i.wt, i1 false
  br i1 %or.cond609, label %bb.cc, label %.thread629

bb.cc:                                            ; preds = %bb.cb
  store i32 3, ptr %0, align 8, !tbaa !68
  %i.wu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !70 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !70 ; 2 uses
  %i.wy = fdiv double %i.wv, %i.wx
  %i.wz = tail call double @llvm.floor.f64(double %i.wy)
  %i.xa = fneg double %i.wz
  %i.xb = tail call double @llvm.fmuladd.f64(double %i.xa, double %i.wx, double %i.wv)
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.xb, ptr %i.xc, align 8, !tbaa !70
  br label %.thread629

bb.cd:                                            ; preds = %bb.a
  %i.xd = load i32, ptr %2, align 8, !tbaa !68
  %i.xe = icmp eq i32 %i.xd, 3
  %i.xf = load i32, ptr %3, align 8
  %i.xg = icmp eq i32 %i.xf, 3
  %or.cond611 = select i1 %i.xe, i1 %i.xg, i1 false
  br i1 %or.cond611, label %bb.ce, label %.thread629

bb.ce:                                            ; preds = %bb.cd
  store i32 3, ptr %0, align 8, !tbaa !68
  %i.xh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !70
  %i.xj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !70
  %i.xl = tail call double @pow(double noundef %i.xi, double noundef %i.xk) #19
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.xl, ptr %i.xm, align 8, !tbaa !70
  br label %.thread629

bb.cf:                                            ; preds = %bb.a
  %i.xn = load i32, ptr %2, align 8, !tbaa !68
  %i.xo = icmp eq i32 %i.xn, 7
  %i.xp = load i32, ptr %3, align 8
  %i.xq = icmp eq i32 %i.xp, 7
  %or.cond613 = select i1 %i.xo, i1 %i.xq, i1 false
  br i1 %or.cond613, label %bb.cg, label %.thread629

end_hunk_0
begin_hunk_1_@_ZN4Luau7CompileL10foldBinaryERNS0_8ConstantENS_13AstExprBinary2OpERKS1_S6_RNS_12AstNameTableE:bb.a
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aca = load float, ptr %i.abz, align 8, !tbaa !70
  %i.acb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.acc = load float, ptr %i.acb, align 8, !tbaa !70
  %i.acd = load <2 x float>, ptr %i.abw, align 8, !tbaa !70
  %i.ace = load <2 x float>, ptr %i.abx, align 8, !tbaa !70
  %i.acf = insertelement <4 x float> poison, float %i.aca, i64 2
  %i.acg = insertelement <4 x float> %i.acf, float %i.lg, i64 3
  %i.ach = shufflevector <2 x float> %i.acd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aci = shufflevector <4 x float> %i.ach, <4 x float> %i.acg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.acj = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.acc, i64 2
  %i.ack = shufflevector <2 x float> %i.ace, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.acl = shufflevector <4 x float> %i.ack, <4 x float> %i.acj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.acm = fdiv <4 x float> %i.aci, %i.acl
  store <4 x float> %i.acm, ptr %i.aby, align 8, !tbaa !70
  br label %.thread629

.rtscalar:                                        ; preds = %bb.an
  %i.acn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aco = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.acp = load float, ptr %i.acn, align 8, !tbaa !70
  %i.acq = load float, ptr %i.aco, align 8, !tbaa !70
  %i.acr = fdiv float %i.acp, %i.acq
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.acr, ptr %i.acs, align 8, !tbaa !70
  %i.act = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.acu = load float, ptr %i.act, align 4, !tbaa !70
  %i.acv = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !70
  %i.acx = fdiv float %i.acu, %i.acw
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.acx, ptr %i.acy, align 4, !tbaa !70
  %i.acz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ada = load float, ptr %i.acz, align 8, !tbaa !70
  %i.adb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.adc = load float, ptr %i.adb, align 8, !tbaa !70
  %i.add = fdiv float %i.ada, %i.adc
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.add, ptr %i.ade, align 8, !tbaa !70
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.lg, ptr %i.adf, align 4, !tbaa !70
  br label %.thread629

.rtvec659:                                        ; preds = %bb.aq
  %i.adg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.adh = load double, ptr %i.lq, align 8, !tbaa !70 ; 3 uses
  %i.adi = fptrunc double %i.adh to float
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adk = fptrunc double %i.adh to float
  %i.adl = fptrunc double %i.adh to float
  %i.adm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.adn = load float, ptr %i.adm, align 8, !tbaa !70
  %i.ado = load <2 x float>, ptr %i.adg, align 8, !tbaa !70
  %i.adp = insertelement <4 x float> poison, float %i.adi, i64 0
  %i.adq = insertelement <4 x float> %i.adp, float %i.adk, i64 1
  %i.adr = insertelement <4 x float> %i.adq, float %i.adl, i64 2
  %i.ads = insertelement <4 x float> %i.adr, float %i.lt, i64 3
  %i.adt = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.adn, i64 2
  %i.adu = shufflevector <2 x float> %i.ado, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.adv = shufflevector <4 x float> %i.adu, <4 x float> %i.adt, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.adw = fdiv <4 x float> %i.ads, %i.adv
  store <4 x float> %i.adw, ptr %i.adj, align 8, !tbaa !70
  br label %.thread629

.rtscalar660:                                     ; preds = %bb.aq
  %i.adx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.ady = load double, ptr %i.lq, align 8, !tbaa !70
  %i.adz = fptrunc double %i.ady to float
  %i.aea = load float, ptr %i.adx, align 8, !tbaa !70
  %i.aeb = fdiv float %i.adz, %i.aea
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.aeb, ptr %i.aec, align 8, !tbaa !70
  %i.aed = load double, ptr %i.lq, align 8, !tbaa !70
  %i.aee = fptrunc double %i.aed to float
  %i.aef = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !70
  %i.aeh = fdiv float %i.aee, %i.aeg
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.aeh, ptr %i.aei, align 4, !tbaa !70
  %i.aej = load double, ptr %i.lq, align 8, !tbaa !70
  %i.aek = fptrunc double %i.aej to float
  %i.ael = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aem = load float, ptr %i.ael, align 8, !tbaa !70
  %i.aen = fdiv float %i.aek, %i.aem
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.aen, ptr %i.aeo, align 8, !tbaa !70
  %i.aep = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.lt, ptr %i.aep, align 4, !tbaa !70
  br label %.thread629

.rtvec670:                                        ; preds = %bb.at
  %i.aeq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.aer = load double, ptr %i.md, align 8, !tbaa !70 ; 3 uses
  %i.aes = fptrunc double %i.aer to float
  %i.aet = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aeu = fptrunc double %i.aer to float
  %i.aev = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aew = load float, ptr %i.aev, align 8, !tbaa !70
  %i.aex = fptrunc double %i.aer to float
  %i.aey = load <2 x float>, ptr %i.aeq, align 8, !tbaa !70
  %i.aez = insertelement <4 x float> poison, float %i.aew, i64 2
  %i.afa = insertelement <4 x float> %i.aez, float %i.mg, i64 3
  %i.afb = shufflevector <2 x float> %i.aey, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.afc = shufflevector <4 x float> %i.afb, <4 x float> %i.afa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.afd = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aes, i64 0
  %i.afe = insertelement <4 x float> %i.afd, float %i.aeu, i64 1
  %i.aff = insertelement <4 x float> %i.afe, float %i.aex, i64 2
  %i.afg = fdiv <4 x float> %i.afc, %i.aff
  store <4 x float> %i.afg, ptr %i.aet, align 8, !tbaa !70
  br label %.thread629

.rtscalar671:                                     ; preds = %bb.at
  %i.afh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.afi = load float, ptr %i.afh, align 8, !tbaa !70
  %i.afj = load double, ptr %i.md, align 8, !tbaa !70
  %i.afk = fptrunc double %i.afj to float
  %i.afl = fdiv float %i.afi, %i.afk
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.afl, ptr %i.afm, align 8, !tbaa !70
  %i.afn = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !70
  %i.afp = load double, ptr %i.md, align 8, !tbaa !70
  %i.afq = fptrunc double %i.afp to float
  %i.afr = fdiv float %i.afo, %i.afq
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.afr, ptr %i.afs, align 4, !tbaa !70
  %i.aft = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.afu = load float, ptr %i.aft, align 8, !tbaa !70
  %i.afv = load double, ptr %i.md, align 8, !tbaa !70
  %i.afw = fptrunc double %i.afv to float
  %i.afx = fdiv float %i.afu, %i.afw
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.afx, ptr %i.afy, align 8, !tbaa !70
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.mg, ptr %i.afz, align 4, !tbaa !70
  br label %.thread629

.rtvec681:                                        ; preds = %bb.bp
  %i.aga = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.agb = load double, ptr %i.so, align 8, !tbaa !70
  %i.agc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.agd = load <4 x float>, ptr %i.aga, align 8, !tbaa !70
  %i.age = insertelement <4 x double> poison, double %i.agb, i64 0
  %i.agf = shufflevector <4 x double> %i.age, <4 x double> poison, <4 x i32> zeroinitializer
  %i.agg = fptrunc <4 x double> %i.agf to <4 x float>
  %i.agh = fdiv <4 x float> %i.agd, %i.agg
  %i.agi = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.agh)
  store <4 x float> %i.agi, ptr %i.agc, align 8, !tbaa !70
  br label %.thread629

.rtscalar682:                                     ; preds = %bb.bp
  %i.agj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.agk = load float, ptr %i.agj, align 8, !tbaa !70
  %i.agl = load double, ptr %i.so, align 8, !tbaa !70
  %i.agm = fptrunc double %i.agl to float
  %i.agn = fdiv float %i.agk, %i.agm
  %i.ago = tail call noundef float @llvm.floor.f32(float %i.agn)
  %i.agp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ago, ptr %i.agp, align 8, !tbaa !70
  %i.agq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.agr = load float, ptr %i.agq, align 4, !tbaa !70
  %i.ags = load double, ptr %i.so, align 8, !tbaa !70
  %i.agt = fptrunc double %i.ags to float
  %i.agu = fdiv float %i.agr, %i.agt
  %i.agv = tail call noundef float @llvm.floor.f32(float %i.agu)
  %i.agw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.agv, ptr %i.agw, align 4, !tbaa !70
  %i.agx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.agy = load float, ptr %i.agx, align 8, !tbaa !70
  %i.agz = load double, ptr %i.so, align 8, !tbaa !70
  %i.aha = fptrunc double %i.agz to float
  %i.ahb = fdiv float %i.agy, %i.aha
  %i.ahc = tail call noundef float @llvm.floor.f32(float %i.ahb)
  %i.ahd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ahc, ptr %i.ahd, align 8, !tbaa !70
  %i.ahe = load float, ptr %i.sl, align 4, !tbaa !70
  %i.ahf = load double, ptr %i.so, align 8, !tbaa !70
  %i.ahg = fptrunc double %i.ahf to float
  %i.ahh = fdiv float %i.ahe, %i.ahg
  %i.ahi = tail call noundef float @llvm.floor.f32(float %i.ahh)
  %i.ahj = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ahi, ptr %i.ahj, align 4, !tbaa !70
  br label %.thread629
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4Luau7CompileL16foldInterpStringERNS0_8ConstantEPNS_19AstExprInterpStringERNS_12DenseHashMapIPNS_7AstExprES1_NS_16DenseHashPointerESt8equal_toIS7_EEERNS_12AstNameTableE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !298  ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.thread, label %.lr.ph76

.thread:                                          ; preds = %bb.a
  store i32 7, ptr %0, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !156
  br label %bb.f

.lr.ph76:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !299
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !300
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, -1                         ; 3 uses
  %i.n = load ptr, ptr %2, align 8                ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  %i.o = icmp ugt i64 %.144, 4096
  br i1 %i.o, label %bb.n, label %bb.e

bb.b:                                             ; preds = %.lr.ph76, %bb.d
  %.04375 = phi i64 [ 0, %.lr.ph76 ], [ %.144, %bb.d ]
  %.04574 = phi i64 [ 0, %.lr.ph76 ], [ %i.aq, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.04574
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !301
  %i.s = add i64 %i.r, %.04375                    ; 2 uses
  %i.t = icmp ult i64 %.04574, %i.g
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !302
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.04574
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 4 uses
  %i.x = icmp ne ptr %i.w, %i.j
  tail call void @llvm.assume(i1 %i.x)
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 31
  %i.ab = xor i64 %i.aa, %i.z
  %.01929.i.i71 = and i64 %i.ab, %i.m             ; 3 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.01929.i.i71
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = icmp eq ptr %i.ad, %i.w
  br i1 %i.ae, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.01929.i.i73 = phi i64 [ %.01929.i.i, %.lr.ph ], [ %.01929.i.i71, %bb.c ]
  %.01828.i.i72 = phi i64 [ %i.af, %.lr.ph ], [ 0, %bb.c ]
  %i.af = add i64 %.01828.i.i72, 1                ; 3 uses
  %i.ag = add i64 %i.af, %.01929.i.i73
  %.not.i.i = icmp ule i64 %i.af, %i.m
  tail call void @llvm.assume(i1 %.not.i.i)
  %.01929.i.i = and i64 %i.ag, %i.m               ; 3 uses
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.01929.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.aj = icmp eq ptr %i.ai, %i.w
  br i1 %i.aj, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit, label %.lr.ph

_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit: ; preds = %.lr.ph, %bb.c
  %i.ak = phi i64 [ %.01929.i.i71, %bb.c ], [ %.01929.i.i, %.lr.ph ]
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !156
  %i.ao = zext i32 %i.an to i64
  %i.ap = add i64 %i.s, %i.ao
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit
  %.144 = phi i64 [ %i.ap, %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit ], [ %i.s, %bb.b ] ; 6 uses
  %i.aq = add nuw i64 %.04574, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !293

bb.e:                                             ; preds = %._crit_edge
  store i32 7, ptr %0, align 8, !tbaa !68
  %i.ar = trunc nuw nsw i64 %.144 to i32          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !156
  %i.at = icmp eq i64 %.144, 0
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.70, ptr %i.au, align 8, !tbaa !70
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.av, ptr %4, align 8, !tbaa !165
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !167
  store i8 0, ptr %i.av, align 8, !tbaa !70
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.144)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %bb.g
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !298
  %.not89 = icmp eq i64 %i.ax, 0
  br i1 %.not89, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i

._crit_edge88:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit59, %.preheader
  store i32 7, ptr %0, align 8, !tbaa !68
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !156
  %i.bc = load ptr, ptr %4, align 8, !tbaa !168
  %i.bd = invoke ptr @_ZN4Luau12AstNameTable8getOrAddEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.bc, i64 noundef %.144)
          to label %bb.m unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %.lr.ph87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit59
  %.086 = phi i64 [ 0, %.lr.ph87 ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit59 ] ; 4 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !299
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %.086 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !152 ; 2 uses
  %i.bh = load i64, ptr %i.aw, align 8, !tbaa !167
  %i.bi = sub i64 4611686018427387903, %i.bh
  %i.bj = icmp ult i64 %i.bi, %.sroa.5.0.copyload
  br i1 %i.bj, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.i
  %.sroa.02.0.copyload = load ptr, ptr %i.bg, align 8, !tbaa !161
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %.sroa.02.0.copyload, i64 noundef %.sroa.5.0.copyload)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.bl = load i64, ptr %i.ay, align 8, !tbaa !300
  %i.bm = icmp ult i64 %.086, %i.bl
  br i1 %i.bm, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit59

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.bn = load ptr, ptr %i.az, align 8, !tbaa !302
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.086
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !47 ; 4 uses
  %i.bq = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.br = icmp ne ptr %i.bp, %i.bq
  call void @llvm.assume(i1 %i.br)
  %i.bs = load i64, ptr %i.bb, align 8, !tbaa !66
  %i.bt = add i64 %i.bs, -1                       ; 3 uses
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = mul i64 %i.bu, -4658895280553007687     ; 2 uses
  %i.bw = lshr i64 %i.bv, 31
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %.01929.i.i5179 = and i64 %i.bx, %i.bt          ; 2 uses
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.by, i64 %.01929.i.i5179 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !47
  %i.cb = icmp eq ptr %i.ca, %i.bp
  br i1 %i.cb, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.k, %.lr.ph83
  %.01929.i.i5181 = phi i64 [ %.01929.i.i51, %.lr.ph83 ], [ %.01929.i.i5179, %bb.k ]
  %.01828.i.i5080 = phi i64 [ %i.cc, %.lr.ph83 ], [ 0, %bb.k ]
  %i.cc = add i64 %.01828.i.i5080, 1              ; 3 uses
  %i.cd = add i64 %i.cc, %.01929.i.i5181
  %.not.i.i52 = icmp ule i64 %i.cc, %i.bt
  call void @llvm.assume(i1 %.not.i.i52)
  %.01929.i.i51 = and i64 %i.cd, %i.bt            ; 2 uses
  %i.ce = getelementptr inbounds nuw [48 x i8], ptr %i.by, i64 %.01929.i.i51 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !47
  %i.cg = icmp eq ptr %i.cf, %i.bp
  br i1 %i.cg, label %._crit_edge84, label %.lr.ph83

._crit_edge84:                                    ; preds = %.lr.ph83, %bb.k
  %.lcssa = phi ptr [ %i.bz, %bb.k ], [ %i.ce, %.lr.ph83 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.lcssa, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !156
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = load i64, ptr %i.aw, align 8, !tbaa !167
  %i.cl = sub i64 4611686018427387903, %i.ck
  %i.cm = icmp ult i64 %i.cl, %i.cj
  br i1 %i.cm, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i56

bb.l:                                             ; preds = %._crit_edge84
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #24
          to label %.noexc57 unwind label %.loopexit.split-lp64

.noexc57:                                         ; preds = %bb.l
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i56: ; preds = %._crit_edge84
  %i.cn = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !70
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.co, i64 noundef %i.cj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit59 unwind label %.loopexit63 ; 0 uses

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit63:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i56
  %lpad.loopexit65 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp64:                             ; preds = %bb.l
  %lpad.loopexit.split-lp66 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit59: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.cq = add nuw i64 %.086, 1                    ; 2 uses
  %i.cr = load i64, ptr %i.b, align 8, !tbaa !298
  %i.cs = icmp ult i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.i, label %._crit_edge88, !llvm.loop !294

bb.m:                                             ; preds = %._crit_edge88
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.ct, align 8, !tbaa !70
  %i.cu = load ptr, ptr %4, align 8, !tbaa !168   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.av
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cw = load i64, ptr %i.av, align 8, !tbaa !70
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  ret void

bb.o:                                             ; preds = %._crit_edge88
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit63, %.loopexit.split-lp64, %.loopexit, %.loopexit.split-lp, %bb.o, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.be, %bb.h ], [ %i.cy, %bb.o ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit65, %.loopexit63 ], [ %lpad.loopexit.split-lp66, %.loopexit.split-lp64 ]
  %i.cz = load ptr, ptr %4, align 8, !tbaa !168   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.av
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.p
  %i.db = load i64, ptr %i.av, align 8, !tbaa !70
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7Compile15ConstantVisitor14recordConstantIPNS_7AstExprEEEvRNS_12DenseHashMapIT_NS0_8ConstantENSt11conditionalIXsr3stdE12is_pointer_vIS6_EENS_16DenseHashPointerESt4hashIS6_EE4typeESt8equal_toIS6_EEES6_RKS7_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !47
  %i.b = load i32, ptr %3, align 8, !tbaa !68
  switch i32 %i.b, label %bb.b [
    i32 8, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7Compile15ConstantVisitor9logChangeERNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS4_EEES4_PKS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef null)
  %i.c = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !71
  br label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8, !tbaa !108, !range !41, !noundef !42
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, 0
  %or.cond = select i1 %i.f, i1 true, i1 %i.i
  br i1 %or.cond, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = icmp eq ptr %2, %i.k
  br i1 %i.l, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !66
  %i.o = add i64 %i.n, -1                         ; 2 uses
  %i.p = ptrtoint ptr %2 to i64
  %i.q = mul i64 %i.p, -4658895280553007687       ; 2 uses
  %i.r = lshr i64 %i.q, 31
  %i.s = xor i64 %i.r, %i.q
  %i.t = load ptr, ptr %1, align 8, !tbaa !67
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i.i = phi i64 [ %i.s, %bb.e ], [ %i.z, %bb.h ]
  %.01828.i.i = phi i64 [ 0, %bb.e ], [ %i.y, %bb.h ]
  %.01929.i.i = and i64 %.pn.i.i, %i.o            ; 2 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %.01929.i.i ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47   ; 2 uses
  %i.w = icmp eq ptr %i.v, %2
  br i1 %i.w, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq ptr %i.v, %i.k
  br i1 %i.x, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.z = add i64 %i.y, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.y, %i.o
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.f, !llvm.loop !2

bb.i:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @_ZN4Luau7Compile15ConstantVisitor9logChangeERNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS4_EEES4_PKS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef nonnull %i.aa)
  store i32 0, ptr %i.aa, align 8, !tbaa !68
  br label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread: ; preds = %bb.g, %bb.h, %bb.d, %bb.i, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau7Compile8ConstantESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !110    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 40                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !111
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 40                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 230584300921369395, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4Luau7Compile8ConstantEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN4Luau7Compile8ConstantEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 40                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !159
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4Luau7Compile8ConstantESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #24
  unreachable

_ZNKSt6vectorIN4Luau7Compile8ConstantESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 230584300921369395) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 40
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 40
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4Luau7Compile8ConstantESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4Luau7Compile8ConstantESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN4Luau7Compile8ConstantESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4Luau7Compile8ConstantESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 40, i1 false), !tbaa.struct !71, !alias.scope !306
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau7Compile8ConstantESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt6vectorIN4Luau7Compile8ConstantESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4Luau7Compile8ConstantESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4Luau7Compile8ConstantESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau7Compile8ConstantESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !111
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #20
  br label %_ZNSt12_Vector_baseIN4Luau7Compile8ConstantESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN4Luau7Compile8ConstantESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN4Luau7Compile8ConstantESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !110
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !159
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !111
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4Luau7Compile8ConstantEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4Luau7Compile8ConstantESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !163  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !161
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = mul i64 %spec.select, 48
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21 ; 6 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !161  ; 5 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.k = icmp ult i64 %spec.select, 4
  br i1 %i.k, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
  %.07.i.i = phi i64 [ 0, %.new ], [ %i.w, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !161
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 40, i1 false)
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 %i.j, ptr %i.o, align 8, !tbaa !161
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false)
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store i64 %i.j, ptr %i.r, align 8, !tbaa !161
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 40, i1 false)
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  store i64 %i.j, ptr %i.u, align 8, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  %i.w = add nuw i64 %.07.i.i, 4                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false)
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !307

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit.unr-lcssa, %bb.b
  %.07.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.w, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod53)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.z, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %.07.i.i.epil ; 2 uses
  store i64 %i.j, ptr %i.x, align 8, !tbaa !161
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = add nuw i64 %.07.i.i.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, i8 0, i64 40, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !308

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.a, align 8, !tbaa !163
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit, %bb.a
  %i.aa = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.i, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit.loopexit ] ; 3 uses
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit
  %i.ab = add i64 %spec.select, -1                ; 3 uses
  br label %bb.d

._crit_edge30:                                    ; preds = %bb.f, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEC2ERS7_m.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !310   ; 2 uses
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !310
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !152
  %.not.i14 = icmp eq ptr %i.ac, null
  br i1 %.not.i14, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge30
  tail call void @_ZdlPv(ptr noundef nonnull %i.ac) #19
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EED2Ev.exit: ; preds = %._crit_edge30, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph29, %bb.f
  %i.ad = phi i64 [ %i.aa, %.lr.ph29 ], [ %i.ba, %bb.f ]
  %.01128 = phi i64 [ 0, %.lr.ph29 ], [ %i.bb, %bb.f ] ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !120
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %.01128 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 4 uses
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !160
  %i.ai = icmp eq ptr %i.ag, %i.ah
  %i.aj = ptrtoint ptr %i.ag to i64               ; 4 uses
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = lshr i64 %i.aj, 4
  %i.al = lshr i64 %i.aj, 9
  %i.am = xor i64 %i.ak, %i.al
  %.02131.i24 = and i64 %i.am, %i.ab              ; 2 uses
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0, i64 %.02131.i24 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !160 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.g
  br i1 %i.ap, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.aq = icmp eq ptr %i.ao, %i.ag
  br i1 %i.aq, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, label %.lr.ph50

._crit_edge:                                      ; preds = %.lr.ph50, %bb.e
  %.lcssa = phi ptr [ %i.an, %bb.e ], [ %i.au, %.lr.ph50 ] ; 2 uses
  store i64 %i.aj, ptr %.lcssa, align 8, !tbaa !161
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph50
  %i.ar = icmp eq ptr %i.av, %i.ag
  br i1 %i.ar, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i2549 = phi i64 [ %i.as, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i2648 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i24, %.lr.ph.preheader ]
  %i.as = add i64 %.02030.i2549, 1                ; 3 uses
  %i.at = add i64 %i.as, %.02131.i2648
  %.not.i15 = icmp ule i64 %i.as, %i.ab
  tail call void @llvm.assume(i1 %.not.i15)
  %.02131.i = and i64 %i.at, %i.ab                ; 2 uses
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0, i64 %.02131.i ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !160 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.g
  br i1 %i.aw, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.ax = phi ptr [ %.lcssa, %._crit_edge ], [ %i.an, %.lr.ph.preheader ], [ %i.au, %.lr.ph ] ; 2 uses
  store i64 %i.aj, ptr %i.ax, align 8, !tbaa !161
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 40, i1 false), !tbaa.struct !71
  %.pre34 = load i64, ptr %i.a, align 8, !tbaa !163
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, %bb.d
  %i.ba = phi i64 [ %i.ad, %bb.d ], [ %.pre34, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit ] ; 2 uses
  %i.bb = add nuw i64 %.01128, 1                  ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  br i1 %i.bc, label %bb.d, label %._crit_edge30, !llvm.loop !309
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !112    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #24
  unreachable

_ZNKSt6vectorIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !120
  store ptr %i.r, ptr %i.q, align 8, !tbaa !120
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load <2 x i64>, ptr %i.t, align 8, !tbaa !152
  store <2 x i64> %i.u, ptr %i.s, align 8, !tbaa !152
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !161
  store i64 %i.x, ptr %i.v, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 24, i1 false)
  %i.y = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEPS9_ET0_T_SE_SD_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESA_SaIS9_EET0_T_SD_SC_RT1_.exit unwind label %bb.e ; 2 uses

_ZSt34__uninitialized_move_if_noexcept_aIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESA_SaIS9_EET0_T_SD_SC_RT1_.exit: ; preds = %_ZNKSt6vectorIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE12_M_check_lenEmPKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  %i.aa = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEPS9_ET0_T_SE_SD_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.z)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESA_SaIS9_EET0_T_SD_SC_RT1_.exit28 unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESA_SaIS9_EET0_T_SD_SC_RT1_.exit28: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESA_SaIS9_EET0_T_SD_SC_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvT_SB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESA_SaIS9_EET0_T_SD_SC_RT1_.exit28, %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESA_SaIS9_EET0_T_SD_SC_RT1_.exit28 ] ; 2 uses
  %i.ab = load ptr, ptr %.05.i.i, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ab) #19
  br label %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i

_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvT_SB_.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESA_SaIS9_EET0_T_SD_SC_RT1_.exit28
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvT_SB_.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !121
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ag) #20
  br label %_ZNSt12_Vector_baseIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZSt8_DestroyIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvT_SB_.exit, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !112
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !113
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !121
  ret void

bb.e:                                             ; preds = %_ZNKSt6vectorIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE12_M_check_lenEmPKc.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %i.aj) #19 ; 0 uses
  %i.al = load ptr, ptr %i.q, align 8, !tbaa !120 ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.al, null
  br i1 %.not.i.i30, label %_ZN4Luau12DenseHashMapINS_7AstNameENS_7Compile8ConstantESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #19
  br label %_ZN4Luau12DenseHashMapINS_7AstNameENS_7Compile8ConstantESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit.thread

bb.g:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESA_SaIS9_EET0_T_SD_SC_RT1_.exit
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = tail call ptr @__cxa_begin_catch(ptr %i.an) #19 ; 0 uses
  %.not4.i.i31 = icmp eq ptr %i.p, %i.z
  br i1 %.not4.i.i31, label %_ZN4Luau12DenseHashMapINS_7AstNameENS_7Compile8ConstantESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit.thread, label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %bb.g, %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i35
  %.05.i.i33 = phi ptr [ %i.aq, %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i35 ], [ %i.p, %bb.g ] ; 3 uses
  %i.ap = load ptr, ptr %.05.i.i33, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i34, label %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i35, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i32
  tail call void @_ZdlPv(ptr noundef nonnull %i.ap) #19
  br label %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i35

_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i35: ; preds = %bb.h, %.lr.ph.i.i32
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i33, i64 40
  %.not.i.i36 = icmp eq ptr %.05.i.i33, %i.y
  br i1 %.not.i.i36, label %_ZN4Luau12DenseHashMapINS_7AstNameENS_7Compile8ConstantESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit.thread, label %.lr.ph.i.i32, !llvm.loop !4

bb.i:                                             ; preds = %_ZN4Luau12DenseHashMapINS_7AstNameENS_7Compile8ConstantESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit.thread
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZN4Luau12DenseHashMapINS_7AstNameENS_7Compile8ConstantESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit.thread: ; preds = %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i35, %bb.e, %bb.f, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #20
  invoke void @__cxa_rethrow() #24
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ar

bb.k:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #22
  unreachable

bb.l:                                             ; preds = %_ZN4Luau12DenseHashMapINS_7AstNameENS_7Compile8ConstantESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit.thread
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEPS9_ET0_T_SE_SD_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEJRKS9_EEvPT_DpOT0_.exit
  %.016 = phi ptr [ %i.r, %_ZSt10_ConstructIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEJRKS9_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 8 uses
  %.01215 = phi ptr [ %i.q, %_ZSt10_ConstructIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEJRKS9_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.016, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %.01215, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.016, i8 0, i64 16, i1 false)
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !70
  store <2 x i64> %i.d, ptr %i.b, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %.01215, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !163  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_ZSt10_ConstructIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEJRKS9_EEvPT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = mul i64 %i.f, 48
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  store ptr %i.h, ptr %.016, align 8, !tbaa !120
  %i.i = load i64, ptr %i.e, align 8, !tbaa !163
  %.not13.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not13.i.i.i, label %_ZSt10_ConstructIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEJRKS9_EEvPT_DpOT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ 0, %.noexc ] ; 3 uses
  %i.j = load ptr, ptr %.016, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.012.i.i.i
  %i.l = load ptr, ptr %.01215, align 8, !tbaa !120
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.012.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  %i.n = add nuw i64 %.012.i.i.i, 1               ; 3 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !163
  %i.o = load i64, ptr %i.e, align 8, !tbaa !163
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %.lr.ph.i.i.i, label %_ZSt10_ConstructIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEJRKS9_EEvPT_DpOT0_.exit, !llvm.loop !311

_ZSt10_ConstructIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEJRKS9_EEvPT_DpOT0_.exit: ; preds = %.lr.ph.i.i.i, %.noexc, %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.01215, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.016, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.q, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !312

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #19 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.016
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvT_SB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i ], [ %2, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %.05.i.i, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #19
  br label %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i

_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %.016
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvT_SB_.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvPT_.exit.i.i, %bb.c
  invoke void @__cxa_rethrow() #24
          to label %bb.h unwind label %bb.e

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEJRKS9_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %_ZSt10_ConstructIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEJRKS9_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvT_SB_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #22
  unreachable

bb.h:                                             ; preds = %_ZSt8_DestroyIPN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEEEvT_SB_.exit
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4Luau7CompileL14constantsEqualERKNS0_8ConstantES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !68
  switch i32 %i.a, label %bb.u [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.j
    i32 7, label %bb.o
    i32 8, label %bb.r
    i32 4, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !68
  %i.c = icmp eq i32 %i.b, 1
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !68
  %i.e = icmp eq i32 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 8, !range !41
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !41
  %i.j = icmp eq i8 %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 8, !tbaa !68
  %i.m = icmp eq i32 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load double, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load double, ptr %i.p, align 8
  %i.r = fcmp oeq double %i.o, %i.q
  %i.s = select i1 %i.m, i1 %i.r, i1 false
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  %i.t = load i32, ptr %1, align 8, !tbaa !68
  %i.u = icmp eq i32 %i.t, 5
  br i1 %i.u, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load float, ptr %i.v, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load float, ptr %i.x, align 8, !tbaa !70
  %i.z = fcmp oeq float %i.w, %i.y
  br i1 %i.z, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !70
  %i.ae = fcmp oeq float %i.ab, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load float, ptr %i.af, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !70
  %i.aj = fcmp oeq float %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.al = load float, ptr %i.ak, align 4, !tbaa !70
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.an = load float, ptr %i.am, align 4, !tbaa !70
  %i.ao = fcmp oeq float %i.al, %i.an
  br label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ap = load i32, ptr %1, align 8, !tbaa !68
  %i.aq = icmp eq i32 %i.ap, 6
  br i1 %i.aq, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !70
  %i.av = fcmp oeq double %i.as, %i.au
  br i1 %i.av, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !70
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !70
  %i.ba = fcmp oeq double %i.ax, %i.az
  br i1 %i.ba, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !70
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !70
  %i.bf = fcmp oeq double %i.bc, %i.be
  br i1 %i.bf, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !70
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !70
  %i.bk = fcmp oeq double %i.bh, %i.bj
  br label %bb.u

bb.o:                                             ; preds = %bb.a
  %i.bl = load i32, ptr %1, align 8, !tbaa !68
  %i.bm = icmp eq i32 %i.bl, 7
  br i1 %i.bm, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !156 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !156
  %i.br = icmp eq i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !70
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = zext i32 %i.bo to i64
  %bcmp = tail call i32 @bcmp(ptr %i.bt, ptr %i.bv, i64 %i.bw)
  %i.bx = icmp eq i32 %bcmp, 0
  br label %bb.u

bb.r:                                             ; preds = %bb.a
  %i.by = load i32, ptr %1, align 8, !tbaa !68
  %i.bz = icmp eq i32 %i.by, 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = icmp eq i64 %i.cb, %i.cd
  %i.cf = select i1 %i.bz, i1 %i.ce, i1 false
  br label %bb.u

bb.s:                                             ; preds = %bb.a
  %i.cg = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !315, !range !41, !noundef !42
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = load i32, ptr %1, align 8
  %i.cj = icmp eq i32 %i.ci, 4
  %or.cond = select i1 %i.ch, i1 %i.cj, i1 false
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !70
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !70
  %i.co = icmp eq i64 %i.cl, %i.cn
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.s, %bb.t, %bb.o, %bb.p, %bb.q, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.r, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.co, %bb.t ], [ %i.c, %bb.b ], [ %i.k, %bb.c ], [ %i.s, %bb.d ], [ %i.bx, %bb.q ], [ %i.ao, %bb.i ], [ %i.bk, %bb.n ], [ %i.cf, %bb.r ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.a ], [ false, %bb.s ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #14

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7Compile15ConstantVisitor9logChangeERNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS4_EEES4_PKS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.10 = alloca [3 x double], align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8 = icmp eq ptr %3, null
  br i1 %.not8, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !65
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %i.h = icmp eq ptr %2, %i.g
  br i1 %i.h, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !66
  %i.k = add i64 %i.j, -1                         ; 2 uses
  %i.l = ptrtoint ptr %2 to i64
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = load ptr, ptr %1, align 8, !tbaa !67
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i.i = phi i64 [ %i.o, %bb.e ], [ %i.v, %bb.h ]
  %.01828.i.i = phi i64 [ 0, %bb.e ], [ %i.u, %bb.h ]
  %.01929.i.i = and i64 %.pn.i.i, %i.k            ; 2 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.01929.i.i ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 2 uses
  %i.s = icmp eq ptr %i.r, %2
  br i1 %i.s, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %i.r, %i.g
  br i1 %i.t, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.v = add i64 %i.u, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.u, %i.k
  br i1 %.not.i.i, label %.loopexit, label %bb.f, !llvm.loop !2

_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit, %bb.b
  %.ph = phi ptr [ %3, %bb.b ], [ %i.w, %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %.sroa.5.8.copyload = load i32, ptr %.ph, align 8, !tbaa !69
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  %.sroa.7.8.copyload = load i32, ptr %.sroa.7.8..sroa_idx, align 4, !tbaa !16
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %.sroa.8.8.copyload = load ptr, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.8..sroa_idx, i64 24, i1 false), !tbaa.struct !170
  br label %bb.j

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i8 0, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i
  %.not925 = phi i8 [ 1, %.loopexit ], [ 0, %bb.i ] ; 2 uses
  %.sroa.8.0 = phi ptr [ null, %.loopexit ], [ %.sroa.8.8.copyload, %bb.i ] ; 2 uses
  %.sroa.7.0 = phi i32 [ 0, %.loopexit ], [ %.sroa.7.8.copyload, %bb.i ] ; 2 uses
  %.sroa.5.0 = phi i32 [ 0, %.loopexit ], [ %.sroa.5.8.copyload, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !321  ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !322
  %.not.i.i10 = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %2, ptr %i.y, align 8, !tbaa !47
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !69
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false), !tbaa.struct !172
  %.sroa.1019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store i8 %.not925, ptr %.sroa.1019.0..sroa_idx, align 8, !tbaa !171
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !321
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !321
  br label %_ZNSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE9push_backEOS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !323 ; 5 uses
  %i.ae = ptrtoint ptr %i.y to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.m, label %_ZNKSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #24
  unreachable

_ZNKSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ai = sdiv exact i64 %i.ag, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 164703072086692425)
  %i.am = select i1 %i.ak, i64 164703072086692425, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = mul nuw nsw i64 %i.am, 56
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #25 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag ; 6 uses
  store ptr %2, ptr %i.ap, align 8, !tbaa !47
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx12, align 8, !tbaa !69
  %.sroa.7.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx14, align 4, !tbaa !16
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx16, align 8
  %.sroa.10.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false), !tbaa.struct !172
  %.sroa.1019.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i8 %.not925, ptr %.sroa.1019.0..sroa_idx20, align 8, !tbaa !171
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.y
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %i.ao, %_ZNKSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %_ZNKSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !tbaa.struct !324, !alias.scope !325
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.y
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !319

_ZNSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ar, %.lr.ph.i.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  %.not.i23.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !322
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.av) #20
  br label %_ZNSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !323
  store ptr %i.as, ptr %i.x, align 8, !tbaa !321
  %i.aw = getelementptr inbounds nuw [56 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.aw, ptr %i.z, align 8, !tbaa !322
  br label %_ZNSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.k, %_ZNSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZNSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE9push_backEOS2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7Compile15ConstantVisitor14recordConstantIPNS_8AstLocalEEEvRNS_12DenseHashMapIT_NS0_8ConstantENSt11conditionalIXsr3stdE12is_pointer_vIS6_EENS_16DenseHashPointerESt4hashIS6_EE4typeESt8equal_toIS6_EEES6_RKS7_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !30
  %i.b = load i32, ptr %3, align 8, !tbaa !68
  switch i32 %i.b, label %bb.b [
    i32 8, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7Compile15ConstantVisitor9logChangeERNS_12DenseHashMapIPNS_8AstLocalENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS4_EEES4_PKS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef null)
  %i.c = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !71
  br label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8, !tbaa !108, !range !41, !noundef !42
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, 0
  %or.cond = select i1 %i.f, i1 true, i1 %i.i
  br i1 %or.cond, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = icmp eq ptr %2, %i.k
  br i1 %i.l, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !78
  %i.o = add i64 %i.n, -1                         ; 2 uses
  %i.p = ptrtoint ptr %2 to i64
  %i.q = mul i64 %i.p, -4658895280553007687       ; 2 uses
  %i.r = lshr i64 %i.q, 31
  %i.s = xor i64 %i.r, %i.q
  %i.t = load ptr, ptr %1, align 8, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i.i = phi i64 [ %i.s, %bb.e ], [ %i.z, %bb.h ]
  %.01828.i.i = phi i64 [ 0, %bb.e ], [ %i.y, %bb.h ]
  %.01929.i.i = and i64 %.pn.i.i, %i.o            ; 2 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %.01929.i.i ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 2 uses
  %i.w = icmp eq ptr %i.v, %2
  br i1 %i.w, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq ptr %i.v, %i.k
  br i1 %i.x, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.z = add i64 %i.y, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.y, %i.o
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.f, !llvm.loop !3

bb.i:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @_ZN4Luau7Compile15ConstantVisitor9logChangeERNS_12DenseHashMapIPNS_8AstLocalENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS4_EEES4_PKS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef nonnull %i.aa)
  store i32 0, ptr %i.aa, align 8, !tbaa !68
  br label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread: ; preds = %bb.g, %bb.h, %bb.d, %bb.i, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7Compile15ConstantVisitor9logChangeERNS_12DenseHashMapIPNS_8AstLocalENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS4_EEES4_PKS5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.10 = alloca [3 x double], align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8 = icmp eq ptr %3, null
  br i1 %.not8, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.h = icmp eq ptr %2, %i.g
  br i1 %i.h, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !78
  %i.k = add i64 %i.j, -1                         ; 2 uses
  %i.l = ptrtoint ptr %2 to i64
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = load ptr, ptr %1, align 8, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i.i = phi i64 [ %i.o, %bb.e ], [ %i.v, %bb.h ]
  %.01828.i.i = phi i64 [ 0, %bb.e ], [ %i.u, %bb.h ]
  %.01929.i.i = and i64 %.pn.i.i, %i.k            ; 2 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.01929.i.i ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30   ; 2 uses
  %i.s = icmp eq ptr %i.r, %2
  br i1 %i.s, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %i.r, %i.g
  br i1 %i.t, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.v = add i64 %i.u, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.u, %i.k
  br i1 %.not.i.i, label %.loopexit, label %bb.f, !llvm.loop !3

_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit, %bb.b
  %.ph = phi ptr [ %3, %bb.b ], [ %i.w, %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %.sroa.5.8.copyload = load i32, ptr %.ph, align 8, !tbaa !69
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  %.sroa.7.8.copyload = load i32, ptr %.sroa.7.8..sroa_idx, align 4, !tbaa !16
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %.sroa.8.8.copyload = load ptr, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.8..sroa_idx, i64 24, i1 false), !tbaa.struct !170
  br label %bb.j

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i8 0, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i
  %.not925 = phi i8 [ 1, %.loopexit ], [ 0, %bb.i ] ; 2 uses
  %.sroa.8.0 = phi ptr [ null, %.loopexit ], [ %.sroa.8.8.copyload, %bb.i ] ; 2 uses
  %.sroa.7.0 = phi i32 [ 0, %.loopexit ], [ %.sroa.7.8.copyload, %bb.i ] ; 2 uses
  %.sroa.5.0 = phi i32 [ 0, %.loopexit ], [ %.sroa.5.8.copyload, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331  ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !332
  %.not.i.i10 = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %2, ptr %i.y, align 8, !tbaa !30
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !69
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false), !tbaa.struct !172
  %.sroa.1019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store i8 %.not925, ptr %.sroa.1019.0..sroa_idx, align 8, !tbaa !171
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !331
  br label %_ZNSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE9push_backEOS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !333 ; 5 uses
  %i.ae = ptrtoint ptr %i.y to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.m, label %_ZNKSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #24
  unreachable

_ZNKSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ai = sdiv exact i64 %i.ag, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 164703072086692425)
  %i.am = select i1 %i.ak, i64 164703072086692425, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = mul nuw nsw i64 %i.am, 56
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #25 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag ; 6 uses
  store ptr %2, ptr %i.ap, align 8, !tbaa !30
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx12, align 8, !tbaa !69
  %.sroa.7.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx14, align 4, !tbaa !16
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx16, align 8
  %.sroa.10.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false), !tbaa.struct !172
  %.sroa.1019.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i8 %.not925, ptr %.sroa.1019.0..sroa_idx20, align 8, !tbaa !171
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.y
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %i.ao, %_ZNKSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %_ZNKSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i.i.i, i64 56, i1 false), !tbaa.struct !334, !alias.scope !335
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.y
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !329

_ZNSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ar, %.lr.ph.i.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 56
  %.not.i23.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !332
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.av) #20
  br label %_ZNSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !333
  store ptr %i.as, ptr %i.x, align 8, !tbaa !331
  %i.aw = getelementptr inbounds nuw [56 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.aw, ptr %i.z, align 8, !tbaa !332
  br label %_ZNSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.k, %_ZNSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZNSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE9push_backEOS2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !78   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = mul i64 %spec.select, 48
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21 ; 6 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !30   ; 5 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.j = icmp ult i64 %spec.select, 4
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
  %.07.i.i = phi i64 [ 0, %.new ], [ %i.v, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i8 0, i64 40, i1 false)
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.i, ptr %i.n, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i8 0, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store ptr %i.i, ptr %i.q, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i8 0, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  store ptr %i.i, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.v = add nuw i64 %.07.i.i, 4                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i8 0, i64 40, i1 false)
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !336

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa, %bb.b
  %.07.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.v, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.y, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.07.i.i.epil ; 2 uses
  store ptr %i.i, ptr %i.w, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = add nuw i64 %.07.i.i.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 40, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !337

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.a, align 8, !tbaa !78
  br label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit, %bb.a
  %i.z = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit ] ; 3 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit
  %i.aa = add i64 %spec.select, -1                ; 3 uses
  br label %bb.d

._crit_edge27:                                    ; preds = %bb.f, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !339   ; 2 uses
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !339
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !152
  %.not.i11 = icmp eq ptr %i.ab, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge27
  tail call void @_ZdlPv(ptr noundef nonnull %i.ab) #19
  br label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %._crit_edge27, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph26, %bb.f
  %i.ac = phi i64 [ %i.z, %.lr.ph26 ], [ %i.az, %bb.f ]
  %.025 = phi i64 [ 0, %.lr.ph26 ], [ %i.ba, %bb.f ] ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %.025 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 6 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 31
  %i.al = xor i64 %i.ak, %i.aj
  %.02131.i21 = and i64 %i.al, %i.aa              ; 2 uses
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0, i64 %.02131.i21 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.f
  br i1 %i.ao, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ap = icmp eq ptr %i.an, %i.af
  br i1 %i.ap, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit, label %.lr.ph47

._crit_edge:                                      ; preds = %.lr.ph47, %bb.e
  %.lcssa = phi ptr [ %i.am, %bb.e ], [ %i.at, %.lr.ph47 ] ; 2 uses
  store ptr %i.af, ptr %.lcssa, align 8, !tbaa !81
  br label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit

.lr.ph:                                           ; preds = %.lr.ph47
  %i.aq = icmp eq ptr %i.au, %i.af
  br i1 %i.aq, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit, label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i2246 = phi i64 [ %i.ar, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i2345 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i21, %.lr.ph.preheader ]
  %i.ar = add i64 %.02030.i2246, 1                ; 3 uses
  %i.as = add i64 %i.ar, %.02131.i2345
  %.not.i12 = icmp ule i64 %i.ar, %i.aa
  tail call void @llvm.assume(i1 %.not.i12)
  %.02131.i = and i64 %i.as, %i.aa                ; 2 uses
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0, i64 %.02131.i ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !30 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.f
  br i1 %i.av, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.aw = phi ptr [ %.lcssa, %._crit_edge ], [ %i.am, %.lr.ph.preheader ], [ %i.at, %.lr.ph ] ; 2 uses
  store ptr %i.af, ptr %i.aw, align 8, !tbaa !81
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 40, i1 false), !tbaa.struct !71
  %.pre31 = load i64, ptr %i.a, align 8, !tbaa !78
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit, %bb.d
  %i.az = phi i64 [ %i.ac, %bb.d ], [ %.pre31, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit ] ; 2 uses
  %i.ba = add nuw i64 %.025, 1                    ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  br i1 %i.bb, label %bb.d, label %._crit_edge27, !llvm.loop !338
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.g = shl i64 %spec.select, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21 ; 6 uses
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !30 ; 5 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.i = icmp ult i64 %spec.select, 4
  br i1 %i.i, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.u, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  store ptr %.pre.i.i, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.pre.i.i, ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 0, ptr %i.n, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %.pre.i.i, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i32 0, ptr %i.q, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %.pre.i.i, ptr %i.s, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i32 0, ptr %i.t, align 8, !tbaa !51
  %i.u = add nuw i64 %.07.i.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !340

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.u, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.x, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i.epil ; 2 uses
  store ptr %.pre.i.i, ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !51
  %i.x = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !341

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.a, align 8, !tbaa !55
  br label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit, %bb.a
  %i.y = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit ] ; 4 uses
  %.not = icmp eq i64 %i.y, 0
  %.pre32 = load ptr, ptr %0, align 8, !tbaa !343 ; 3 uses
  br i1 %.not, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit
  %i.z = add i64 %spec.select, -1                 ; 3 uses
  br label %bb.c

._crit_edge27:                                    ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !343
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !152
  %.not.i11 = icmp eq ptr %.pre32, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge27.thread, %._crit_edge27
  tail call void @_ZdlPv(ptr noundef nonnull %.pre32) #19
  br label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %._crit_edge27, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph26, %bb.e
  %.025 = phi i64 [ 0, %.lr.ph26 ], [ %i.aw, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.pre32, i64 %.025 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30 ; 6 uses
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = mul i64 %i.ae, -4658895280553007687     ; 2 uses
  %i.ag = lshr i64 %i.af, 31
  %i.ah = xor i64 %i.ag, %i.af
  %.02131.i21 = and i64 %i.ah, %i.z               ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.02131.i21 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.f
  br i1 %i.ak, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.al = icmp eq ptr %i.aj, %i.ab
  br i1 %i.al, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit, label %.lr.ph47

._crit_edge:                                      ; preds = %.lr.ph47, %bb.d
  %.lcssa = phi ptr [ %i.ai, %bb.d ], [ %i.ap, %.lr.ph47 ] ; 2 uses
  store ptr %i.ab, ptr %.lcssa, align 8, !tbaa !58
  br label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit

.lr.ph:                                           ; preds = %.lr.ph47
  %i.am = icmp eq ptr %i.aq, %i.ab
  br i1 %i.am, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit, label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i2246 = phi i64 [ %i.an, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i2345 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i21, %.lr.ph.preheader ]
  %i.an = add i64 %.02030.i2246, 1                ; 3 uses
  %i.ao = add i64 %i.an, %.02131.i2345
  %.not.i12 = icmp ule i64 %i.an, %i.z
  tail call void @llvm.assume(i1 %.not.i12)
  %.02131.i = and i64 %i.ao, %i.z                 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.02131.i ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.as = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ai, %.lr.ph.preheader ], [ %i.ap, %.lr.ph ] ; 2 uses
  store ptr %i.ab, ptr %i.as, align 8, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %i.au, ptr %i.av, align 8, !tbaa !344
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit, %bb.c
  %i.aw = add nuw i64 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.y
  br i1 %exitcond.not, label %._crit_edge27.thread, label %bb.c, !llvm.loop !342

._crit_edge27.thread:                             ; preds = %bb.e
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !343
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !152
  br label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = mul i64 %spec.select, 48
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21 ; 6 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !47   ; 5 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.j = icmp ult i64 %spec.select, 4
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
  %.07.i.i = phi i64 [ 0, %.new ], [ %i.v, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i8 0, i64 40, i1 false)
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.i, ptr %i.n, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i8 0, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store ptr %i.i, ptr %i.q, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i8 0, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  store ptr %i.i, ptr %i.t, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.v = add nuw i64 %.07.i.i, 4                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i8 0, i64 40, i1 false)
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !345

_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa, %bb.b
  %.07.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.v, %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.y, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.07.i.i.epil ; 2 uses
  store ptr %i.i, ptr %i.w, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = add nuw i64 %.07.i.i.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 40, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !346

_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.a, align 8, !tbaa !66
  br label %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit

_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit, %bb.a
  %i.z = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit ] ; 3 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit
  %i.aa = add i64 %spec.select, -1                ; 3 uses
  br label %bb.d

._crit_edge27:                                    ; preds = %bb.f, %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !348   ; 2 uses
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !348
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !152
  %.not.i11 = icmp eq ptr %i.ab, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge27
  tail call void @_ZdlPv(ptr noundef nonnull %i.ab) #19
  br label %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %._crit_edge27, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph26, %bb.f
  %i.ac = phi i64 [ %i.z, %.lr.ph26 ], [ %i.az, %bb.f ]
  %.025 = phi i64 [ 0, %.lr.ph26 ], [ %i.ba, %bb.f ] ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %.025 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 6 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 31
  %i.al = xor i64 %i.ak, %i.aj
  %.02131.i21 = and i64 %i.al, %i.aa              ; 2 uses
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0, i64 %.02131.i21 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !47 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.f
  br i1 %i.ao, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ap = icmp eq ptr %i.an, %i.af
  br i1 %i.ap, label %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit, label %.lr.ph47

._crit_edge:                                      ; preds = %.lr.ph47, %bb.e
  %.lcssa = phi ptr [ %i.am, %bb.e ], [ %i.at, %.lr.ph47 ] ; 2 uses
  store ptr %i.af, ptr %.lcssa, align 8, !tbaa !73
  br label %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit

.lr.ph:                                           ; preds = %.lr.ph47
  %i.aq = icmp eq ptr %i.au, %i.af
  br i1 %i.aq, label %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit, label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i2246 = phi i64 [ %i.ar, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i2345 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i21, %.lr.ph.preheader ]
  %i.ar = add i64 %.02030.i2246, 1                ; 3 uses
  %i.as = add i64 %i.ar, %.02131.i2345
  %.not.i12 = icmp ule i64 %i.ar, %i.aa
  tail call void @llvm.assume(i1 %.not.i12)
  %.02131.i = and i64 %i.as, %i.aa                ; 2 uses
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0, i64 %.02131.i ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.f
  br i1 %i.av, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.aw = phi ptr [ %.lcssa, %._crit_edge ], [ %i.am, %.lr.ph.preheader ], [ %i.at, %.lr.ph ] ; 2 uses
  store ptr %i.af, ptr %i.aw, align 8, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 40, i1 false), !tbaa.struct !71
  %.pre31 = load i64, ptr %i.a, align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit, %bb.d
  %i.az = phi i64 [ %i.ac, %bb.d ], [ %.pre31, %_ZN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit ] ; 2 uses
  %i.ba = add nuw i64 %.025, 1                    ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  br i1 %i.bb, label %bb.d, label %._crit_edge27, !llvm.loop !347
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { allocsize(0) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !31}
!1 = distinct !{!1, !31}
!2 = distinct !{!2, !31}
!3 = distinct !{!3, !31}
!4 = distinct !{!4, !31}
!5 = distinct !{!5, !31}
!6 = distinct !{!6, !31}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!13, !13, i64 0}
!17 = !{!"vtable pointer", !11, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !12, i64 0}
!20 = !{!"p1 _ZTSN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8VariableENS_16DenseHashPointerESt8equal_toIS2_EEE", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 _ZTSSt4pairIPN4Luau8AstLocalENS0_7Compile8VariableEE", !19, i64 0}
!23 = !{!"long", !12, i64 0}
!24 = !{!"p1 _ZTSN4Luau8AstLocalE", !19, i64 0}
!25 = !{!"_ZTSN4Luau16DenseHashPointerE"}
!26 = !{!"_ZTSSt8equal_toIPN4Luau8AstLocalEE"}
!27 = !{!"_ZTSN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8VariableEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEE", !22, i64 0, !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 32, !26, i64 33}
!28 = !{!27, !23, i64 8}
!29 = !{!27, !22, i64 0}
!30 = !{!24, !24, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"any p2 pointer", !19, i64 0}
!33 = !{!"p2 _ZTSN4Luau8AstLocalE", !32, i64 0}
!34 = !{!"_ZTSN4Luau6detail14DenseHashTableIPNS_8AstLocalES3_S3_NS0_16ItemInterfaceSetIS3_EENS_16DenseHashPointerESt8equal_toIS3_EEE", !33, i64 0, !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 32, !26, i64 33}
!35 = !{!34, !33, i64 0}
!36 = !{ptr @_ZN4Luau7Compile20TableMutationTrackerD2Ev}
!37 = !{!"p1 _ZTSN4Luau7AstExprE", !19, i64 0}
!38 = !{!"bool", !12, i64 0}
!39 = !{!"_ZTSN4Luau7Compile8VariableE", !37, i64 0, !38, i64 8, !38, i64 9}
!40 = !{!39, !38, i64 8}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!"_ZTSN4Luau8PositionE", !13, i64 0, !13, i64 4}
!44 = !{!"_ZTSN4Luau8LocationE", !43, i64 0, !43, i64 8}
!45 = !{!"_ZTSN4Luau7AstNodeE", !13, i64 8, !44, i64 12}
!46 = !{!45, !13, i64 8}
!47 = !{!37, !37, i64 0}
!48 = !{!34, !23, i64 16}
!49 = !{!34, !23, i64 8}
!50 = !{!"_ZTSN4Luau7Compile17TableConstantKindE", !12, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"p1 _ZTSSt4pairIPN4Luau8AstLocalENS0_7Compile17TableConstantKindEE", !19, i64 0}
!53 = !{!"_ZTSN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile17TableConstantKindEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEE", !52, i64 0, !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 32, !26, i64 33}
!54 = !{!53, !23, i64 16}
!55 = !{!53, !23, i64 8}
!56 = !{!53, !52, i64 0}
!57 = !{!"_ZTSSt4pairIPN4Luau8AstLocalENS0_7Compile17TableConstantKindEE", !24, i64 0, !50, i64 8}
!58 = !{!57, !24, i64 0}
!59 = !{!"p1 _ZTSN4Luau7Compile18ExprConstantChangeE", !19, i64 0}
!60 = !{!"_ZTSN4Luau7Compile8Constant4TypeE", !12, i64 0}
!61 = !{!"_ZTSN4Luau7Compile8ConstantE", !60, i64 0, !13, i64 4, !12, i64 8}
!62 = !{!"p1 _ZTSSt4pairIPN4Luau7AstExprENS0_7Compile8ConstantEE", !19, i64 0}
!63 = !{!"_ZTSSt8equal_toIPN4Luau7AstExprEE"}
!64 = !{!"_ZTSN4Luau6detail14DenseHashTableIPNS_7AstExprESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEE", !62, i64 0, !23, i64 8, !23, i64 16, !37, i64 24, !25, i64 32, !63, i64 33}
!65 = !{!64, !23, i64 16}
!66 = !{!64, !23, i64 8}
!67 = !{!64, !62, i64 0}
!68 = !{!61, !60, i64 0}
!69 = !{!60, !60, i64 0}
!70 = !{!12, !12, i64 0}
!71 = !{i64 0, i64 4, !69, i64 4, i64 4, !16, i64 8, i64 32, !70}
!72 = !{!"_ZTSSt4pairIPN4Luau7AstExprENS0_7Compile8ConstantEE", !37, i64 0, !61, i64 8}
!73 = !{!72, !37, i64 0}
!74 = !{!"p1 _ZTSN4Luau7Compile19LocalConstantChangeE", !19, i64 0}
!75 = !{!"p1 _ZTSSt4pairIPN4Luau8AstLocalENS0_7Compile8ConstantEE", !19, i64 0}
!76 = !{!"_ZTSN4Luau6detail14DenseHashTableIPNS_8AstLocalESt4pairIS3_NS_7Compile8ConstantEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEE", !75, i64 0, !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 32, !26, i64 33}
!77 = !{!76, !23, i64 16}
!78 = !{!76, !23, i64 8}
!79 = !{!76, !75, i64 0}
!80 = !{!"_ZTSSt4pairIPN4Luau8AstLocalENS0_7Compile8ConstantEE", !24, i64 0, !61, i64 8}
!81 = !{!80, !24, i64 0}
!82 = !{!"p1 _ZTSN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EEE", !19, i64 0}
!83 = !{!"p1 _ZTSN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EEE", !19, i64 0}
!84 = !{!"_ZTSN4Luau10AstVisitorE"}
!85 = !{!"p1 _ZTSN4Luau12DenseHashMapIPNS_11AstExprCallEiNS_16DenseHashPointerESt8equal_toIS2_EEE", !19, i64 0}
!86 = !{!"p1 _ZTSN4Luau12AstNameTableE", !19, i64 0}
!87 = !{!"p1 _ZTSN4Luau12DenseHashMapINS_7AstNameENS_7Compile8ConstantESt4hashIS1_ESt8equal_toIS1_EEE", !19, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorIN4Luau12DenseHashMapINS0_7AstNameENS0_7Compile8ConstantESt4hashIS2_ESt8equal_toIS2_EEESaIS9_EE", !90, i64 0}
!92 = !{!"p1 _ZTSN4Luau7Compile8ConstantE", !19, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIN4Luau7Compile8ConstantESaIS2_EE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!94 = !{!"_ZTSNSt12_Vector_baseIN4Luau7Compile8ConstantESaIS2_EE12_Vector_implE", !93, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIN4Luau7Compile8ConstantESaIS2_EE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorIN4Luau7Compile8ConstantESaIS2_EE", !95, i64 0}
!97 = !{!"p1 _ZTSN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile17TableConstantKindENS_16DenseHashPointerESt8equal_toIS2_EEE", !19, i64 0}
!98 = !{!"_ZTSN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EEE", !76, i64 0}
!99 = !{!"p1 _ZTSSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE", !19, i64 0}
!100 = !{!"p1 _ZTSSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE", !19, i64 0}
!101 = !{!"_ZTSN4Luau7Compile15ConstantVisitorE", !84, i64 0, !82, i64 8, !20, i64 16, !83, i64 24, !85, i64 32, !38, i64 40, !38, i64 41, !19, i64 48, !86, i64 56, !91, i64 64, !38, i64 88, !96, i64 96, !97, i64 120, !98, i64 128, !99, i64 168, !100, i64 176}
!102 = !{!101, !85, i64 32}
!103 = !{!101, !38, i64 40}
!104 = !{!101, !38, i64 41}
!105 = !{!101, !19, i64 48}
!106 = !{!101, !99, i64 168}
!107 = !{!101, !100, i64 176}
!108 = !{!101, !38, i64 88}
!109 = !{ptr @_ZN4Luau7Compile15ConstantVisitorD2Ev}
!110 = !{!93, !92, i64 0}
!111 = !{!93, !92, i64 16}
!112 = !{!88, !87, i64 0}
!113 = !{!88, !87, i64 8}
!114 = !{!"p1 _ZTSSt4pairIN4Luau7AstNameENS0_7Compile8ConstantEE", !19, i64 0}
!115 = !{!"p1 omnipotent char", !19, i64 0}
!116 = !{!"_ZTSN4Luau7AstNameE", !115, i64 0}
!117 = !{!"_ZTSSt4hashIN4Luau7AstNameEE"}
!118 = !{!"_ZTSSt8equal_toIN4Luau7AstNameEE"}
!119 = !{!"_ZTSN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_NS_7Compile8ConstantEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EEE", !114, i64 0, !23, i64 8, !23, i64 16, !116, i64 24, !117, i64 32, !118, i64 33}
!120 = !{!119, !114, i64 0}
!121 = !{!88, !87, i64 16}
!122 = !{!"p2 _ZTSN4Luau7AstExprE", !32, i64 0}
!123 = !{!"_ZTSN4Luau8AstArrayIPNS_7AstExprEEE", !122, i64 0, !23, i64 8}
!124 = !{!123, !122, i64 0}
!125 = !{!123, !23, i64 8}
!126 = !{!"_ZTSN4Luau7AstExprE", !45, i64 0}
!127 = !{!"p1 _ZTSN4Luau13AstTypeOrPackE", !19, i64 0}
!128 = !{!"_ZTSN4Luau8AstArrayINS_13AstTypeOrPackEEE", !127, i64 0, !23, i64 8}
!129 = !{!"_ZTSN4Luau11AstExprCallE", !126, i64 0, !37, i64 32, !128, i64 40, !123, i64 56, !38, i64 72, !44, i64 76}
!130 = !{!129, !37, i64 32}
!131 = !{!"p1 _ZTSN4Luau12AstExprTable4ItemE", !19, i64 0}
!132 = !{!"_ZTSN4Luau8AstArrayINS_12AstExprTable4ItemEEE", !131, i64 0, !23, i64 8}
!133 = !{!"_ZTSN4Luau12AstExprTable4Item4KindE", !12, i64 0}
!134 = !{!"_ZTSN4Luau12AstExprTable4ItemE", !133, i64 0, !37, i64 8, !37, i64 16}
!135 = !{!134, !37, i64 8}
!136 = !{!134, !37, i64 16}
!137 = !{!"_ZTSN4Luau7AstStatE", !45, i64 0, !38, i64 28}
!138 = !{!"_ZTSN4Luau8AstArrayIPNS_8AstLocalEEE", !33, i64 0, !23, i64 8}
!139 = !{!"_ZTSSt22_Optional_payload_baseIN4Luau8LocationEE", !12, i64 0, !38, i64 16}
!140 = !{!"_ZTSSt17_Optional_payloadIN4Luau8LocationELb1ELb1ELb1EE", !139, i64 0}
!141 = !{!"_ZTSSt14_Optional_baseIN4Luau8LocationELb1ELb1EE", !140, i64 0}
!142 = !{!"_ZTSSt8optionalIN4Luau8LocationEE", !141, i64 0}
!143 = !{!"_ZTSN4Luau12AstStatLocalE", !137, i64 0, !138, i64 32, !123, i64 48, !38, i64 64, !38, i64 65, !142, i64 68, !142, i64 88}
!144 = !{!143, !23, i64 56}
!145 = !{!143, !23, i64 40}
!146 = !{!143, !122, i64 48}
!147 = !{!"_ZTSN4Luau16AstExprIndexExprE", !126, i64 0, !37, i64 32, !37, i64 40}
!148 = !{!147, !37, i64 32}
!149 = !{!"_ZTSN4Luau13AstExprBinary2OpE", !12, i64 0}
!150 = !{!"_ZTSN4Luau13AstExprBinaryE", !126, i64 0, !149, i64 28, !37, i64 32, !37, i64 40}
!151 = !{!150, !149, i64 28}
!152 = !{!23, !23, i64 0}
!153 = !{i64 8}
!154 = !{!101, !83, i64 24}
!155 = !{!"_ZTSN4Luau8AstArrayIcEE", !115, i64 0, !23, i64 8}
!156 = !{!61, !13, i64 4}
!157 = !{!"p1 _ZTSN4Luau11AstExprCallE", !19, i64 0}
!158 = !{!157, !157, i64 0}
!159 = !{!93, !92, i64 8}
!160 = !{!116, !115, i64 0}
!161 = !{!115, !115, i64 0}
!162 = !{!119, !23, i64 16}
!163 = !{!119, !23, i64 8}
!164 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !115, i64 0}
!165 = !{!164, !115, i64 0}
!166 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !164, i64 0, !23, i64 8, !12, i64 16}
!167 = !{!166, !23, i64 8}
!168 = !{!166, !115, i64 0}
!169 = !{!"llvm.loop.unroll.disable"}
!170 = !{i64 0, i64 24, !70}
!171 = !{!38, !38, i64 0}
!172 = !{i64 0, i64 24, !70, i64 24, i64 1, !171}
!173 = distinct !{!173, !31}
!174 = distinct !{!174, !31}
!175 = !{!39, !37, i64 0}
!176 = distinct !{!176, !"_ZNKSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE6rbeginEv"}
!177 = distinct !{!177, !176, !"_ZNKSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE6rbeginEv: argument 0"}
!178 = distinct !{!178, !"_ZNKSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE4rendEv"}
!179 = distinct !{!179, !178, !"_ZNKSt6vectorIN4Luau7Compile18ExprConstantChangeESaIS2_EE4rendEv: argument 0"}
!180 = distinct !{!180, !31}
!181 = !{!59, !59, i64 0}
!182 = !{!177}
!183 = !{!179}
!184 = !{!"_ZTSN4Luau7Compile18ExprConstantChangeE", !37, i64 0, !61, i64 8, !38, i64 48}
!185 = !{!184, !38, i64 48}
!186 = distinct !{!186, !"_ZNKSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE6rbeginEv"}
!187 = distinct !{!187, !186, !"_ZNKSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE6rbeginEv: argument 0"}
!188 = distinct !{!188, !"_ZNKSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE4rendEv"}
!189 = distinct !{!189, !188, !"_ZNKSt6vectorIN4Luau7Compile19LocalConstantChangeESaIS2_EE4rendEv: argument 0"}
!190 = distinct !{!190, !31}
!191 = !{!74, !74, i64 0}
!192 = !{!187}
!193 = !{!189}
!194 = !{!"_ZTSN4Luau7Compile19LocalConstantChangeE", !24, i64 0, !61, i64 8, !38, i64 48}
!195 = !{!194, !38, i64 48}
!196 = !{!82, !82, i64 0}
!197 = !{!83, !83, i64 0}
!198 = !{!86, !86, i64 0}
!199 = !{!97, !97, i64 0}
!200 = !{!129, !38, i64 72}
!201 = !{!132, !131, i64 0}
!202 = !{!132, !23, i64 8}
!203 = distinct !{!203, !31}
!204 = !{!"_ZTSN4Luau21AstStatCompoundAssignE", !137, i64 0, !149, i64 32, !37, i64 40, !37, i64 48}
!205 = !{!204, !37, i64 40}
!206 = !{!"p1 _ZTSN4Luau15AstExprFunctionE", !19, i64 0}
!207 = !{!"_ZTSN4Luau15AstStatFunctionE", !137, i64 0, !37, i64 32, !206, i64 40}
!208 = !{!207, !37, i64 32}
!209 = distinct !{!209, !31, !212, !213}
!210 = distinct !{!210, !31, !213, !212}
!211 = distinct !{!211, !31}
!212 = !{!"llvm.loop.isvectorized", i32 1}
!213 = !{!"llvm.loop.unroll.runtime.disable"}
!214 = !{!33, !33, i64 0}
!215 = distinct !{!215, !31}
!216 = distinct !{!216, !31}
!217 = distinct !{!217, !31}
!218 = !{!143, !33, i64 32}
!219 = !{!101, !97, i64 120}
!220 = !{!101, !20, i64 16}
!221 = !{!39, !38, i64 9}
!222 = distinct !{!222, !31}
!223 = distinct !{!223, !31}
!224 = distinct !{!224, !31}
!225 = !{!"_ZTSN4Luau12AstExprGroupE", !126, i64 0, !37, i64 32}
!226 = !{!225, !37, i64 32}
!227 = !{!"_ZTSN4Luau19AstExprConstantBoolE", !126, i64 0, !38, i64 28}
!228 = !{!227, !38, i64 28}
!229 = !{!"double", !12, i64 0}
!230 = !{!"_ZTSN4Luau25ConstantNumberParseResultE", !12, i64 0}
!231 = !{!"_ZTSN4Luau21AstExprConstantNumberE", !126, i64 0, !229, i64 32, !230, i64 40}
!232 = !{!231, !229, i64 32}
!233 = !{!"_ZTSN4Luau22AstExprConstantIntegerE", !126, i64 0, !23, i64 32, !230, i64 40}
!234 = !{!233, !23, i64 32}
!235 = !{!"_ZTSN4Luau21AstExprConstantString10QuoteStyleE", !12, i64 0}
!236 = !{!"_ZTSN4Luau21AstExprConstantStringE", !126, i64 0, !155, i64 32, !235, i64 48}
!237 = !{!236, !115, i64 32}
!238 = !{!236, !23, i64 40}
!239 = !{!129, !23, i64 64}
!240 = !{!129, !122, i64 56}
!241 = !{!101, !86, i64 56}
!242 = !{!"_ZTSN4Luau16AstExprIndexNameE", !126, i64 0, !37, i64 32, !116, i64 40, !44, i64 48, !43, i64 64, !12, i64 72}
!243 = !{!242, !37, i64 32}
!244 = !{!"_ZTSN4Luau13AstExprGlobalE", !126, i64 0, !116, i64 32}
!245 = !{!244, !115, i64 32}
!246 = !{!242, !115, i64 40}
!247 = !{!147, !37, i64 40}
!248 = !{!"p2 _ZTSN4Luau7AstAttrE", !32, i64 0}
!249 = !{!"_ZTSN4Luau8AstArrayIPNS_7AstAttrEEE", !248, i64 0, !23, i64 8}
!250 = !{!"p2 _ZTSN4Luau14AstGenericTypeE", !32, i64 0}
!251 = !{!"_ZTSN4Luau8AstArrayIPNS_14AstGenericTypeEEE", !250, i64 0, !23, i64 8}
!252 = !{!"p2 _ZTSN4Luau18AstGenericTypePackE", !32, i64 0}
!253 = !{!"_ZTSN4Luau8AstArrayIPNS_18AstGenericTypePackEEE", !252, i64 0, !23, i64 8}
!254 = !{!"p1 _ZTSN4Luau11AstTypePackE", !19, i64 0}
!255 = !{!"p1 _ZTSN4Luau12AstStatBlockE", !19, i64 0}
!256 = !{!"_ZTSN4Luau15AstExprFunctionE", !126, i64 0, !249, i64 32, !251, i64 48, !253, i64 64, !24, i64 80, !138, i64 88, !254, i64 104, !38, i64 112, !44, i64 116, !254, i64 136, !255, i64 144, !23, i64 152, !116, i64 160, !142, i64 168}
!257 = !{!256, !255, i64 144}
!258 = !{!"_ZTSN4Luau12AstExprTableE", !126, i64 0, !132, i64 32}
!259 = !{!258, !23, i64 40}
!260 = !{!258, !131, i64 32}
!261 = !{!"_ZTSN4Luau12AstExprUnary2OpE", !12, i64 0}
!262 = !{!"_ZTSN4Luau12AstExprUnaryE", !126, i64 0, !261, i64 28, !37, i64 32}
!263 = !{!262, !37, i64 32}
!264 = !{!262, !261, i64 28}
!265 = !{!150, !37, i64 32}
!266 = !{!150, !37, i64 40}
!267 = !{!"p1 _ZTSN4Luau7AstTypeE", !19, i64 0}
!268 = !{!"_ZTSN4Luau20AstExprTypeAssertionE", !126, i64 0, !37, i64 32, !267, i64 40}
!269 = !{!268, !37, i64 32}
!270 = !{!"_ZTSN4Luau13AstExprIfElseE", !126, i64 0, !37, i64 32, !38, i64 40, !37, i64 48, !38, i64 56, !37, i64 64}
!271 = !{!270, !37, i64 32}
!272 = !{!270, !37, i64 48}
!273 = !{!270, !37, i64 64}
!274 = !{!101, !82, i64 8}
!275 = !{!"_ZTSN4Luau18AstExprInstantiateE", !126, i64 0, !37, i64 32, !128, i64 40}
!276 = !{!275, !37, i64 32}
!277 = distinct !{!277, !31}
!278 = !{!"p1 _ZTSSt4pairIPN4Luau11AstExprCallEiE", !19, i64 0}
!279 = !{!"_ZTSSt8equal_toIPN4Luau11AstExprCallEE"}
!280 = !{!"_ZTSN4Luau6detail14DenseHashTableIPNS_11AstExprCallESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS_16DenseHashPointerESt8equal_toIS3_EEE", !278, i64 0, !23, i64 8, !23, i64 16, !157, i64 24, !25, i64 32, !279, i64 33}
!281 = !{!280, !23, i64 16}
!282 = !{!280, !23, i64 8}
!283 = !{!280, !278, i64 0}
!284 = distinct !{!284, !"_ZSt19__relocate_object_aIN4Luau7Compile8ConstantES2_SaIS2_EEvPT_PT0_RT1_"}
!285 = distinct !{!285, !284, !"_ZSt19__relocate_object_aIN4Luau7Compile8ConstantES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!286 = distinct !{!286, !284, !"_ZSt19__relocate_object_aIN4Luau7Compile8ConstantES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!287 = !{!286, !285}
!288 = distinct !{!288, !"_ZSt19__relocate_object_aIN4Luau7Compile8ConstantES2_SaIS2_EEvPT_PT0_RT1_"}
!289 = distinct !{!289, !288, !"_ZSt19__relocate_object_aIN4Luau7Compile8ConstantES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!290 = distinct !{!290, !288, !"_ZSt19__relocate_object_aIN4Luau7Compile8ConstantES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!291 = !{!290, !289}
!292 = !{!"branch_weights", i32 1, i32 1048575}
!293 = distinct !{!293, !31}
!294 = distinct !{!294, !31}
!295 = !{!"p1 _ZTSN4Luau8AstArrayIcEE", !19, i64 0}
!296 = !{!"_ZTSN4Luau8AstArrayINS0_IcEEEE", !295, i64 0, !23, i64 8}
!297 = !{!"_ZTSN4Luau19AstExprInterpStringE", !126, i64 0, !296, i64 32, !123, i64 48}
!298 = !{!297, !23, i64 40}
!299 = !{!297, !295, i64 32}
!300 = !{!297, !23, i64 56}
!301 = !{!155, !23, i64 8}
!302 = !{!297, !122, i64 48}
!303 = distinct !{!303, !"_ZSt19__relocate_object_aIN4Luau7Compile8ConstantES2_SaIS2_EEvPT_PT0_RT1_"}
!304 = distinct !{!304, !303, !"_ZSt19__relocate_object_aIN4Luau7Compile8ConstantES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!305 = distinct !{!305, !303, !"_ZSt19__relocate_object_aIN4Luau7Compile8ConstantES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!306 = !{!305, !304}
!307 = distinct !{!307, !31}
!308 = distinct !{!308, !169}
!309 = distinct !{!309, !31}
!310 = !{!114, !114, i64 0}
!311 = distinct !{!311, !31}
!312 = distinct !{!312, !31}
!313 = !{!"p1 _ZTSN4Luau6FValueIbEE", !19, i64 0}
!314 = !{!"_ZTSN4Luau6FValueIbEE", !38, i64 0, !38, i64 1, !115, i64 8, !313, i64 16, !13, i64 24}
!315 = !{!314, !38, i64 0}
!316 = distinct !{!316, !"_ZSt19__relocate_object_aIN4Luau7Compile18ExprConstantChangeES2_SaIS2_EEvPT_PT0_RT1_"}
!317 = distinct !{!317, !316, !"_ZSt19__relocate_object_aIN4Luau7Compile18ExprConstantChangeES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!318 = distinct !{!318, !316, !"_ZSt19__relocate_object_aIN4Luau7Compile18ExprConstantChangeES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!319 = distinct !{!319, !31}
!320 = !{!"_ZTSNSt12_Vector_baseIN4Luau7Compile18ExprConstantChangeESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!321 = !{!320, !59, i64 8}
!322 = !{!320, !59, i64 16}
!323 = !{!320, !59, i64 0}
!324 = !{i64 0, i64 8, !47, i64 8, i64 4, !69, i64 12, i64 4, !16, i64 16, i64 32, !70, i64 48, i64 1, !171}
!325 = !{!318, !317}
!326 = distinct !{!326, !"_ZSt19__relocate_object_aIN4Luau7Compile19LocalConstantChangeES2_SaIS2_EEvPT_PT0_RT1_"}
!327 = distinct !{!327, !326, !"_ZSt19__relocate_object_aIN4Luau7Compile19LocalConstantChangeES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!328 = distinct !{!328, !326, !"_ZSt19__relocate_object_aIN4Luau7Compile19LocalConstantChangeES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!329 = distinct !{!329, !31}
!330 = !{!"_ZTSNSt12_Vector_baseIN4Luau7Compile19LocalConstantChangeESaIS2_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!331 = !{!330, !74, i64 8}
!332 = !{!330, !74, i64 16}
!333 = !{!330, !74, i64 0}
!334 = !{i64 0, i64 8, !30, i64 8, i64 4, !69, i64 12, i64 4, !16, i64 16, i64 32, !70, i64 48, i64 1, !171}
!335 = !{!328, !327}
!336 = distinct !{!336, !31}
!337 = distinct !{!337, !169}
!338 = distinct !{!338, !31}
!339 = !{!75, !75, i64 0}
!340 = distinct !{!340, !31}
!341 = distinct !{!341, !169}
!342 = distinct !{!342, !31}
!343 = !{!52, !52, i64 0}
!344 = !{!57, !50, i64 8}
!345 = distinct !{!345, !31}
!346 = distinct !{!346, !169}
!347 = distinct !{!347, !31}
!348 = !{!62, !62, i64 0}
end_hunk_1
