Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/trace_events_filter?download=true
inline.NumInlined: 201
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@filter_match_preds:bb.a
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = load i32, ptr %i.gs, align 4
  %i.gx = icmp ult i32 %i.gw, %i.gv
  br label %filter_pred_u32.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.gy = getelementptr i8, ptr %i.d, i64 52
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr i8, ptr %1, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.d, i64 32
  %i.hd = load i64, ptr %i.hc, align 8
  %i.he = trunc i64 %i.hd to i32
  %i.hf = load i32, ptr %i.hb, align 4
  %i.hg = icmp ule i32 %i.hf, %i.he
  br label %filter_pred_u32.exit.i

bb.ad:                                            ; preds = %bb.aa
  %i.hh = getelementptr i8, ptr %i.d, i64 52
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr i8, ptr %1, i64 %i.hj
  %i.hl = getelementptr i8, ptr %i.d, i64 32
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = load i32, ptr %i.hk, align 4
  %i.hp = icmp ugt i32 %i.ho, %i.hn
  br label %filter_pred_u32.exit.i

bb.ae:                                            ; preds = %bb.aa
  %i.hq = getelementptr i8, ptr %i.d, i64 52
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr i8, ptr %1, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.d, i64 32
  %i.hv = load i64, ptr %i.hu, align 8
  %i.hw = trunc i64 %i.hv to i32
  %i.hx = load i32, ptr %i.ht, align 4
  %i.hy = icmp uge i32 %i.hx, %i.hw
  br label %filter_pred_u32.exit.i

bb.af:                                            ; preds = %bb.aa
  %i.hz = getelementptr i8, ptr %i.d, i64 52
  %i.ia = load i32, ptr %i.hz, align 4
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr i8, ptr %1, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.d, i64 32
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = trunc i64 %i.ie to i32
  %i.ig = load i32, ptr %i.ic, align 4
  %i.ih = and i32 %i.ig, %i.if
  %i.ii = icmp ne i32 %i.ih, 0
  br label %filter_pred_u32.exit.i

filter_pred_u32.exit.i:                           ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.0.shrunk.i66.i = phi i1 [ %i.ii, %bb.af ], [ %i.gx, %bb.ab ], [ %i.hg, %bb.ac ], [ %i.hp, %bb.ad ], [ %i.hy, %bb.ae ], [ false, %bb.aa ]
  %.0.i67.i = zext i1 %.0.shrunk.i66.i to i32
  br label %filter_pred_fn_call.exit

bb.ag:                                            ; preds = %.lr.ph
  %i.ij = getelementptr i8, ptr %i.d, i64 52
  %i.ik = load i32, ptr %i.ij, align 4
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr i8, ptr %1, i64 %i.il
  %i.in = getelementptr i8, ptr %i.d, i64 32
  %i.io = load i64, ptr %i.in, align 8
  %i.ip = load i16, ptr %i.im, align 2
  %i.iq = trunc i64 %i.io to i16
  %i.ir = icmp eq i16 %i.ip, %i.iq
  %i.is = zext i1 %i.ir to i32
  %i.it = getelementptr i8, ptr %i.d, i64 56
  %i.iu = load i32, ptr %i.it, align 8
  %i.iv = xor i32 %i.iu, %i.is
  br label %filter_pred_fn_call.exit

bb.ah:                                            ; preds = %.lr.ph
  %i.iw = getelementptr i8, ptr %i.d, i64 52
  %i.ix = load i32, ptr %i.iw, align 4
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr i8, ptr %1, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2            ; 2 uses
  %i.jb = zext i16 %i.ja to i32
  %i.jc = load i32, ptr @nr_cpu_ids, align 4
  %.not.i68.i = icmp ugt i32 %i.jc, %i.jb
  br i1 %.not.i68.i, label %bb.ai, label %filter_pred_fn_call.exit

bb.ai:                                            ; preds = %bb.ah
  %i.jd = getelementptr i8, ptr %i.d, i64 60
  %i.je = load i32, ptr %i.jd, align 4            ; 2 uses
  switch i32 %i.je, label %bb.cc [
    i32 7, label %arch_test_bit.exit.i.i70.i
    i32 1, label %filter_pred_fn_call.exit
  ]

