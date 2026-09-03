Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/calch?download=true
inline.NumInlined: 87
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z10calc_h_posiPA3_fS0_Pi:bb.a
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.mb, ptr %i.mc, align 4, !tbaa !19
  %i.md = load float, ptr %i.gd, align 4, !tbaa !19
  %i.me = fpext float %i.md to double
  %i.mf = fpext float %i.hz to double             ; 2 uses
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.mf, double f0xBFB62B9586AD0A23, double %i.me)
  %i.mh = fpext float %i.hk to double             ; 2 uses
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.mh, double f0x3FA9999999999997, double %i.mg)
  %i.mj = fptrunc double %i.mi to float
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.mj, ptr %i.mk, align 4, !tbaa !19
  %i.ml = load float, ptr %i.gd, align 4, !tbaa !19
  %i.mm = fpext float %i.ml to double
  %i.mn = tail call double @llvm.fmuladd.f64(double %i.mf, double f0x3FB62B9586AD0A23, double %i.mm)
  %i.mo = tail call double @llvm.fmuladd.f64(double %i.mh, double f0x3FA9999999999997, double %i.mn)
  %i.mp = fptrunc double %i.mo to float
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.mp, ptr %i.mq, align 4, !tbaa !19
  br label %.loopexit

bb.c:                                             ; preds = %.preheader230
  %i.mr = load float, ptr %i.km, align 4, !tbaa !19
  %i.ms = fcmp une float %i.mr, -4.092030e+05
  br i1 %i.ms, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.mt = load float, ptr %i.kn, align 4, !tbaa !19
  %i.mu = fcmp une float %i.mt, -4.092030e+05
  br i1 %i.mu, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.mv = load float, ptr %1, align 4, !tbaa !19
  %i.mw = fpext float %i.mv to double
  %i.mx = tail call double @llvm.fmuladd.f64(double %i.kp, double f0xBFA822CB17FF2EB8, double %i.mw)
  %i.my = tail call double @llvm.fmuladd.f64(double %i.kx, double f0xBFB4E6FDECF1A3EA, double %i.mx)
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.kr, double f0x3FA1111111111112, double %i.my)
  %i.na = fptrunc double %i.mz to float           ; 2 uses
  store float %i.na, ptr %i.kl, align 4, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %.preheader230, %bb.c, %bb.d, %bb.e
  %i.nb = phi float [ -4.092030e+05, %.preheader230 ], [ %i.lb, %bb.c ], [ %i.lb, %bb.d ], [ %i.na, %bb.e ]
  %i.nc = load float, ptr %i.gb, align 4, !tbaa !19
  %i.nd = fpext float %i.nc to double
  %i.ne = fpext float %i.hw to double             ; 3 uses
  %i.nf = tail call double @llvm.fmuladd.f64(double %i.ne, double f0x3FB822CB17FF2EB8, double %i.nd)
  %i.ng = fpext float %i.hh to double             ; 3 uses
  %i.nh = tail call double @llvm.fmuladd.f64(double %i.ng, double f0x3FA1111111111112, double %i.nf)
  %i.ni = fptrunc double %i.nh to float
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.ni, ptr %i.nj, align 4, !tbaa !19
  %i.nk = load float, ptr %i.gb, align 4, !tbaa !19
  %i.nl = fpext float %i.nk to double
  %i.nm = tail call double @llvm.fmuladd.f64(double %i.ne, double f0xBFA822CB17FF2EB8, double %i.nl)
  %i.nn = fpext float %i.hp to double             ; 2 uses
  %i.no = tail call double @llvm.fmuladd.f64(double %i.nn, double f0x3FB4E6FDECF1A3EA, double %i.nm)
  %i.np = tail call double @llvm.fmuladd.f64(double %i.ng, double f0x3FA1111111111112, double %i.no)
  %i.nq = fptrunc double %i.np to float
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.nq, ptr %i.nr, align 4, !tbaa !19
  %i.ns = fcmp une float %i.nb, -4.092030e+05     ; 2 uses
  br i1 %i.ns, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.nt = load float, ptr %i.km, align 4, !tbaa !19
  %i.nu = fcmp une float %i.nt, -4.092030e+05
  br i1 %i.nu, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.nv = load float, ptr %i.kn, align 4, !tbaa !19
  %i.nw = fcmp une float %i.nv, -4.092030e+05
  br i1 %i.nw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.nx = load float, ptr %i.gb, align 4, !tbaa !19
  %i.ny = fpext float %i.nx to double
  %i.nz = tail call double @llvm.fmuladd.f64(double %i.ne, double f0xBFA822CB17FF2EB8, double %i.ny)
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.nn, double f0xBFB4E6FDECF1A3EA, double %i.nz)
  %i.ob = tail call double @llvm.fmuladd.f64(double %i.ng, double f0x3FA1111111111112, double %i.oa)
  %i.oc = fptrunc double %i.ob to float
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.oc, ptr %i.od, align 4, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.oe = load float, ptr %i.gd, align 4, !tbaa !19
  %i.of = fpext float %i.oe to double
  %i.og = fpext float %i.hz to double             ; 3 uses
  %i.oh = tail call double @llvm.fmuladd.f64(double %i.og, double f0x3FB822CB17FF2EB8, double %i.of)
  %i.oi = fpext float %i.hk to double             ; 3 uses
  %i.oj = tail call double @llvm.fmuladd.f64(double %i.oi, double f0x3FA1111111111112, double %i.oh)
  %i.ok = fptrunc double %i.oj to float
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ok, ptr %i.ol, align 4, !tbaa !19
  %i.om = load float, ptr %i.gd, align 4, !tbaa !19
  %i.on = fpext float %i.om to double
  %i.oo = tail call double @llvm.fmuladd.f64(double %i.og, double f0xBFA822CB17FF2EB8, double %i.on)
  %i.op = fpext float %i.hq to double             ; 2 uses
  %i.oq = tail call double @llvm.fmuladd.f64(double %i.op, double f0x3FB4E6FDECF1A3EA, double %i.oo)
  %i.or = tail call double @llvm.fmuladd.f64(double %i.oi, double f0x3FA1111111111112, double %i.oq)
  %i.os = fptrunc double %i.or to float
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.os, ptr %i.ot, align 4, !tbaa !19
  br i1 %i.ns, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ou = load float, ptr %i.km, align 4, !tbaa !19
  %i.ov = fcmp une float %i.ou, -4.092030e+05
  br i1 %i.ov, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ow = load float, ptr %i.kn, align 4, !tbaa !19
  %i.ox = fcmp une float %i.ow, -4.092030e+05
  br i1 %i.ox, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.oy = load float, ptr %i.gd, align 4, !tbaa !19
  %i.oz = fpext float %i.oy to double
  %i.pa = tail call double @llvm.fmuladd.f64(double %i.og, double f0xBFA822CB17FF2EB8, double %i.oz)
  %i.pb = tail call double @llvm.fmuladd.f64(double %i.op, double f0xBFB4E6FDECF1A3EA, double %i.pa)
  %i.pc = tail call double @llvm.fmuladd.f64(double %i.oi, double f0x3FA1111111111112, double %i.pb)
  %i.pd = fptrunc double %i.pc to float
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.pd, ptr %i.pe, align 4, !tbaa !19
  br label %.loopexit

