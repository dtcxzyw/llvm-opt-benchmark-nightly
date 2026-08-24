Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dpm_feature?download=true
inline.NumInlined: 288
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv3dpm7Feature13computeHOG32DERKNS_3MatERS2_iii:bb.a
  store <2 x double> %i.mo, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.mp = getelementptr inbounds nuw i8, ptr %next.gep636, i64 16
  %i.mq = getelementptr i8, ptr %i.lo, i64 160
  %i.mr = load double, ptr %i.mp, align 8, !tbaa !25, !alias.scope !102
  %i.ms = load double, ptr %i.mq, align 8, !tbaa !25, !alias.scope !102
  %i.mt = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.mu = insertelement <2 x double> %i.mt, double %i.ms, i64 1
  %i.mv = getelementptr inbounds nuw i8, ptr %next.gep636, i64 88
  %i.mw = getelementptr i8, ptr %i.lo, i64 232
  %i.mx = load double, ptr %i.mv, align 8, !tbaa !25, !alias.scope !102
  %i.my = load double, ptr %i.mw, align 8, !tbaa !25, !alias.scope !102
  %i.mz = insertelement <2 x double> poison, double %i.mx, i64 0
  %i.na = insertelement <2 x double> %i.mz, double %i.my, i64 1
  %i.nb = fadd <2 x double> %i.mu, %i.na          ; 2 uses
  %i.nc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nb, <2 x double> %i.nb, <2 x double> %i.mo) ; 2 uses
  store <2 x double> %i.nc, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.nd = getelementptr inbounds nuw i8, ptr %next.gep636, i64 24
  %i.ne = getelementptr i8, ptr %i.lo, i64 168
  %i.nf = load double, ptr %i.nd, align 8, !tbaa !25, !alias.scope !102
  %i.ng = load double, ptr %i.ne, align 8, !tbaa !25, !alias.scope !102
  %i.nh = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.ni = insertelement <2 x double> %i.nh, double %i.ng, i64 1
  %i.nj = getelementptr inbounds nuw i8, ptr %next.gep636, i64 96
  %i.nk = getelementptr i8, ptr %i.lo, i64 240
  %i.nl = load double, ptr %i.nj, align 8, !tbaa !25, !alias.scope !102
  %i.nm = load double, ptr %i.nk, align 8, !tbaa !25, !alias.scope !102
  %i.nn = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.no = insertelement <2 x double> %i.nn, double %i.nm, i64 1
  %i.np = fadd <2 x double> %i.ni, %i.no          ; 2 uses
  %i.nq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.np, <2 x double> %i.nc) ; 2 uses
  store <2 x double> %i.nq, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.nr = getelementptr inbounds nuw i8, ptr %next.gep636, i64 32
  %i.ns = getelementptr i8, ptr %i.lo, i64 176
  %i.nt = load double, ptr %i.nr, align 8, !tbaa !25, !alias.scope !102
  %i.nu = load double, ptr %i.ns, align 8, !tbaa !25, !alias.scope !102
  %i.nv = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.nw = insertelement <2 x double> %i.nv, double %i.nu, i64 1
  %i.nx = getelementptr inbounds nuw i8, ptr %next.gep636, i64 104
  %i.ny = getelementptr i8, ptr %i.lo, i64 248
  %i.nz = load double, ptr %i.nx, align 8, !tbaa !25, !alias.scope !102
  %i.oa = load double, ptr %i.ny, align 8, !tbaa !25, !alias.scope !102
  %i.ob = insertelement <2 x double> poison, double %i.nz, i64 0
  %i.oc = insertelement <2 x double> %i.ob, double %i.oa, i64 1
  %i.od = fadd <2 x double> %i.nw, %i.oc          ; 2 uses
  %i.oe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.od, <2 x double> %i.od, <2 x double> %i.nq) ; 2 uses
  store <2 x double> %i.oe, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.of = getelementptr inbounds nuw i8, ptr %next.gep636, i64 40
  %i.og = getelementptr i8, ptr %i.lo, i64 184
  %i.oh = load double, ptr %i.of, align 8, !tbaa !25, !alias.scope !102
  %i.oi = load double, ptr %i.og, align 8, !tbaa !25, !alias.scope !102
  %i.oj = insertelement <2 x double> poison, double %i.oh, i64 0
  %i.ok = insertelement <2 x double> %i.oj, double %i.oi, i64 1
  %i.ol = getelementptr inbounds nuw i8, ptr %next.gep636, i64 112
  %i.om = getelementptr i8, ptr %i.lo, i64 256
  %i.on = load double, ptr %i.ol, align 8, !tbaa !25, !alias.scope !102
  %i.oo = load double, ptr %i.om, align 8, !tbaa !25, !alias.scope !102
  %i.op = insertelement <2 x double> poison, double %i.on, i64 0
  %i.oq = insertelement <2 x double> %i.op, double %i.oo, i64 1
  %i.or = fadd <2 x double> %i.ok, %i.oq          ; 2 uses
  %i.os = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.or, <2 x double> %i.or, <2 x double> %i.oe) ; 2 uses
  store <2 x double> %i.os, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.ot = getelementptr inbounds nuw i8, ptr %next.gep636, i64 48
  %i.ou = getelementptr i8, ptr %i.lo, i64 192
  %i.ov = load double, ptr %i.ot, align 8, !tbaa !25, !alias.scope !102
  %i.ow = load double, ptr %i.ou, align 8, !tbaa !25, !alias.scope !102
  %i.ox = insertelement <2 x double> poison, double %i.ov, i64 0
  %i.oy = insertelement <2 x double> %i.ox, double %i.ow, i64 1
  %i.oz = getelementptr inbounds nuw i8, ptr %next.gep636, i64 120
  %i.pa = getelementptr i8, ptr %i.lo, i64 264
  %i.pb = load double, ptr %i.oz, align 8, !tbaa !25, !alias.scope !102
  %i.pc = load double, ptr %i.pa, align 8, !tbaa !25, !alias.scope !102
  %i.pd = insertelement <2 x double> poison, double %i.pb, i64 0
  %i.pe = insertelement <2 x double> %i.pd, double %i.pc, i64 1
  %i.pf = fadd <2 x double> %i.oy, %i.pe          ; 2 uses
  %i.pg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pf, <2 x double> %i.pf, <2 x double> %i.os) ; 2 uses
  store <2 x double> %i.pg, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.ph = getelementptr inbounds nuw i8, ptr %next.gep636, i64 56
  %i.pi = getelementptr i8, ptr %i.lo, i64 200
  %i.pj = load double, ptr %i.ph, align 8, !tbaa !25, !alias.scope !102
  %i.pk = load double, ptr %i.pi, align 8, !tbaa !25, !alias.scope !102
  %i.pl = insertelement <2 x double> poison, double %i.pj, i64 0
  %i.pm = insertelement <2 x double> %i.pl, double %i.pk, i64 1
  %i.pn = getelementptr inbounds nuw i8, ptr %next.gep636, i64 128
  %i.po = getelementptr i8, ptr %i.lo, i64 272
  %i.pp = load double, ptr %i.pn, align 8, !tbaa !25, !alias.scope !102
  %i.pq = load double, ptr %i.po, align 8, !tbaa !25, !alias.scope !102
  %i.pr = insertelement <2 x double> poison, double %i.pp, i64 0
  %i.ps = insertelement <2 x double> %i.pr, double %i.pq, i64 1
  %i.pt = fadd <2 x double> %i.pm, %i.ps          ; 2 uses
  %i.pu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pt, <2 x double> %i.pt, <2 x double> %i.pg) ; 2 uses
  store <2 x double> %i.pu, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.pv = getelementptr inbounds nuw i8, ptr %next.gep636, i64 64
  %i.pw = getelementptr i8, ptr %i.lo, i64 208
  %i.px = load double, ptr %i.pv, align 8, !tbaa !25, !alias.scope !102
  %i.py = load double, ptr %i.pw, align 8, !tbaa !25, !alias.scope !102
  %i.pz = insertelement <2 x double> poison, double %i.px, i64 0
  %i.qa = insertelement <2 x double> %i.pz, double %i.py, i64 1
  %i.qb = getelementptr inbounds nuw i8, ptr %next.gep636, i64 136
  %i.qc = getelementptr i8, ptr %i.lo, i64 280
  %i.qd = load double, ptr %i.qb, align 8, !tbaa !25, !alias.scope !102
  %i.qe = load double, ptr %i.qc, align 8, !tbaa !25, !alias.scope !102
  %i.qf = insertelement <2 x double> poison, double %i.qd, i64 0
  %i.qg = insertelement <2 x double> %i.qf, double %i.qe, i64 1
  %i.qh = fadd <2 x double> %i.qa, %i.qg          ; 2 uses
  %i.qi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qh, <2 x double> %i.qh, <2 x double> %i.pu)
  store <2 x double> %i.qi, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.qj = icmp eq i64 %index.next, %n.vec
  br i1 %i.qj, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kq, %n.vec
  br i1 %cmp.n, label %._crit_edge510, label %.lr.ph.preheader649