arch_test_bit.exit.i.i70.i:                       ; preds = %bb.ai
  %i.jf = getelementptr i8, ptr %i.d, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = zext i16 %i.ja to i64
  %i.ji = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.jg, i64 range(i64 0, 4294967296) %i.jh) #18, !srcloc !31 ; 2 uses
  %i.jj = icmp ult i8 %i.ji, 2
  tail call void @llvm.assume(i1 %i.jj)
  %i.jk = zext nneg i8 %i.ji to i32
  br label %filter_pred_fn_call.exit

bb.aj:                                            ; preds = %.lr.ph
  %i.jl = getelementptr i8, ptr %i.d, i64 60
  %i.jm = load i32, ptr %i.jl, align 4
  switch i32 %i.jm, label %filter_pred_s16.exit.i [
    i32 4, label %bb.ak
    i32 3, label %bb.al
    i32 6, label %bb.am
    i32 5, label %bb.an
    i32 7, label %bb.ao
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.jn = getelementptr i8, ptr %i.d, i64 52
  %i.jo = load i32, ptr %i.jn, align 4
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr i8, ptr %1, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.d, i64 32
  %i.js = load i64, ptr %i.jr, align 8
  %i.jt = trunc i64 %i.js to i16
  %i.ju = load i16, ptr %i.jq, align 2
  %i.jv = icmp slt i16 %i.ju, %i.jt
  br label %filter_pred_s16.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.jw = getelementptr i8, ptr %i.d, i64 52
  %i.jx = load i32, ptr %i.jw, align 4
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr i8, ptr %1, i64 %i.jy
  %i.ka = getelementptr i8, ptr %i.d, i64 32
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = trunc i64 %i.kb to i16
  %i.kd = load i16, ptr %i.jz, align 2
  %i.ke = icmp sle i16 %i.kd, %i.kc
  br label %filter_pred_s16.exit.i

bb.am:                                            ; preds = %bb.aj
  %i.kf = getelementptr i8, ptr %i.d, i64 52
  %i.kg = load i32, ptr %i.kf, align 4
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr i8, ptr %1, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.d, i64 32
  %i.kk = load i64, ptr %i.kj, align 8
  %i.kl = trunc i64 %i.kk to i16
  %i.km = load i16, ptr %i.ki, align 2
  %i.kn = icmp sgt i16 %i.km, %i.kl
  br label %filter_pred_s16.exit.i

bb.an:                                            ; preds = %bb.aj
  %i.ko = getelementptr i8, ptr %i.d, i64 52
  %i.kp = load i32, ptr %i.ko, align 4
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr i8, ptr %1, i64 %i.kq
  %i.ks = getelementptr i8, ptr %i.d, i64 32
  %i.kt = load i64, ptr %i.ks, align 8
  %i.ku = trunc i64 %i.kt to i16
  %i.kv = load i16, ptr %i.kr, align 2
  %i.kw = icmp sge i16 %i.kv, %i.ku
  br label %filter_pred_s16.exit.i

bb.ao:                                            ; preds = %bb.aj
  %i.kx = getelementptr i8, ptr %i.d, i64 52
  %i.ky = load i32, ptr %i.kx, align 4
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr i8, ptr %1, i64 %i.kz
  %i.lb = getelementptr i8, ptr %i.d, i64 32
  %i.lc = load i64, ptr %i.lb, align 8
  %i.ld = trunc i64 %i.lc to i16
  %i.le = load i16, ptr %i.la, align 2
  %i.lf = and i16 %i.le, %i.ld
  %i.lg = icmp ne i16 %i.lf, 0
  br label %filter_pred_s16.exit.i

filter_pred_s16.exit.i:                           ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %.0.shrunk.i72.i = phi i1 [ %i.lg, %bb.ao ], [ %i.jv, %bb.ak ], [ %i.ke, %bb.al ], [ %i.kn, %bb.am ], [ %i.kw, %bb.an ], [ false, %bb.aj ]
  %.0.i73.i = zext i1 %.0.shrunk.i72.i to i32
  br label %filter_pred_fn_call.exit

bb.ap:                                            ; preds = %.lr.ph
  %i.lh = getelementptr i8, ptr %i.d, i64 60
  %i.li = load i32, ptr %i.lh, align 4
  switch i32 %i.li, label %filter_pred_u16.exit.i [
    i32 4, label %bb.aq
    i32 3, label %bb.ar
    i32 6, label %bb.as
    i32 5, label %bb.at
    i32 7, label %bb.au
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.lj = getelementptr i8, ptr %i.d, i64 52
  %i.lk = load i32, ptr %i.lj, align 4
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr i8, ptr %1, i64 %i.ll
  %i.ln = getelementptr i8, ptr %i.d, i64 32
  %i.lo = load i64, ptr %i.ln, align 8
  %i.lp = load i16, ptr %i.lm, align 2
  %2 = trunc i64 %i.lo to i16
  %3 = icmp ult i16 %i.lp, %2
  br label %filter_pred_u16.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.lq = getelementptr i8, ptr %i.d, i64 52
  %i.lr = load i32, ptr %i.lq, align 4
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr i8, ptr %1, i64 %i.ls
  %i.lu = getelementptr i8, ptr %i.d, i64 32
  %i.lv = load i64, ptr %i.lu, align 8
  %i.lw = load i16, ptr %i.lt, align 2
  %4 = trunc i64 %i.lv to i16
  %5 = icmp ule i16 %i.lw, %4
  br label %filter_pred_u16.exit.i

bb.as:                                            ; preds = %bb.ap
  %i.lx = getelementptr i8, ptr %i.d, i64 52
  %i.ly = load i32, ptr %i.lx, align 4
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr i8, ptr %1, i64 %i.lz
  %i.mb = getelementptr i8, ptr %i.d, i64 32
  %i.mc = load i64, ptr %i.mb, align 8
  %i.md = load i16, ptr %i.ma, align 2
  %6 = trunc i64 %i.mc to i16
  %7 = icmp ugt i16 %i.md, %6
  br label %filter_pred_u16.exit.i

bb.at:                                            ; preds = %bb.ap
  %i.me = getelementptr i8, ptr %i.d, i64 52
  %i.mf = load i32, ptr %i.me, align 4
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr i8, ptr %1, i64 %i.mg
  %i.mi = getelementptr i8, ptr %i.d, i64 32
  %i.mj = load i64, ptr %i.mi, align 8
  %i.mk = load i16, ptr %i.mh, align 2
  %8 = trunc i64 %i.mj to i16
  %9 = icmp uge i16 %i.mk, %8
  br label %filter_pred_u16.exit.i

bb.au:                                            ; preds = %bb.ap
  %i.ml = getelementptr i8, ptr %i.d, i64 52
  %i.mm = load i32, ptr %i.ml, align 4
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr i8, ptr %1, i64 %i.mn
  %i.mp = getelementptr i8, ptr %i.d, i64 32
  %i.mq = load i64, ptr %i.mp, align 8
  %i.mr = trunc i64 %i.mq to i32
  %i.ms = load i16, ptr %i.mo, align 2
  %i.mt = zext i16 %i.ms to i32
  %i.mu = and i32 %i.mt, %i.mr
  %i.mv = icmp ne i32 %i.mu, 0
  br label %filter_pred_u16.exit.i

filter_pred_u16.exit.i:                           ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.0.shrunk.i74.i = phi i1 [ %i.mv, %bb.au ], [ %3, %bb.aq ], [ %5, %bb.ar ], [ %7, %bb.as ], [ %9, %bb.at ], [ false, %bb.ap ]
  %.0.i75.i = zext i1 %.0.shrunk.i74.i to i32
  br label %filter_pred_fn_call.exit

bb.av:                                            ; preds = %.lr.ph
  %i.mw = getelementptr i8, ptr %i.d, i64 52
  %i.mx = load i32, ptr %i.mw, align 4
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr i8, ptr %1, i64 %i.my
  %i.na = getelementptr i8, ptr %i.d, i64 32
  %i.nb = load i64, ptr %i.na, align 8
  %i.nc = load i8, ptr %i.mz, align 1
  %i.nd = trunc i64 %i.nb to i8
  %i.ne = icmp eq i8 %i.nc, %i.nd
  %i.nf = zext i1 %i.ne to i32
  %i.ng = getelementptr i8, ptr %i.d, i64 56
  %i.nh = load i32, ptr %i.ng, align 8
  %i.ni = xor i32 %i.nh, %i.nf
  br label %filter_pred_fn_call.exit

bb.aw:                                            ; preds = %.lr.ph
  %i.nj = getelementptr i8, ptr %i.d, i64 52
  %i.nk = load i32, ptr %i.nj, align 4
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr i8, ptr %1, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1             ; 2 uses
  %i.no = zext i8 %i.nn to i32
  %i.np = load i32, ptr @nr_cpu_ids, align 4
  %.not.i76.i = icmp ugt i32 %i.np, %i.no
  br i1 %.not.i76.i, label %bb.ax, label %filter_pred_fn_call.exit

bb.ax:                                            ; preds = %bb.aw
  %i.nq = getelementptr i8, ptr %i.d, i64 60
  %i.nr = load i32, ptr %i.nq, align 4            ; 2 uses
  switch i32 %i.nr, label %bb.cc [
    i32 7, label %arch_test_bit.exit.i.i78.i
    i32 1, label %filter_pred_fn_call.exit
  ]

arch_test_bit.exit.i.i78.i:                       ; preds = %bb.ax
  %i.ns = getelementptr i8, ptr %i.d, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8
  %i.nu = zext i8 %i.nn to i64
  %i.nv = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.nt, i64 range(i64 0, 4294967296) %i.nu) #18, !srcloc !31 ; 2 uses
  %i.nw = icmp ult i8 %i.nv, 2
  tail call void @llvm.assume(i1 %i.nw)
  %i.nx = zext nneg i8 %i.nv to i32
  br label %filter_pred_fn_call.exit

bb.ay:                                            ; preds = %.lr.ph
  %i.ny = getelementptr i8, ptr %i.d, i64 60
  %i.nz = load i32, ptr %i.ny, align 4
  switch i32 %i.nz, label %filter_pred_s8.exit.i [
    i32 4, label %bb.az
    i32 3, label %bb.ba
    i32 6, label %bb.bb
    i32 5, label %bb.bc
    i32 7, label %bb.bd
  ]

bb.az:                                            ; preds = %bb.ay
  %i.oa = getelementptr i8, ptr %i.d, i64 52
  %i.ob = load i32, ptr %i.oa, align 4
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr i8, ptr %1, i64 %i.oc
  %i.oe = getelementptr i8, ptr %i.d, i64 32
  %i.of = load i64, ptr %i.oe, align 8
  %i.og = trunc i64 %i.of to i8
  %i.oh = load i8, ptr %i.od, align 1
  %i.oi = icmp slt i8 %i.oh, %i.og
  br label %filter_pred_s8.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.oj = getelementptr i8, ptr %i.d, i64 52
  %i.ok = load i32, ptr %i.oj, align 4
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr i8, ptr %1, i64 %i.ol
  %i.on = getelementptr i8, ptr %i.d, i64 32
  %i.oo = load i64, ptr %i.on, align 8
  %i.op = trunc i64 %i.oo to i8
  %i.oq = load i8, ptr %i.om, align 1
  %i.or = icmp sle i8 %i.oq, %i.op
  br label %filter_pred_s8.exit.i

bb.bb:                                            ; preds = %bb.ay
  %i.os = getelementptr i8, ptr %i.d, i64 52
  %i.ot = load i32, ptr %i.os, align 4
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr i8, ptr %1, i64 %i.ou
  %i.ow = getelementptr i8, ptr %i.d, i64 32
  %i.ox = load i64, ptr %i.ow, align 8
  %i.oy = trunc i64 %i.ox to i8
  %i.oz = load i8, ptr %i.ov, align 1
  %i.pa = icmp sgt i8 %i.oz, %i.oy
  br label %filter_pred_s8.exit.i

bb.bc:                                            ; preds = %bb.ay
  %i.pb = getelementptr i8, ptr %i.d, i64 52
  %i.pc = load i32, ptr %i.pb, align 4
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr i8, ptr %1, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.d, i64 32
  %i.pg = load i64, ptr %i.pf, align 8
  %i.ph = trunc i64 %i.pg to i8
  %i.pi = load i8, ptr %i.pe, align 1
  %i.pj = icmp sge i8 %i.pi, %i.ph
  br label %filter_pred_s8.exit.i

bb.bd:                                            ; preds = %bb.ay
  %i.pk = getelementptr i8, ptr %i.d, i64 52
  %i.pl = load i32, ptr %i.pk, align 4
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr i8, ptr %1, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.d, i64 32
  %i.pp = load i64, ptr %i.po, align 8
  %i.pq = trunc i64 %i.pp to i8
  %i.pr = load i8, ptr %i.pn, align 1
  %i.ps = and i8 %i.pr, %i.pq
  %i.pt = icmp ne i8 %i.ps, 0
  br label %filter_pred_s8.exit.i

filter_pred_s8.exit.i:                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.0.shrunk.i80.i = phi i1 [ %i.pt, %bb.bd ], [ %i.oi, %bb.az ], [ %i.or, %bb.ba ], [ %i.pa, %bb.bb ], [ %i.pj, %bb.bc ], [ false, %bb.ay ]
  %.0.i81.i = zext i1 %.0.shrunk.i80.i to i32
  br label %filter_pred_fn_call.exit

bb.be:                                            ; preds = %.lr.ph
  %i.pu = getelementptr i8, ptr %i.d, i64 60
  %i.pv = load i32, ptr %i.pu, align 4
  switch i32 %i.pv, label %filter_pred_u8.exit.i [
    i32 4, label %bb.bf
    i32 3, label %bb.bg
    i32 6, label %bb.bh
    i32 5, label %bb.bi
    i32 7, label %bb.bj
  ]

bb.bf:                                            ; preds = %bb.be
  %i.pw = getelementptr i8, ptr %i.d, i64 52
  %i.px = load i32, ptr %i.pw, align 4
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr i8, ptr %1, i64 %i.py
  %i.qa = getelementptr i8, ptr %i.d, i64 32
  %i.qb = load i64, ptr %i.qa, align 8
  %i.qc = load i8, ptr %i.pz, align 1
  %10 = trunc i64 %i.qb to i8
  %11 = icmp ult i8 %i.qc, %10
  br label %filter_pred_u8.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.qd = getelementptr i8, ptr %i.d, i64 52
  %i.qe = load i32, ptr %i.qd, align 4
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr i8, ptr %1, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.d, i64 32
  %i.qi = load i64, ptr %i.qh, align 8
  %i.qj = load i8, ptr %i.qg, align 1
  %12 = trunc i64 %i.qi to i8
  %13 = icmp ule i8 %i.qj, %12
  br label %filter_pred_u8.exit.i

bb.bh:                                            ; preds = %bb.be
  %i.qk = getelementptr i8, ptr %i.d, i64 52
  %i.ql = load i32, ptr %i.qk, align 4
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr i8, ptr %1, i64 %i.qm
  %i.qo = getelementptr i8, ptr %i.d, i64 32
  %i.qp = load i64, ptr %i.qo, align 8
  %i.qq = load i8, ptr %i.qn, align 1
  %14 = trunc i64 %i.qp to i8
  %15 = icmp ugt i8 %i.qq, %14
  br label %filter_pred_u8.exit.i

bb.bi:                                            ; preds = %bb.be
  %i.qr = getelementptr i8, ptr %i.d, i64 52
  %i.qs = load i32, ptr %i.qr, align 4
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr i8, ptr %1, i64 %i.qt
  %i.qv = getelementptr i8, ptr %i.d, i64 32
  %i.qw = load i64, ptr %i.qv, align 8
  %i.qx = load i8, ptr %i.qu, align 1
  %16 = trunc i64 %i.qw to i8
  %17 = icmp uge i8 %i.qx, %16
  br label %filter_pred_u8.exit.i

bb.bj:                                            ; preds = %bb.be
  %i.qy = getelementptr i8, ptr %i.d, i64 52
  %i.qz = load i32, ptr %i.qy, align 4
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr i8, ptr %1, i64 %i.ra
  %i.rc = getelementptr i8, ptr %i.d, i64 32
  %i.rd = load i64, ptr %i.rc, align 8
  %i.re = trunc i64 %i.rd to i32
  %i.rf = load i8, ptr %i.rb, align 1
  %i.rg = zext i8 %i.rf to i32
  %i.rh = and i32 %i.rg, %i.re
  %i.ri = icmp ne i32 %i.rh, 0
  br label %filter_pred_u8.exit.i

filter_pred_u8.exit.i:                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be
  %.0.shrunk.i82.i = phi i1 [ %i.ri, %bb.bj ], [ %11, %bb.bf ], [ %13, %bb.bg ], [ %15, %bb.bh ], [ %17, %bb.bi ], [ false, %bb.be ]
  %.0.i83.i = zext i1 %.0.shrunk.i82.i to i32
  br label %filter_pred_fn_call.exit

bb.bk:                                            ; preds = %.lr.ph
  %i.rj = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.rk = getelementptr i8, ptr %i.rj, i64 264
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #19, !srcloc !32
  %i.rn = inttoptr i64 %i.rm to ptr
  %i.ro = getelementptr i8, ptr %i.rn, i64 2008
  %i.rp = tail call i32 %i.rl(ptr noundef %i.ro, ptr noundef %i.rj, i32 noundef 16) #20, !inline_history !24
  %i.rq = getelementptr i8, ptr %i.d, i64 56
  %i.rr = load i32, ptr %i.rq, align 8
  %i.rs = xor i32 %i.rr, %i.rp
  br label %filter_pred_fn_call.exit

bb.bl:                                            ; preds = %.lr.ph
  %i.rt = getelementptr i8, ptr %i.d, i64 52
  %i.ru = load i32, ptr %i.rt, align 4
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr i8, ptr %1, i64 %i.rv
  %i.rx = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ry = getelementptr i8, ptr %i.rx, i64 264
  %i.rz = load ptr, ptr %i.ry, align 8
  %i.sa = getelementptr i8, ptr %i.rx, i64 260
  %i.sb = load i32, ptr %i.sa, align 4
  %i.sc = tail call i32 %i.rz(ptr noundef %i.rw, ptr noundef %i.rx, i32 noundef %i.sb) #20, !inline_history !25
  %i.sd = getelementptr i8, ptr %i.d, i64 56
  %i.se = load i32, ptr %i.sd, align 8
  %i.sf = xor i32 %i.se, %i.sc
  br label %filter_pred_fn_call.exit

bb.bm:                                            ; preds = %.lr.ph
  %i.sg = getelementptr i8, ptr %i.d, i64 52
  %i.sh = load i32, ptr %i.sg, align 4
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr i8, ptr %1, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4            ; 2 uses
  %i.sl = and i32 %i.sk, 65535
  %i.sm = lshr i32 %i.sk, 16
  %i.sn = zext nneg i32 %i.sl to i64
  %i.so = getelementptr i8, ptr %1, i64 %i.sn
  %i.sp = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.sq = getelementptr i8, ptr %i.sp, i64 264
  %i.sr = load ptr, ptr %i.sq, align 8
  %i.ss = tail call i32 %i.sr(ptr noundef %i.so, ptr noundef %i.sp, i32 noundef %i.sm) #20, !inline_history !26
  %i.st = getelementptr i8, ptr %i.d, i64 56
  %i.su = load i32, ptr %i.st, align 8
  %i.sv = xor i32 %i.su, %i.ss
  br label %filter_pred_fn_call.exit

bb.bn:                                            ; preds = %.lr.ph
  %i.sw = getelementptr i8, ptr %i.d, i64 52
  %i.sx = load i32, ptr %i.sw, align 4
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr i8, ptr %1, i64 %i.sy     ; 2 uses
  %i.ta = load i32, ptr %i.sz, align 4            ; 2 uses
  %i.tb = and i32 %i.ta, 65535
  %i.tc = lshr i32 %i.ta, 16
  %i.td = getelementptr i8, ptr %i.sz, i64 4
  %i.te = zext nneg i32 %i.tb to i64
  %i.tf = getelementptr i8, ptr %i.td, i64 %i.te
  %i.tg = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.th = getelementptr i8, ptr %i.tg, i64 264
  %i.ti = load ptr, ptr %i.th, align 8
  %i.tj = tail call i32 %i.ti(ptr noundef %i.tf, ptr noundef %i.tg, i32 noundef %i.tc) #20, !inline_history !27
  %i.tk = getelementptr i8, ptr %i.d, i64 56
  %i.tl = load i32, ptr %i.tk, align 8
  %i.tm = xor i32 %i.tl, %i.tj
  br label %filter_pred_fn_call.exit

bb.bo:                                            ; preds = %.lr.ph
  %i.tn = load ptr, ptr @ustring_per_cpu, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.tn, null
  br i1 %.not.i.i.i, label %filter_pred_fn_call.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.to = getelementptr i8, ptr %i.d, i64 52
  %i.tp = load i32, ptr %i.to, align 4
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr i8, ptr %1, i64 %i.tq
  %i.ts = load ptr, ptr %i.tr, align 8
  %i.tt = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #21, !srcloc !33
  %i.tu = ptrtoint ptr %i.tn to i64
  %i.tv = add i64 %i.tt, %i.tu                    ; 2 uses
  %i.tw = inttoptr i64 %i.tv to ptr               ; 3 uses
  %i.tx = tail call i64 @strncpy_from_user_nofault(ptr noundef %i.tw, ptr noundef %i.ts, i64 noundef 1024) #20
  %i.ty = icmp slt i64 %i.tx, 0
  %.not.i84.i = icmp eq i64 %i.tv, 0
  %or.cond.i.i = or i1 %i.ty, %.not.i84.i
  br i1 %or.cond.i.i, label %filter_pred_fn_call.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.tz = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.tw) #20
  %i.ua = trunc i64 %i.tz to i32
  %i.ub = add i32 %i.ua, 1
  %i.uc = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ud = getelementptr i8, ptr %i.uc, i64 264
  %i.ue = load ptr, ptr %i.ud, align 8
  %i.uf = tail call i32 %i.ue(ptr noundef nonnull %i.tw, ptr noundef %i.uc, i32 noundef %i.ub) #20, !inline_history !28
  %i.ug = getelementptr i8, ptr %i.d, i64 56
  %i.uh = load i32, ptr %i.ug, align 8
  %i.ui = xor i32 %i.uh, %i.uf
  br label %filter_pred_fn_call.exit