bb.n:                                             ; preds = %._crit_edge369, %bb.b
  %i.pf = phi float [ %.pre374, %._crit_edge369 ], [ %i.fv, %bb.b ] ; 2 uses
  %i.pg = phi float [ %.pre373, %._crit_edge369 ], [ %i.fx, %bb.b ]
  %i.ph = phi float [ %.pre371, %._crit_edge369 ], [ %i.fu, %bb.b ]
  %i.pi = phi <2 x float> [ %i.bl, %._crit_edge369 ], [ %i.gf, %bb.b ]
  %i.pj = phi <2 x float> [ %i.bj, %._crit_edge369 ], [ %i.ge, %bb.b ]
  %i.pk = phi <2 x float> [ %i.bk, %._crit_edge369 ], [ %i.gj, %bb.b ]
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.pm = fadd float %i.ph, %i.pg
  %i.pn = load float, ptr %i.pl, align 4, !tbaa !19
  %i.po = fadd float %i.pm, %i.pn
  %i.pp = fdiv float %i.po, 3.000000e+00
  %i.pq = fsub float %i.pf, %i.pp                 ; 3 uses
  %i.pr = fadd <2 x float> %i.pj, %i.pk
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pv = fpext float %i.pf to double
  %i.pw = fpext float %i.pq to double
  %i.px = fmul double %i.pw, 1.000000e-01
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.pz = load <2 x float>, ptr %i.ps, align 4, !tbaa !19
  %i.qa = fadd <2 x float> %i.pr, %i.pz
  %i.qb = fdiv <2 x float> %i.qa, splat (float 3.000000e+00)
  %i.qc = fsub <2 x float> %i.pi, %i.qb           ; 4 uses
  %foldExtExtBinop446 = fmul <2 x float> %i.qc, %i.qc
  %i.qd = extractelement <2 x float> %foldExtExtBinop446, i64 0
  %i.qe = tail call float @llvm.fmuladd.f32(float %i.pq, float %i.pq, float %i.qd)
  %i.qf = extractelement <2 x float> %i.qc, i64 1 ; 2 uses
  %i.qg = tail call noundef float @llvm.fmuladd.f32(float %i.qf, float %i.qf, float %i.qe)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.qg)
  %i.qh = fpext float %sqrt.i to double           ; 2 uses
  %i.qi = fdiv double %i.px, %i.qh
  %i.qj = fadd double %i.qi, %i.pv
  %i.qk = fptrunc double %i.qj to float
  store float %i.qk, ptr %2, align 4, !tbaa !19
  %i.ql = load float, ptr %i.pt, align 4, !tbaa !19
  %i.qm = fpext float %i.ql to double
  %i.qn = fpext <2 x float> %i.qc to <2 x double>
  %i.qo = fmul <2 x double> %i.qn, splat (double 1.000000e-01)
  %i.qp = insertelement <2 x double> poison, double %i.qh, i64 0
  %i.qq = shufflevector <2 x double> %i.qp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qr = fdiv <2 x double> %i.qo, %i.qq          ; 2 uses
  %i.qs = extractelement <2 x double> %i.qr, i64 0
  %i.qt = fadd double %i.qs, %i.qm
  %i.qu = fptrunc double %i.qt to float
  store float %i.qu, ptr %i.py, align 4, !tbaa !19
  %i.qv = load float, ptr %i.pu, align 4, !tbaa !19
  %i.qw = fpext float %i.qv to double
  %i.qx = extractelement <2 x double> %i.qr, i64 1
  %i.qy = fadd double %i.qx, %i.qw
  %i.qz = fptrunc double %i.qy to float
  %i.ra = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.qz, ptr %i.ra, align 4, !tbaa !19
  br label %.loopexit