.lr.ph.preheader649:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.0330508.ph = phi ptr [ %i.le, %vector.memcheck ], [ %i.le, %.lr.ph.preheader ], [ %i.lj, %middle.block ]
  %.0331507.ph = phi ptr [ %i.lh, %vector.memcheck ], [ %i.lh, %.lr.ph.preheader ], [ %i.ll, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader649, %.lr.ph
  %.0330508 = phi ptr [ %i.sl, %.lr.ph ], [ %.0330508.ph, %.lr.ph.preheader649 ] ; 11 uses
  %.0331507 = phi ptr [ %i.sm, %.lr.ph ], [ %.0331507.ph, %.lr.ph.preheader649 ] ; 19 uses
  store double 0.000000e+00, ptr %.0330508, align 8, !tbaa !25
  %i.qk = load double, ptr %.0331507, align 8, !tbaa !25
  %i.ql = getelementptr inbounds nuw i8, ptr %.0331507, i64 72
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !25
  %i.qn = fadd double %i.qk, %i.qm                ; 2 uses
  %i.qo = call double @llvm.fmuladd.f64(double %i.qn, double %i.qn, double 0.000000e+00) ; 2 uses
  store double %i.qo, ptr %.0330508, align 8, !tbaa !25
  %i.qp = getelementptr inbounds nuw i8, ptr %.0331507, i64 8
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !25
  %i.qr = getelementptr inbounds nuw i8, ptr %.0331507, i64 80
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !25
  %i.qt = fadd double %i.qq, %i.qs                ; 2 uses
  %i.qu = call double @llvm.fmuladd.f64(double %i.qt, double %i.qt, double %i.qo) ; 2 uses
  store double %i.qu, ptr %.0330508, align 8, !tbaa !25
  %i.qv = getelementptr inbounds nuw i8, ptr %.0331507, i64 16
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !25
  %i.qx = getelementptr inbounds nuw i8, ptr %.0331507, i64 88
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !25
  %i.qz = fadd double %i.qw, %i.qy                ; 2 uses
  %i.ra = call double @llvm.fmuladd.f64(double %i.qz, double %i.qz, double %i.qu) ; 2 uses
  store double %i.ra, ptr %.0330508, align 8, !tbaa !25
  %i.rb = getelementptr inbounds nuw i8, ptr %.0331507, i64 24
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !25
  %i.rd = getelementptr inbounds nuw i8, ptr %.0331507, i64 96
  %i.re = load double, ptr %i.rd, align 8, !tbaa !25
  %i.rf = fadd double %i.rc, %i.re                ; 2 uses
  %i.rg = call double @llvm.fmuladd.f64(double %i.rf, double %i.rf, double %i.ra) ; 2 uses
  store double %i.rg, ptr %.0330508, align 8, !tbaa !25
  %i.rh = getelementptr inbounds nuw i8, ptr %.0331507, i64 32
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !25
  %i.rj = getelementptr inbounds nuw i8, ptr %.0331507, i64 104
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !25
  %i.rl = fadd double %i.ri, %i.rk                ; 2 uses
  %i.rm = call double @llvm.fmuladd.f64(double %i.rl, double %i.rl, double %i.rg) ; 2 uses
  store double %i.rm, ptr %.0330508, align 8, !tbaa !25
  %i.rn = getelementptr inbounds nuw i8, ptr %.0331507, i64 40
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !25
  %i.rp = getelementptr inbounds nuw i8, ptr %.0331507, i64 112
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !25
  %i.rr = fadd double %i.ro, %i.rq                ; 2 uses
  %i.rs = call double @llvm.fmuladd.f64(double %i.rr, double %i.rr, double %i.rm) ; 2 uses
  store double %i.rs, ptr %.0330508, align 8, !tbaa !25
  %i.rt = getelementptr inbounds nuw i8, ptr %.0331507, i64 48
  %i.ru = load double, ptr %i.rt, align 8, !tbaa !25
  %i.rv = getelementptr inbounds nuw i8, ptr %.0331507, i64 120
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !25
  %i.rx = fadd double %i.ru, %i.rw                ; 2 uses
  %i.ry = call double @llvm.fmuladd.f64(double %i.rx, double %i.rx, double %i.rs) ; 2 uses
  store double %i.ry, ptr %.0330508, align 8, !tbaa !25
  %i.rz = getelementptr inbounds nuw i8, ptr %.0331507, i64 56
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !25
  %i.sb = getelementptr inbounds nuw i8, ptr %.0331507, i64 128
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !25
  %i.sd = fadd double %i.sa, %i.sc                ; 2 uses
  %i.se = call double @llvm.fmuladd.f64(double %i.sd, double %i.sd, double %i.ry) ; 2 uses
  store double %i.se, ptr %.0330508, align 8, !tbaa !25
  %i.sf = getelementptr inbounds nuw i8, ptr %.0331507, i64 64
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !25
  %i.sh = getelementptr inbounds nuw i8, ptr %.0331507, i64 136
  %i.si = load double, ptr %i.sh, align 8, !tbaa !25
  %i.sj = fadd double %i.sg, %i.si                ; 2 uses
  %i.sk = call double @llvm.fmuladd.f64(double %i.sj, double %i.sj, double %i.se)
  store double %i.sk, ptr %.0330508, align 8, !tbaa !25
  %i.sl = getelementptr inbounds nuw i8, ptr %.0330508, i64 8 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.0331507, i64 144
  %i.sn = icmp ult ptr %i.sl, %i.lf
  br i1 %i.sn, label %.lr.ph, label %._crit_edge510, !llvm.loop !107

._crit_edge510:                                   ; preds = %.lr.ph, %middle.block, %bb.cg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond550.not = icmp eq i64 %indvars.iv.next, %.sroa.11.0.insert.ext
  br i1 %exitcond550.not, label %.preheader497, label %bb.cg, !llvm.loop !108

.preheader496:                                    ; preds = %.preheader496.preheader, %._crit_edge525
  %indvars.iv557 = phi i64 [ %i.ki, %.preheader496.preheader ], [ %indvars.iv.next558, %._crit_edge525 ] ; 3 uses
  %i.so = mul i64 %i.da, %indvars.iv557
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.so
  %i.sq = sub nuw nsw i64 %indvars.iv557, %i.ki   ; 2 uses
  %i.sr = add nuw nsw i64 %i.sq, 1                ; 2 uses
  %i.ss = mul i64 %i.cz, %i.sr
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ss ; 2 uses
  %i.su = mul i64 %i.cz, %i.sq
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.su ; 2 uses
  %invariant.gep526 = getelementptr [8 x i8], ptr %i.st, i64 %i.kh
  %invariant.gep528 = getelementptr [8 x i8], ptr %i.sv, i64 %i.kh
  %i.sw = mul i64 %i.cy, %i.sr
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.sw
  br label %bb.ch

.preheader494:                                    ; preds = %._crit_edge525, %.preheader496.lr.ph, %.preheader497
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !96 ; 3 uses
  %i.ta = icmp sgt i32 %i.sz, 0
  br i1 %i.ta, label %.preheader.lr.ph, label %._crit_edge537.split

.preheader.lr.ph:                                 ; preds = %.preheader494
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !95 ; 5 uses
  %i.td = icmp sgt i32 %i.tc, 0
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  br i1 %i.td, label %.preheader.preheader, label %._crit_edge537.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.tf = shl nsw i32 %3, 5                       ; 2 uses
  %i.tg = sub nsw i32 %i.tc, %i.tf
  %i.th = sub nsw i32 %i.sz, %4
  %i.ti = zext nneg i32 %i.tc to i64
  %i.tj = zext nneg i32 %i.tf to i64              ; 3 uses
  %i.tk = sext i32 %i.tg to i64                   ; 3 uses
  %i.tl = sext i32 %i.th to i64
  %i.tm = zext nneg i32 %4 to i64
  %wide.trip.count572 = zext nneg i32 %i.sz to i64
  %i.tn = add nsw i64 %i.ti, -1                   ; 2 uses
  %i.to = lshr i64 %i.tn, 5                       ; 2 uses
  %i.tp = add nuw nsw i64 %i.to, 1                ; 6 uses
  %xtraiter = and i64 %i.tp, 3                    ; 3 uses
  %i.tq = icmp ult i32 %i.tc, 97
  %unroll_iter = and i64 %i.tp, 1152921504606846972
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod650 = icmp ne i64 %xtraiter, 0
  %xtraiter651 = and i64 %i.tp, 7                 ; 3 uses
  %i.tr = icmp ult i32 %i.tc, 225
  %unroll_iter655 = and i64 %i.tp, 1152921504606846968
  %lcmp.mod653.not = icmp eq i64 %xtraiter651, 0
  %lcmp.mod654 = icmp ne i64 %xtraiter651, 0
  %i.ts = icmp eq i64 %i.to, 0
  %unroll_iter661 = and i64 %i.tp, 1152921504606846974
  %i.tt = and i64 %i.tn, 32
  %lcmp.mod659.not.not = icmp eq i64 %i.tt, 0
  %lcmp.mod660 = trunc i64 %i.tp to i1
  br label %.preheader

._crit_edge525:                                   ; preds = %.preheader495
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %i.tu = trunc nuw i64 %indvars.iv.next558 to i32
  %i.tv = icmp sgt i32 %i.kc, %i.tu
  br i1 %i.tv, label %.preheader496, label %.preheader494, !llvm.loop !109

bb.ch:                                            ; preds = %.preheader496, %.preheader495
  %indvars.iv553 = phi i64 [ %i.kg, %.preheader496 ], [ %indvars.iv.next554, %.preheader495 ] ; 5 uses
  %i.tw = shl i64 %indvars.iv553, 5
  %i.tx = and i64 %i.tw, 4294967264
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %i.tx
  %i.tz = trunc i64 %indvars.iv553 to i32
  %.reass.reass.reass = add i32 %i.tz, %invariant.op ; 2 uses
  %i.ua = zext nneg i32 %.reass.reass.reass to i64 ; 2 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.ua ; 3 uses
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !25
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !25
  %i.uf = fadd double %i.uc, %i.ue
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %i.cz ; 2 uses
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !25
  %i.ui = fadd double %i.uf, %i.uh
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !25
  %i.ul = fadd double %i.ui, %i.uk
  %i.um = fadd double %i.ul, 1.000000e-04
  %i.un = call double @sqrt(double noundef %i.um) #18
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.ua ; 3 uses
  %i.up = load double, ptr %i.uo, align 8, !tbaa !25
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !25
  %i.us = fadd double %i.up, %i.ur
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %i.cz ; 2 uses
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !25
  %i.uv = fadd double %i.us, %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !25
  %i.uy = fadd double %i.uv, %i.ux
  %i.uz = fadd double %i.uy, 1.000000e-04
  %i.va = call double @sqrt(double noundef %i.uz) #18
  %gep527 = getelementptr [8 x i8], ptr %invariant.gep526, i64 %indvars.iv553 ; 3 uses
  %i.vb = load double, ptr %gep527, align 8, !tbaa !25
  %i.vc = getelementptr inbounds nuw i8, ptr %gep527, i64 8
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !25
  %i.ve = fadd double %i.vb, %i.vd
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %gep527, i64 %i.cz ; 2 uses
  %i.vg = load double, ptr %i.vf, align 8, !tbaa !25
  %i.vh = fadd double %i.ve, %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !25
  %i.vk = fadd double %i.vh, %i.vj
  %i.vl = fadd double %i.vk, 1.000000e-04
  %i.vm = call double @sqrt(double noundef %i.vl) #18
  %i.vn = insertelement <2 x double> poison, double %i.va, i64 0
  %i.vo = insertelement <2 x double> %i.vn, double %i.vm, i64 1
  %i.vp = fdiv <2 x double> splat (double 1.000000e+00), %i.vo ; 4 uses
  %gep529 = getelementptr [8 x i8], ptr %invariant.gep528, i64 %indvars.iv553 ; 3 uses
  %i.vq = load double, ptr %gep529, align 8, !tbaa !25
  %i.vr = getelementptr inbounds nuw i8, ptr %gep529, i64 8
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !25
  %i.vt = fadd double %i.vq, %i.vs
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %gep529, i64 %i.cz ; 2 uses
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !25
  %i.vw = fadd double %i.vt, %i.vv
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !25
  %i.vz = fadd double %i.vw, %i.vy
  %i.wa = fadd double %i.vz, 1.000000e-04
  %i.wb = call double @sqrt(double noundef %i.wa) #18
  %i.wc = insertelement <2 x double> poison, double %i.un, i64 0
  %i.wd = insertelement <2 x double> %i.wc, double %i.wb, i64 1
  %i.we = fdiv <2 x double> splat (double 1.000000e+00), %i.wd ; 4 uses
  %i.wf = extractelement <2 x double> %i.we, i64 1 ; 8 uses
  %i.wg = extractelement <2 x double> %i.we, i64 0 ; 8 uses
  %i.wh = mul nsw i32 %.reass.reass.reass, 18
  %i.wi = zext nneg i32 %i.wh to i64
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.sx, i64 %i.wi ; 19 uses
  br label %bb.ci

.preheader495:                                    ; preds = %bb.ci
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !25
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wj, i64 72
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !25
  %i.wn = fadd double %i.wk, %i.wm                ; 4 uses
  %i.wo = fmul double %i.wg, %i.wn                ; 2 uses
  %i.wp = fcmp ogt double %i.wo, 2.000000e-01
  %.sroa.speculated422 = select i1 %i.wp, double 2.000000e-01, double %i.wo
  %i.wq = extractelement <2 x double> %i.vp, i64 0 ; 8 uses
  %i.wr = fmul double %i.wq, %i.wn                ; 2 uses
  %i.ws = fcmp ogt double %i.wr, 2.000000e-01
  %.sroa.speculated417 = select i1 %i.ws, double 2.000000e-01, double %i.wr
  %i.wt = extractelement <2 x double> %i.vp, i64 1 ; 8 uses
  %i.wu = fmul double %i.wt, %i.wn                ; 2 uses
  %i.wv = fcmp ogt double %i.wu, 2.000000e-01
  %.sroa.speculated412 = select i1 %i.wv, double 2.000000e-01, double %i.wu
  %i.ww = fmul double %i.wf, %i.wn                ; 2 uses
  %i.wx = fcmp ogt double %i.ww, 2.000000e-01
  %.sroa.speculated = select i1 %i.wx, double 2.000000e-01, double %i.ww
  %i.wy = fadd double %.sroa.speculated422, %.sroa.speculated417
  %i.wz = fadd double %.sroa.speculated412, %i.wy
  %i.xa = fadd double %.sroa.speculated, %i.wz
  %i.xb = fmul double %i.xa, 5.000000e-01
  %i.xc = getelementptr inbounds nuw i8, ptr %.0325513, i64 16
  store double %i.xb, ptr %i.adp, align 8, !tbaa !25
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !25
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wj, i64 80
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !25
  %i.xh = fadd double %i.xe, %i.xg                ; 4 uses
  %i.xi = fmul double %i.wg, %i.xh                ; 2 uses
  %i.xj = fcmp ogt double %i.xi, 2.000000e-01
  %.sroa.speculated422.1 = select i1 %i.xj, double 2.000000e-01, double %i.xi
  %i.xk = fmul double %i.wq, %i.xh                ; 2 uses
  %i.xl = fcmp ogt double %i.xk, 2.000000e-01
  %.sroa.speculated417.1 = select i1 %i.xl, double 2.000000e-01, double %i.xk
  %i.xm = fmul double %i.wt, %i.xh                ; 2 uses
  %i.xn = fcmp ogt double %i.xm, 2.000000e-01
  %.sroa.speculated412.1 = select i1 %i.xn, double 2.000000e-01, double %i.xm
  %i.xo = fmul double %i.wf, %i.xh                ; 2 uses
  %i.xp = fcmp ogt double %i.xo, 2.000000e-01
  %.sroa.speculated.1 = select i1 %i.xp, double 2.000000e-01, double %i.xo
  %i.xq = fadd double %.sroa.speculated422.1, %.sroa.speculated417.1
  %i.xr = fadd double %.sroa.speculated412.1, %i.xq
  %i.xs = fadd double %.sroa.speculated.1, %i.xr
  %i.xt = fmul double %i.xs, 5.000000e-01
  %i.xu = getelementptr inbounds nuw i8, ptr %.0325513, i64 24
  store double %i.xt, ptr %i.xc, align 8, !tbaa !25
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !25
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wj, i64 88
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !25
  %i.xz = fadd double %i.xw, %i.xy                ; 4 uses
  %i.ya = fmul double %i.wg, %i.xz                ; 2 uses
  %i.yb = fcmp ogt double %i.ya, 2.000000e-01
  %.sroa.speculated422.2 = select i1 %i.yb, double 2.000000e-01, double %i.ya
  %i.yc = fmul double %i.wq, %i.xz                ; 2 uses
  %i.yd = fcmp ogt double %i.yc, 2.000000e-01
  %.sroa.speculated417.2 = select i1 %i.yd, double 2.000000e-01, double %i.yc
  %i.ye = fmul double %i.wt, %i.xz                ; 2 uses
  %i.yf = fcmp ogt double %i.ye, 2.000000e-01
  %.sroa.speculated412.2 = select i1 %i.yf, double 2.000000e-01, double %i.ye
  %i.yg = fmul double %i.wf, %i.xz                ; 2 uses
  %i.yh = fcmp ogt double %i.yg, 2.000000e-01
  %.sroa.speculated.2 = select i1 %i.yh, double 2.000000e-01, double %i.yg
  %i.yi = fadd double %.sroa.speculated422.2, %.sroa.speculated417.2
  %i.yj = fadd double %.sroa.speculated412.2, %i.yi
  %i.yk = fadd double %.sroa.speculated.2, %i.yj
  %i.yl = fmul double %i.yk, 5.000000e-01
  %i.ym = getelementptr inbounds nuw i8, ptr %.0325513, i64 32
  store double %i.yl, ptr %i.xu, align 8, !tbaa !25
  %i.yn = getelementptr inbounds nuw i8, ptr %i.wj, i64 24
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !25
  %i.yp = getelementptr inbounds nuw i8, ptr %i.wj, i64 96
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !25
end_hunk_0