bb.br:                                            ; preds = %.lr.ph
  %i.uj = load ptr, ptr @ustring_per_cpu, align 8 ; 2 uses
  %.not.i.i86.i = icmp eq ptr %i.uj, null
  br i1 %.not.i.i86.i, label %filter_pred_fn_call.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.uk = getelementptr i8, ptr %i.d, i64 52
  %i.ul = load i32, ptr %i.uk, align 4
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr i8, ptr %1, i64 %i.um
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #21, !srcloc !34
  %i.uq = ptrtoint ptr %i.uj to i64
  %i.ur = add i64 %i.up, %i.uq                    ; 2 uses
  %i.us = inttoptr i64 %i.ur to ptr               ; 3 uses
  %i.ut = tail call i64 @strncpy_from_kernel_nofault(ptr noundef %i.us, ptr noundef %i.uo, i64 noundef 1024) #20
  %i.uu = icmp slt i64 %i.ut, 0
  %.not.i87.i = icmp eq i64 %i.ur, 0
  %or.cond.i88.i = or i1 %i.uu, %.not.i87.i
  br i1 %or.cond.i88.i, label %filter_pred_fn_call.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.uv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.us) #20
  %i.uw = trunc i64 %i.uv to i32
  %i.ux = add i32 %i.uw, 1
  %i.uy = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.uz = getelementptr i8, ptr %i.uy, i64 264
  %i.va = load ptr, ptr %i.uz, align 8
  %i.vb = tail call i32 %i.va(ptr noundef nonnull %i.us, ptr noundef %i.uy, i32 noundef %i.ux) #20, !inline_history !29
  %i.vc = getelementptr i8, ptr %i.d, i64 56
  %i.vd = load i32, ptr %i.vc, align 8
  %i.ve = xor i32 %i.vd, %i.vb
  br label %filter_pred_fn_call.exit