bb.o:                                             ; preds = %._crit_edge348, %bb.b
  %.pre-phi432 = phi float [ %.pre431, %._crit_edge348 ], [ %i.gq, %bb.b ] ; 4 uses
  %.pre-phi430 = phi float [ %.pre429, %._crit_edge348 ], [ %i.gi, %bb.b ] ; 4 uses
  %.pre-phi428 = phi float [ %.pre427, %._crit_edge348 ], [ %i.fw, %bb.b ] ; 4 uses
  %i.rb = phi float [ %.pre368, %._crit_edge348 ], [ %i.gr, %bb.b ] ; 4 uses
  %i.rc = phi float [ %.pre365, %._crit_edge348 ], [ %i.gp, %bb.b ] ; 2 uses
  %i.rd = phi float [ %.pre362, %._crit_edge348 ], [ %i.go, %bb.b ] ; 4 uses
  %i.re = phi float [ %.pre360, %._crit_edge348 ], [ %i.gk, %bb.b ] ; 4 uses
  %i.rf = phi float [ %.pre357, %._crit_edge348 ], [ %i.gh, %bb.b ] ; 2 uses
  %i.rg = phi float [ %.pre354, %._crit_edge348 ], [ %i.gg, %bb.b ] ; 4 uses
  %i.rh = phi float [ %.pre352, %._crit_edge348 ], [ %i.fx, %bb.b ] ; 4 uses
  %i.ri = phi float [ %.pre350, %._crit_edge348 ], [ %i.fu, %bb.b ] ; 2 uses
  %i.rj = phi float [ %.pre349, %._crit_edge348 ], [ %i.fv, %bb.b ] ; 4 uses
  %i.rk = add i64 %i.b, 24
  %i.rl = add i64 %i.a, 12
  %rt.bound0 = icmp ugt i64 %i.rl, %i.b
  %rt.bound1 = icmp ugt i64 %i.rk, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