bb.bu:                                            ; preds = %.lr.ph
  %i.vf = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #18, !srcloc !35 ; 6 uses
  %i.vg = getelementptr i8, ptr %i.d, i64 32
  %i.vh = load i64, ptr %i.vg, align 8
  %i.vi = trunc i64 %i.vh to i32                  ; 6 uses
  %i.vj = getelementptr i8, ptr %i.d, i64 60
  %i.vk = load i32, ptr %i.vj, align 4
  switch i32 %i.vk, label %filter_pred_cpu.exit.i [
    i32 2, label %bb.bv
    i32 1, label %bb.bw
    i32 4, label %bb.bx
    i32 3, label %bb.by
    i32 6, label %bb.bz
    i32 5, label %bb.ca
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.vl = icmp eq i32 %i.vf, %i.vi
  br label %filter_pred_cpu.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.vm = icmp ne i32 %i.vf, %i.vi
  br label %filter_pred_cpu.exit.i

bb.bx:                                            ; preds = %bb.bu
  %i.vn = icmp slt i32 %i.vf, %i.vi
  br label %filter_pred_cpu.exit.i

bb.by:                                            ; preds = %bb.bu
  %i.vo = icmp sle i32 %i.vf, %i.vi
  br label %filter_pred_cpu.exit.i

bb.bz:                                            ; preds = %bb.bu
  %i.vp = icmp sgt i32 %i.vf, %i.vi
  br label %filter_pred_cpu.exit.i

bb.ca:                                            ; preds = %bb.bu
  %i.vq = icmp sge i32 %i.vf, %i.vi
  br label %filter_pred_cpu.exit.i

filter_pred_cpu.exit.i:                           ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %.0.shrunk.i90.i = phi i1 [ %i.vq, %bb.ca ], [ %i.vl, %bb.bv ], [ %i.vm, %bb.bw ], [ %i.vn, %bb.bx ], [ %i.vo, %bb.by ], [ %i.vp, %bb.bz ], [ false, %bb.bu ]
  %.0.i91.i = zext i1 %.0.shrunk.i90.i to i32
  br label %filter_pred_fn_call.exit

bb.cb:                                            ; preds = %.lr.ph
  %i.vr = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #18, !srcloc !36
  %i.vs = getelementptr i8, ptr %i.d, i64 60
  %i.vt = load i32, ptr %i.vs, align 4            ; 2 uses
  switch i32 %i.vt, label %bb.cc [
    i32 7, label %arch_test_bit.exit.i.i92.i
    i32 1, label %filter_pred_fn_call.exit
  ]

arch_test_bit.exit.i.i92.i:                       ; preds = %bb.cb
  %i.vu = getelementptr i8, ptr %i.d, i64 8
  %i.vv = load ptr, ptr %i.vu, align 8
  %i.vw = zext i32 %i.vr to i64
  %i.vx = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.vv, i64 range(i64 0, 4294967296) %i.vw) #18, !srcloc !31 ; 2 uses
  %i.vy = icmp ult i8 %i.vx, 2
  tail call void @llvm.assume(i1 %i.vy)
end_hunk_0