bb.p:                                             ; preds = %._crit_edge346, %bb.b
  %i.rm = phi float [ %.pre347, %._crit_edge346 ], [ %i.fv, %bb.b ]
  %i.rn = load i32, ptr %3, align 4, !tbaa !20    ; 2 uses
  %i.ro = sext i32 %i.rn to i64                   ; 2 uses
  %i.rp = getelementptr inbounds [24 x i8], ptr @__const._ZL17gen_waterhydrogeniPA3_fS0_Pi.matrix1, i64 %i.ro ; 3 uses
  %i.rq = getelementptr inbounds [24 x i8], ptr @__const._ZL17gen_waterhydrogeniPA3_fS0_Pi.matrix2, i64 %i.ro ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.rs = fpext float %i.rm to double
  %i.rt = load double, ptr %i.rp, align 8, !tbaa !22
  %i.ru = fadd double %i.rt, %i.rs
  %i.rv = fptrunc double %i.ru to float
  store float %i.rv, ptr %2, align 4, !tbaa !19
  %i.rw = load float, ptr %1, align 4, !tbaa !19
  %i.rx = fpext float %i.rw to double
  %i.ry = load double, ptr %i.rq, align 8, !tbaa !22
  %i.rz = fadd double %i.ry, %i.rx
  %i.sa = fptrunc double %i.rz to float
  store float %i.sa, ptr %i.rr, align 4, !tbaa !19
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !19
  %i.sd = fpext float %i.sc to double
  %i.se = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.sf = load double, ptr %i.se, align 8, !tbaa !22
  %i.sg = fadd double %i.sf, %i.sd
  %i.sh = fptrunc double %i.sg to float
  %i.si = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.sh, ptr %i.si, align 4, !tbaa !19
  %i.sj = load float, ptr %i.sb, align 4, !tbaa !19
  %i.sk = fpext float %i.sj to double
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !22
  %i.sn = fadd double %i.sm, %i.sk
  %i.so = fptrunc double %i.sn to float
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.so, ptr %i.sp, align 4, !tbaa !19
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !19
  %i.ss = fpext float %i.sr to double
  %i.st = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.su = load double, ptr %i.st, align 8, !tbaa !22
  %i.sv = fadd double %i.su, %i.ss
  %i.sw = fptrunc double %i.sv to float
  %i.sx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.sw, ptr %i.sx, align 4, !tbaa !19
  %i.sy = load float, ptr %i.sq, align 4, !tbaa !19
  %i.sz = fpext float %i.sy to double
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !22
  %i.tc = fadd double %i.tb, %i.sz
  %i.td = fptrunc double %i.tc to float
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.td, ptr %i.te, align 4, !tbaa !19
  %i.tf = add nsw i32 %i.rn, 1
  %i.tg = srem i32 %i.tf, 6
  store i32 %i.tg, ptr %3, align 4, !tbaa !20
  br label %.loopexit

bb.q:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.th = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ti = fpext float %i.fv to double
  %i.tj = fpext float %i.ht to double             ; 2 uses
  %i.tk = tail call double @llvm.fmuladd.f64(double %i.tj, double f0xBFBAFD905B6AC657, double %i.ti)
  %i.tl = fpext float %i.hf to double             ; 2 uses
  %i.tm = tail call double @llvm.fmuladd.f64(double %i.tl, double f0x3FB037AF519DA643, double %i.tk)
  %i.tn = fptrunc double %i.tm to float
  store float %i.tn, ptr %2, align 4, !tbaa !19
  %i.to = load float, ptr %1, align 4, !tbaa !19
  %i.tp = fpext float %i.to to double
  %i.tq = tail call double @llvm.fmuladd.f64(double %i.tj, double f0x3FBD0079302DD768, double %i.tp)
  %i.tr = tail call double @llvm.fmuladd.f64(double %i.tl, double f0x3FAB0C2D77379851, double %i.tq)
  %i.ts = fptrunc double %i.tr to float           ; 2 uses
  store float %i.ts, ptr %i.th, align 4, !tbaa !19
  %i.tt = load float, ptr %i.gb, align 4, !tbaa !19
  %i.tu = fpext float %i.tt to double
  %i.tv = fpext float %i.hw to double             ; 2 uses
  %i.tw = tail call double @llvm.fmuladd.f64(double %i.tv, double f0xBFBAFD905B6AC657, double %i.tu)
  %i.tx = fpext float %i.hh to double             ; 2 uses
  %i.ty = tail call double @llvm.fmuladd.f64(double %i.tx, double f0x3FB037AF519DA643, double %i.tw)
  %i.tz = fptrunc double %i.ty to float
  %i.ua = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.tz, ptr %i.ua, align 4, !tbaa !19
  %i.ub = load float, ptr %i.gb, align 4, !tbaa !19
  %i.uc = fpext float %i.ub to double
  %i.ud = tail call double @llvm.fmuladd.f64(double %i.tv, double f0x3FBD0079302DD768, double %i.uc)
  %i.ue = tail call double @llvm.fmuladd.f64(double %i.tx, double f0x3FAB0C2D77379851, double %i.ud)
  %i.uf = fptrunc double %i.ue to float           ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.uf, ptr %i.ug, align 4, !tbaa !19
  %i.uh = load float, ptr %i.gd, align 4, !tbaa !19
  %i.ui = fpext float %i.uh to double
  %i.uj = fpext float %i.hz to double             ; 2 uses
  %i.uk = tail call double @llvm.fmuladd.f64(double %i.uj, double f0xBFBAFD905B6AC657, double %i.ui)
  %i.ul = fpext float %i.hk to double             ; 2 uses
  %i.um = tail call double @llvm.fmuladd.f64(double %i.ul, double f0x3FB037AF519DA643, double %i.uk)
  %i.un = fptrunc double %i.um to float
  %i.uo = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.un, ptr %i.uo, align 4, !tbaa !19
  %i.up = load float, ptr %i.gd, align 4, !tbaa !19
  %i.uq = fpext float %i.up to double
  %i.ur = tail call double @llvm.fmuladd.f64(double %i.uj, double f0x3FBD0079302DD768, double %i.uq)
  %i.us = tail call double @llvm.fmuladd.f64(double %i.ul, double f0x3FAB0C2D77379851, double %i.ur)
  %i.ut = fptrunc double %i.us to float           ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.ut, ptr %i.uu, align 4, !tbaa !19
  store float %i.ts, ptr %i.c, align 16, !tbaa !19
  %i.uv = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store float %i.uf, ptr %i.uv, align 4, !tbaa !19
  %i.uw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.ut, ptr %i.uw, align 8, !tbaa !19
  %i.ux = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.uy = load <8 x float>, ptr %1, align 4, !tbaa !19
  store <8 x float> %i.uy, ptr %i.ux, align 4, !tbaa !19
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.va = load float, ptr %i.uz, align 4, !tbaa !19
  %i.vb = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store float %i.va, ptr %i.vb, align 4, !tbaa !19
  %i.vc = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_Z10calc_h_posiPA3_fS0_Pi(i32 noundef 2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.vc, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %.loopexit

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(68) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 279, ptr noundef nonnull @.str.1, i32 noundef %0) #11
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.vd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  resume { ptr, i32 } %i.vd

.loopexit:                                        ; preds = %.rtvec, %.rtscalar, %bb.j, %bb.k, %bb.l, %bb.m, %.preheader232, %.preheader228, %.preheader.preheader, %..loopexit.loopexit_crit_edge, %bb.q, %._crit_edge, %._crit_edge344, %bb.p, %bb.n
  ret void

.rtvec:                                           ; preds = %bb.o
  %i.ve = fadd float %i.ri, %i.rh
  %i.vf = fpext float %i.ve to double
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.vh = fpext float %i.rg to double
  %i.vi = fadd float %i.rf, %i.re
  %i.vj = fpext float %i.vi to double
  %i.vk = tail call double @llvm.fmuladd.f64(double %i.vj, double -5.000000e-01, double %i.vh)
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vm = fpext float %i.rd to double
  %i.vn = fadd float %i.rc, %i.rb
  %i.vo = fpext float %i.vn to double
  %i.vp = tail call double @llvm.fmuladd.f64(double %i.vo, double -5.000000e-01, double %i.vm)
  %i.vq = fsub float %i.rj, %i.rh                 ; 2 uses
  %i.vr = fsub float %i.rg, %i.re                 ; 2 uses
  %i.vs = fsub float %i.rd, %i.rb                 ; 2 uses
  %i.vt = fneg float %i.vr
  %i.vu = fmul float %.pre-phi432, %i.vt
  %i.vv = fneg float %i.vs
  %i.vw = fmul float %.pre-phi428, %i.vv
  %i.vx = fneg float %i.vq
  %i.vy = fmul float %.pre-phi430, %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.wa = load float, ptr %i.vl, align 4, !tbaa !19
  %i.wb = load <2 x float>, ptr %1, align 4, !tbaa !19
  %i.wc = shufflevector <2 x float> %i.wb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 0>
  %i.wd = insertelement <4 x float> %i.wc, float %i.rj, i64 0
  %i.we = insertelement <4 x float> %i.wd, float %i.wa, i64 2
  %i.wf = fpext <4 x float> %i.we to <4 x double> ; 2 uses
  %i.wg = extractelement <4 x double> %i.wf, i64 0
  %i.wh = tail call double @llvm.fmuladd.f64(double %i.vf, double -5.000000e-01, double %i.wg)
  %i.wi = fptrunc double %i.wh to float           ; 3 uses
  %i.wj = fptrunc double %i.vk to float           ; 3 uses
  %i.wk = fptrunc double %i.vp to float           ; 3 uses
  %i.wl = tail call float @llvm.fmuladd.f32(float %.pre-phi430, float %i.vs, float %i.vu) ; 3 uses
  %i.wm = tail call float @llvm.fmuladd.f32(float %.pre-phi432, float %i.vq, float %i.vw) ; 3 uses
  %i.wn = tail call float @llvm.fmuladd.f32(float %.pre-phi428, float %i.vr, float %i.vy) ; 3 uses
  %i.wo = fmul float %i.wm, %i.wm
  %i.wp = fmul float %i.wj, %i.wj
  %i.wq = tail call float @llvm.fmuladd.f32(float %i.wl, float %i.wl, float %i.wo)
  %i.wr = tail call float @llvm.fmuladd.f32(float %i.wi, float %i.wi, float %i.wp)
  %i.ws = tail call noundef float @llvm.fmuladd.f32(float %i.wn, float %i.wn, float %i.wq)
  %i.wt = tail call noundef float @llvm.fmuladd.f32(float %i.wk, float %i.wk, float %i.wr)
  %i.wu = insertelement <2 x float> poison, float %i.wt, i64 0
  %i.wv = insertelement <2 x float> %i.wu, float %i.ws, i64 1
  %i.ww = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.wv)
  %i.wx = fpext <2 x float> %i.ww to <2 x double> ; 3 uses
  %i.wy = fpext float %i.wl to double
  %i.wz = fpext float %i.wj to double
  %i.xa = insertelement <2 x float> poison, float %i.wi, i64 0
  %i.xb = insertelement <2 x float> %i.xa, float %i.wm, i64 1
  %i.xc = fpext <2 x float> %i.xb to <2 x double>
  %i.xd = fmul <2 x double> %i.xc, <double f0x3FE279A74590331C, double f0x3FEA20BD700C2C3E>
  %i.xe = fdiv <2 x double> %i.xd, %i.wx          ; 2 uses
  %i.xf = fpext float %i.wn to double
  %i.xg = insertelement <4 x double> <double poison, double poison, double poison, double 1.000000e+00>, double %i.wy, i64 0
  %i.xh = insertelement <4 x double> %i.xg, double %i.wz, i64 1
  %i.xi = insertelement <4 x double> %i.xh, double %i.xf, i64 2
  %i.xj = fmul <4 x double> %i.xi, <double f0x3FEA20BD700C2C3E, double f0x3FE279A74590331C, double f0x3FEA20BD700C2C3E, double -0.000000e+00>
  %i.xk = shufflevector <2 x double> %i.wx, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.xl = insertelement <4 x double> %i.xk, double 1.000000e+00, i64 3
  %i.xm = fdiv <4 x double> %i.xj, %i.xl          ; 4 uses
  %i.xn = extractelement <4 x double> %i.xm, i64 0
  %i.xo = extractelement <2 x double> %i.xe, i64 0
  %i.xp = fsub double %i.xo, %i.xn
  %i.xq = fpext float %i.wk to double
  %i.xr = fmul double %i.xq, f0x3FE279A74590331C
  %i.xs = extractelement <2 x double> %i.wx, i64 0
  %i.xt = fdiv double %i.xr, %i.xs                ; 2 uses
  %i.xu = insertelement <4 x double> poison, double %i.xt, i64 2
  %i.xv = insertelement <4 x double> %i.xu, double %i.xp, i64 3
  %i.xw = shufflevector <2 x double> %i.xe, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.xx = shufflevector <4 x double> %i.xw, <4 x double> %i.xv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.xy = fadd <4 x double> %i.xx, %i.xm
  %i.xz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.xy, <4 x double> splat (double 1.000000e-01), <4 x double> %i.wf)
  %i.ya = fptrunc <4 x double> %i.xz to <4 x float>
  store <4 x float> %i.ya, ptr %2, align 4, !tbaa !19
  %i.yb = load <2 x float>, ptr %i.vg, align 4, !tbaa !19
  %i.yc = fpext <2 x float> %i.yb to <2 x double>
  %i.yd = shufflevector <4 x double> %i.xm, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ye = insertelement <2 x double> %i.yd, double %i.xt, i64 1
  %i.yf = shufflevector <4 x double> %i.xw, <4 x double> %i.xm, <2 x i32> <i32 1, i32 6>
  %i.yg = fsub <2 x double> %i.ye, %i.yf
  %i.yh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yg, <2 x double> splat (double 1.000000e-01), <2 x double> %i.yc)
  %i.yi = fptrunc <2 x double> %i.yh to <2 x float>
  store <2 x float> %i.yi, ptr %i.vz, align 4, !tbaa !19
  br label %.loopexit

.rtscalar:                                        ; preds = %bb.o
  %i.yj = fpext float %i.rj to double             ; 2 uses
  %i.yk = fadd float %i.ri, %i.rh
  %i.yl = fpext float %i.yk to double
  %i.ym = tail call double @llvm.fmuladd.f64(double %i.yl, double -5.000000e-01, double %i.yj)
  %i.yn = fptrunc double %i.ym to float           ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.yp = fpext float %i.rg to double
  %i.yq = fadd float %i.rf, %i.re
  %i.yr = fpext float %i.yq to double
  %i.ys = tail call double @llvm.fmuladd.f64(double %i.yr, double -5.000000e-01, double %i.yp)
  %i.yt = fptrunc double %i.ys to float           ; 3 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.yv = fpext float %i.rd to double
  %i.yw = fadd float %i.rc, %i.rb
  %i.yx = fpext float %i.yw to double
  %i.yy = tail call double @llvm.fmuladd.f64(double %i.yx, double -5.000000e-01, double %i.yv)
  %i.yz = fptrunc double %i.yy to float           ; 3 uses
  %i.za = fmul float %i.yt, %i.yt
  %i.zb = tail call float @llvm.fmuladd.f32(float %i.yn, float %i.yn, float %i.za)
  %i.zc = tail call noundef float @llvm.fmuladd.f32(float %i.yz, float %i.yz, float %i.zb)
  %sqrt.i216.scalar = tail call noundef float @llvm.sqrt.f32(float %i.zc)
  %i.zd = fsub float %i.rj, %i.rh                 ; 2 uses
  %i.ze = fsub float %i.rg, %i.re                 ; 2 uses
  %i.zf = fsub float %i.rd, %i.rb                 ; 2 uses
  %i.zg = fneg float %i.ze
  %i.zh = fmul float %.pre-phi432, %i.zg
  %i.zi = tail call float @llvm.fmuladd.f32(float %.pre-phi430, float %i.zf, float %i.zh) ; 3 uses
  %i.zj = fneg float %i.zf
  %i.zk = fmul float %.pre-phi428, %i.zj
  %i.zl = tail call float @llvm.fmuladd.f32(float %.pre-phi432, float %i.zd, float %i.zk) ; 3 uses
  %i.zm = fneg float %i.zd
  %i.zn = fmul float %.pre-phi430, %i.zm
  %i.zo = tail call float @llvm.fmuladd.f32(float %.pre-phi428, float %i.ze, float %i.zn) ; 3 uses
  %i.zp = fmul float %i.zl, %i.zl
  %i.zq = tail call float @llvm.fmuladd.f32(float %i.zi, float %i.zi, float %i.zp)
  %i.zr = tail call noundef float @llvm.fmuladd.f32(float %i.zo, float %i.zo, float %i.zq)
  %sqrt.i217.scalar = tail call noundef float @llvm.sqrt.f32(float %i.zr)
  %i.zs = fpext float %sqrt.i216.scalar to double ; 3 uses
  %i.zt = fpext float %sqrt.i217.scalar to double ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.zv = fpext float %i.yn to double
  %i.zw = fmul double %i.zv, f0x3FE279A74590331C
  %i.zx = fdiv double %i.zw, %i.zs                ; 2 uses
  %i.zy = fpext float %i.zi to double
  %i.zz = fmul double %i.zy, f0x3FEA20BD700C2C3E
  %i.aaa = fdiv double %i.zz, %i.zt               ; 2 uses
  %i.aab = fadd double %i.zx, %i.aaa
  %i.aac = tail call double @llvm.fmuladd.f64(double %i.aab, double 1.000000e-01, double %i.yj)
  %i.aad = fptrunc double %i.aac to float
  store float %i.aad, ptr %2, align 4, !tbaa !19
  %i.aae = load float, ptr %1, align 4, !tbaa !19
  %i.aaf = fpext float %i.aae to double
  %i.aag = fsub double %i.zx, %i.aaa
  %i.aah = tail call double @llvm.fmuladd.f64(double %i.aag, double 1.000000e-01, double %i.aaf)
  %i.aai = fptrunc double %i.aah to float
  store float %i.aai, ptr %i.zu, align 4, !tbaa !19
  %i.aaj = load float, ptr %i.yo, align 4, !tbaa !19
  %i.aak = fpext float %i.aaj to double
  %i.aal = fpext float %i.yt to double
  %i.aam = fmul double %i.aal, f0x3FE279A74590331C
  %i.aan = fdiv double %i.aam, %i.zs              ; 2 uses
  %i.aao = fpext float %i.zl to double
  %i.aap = fmul double %i.aao, f0x3FEA20BD700C2C3E
  %i.aaq = fdiv double %i.aap, %i.zt              ; 2 uses
  %i.aar = fadd double %i.aan, %i.aaq
  %i.aas = tail call double @llvm.fmuladd.f64(double %i.aar, double 1.000000e-01, double %i.aak)
  %i.aat = fptrunc double %i.aas to float
  %i.aau = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.aat, ptr %i.aau, align 4, !tbaa !19
  %i.aav = load float, ptr %i.yo, align 4, !tbaa !19
  %i.aaw = fpext float %i.aav to double
  %i.aax = fsub double %i.aan, %i.aaq
  %i.aay = tail call double @llvm.fmuladd.f64(double %i.aax, double 1.000000e-01, double %i.aaw)
  %i.aaz = fptrunc double %i.aay to float
  %i.aba = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.aaz, ptr %i.aba, align 4, !tbaa !19
  %i.abb = load float, ptr %i.yu, align 4, !tbaa !19
  %i.abc = fpext float %i.abb to double
  %i.abd = fpext float %i.yz to double
  %i.abe = fmul double %i.abd, f0x3FE279A74590331C
  %i.abf = fdiv double %i.abe, %i.zs              ; 2 uses
  %i.abg = fpext float %i.zo to double
  %i.abh = fmul double %i.abg, f0x3FEA20BD700C2C3E
  %i.abi = fdiv double %i.abh, %i.zt              ; 2 uses
  %i.abj = fadd double %i.abf, %i.abi
  %i.abk = tail call double @llvm.fmuladd.f64(double %i.abj, double 1.000000e-01, double %i.abc)
  %i.abl = fptrunc double %i.abk to float
  %i.abm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.abl, ptr %i.abm, align 4, !tbaa !19
  %i.abn = load float, ptr %i.yu, align 4, !tbaa !19
  %i.abo = fpext float %i.abn to double
  %i.abp = fsub double %i.abf, %i.abi
  %i.abq = tail call double @llvm.fmuladd.f64(double %i.abp, double 1.000000e-01, double %i.abo)
  %i.abr = fptrunc double %i.abq to float
  %i.abs = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.abr, ptr %i.abs, align 4, !tbaa !19
  br label %.loopexit
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(68) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(68) %1) #10 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %i.b, ptr %i.a, align 8, !tbaa !24
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.f, ptr %i.c, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !15
  store i8 %i.h, ptr %i.g, align 1, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !25
  %i.k = load ptr, ptr %0, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #10
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !15
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #10
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !15
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !12, i64 8, !5, i64 16}
!14 = !{!13, !10, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !9, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"float", !5, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!6, !6, i64 0}
!21 = !{!"double", !5, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!11, !10, i64 0}
!24 = !{!12, !12, i64 0}
!25 = !{!13, !12, i64 8}
end_hunk_0
